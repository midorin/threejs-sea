uniform vec3 uDepthColor;
uniform vec3 uSurfaceCOlor;
uniform float uColorOffset;
uniform float uColorMultiplier;

varying float vElevation;

void main() {
    float mixStrengthColor = (vElevation + uColorOffset) * uColorMultiplier;
    vec3 color = mix(uDepthColor, uSurfaceCOlor, mixStrengthColor);
    gl_FragColor = vec4(color, 1.0);
}