struct vertex
{
    float4 position : POSITION;
    float4 color    : COLOR0;
    float2 coord    : TEXCOORD0;
	float3 normal   : NORMAL0;	
};

struct fragment 
{
	float4 position : SV_POSITION;
	float4 color    : COLOR0;
	float2 coord    : TEXCOORD0;
	float3 view     : TEXCOORD1;
	float3 normal   : NORMAL;
};

fragment main(vertex input)
{
    fragment output;

    float4 matrixWVP = mul(gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION], input.position);

    output.position = mul(gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION], input.position);
    output.color    = input.color;
    output.coord = input.coord;
	output.view = mul(gm_Matrices[MATRIX_WORLD_VIEW], input.position).xyz;
	output.normal = mul(gm_Matrices[MATRIX_WORLD_VIEW], float4(input.normal, 0.0)).xyz;

    return output;
}