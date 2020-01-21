// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-5948-OUT,clip-8063-OUT,voffset-224-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31957,y:32946,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9,c2:1,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7897,x:31944,y:32588,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7897,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4399,x:32161,y:32840,varname:node_4399,prsc:2|A-7897-RGB,B-7241-RGB;n:type:ShaderForge.SFN_Distance,id:1605,x:32137,y:33305,varname:node_1605,prsc:2|A-3909-UVOUT,B-2359-OUT;n:type:ShaderForge.SFN_Vector2,id:2359,x:31957,y:33386,varname:node_2359,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_TexCoord,id:3909,x:31957,y:33242,varname:node_3909,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_OneMinus,id:1946,x:32297,y:33305,varname:node_1946,prsc:2|IN-1605-OUT;n:type:ShaderForge.SFN_Multiply,id:4706,x:32635,y:33355,varname:node_4706,prsc:2|A-1736-OUT,B-960-OUT;n:type:ShaderForge.SFN_Vector1,id:960,x:32460,y:33440,varname:node_960,prsc:2,v1:100;n:type:ShaderForge.SFN_Subtract,id:1736,x:32460,y:33305,varname:node_1736,prsc:2|A-1946-OUT,B-330-OUT;n:type:ShaderForge.SFN_Vector1,id:330,x:32297,y:33440,varname:node_330,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:5559,x:32221,y:33126,varname:node_5559,prsc:2|A-9535-V,B-3385-PXH;n:type:ShaderForge.SFN_Vector1,id:9934,x:31957,y:33167,varname:node_9934,prsc:2,v1:128;n:type:ShaderForge.SFN_Sin,id:9054,x:32306,y:32966,varname:node_9054,prsc:2|IN-5559-OUT;n:type:ShaderForge.SFN_Round,id:5621,x:32481,y:32902,varname:node_5621,prsc:2|IN-9054-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9535,x:30889,y:33045,varname:node_9535,prsc:2,sctp:2;n:type:ShaderForge.SFN_Lerp,id:8063,x:32886,y:33253,varname:node_8063,prsc:2|A-6496-OUT,B-4547-OUT,T-7401-OUT;n:type:ShaderForge.SFN_Vector1,id:6496,x:32635,y:33229,varname:node_6496,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp01,id:9533,x:32993,y:32959,varname:node_9533,prsc:2|IN-5621-OUT;n:type:ShaderForge.SFN_ScreenParameters,id:3385,x:31285,y:33210,varname:node_3385,prsc:2;n:type:ShaderForge.SFN_Vector1,id:9576,x:31458,y:33289,varname:node_9576,prsc:2,v1:4;n:type:ShaderForge.SFN_Multiply,id:1117,x:31470,y:33128,varname:node_1117,prsc:2|A-2505-OUT,B-3385-PXH;n:type:ShaderForge.SFN_Fmod,id:7535,x:31676,y:33153,varname:node_7535,prsc:2|A-1117-OUT,B-9576-OUT;n:type:ShaderForge.SFN_Vector1,id:9100,x:31409,y:33451,varname:node_9100,prsc:2,v1:1;n:type:ShaderForge.SFN_RemapRange,id:2505,x:31092,y:33132,varname:node_2505,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-9535-V;n:type:ShaderForge.SFN_Subtract,id:8693,x:31593,y:33417,varname:node_8693,prsc:2|A-7535-OUT,B-9100-OUT;n:type:ShaderForge.SFN_Clamp01,id:8383,x:32783,y:33408,varname:node_8383,prsc:2|IN-4706-OUT;n:type:ShaderForge.SFN_Clamp01,id:4547,x:31753,y:33417,varname:node_4547,prsc:2|IN-8693-OUT;n:type:ShaderForge.SFN_Multiply,id:1286,x:31285,y:32878,varname:node_1286,prsc:2|A-9535-V,B-52-OUT;n:type:ShaderForge.SFN_Vector1,id:52,x:31108,y:33002,varname:node_52,prsc:2,v1:1;n:type:ShaderForge.SFN_FragmentPosition,id:5929,x:31974,y:33581,varname:node_5929,prsc:2;n:type:ShaderForge.SFN_Vector3,id:6875,x:31974,y:33709,varname:node_6875,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Distance,id:5314,x:32154,y:33636,varname:node_5314,prsc:2|A-5929-XYZ,B-6875-OUT;n:type:ShaderForge.SFN_Subtract,id:9754,x:32350,y:33701,varname:node_9754,prsc:2|A-5314-OUT,B-6458-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9080,x:31942,y:34032,ptovrint:False,ptlb:circle_size,ptin:_circle_size,varname:node_9080,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Negate,id:3158,x:32521,y:33701,varname:node_3158,prsc:2|IN-9754-OUT;n:type:ShaderForge.SFN_Clamp01,id:7401,x:32693,y:33701,varname:node_7401,prsc:2|IN-3158-OUT;n:type:ShaderForge.SFN_Fresnel,id:9973,x:31970,y:32766,varname:node_9973,prsc:2|EXP-2736-OUT;n:type:ShaderForge.SFN_Vector1,id:2736,x:31784,y:32832,varname:node_2736,prsc:2,v1:2;n:type:ShaderForge.SFN_Lerp,id:5948,x:32358,y:32781,varname:node_5948,prsc:2|A-7897-RGB,B-4399-OUT,T-9973-OUT;n:type:ShaderForge.SFN_Time,id:5251,x:30484,y:33446,varname:node_5251,prsc:2;n:type:ShaderForge.SFN_Frac,id:5861,x:30699,y:33456,varname:node_5861,prsc:2|IN-5251-T;n:type:ShaderForge.SFN_Frac,id:3633,x:31646,y:33572,varname:node_3633,prsc:2|IN-3909-V;n:type:ShaderForge.SFN_Subtract,id:6447,x:30982,y:33443,varname:node_6447,prsc:2|A-3909-V,B-5861-OUT;n:type:ShaderForge.SFN_Negate,id:4274,x:31147,y:33468,varname:node_4274,prsc:2|IN-6447-OUT;n:type:ShaderForge.SFN_Clamp01,id:5980,x:31493,y:33809,varname:node_5980,prsc:2|IN-8694-OUT;n:type:ShaderForge.SFN_Add,id:1299,x:30817,y:33630,varname:node_1299,prsc:2|A-5861-OUT,B-1-OUT;n:type:ShaderForge.SFN_Vector1,id:1,x:30599,y:33652,varname:node_1,prsc:2,v1:0;n:type:ShaderForge.SFN_Subtract,id:3486,x:30982,y:33613,varname:node_3486,prsc:2|A-3909-V,B-1299-OUT;n:type:ShaderForge.SFN_Negate,id:9376,x:31323,y:33598,varname:node_9376,prsc:2|IN-3486-OUT;n:type:ShaderForge.SFN_Vector1,id:3994,x:31219,y:34183,varname:node_3994,prsc:2,v1:10;n:type:ShaderForge.SFN_Distance,id:1956,x:31299,y:33809,varname:node_1956,prsc:2|A-4274-OUT,B-3486-OUT;n:type:ShaderForge.SFN_Multiply,id:224,x:31838,y:33833,varname:node_224,prsc:2|A-763-OUT,B-5980-OUT;n:type:ShaderForge.SFN_NormalVector,id:763,x:31514,y:33664,prsc:2,pt:False;n:type:ShaderForge.SFN_OneMinus,id:8438,x:31029,y:33930,varname:node_8438,prsc:2|IN-1956-OUT;n:type:ShaderForge.SFN_Subtract,id:6533,x:30792,y:33776,varname:node_6533,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9815,x:31427,y:34093,varname:node_9815,prsc:2|A-8129-OUT,B-3994-OUT;n:type:ShaderForge.SFN_Subtract,id:8129,x:31238,y:34013,varname:node_8129,prsc:2|A-8438-OUT,B-7327-OUT;n:type:ShaderForge.SFN_Vector1,id:7327,x:31016,y:34131,varname:node_7327,prsc:2,v1:0.96;n:type:ShaderForge.SFN_Subtract,id:8694,x:31687,y:33963,varname:node_8694,prsc:2|A-9815-OUT,B-6680-OUT;n:type:ShaderForge.SFN_Vector1,id:6680,x:31579,y:34154,varname:node_6680,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Lerp,id:6458,x:32209,y:33904,varname:node_6458,prsc:2|A-5144-OUT,B-6162-OUT,T-9080-OUT;n:type:ShaderForge.SFN_Vector1,id:6162,x:31974,y:33951,varname:node_6162,prsc:2,v1:8;n:type:ShaderForge.SFN_Vector1,id:5144,x:31974,y:33867,varname:node_5144,prsc:2,v1:0;proporder:7241-7897-9080;pass:END;sub:END;*/

Shader "Shader Forge/ARMapHologram" {
    Properties {
        _Color ("Color", Color) = (0.9,1,0.7843137,1)
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
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_5251 = _Time;
                float node_5861 = frac(node_5251.g);
                float node_3486 = (o.uv0.g-(node_5861+0.0));
                v.vertex.xyz += (v.normal*saturate(((((1.0 - distance((-1*(o.uv0.g-node_5861)),node_3486))-0.96)*10.0)-0.2)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                clip(lerp(0.0,saturate((fmod(((sceneUVs.g*0.5+0.5)*_ScreenParams.g),4.0)-1.0)),saturate((-1*(distance(i.posWorld.rgb,float3(0,0,0))-lerp(0.0,8.0,_circle_size))))) - 0.5);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = lerp(_MainTex_var.rgb,(_MainTex_var.rgb*_Color.rgb),pow(1.0-max(0,dot(normalDirection, viewDirection)),2.0));
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
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_5251 = _Time;
                float node_5861 = frac(node_5251.g);
                float node_3486 = (o.uv0.g-(node_5861+0.0));
                v.vertex.xyz += (v.normal*saturate(((((1.0 - distance((-1*(o.uv0.g-node_5861)),node_3486))-0.96)*10.0)-0.2)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                clip(lerp(0.0,saturate((fmod(((sceneUVs.g*0.5+0.5)*_ScreenParams.g),4.0)-1.0)),saturate((-1*(distance(i.posWorld.rgb,float3(0,0,0))-lerp(0.0,8.0,_circle_size))))) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
