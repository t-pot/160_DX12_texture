struct Vs2Ps
{
    float4 position : SV_POSITION;
    float2 texcoord : TEXCOORD;// ���C��
};

// ���ǉ��F�e�N�X�`���ƃT���v���[�X�e�[�g
Texture2D g_texture : register(t0);
SamplerState g_sampler : register(s0);

Vs2Ps VSMain(float4 position : POSITION, float2 texcoord : TEXCOORD)// ���C��
{
    Vs2Ps output;

    output.position = position;
    output.texcoord = texcoord; // ���C��

    return output;
}

float4 PSMain(Vs2Ps input) : SV_TARGET
{
    return g_texture.Sample(g_sampler, input.texcoord); // ���C��
}