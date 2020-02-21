// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5044-OUT,clip-8454-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31167,y:33039,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9,c2:0.96,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7897,x:31154,y:32681,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7897,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3909-UVOUT;n:type:ShaderForge.SFN_Multiply,id:4399,x:31371,y:32933,varname:node_4399,prsc:2|A-7897-RGB,B-7241-RGB;n:type:ShaderForge.SFN_TexCoord,id:3909,x:30958,y:32534,varname:node_3909,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ScreenPos,id:9535,x:31699,y:33224,varname:node_9535,prsc:2,sctp:2;n:type:ShaderForge.SFN_ScreenParameters,id:3385,x:32088,y:33294,varname:node_3385,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1117,x:32273,y:33212,varname:node_1117,prsc:2|A-2505-OUT,B-3385-PXH;n:type:ShaderForge.SFN_RemapRange,id:2505,x:31895,y:33216,varname:node_2505,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9535-V;n:type:ShaderForge.SFN_FragmentPosition,id:5929,x:29836,y:33931,varname:node_5929,prsc:2;n:type:ShaderForge.SFN_Vector3,id:6875,x:30949,y:33594,varname:node_6875,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Distance,id:5314,x:31552,y:33486,varname:node_5314,prsc:2|A-8683-OUT,B-6875-OUT;n:type:ShaderForge.SFN_Subtract,id:9754,x:31748,y:33551,varname:node_9754,prsc:2|A-5314-OUT,B-6458-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9080,x:31201,y:33895,ptovrint:False,ptlb:circle_size,ptin:_circle_size,varname:node_9080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Negate,id:3158,x:31919,y:33551,varname:node_3158,prsc:2|IN-9754-OUT;n:type:ShaderForge.SFN_Clamp01,id:7401,x:32091,y:33551,varname:node_7401,prsc:2|IN-3158-OUT;n:type:ShaderForge.SFN_Fresnel,id:9973,x:31180,y:32859,varname:node_9973,prsc:2|EXP-2736-OUT;n:type:ShaderForge.SFN_Vector1,id:2736,x:30994,y:32925,varname:node_2736,prsc:2,v1:2;n:type:ShaderForge.SFN_Time,id:5251,x:29835,y:34227,varname:node_5251,prsc:2;n:type:ShaderForge.SFN_Frac,id:5861,x:30172,y:34250,varname:node_5861,prsc:2|IN-5251-TSL;n:type:ShaderForge.SFN_Subtract,id:6447,x:30688,y:34091,varname:node_6447,prsc:2|A-5929-Y,B-8879-OUT;n:type:ShaderForge.SFN_Negate,id:4274,x:30849,y:34091,varname:node_4274,prsc:2|IN-6447-OUT;n:type:ShaderForge.SFN_Clamp01,id:5980,x:32002,y:34213,varname:node_5980,prsc:2|IN-8694-OUT;n:type:ShaderForge.SFN_Add,id:1299,x:30688,y:34247,varname:node_1299,prsc:2|A-8879-OUT,B-1-OUT;n:type:ShaderForge.SFN_Vector1,id:1,x:30489,y:34368,varname:node_1,prsc:2,v1:-1;n:type:ShaderForge.SFN_Subtract,id:3486,x:30849,y:34236,varname:node_3486,prsc:2|A-5929-Y,B-1299-OUT;n:type:ShaderForge.SFN_Vector1,id:3994,x:31412,y:34330,varname:node_3994,prsc:2,v1:10;n:type:ShaderForge.SFN_Distance,id:1956,x:31048,y:34162,varname:node_1956,prsc:2|A-4274-OUT,B-3486-OUT;n:type:ShaderForge.SFN_Multiply,id:224,x:32214,y:34179,varname:node_224,prsc:2|A-763-OUT,B-5980-OUT;n:type:ShaderForge.SFN_NormalVector,id:763,x:32002,y:34065,prsc:2,pt:False;n:type:ShaderForge.SFN_OneMinus,id:8438,x:31241,y:34191,varname:node_8438,prsc:2|IN-1956-OUT;n:type:ShaderForge.SFN_Multiply,id:9815,x:31633,y:34146,varname:node_9815,prsc:2|A-8129-OUT,B-3994-OUT;n:type:ShaderForge.SFN_Subtract,id:8129,x:31424,y:34191,varname:node_8129,prsc:2|A-8438-OUT,B-7327-OUT;n:type:ShaderForge.SFN_Vector1,id:7327,x:31230,y:34330,varname:node_7327,prsc:2,v1:0.96;n:type:ShaderForge.SFN_Subtract,id:8694,x:31825,y:34213,varname:node_8694,prsc:2|A-9815-OUT,B-6680-OUT;n:type:ShaderForge.SFN_Vector1,id:6680,x:31633,y:34285,varname:node_6680,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Lerp,id:6458,x:31426,y:33785,varname:node_6458,prsc:2|A-5144-OUT,B-6162-OUT,T-9080-OUT;n:type:ShaderForge.SFN_Vector1,id:6162,x:31201,y:33814,varname:node_6162,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:5144,x:31201,y:33754,varname:node_5144,prsc:2,v1:0;n:type:ShaderForge.SFN_ConstantLerp,id:8879,x:30341,y:34250,varname:node_8879,prsc:2,a:-1,b:4|IN-5861-OUT;n:type:ShaderForge.SFN_Subtract,id:4448,x:31748,y:33687,varname:node_4448,prsc:2|A-5314-OUT,B-4333-OUT;n:type:ShaderForge.SFN_Subtract,id:4333,x:31621,y:33866,varname:node_4333,prsc:2|A-6458-OUT,B-9380-OUT;n:type:ShaderForge.SFN_Vector1,id:9380,x:31454,y:33970,varname:node_9380,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Negate,id:3428,x:31919,y:33687,varname:node_3428,prsc:2|IN-4448-OUT;n:type:ShaderForge.SFN_Clamp01,id:3268,x:32091,y:33687,varname:node_3268,prsc:2|IN-3428-OUT;n:type:ShaderForge.SFN_Append,id:1150,x:31212,y:33354,varname:node_1150,prsc:2|A-5929-X,B-9792-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9792,x:31136,y:33609,varname:node_9792,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6875-OUT;n:type:ShaderForge.SFN_Append,id:8683,x:31380,y:33385,varname:node_8683,prsc:2|A-1150-OUT,B-5929-Z;n:type:ShaderForge.SFN_Distance,id:2176,x:30665,y:32849,varname:node_2176,prsc:2|A-6390-OUT,B-5929-Y;n:type:ShaderForge.SFN_Vector1,id:6390,x:30504,y:32838,varname:node_6390,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9163,x:30839,y:32815,varname:node_9163,prsc:2|A-2176-OUT,B-9763-OUT;n:type:ShaderForge.SFN_Vector1,id:9763,x:30707,y:33017,varname:node_9763,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Subtract,id:2897,x:31549,y:32874,varname:node_2897,prsc:2|A-4399-OUT,B-9163-OUT;n:type:ShaderForge.SFN_Noise,id:2536,x:31154,y:32534,varname:node_2536,prsc:2|XY-3909-UVOUT;n:type:ShaderForge.SFN_Multiply,id:922,x:31435,y:32539,varname:node_922,prsc:2|A-2536-OUT,B-8734-OUT;n:type:ShaderForge.SFN_Vector1,id:8734,x:31278,y:32594,varname:node_8734,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Add,id:4322,x:31759,y:32708,varname:node_4322,prsc:2|A-922-OUT,B-2897-OUT;n:type:ShaderForge.SFN_Add,id:1838,x:32731,y:33613,varname:node_1838,prsc:2|A-9796-OUT,B-3268-OUT;n:type:ShaderForge.SFN_Multiply,id:4259,x:32380,y:33528,varname:node_4259,prsc:2|A-2536-OUT,B-7401-OUT;n:type:ShaderForge.SFN_Clamp01,id:8454,x:32894,y:33613,varname:node_8454,prsc:2|IN-1838-OUT;n:type:ShaderForge.SFN_Clamp01,id:9796,x:32542,y:33528,varname:node_9796,prsc:2|IN-4259-OUT;n:type:ShaderForge.SFN_Frac,id:8586,x:30724,y:32071,varname:node_8586,prsc:2|IN-5940-OUT;n:type:ShaderForge.SFN_Multiply,id:8549,x:30941,y:32113,varname:node_8549,prsc:2|A-8586-OUT,B-1647-OUT;n:type:ShaderForge.SFN_Vector1,id:1647,x:30761,y:32284,varname:node_1647,prsc:2,v1:3;n:type:ShaderForge.SFN_Subtract,id:5061,x:31109,y:32163,varname:node_5061,prsc:2|A-8549-OUT,B-4387-OUT;n:type:ShaderForge.SFN_Multiply,id:4387,x:30941,y:32310,varname:node_4387,prsc:2|A-1647-OUT,B-5317-OUT;n:type:ShaderForge.SFN_Vector1,id:5317,x:30761,y:32371,varname:node_5317,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:8352,x:31314,y:32131,varname:node_8352,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:7659,x:31694,y:32281,varname:node_7659,prsc:2,v1:0.95;n:type:ShaderForge.SFN_Subtract,id:9882,x:31694,y:32153,varname:node_9882,prsc:2|A-9446-OUT,B-7659-OUT;n:type:ShaderForge.SFN_Clamp01,id:6108,x:31872,y:32153,varname:node_6108,prsc:2|IN-9882-OUT;n:type:ShaderForge.SFN_Subtract,id:9446,x:31498,y:32153,varname:node_9446,prsc:2|A-8352-OUT,B-1442-OUT;n:type:ShaderForge.SFN_Distance,id:1442,x:31314,y:32192,varname:node_1442,prsc:2|A-5061-OUT,B-5929-Y;n:type:ShaderForge.SFN_Add,id:3730,x:32051,y:32370,varname:node_3730,prsc:2|A-6108-OUT,B-4322-OUT;n:type:ShaderForge.SFN_Clamp01,id:5044,x:32533,y:32811,varname:node_5044,prsc:2|IN-364-OUT;n:type:ShaderForge.SFN_Frac,id:5871,x:30707,y:31644,varname:node_5871,prsc:2|IN-1710-OUT;n:type:ShaderForge.SFN_Multiply,id:4899,x:30924,y:31686,varname:node_4899,prsc:2|A-5871-OUT,B-6737-OUT;n:type:ShaderForge.SFN_Vector1,id:6737,x:30744,y:31857,varname:node_6737,prsc:2,v1:3;n:type:ShaderForge.SFN_Subtract,id:994,x:31092,y:31736,varname:node_994,prsc:2|A-4899-OUT,B-1998-OUT;n:type:ShaderForge.SFN_Multiply,id:1998,x:30924,y:31883,varname:node_1998,prsc:2|A-6737-OUT,B-3496-OUT;n:type:ShaderForge.SFN_Vector1,id:3496,x:30744,y:31944,varname:node_3496,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:2529,x:31297,y:31704,varname:node_2529,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2600,x:31646,y:31854,varname:node_2600,prsc:2,v1:0.45;n:type:ShaderForge.SFN_Subtract,id:6716,x:31646,y:31724,varname:node_6716,prsc:2|A-90-OUT,B-2600-OUT;n:type:ShaderForge.SFN_Clamp01,id:3703,x:32010,y:31724,varname:node_3703,prsc:2|IN-2909-OUT;n:type:ShaderForge.SFN_Subtract,id:90,x:31479,y:31724,varname:node_90,prsc:2|A-2529-OUT,B-1768-OUT;n:type:ShaderForge.SFN_Distance,id:1768,x:31297,y:31765,varname:node_1768,prsc:2|A-994-OUT,B-5929-Y;n:type:ShaderForge.SFN_Add,id:364,x:32263,y:32250,varname:node_364,prsc:2|A-3703-OUT,B-3730-OUT;n:type:ShaderForge.SFN_Multiply,id:1710,x:30526,y:31644,varname:node_1710,prsc:2|A-5251-T,B-498-OUT;n:type:ShaderForge.SFN_Vector1,id:498,x:30349,y:31789,varname:node_498,prsc:2,v1:0.33;n:type:ShaderForge.SFN_Multiply,id:2909,x:31844,y:31724,varname:node_2909,prsc:2|A-6716-OUT,B-6530-OUT;n:type:ShaderForge.SFN_Vector1,id:6530,x:31844,y:31854,varname:node_6530,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Frac,id:5692,x:30852,y:32626,varname:node_5692,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6316,x:31069,y:32668,varname:node_6316,prsc:2|A-5692-OUT,B-6465-OUT;n:type:ShaderForge.SFN_Vector1,id:6465,x:30889,y:32838,varname:node_6465,prsc:2,v1:3;n:type:ShaderForge.SFN_Subtract,id:2630,x:31237,y:32718,varname:node_2630,prsc:2|A-6316-OUT,B-6071-OUT;n:type:ShaderForge.SFN_Multiply,id:6071,x:31069,y:32864,varname:node_6071,prsc:2|A-6465-OUT,B-8408-OUT;n:type:ShaderForge.SFN_Vector1,id:8408,x:30889,y:32925,varname:node_8408,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:3047,x:31442,y:32686,varname:node_3047,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:2073,x:31822,y:32835,varname:node_2073,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Subtract,id:8326,x:31822,y:32708,varname:node_8326,prsc:2|A-7210-OUT,B-2073-OUT;n:type:ShaderForge.SFN_Clamp01,id:7437,x:32000,y:32708,varname:node_7437,prsc:2|IN-8326-OUT;n:type:ShaderForge.SFN_Subtract,id:7210,x:31626,y:32708,varname:node_7210,prsc:2|A-3047-OUT,B-7101-OUT;n:type:ShaderForge.SFN_Distance,id:7101,x:31442,y:32747,varname:node_7101,prsc:2|A-2630-OUT;n:type:ShaderForge.SFN_Add,id:5952,x:32190,y:32708,varname:node_5952,prsc:2|A-7437-OUT;n:type:ShaderForge.SFN_Multiply,id:5940,x:30526,y:32071,varname:node_5940,prsc:2|A-5251-T,B-5617-OUT;n:type:ShaderForge.SFN_Vector1,id:5617,x:30349,y:32216,varname:node_5617,prsc:2,v1:0.25;proporder:7241-7897-9080;pass:END;sub:END;*/

Shader "Shader Forge/ARMapHologram" {
    Properties {
        _Color ("Color", Color) = (0.9,0.96,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _circle_size ("circle_size", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _circle_size;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_2536_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_2536_rnd = 4.789*sin(489.123*(node_2536_skew));
                float node_2536 = frac(node_2536_rnd.x*node_2536_rnd.y*(1+node_2536_skew.x));
                float3 node_6875 = float3(0,0,0);
                float node_5314 = distance(float3(float2(i.posWorld.r,node_6875.g),i.posWorld.b),node_6875);
                float node_6458 = lerp(0.0,2.0,_circle_size);
                clip(saturate((saturate((node_2536*saturate((-1*(node_5314-node_6458)))))+saturate((-1*(node_5314-(node_6458-0.1)))))) - 0.5);
////// Lighting:
////// Emissive:
                float4 node_5251 = _Time;
                float node_6737 = 3.0;
                float node_1647 = 3.0;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = saturate((saturate((((1.0-distance(((frac((node_5251.g*0.33))*node_6737)-(node_6737*0.5)),i.posWorld.g))-0.45)*0.2))+(saturate(((1.0-distance(((frac((node_5251.g*0.25))*node_1647)-(node_1647*0.5)),i.posWorld.g))-0.95))+((node_2536*0.2)+((_MainTex_var.rgb*_Color.rgb)-(distance(0.0,i.posWorld.g)*0.25))))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform float _circle_size;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 node_2536_skew = i.uv0 + 0.2127+i.uv0.x*0.3713*i.uv0.y;
                float2 node_2536_rnd = 4.789*sin(489.123*(node_2536_skew));
                float node_2536 = frac(node_2536_rnd.x*node_2536_rnd.y*(1+node_2536_skew.x));
                float3 node_6875 = float3(0,0,0);
                float node_5314 = distance(float3(float2(i.posWorld.r,node_6875.g),i.posWorld.b),node_6875);
                float node_6458 = lerp(0.0,2.0,_circle_size);
                clip(saturate((saturate((node_2536*saturate((-1*(node_5314-node_6458)))))+saturate((-1*(node_5314-(node_6458-0.1)))))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
