#!/bin/bash

# This file will be sourced in init.sh

# Rest of the original variables and arrays remain the same...

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    
    dir="$1"
    mkdir -p "$dir"
    shift
    arr=("$@")
    printf "Checking and downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        # Extract filename from URL or Content-Disposition header
        filename=$(get_filename_from_url "$url")
        filepath="${dir}/${filename}"
        
        if [[ -f "$filepath" ]]; then
            printf "Skipping existing file: %s\n" "${filename}"
        else
            printf "Downloading: %s\n" "${url}"
            provisioning_download "${url}" "${dir}"
            printf "\n"
        fi
    done
}

# New function to extract filename from URL or Content-Disposition header
function get_filename_from_url() {
    local url=$1
    local filename
    
    # First try to get filename from Content-Disposition header
    if [[ -n $HF_TOKEN && $url =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        filename=$(wget --spider --server-response --header="Authorization: Bearer $HF_TOKEN" "$url" 2>&1 | grep "Content-Disposition:" | grep -o 'filename=.*' | cut -d'"' -f2)
    elif [[ -n $CIVITAI_TOKEN && $url =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        filename=$(wget --spider --server-response "$url?token=$CIVITAI_TOKEN" 2>&1 | grep "Content-Disposition:" | grep -o 'filename=.*' | cut -d'"' -f2)
    else
        filename=$(wget --spider --server-response "$url" 2>&1 | grep "Content-Disposition:" | grep -o 'filename=.*' | cut -d'"' -f2)
    fi
    
    # If Content-Disposition not found, try to extract from URL
    if [[ -z "$filename" ]]; then
        filename=$(basename "$url" | sed 's/\?.*//')
    fi
    
    # If still no filename, use a hash of the URL
    if [[ -z "$filename" ]]; then
        filename="model_$(echo "$url" | md5sum | cut -d' ' -f1).safetensors"
    fi
    
    echo "$filename"
}

# Modified download function to support directory parameter
function provisioning_download() {
    local url=$1
    local dir=$2
    local dotbytes=${3:-4M}
    
    if [[ -n $HF_TOKEN && $url =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        (cd "$dir" && wget --content-disposition --header="Authorization: Bearer $HF_TOKEN" "$url" --show-progress -e dotbytes="$dotbytes")
    elif [[ -n $CIVITAI_TOKEN && $url =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        (cd "$dir" && wget "$url?token=$CIVITAI_TOKEN" -nc --content-disposition --show-progress -e dotbytes="$dotbytes")
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="$dotbytes" -P "$dir" "$url"
    fi
}

# Rest of the original functions remain the same...
