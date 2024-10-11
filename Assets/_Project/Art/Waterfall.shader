// Made with Amplify Shader Editor v1.9.6.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Waterfall"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[HDR]_ColourB("Colour B", Color) = (1,1,1,1)
		[HDR]_ColourA("Colour A", Color) = (1,1,1,1)
		_ColourPower("Colour Power", Float) = 1
		_Metallic("Metallic", Range( 0 , 1)) = 0
		_Smoothness("Smoothness", Range( 0 , 1)) = 0.5
		_ColourtoEmission("Colour to Emission", Range( 0 , 1)) = 0
		_CurveShift("Curve Shift", Range( -1 , 1)) = 0
		_Curve("Curve", Float) = 1
		_CurveRemapMin("Curve Remap Min", Range( 0 , 1)) = 0
		_CurvePower("Curve Power", Float) = 1
		_CurveVertexNormalPower("Curve Vertex Normal Power", Float) = 0.1
		_CurveRemapMax("Curve Remap Max", Range( 0 , 1)) = 1
		_CurveAxis("Curve Axis", Vector) = (0,1,0,0)
		_NoiseScale("Noise Scale", Float) = 1
		_NoiseTiling1("Noise Tiling 1", Vector) = (1,1,1,0)
		_NoiseTiling2("Noise Tiling 2", Vector) = (1,1,1,0)
		_NoiseTilingMaskPower("Noise Tiling Mask Power", Float) = 1
		_NoiseAnimation("Noise Animation", Vector) = (0,0,0,0)
		_NoiseAnimationFPS("Noise Animation FPS", Range( 8 , 120)) = 60
		_NoiseOffset("Noise Offset", Vector) = (0,0,0,0)
		_NoisePower("Noise Power", Float) = 2
		_NoiseRemapMin("Noise Remap Min", Range( 0 , 1)) = 0
		_NoiseRemapMax("Noise Remap Max", Range( 0 , 1)) = 1
		_CurveNormalStrength("Curve Normal Strength", Float) = 1
		_NoiseNormalStrength("Noise Normal Strength", Float) = 1
		_MaskPower1("Mask Power 1", Float) = 1
		_MaskPower2("Mask Power 2", Float) = 1
		_MaskCurvePower("Mask Curve Power", Float) = 0.01
		_MaskPower2RemapMin("Mask Power 2 Remap Min", Range( 0 , 1)) = 0
		_MaskPower2RemapMax("Mask Power 2 Remap Max", Range( 0 , 1)) = 1
		_MaskYPower("Mask Y Power", Float) = 1
		_MaskYRemapMin("Mask Y Remap Min", Range( 0 , 1)) = 0
		_MaskYRemapMax("Mask Y Remap Max", Range( 0 , 1)) = 1
		_SpecularMaskOffset("Specular Mask Offset", Float) = 0
		_SpecularMaskPower("Specular Mask Power", Float) = 1
		_NoiseVertexOffset("Noise Vertex Offset", Range( 0 , 1)) = 0
		_DepthFade("Depth Fade", Float) = 1
		_NoiseDistortion("Noise Distortion", Range( 0 , 1)) = 0
		_NoiseDistortionScale("Noise Distortion Scale", Float) = 1
		_NoiseDistortionAnimation("Noise Distortion Animation", Vector) = (0,0,0,0)
		[IntRange]_NoiseDistortionOctaves("Noise Distortion Octaves", Range( 1 , 8)) = 1
		_AlphaOutput("Alpha Output", Range( 0 , 1)) = 1
		[HDR]_DepthSparklesColour("Depth Sparkles Colour", Color) = (1,1,1,1)
		_DepthSparklesDistance("Depth Sparkles Distance", Float) = 1
		_DepthSparklesNoiseScale("Depth Sparkles Noise Scale", Float) = 1
		_DepthSparklesNoiseTiling1("Depth Sparkles Noise Tiling 1", Vector) = (1,1,1,0)
		_DepthSparklesNoiseTiling2("Depth Sparkles Noise Tiling 2", Vector) = (1,1,1,0)
		_DepthSparklesNoiseTilingMaskPower("Depth Sparkles Noise Tiling Mask Power", Float) = 1
		_DepthSparklesNoiseAnimation("Depth Sparkles Noise Animation", Vector) = (0,0,0,0)
		[IntRange]_DepthSparklesNoiseOctaves("Depth Sparkles Noise Octaves", Range( 1 , 4)) = 1
		_DepthSparklesNoisePower("Depth Sparkles Noise Power", Float) = 2
		_DepthSparklesRemapMin("Depth Sparkles Remap Min", Range( 0 , 1)) = 0
		_DepthSparklesRemapMax("Depth Sparkles Remap Max", Range( 0 , 1)) = 1


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		_TransStrength( "Strength", Range( 0, 50 ) ) = 1
		_TransNormal( "Normal Distortion", Range( 0, 1 ) ) = 0.5
		_TransScattering( "Scattering", Range( 1, 50 ) ) = 2
		_TransDirect( "Direct", Range( 0, 1 ) ) = 0.9
		_TransAmbient( "Ambient", Range( 0, 1 ) ) = 0.1
		_TransShadow( "Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		_TessValue( "Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1
		[HideInInspector][ToggleOff] _EnvironmentReflections("Environment Reflections", Float) = 1
		[HideInInspector][ToggleOff] _ReceiveShadows("Receive Shadows", Float) = 1.0

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Transparent" "Queue"="Transparent" "UniversalMaterialType"="Lit" }

		Cull Back
		ZWrite Off
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 4.5
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForwardOnly" }

			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			
            #define _NORMAL_DROPOFF_TS 1
            #pragma shader_feature_local _RECEIVE_SHADOWS_OFF
            #pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
            #pragma multi_compile_instancing
            #pragma instancing_options renderinglayer
            #pragma multi_compile _ LOD_FADE_CROSSFADE
            #pragma multi_compile_fog
            #define ASE_FOG 1
            #define ASE_FIXED_TESSELLATION
            #define ASE_TESSELLATION 1
            #pragma require tessellation tessHW
            #pragma hull HullFunction
            #pragma domain DomainFunction
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define ASE_TRANSLUCENCY 1
            #define _EMISSION
            #define _NORMALMAP 1
            #define ASE_SRP_VERSION 140011
            #define REQUIRE_DEPTH_TEXTURE 1


			
            #pragma multi_compile _ DOTS_INSTANCING_ON
		

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS

			

			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION

			
			#pragma multi_compile_fragment _ _SHADOWS_SOFT
           

			

			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _LIGHT_COOKIES
			#pragma multi_compile _ _FORWARD_PLUS

			
            #pragma multi_compile_fragment _ _WRITE_RENDERING_LAYERS
		

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ DEBUG_DISPLAY

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_FORWARD

			

			

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#include "Noise.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_SCREEN_POSITION


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _DepthSparklesColour;
			float4 _ColourB;
			float4 _ColourA;
			float4 _NoiseAnimation;
			float4 _DepthSparklesNoiseAnimation;
			float3 _CurveAxis;
			float3 _NoiseTiling1;
			float3 _NoiseTiling2;
			float3 _DepthSparklesNoiseTiling2;
			float3 _DepthSparklesNoiseTiling1;
			float _Metallic;
			float _DepthSparklesNoiseTilingMaskPower;
			float _DepthSparklesDistance;
			float _DepthSparklesNoiseOctaves;
			float _DepthSparklesNoisePower;
			float _CurveShift;
			float _MaskPower1;
			float _MaskPower2RemapMin;
			float _MaskPower2RemapMax;
			float _MaskPower2;
			float _MaskCurvePower;
			float _MaskYRemapMin;
			float _MaskYRemapMax;
			float _MaskYPower;
			float _DepthFade;
			float _SpecularMaskOffset;
			float _Smoothness;
			float _DepthSparklesNoiseScale;
			float _NoiseNormalStrength;
			float _DepthSparklesRemapMin;
			float _CurvePower;
			float _CurveRemapMin;
			float _CurveRemapMax;
			float _Curve;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _NoiseScale;
			float _NoiseTilingMaskPower;
			float _NoiseDistortionScale;
			float _NoiseDistortionOctaves;
			float _NoiseDistortion;
			float _NoiseAnimationFPS;
			float _NoisePower;
			float _NoiseVertexOffset;
			float _CurveVertexNormalPower;
			float _ColourPower;
			float _CurveNormalStrength;
			float _SpecularMaskPower;
			float _ColourtoEmission;
			float _DepthSparklesRemapMax;
			float _AlphaOutput;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _CameraOpaqueTexture;


			float3 PerturbNormal107_g53( float3 surf_pos, float3 surf_norm, float height, float scale )
			{
				// "Bump Mapping Unparametrized Surfaces on the GPU" by Morten S. Mikkelsen
				float3 vSigmaS = ddx( surf_pos );
				float3 vSigmaT = ddy( surf_pos );
				float3 vN = surf_norm;
				float3 vR1 = cross( vSigmaT , vN );
				float3 vR2 = cross( vN , vSigmaS );
				float fDet = dot( vSigmaS , vR1 );
				float dBs = ddx( height );
				float dBt = ddy( height );
				float3 vSurfGrad = scale * 0.05 * sign( fDet ) * ( dBs * vR1 + dBt * vR2 );
				return normalize ( abs( fDet ) * vN - vSurfGrad );
			}
			
			float3 PerturbNormal107_g54( float3 surf_pos, float3 surf_norm, float height, float scale )
			{
				// "Bump Mapping Unparametrized Surfaces on the GPU" by Morten S. Mikkelsen
				float3 vSigmaS = ddx( surf_pos );
				float3 vSigmaT = ddy( surf_pos );
				float3 vN = surf_norm;
				float3 vR1 = cross( vSigmaT , vN );
				float3 vR2 = cross( vN , vSigmaS );
				float fDet = dot( vSigmaS , vR1 );
				float dBs = ddx( height );
				float dBt = ddy( height );
				float3 vSurfGrad = scale * 0.05 * sign( fDet ) * ( dBs * vR1 + dBt * vR2 );
				return normalize ( abs( fDet ) * vN - vSurfGrad );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord10 = v.texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 Curve_Vertex_Offset289 = ( Curve27 * _CurveAxis * _Curve );
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( v.positionOS.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( v.positionOS.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float3 lerpResult238 = lerp( v.normalOS , float3( 1,0,0 ) , pow( Curve27 , _CurveVertexNormalPower ));
				float3 normalizeResult242 = normalize( lerpResult238 );
				float3 Curved_Vertex_Normals202 = normalizeResult242;
				float3 Noise_Vertex_Offset188 = ( ( Noise69 * _NoiseVertexOffset ) * saturate( Curved_Vertex_Normals202 ) );
				float3 Vertex_Offset190 = ( Curve_Vertex_Offset289 + Noise_Vertex_Offset188 );
				
				o.ase_texcoord8.xy = v.texcoord.xy;
				o.ase_texcoord9 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord8.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = Vertex_Offset190;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif
				v.normalOS = v.normalOS;
				v.tangentOS = v.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( v.normalOS, v.tangentOS );

				o.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x );
				o.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y );
				o.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z );

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord.xy;
					o.lightmapUVOrVertexSH.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );

				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( vertexInput.positionCS.z );
				#else
					half fogFactor = 0;
				#endif

				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag ( VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float2 texCoord10 = IN.ase_texcoord8.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 lerpResult120 = lerp( _ColourB.rgb , _ColourA.rgb , pow( Curve27 , _ColourPower ));
				float3 Colour121 = lerpResult120;
				
				float3 surf_pos107_g53 = WorldPosition;
				float3 surf_norm107_g53 = WorldNormal;
				float height107_g53 = Curve27;
				float scale107_g53 = _CurveNormalStrength;
				float3 localPerturbNormal107_g53 = PerturbNormal107_g53( surf_pos107_g53 , surf_norm107_g53 , height107_g53 , scale107_g53 );
				float3x3 ase_worldToTangent = float3x3(WorldTangent,WorldBiTangent,WorldNormal);
				float3 worldToTangentDir42_g53 = mul( ase_worldToTangent, localPerturbNormal107_g53);
				float3 Curve_Normals144 = worldToTangentDir42_g53;
				float3 surf_pos107_g54 = WorldPosition;
				float3 surf_norm107_g54 = WorldNormal;
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( IN.ase_texcoord9.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( IN.ase_texcoord9.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float height107_g54 = Noise69;
				float scale107_g54 = _NoiseNormalStrength;
				float3 localPerturbNormal107_g54 = PerturbNormal107_g54( surf_pos107_g54 , surf_norm107_g54 , height107_g54 , scale107_g54 );
				float3 worldToTangentDir42_g54 = mul( ase_worldToTangent, localPerturbNormal107_g54);
				float3 Noise_Normals139 = worldToTangentDir42_g54;
				float3 Normals146 = BlendNormal( Curve_Normals144 , Noise_Normals139 );
				
				float3 lerpResult174 = lerp( float3( 0,0,0 ) , Colour121 , _ColourtoEmission);
				float localSimplexNoise_float2_g57 = ( 0.0 );
				float3 lerpResult315 = lerp( _DepthSparklesNoiseTiling1 , _DepthSparklesNoiseTiling2 , pow( Curve27 , _DepthSparklesNoiseTilingMaskPower ));
				float4 temp_output_10_0_g55 = ( float4( ( IN.ase_texcoord9.xyz * _DepthSparklesNoiseScale * lerpResult315 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _DepthSparklesNoiseAnimation * _TimeParameters.x ) ) );
				float3 position2_g57 = (temp_output_10_0_g55).xyz;
				float angle2_g57 = (temp_output_10_0_g55).w;
				float octaves2_g57 = _DepthSparklesNoiseOctaves;
				float noise2_g57 = 0.0;
				float3 gradient2_g57 = float3( 0,0,0 );
				SimplexNoise_float( position2_g57 , angle2_g57 , octaves2_g57 , noise2_g57 , gradient2_g57 );
				float smoothstepResult308 = smoothstep( _DepthSparklesRemapMin , _DepthSparklesRemapMax , pow( noise2_g57 , _DepthSparklesNoisePower ));
				float4 ase_screenPosNorm = ScreenPos / ScreenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float screenDepth295 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth295 = saturate( abs( ( screenDepth295 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthSparklesDistance ) ) );
				float smoothstepResult296 = smoothstep( 0.0 , 1.0 , ( 1.0 - distanceDepth295 ));
				float Depth_Sparkles_Mask297 = smoothstepResult296;
				float3 Depth_Sparkles299 = ( smoothstepResult308 * _DepthSparklesColour.rgb * _DepthSparklesColour.a * Depth_Sparkles_Mask297 );
				float3 Emission172 = ( lerpResult174 + Depth_Sparkles299 );
				
				float2 texCoord75 = IN.ase_texcoord8.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_X99 = sin( ( texCoord75.x * PI ) );
				float smoothstepResult96 = smoothstep( _MaskPower2RemapMin , _MaskPower2RemapMax , pow( Raw_Mask_X99 , _MaskPower2 ));
				float lerpResult89 = lerp( pow( Raw_Mask_X99 , _MaskPower1 ) , smoothstepResult96 , pow( Curve27 , _MaskCurvePower ));
				float Mask_X106 = lerpResult89;
				float2 texCoord101 = IN.ase_texcoord8.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_Y105 = sin( ( texCoord101.y * PI ) );
				float smoothstepResult114 = smoothstep( _MaskYRemapMin , _MaskYRemapMax , pow( Raw_Mask_Y105 , _MaskYPower ));
				float Mask_Y113 = smoothstepResult114;
				float screenDepth129 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth129 = saturate( abs( ( screenDepth129 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				float smoothstepResult133 = smoothstep( 0.0 , 1.0 , distanceDepth129);
				float Depth_Fade130 = smoothstepResult133;
				float2 texCoord159 = IN.ase_texcoord8.xy * float2( 1,1 ) + float2( 0,0 );
				float Specular_Mask163 = pow( abs( sin( ( ( texCoord159.x + _SpecularMaskOffset ) * PI ) ) ) , _SpecularMaskPower );
				float temp_output_80_0 = ( Noise69 * Mask_X106 * Mask_Y113 * Depth_Fade130 * Specular_Mask163 );
				float lerpResult275 = lerp( 1.0 , temp_output_80_0 , _AlphaOutput);
				float Alpha_Output277 = lerpResult275;
				

				float3 BaseColor = Colour121;
				float3 Normal = Normals146;
				float3 Emission = Emission172;
				float3 Specular = 0.5;
				float Metallic = _Metallic;
				float Smoothness = _Smoothness;
				float Occlusion = 1;
				float Alpha = Alpha_Output277;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _CLEARCOAT
					float CoatMask = 0;
					float CoatSmoothness = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;

				#ifdef _NORMALMAP
						#if _NORMAL_DROPOFF_TS
							inputData.normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent, WorldBiTangent, WorldNormal));
						#elif _NORMAL_DROPOFF_OS
							inputData.normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							inputData.normalWS = Normal;
						#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif
					inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
				#else
					inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
					#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = BaseColor;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;

				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(IN.positionCS, surfaceData, inputData);
				#endif

				#ifdef _ASE_LIGHTING_SIMPLE
					half4 color = UniversalFragmentBlinnPhong( inputData, surfaceData);
				#else
					half4 color = UniversalFragmentPBR( inputData, surfaceData);
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					#define SUM_LIGHT_TRANSMISSION(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 transmission = max( 0, -dot( inputData.normalWS, Light.direction ) ) * atten * Transmission;\
						color.rgb += BaseColor * transmission;

					SUM_LIGHT_TRANSMISSION( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSMISSION( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSMISSION( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#define SUM_LIGHT_TRANSLUCENCY(Light)\
						float3 atten = Light.color * Light.distanceAttenuation;\
						atten = lerp( atten, atten * Light.shadowAttenuation, shadow );\
						half3 lightDir = Light.direction + inputData.normalWS * normal;\
						half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );\
						half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;\
						color.rgb += BaseColor * translucency * strength;

					SUM_LIGHT_TRANSLUCENCY( GetMainLight( inputData.shadowCoord ) );

					#if defined(_ADDITIONAL_LIGHTS)
						uint meshRenderingLayers = GetMeshRenderingLayer();
						uint pixelLightCount = GetAdditionalLightsCount();
						#if USE_FORWARD_PLUS
							for (uint lightIndex = 0; lightIndex < min(URP_FP_DIRECTIONAL_LIGHTS_COUNT, MAX_VISIBLE_LIGHTS); lightIndex++)
							{
								FORWARD_PLUS_SUBTRACTIVE_LIGHT_CHECK

								Light light = GetAdditionalLight(lightIndex, inputData.positionWS);
								#ifdef _LIGHT_LAYERS
								if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
								#endif
								{
									SUM_LIGHT_TRANSLUCENCY( light );
								}
							}
						#endif
						LIGHT_LOOP_BEGIN( pixelLightCount )
							Light light = GetAdditionalLight(lightIndex, inputData.positionWS);
							#ifdef _LIGHT_LAYERS
							if (IsMatchingLightLayer(light.layerMask, meshRenderingLayers))
							#endif
							{
								SUM_LIGHT_TRANSLUCENCY( light );
							}
						LIGHT_LOOP_END
					#endif
				}
				#endif

				#ifdef ASE_REFRACTION
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
				#endif

				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			
            #define _NORMAL_DROPOFF_TS 1
            #pragma multi_compile_instancing
            #pragma multi_compile _ LOD_FADE_CROSSFADE
            #define ASE_FOG 1
            #define ASE_FIXED_TESSELLATION
            #define ASE_TESSELLATION 1
            #pragma require tessellation tessHW
            #pragma hull HullFunction
            #pragma domain DomainFunction
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define ASE_TRANSLUCENCY 1
            #define _EMISSION
            #define _NORMALMAP 1
            #define ASE_SRP_VERSION 140011
            #define REQUIRE_DEPTH_TEXTURE 1


			
            #pragma multi_compile _ DOTS_INSTANCING_ON
		

			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#include "Noise.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_SCREEN_POSITION


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif				
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _DepthSparklesColour;
			float4 _ColourB;
			float4 _ColourA;
			float4 _NoiseAnimation;
			float4 _DepthSparklesNoiseAnimation;
			float3 _CurveAxis;
			float3 _NoiseTiling1;
			float3 _NoiseTiling2;
			float3 _DepthSparklesNoiseTiling2;
			float3 _DepthSparklesNoiseTiling1;
			float _Metallic;
			float _DepthSparklesNoiseTilingMaskPower;
			float _DepthSparklesDistance;
			float _DepthSparklesNoiseOctaves;
			float _DepthSparklesNoisePower;
			float _CurveShift;
			float _MaskPower1;
			float _MaskPower2RemapMin;
			float _MaskPower2RemapMax;
			float _MaskPower2;
			float _MaskCurvePower;
			float _MaskYRemapMin;
			float _MaskYRemapMax;
			float _MaskYPower;
			float _DepthFade;
			float _SpecularMaskOffset;
			float _Smoothness;
			float _DepthSparklesNoiseScale;
			float _NoiseNormalStrength;
			float _DepthSparklesRemapMin;
			float _CurvePower;
			float _CurveRemapMin;
			float _CurveRemapMax;
			float _Curve;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _NoiseScale;
			float _NoiseTilingMaskPower;
			float _NoiseDistortionScale;
			float _NoiseDistortionOctaves;
			float _NoiseDistortion;
			float _NoiseAnimationFPS;
			float _NoisePower;
			float _NoiseVertexOffset;
			float _CurveVertexNormalPower;
			float _ColourPower;
			float _CurveNormalStrength;
			float _SpecularMaskPower;
			float _ColourtoEmission;
			float _DepthSparklesRemapMax;
			float _AlphaOutput;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _CameraOpaqueTexture;


			
			float3 _LightDirection;
			float3 _LightPosition;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 texCoord10 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 Curve_Vertex_Offset289 = ( Curve27 * _CurveAxis * _Curve );
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( v.positionOS.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( v.positionOS.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float3 lerpResult238 = lerp( v.normalOS , float3( 1,0,0 ) , pow( Curve27 , _CurveVertexNormalPower ));
				float3 normalizeResult242 = normalize( lerpResult238 );
				float3 Curved_Vertex_Normals202 = normalizeResult242;
				float3 Noise_Vertex_Offset188 = ( ( Noise69 * _NoiseVertexOffset ) * saturate( Curved_Vertex_Normals202 ) );
				float3 Vertex_Offset190 = ( Curve_Vertex_Offset289 + Noise_Vertex_Offset188 );
				
				o.ase_texcoord3 = v.positionOS;
				o.ase_texcoord4.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = Vertex_Offset190;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = positionWS;
				#endif

				float3 normalWS = TransformObjectToWorldDir(v.normalOS);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));

				#if UNITY_REVERSED_Z
					positionCS.z = min(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#else
					positionCS.z = max(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = positionCS;
				o.clipPosV = positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float2 texCoord10 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( IN.ase_texcoord3.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( IN.ase_texcoord3.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float2 texCoord75 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_X99 = sin( ( texCoord75.x * PI ) );
				float smoothstepResult96 = smoothstep( _MaskPower2RemapMin , _MaskPower2RemapMax , pow( Raw_Mask_X99 , _MaskPower2 ));
				float lerpResult89 = lerp( pow( Raw_Mask_X99 , _MaskPower1 ) , smoothstepResult96 , pow( Curve27 , _MaskCurvePower ));
				float Mask_X106 = lerpResult89;
				float2 texCoord101 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_Y105 = sin( ( texCoord101.y * PI ) );
				float smoothstepResult114 = smoothstep( _MaskYRemapMin , _MaskYRemapMax , pow( Raw_Mask_Y105 , _MaskYPower ));
				float Mask_Y113 = smoothstepResult114;
				float4 ase_screenPosNorm = ScreenPos / ScreenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float screenDepth129 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth129 = saturate( abs( ( screenDepth129 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				float smoothstepResult133 = smoothstep( 0.0 , 1.0 , distanceDepth129);
				float Depth_Fade130 = smoothstepResult133;
				float2 texCoord159 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Specular_Mask163 = pow( abs( sin( ( ( texCoord159.x + _SpecularMaskOffset ) * PI ) ) ) , _SpecularMaskPower );
				float temp_output_80_0 = ( Noise69 * Mask_X106 * Mask_Y113 * Depth_Fade130 * Specular_Mask163 );
				float lerpResult275 = lerp( 1.0 , temp_output_80_0 , _AlphaOutput);
				float Alpha_Output277 = lerpResult275;
				

				float Alpha = Alpha_Output277;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask R
			AlphaToMask Off

			HLSLPROGRAM

			
            #define _NORMAL_DROPOFF_TS 1
            #pragma multi_compile_instancing
            #pragma multi_compile _ LOD_FADE_CROSSFADE
            #define ASE_FOG 1
            #define ASE_FIXED_TESSELLATION
            #define ASE_TESSELLATION 1
            #pragma require tessellation tessHW
            #pragma hull HullFunction
            #pragma domain DomainFunction
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define ASE_TRANSLUCENCY 1
            #define _EMISSION
            #define _NORMALMAP 1
            #define ASE_SRP_VERSION 140011
            #define REQUIRE_DEPTH_TEXTURE 1


			
            #pragma multi_compile _ DOTS_INSTANCING_ON
		

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_DEPTHONLY

			

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#include "Noise.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_SCREEN_POSITION


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 positionWS : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD2;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _DepthSparklesColour;
			float4 _ColourB;
			float4 _ColourA;
			float4 _NoiseAnimation;
			float4 _DepthSparklesNoiseAnimation;
			float3 _CurveAxis;
			float3 _NoiseTiling1;
			float3 _NoiseTiling2;
			float3 _DepthSparklesNoiseTiling2;
			float3 _DepthSparklesNoiseTiling1;
			float _Metallic;
			float _DepthSparklesNoiseTilingMaskPower;
			float _DepthSparklesDistance;
			float _DepthSparklesNoiseOctaves;
			float _DepthSparklesNoisePower;
			float _CurveShift;
			float _MaskPower1;
			float _MaskPower2RemapMin;
			float _MaskPower2RemapMax;
			float _MaskPower2;
			float _MaskCurvePower;
			float _MaskYRemapMin;
			float _MaskYRemapMax;
			float _MaskYPower;
			float _DepthFade;
			float _SpecularMaskOffset;
			float _Smoothness;
			float _DepthSparklesNoiseScale;
			float _NoiseNormalStrength;
			float _DepthSparklesRemapMin;
			float _CurvePower;
			float _CurveRemapMin;
			float _CurveRemapMax;
			float _Curve;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _NoiseScale;
			float _NoiseTilingMaskPower;
			float _NoiseDistortionScale;
			float _NoiseDistortionOctaves;
			float _NoiseDistortion;
			float _NoiseAnimationFPS;
			float _NoisePower;
			float _NoiseVertexOffset;
			float _CurveVertexNormalPower;
			float _ColourPower;
			float _CurveNormalStrength;
			float _SpecularMaskPower;
			float _ColourtoEmission;
			float _DepthSparklesRemapMax;
			float _AlphaOutput;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _CameraOpaqueTexture;


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord10 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 Curve_Vertex_Offset289 = ( Curve27 * _CurveAxis * _Curve );
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( v.positionOS.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( v.positionOS.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float3 lerpResult238 = lerp( v.normalOS , float3( 1,0,0 ) , pow( Curve27 , _CurveVertexNormalPower ));
				float3 normalizeResult242 = normalize( lerpResult238 );
				float3 Curved_Vertex_Normals202 = normalizeResult242;
				float3 Noise_Vertex_Offset188 = ( ( Noise69 * _NoiseVertexOffset ) * saturate( Curved_Vertex_Normals202 ) );
				float3 Vertex_Offset190 = ( Curve_Vertex_Offset289 + Noise_Vertex_Offset188 );
				
				o.ase_texcoord3 = v.positionOS;
				o.ase_texcoord4.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = Vertex_Offset190;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float2 texCoord10 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( IN.ase_texcoord3.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( IN.ase_texcoord3.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float2 texCoord75 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_X99 = sin( ( texCoord75.x * PI ) );
				float smoothstepResult96 = smoothstep( _MaskPower2RemapMin , _MaskPower2RemapMax , pow( Raw_Mask_X99 , _MaskPower2 ));
				float lerpResult89 = lerp( pow( Raw_Mask_X99 , _MaskPower1 ) , smoothstepResult96 , pow( Curve27 , _MaskCurvePower ));
				float Mask_X106 = lerpResult89;
				float2 texCoord101 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_Y105 = sin( ( texCoord101.y * PI ) );
				float smoothstepResult114 = smoothstep( _MaskYRemapMin , _MaskYRemapMax , pow( Raw_Mask_Y105 , _MaskYPower ));
				float Mask_Y113 = smoothstepResult114;
				float4 ase_screenPosNorm = ScreenPos / ScreenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float screenDepth129 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth129 = saturate( abs( ( screenDepth129 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				float smoothstepResult133 = smoothstep( 0.0 , 1.0 , distanceDepth129);
				float Depth_Fade130 = smoothstepResult133;
				float2 texCoord159 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Specular_Mask163 = pow( abs( sin( ( ( texCoord159.x + _SpecularMaskOffset ) * PI ) ) ) , _SpecularMaskPower );
				float temp_output_80_0 = ( Noise69 * Mask_X106 * Mask_Y113 * Depth_Fade130 * Specular_Mask163 );
				float lerpResult275 = lerp( 1.0 , temp_output_80_0 , _AlphaOutput);
				float Alpha_Output277 = lerpResult275;
				

				float Alpha = Alpha_Output277;
				float AlphaClipThreshold = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_FIXED_TESSELLATION
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define ASE_TRANSLUCENCY 1
			#define _EMISSION
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140011
			#define REQUIRE_DEPTH_TEXTURE 1

			#pragma shader_feature EDITOR_VISUALIZATION

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#include "Noise.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float4 VizUV : TEXCOORD2;
					float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _DepthSparklesColour;
			float4 _ColourB;
			float4 _ColourA;
			float4 _NoiseAnimation;
			float4 _DepthSparklesNoiseAnimation;
			float3 _CurveAxis;
			float3 _NoiseTiling1;
			float3 _NoiseTiling2;
			float3 _DepthSparklesNoiseTiling2;
			float3 _DepthSparklesNoiseTiling1;
			float _Metallic;
			float _DepthSparklesNoiseTilingMaskPower;
			float _DepthSparklesDistance;
			float _DepthSparklesNoiseOctaves;
			float _DepthSparklesNoisePower;
			float _CurveShift;
			float _MaskPower1;
			float _MaskPower2RemapMin;
			float _MaskPower2RemapMax;
			float _MaskPower2;
			float _MaskCurvePower;
			float _MaskYRemapMin;
			float _MaskYRemapMax;
			float _MaskYPower;
			float _DepthFade;
			float _SpecularMaskOffset;
			float _Smoothness;
			float _DepthSparklesNoiseScale;
			float _NoiseNormalStrength;
			float _DepthSparklesRemapMin;
			float _CurvePower;
			float _CurveRemapMin;
			float _CurveRemapMax;
			float _Curve;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _NoiseScale;
			float _NoiseTilingMaskPower;
			float _NoiseDistortionScale;
			float _NoiseDistortionOctaves;
			float _NoiseDistortion;
			float _NoiseAnimationFPS;
			float _NoisePower;
			float _NoiseVertexOffset;
			float _CurveVertexNormalPower;
			float _ColourPower;
			float _CurveNormalStrength;
			float _SpecularMaskPower;
			float _ColourtoEmission;
			float _DepthSparklesRemapMax;
			float _AlphaOutput;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _CameraOpaqueTexture;


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord10 = v.texcoord0.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 Curve_Vertex_Offset289 = ( Curve27 * _CurveAxis * _Curve );
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( v.positionOS.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( v.positionOS.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float3 lerpResult238 = lerp( v.normalOS , float3( 1,0,0 ) , pow( Curve27 , _CurveVertexNormalPower ));
				float3 normalizeResult242 = normalize( lerpResult238 );
				float3 Curved_Vertex_Normals202 = normalizeResult242;
				float3 Noise_Vertex_Offset188 = ( ( Noise69 * _NoiseVertexOffset ) * saturate( Curved_Vertex_Normals202 ) );
				float3 Vertex_Offset190 = ( Curve_Vertex_Offset289 + Noise_Vertex_Offset188 );
				
				float4 ase_clipPos = TransformObjectToHClip((v.positionOS).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord6 = screenPos;
				
				o.ase_texcoord4.xy = v.texcoord0.xy;
				o.ase_texcoord5 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = Vertex_Offset190;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = positionWS;
				#endif

				o.positionCS = MetaVertexPosition( v.positionOS, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

				#ifdef EDITOR_VISUALIZATION
					float2 VizUV = 0;
					float4 LightCoord = 0;
					UnityEditorVizData(v.positionOS.xyz, v.texcoord0.xy, v.texcoord1.xy, v.texcoord2.xy, VizUV, LightCoord);
					o.VizUV = float4(VizUV, 0, 0);
					o.LightCoord = LightCoord;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = o.positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.texcoord0 = v.texcoord0;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 texCoord10 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 lerpResult120 = lerp( _ColourB.rgb , _ColourA.rgb , pow( Curve27 , _ColourPower ));
				float3 Colour121 = lerpResult120;
				
				float3 lerpResult174 = lerp( float3( 0,0,0 ) , Colour121 , _ColourtoEmission);
				float localSimplexNoise_float2_g57 = ( 0.0 );
				float3 lerpResult315 = lerp( _DepthSparklesNoiseTiling1 , _DepthSparklesNoiseTiling2 , pow( Curve27 , _DepthSparklesNoiseTilingMaskPower ));
				float4 temp_output_10_0_g55 = ( float4( ( IN.ase_texcoord5.xyz * _DepthSparklesNoiseScale * lerpResult315 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _DepthSparklesNoiseAnimation * _TimeParameters.x ) ) );
				float3 position2_g57 = (temp_output_10_0_g55).xyz;
				float angle2_g57 = (temp_output_10_0_g55).w;
				float octaves2_g57 = _DepthSparklesNoiseOctaves;
				float noise2_g57 = 0.0;
				float3 gradient2_g57 = float3( 0,0,0 );
				SimplexNoise_float( position2_g57 , angle2_g57 , octaves2_g57 , noise2_g57 , gradient2_g57 );
				float smoothstepResult308 = smoothstep( _DepthSparklesRemapMin , _DepthSparklesRemapMax , pow( noise2_g57 , _DepthSparklesNoisePower ));
				float4 screenPos = IN.ase_texcoord6;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float screenDepth295 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth295 = saturate( abs( ( screenDepth295 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthSparklesDistance ) ) );
				float smoothstepResult296 = smoothstep( 0.0 , 1.0 , ( 1.0 - distanceDepth295 ));
				float Depth_Sparkles_Mask297 = smoothstepResult296;
				float3 Depth_Sparkles299 = ( smoothstepResult308 * _DepthSparklesColour.rgb * _DepthSparklesColour.a * Depth_Sparkles_Mask297 );
				float3 Emission172 = ( lerpResult174 + Depth_Sparkles299 );
				
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( IN.ase_texcoord5.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( IN.ase_texcoord5.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float2 texCoord75 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_X99 = sin( ( texCoord75.x * PI ) );
				float smoothstepResult96 = smoothstep( _MaskPower2RemapMin , _MaskPower2RemapMax , pow( Raw_Mask_X99 , _MaskPower2 ));
				float lerpResult89 = lerp( pow( Raw_Mask_X99 , _MaskPower1 ) , smoothstepResult96 , pow( Curve27 , _MaskCurvePower ));
				float Mask_X106 = lerpResult89;
				float2 texCoord101 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_Y105 = sin( ( texCoord101.y * PI ) );
				float smoothstepResult114 = smoothstep( _MaskYRemapMin , _MaskYRemapMax , pow( Raw_Mask_Y105 , _MaskYPower ));
				float Mask_Y113 = smoothstepResult114;
				float screenDepth129 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth129 = saturate( abs( ( screenDepth129 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				float smoothstepResult133 = smoothstep( 0.0 , 1.0 , distanceDepth129);
				float Depth_Fade130 = smoothstepResult133;
				float2 texCoord159 = IN.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				float Specular_Mask163 = pow( abs( sin( ( ( texCoord159.x + _SpecularMaskOffset ) * PI ) ) ) , _SpecularMaskPower );
				float temp_output_80_0 = ( Noise69 * Mask_X106 * Mask_Y113 * Depth_Fade130 * Specular_Mask163 );
				float lerpResult275 = lerp( 1.0 , temp_output_80_0 , _AlphaOutput);
				float Alpha_Output277 = lerpResult275;
				

				float3 BaseColor = Colour121;
				float3 Emission = Emission172;
				float Alpha = Alpha_Output277;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = BaseColor;
				metaInput.Emission = Emission;
				#ifdef EDITOR_VISUALIZATION
					metaInput.VizUV = IN.VizUV.xy;
					metaInput.LightCoord = IN.LightCoord;
				#endif

				return UnityMetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define ASE_FIXED_TESSELLATION
			#define ASE_TESSELLATION 1
			#pragma require tessellation tessHW
			#pragma hull HullFunction
			#pragma domain DomainFunction
			#define _SURFACE_TYPE_TRANSPARENT 1
			#define ASE_TRANSLUCENCY 1
			#define _EMISSION
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 140011
			#define REQUIRE_DEPTH_TEXTURE 1


			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#include "Noise.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _DepthSparklesColour;
			float4 _ColourB;
			float4 _ColourA;
			float4 _NoiseAnimation;
			float4 _DepthSparklesNoiseAnimation;
			float3 _CurveAxis;
			float3 _NoiseTiling1;
			float3 _NoiseTiling2;
			float3 _DepthSparklesNoiseTiling2;
			float3 _DepthSparklesNoiseTiling1;
			float _Metallic;
			float _DepthSparklesNoiseTilingMaskPower;
			float _DepthSparklesDistance;
			float _DepthSparklesNoiseOctaves;
			float _DepthSparklesNoisePower;
			float _CurveShift;
			float _MaskPower1;
			float _MaskPower2RemapMin;
			float _MaskPower2RemapMax;
			float _MaskPower2;
			float _MaskCurvePower;
			float _MaskYRemapMin;
			float _MaskYRemapMax;
			float _MaskYPower;
			float _DepthFade;
			float _SpecularMaskOffset;
			float _Smoothness;
			float _DepthSparklesNoiseScale;
			float _NoiseNormalStrength;
			float _DepthSparklesRemapMin;
			float _CurvePower;
			float _CurveRemapMin;
			float _CurveRemapMax;
			float _Curve;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _NoiseScale;
			float _NoiseTilingMaskPower;
			float _NoiseDistortionScale;
			float _NoiseDistortionOctaves;
			float _NoiseDistortion;
			float _NoiseAnimationFPS;
			float _NoisePower;
			float _NoiseVertexOffset;
			float _CurveVertexNormalPower;
			float _ColourPower;
			float _CurveNormalStrength;
			float _SpecularMaskPower;
			float _ColourtoEmission;
			float _DepthSparklesRemapMax;
			float _AlphaOutput;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _CameraOpaqueTexture;


			
			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float2 texCoord10 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 Curve_Vertex_Offset289 = ( Curve27 * _CurveAxis * _Curve );
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( v.positionOS.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( v.positionOS.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float3 lerpResult238 = lerp( v.normalOS , float3( 1,0,0 ) , pow( Curve27 , _CurveVertexNormalPower ));
				float3 normalizeResult242 = normalize( lerpResult238 );
				float3 Curved_Vertex_Normals202 = normalizeResult242;
				float3 Noise_Vertex_Offset188 = ( ( Noise69 * _NoiseVertexOffset ) * saturate( Curved_Vertex_Normals202 ) );
				float3 Vertex_Offset190 = ( Curve_Vertex_Offset289 + Noise_Vertex_Offset188 );
				
				float4 ase_clipPos = TransformObjectToHClip((v.positionOS).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord4 = screenPos;
				
				o.ase_texcoord2.xy = v.ase_texcoord.xy;
				o.ase_texcoord3 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord2.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = Vertex_Offset190;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 texCoord10 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 lerpResult120 = lerp( _ColourB.rgb , _ColourA.rgb , pow( Curve27 , _ColourPower ));
				float3 Colour121 = lerpResult120;
				
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( IN.ase_texcoord3.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( IN.ase_texcoord3.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float2 texCoord75 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_X99 = sin( ( texCoord75.x * PI ) );
				float smoothstepResult96 = smoothstep( _MaskPower2RemapMin , _MaskPower2RemapMax , pow( Raw_Mask_X99 , _MaskPower2 ));
				float lerpResult89 = lerp( pow( Raw_Mask_X99 , _MaskPower1 ) , smoothstepResult96 , pow( Curve27 , _MaskCurvePower ));
				float Mask_X106 = lerpResult89;
				float2 texCoord101 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_Y105 = sin( ( texCoord101.y * PI ) );
				float smoothstepResult114 = smoothstep( _MaskYRemapMin , _MaskYRemapMax , pow( Raw_Mask_Y105 , _MaskYPower ));
				float Mask_Y113 = smoothstepResult114;
				float4 screenPos = IN.ase_texcoord4;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float screenDepth129 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth129 = saturate( abs( ( screenDepth129 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				float smoothstepResult133 = smoothstep( 0.0 , 1.0 , distanceDepth129);
				float Depth_Fade130 = smoothstepResult133;
				float2 texCoord159 = IN.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				float Specular_Mask163 = pow( abs( sin( ( ( texCoord159.x + _SpecularMaskOffset ) * PI ) ) ) , _SpecularMaskPower );
				float temp_output_80_0 = ( Noise69 * Mask_X106 * Mask_Y113 * Depth_Fade130 * Specular_Mask163 );
				float lerpResult275 = lerp( 1.0 , temp_output_80_0 , _AlphaOutput);
				float Alpha_Output277 = lerpResult275;
				

				float3 BaseColor = Colour121;
				float Alpha = Alpha_Output277;
				float AlphaClipThreshold = 0.5;

				half4 color = half4(BaseColor, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormalsOnly" }

			ZWrite On
			Blend One Zero
			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

			
            #define _NORMAL_DROPOFF_TS 1
            #pragma multi_compile_instancing
            #pragma multi_compile _ LOD_FADE_CROSSFADE
            #define ASE_FOG 1
            #define ASE_FIXED_TESSELLATION
            #define ASE_TESSELLATION 1
            #pragma require tessellation tessHW
            #pragma hull HullFunction
            #pragma domain DomainFunction
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define ASE_TRANSLUCENCY 1
            #define _EMISSION
            #define _NORMALMAP 1
            #define ASE_SRP_VERSION 140011
            #define REQUIRE_DEPTH_TEXTURE 1


			
            #pragma multi_compile _ DOTS_INSTANCING_ON
		

			
            #pragma multi_compile_fragment _ _WRITE_RENDERING_LAYERS
		

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY
			//#define SHADERPASS SHADERPASS_DEPTHNORMALS

			

			

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(LOD_FADE_CROSSFADE)
            #include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/LODCrossFade.hlsl"
            #endif

			#include "Noise.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_POSITION
			#define ASE_NEEDS_FRAG_SCREEN_POSITION


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 worldNormal : TEXCOORD1;
				float4 worldTangent : TEXCOORD2;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD3;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD4;
				#endif
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _DepthSparklesColour;
			float4 _ColourB;
			float4 _ColourA;
			float4 _NoiseAnimation;
			float4 _DepthSparklesNoiseAnimation;
			float3 _CurveAxis;
			float3 _NoiseTiling1;
			float3 _NoiseTiling2;
			float3 _DepthSparklesNoiseTiling2;
			float3 _DepthSparklesNoiseTiling1;
			float _Metallic;
			float _DepthSparklesNoiseTilingMaskPower;
			float _DepthSparklesDistance;
			float _DepthSparklesNoiseOctaves;
			float _DepthSparklesNoisePower;
			float _CurveShift;
			float _MaskPower1;
			float _MaskPower2RemapMin;
			float _MaskPower2RemapMax;
			float _MaskPower2;
			float _MaskCurvePower;
			float _MaskYRemapMin;
			float _MaskYRemapMax;
			float _MaskYPower;
			float _DepthFade;
			float _SpecularMaskOffset;
			float _Smoothness;
			float _DepthSparklesNoiseScale;
			float _NoiseNormalStrength;
			float _DepthSparklesRemapMin;
			float _CurvePower;
			float _CurveRemapMin;
			float _CurveRemapMax;
			float _Curve;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _NoiseScale;
			float _NoiseTilingMaskPower;
			float _NoiseDistortionScale;
			float _NoiseDistortionOctaves;
			float _NoiseDistortion;
			float _NoiseAnimationFPS;
			float _NoisePower;
			float _NoiseVertexOffset;
			float _CurveVertexNormalPower;
			float _ColourPower;
			float _CurveNormalStrength;
			float _SpecularMaskPower;
			float _ColourtoEmission;
			float _DepthSparklesRemapMax;
			float _AlphaOutput;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _CameraOpaqueTexture;


			float3 PerturbNormal107_g53( float3 surf_pos, float3 surf_norm, float height, float scale )
			{
				// "Bump Mapping Unparametrized Surfaces on the GPU" by Morten S. Mikkelsen
				float3 vSigmaS = ddx( surf_pos );
				float3 vSigmaT = ddy( surf_pos );
				float3 vN = surf_norm;
				float3 vR1 = cross( vSigmaT , vN );
				float3 vR2 = cross( vN , vSigmaS );
				float fDet = dot( vSigmaS , vR1 );
				float dBs = ddx( height );
				float dBt = ddy( height );
				float3 vSurfGrad = scale * 0.05 * sign( fDet ) * ( dBs * vR1 + dBt * vR2 );
				return normalize ( abs( fDet ) * vN - vSurfGrad );
			}
			
			float3 PerturbNormal107_g54( float3 surf_pos, float3 surf_norm, float height, float scale )
			{
				// "Bump Mapping Unparametrized Surfaces on the GPU" by Morten S. Mikkelsen
				float3 vSigmaS = ddx( surf_pos );
				float3 vSigmaT = ddy( surf_pos );
				float3 vN = surf_norm;
				float3 vR1 = cross( vSigmaT , vN );
				float3 vR2 = cross( vN , vSigmaS );
				float fDet = dot( vSigmaS , vR1 );
				float dBs = ddx( height );
				float dBt = ddy( height );
				float3 vSurfGrad = scale * 0.05 * sign( fDet ) * ( dBs * vR1 + dBt * vR2 );
				return normalize ( abs( fDet ) * vN - vSurfGrad );
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord10 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 Curve_Vertex_Offset289 = ( Curve27 * _CurveAxis * _Curve );
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( v.positionOS.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( v.positionOS.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float3 lerpResult238 = lerp( v.normalOS , float3( 1,0,0 ) , pow( Curve27 , _CurveVertexNormalPower ));
				float3 normalizeResult242 = normalize( lerpResult238 );
				float3 Curved_Vertex_Normals202 = normalizeResult242;
				float3 Noise_Vertex_Offset188 = ( ( Noise69 * _NoiseVertexOffset ) * saturate( Curved_Vertex_Normals202 ) );
				float3 Vertex_Offset190 = ( Curve_Vertex_Offset289 + Noise_Vertex_Offset188 );
				
				float3 ase_worldNormal = TransformObjectToWorldNormal(v.normalOS);
				float3 ase_worldTangent = TransformObjectToWorldDir(v.tangentOS.xyz);
				float ase_vertexTangentSign = v.tangentOS.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_worldBitangent = cross( ase_worldNormal, ase_worldTangent ) * ase_vertexTangentSign;
				o.ase_texcoord6.xyz = ase_worldBitangent;
				
				o.ase_texcoord5.xy = v.ase_texcoord.xy;
				o.ase_texcoord7 = v.positionOS;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord5.zw = 0;
				o.ase_texcoord6.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = Vertex_Offset190;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;
				v.tangentOS = v.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );

				float3 normalWS = TransformObjectToWorldNormal( v.normalOS );
				float4 tangentWS = float4( TransformObjectToWorldDir( v.tangentOS.xyz ), v.tangentOS.w );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = vertexInput.positionWS;
				#endif

				o.worldNormal = normalWS;
				o.worldTangent = tangentWS;

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			void frag(	VertexOutput IN
						, out half4 outNormalWS : SV_Target0
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						#ifdef _WRITE_RENDERING_LAYERS
						, out float4 outRenderingLayers : SV_Target1
						#endif
						 )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float3 WorldNormal = IN.worldNormal;
				float4 WorldTangent = IN.worldTangent;

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float3 surf_pos107_g53 = WorldPosition;
				float3 surf_norm107_g53 = WorldNormal;
				float2 texCoord10 = IN.ase_texcoord5.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float height107_g53 = Curve27;
				float scale107_g53 = _CurveNormalStrength;
				float3 localPerturbNormal107_g53 = PerturbNormal107_g53( surf_pos107_g53 , surf_norm107_g53 , height107_g53 , scale107_g53 );
				float3 ase_worldBitangent = IN.ase_texcoord6.xyz;
				float3x3 ase_worldToTangent = float3x3(WorldTangent.xyz,ase_worldBitangent,WorldNormal);
				float3 worldToTangentDir42_g53 = mul( ase_worldToTangent, localPerturbNormal107_g53);
				float3 Curve_Normals144 = worldToTangentDir42_g53;
				float3 surf_pos107_g54 = WorldPosition;
				float3 surf_norm107_g54 = WorldNormal;
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( IN.ase_texcoord7.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( IN.ase_texcoord7.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float height107_g54 = Noise69;
				float scale107_g54 = _NoiseNormalStrength;
				float3 localPerturbNormal107_g54 = PerturbNormal107_g54( surf_pos107_g54 , surf_norm107_g54 , height107_g54 , scale107_g54 );
				float3 worldToTangentDir42_g54 = mul( ase_worldToTangent, localPerturbNormal107_g54);
				float3 Noise_Normals139 = worldToTangentDir42_g54;
				float3 Normals146 = BlendNormal( Curve_Normals144 , Noise_Normals139 );
				
				float2 texCoord75 = IN.ase_texcoord5.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_X99 = sin( ( texCoord75.x * PI ) );
				float smoothstepResult96 = smoothstep( _MaskPower2RemapMin , _MaskPower2RemapMax , pow( Raw_Mask_X99 , _MaskPower2 ));
				float lerpResult89 = lerp( pow( Raw_Mask_X99 , _MaskPower1 ) , smoothstepResult96 , pow( Curve27 , _MaskCurvePower ));
				float Mask_X106 = lerpResult89;
				float2 texCoord101 = IN.ase_texcoord5.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_Y105 = sin( ( texCoord101.y * PI ) );
				float smoothstepResult114 = smoothstep( _MaskYRemapMin , _MaskYRemapMax , pow( Raw_Mask_Y105 , _MaskYPower ));
				float Mask_Y113 = smoothstepResult114;
				float4 ase_screenPosNorm = ScreenPos / ScreenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float screenDepth129 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth129 = saturate( abs( ( screenDepth129 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				float smoothstepResult133 = smoothstep( 0.0 , 1.0 , distanceDepth129);
				float Depth_Fade130 = smoothstepResult133;
				float2 texCoord159 = IN.ase_texcoord5.xy * float2( 1,1 ) + float2( 0,0 );
				float Specular_Mask163 = pow( abs( sin( ( ( texCoord159.x + _SpecularMaskOffset ) * PI ) ) ) , _SpecularMaskPower );
				float temp_output_80_0 = ( Noise69 * Mask_X106 * Mask_Y113 * Depth_Fade130 * Specular_Mask163 );
				float lerpResult275 = lerp( 1.0 , temp_output_80_0 , _AlphaOutput);
				float Alpha_Output277 = lerpResult275;
				

				float3 Normal = Normals146;
				float Alpha = Alpha_Output277;
				float AlphaClipThreshold = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#if defined(LOD_FADE_CROSSFADE)
					LODFadeCrossFade( IN.positionCS );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					outNormalWS = half4(packedNormalWS, 0.0);
				#else
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif
					outNormalWS = half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif

				#ifdef _WRITE_RENDERING_LAYERS
					uint renderingLayers = GetMeshRenderingLayer();
					outRenderingLayers = float4( EncodeMeshRenderingLayer( renderingLayers ), 0, 0, 0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off
			AlphaToMask Off

			HLSLPROGRAM

			
            #define _NORMAL_DROPOFF_TS 1
            #define ASE_FOG 1
            #define ASE_FIXED_TESSELLATION
            #define ASE_TESSELLATION 1
            #pragma require tessellation tessHW
            #pragma hull HullFunction
            #pragma domain DomainFunction
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define ASE_TRANSLUCENCY 1
            #define _EMISSION
            #define _NORMALMAP 1
            #define ASE_SRP_VERSION 140011
            #define REQUIRE_DEPTH_TEXTURE 1


			
            #pragma multi_compile _ DOTS_INSTANCING_ON
		

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

			#define SCENESELECTIONPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			

			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#include "Noise.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _DepthSparklesColour;
			float4 _ColourB;
			float4 _ColourA;
			float4 _NoiseAnimation;
			float4 _DepthSparklesNoiseAnimation;
			float3 _CurveAxis;
			float3 _NoiseTiling1;
			float3 _NoiseTiling2;
			float3 _DepthSparklesNoiseTiling2;
			float3 _DepthSparklesNoiseTiling1;
			float _Metallic;
			float _DepthSparklesNoiseTilingMaskPower;
			float _DepthSparklesDistance;
			float _DepthSparklesNoiseOctaves;
			float _DepthSparklesNoisePower;
			float _CurveShift;
			float _MaskPower1;
			float _MaskPower2RemapMin;
			float _MaskPower2RemapMax;
			float _MaskPower2;
			float _MaskCurvePower;
			float _MaskYRemapMin;
			float _MaskYRemapMax;
			float _MaskYPower;
			float _DepthFade;
			float _SpecularMaskOffset;
			float _Smoothness;
			float _DepthSparklesNoiseScale;
			float _NoiseNormalStrength;
			float _DepthSparklesRemapMin;
			float _CurvePower;
			float _CurveRemapMin;
			float _CurveRemapMax;
			float _Curve;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _NoiseScale;
			float _NoiseTilingMaskPower;
			float _NoiseDistortionScale;
			float _NoiseDistortionOctaves;
			float _NoiseDistortion;
			float _NoiseAnimationFPS;
			float _NoisePower;
			float _NoiseVertexOffset;
			float _CurveVertexNormalPower;
			float _ColourPower;
			float _CurveNormalStrength;
			float _SpecularMaskPower;
			float _ColourtoEmission;
			float _DepthSparklesRemapMax;
			float _AlphaOutput;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _CameraOpaqueTexture;


			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord10 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 Curve_Vertex_Offset289 = ( Curve27 * _CurveAxis * _Curve );
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( v.positionOS.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( v.positionOS.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float3 lerpResult238 = lerp( v.normalOS , float3( 1,0,0 ) , pow( Curve27 , _CurveVertexNormalPower ));
				float3 normalizeResult242 = normalize( lerpResult238 );
				float3 Curved_Vertex_Normals202 = normalizeResult242;
				float3 Noise_Vertex_Offset188 = ( ( Noise69 * _NoiseVertexOffset ) * saturate( Curved_Vertex_Normals202 ) );
				float3 Vertex_Offset190 = ( Curve_Vertex_Offset289 + Noise_Vertex_Offset188 );
				
				float4 ase_clipPos = TransformObjectToHClip((v.positionOS).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord2 = screenPos;
				
				o.ase_texcoord = v.positionOS;
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = Vertex_Offset190;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				o.positionCS = TransformWorldToHClip(positionWS);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float2 texCoord10 = IN.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( IN.ase_texcoord.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( IN.ase_texcoord.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float2 texCoord75 = IN.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_X99 = sin( ( texCoord75.x * PI ) );
				float smoothstepResult96 = smoothstep( _MaskPower2RemapMin , _MaskPower2RemapMax , pow( Raw_Mask_X99 , _MaskPower2 ));
				float lerpResult89 = lerp( pow( Raw_Mask_X99 , _MaskPower1 ) , smoothstepResult96 , pow( Curve27 , _MaskCurvePower ));
				float Mask_X106 = lerpResult89;
				float2 texCoord101 = IN.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_Y105 = sin( ( texCoord101.y * PI ) );
				float smoothstepResult114 = smoothstep( _MaskYRemapMin , _MaskYRemapMax , pow( Raw_Mask_Y105 , _MaskYPower ));
				float Mask_Y113 = smoothstepResult114;
				float4 screenPos = IN.ase_texcoord2;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float screenDepth129 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth129 = saturate( abs( ( screenDepth129 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				float smoothstepResult133 = smoothstep( 0.0 , 1.0 , distanceDepth129);
				float Depth_Fade130 = smoothstepResult133;
				float2 texCoord159 = IN.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float Specular_Mask163 = pow( abs( sin( ( ( texCoord159.x + _SpecularMaskOffset ) * PI ) ) ) , _SpecularMaskPower );
				float temp_output_80_0 = ( Noise69 * Mask_X106 * Mask_Y113 * Depth_Fade130 * Specular_Mask163 );
				float lerpResult275 = lerp( 1.0 , temp_output_80_0 , _AlphaOutput);
				float Alpha_Output277 = lerpResult275;
				

				surfaceDescription.Alpha = Alpha_Output277;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			AlphaToMask Off

			HLSLPROGRAM

			
            #define _NORMAL_DROPOFF_TS 1
            #define ASE_FOG 1
            #define ASE_FIXED_TESSELLATION
            #define ASE_TESSELLATION 1
            #pragma require tessellation tessHW
            #pragma hull HullFunction
            #pragma domain DomainFunction
            #define _SURFACE_TYPE_TRANSPARENT 1
            #define ASE_TRANSLUCENCY 1
            #define _EMISSION
            #define _NORMALMAP 1
            #define ASE_SRP_VERSION 140011
            #define REQUIRE_DEPTH_TEXTURE 1


			
            #pragma multi_compile _ DOTS_INSTANCING_ON
		

			#pragma vertex vert
			#pragma fragment frag

			#if defined(_SPECULAR_SETUP) && defined(_ASE_LIGHTING_SIMPLE)
				#define _SPECULAR_COLOR 1
			#endif

		    #define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"

			
            #include "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRendering.hlsl"
           

			
            #if ASE_SRP_VERSION >=140009
			#include_with_pragmas "Packages/com.unity.render-pipelines.core/ShaderLibrary/FoveatedRenderingKeywords.hlsl"
			#endif
		

			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"

			

			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#include "Noise.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_FRAG_POSITION


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _NoiseDistortionAnimation;
			float4 _NoiseOffset;
			float4 _DepthSparklesColour;
			float4 _ColourB;
			float4 _ColourA;
			float4 _NoiseAnimation;
			float4 _DepthSparklesNoiseAnimation;
			float3 _CurveAxis;
			float3 _NoiseTiling1;
			float3 _NoiseTiling2;
			float3 _DepthSparklesNoiseTiling2;
			float3 _DepthSparklesNoiseTiling1;
			float _Metallic;
			float _DepthSparklesNoiseTilingMaskPower;
			float _DepthSparklesDistance;
			float _DepthSparklesNoiseOctaves;
			float _DepthSparklesNoisePower;
			float _CurveShift;
			float _MaskPower1;
			float _MaskPower2RemapMin;
			float _MaskPower2RemapMax;
			float _MaskPower2;
			float _MaskCurvePower;
			float _MaskYRemapMin;
			float _MaskYRemapMax;
			float _MaskYPower;
			float _DepthFade;
			float _SpecularMaskOffset;
			float _Smoothness;
			float _DepthSparklesNoiseScale;
			float _NoiseNormalStrength;
			float _DepthSparklesRemapMin;
			float _CurvePower;
			float _CurveRemapMin;
			float _CurveRemapMax;
			float _Curve;
			float _NoiseRemapMin;
			float _NoiseRemapMax;
			float _NoiseScale;
			float _NoiseTilingMaskPower;
			float _NoiseDistortionScale;
			float _NoiseDistortionOctaves;
			float _NoiseDistortion;
			float _NoiseAnimationFPS;
			float _NoisePower;
			float _NoiseVertexOffset;
			float _CurveVertexNormalPower;
			float _ColourPower;
			float _CurveNormalStrength;
			float _SpecularMaskPower;
			float _ColourtoEmission;
			float _DepthSparklesRemapMax;
			float _AlphaOutput;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			sampler2D _CameraOpaqueTexture;


			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 texCoord10 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float3 Curve_Vertex_Offset289 = ( Curve27 * _CurveAxis * _Curve );
				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( v.positionOS.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( v.positionOS.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float3 lerpResult238 = lerp( v.normalOS , float3( 1,0,0 ) , pow( Curve27 , _CurveVertexNormalPower ));
				float3 normalizeResult242 = normalize( lerpResult238 );
				float3 Curved_Vertex_Normals202 = normalizeResult242;
				float3 Noise_Vertex_Offset188 = ( ( Noise69 * _NoiseVertexOffset ) * saturate( Curved_Vertex_Normals202 ) );
				float3 Vertex_Offset190 = ( Curve_Vertex_Offset289 + Noise_Vertex_Offset188 );
				
				float4 ase_clipPos = TransformObjectToHClip((v.positionOS).xyz);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord2 = screenPos;
				
				o.ase_texcoord = v.positionOS;
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = Vertex_Offset190;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );
				o.positionCS = TransformWorldToHClip(positionWS);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				float localSimplexNoise_Caustics_float2_g52 = ( 0.0 );
				float2 texCoord10 = IN.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_1_0_g1 = _CurveRemapMin;
				float Curve27 = saturate( ( ( pow( ( 1.0 - ( texCoord10.x - _CurveShift ) ) , _CurvePower ) - temp_output_1_0_g1 ) / ( _CurveRemapMax - temp_output_1_0_g1 ) ) );
				float temp_output_64_0 = pow( Curve27 , _NoiseTilingMaskPower );
				float3 lerpResult62 = lerp( _NoiseTiling1 , _NoiseTiling2 , temp_output_64_0);
				float localSimplexNoise_float2_g49 = ( 0.0 );
				float4 temp_output_10_0_g47 = ( float4( ( IN.ase_texcoord.xyz * _NoiseDistortionScale * lerpResult62 ) , 0.0 ) - ( float4( 0,0,0,0 ) + ( _NoiseDistortionAnimation * _TimeParameters.x ) ) );
				float3 position2_g49 = (temp_output_10_0_g47).xyz;
				float angle2_g49 = (temp_output_10_0_g47).w;
				float octaves2_g49 = _NoiseDistortionOctaves;
				float noise2_g49 = 0.0;
				float3 gradient2_g49 = float3( 0,0,0 );
				SimplexNoise_float( position2_g49 , angle2_g49 , octaves2_g49 , noise2_g49 , gradient2_g49 );
				float3 Noise_Distortion248 = ( gradient2_g49 * _NoiseDistortion );
				float temp_output_6_0_g51 = (float)(int)_NoiseAnimationFPS;
				float temp_output_1_0_g51 = ( _TimeParameters.x * temp_output_6_0_g51 );
				float4 temp_output_10_0_g50 = ( float4( ( IN.ase_texcoord.xyz * _NoiseScale * lerpResult62 ) , 0.0 ) - ( ( _NoiseOffset + float4( Noise_Distortion248 , 0.0 ) ) + ( _NoiseAnimation * ( floor( temp_output_1_0_g51 ) / temp_output_6_0_g51 ) ) ) );
				float3 position2_g52 = (temp_output_10_0_g50).xyz;
				float angle2_g52 = (temp_output_10_0_g50).w;
				float octaves2_g52 = 1.0;
				float gradientStrength2_g52 = 0.01;
				float noise2_g52 = 0.0;
				float3 gradient2_g52 = float3( 0,0,0 );
				SimplexNoise_Caustics_float( position2_g52 , angle2_g52 , octaves2_g52 , gradientStrength2_g52 , noise2_g52 , gradient2_g52 );
				float smoothstepResult72 = smoothstep( _NoiseRemapMin , _NoiseRemapMax , pow( noise2_g52 , _NoisePower ));
				float Noise69 = saturate( smoothstepResult72 );
				float2 texCoord75 = IN.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_X99 = sin( ( texCoord75.x * PI ) );
				float smoothstepResult96 = smoothstep( _MaskPower2RemapMin , _MaskPower2RemapMax , pow( Raw_Mask_X99 , _MaskPower2 ));
				float lerpResult89 = lerp( pow( Raw_Mask_X99 , _MaskPower1 ) , smoothstepResult96 , pow( Curve27 , _MaskCurvePower ));
				float Mask_X106 = lerpResult89;
				float2 texCoord101 = IN.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float Raw_Mask_Y105 = sin( ( texCoord101.y * PI ) );
				float smoothstepResult114 = smoothstep( _MaskYRemapMin , _MaskYRemapMax , pow( Raw_Mask_Y105 , _MaskYPower ));
				float Mask_Y113 = smoothstepResult114;
				float4 screenPos = IN.ase_texcoord2;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float screenDepth129 = LinearEyeDepth(SHADERGRAPH_SAMPLE_SCENE_DEPTH( ase_screenPosNorm.xy ),_ZBufferParams);
				float distanceDepth129 = saturate( abs( ( screenDepth129 - LinearEyeDepth( ase_screenPosNorm.z,_ZBufferParams ) ) / ( _DepthFade ) ) );
				float smoothstepResult133 = smoothstep( 0.0 , 1.0 , distanceDepth129);
				float Depth_Fade130 = smoothstepResult133;
				float2 texCoord159 = IN.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float Specular_Mask163 = pow( abs( sin( ( ( texCoord159.x + _SpecularMaskOffset ) * PI ) ) ) , _SpecularMaskPower );
				float temp_output_80_0 = ( Noise69 * Mask_X106 * Mask_Y113 * Depth_Fade130 * Specular_Mask163 );
				float lerpResult275 = lerp( 1.0 , temp_output_80_0 , _AlphaOutput);
				float Alpha_Output277 = lerpResult275;
				

				surfaceDescription.Alpha = Alpha_Output277;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
						clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}
		
	}
	
	CustomEditor "UnityEditor.ShaderGraphLitGUI"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback Off
}
/*ASEBEGIN
Version=19603
Node;AmplifyShaderEditor.TextureCoordinatesNode;10;-3328,-1280;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;26;-3328,-1152;Inherit;False;Property;_CurveShift;Curve Shift;6;0;Create;True;0;0;0;False;0;False;0;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;25;-2944,-1280;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;22;-2688,-1280;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;15;-2688,-1152;Inherit;False;Property;_CurvePower;Curve Power;9;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;14;-2432,-1280;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;18;-2688,-1536;Inherit;False;Property;_CurveRemapMin;Curve Remap Min;8;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;19;-2688,-1456;Inherit;False;Property;_CurveRemapMax;Curve Remap Max;11;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;21;-2176,-1408;Inherit;False;Inverse Lerp;-1;;1;09cbe79402f023141a4dc1fddd4c9511;0;3;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;16;-1920,-1408;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;27;-1664,-1408;Inherit;False;Curve;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;29;-3584,544;Inherit;False;27;Curve;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;65;-3584,624;Inherit;False;Property;_NoiseTilingMaskPower;Noise Tiling Mask Power;16;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;63;-3584,400;Inherit;False;Property;_NoiseTiling2;Noise Tiling 2;15;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node;40;-3584,256;Inherit;False;Property;_NoiseTiling1;Noise Tiling 1;14;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.PowerNode;64;-3200,512;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;252;-3456,-768;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;255;-3456,-624;Inherit;False;Property;_NoiseDistortionScale;Noise Distortion Scale;38;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector4Node;257;-3456,-128;Inherit;False;Property;_NoiseDistortionAnimation;Noise Distortion Animation;41;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;62;-2944,256;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;254;-2944,-384;Inherit;False;Property;_NoiseDistortionOctaves;Noise Distortion Octaves;42;1;[IntRange];Create;True;0;0;0;False;0;False;1;1;1;8;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;287;-2944,-640;Inherit;False;Scale Tiling Offset Animation;-1;;47;5d06ea95f1a5de046a6557c33d98975a;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;60;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.FunctionNode;247;-2560,-640;Inherit;False;Simplex Noise;-1;;49;2176dbf1d4f695d429b50c644e5b760c;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.RangedFloatNode;259;-2560,-512;Inherit;False;Property;_NoiseDistortion;Noise Distortion;37;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;258;-2176,-640;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;248;-1920,-640;Inherit;False;Noise Distortion;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;67;-3200,640;Inherit;False;Property;_NoiseOffset;Noise Offset;19;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;251;-3200,816;Inherit;False;248;Noise Distortion;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;288;-3456,128;Inherit;False;Property;_NoiseAnimationFPS;Noise Animation FPS;18;0;Create;True;0;0;0;False;0;False;60;8;8;120;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;250;-2816,640;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;39;-2944,128;Inherit;False;Property;_NoiseScale;Noise Scale;13;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;43;-2944,-128;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;41;-2944,384;Inherit;False;Property;_NoiseAnimation;Noise Animation;17;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;128;-2560,400;Inherit;False;Constant;_NoiseGradientStrength;Noise Gradient Strength;26;0;Create;True;0;0;0;False;0;False;0.01;0;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;127;-2560,320;Inherit;False;Constant;_NoiseOctaves;Noise Octaves;26;1;[IntRange];Create;True;0;0;0;False;0;False;1;0;1;8;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;75;-3584,1024;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PiNode;78;-3584,1152;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;286;-2560,128;Inherit;False;Scale Tiling Offset Animation;-1;;50;5d06ea95f1a5de046a6557c33d98975a;1,21,1;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;60;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode;60;-2176,304;Inherit;False;Property;_NoisePower;Noise Power;20;0;Create;True;0;0;0;False;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;126;-2176,128;Inherit;False;Simplex Noise Caustics;-1;;52;98a1798b2570f38468e950c4531ce09b;0;4;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;9;FLOAT;0.01;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.TextureCoordinatesNode;101;-3584,1280;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PiNode;102;-3584,1408;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;77;-3328,1024;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;241;-1792,2032;Inherit;False;Property;_CurveVertexNormalPower;Curve Vertex Normal Power;10;0;Create;True;0;0;0;False;0;False;0.1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;239;-1792,1952;Inherit;False;27;Curve;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;59;-1792,128;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;73;-2176,384;Inherit;False;Property;_NoiseRemapMin;Noise Remap Min;21;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;74;-2176,464;Inherit;False;Property;_NoiseRemapMax;Noise Remap Max;22;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;103;-3328,1280;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;76;-3072,1024;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalVertexDataNode;204;-1792,1792;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode;240;-1408,1952;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;159;-3968,3840;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;165;-3968,3968;Inherit;False;Property;_SpecularMaskOffset;Specular Mask Offset;33;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;72;-1536,128;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;104;-3072,1280;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;99;-2816,1024;Inherit;False;Raw Mask X;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;238;-1152,1792;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;1,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PiNode;160;-3584,3968;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;164;-3584,3840;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;2.68;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;66;-1280,128;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;100;-3584,1664;Inherit;False;99;Raw Mask X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;90;-3584,1824;Inherit;False;Property;_MaskPower2;Mask Power 2;26;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;105;-2816,1280;Inherit;False;Raw Mask Y;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;242;-992,1792;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;161;-3328,3840;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;94;-3248,1760;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;83;-3584,1744;Inherit;False;Property;_MaskPower1;Mask Power 1;25;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;88;-3584,2176;Inherit;False;27;Curve;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;93;-3584,2256;Inherit;False;Property;_MaskCurvePower;Mask Curve Power;27;0;Create;True;0;0;0;False;0;False;0.01;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;97;-3584,1920;Inherit;False;Property;_MaskPower2RemapMin;Mask Power 2 Remap Min;28;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;98;-3584,2000;Inherit;False;Property;_MaskPower2RemapMax;Mask Power 2 Remap Max;29;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;108;-2816,2048;Inherit;False;105;Raw Mask Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;112;-2816,2128;Inherit;False;Property;_MaskYPower;Mask Y Power;30;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;69;-1024,128;Inherit;False;Noise;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;202;-768,1792;Inherit;False;Curved Vertex Normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;131;-3584,2432;Inherit;False;Property;_DepthFade;Depth Fade;36;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SinOpNode;162;-3072,3840;Inherit;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;82;-3248,1664;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;96;-3072,1760;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;92;-3200,2176;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;111;-2560,2048;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;116;-2816,2208;Inherit;False;Property;_MaskYRemapMin;Mask Y Remap Min;31;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;117;-2816,2288;Inherit;False;Property;_MaskYRemapMax;Mask Y Remap Max;32;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;179;-1792,2176;Inherit;False;69;Noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;184;-1792,2256;Inherit;False;Property;_NoiseVertexOffset;Noise Vertex Offset;35;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;203;-1408,2304;Inherit;False;202;Curved Vertex Normals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DepthFade;129;-3200,2432;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;167;-3072,4064;Inherit;False;Property;_SpecularMaskPower;Specular Mask Power;34;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.AbsOpNode;169;-2816,3840;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;89;-2688,1664;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;114;-2400,2048;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;185;-1408,2176;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;246;-1152,2304;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;291;-2176,-1152;Inherit;False;27;Curve;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;292;-2176,-1072;Inherit;False;Property;_CurveAxis;Curve Axis;12;0;Create;True;0;0;0;False;0;False;0,1,0;0,0,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;293;-2176,-928;Inherit;False;Property;_Curve;Curve;7;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;133;-2944,2432;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;166;-2688,3840;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;106;-2432,1664;Inherit;True;Mask X;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;113;-2176,2048;Inherit;True;Mask Y;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;187;-896,2176;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;290;-1920,-1152;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;130;-2688,2432;Inherit;False;Depth Fade;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;163;-2432,3840;Inherit;False;Specular Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;79;-2304,640;Inherit;False;69;Noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;115;-2304,848;Inherit;False;113;Mask Y;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;132;-2304,928;Inherit;False;130;Depth Fade;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;107;-2304,768;Inherit;False;106;Mask X;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;170;-2304,1024;Inherit;False;163;Specular Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;188;-640,2176;Inherit;False;Noise Vertex Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;289;-1664,-1152;Inherit;False;Curve Vertex Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;80;-1920,768;Inherit;False;5;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;276;-1920,944;Inherit;False;Property;_AlphaOutput;Alpha Output;45;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;189;-1792,2432;Inherit;False;289;Curve Vertex Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;180;-1792,2528;Inherit;False;188;Noise Vertex Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;275;-1536,896;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;191;-1408,2432;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;277;-1280,896;Inherit;False;Alpha Output;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;190;-1152,2432;Inherit;False;Vertex Offset;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;261;-3712,-368;Inherit;False;Property;_NoiseDistortionTiling2;Noise Distortion Tiling 2;40;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node;256;-3712,-512;Inherit;False;Property;_NoiseDistortionTiling1;Noise Distortion Tiling 1;39;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp;260;-3328,-512;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;142;-2048,1280;Inherit;False;27;Curve;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;143;-2048,1360;Inherit;False;Property;_CurveNormalStrength;Curve Normal Strength;23;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;141;-1664,1280;Inherit;False;Normal From Height;-1;;53;1942fe2c5f1a1f94881a33d532e4afeb;0;2;20;FLOAT;0;False;110;FLOAT;1;False;2;FLOAT3;40;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;71;-1536,-768;Inherit;False;Property;_ColourA;Colour A;1;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;119;-1536,-576;Inherit;False;Property;_ColourB;Colour B;0;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;118;-1536,-384;Inherit;False;27;Curve;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;124;-1280,-384;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;125;-1536,-304;Inherit;False;Property;_ColourPower;Colour Power;2;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;174;-1024,-384;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;176;-1536,-128;Inherit;False;121;Colour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;177;-1536,-48;Inherit;False;Property;_ColourtoEmission;Colour to Emission;5;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;144;-1280,1280;Inherit;False;Curve Normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;139;-1280,1536;Inherit;False;Noise Normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;136;-1664,1536;Inherit;False;Normal From Height;-1;;54;1942fe2c5f1a1f94881a33d532e4afeb;0;2;20;FLOAT;0;False;110;FLOAT;1;False;2;FLOAT3;40;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;138;-2048,1616;Inherit;False;Property;_NoiseNormalStrength;Noise Normal Strength;24;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;145;-896,1408;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;137;-2048,1536;Inherit;False;69;Noise;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;263;-4224,-128;Inherit;False;_CameraOpaqueTexture;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SamplerNode;266;-4480,128;Inherit;True;Property;_TextureSample0;Texture Sample 0;44;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RegisterLocalVarNode;269;-4096,128;Inherit;False;Camera Opaque Texture Colour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;267;-5120,128;Inherit;False;263;_CameraOpaqueTexture;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;271;-4736,256;Inherit;False;2;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;146;-640,1408;Inherit;False;Normals;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;81;-1536,768;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;273;-4992,384;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;272;-5376,432;Inherit;False;139;Noise Normals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ScreenPosInputsNode;268;-5376,256;Float;False;0;False;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;274;-5376,512;Inherit;False;Property;_CameraOpaqueTextureDistortion;Camera Opaque Texture Distortion;43;0;Create;True;0;0;0;False;0;False;0;0;0;0.1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;262;-4608,-128;Inherit;True;Global;_CameraOpaqueTexture;_CameraOpaqueTexture;44;0;Create;True;0;0;0;True;0;False;None;;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;120;-1024,-768;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;279;-1024,-896;Inherit;False;269;Camera Opaque Texture Colour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;282;-640,-896;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;283;-1024,-640;Inherit;False;81;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;121;-384,-768;Inherit;False;Colour;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;278;-640,-256;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;285;-1024,-128;Inherit;False;269;Camera Opaque Texture Colour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;294;-3584,2688;Inherit;False;Property;_DepthSparklesDistance;Depth Sparkles Distance;47;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;298;-3456,2944;Inherit;False;Scale Tiling Offset Animation;-1;;55;5d06ea95f1a5de046a6557c33d98975a;1,21,0;6;4;FLOAT3;0,0,0;False;7;FLOAT;1;False;8;FLOAT3;1,1,1;False;9;FLOAT4;0,0,0,0;False;19;INT;60;False;12;FLOAT4;0,0,0,0;False;2;FLOAT3;0;FLOAT;15
Node;AmplifyShaderEditor.FunctionNode;300;-3072,2944;Inherit;False;Simplex Noise;-1;;57;2176dbf1d4f695d429b50c644e5b760c;0;3;4;FLOAT3;0,0,0;False;6;FLOAT;0;False;7;FLOAT;1;False;2;FLOAT;0;FLOAT3;3
Node;AmplifyShaderEditor.PosVertexDataNode;302;-3968,2944;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;301;-3456,3120;Inherit;False;Property;_DepthSparklesNoiseOctaves;Depth Sparkles Noise Octaves;53;1;[IntRange];Create;True;0;0;0;False;0;False;1;0;1;4;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;307;-3072,3072;Inherit;False;Property;_DepthSparklesNoisePower;Depth Sparkles Noise Power;54;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;306;-2688,2944;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;308;-2304,2944;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;309;-2688,3072;Inherit;False;Property;_DepthSparklesRemapMin;Depth Sparkles Remap Min;55;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;310;-2688,3152;Inherit;False;Property;_DepthSparklesRemapMax;Depth Sparkles Remap Max;56;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;134;-896,768;Inherit;False;Property;_Metallic;Metallic;3;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;135;-896,848;Inherit;False;Property;_Smoothness;Smoothness;4;0;Create;True;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;140;-896,592;Inherit;False;146;Normals;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;70;-896,928;Inherit;False;277;Alpha Output;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;32;-896,1008;Inherit;False;190;Vertex Offset;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;178;-896,688;Inherit;False;172;Emission;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;172;0,-384;Inherit;False;Emission;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;312;-640,-128;Inherit;False;299;Depth Sparkles;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;311;-256,-384;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;305;-3968,3456;Inherit;False;Property;_DepthSparklesNoiseAnimation;Depth Sparkles Noise Animation;52;0;Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;315;-3968,3200;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;316;-4608,3488;Inherit;False;27;Curve;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;318;-4224,3456;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;314;-4608,3200;Inherit;False;Property;_DepthSparklesNoiseTiling1;Depth Sparkles Noise Tiling 1;49;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.Vector3Node;313;-4608,3344;Inherit;False;Property;_DepthSparklesNoiseTiling2;Depth Sparkles Noise Tiling 2;50;0;Create;True;0;0;0;False;0;False;1,1,1;1,1,1;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;317;-4608,3568;Inherit;False;Property;_DepthSparklesNoiseTilingMaskPower;Depth Sparkles Noise Tiling Mask Power;51;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;321;-1920,2944;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;303;-3968,3088;Inherit;False;Property;_DepthSparklesNoiseScale;Depth Sparkles Noise Scale;48;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;297;-2432,2688;Inherit;False;Depth Sparkles Mask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;299;-1664,2944;Inherit;False;Depth Sparkles;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;320;-2304,3072;Inherit;False;Property;_DepthSparklesColour;Depth Sparkles Colour;46;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;0,0,0,0;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;122;-896,512;Inherit;False;121;Colour;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;322;-2304,3264;Inherit;False;297;Depth Sparkles Mask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DepthFade;295;-3200,2688;Inherit;False;True;True;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;323;-2944,2688;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;296;-2688,2688;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;3;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;True;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;4;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;5;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;5;False;;10;False;;1;1;False;;10;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Universal2D;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;6;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=DepthNormalsOnly;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;7;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;5;False;;10;False;;1;1;False;;10;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalGBuffer;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;8;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;9;0,0;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;-624,640;Float;False;False;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;0;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;1;-384,512;Float;False;True;-1;2;UnityEditor.ShaderGraphLitGUI;0;12;Waterfall;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;21;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;2;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Transparent=RenderType;Queue=Transparent=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;5;False;;10;False;;1;1;False;;10;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalForwardOnly;False;False;0;;0;0;Standard;42;Lighting Model;0;0;Workflow;1;0;Surface;1;638636742893818560;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;638637176949248075;Fragment Normal Space,InvertActionOnDeselection;0;0;Forward Only;1;0;Transmission;0;0;  Transmission Shadow;0.5,False,;0;Translucency;1;638636801313177418;  Translucency Strength;1,False,;0;  Normal Distortion;0.5,False,;0;  Scattering;2,False,;0;  Direct;0.9,False,;0;  Ambient;0.1,False,;0;  Shadow;0.5,False,;0;Cast Shadows;1;0;  Use Shadow Threshold;0;0;Receive Shadows;1;0;Receive SSAO;1;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;1;638636719521391824;  Phong;0;0;  Strength;0.5,False,;0;  Type;0;0;  Tess;16,False,;0;  Min;10,False,;0;  Max;25,False,;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;0;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;False;True;True;False;;False;0
WireConnection;25;0;10;1
WireConnection;25;1;26;0
WireConnection;22;0;25;0
WireConnection;14;0;22;0
WireConnection;14;1;15;0
WireConnection;21;1;18;0
WireConnection;21;2;19;0
WireConnection;21;3;14;0
WireConnection;16;0;21;0
WireConnection;27;0;16;0
WireConnection;64;0;29;0
WireConnection;64;1;65;0
WireConnection;62;0;40;0
WireConnection;62;1;63;0
WireConnection;62;2;64;0
WireConnection;287;4;252;0
WireConnection;287;7;255;0
WireConnection;287;8;62;0
WireConnection;287;9;257;0
WireConnection;247;4;287;0
WireConnection;247;6;287;15
WireConnection;247;7;254;0
WireConnection;258;0;247;3
WireConnection;258;1;259;0
WireConnection;248;0;258;0
WireConnection;250;0;67;0
WireConnection;250;1;251;0
WireConnection;286;4;43;0
WireConnection;286;7;39;0
WireConnection;286;8;62;0
WireConnection;286;9;41;0
WireConnection;286;19;288;0
WireConnection;286;12;250;0
WireConnection;126;4;286;0
WireConnection;126;6;286;15
WireConnection;126;7;127;0
WireConnection;126;9;128;0
WireConnection;77;0;75;1
WireConnection;77;1;78;0
WireConnection;59;0;126;0
WireConnection;59;1;60;0
WireConnection;103;0;101;2
WireConnection;103;1;102;0
WireConnection;76;0;77;0
WireConnection;240;0;239;0
WireConnection;240;1;241;0
WireConnection;72;0;59;0
WireConnection;72;1;73;0
WireConnection;72;2;74;0
WireConnection;104;0;103;0
WireConnection;99;0;76;0
WireConnection;238;0;204;0
WireConnection;238;2;240;0
WireConnection;164;0;159;1
WireConnection;164;1;165;0
WireConnection;66;0;72;0
WireConnection;105;0;104;0
WireConnection;242;0;238;0
WireConnection;161;0;164;0
WireConnection;161;1;160;0
WireConnection;94;0;100;0
WireConnection;94;1;90;0
WireConnection;69;0;66;0
WireConnection;202;0;242;0
WireConnection;162;0;161;0
WireConnection;82;0;100;0
WireConnection;82;1;83;0
WireConnection;96;0;94;0
WireConnection;96;1;97;0
WireConnection;96;2;98;0
WireConnection;92;0;88;0
WireConnection;92;1;93;0
WireConnection;111;0;108;0
WireConnection;111;1;112;0
WireConnection;129;0;131;0
WireConnection;169;0;162;0
WireConnection;89;0;82;0
WireConnection;89;1;96;0
WireConnection;89;2;92;0
WireConnection;114;0;111;0
WireConnection;114;1;116;0
WireConnection;114;2;117;0
WireConnection;185;0;179;0
WireConnection;185;1;184;0
WireConnection;246;0;203;0
WireConnection;133;0;129;0
WireConnection;166;0;169;0
WireConnection;166;1;167;0
WireConnection;106;0;89;0
WireConnection;113;0;114;0
WireConnection;187;0;185;0
WireConnection;187;1;246;0
WireConnection;290;0;291;0
WireConnection;290;1;292;0
WireConnection;290;2;293;0
WireConnection;130;0;133;0
WireConnection;163;0;166;0
WireConnection;188;0;187;0
WireConnection;289;0;290;0
WireConnection;80;0;79;0
WireConnection;80;1;107;0
WireConnection;80;2;115;0
WireConnection;80;3;132;0
WireConnection;80;4;170;0
WireConnection;275;1;80;0
WireConnection;275;2;276;0
WireConnection;191;0;189;0
WireConnection;191;1;180;0
WireConnection;277;0;275;0
WireConnection;190;0;191;0
WireConnection;260;0;256;0
WireConnection;260;1;261;0
WireConnection;260;2;64;0
WireConnection;141;20;142;0
WireConnection;141;110;143;0
WireConnection;124;0;118;0
WireConnection;124;1;125;0
WireConnection;174;1;176;0
WireConnection;174;2;177;0
WireConnection;144;0;141;40
WireConnection;139;0;136;40
WireConnection;136;20;137;0
WireConnection;136;110;138;0
WireConnection;145;0;144;0
WireConnection;145;1;139;0
WireConnection;263;0;262;0
WireConnection;266;0;267;0
WireConnection;266;1;271;0
WireConnection;269;0;266;5
WireConnection;271;0;268;0
WireConnection;271;1;273;0
WireConnection;146;0;145;0
WireConnection;81;0;80;0
WireConnection;273;0;272;0
WireConnection;273;1;274;0
WireConnection;120;0;119;5
WireConnection;120;1;71;5
WireConnection;120;2;124;0
WireConnection;282;0;279;0
WireConnection;282;1;120;0
WireConnection;282;2;283;0
WireConnection;121;0;120;0
WireConnection;278;0;174;0
WireConnection;278;1;285;0
WireConnection;298;4;302;0
WireConnection;298;7;303;0
WireConnection;298;8;315;0
WireConnection;298;9;305;0
WireConnection;300;4;298;0
WireConnection;300;6;298;15
WireConnection;300;7;301;0
WireConnection;306;0;300;0
WireConnection;306;1;307;0
WireConnection;308;0;306;0
WireConnection;308;1;309;0
WireConnection;308;2;310;0
WireConnection;172;0;311;0
WireConnection;311;0;174;0
WireConnection;311;1;312;0
WireConnection;315;0;314;0
WireConnection;315;1;313;0
WireConnection;315;2;318;0
WireConnection;318;0;316;0
WireConnection;318;1;317;0
WireConnection;321;0;308;0
WireConnection;321;1;320;5
WireConnection;321;2;320;4
WireConnection;321;3;322;0
WireConnection;297;0;296;0
WireConnection;299;0;321;0
WireConnection;295;0;294;0
WireConnection;323;0;295;0
WireConnection;296;0;323;0
WireConnection;1;0;122;0
WireConnection;1;1;140;0
WireConnection;1;2;178;0
WireConnection;1;3;134;0
WireConnection;1;4;135;0
WireConnection;1;6;70;0
WireConnection;1;8;32;0
ASEEND*/
//CHKSM=DF13791EE558BB2FF0838368570B41CB4AA1C9C1