// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-7897-RGB,clip-7401-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31957,y:32946,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9,c2:1,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7897,x:31944,y:32588,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7897,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4399,x:32161,y:32840,varname:node_4399,prsc:2|A-7897-RGB;n:type:ShaderForge.SFN_TexCoord,id:3909,x:30060,y:33964,varname:node_3909,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ScreenPos,id:9535,x:30889,y:33045,varname:node_9535,prsc:2,sctp:2;n:type:ShaderForge.SFN_Lerp,id:8063,x:32278,y:33153,varname:node_8063,prsc:2|A-6496-OUT,B-4547-OUT,T-7401-OUT;n:type:ShaderForge.SFN_Vector1,id:6496,x:32092,y:33084,varname:node_6496,prsc:2,v1:0;n:type:ShaderForge.SFN_ScreenParameters,id:3385,x:31285,y:33210,varname:node_3385,prsc:2;n:type:ShaderForge.SFN_Vector1,id:9576,x:31458,y:33289,varname:node_9576,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:1117,x:31470,y:33128,varname:node_1117,prsc:2|A-2505-OUT,B-3385-PXH;n:type:ShaderForge.SFN_Fmod,id:7535,x:31676,y:33153,varname:node_7535,prsc:2|A-1117-OUT,B-9576-OUT;n:type:ShaderForge.SFN_Vector1,id:9100,x:31753,y:33279,varname:node_9100,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:2505,x:31092,y:33132,varname:node_2505,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9535-V;n:type:ShaderForge.SFN_Subtract,id:8693,x:31910,y:33153,varname:node_8693,prsc:2|A-7535-OUT,B-9100-OUT;n:type:ShaderForge.SFN_Clamp01,id:4547,x:32082,y:33153,varname:node_4547,prsc:2|IN-8693-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5929,x:30935,y:33393,varname:node_5929,prsc:2;n:type:ShaderForge.SFN_Vector3,id:6875,x:31212,y:33589,varname:node_6875,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Distance,id:5314,x:31552,y:33486,varname:node_5314,prsc:2|A-8683-OUT,B-6875-OUT;n:type:ShaderForge.SFN_Subtract,id:9754,x:31748,y:33551,varname:node_9754,prsc:2|A-5314-OUT,B-6458-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9080,x:31201,y:33895,ptovrint:False,ptlb:circle_size,ptin:_circle_size,varname:node_9080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.8;n:type:ShaderForge.SFN_Negate,id:3158,x:31919,y:33551,varname:node_3158,prsc:2|IN-9754-OUT;n:type:ShaderForge.SFN_Clamp01,id:7401,x:32091,y:33551,varname:node_7401,prsc:2|IN-3158-OUT;n:type:ShaderForge.SFN_Fresnel,id:9973,x:31970,y:32766,varname:node_9973,prsc:2|EXP-2736-OUT;n:type:ShaderForge.SFN_Vector1,id:2736,x:31784,y:32832,varname:node_2736,prsc:2,v1:2;n:type:ShaderForge.SFN_Lerp,id:5948,x:32358,y:32781,varname:node_5948,prsc:2|A-4399-OUT,B-7897-RGB,T-3268-OUT;n:type:ShaderForge.SFN_Time,id:5251,x:29835,y:34227,varname:node_5251,prsc:2;n:type:ShaderForge.SFN_Frac,id:5861,x:30172,y:34250,varname:node_5861,prsc:2|IN-5251-TSL;n:type:ShaderForge.SFN_Subtract,id:6447,x:30688,y:34091,varname:node_6447,prsc:2|A-5929-Y,B-8879-OUT;n:type:ShaderForge.SFN_Negate,id:4274,x:30849,y:34091,varname:node_4274,prsc:2|IN-6447-OUT;n:type:ShaderForge.SFN_Clamp01,id:5980,x:32002,y:34213,varname:node_5980,prsc:2|IN-8694-OUT;n:type:ShaderForge.SFN_Add,id:1299,x:30688,y:34247,varname:node_1299,prsc:2|A-8879-OUT,B-1-OUT;n:type:ShaderForge.SFN_Vector1,id:1,x:30489,y:34368,varname:node_1,prsc:2,v1:-1;n:type:ShaderForge.SFN_Subtract,id:3486,x:30849,y:34236,varname:node_3486,prsc:2|A-5929-Y,B-1299-OUT;n:type:ShaderForge.SFN_Vector1,id:3994,x:31412,y:34330,varname:node_3994,prsc:2,v1:10;n:type:ShaderForge.SFN_Distance,id:1956,x:31048,y:34162,varname:node_1956,prsc:2|A-4274-OUT,B-3486-OUT;n:type:ShaderForge.SFN_Multiply,id:224,x:32214,y:34179,varname:node_224,prsc:2|A-763-OUT,B-5980-OUT;n:type:ShaderForge.SFN_NormalVector,id:763,x:32002,y:34065,prsc:2,pt:False;n:type:ShaderForge.SFN_OneMinus,id:8438,x:31241,y:34191,varname:node_8438,prsc:2|IN-1956-OUT;n:type:ShaderForge.SFN_Multiply,id:9815,x:31633,y:34146,varname:node_9815,prsc:2|A-8129-OUT,B-3994-OUT;n:type:ShaderForge.SFN_Subtract,id:8129,x:31424,y:34191,varname:node_8129,prsc:2|A-8438-OUT,B-7327-OUT;n:type:ShaderForge.SFN_Vector1,id:7327,x:31230,y:34330,varname:node_7327,prsc:2,v1:0.96;n:type:ShaderForge.SFN_Subtract,id:8694,x:31825,y:34213,varname:node_8694,prsc:2|A-9815-OUT,B-6680-OUT;n:type:ShaderForge.SFN_Vector1,id:6680,x:31633,y:34285,varname:node_6680,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Lerp,id:6458,x:31426,y:33785,varname:node_6458,prsc:2|A-5144-OUT,B-6162-OUT,T-9080-OUT;n:type:ShaderForge.SFN_Vector1,id:6162,x:31201,y:33814,varname:node_6162,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:5144,x:31201,y:33754,varname:node_5144,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3065,x:32670,y:33221,varname:node_3065,prsc:2,v1:4;n:type:ShaderForge.SFN_ConstantLerp,id:8879,x:30367,y:34527,varname:node_8879,prsc:2,a:-1,b:4|IN-5861-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:7965,x:30266,y:33994,varname:node_7965,prsc:2,a:-1,b:1|IN-3909-V;n:type:ShaderForge.SFN_Subtract,id:9424,x:30080,y:33628,varname:node_9424,prsc:2|A-5929-Y,B-32-OUT;n:type:ShaderForge.SFN_Vector1,id:32,x:30060,y:33772,varname:node_32,prsc:2,v1:1;n:type:ShaderForge.SFN_Max,id:9238,x:30378,y:33870,varname:node_9238,prsc:2|A-5929-Y,B-5929-Y;n:type:ShaderForge.SFN_Min,id:3661,x:30378,y:33755,varname:node_3661,prsc:2|A-5929-Y,B-5929-Y;n:type:ShaderForge.SFN_Multiply,id:9113,x:29998,y:34326,varname:node_9113,prsc:2|A-5251-T,B-2293-OUT;n:type:ShaderForge.SFN_Vector1,id:2293,x:29835,y:34395,varname:node_2293,prsc:2,v1:0.25;n:type:ShaderForge.SFN_Lerp,id:9901,x:30367,y:34400,varname:node_9901,prsc:2|A-8775-OUT,B-9238-OUT,T-5861-OUT;n:type:ShaderForge.SFN_Vector1,id:8775,x:30165,y:34453,varname:node_8775,prsc:2,v1:-1;n:type:ShaderForge.SFN_Subtract,id:4448,x:31748,y:33687,varname:node_4448,prsc:2|A-5314-OUT,B-4333-OUT;n:type:ShaderForge.SFN_Subtract,id:4333,x:31621,y:33866,varname:node_4333,prsc:2|A-6458-OUT,B-9380-OUT;n:type:ShaderForge.SFN_Vector1,id:9380,x:31454,y:33970,varname:node_9380,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Negate,id:3428,x:31919,y:33687,varname:node_3428,prsc:2|IN-4448-OUT;n:type:ShaderForge.SFN_Clamp01,id:3268,x:32091,y:33687,varname:node_3268,prsc:2|IN-3428-OUT;n:type:ShaderForge.SFN_Lerp,id:3765,x:32458,y:33285,varname:node_3765,prsc:2|A-8063-OUT,B-7888-OUT,T-3268-OUT;n:type:ShaderForge.SFN_Vector1,id:7888,x:32292,y:33307,varname:node_7888,prsc:2,v1:1;n:type:ShaderForge.SFN_Append,id:1150,x:31212,y:33354,varname:node_1150,prsc:2|A-5929-X,B-9792-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9792,x:31380,y:33609,varname:node_9792,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-6875-OUT;n:type:ShaderForge.SFN_Append,id:8683,x:31380,y:33385,varname:node_8683,prsc:2|A-1150-OUT,B-5929-Z;proporder:7241-7897-9080;pass:END;sub:END;*/

Shader "Shader Forge/ARMapHologram" {
    Properties {
        _Color ("Color", Color) = (0.9,1,0.7843137,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _circle_size ("circle_size", Float ) = 0.8
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
                float3 node_6875 = float3(0,0,0);
                float node_5314 = distance(float3(float2(i.posWorld.r,node_6875.g),i.posWorld.b),node_6875);
                float node_6458 = lerp(0.0,2.0,_circle_size);
                float node_7401 = saturate((-1*(node_5314-node_6458)));
                clip(node_7401 - 0.5);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = _MainTex_var.rgb;
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
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 node_6875 = float3(0,0,0);
                float node_5314 = distance(float3(float2(i.posWorld.r,node_6875.g),i.posWorld.b),node_6875);
                float node_6458 = lerp(0.0,2.0,_circle_size);
                float node_7401 = saturate((-1*(node_5314-node_6458)));
                clip(node_7401 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
