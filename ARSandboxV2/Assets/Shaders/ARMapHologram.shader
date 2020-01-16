// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-4399-OUT,clip-8063-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32137,y:32937,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9,c2:1,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7897,x:32137,y:32717,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7897,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4399,x:32350,y:32797,varname:node_4399,prsc:2|A-7897-RGB,B-7241-RGB;n:type:ShaderForge.SFN_Distance,id:1605,x:32137,y:33305,varname:node_1605,prsc:2|A-3909-UVOUT,B-2359-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4021,x:31758,y:32905,varname:node_4021,prsc:2;n:type:ShaderForge.SFN_Vector2,id:2359,x:31957,y:33386,varname:node_2359,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_TexCoord,id:3909,x:31957,y:33242,varname:node_3909,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_OneMinus,id:1946,x:32297,y:33305,varname:node_1946,prsc:2|IN-1605-OUT;n:type:ShaderForge.SFN_Multiply,id:4706,x:32635,y:33355,varname:node_4706,prsc:2|A-1736-OUT,B-960-OUT;n:type:ShaderForge.SFN_Vector1,id:960,x:32460,y:33440,varname:node_960,prsc:2,v1:100;n:type:ShaderForge.SFN_Subtract,id:1736,x:32460,y:33305,varname:node_1736,prsc:2|A-1946-OUT,B-330-OUT;n:type:ShaderForge.SFN_Vector1,id:330,x:32297,y:33440,varname:node_330,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:5559,x:32221,y:33126,varname:node_5559,prsc:2|A-9535-V,B-9934-OUT;n:type:ShaderForge.SFN_Vector1,id:9934,x:31957,y:33167,varname:node_9934,prsc:2,v1:128;n:type:ShaderForge.SFN_Sin,id:9054,x:32368,y:33057,varname:node_9054,prsc:2|IN-5559-OUT;n:type:ShaderForge.SFN_Round,id:5621,x:32481,y:32902,varname:node_5621,prsc:2|IN-9054-OUT;n:type:ShaderForge.SFN_Sign,id:8015,x:32524,y:33154,varname:node_8015,prsc:2|IN-9054-OUT;n:type:ShaderForge.SFN_ScreenPos,id:9535,x:31915,y:32960,varname:node_9535,prsc:2,sctp:0;n:type:ShaderForge.SFN_Lerp,id:8063,x:32886,y:33253,varname:node_8063,prsc:2|A-6496-OUT,B-9533-OUT,T-4706-OUT;n:type:ShaderForge.SFN_Vector1,id:6496,x:32627,y:33272,varname:node_6496,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp01,id:9533,x:32993,y:32959,varname:node_9533,prsc:2|IN-5621-OUT;proporder:7241-7897;pass:END;sub:END;*/

Shader "Shader Forge/ARMapHologram" {
    Properties {
        _Color ("Color", Color) = (0.9,1,0.7843137,1)
        _MainTex ("MainTex", 2D) = "white" {}
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
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float node_9054 = sin(((sceneUVs * 2 - 1).g*128.0));
                clip(lerp(0.0,saturate(round(node_9054)),(((1.0 - distance(i.uv0,float2(0.5,0.5)))-0.5)*100.0)) - 0.5);
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (_MainTex_var.rgb*_Color.rgb);
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
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float node_9054 = sin(((sceneUVs * 2 - 1).g*128.0));
                clip(lerp(0.0,saturate(round(node_9054)),(((1.0 - distance(i.uv0,float2(0.5,0.5)))-0.5)*100.0)) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
