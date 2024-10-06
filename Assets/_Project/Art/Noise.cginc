#ifndef NOISE_CGINC
#define NOISE_CGINC

#include "External/psrdnoise.hlsl"

// ...

/*
float3 Hash3D(float3 p, float angle)
{
    return frac(sin(float3(
    
    dot(p, float3(1.0, 57.0, 113.0)),
    dot(p, float3(57.0, 113.0, 1.0)),
    dot(p, float3(113.0, 1.0, 57.0))))
    
    * 43758.5453);
}

float3 Hash3DAngle(float3 uv, float angle)
{
    float3x3 m = float3x3(15.27, 47.63, 99.41, 89.98, 54.23, 65.34, 75.56, 35.24, 86.75);
    
    uv = frac(sin(mul(uv, m)) * 46839.32);
    uv = float3((sin(uv.y * angle) * 0.5) + 0.5, (cos(uv.x * angle) * 0.5) + 0.5, (sin(uv.z * angle) * 0.5) + 0.5);
    
    return uv;
}
*/
//float Hash3D(float3 p)
//{
//    return frac(sin(dot(p, float3(12.9898, 78.233, 45.164))) * 43758.5453);
//}
float3 Hash3D(float3 p)
{
    p = float3(dot(p, float3(127.1, 311.7, 74.7)),
               dot(p, float3(269.5, 183.3, 246.1)),
			   dot(p, float3(113.5, 271.9, 124.6)));

    return frac(sin(p) * 43758.5453123);
}
float3 Hash3DAngle(float3 uv, float angle)
{
    float3x3 m = float3x3(15.27, 47.63, 99.41, 89.98, 54.23, 65.34, 75.56, 35.24, 86.75);
    
    uv = frac(sin(mul(uv, m)) * 46839.32);
    uv = float3((sin(uv.y * angle) * 0.5) + 0.5, (cos(uv.x * angle) * 0.5) + 0.5, (sin(uv.z * angle) * 0.5) + 0.5);
    
    return uv;
}

//void Voronoi3D_float(float3 position, float angle, out float output)
//{
//    float3 baseCell = floor(position);
//    float3 fractionalPart = frac(position);
    
//    float minimumDistance = 1e9;
    
//    for (int zOffset = -1; zOffset <= 1; zOffset++)
//    {
//        for (int yOffset = -1; yOffset <= 1; yOffset++)
//        {
//            for (int xOffset = -1; xOffset <= 1; xOffset++)
//            {
//                float3 neighboringCellOffset = float3(xOffset, yOffset, zOffset);
//                float3 randomOffset = Hash3DAngle(baseCell + neighboringCellOffset, angle);
                
//                //float3 distanceVector = (neighboringCellOffset - fractionalPart) + randomOffset;
//                //float distance = length(distanceVector);
                
//                // This is noticeably faster than above once you introduce procedural curl (which causes noise samples to spike, and the performance benefit comes through).
                
//                float3 cellPosition = baseCell + neighboringCellOffset;
//                float3 pointPosition = cellPosition + randomOffset - position;
                
//                float distance = dot(pointPosition, pointPosition);
//                minimumDistance = min(minimumDistance, distance);
//            }
//        }
//    }
    
//    output = sqrt(minimumDistance);
//}

void Voronoi3D_float(float3 position, float angle, float smoothness, out float output)
{
    float3 baseCell = floor(position);
    float3 fractionalPart = frac(position);
    
    float F1 = 8.0;
    //float F2 = 8.0;
    
    float3 minOffset = 0.0;
    float3 minRandom = 0.0;
    
    for (int zOffset = -1; zOffset <= 1; zOffset++)
    {
        for (int yOffset = -1; yOffset <= 1; yOffset++)
        {
            for (int xOffset = -1; xOffset <= 1; xOffset++)
            {
                float3 neighboringCellOffset = float3(xOffset, yOffset, zOffset);
                float3 randomOffset = Hash3DAngle(baseCell + neighboringCellOffset, angle);
                
                float3 r = (fractionalPart - neighboringCellOffset) - randomOffset;
                float distance = 0.5 * dot(r, r);
                
                float h = smoothstep(0.0, 1.0, 0.5 + ((0.5 * (F1 - distance)) / smoothness));
                F1 = lerp(F1, distance, h) - ((smoothness * h) * (1.0 - h));
                
                minOffset = neighboringCellOffset;
                minRandom = randomOffset;
            }
        }
    }
    
    output = sqrt(F1);
}

void Voronoi3D_fbm_float(float3 position, float angle, float smoothness, int octaves, float persistance, float lacunarity, out float output)
{
    float amplitude = 1.0;
    float frequency = 1.0;
    
    float totalNoise = 0.0;
    float totalAmplitude = 0.0;
        
    for (int i = 0; i < octaves; i++)
    {
        float noiseSample;
        float3 localGradient;
        
        Voronoi3D_float(position * frequency, angle, smoothness, noiseSample);
        
        totalNoise += noiseSample * amplitude;
        
        totalAmplitude += amplitude;
        
        amplitude *= persistance;
        frequency *= lacunarity;
    }
    
    totalNoise /= totalAmplitude;
    
    output = totalNoise;
}

void VoronoiNoise_float(float3 position, float angle, float smoothness, uint octaves, out float noise)
{
    Voronoi3D_fbm_float(position, angle, smoothness, octaves, 0.5, 2.0, noise);
    
    // Voronoi smoothing is optional.
    
    noise = smoothstep(0.0, 1.0, noise);
}

void VoronoiNoise_float(float3 position, float angle, float smoothness, uint octaves, out float noise, out float3 gradient)
{    
    VoronoiNoise_float(position, angle, smoothness, octaves, noise);
    
    // Compute the noise gradient using central differences method.
    
    float epsilon = 0.00001;

    float
    
    noiseX1, noiseX2,
    noiseY1, noiseY2,
    noiseZ1, noiseZ2;

    // Sample noise at offset positions.
    
    float3 positionX1 = position + float3(epsilon, 0.0, 0.0);
    float3 positionX2 = position - float3(epsilon, 0.0, 0.0);
    
    float3 positionY1 = position + float3(0.0, epsilon, 0.0);
    float3 positionY2 = position - float3(0.0, epsilon, 0.0);
    
    float3 positionZ1 = position + float3(0.0, 0.0, epsilon);
    float3 positionZ2 = position - float3(0.0, 0.0, epsilon);
    
    VoronoiNoise_float(positionX1, angle, smoothness, octaves, noiseX1);
    VoronoiNoise_float(positionX2, angle, smoothness, octaves, noiseX2);

    VoronoiNoise_float(positionY1, angle, smoothness, octaves, noiseY1);
    VoronoiNoise_float(positionY2, angle, smoothness, octaves, noiseY2);

    VoronoiNoise_float(positionZ1, angle, smoothness, octaves, noiseZ1);
    VoronoiNoise_float(positionZ2, angle, smoothness, octaves, noiseZ2);

    // Calculate gradient components.
    
    gradient.x = noiseX2 - noiseX1;
    gradient.y = noiseY2 - noiseY1;
    gradient.z = noiseZ2 - noiseZ1;
    
    gradient /= (2.0 * epsilon);

}

void SimplexNoise_float(float3 position, float angle, uint octaves, out float noise)
{
    float3 gradient;
    
    psrdnoise_fbm_float(position, angle, octaves, 0.5, 2.0, gradient, noise);
    
    // Simplex 'smoothing' required because it's remapping [-1.0, 1.0] -> [0.0, 1.0].
    
    noise = smoothstep(-1.0, 1.0, noise);
}
void SimplexNoise_float(float3 position, float angle, uint octaves, out float noise, out float3 gradient)
{
    psrdnoise_fbm_float(position, angle, octaves, 0.5, 2.0, gradient, noise);
    
    // Simplex 'smoothing' required because it's remapping [-1.0, 1.0] -> [0.0, 1.0].
    
    noise = smoothstep(-1.0, 1.0, noise);
}

void SimplexNoise_Caustics_float(float3 position, float angle, uint octaves, float gradientStrength, out float noise)
{
    float3 gradient;
    
    psrdnoise_fbm_float(position, angle, octaves, 0.5, 2.0, gradient, noise); // Get gradient.
    psrdnoise_fbm_float(position - (gradient * gradientStrength), angle, octaves, 0.5, 2.0, gradient, noise);
    
    // Simplex 'smoothing' required because it's remapping [-1.0, 1.0] -> [0.0, 1.0].
    
    noise = smoothstep(-1.0, 1.0, noise);
}
void SimplexNoise_Caustics_float(float3 position, float angle, uint octaves, float gradientStrength, out float noise, out float3 gradient)
{
    //float3 gradient;
    
    psrdnoise_fbm_float(position, angle, octaves, 0.5, 2.0, gradient, noise); // Get gradient.
    psrdnoise_fbm_float(position - (gradient * gradientStrength), angle, octaves, 0.5, 2.0, gradient, noise);
    
    // Simplex 'smoothing' required because it's remapping [-1.0, 1.0] -> [0.0, 1.0].
    
    noise = smoothstep(-1.0, 1.0, noise);
}

void SimplexNoise_Caustics_RGB_float(float3 position, float angle, uint octaves, float gradientStrength, float rgbSplit, float3 normal, out float4 noise, out float3 gradient)
{
    float3 right = normalize(cross(normal, float3(0.0, 1.0, 0.0)));
    float3 up = normalize(cross(right, normal));
    
    // 2D shift offsets relative to view direction.
    
    float3 shift_r = (-right * rgbSplit) + (-up * rgbSplit);
    float3 shift_g = (up * rgbSplit);
    float3 shift_b = (right * rgbSplit) + (-up * rgbSplit);
    
    // Apply shifts to the position.
    
    float3 offset_r = position + shift_r;
    float3 offset_g = position + shift_g;
    float3 offset_b = position + shift_b;
    
    // Save non-offset noise in 'w' or alpha channel, and save gradient from non-offset position;
    
    SimplexNoise_Caustics_float(position, angle, octaves, gradientStrength, noise.a, gradient);
    
    // Calculate noise for each channel (RGB-shifted).
        
    SimplexNoise_Caustics_float(offset_r, angle, octaves, gradientStrength, noise.r);
    SimplexNoise_Caustics_float(offset_g, angle, octaves, gradientStrength, noise.g);
    SimplexNoise_Caustics_float(offset_b, angle, octaves, gradientStrength, noise.b);
}

// Unity.

inline float unity_noise_randomValue(float2 uv)
{
    return frac(sin(dot(uv, float2(12.9898, 78.233))) * 43758.5453);
}

inline float unity_noise_interpolate(float a, float b, float t)
{
    return (1.0 - t) * a + (t * b);
}

inline float unity_valueNoise(float2 uv)
{
    float2 i = floor(uv);
    float2 f = frac(uv);
    f = f * f * (3.0 - 2.0 * f);

    uv = abs(frac(uv) - 0.5);
    float2 c0 = i + float2(0.0, 0.0);
    float2 c1 = i + float2(1.0, 0.0);
    float2 c2 = i + float2(0.0, 1.0);
    float2 c3 = i + float2(1.0, 1.0);
    float r0 = unity_noise_randomValue(c0);
    float r1 = unity_noise_randomValue(c1);
    float r2 = unity_noise_randomValue(c2);
    float r3 = unity_noise_randomValue(c3);

    float bottomOfGrid = unity_noise_interpolate(r0, r1, f.x);
    float topOfGrid = unity_noise_interpolate(r2, r3, f.x);
    float t = unity_noise_interpolate(bottomOfGrid, topOfGrid, f.y);
    return t;
}

void Unity_SimpleNoise_float(float2 UV, float Scale, out float Out)
{
    float t = 0.0;

    float freq = pow(2.0, float(0));
    float amp = pow(0.5, float(3 - 0));
    t += unity_valueNoise(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

    freq = pow(2.0, float(1));
    amp = pow(0.5, float(3 - 1));
    t += unity_valueNoise(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

    freq = pow(2.0, float(2));
    amp = pow(0.5, float(3 - 2));
    t += unity_valueNoise(float2(UV.x * Scale / freq, UV.y * Scale / freq)) * amp;

    Out = t;
}

#endif