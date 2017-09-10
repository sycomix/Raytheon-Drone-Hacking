precision mediump float;

uniform sampler2D uTextureSampler;

varying vec2 vTexCoord;

void main()
{
    gl_FragColor = texture2D(uTextureSampler, vTexCoord);
}