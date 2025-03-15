struct Vs2Ps
{
    float4 position : SV_POSITION;
    float2 texcoord : TEXCOORD;// ■修正
};

// ■追加：テクスチャとサンプラーステート
Texture2D g_texture : register(t0);
SamplerState g_sampler : register(s0);

Vs2Ps VSMain(float4 position : POSITION, float2 texcoord : TEXCOORD)// ■修正
{
    Vs2Ps output;

    output.position = position;
    output.texcoord = texcoord; // ■修正

    return output;
}

float4 PSMain(Vs2Ps input) : SV_TARGET
{
    return g_texture.Sample(g_sampler, input.texcoord); // ■修正
}