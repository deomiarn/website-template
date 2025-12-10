# Midjourney V7 Prompt Formula

## Structure

```
[Ultra-detailed scene description] +
[Cinematische Referenzen] +
[Lighting specifics] +
[Technical specs] +
[Mood/Atmosphere] +
[Flags]
```

## Components

### 1. Scene Description (2-4 sentences)

- What's happening, subjects in frame
- Environment, wardrobe, props, gestures
- Compositional elements, perspective
- Specific details (textures, materials, actions)

### 2. Cinematische Referenzen

**Cameras:**
- Hasselblad H6D
- ARRI Alexa
- RED camera
- 35mm film

**Lenses:**
- 100mm f/2.8
- 150mm telephoto
- macro lens
- 35mm lens

**Focus:**
- shallow depth of field
- focus stacking
- telephoto compression

### 3. Lighting

- golden hour
- studio lighting
- soft directional
- bright and directional
- god rays
- high-key, low-key
- backlit silhouette
- warm afternoon
- cool studio lighting
- minimal neutral background

### 4. Technical Specs

- ultra-photorealistic
- ultra-realistic
- 8K, 4K
- high-resolution photography
- HDR reflections
- shot on ARRI/Hasselblad/RED/35mm
- shallow depth of field
- cinematic composition

### 5. Mood/Atmosphere

- serene, dramatic
- minimalistic, powerful
- stylish, luxury aesthetic
- editorial photography
- fashion film
- poetic atmosphere
- tranquil, contemplative
- nostalgic

### 6. Required Flags

| Flag | Purpose | Values |
|------|---------|--------|
| `--ar` | Aspect ratio | 16:9, 21:9, 1:1, 51:91 (vertical) |
| `--raw` | Less processing, more photorealistic | (no value) |
| `--bs` | Stylization balance | 1 or 2 |

## Example Prompt Structure

```
[Subject doing action], [environment details], [wardrobe/props],
[camera and lens], [lighting description], [technical quality specs],
[mood/atmosphere] --ar 16:9 --raw --bs 1
```
