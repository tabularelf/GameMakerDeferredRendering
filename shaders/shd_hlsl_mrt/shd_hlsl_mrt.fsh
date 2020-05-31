struct PixelShaderInput 
{
	float4 vPosition : SV_POSITION;
	float4 vColor    : COLOR0;
	float2 vTexcoord : TEXCOORD0;
	float linearizedDepth : TEXCOORD1;
	float3 vViewSpacePos : TEXCOORD2;
	float3 vNormal       : NORMAL;
};

struct PixelShaderOutput
{
    float4 vColor    : SV_TARGET0;
	float4 vDepth	 : SV_TARGET1;
	float4 vNormal    : SV_TARGET2;
	//float4 vBlue     : SV_TARGET3;
};

//uniform sampler2D normalMap;
Texture2D texture1	   : register(t1);
SamplerState normalMap : register(s1);

// Functions

// Depth

float3 packDepth(float f) {
	//return float3( floor( f * 255.0 ) / 255.0, frac( f * 255.0 ), frac( f * 255.0 * 255.0 ) );
    return float3( floor( f * 255.0 ) / 255.0, frac( f * 255.0 ), frac( f * 255.0 * 255.0 ) );
}

// Normals

float3 cotangent_frame(float3 N, float3 P, float2 uv)
{
    // get edge vectors of the pixel triangle
    float3 dp1 =  ddx(P);
    float3 dp2 =  ddy(P);
    float2 duv1 = ddx(uv);
    float2 duv2 = ddy(uv);
 
    // solve the linear system
    float3 dp2perp = cross( dp2, N );
    float3 dp1perp = cross( N, dp1 );
    float3 T = dp2perp * duv1.x + dp1perp * duv2.x;
    float3 B = dp2perp * duv1.y + dp1perp * duv2.y;
 
    // construct a scale-invariant frame 
    float invmax = rsqrt( max( dot(T,T), dot(B,B) ) );  
   
    // build TBN matrix
    float3x3 TBN = float3x3( T * invmax, B * invmax, N );     
    float3 map = texture1.Sample(normalMap, uv).rgb * 2.0 - 1.0;
    map.y = -map.y;
    
    return normalize(mul(map, TBN));
}

// Uniforms


PixelShaderOutput main(PixelShaderInput INPUT)
{
	PixelShaderOutput OUTPUT;
	
	float depth = INPUT.linearizedDepth;
	float alphaTest = .01;
	
	float3 N = normalize(INPUT.vNormal);
    float3 V = normalize(INPUT.vViewSpacePos);
    
    float3 PN = cotangent_frame(N, V, INPUT.vTexcoord);
	
    float4 diffuseTexture = gm_BaseTextureObject.Sample(gm_BaseTexture, INPUT.vTexcoord);
	
	// Output results
	
    OUTPUT.vColor = INPUT.vColor * diffuseTexture;
	OUTPUT.vDepth = float4( packDepth(depth), 1.0 ); //Just pass a red texture for this test.
	OUTPUT.vNormal = float4((PN+1.0)/2.0, texture1.Sample(normalMap, INPUT.vTexcoord).r);
	//OUTPUT.vBlue = float4(0,0,1,1); 
 
 return OUTPUT;
}