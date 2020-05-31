struct VertexShaderInput
{
    float4 vPosition : POSITION;
    float4 vColor    : COLOR0;
    float2 vTexcoord : TEXCOORD0;
	float3 vNormal   : NORMAL0;	
};

struct VertexShaderOutput
{
    float4 vPosition : SV_POSITION;
    float4 vColor    : COLOR0;
    float2 vTexcoord : TEXCOORD0;
	float linearizedDepth : TEXCOORD1;
	float3 vViewSpacePos : TEXCOORD2;
	float3 vNormal       : NORMAL;
};

uniform float uCameraZFar;

VertexShaderOutput main(VertexShaderInput INPUT)
{
    VertexShaderOutput OUTPUT;

    float4 matrixWVP = mul(gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION], INPUT.vPosition);

    OUTPUT.vPosition = matrixWVP;
    OUTPUT.vColor    = INPUT.vColor;
    OUTPUT.vTexcoord = INPUT.vTexcoord;
	
	OUTPUT.vViewSpacePos = mul(gm_Matrices[MATRIX_WORLD_VIEW] , INPUT.vPosition).xyz;
	OUTPUT.linearizedDepth = OUTPUT.vViewSpacePos.z / uCameraZFar;
	
	OUTPUT.vNormal = mul(gm_Matrices[MATRIX_WORLD_VIEW], float4(INPUT.vNormal, 0.0)).xyz;

    return OUTPUT;
}