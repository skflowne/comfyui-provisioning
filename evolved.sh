#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

#DEFAULT_WORKFLOW="https://..."

APT_PACKAGES=(
    #"package-1"
    #"package-2"
)

PIP_PACKAGES=(
    #"package-1"
    #"package-2"
)

NODES=(
    # base
    "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/cubiq/ComfyUI_essentials"
    "https://github.com/rgthree/rgthree-comfy"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/crystian/ComfyUI-Crystools"
    "https://github.com/pythongosssss/ComfyUI-Custom-Scripts"
    "https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes"
    "https://github.com/WASasquatch/was-node-suite-comfyui"

    # controlnet
    "https://github.com/Fannovel16/comfyui_controlnet_aux"
    "https://github.com/XLabs-AI/x-flux-comfyui"

    # redux
    "https://github.com/kaibioinfo/ComfyUI_AdvancedRefluxControl"
    
    # utils
    "https://github.com/idrirap/ComfyUI-Lora-Auto-Trigger-Words"
    "https://github.com/jags111/efficiency-nodes-comfyui"

    # image
    "https://github.com/john-mnz/ComfyUI-Inspyrenet-Rembg"
    "https://github.com/lquesada/ComfyUI-Inpaint-CropAndStitch"
    "https://github.com/SLAPaper/ComfyUI-Image-Selector"

    # video
    "https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"
    # "https://github.com/kijai/ComfyUI-HunyuanVideoWrapper"
    # "https://github.com/Lightricks/ComfyUI-LTXVideo"
    # "https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved"
    
    
)

CLIP_MODELS=(
    "https://huggingface.co/city96/t5-v1_1-xxl-encoder-bf16/resolve/main/model.safetensors" # T5 xxl 1.1
    # Pick one CLIP-L model
    "https://huggingface.co/zer0int/CLIP-GmP-ViT-L-14/resolve/main/ViT-L-14-TEXT-detail-improved-hiT-GmP-TE-only-HF.safetensors" # TEXT (better prompt following and for images with text, probably better overall)
    # "https://huggingface.co/zer0int/CLIP-GmP-ViT-L-14/blob/main/ViT-L-14-BEST-smooth-GmP-TE-only-HF-format.safetensors" # SMOOTH (better details when no text in image, maybe)
)

TEXT_ENCODERS=(
    # "https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/text_encoders/llava_llama3_fp16.safetensors" # Hunyuan
    # "https://huggingface.co/Comfy-Org/HunyuanVideo_repackaged/resolve/main/split_files/text_encoders/clip_l.safetensors"
)

CLIP_VISION_MODELS=(
    "https://huggingface.co/funnewsr/sigclip_vision_patch14_384/resolve/main/sigclip_vision_patch14_384.safetensors" # For some reason the model below fails
    # "https://huggingface.co/Comfy-Org/sigclip_vision_384/resolve/main/sigclip_vision_patch14_384.safetensors" # Used with Redux
)

CHECKPOINT_MODELS=(
    # Illustrious SDXL
    # "https://civitai.com/api/download/models/1233363" # coco NoobAI
)

UNET_MODELS=(
    # HunYuan Video
    # "https://huggingface.co/Kijai/HunyuanVideo_comfy/resolve/main/hunyuan_video_720_cfgdistill_bf16.safetensors"
    
    # F1D
    # "https://huggingface.co/Kijai/flux-fp8/resolve/main/flux1-dev-fp8.safetensors"
    "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/flux1-dev.safetensors"
    
    # F1D Tools
    # "https://huggingface.co/black-forest-labs/FLUX.1-Fill-dev/resolve/main/flux1-fill-dev.safetensors"
    
    # F1S
    # "https://huggingface.co/shuttleai/shuttle-3.1-aesthetic/resolve/main/shuttle-3.1-aesthetic.safetensors"
)

STYLE_MODELS=(
    "https://huggingface.co/black-forest-labs/FLUX.1-Redux-dev/resolve/main/flux1-redux-dev.safetensors" # F1D Redux
)

LORA_MODELS=(
    # HunYuan
    # "https://huggingface.co/Kijai/HunyuanVideo_comfy/resolve/main/hyvideo_FastVideo_LoRA-fp8.safetensors" # Fast 8-steps LORA
    # F1D
    # "https://civitai.com/api/download/models/1224481" # Illustration Concept
    "https://civitai.com/api/download/models/1244911" # FLUX [pro] 1.1 Style
    "https://civitai.com/api/download/models/981456" # Midjourney meets FLUX
    "https://civitai.com/api/download/models/755549" # Sinfully stylish
    "https://civitai.com/api/download/models/890482" # Ink Style
    "https://civitai.com/api/download/models/803802" # Cartoon Line Warm Illustration
    # "https://civitai.com/api/download/models/897256" # Car & Bikes
    "https://civitai.com/api/download/models/687636" # Atmospheric Painting
    "https://civitai.com/api/download/models/1202162" # Velvet Mythic Fantasy Styles (Gothic Lines)
    "https://civitai.com/api/download/models/1296986" # Velvet Mythic Fantasy Styles (Anime Lines)
    "https://civitai.com/api/download/models/753053" # Velvet Mythic Fantasy Styles (Original)
    "https://civitai.com/api/download/models/747534" # Cyberpunk Anime Style
    "https://civitai.com/api/download/models/984672" # Flux Image Upgrader / Detail Maximizer / Contrast Fix for low CFG
    "https://civitai.com/api/download/models/790696" # Satoshi Urushihara Style
    "https://civitai.com/api/download/models/779278" # Granblue fanstasy style
    # "https://civitai.com/api/download/models/766438" # DreamART Style
    "https://civitai.com/api/download/models/857668" # Cinematic Shot
    "https://civitai.com/api/download/models/801005" # Matte Black
    "https://civitai.com/api/download/models/806265" # Retro Anmie Style
    "https://civitai.com/api/download/models/812182" # Cowboy Bebop Style
    "https://civitai.com/api/download/models/838667" # Flat Colour Anime
    
    # F1S
    # "https://civitai.com/api/download/models/899864" # Diesel Punk
    "https://civitai.com/api/download/models/1003675" # ColorART
    "https://civitai.com/api/download/models/802216" # Studio Ghibli
    "https://civitai.com/api/download/models/806347" # Propaganda Poster
    "https://civitai.com/api/download/models/1090331" # Ghibsky Illustration (Serene and enchanting landscapes)
    "https://civitai.com/api/download/models/770184" # DucHaiten-Cyberpunk-Edgerunners style
    # "https://civitai.com/api/download/models/801986" # Vector Art
    # "https://civitai.com/api/download/models/805268" # Watercolor Painting
    "https://civitai.com/api/download/models/1018019" # Scifi Mech Style
    "https://civitai.com/api/download/models/986970" # Mystical Realms of Light
    # "https://civitai.com/api/download/models/833809" # ATV Collage
    # "https://civitai.com/api/download/models/797418" # PsychedeliK
    "https://civitai.com/api/download/models/966523" # Mythoscape Painting
    # "https://civitai.com/api/download/models/1220237" # Pseudo ukiyo-e style
    
)

VAE_MODELS=(
    "https://huggingface.co/black-forest-labs/FLUX.1-dev/resolve/main/ae.safetensors" # FLUX VAE
    # "https://huggingface.co/Kijai/HunyuanVideo_comfy/resolve/main/hunyuan_video_vae_bf16.safetensors" # HunYuan VAE
)

ESRGAN_MODELS=(
    "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
)

CONTROLNET_MODELS=(
    # F1D
    # "https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-canny-controlnet-v3.safetensors"
    # "https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-depth-controlnet-v3.safetensors"
    # "https://huggingface.co/XLabs-AI/flux-controlnet-collections/resolve/main/flux-hed-controlnet-v3.safetensors"
)


### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {
    if [[ ! -d /opt/environments/python ]]; then 
        export MAMBA_BASE=true
    fi
    source /opt/ai-dock/etc/environment.sh
    source /opt/ai-dock/bin/venv-set.sh comfyui

    provisioning_print_header
    provisioning_get_apt_packages
    provisioning_get_nodes
    provisioning_get_pip_packages
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/clip" \
        "${CLIP_MODELS[@]}"
    provisioning_get_models \
        "/opt/ComfyUI/models/clip_vision" \
        "${CLIP_VISION_MODELS[@]}"
    provisioning_get_models \
        "/opt/ComfyUI/models/style_models" \
        "${STYLE_VISION_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/ckpt" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/unet" \
        "${UNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/lora" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/storage/stable_diffusion/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
    provisioning_print_end
}

function pip_install() {
    if [[ -z $MAMBA_BASE ]]; then
            "$COMFYUI_VENV_PIP" install --no-cache-dir "$@"
        else
            micromamba run -n comfyui pip install --no-cache-dir "$@"
        fi
}

function provisioning_get_apt_packages() {
    if [[ -n $APT_PACKAGES ]]; then
            sudo $APT_INSTALL ${APT_PACKAGES[@]}
    fi
}

function provisioning_get_pip_packages() {
    if [[ -n $PIP_PACKAGES ]]; then
            pip_install ${PIP_PACKAGES[@]}
    fi
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="/opt/ComfyUI/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                   pip_install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip_install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_get_default_workflow() {
    if [[ -n $DEFAULT_WORKFLOW ]]; then
        workflow_json=$(curl -s "$DEFAULT_WORKFLOW")
        if [[ -n $workflow_json ]]; then
            echo "export const defaultGraph = $workflow_json;" > /opt/ComfyUI/web/scripts/defaultGraph.js
        fi
    fi
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

function provisioning_has_valid_hf_token() {
    [[ -n "$HF_TOKEN" ]] || return 1
    url="https://huggingface.co/api/whoami-v2"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $HF_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}

function provisioning_has_valid_civitai_token() {
    [[ -n "$CIVITAI_TOKEN" ]] || return 1
    url="https://civitai.com/api/v1/models?hidden=1&limit=1"

    response=$(curl -o /dev/null -s -w "%{http_code}" -X GET "$url" \
        -H "Authorization: Bearer $CIVITAI_TOKEN" \
        -H "Content-Type: application/json")

    # Check if the token is valid
    if [ "$response" -eq 200 ]; then
        return 0
    else
        return 1
    fi
}



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
    local URL=$1
    local dir=$2
    local dotbytes=${3:-4M}
    
    if [[ -n $HF_TOKEN && $url =~ ^https://([a-zA-Z0-9_-]+\.)?huggingface\.co(/|$|\?) ]]; then
        (cd "$dir" && wget --content-disposition --header="Authorization: Bearer $HF_TOKEN" "$URL" --show-progress -e dotbytes="$dotbytes")
    elif [[ -n $CIVITAI_TOKEN && $url =~ ^https://([a-zA-Z0-9_-]+\.)?civitai\.com(/|$|\?) ]]; then
        (cd "$dir" && wget "$URL?token=$CIVITAI_TOKEN" -nc --content-disposition --show-progress -e dotbytes="$dotbytes")
    else
        wget -qnc --content-disposition --show-progress -e dotbytes="$dotbytes" -P "$dir" "$URL"
    fi
}

provisioning_start
