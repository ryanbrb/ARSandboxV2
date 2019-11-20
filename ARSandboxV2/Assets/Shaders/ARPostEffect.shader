// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-2846-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31938,y:33237,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:32163,y:33237,cmnt:Refract here,varname:node_8397,prsc:2|IN-4219-UVOUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32523,y:33354,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31938,y:33424,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32339,y:33354,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_SceneDepth,id:1598,x:32122,y:33743,varname:node_1598,prsc:2|UV-2864-OUT;n:type:ShaderForge.SFN_Multiply,id:3988,x:32505,y:33502,varname:node_3988,prsc:2|A-2846-OUT,B-1598-OUT;n:type:ShaderForge.SFN_Add,id:2864,x:31949,y:33770,varname:node_2864,prsc:2|A-3176-UVOUT,B-2234-OUT;n:type:ShaderForge.SFN_DepthBlend,id:2340,x:32122,y:33613,varname:node_2340,prsc:2;n:type:ShaderForge.SFN_ScreenPos,id:3176,x:31630,y:33625,varname:node_3176,prsc:2,sctp:0;n:type:ShaderForge.SFN_PixelSize,id:8434,x:31630,y:33881,varname:node_8434,prsc:2;n:type:ShaderForge.SFN_Vector2,id:2143,x:31630,y:33798,varname:node_2143,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_Multiply,id:2234,x:31799,y:33817,varname:node_2234,prsc:2|A-2143-OUT,B-8434-PXWH;n:type:ShaderForge.SFN_Multiply,id:2846,x:32476,y:33200,varname:node_2846,prsc:2|A-1999-OUT,B-4676-OUT;n:type:ShaderForge.SFN_Slider,id:6757,x:31871,y:33081,ptovrint:False,ptlb:Damage,ptin:_Damage,varname:node_6757,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_HsvToRgb,id:1999,x:32237,y:33081,varname:node_1999,prsc:2|H-44-OUT,S-6757-OUT,V-5390-OUT;n:type:ShaderForge.SFN_Vector1,id:44,x:32028,y:33001,varname:node_44,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5390,x:32028,y:33161,varname:node_5390,prsc:2,v1:1;proporder:4430-6757;pass:END;sub:END;*/

Shader "Shader Forge/ARPostEffect" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Damage ("Damage", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Damage;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float2 node_8397 = i.uv0; // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float3 node_2846 = ((lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac(0.0+float3(0.0,-1.0/3.0,1.0/3.0)))-1),_Damage)*1.0)*node_1672.rgb);
                float3 emissive = node_2846;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
