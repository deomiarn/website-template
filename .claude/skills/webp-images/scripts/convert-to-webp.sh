#!/bin/bash

# WebP Image Converter with Responsive Variants
# Converts PNG, JPG, JPEG images to WebP format with multiple sizes
# Usage: ./convert-to-webp.sh [input_dir] [output_dir] [quality]

# Default values
INPUT_DIR="${1:-./public/raw}"
OUTPUT_DIR="${2:-./public/images}"
QUALITY="${3:-85}"

# Responsive widths for srcset
WIDTHS=(640 1024 1920)

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}WebP Image Converter${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""
echo "Input directory:  $INPUT_DIR"
echo "Output directory: $OUTPUT_DIR"
echo "Quality:          $QUALITY%"
echo "Responsive sizes: ${WIDTHS[*]}w"
echo ""

# Check if cwebp is installed
if ! command -v cwebp &> /dev/null; then
    echo -e "${RED}Error: cwebp is not installed.${NC}"
    echo ""
    echo "Install with:"
    echo "  macOS:   brew install webp"
    echo "  Ubuntu:  sudo apt-get install webp"
    echo "  Windows: Download from https://developers.google.com/speed/webp/download"
    exit 1
fi

# Check if input directory exists
if [ ! -d "$INPUT_DIR" ]; then
    echo -e "${RED}Error: Input directory '$INPUT_DIR' does not exist.${NC}"
    echo ""
    echo "Create it and add your images:"
    echo "  mkdir -p $INPUT_DIR/home"
    echo ""
    echo "Expected folder structure:"
    echo "  $INPUT_DIR/"
    echo "    home/"
    echo "      hero-background.png"
    echo "      project-thumbnail.jpg"
    echo "    about/"
    echo "      team-photo.jpg"
    exit 1
fi

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Counter for converted files
converted=0
skipped=0
errors=0

# Function to get image width
get_image_width() {
    local file="$1"
    if command -v identify &> /dev/null; then
        identify -format "%w" "$file" 2>/dev/null
    elif command -v sips &> /dev/null; then
        sips -g pixelWidth "$file" 2>/dev/null | grep pixelWidth | awk '{print $2}'
    else
        echo "0"
    fi
}

# Function to convert a single image
convert_image() {
    local input_file="$1"
    local output_dir="$2"
    local filename=$(basename "$input_file")
    local name="${filename%.*}"

    # Get relative path for display
    local rel_input="${input_file#$INPUT_DIR/}"

    # Get original image width
    local orig_width=$(get_image_width "$input_file")

    echo -e "${CYAN}Processing:${NC} $rel_input (${orig_width}px wide)"

    # Convert original size
    local output_file="$output_dir/${name}.webp"
    if cwebp -q "$QUALITY" "$input_file" -o "$output_file" 2>/dev/null; then
        echo -e "  ${GREEN}✓${NC} ${name}.webp"
        ((converted++))
    else
        echo -e "  ${RED}✗${NC} Failed to convert"
        ((errors++))
        return
    fi

    # Generate responsive variants
    for width in "${WIDTHS[@]}"; do
        # Skip if original is smaller than target width
        if [ "$orig_width" != "0" ] && [ "$orig_width" -lt "$width" ]; then
            echo -e "  ${YELLOW}⊘${NC} ${name}-${width}w.webp (original smaller than ${width}px)"
            continue
        fi

        local variant_file="$output_dir/${name}-${width}w.webp"
        if cwebp -q "$QUALITY" -resize "$width" 0 "$input_file" -o "$variant_file" 2>/dev/null; then
            echo -e "  ${GREEN}✓${NC} ${name}-${width}w.webp"
        else
            echo -e "  ${RED}✗${NC} Failed: ${name}-${width}w.webp"
        fi
    done
}

# Process all subdirectories and files
echo -e "${GREEN}Converting images...${NC}"
echo ""

# Find all subdirectories in input
find "$INPUT_DIR" -type d | while read -r dir; do
    # Get relative path
    rel_dir="${dir#$INPUT_DIR}"
    rel_dir="${rel_dir#/}"

    # Create corresponding output directory
    if [ -n "$rel_dir" ]; then
        mkdir -p "$OUTPUT_DIR/$rel_dir"
        target_dir="$OUTPUT_DIR/$rel_dir"
    else
        target_dir="$OUTPUT_DIR"
    fi

    # Find all images in this directory (not recursive)
    find "$dir" -maxdepth 1 -type f \( -iname "*.png" -o -iname "*.jpg" -o -iname "*.jpeg" \) | while read -r file; do
        convert_image "$file" "$target_dir"
        echo ""
    done
done

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}Conversion Complete${NC}"
echo -e "${GREEN}========================================${NC}"
echo ""

# Show output directory structure
echo "Output structure:"
find "$OUTPUT_DIR" -name "*.webp" -type f 2>/dev/null | head -20 | while read -r f; do
    echo "  ${f#$OUTPUT_DIR/}"
done

echo ""
echo -e "${CYAN}Usage in Next.js:${NC}"
echo '  <Image src="/images/home/hero.webp" ... />'
echo ""
echo -e "${CYAN}With srcset:${NC}"
echo '  sizes="(max-width: 640px) 640px, (max-width: 1024px) 1024px, 1920px"'
