// Black and white fragment shader
varying vec2 v_vTexcoord;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	float gray = (texColor.r * 0.299) + (texColor.g * 0.587) + (texColor.b * 0.114);
    gl_FragColor = vec4(gray, gray, gray, texColor.a);
}