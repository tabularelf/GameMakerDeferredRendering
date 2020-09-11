//
// Simple passthrough fragment shader
//
/*const cam_near .001
const cam_far 10000*/

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying float linearizedDepth;
varying vec3 v_vNormal;

vec3 packDepth(float f) {
    return vec3( floor( f * 255.0 ) / 255.0, fract( f * 255.0 ), fract( f * 255.0 * 255.0 ) );
}

void main()
{
	float depth = linearizedDepth;
	vec3 nor = normalize(v_vNormal.xyz);
    gl_FragData[0] = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragData[1] = vec4( packDepth(depth), 1.0 );
	gl_FragData[2] = vec4(nor*.5+.5,1);
}