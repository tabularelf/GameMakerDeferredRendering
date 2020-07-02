#define cam_near .001
#define cam_far 10000

struct fragment 
{
	float4 position : SV_POSITION;
	float4 color    : COLOR0;
	float2 coord    : TEXCOORD0;
	float3 view     : TEXCOORD1;
	float3 normal   : NORMAL;
};

struct pixel
{
    float4 color  : SV_TARGET0;
	float4 depth  : SV_TARGET1;
	float4 normal : SV_TARGET2;
};

float4 pack_depth(float depth)
{
	float d = depth;//(depth-cam_near)/(cam_far-cam_near);
	return frac(floor(d*255.*float4(1,255,255*255,255*255*255))/255.);
}

pixel main(fragment input)
{
	pixel output;
    float4 diffuse = gm_BaseTextureObject.Sample(gm_BaseTexture, input.coord);
	float3 nor = normalize(input.normal);
	
    output.color = input.color * diffuse;
	output.depth =  pack_depth(input.view.z);
	output.normal = float4(nor*.5+.5,1);
 
	return output;
}