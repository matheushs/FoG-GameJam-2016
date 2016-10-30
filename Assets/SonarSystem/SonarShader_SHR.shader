// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.29 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.29;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:33712,y:32812,varname:node_3138,prsc:2|emission-2624-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32137,y:32341,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:2302,x:32137,y:32530,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2302,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:259,x:32415,y:32474,varname:node_259,prsc:2|A-7241-RGB,B-2302-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4094,x:30288,y:33355,ptovrint:False,ptlb:WaveGradient,ptin:_WaveGradient,varname:node_4094,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ca2c11d7ad4f1b7469cf5fb1c5363ffc,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector4Property,id:6256,x:30615,y:32080,ptovrint:False,ptlb:WavePosTime0,ptin:_WavePosTime0,varname:node_6256,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_FragmentPosition,id:1847,x:30288,y:33596,varname:node_1847,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8827,x:32807,y:33020,varname:node_8827,prsc:2|A-259-OUT,B-5476-OUT;n:type:ShaderForge.SFN_Code,id:2427,x:31206,y:32183,varname:node_2427,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwA7AAoACgBmAGwAbwBhAHQAIABtAGEAcAAgAD0AIAAoAGwAZQBuAGcAdABoACAAKABXAG8AcgBsAGQAUABvAHMAaQB0AGkAbwBuACAALQAgAFAAbwBzAGkAdABpAG8AbgApAC8AbAApAC0AKAB0AC8AbAAtADEAKQA7AAoAZgBsAG8AYQB0ACAAbQBhAHMAawAgAD0AIABzAHQAZQBwACAAKAAwAC4AMAAsACAAbQBhAHAAKQAgACoAIABzAHQAZQBwACAAKABtAGEAcAAsACAAMQAuADAAKQA7ACAACgB1AHYAcwAuAHgAIAA9ACAAMQAuADAALQBtAGEAcAA7AAoAdQB2AHMALgB5ACAAPQAgADAALgAwADsACgByAGUAdAB1AHIAbgAgAHQAZQB4ADIARAAoAFIAYQBtAHAALAAgAHUAdgBzACkAIAAqACAAbQBhAHMAawAgACoAIABGADsA,output:0,fname:Bla0,width:247,height:168,input:2,input:2,input:0,input:0,input:12,input:0,input_1_label:Position,input_2_label:WorldPosition,input_3_label:t,input_4_label:l,input_5_label:Ramp,input_6_label:F|A-6256-XYZ,B-1847-XYZ,C-6256-W,D-2636-OUT,E-4094-TEX,F-4017-OUT;n:type:ShaderForge.SFN_Clamp01,id:5476,x:32394,y:33156,varname:node_5476,prsc:2|IN-6123-OUT;n:type:ShaderForge.SFN_Add,id:5345,x:31974,y:33025,varname:node_5345,prsc:2|A-2427-OUT,B-9891-OUT,C-6980-OUT,D-6672-OUT;n:type:ShaderForge.SFN_Code,id:9891,x:31207,y:32500,varname:node_9891,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwA7AAoACgBmAGwAbwBhAHQAIABtAGEAcAAgAD0AIAAoAGwAZQBuAGcAdABoACAAKABXAG8AcgBsAGQAUABvAHMAaQB0AGkAbwBuACAALQAgAFAAbwBzAGkAdABpAG8AbgApAC8AbAApAC0AKAB0AC8AbAAtADEAKQA7AAoAZgBsAG8AYQB0ACAAbQBhAHMAawAgAD0AIABzAHQAZQBwACAAKAAwAC4AMAAsACAAbQBhAHAAKQAgACoAIABzAHQAZQBwACAAKABtAGEAcAAsACAAMQAuADAAKQA7ACAACgB1AHYAcwAuAHgAIAA9ACAAMQAuADAALQBtAGEAcAA7AAoAdQB2AHMALgB5ACAAPQAgADAALgAwADsACgByAGUAdAB1AHIAbgAgAHQAZQB4ADIARAAoAFIAYQBtAHAALAAgAHUAdgBzACkAIAAqACAAbQBhAHMAawAgACoAIABGADsA,output:0,fname:Bla1,width:247,height:168,input:2,input:2,input:0,input:0,input:12,input:0,input_1_label:Position,input_2_label:WorldPosition,input_3_label:t,input_4_label:l,input_5_label:Ramp,input_6_label:F|A-8597-XYZ,B-1847-XYZ,C-8597-W,D-5269-OUT,E-4094-TEX,F-4174-OUT;n:type:ShaderForge.SFN_Code,id:6980,x:31206,y:32842,varname:node_6980,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwA7AAoACgBmAGwAbwBhAHQAIABtAGEAcAAgAD0AIAAoAGwAZQBuAGcAdABoACAAKABXAG8AcgBsAGQAUABvAHMAaQB0AGkAbwBuACAALQAgAFAAbwBzAGkAdABpAG8AbgApAC8AbAApAC0AKAB0AC8AbAAtADEAKQA7AAoAZgBsAG8AYQB0ACAAbQBhAHMAawAgAD0AIABzAHQAZQBwACAAKAAwAC4AMAAsACAAbQBhAHAAKQAgACoAIABzAHQAZQBwACAAKABtAGEAcAAsACAAMQAuADAAKQA7ACAACgB1AHYAcwAuAHgAIAA9ACAAMQAuADAALQBtAGEAcAA7AAoAdQB2AHMALgB5ACAAPQAgADAALgAwADsACgByAGUAdAB1AHIAbgAgAHQAZQB4ADIARAAoAFIAYQBtAHAALAAgAHUAdgBzACkAIAAqACAAbQBhAHMAawAgACoAIABGADsA,output:0,fname:Bla2,width:247,height:168,input:2,input:2,input:0,input:0,input:12,input:0,input_1_label:Position,input_2_label:WorldPosition,input_3_label:t,input_4_label:l,input_5_label:Ramp,input_6_label:F|A-4801-XYZ,B-1847-XYZ,C-4801-W,D-8258-OUT,E-4094-TEX,F-3569-OUT;n:type:ShaderForge.SFN_Code,id:6672,x:31203,y:33228,varname:node_6672,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwA7AAoACgBmAGwAbwBhAHQAIABtAGEAcAAgAD0AIAAoAGwAZQBuAGcAdABoACAAKABXAG8AcgBsAGQAUABvAHMAaQB0AGkAbwBuACAALQAgAFAAbwBzAGkAdABpAG8AbgApAC8AbAApAC0AKAB0AC8AbAAtADEAKQA7AAoAZgBsAG8AYQB0ACAAbQBhAHMAawAgAD0AIABzAHQAZQBwACAAKAAwAC4AMAAsACAAbQBhAHAAKQAgACoAIABzAHQAZQBwACAAKABtAGEAcAAsACAAMQAuADAAKQA7ACAACgB1AHYAcwAuAHgAIAA9ACAAMQAuADAALQBtAGEAcAA7AAoAdQB2AHMALgB5ACAAPQAgADAALgAwADsACgByAGUAdAB1AHIAbgAgAHQAZQB4ADIARAAoAFIAYQBtAHAALAAgAHUAdgBzACkAIAAqACAAbQBhAHMAawAgACoAIABGADsA,output:0,fname:Bla3,width:247,height:168,input:2,input:2,input:0,input:0,input:12,input:0,input_1_label:Position,input_2_label:WorldPosition,input_3_label:t,input_4_label:l,input_5_label:Ramp,input_6_label:F|A-168-XYZ,B-1847-XYZ,C-168-W,D-7033-OUT,E-4094-TEX,F-4784-OUT;n:type:ShaderForge.SFN_Code,id:4878,x:31192,y:33647,varname:node_4878,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwA7AAoACgBmAGwAbwBhAHQAIABtAGEAcAAgAD0AIAAoAGwAZQBuAGcAdABoACAAKABXAG8AcgBsAGQAUABvAHMAaQB0AGkAbwBuACAALQAgAFAAbwBzAGkAdABpAG8AbgApAC8AbAApAC0AKAB0AC8AbAAtADEAKQA7AAoAZgBsAG8AYQB0ACAAbQBhAHMAawAgAD0AIABzAHQAZQBwACAAKAAwAC4AMAAsACAAbQBhAHAAKQAgACoAIABzAHQAZQBwACAAKABtAGEAcAAsACAAMQAuADAAKQA7ACAACgB1AHYAcwAuAHgAIAA9ACAAMQAuADAALQBtAGEAcAA7AAoAdQB2AHMALgB5ACAAPQAgADAALgAwADsACgByAGUAdAB1AHIAbgAgAHQAZQB4ADIARAAoAFIAYQBtAHAALAAgAHUAdgBzACkAIAAqACAAbQBhAHMAawAgACoAIABGADsA,output:0,fname:Bla4,width:247,height:168,input:2,input:2,input:0,input:0,input:12,input:0,input_1_label:Position,input_2_label:WorldPosition,input_3_label:t,input_4_label:l,input_5_label:Ramp,input_6_label:F|A-7130-XYZ,B-1847-XYZ,C-7130-W,D-8085-OUT,E-4094-TEX,F-2826-OUT;n:type:ShaderForge.SFN_Code,id:7059,x:31203,y:34067,varname:node_7059,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwA7AAoACgBmAGwAbwBhAHQAIABtAGEAcAAgAD0AIAAoAGwAZQBuAGcAdABoACAAKABXAG8AcgBsAGQAUABvAHMAaQB0AGkAbwBuACAALQAgAFAAbwBzAGkAdABpAG8AbgApAC8AbAApAC0AKAB0AC8AbAAtADEAKQA7AAoAZgBsAG8AYQB0ACAAbQBhAHMAawAgAD0AIABzAHQAZQBwACAAKAAwAC4AMAAsACAAbQBhAHAAKQAgACoAIABzAHQAZQBwACAAKABtAGEAcAAsACAAMQAuADAAKQA7ACAACgB1AHYAcwAuAHgAIAA9ACAAMQAuADAALQBtAGEAcAA7AAoAdQB2AHMALgB5ACAAPQAgADAALgAwADsACgByAGUAdAB1AHIAbgAgAHQAZQB4ADIARAAoAFIAYQBtAHAALAAgAHUAdgBzACkAIAAqACAAbQBhAHMAawAgACoAIABGADsA,output:0,fname:Bla5,width:247,height:168,input:2,input:2,input:0,input:0,input:12,input:0,input_1_label:Position,input_2_label:WorldPosition,input_3_label:t,input_4_label:l,input_5_label:Ramp,input_6_label:F|A-9920-XYZ,B-1847-XYZ,C-9920-W,D-799-OUT,E-4094-TEX,F-4327-OUT;n:type:ShaderForge.SFN_Code,id:7662,x:31201,y:34487,varname:node_7662,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwA7AAoACgBmAGwAbwBhAHQAIABtAGEAcAAgAD0AIAAoAGwAZQBuAGcAdABoACAAKABXAG8AcgBsAGQAUABvAHMAaQB0AGkAbwBuACAALQAgAFAAbwBzAGkAdABpAG8AbgApAC8AbAApAC0AKAB0AC8AbAAtADEAKQA7AAoAZgBsAG8AYQB0ACAAbQBhAHMAawAgAD0AIABzAHQAZQBwACAAKAAwAC4AMAAsACAAbQBhAHAAKQAgACoAIABzAHQAZQBwACAAKABtAGEAcAAsACAAMQAuADAAKQA7ACAACgB1AHYAcwAuAHgAIAA9ACAAMQAuADAALQBtAGEAcAA7AAoAdQB2AHMALgB5ACAAPQAgADAALgAwADsACgByAGUAdAB1AHIAbgAgAHQAZQB4ADIARAAoAFIAYQBtAHAALAAgAHUAdgBzACkAIAAqACAAbQBhAHMAawAgACoAIABGADsA,output:0,fname:Bla6,width:247,height:168,input:2,input:2,input:0,input:0,input:12,input:0,input_1_label:Position,input_2_label:WorldPosition,input_3_label:t,input_4_label:l,input_5_label:Ramp,input_6_label:F|A-8227-XYZ,B-1847-XYZ,C-8227-W,D-1872-OUT,E-4094-TEX,F-8096-OUT;n:type:ShaderForge.SFN_Code,id:4383,x:31203,y:34910,varname:node_4383,prsc:2,code:ZgBsAG8AYQB0ADIAIAB1AHYAcwA7AAoACgBmAGwAbwBhAHQAIABtAGEAcAAgAD0AIAAoAGwAZQBuAGcAdABoACAAKABXAG8AcgBsAGQAUABvAHMAaQB0AGkAbwBuACAALQAgAFAAbwBzAGkAdABpAG8AbgApAC8AbAApAC0AKAB0AC8AbAAtADEAKQA7AAoAZgBsAG8AYQB0ACAAbQBhAHMAawAgAD0AIABzAHQAZQBwACAAKAAwAC4AMAAsACAAbQBhAHAAKQAgACoAIABzAHQAZQBwACAAKABtAGEAcAAsACAAMQAuADAAKQA7ACAACgB1AHYAcwAuAHgAIAA9ACAAMQAuADAALQBtAGEAcAA7AAoAdQB2AHMALgB5ACAAPQAgADAALgAwADsACgByAGUAdAB1AHIAbgAgAHQAZQB4ADIARAAoAFIAYQBtAHAALAAgAHUAdgBzACkAIAAqACAAbQBhAHMAawAgACoAIABGADsA,output:0,fname:Bla7,width:247,height:168,input:2,input:2,input:0,input:0,input:12,input:0,input_1_label:Position,input_2_label:WorldPosition,input_3_label:t,input_4_label:l,input_5_label:Ramp,input_6_label:F|A-7486-XYZ,B-1847-XYZ,C-7486-W,D-7990-OUT,E-4094-TEX,F-2191-OUT;n:type:ShaderForge.SFN_Add,id:69,x:31992,y:33304,varname:node_69,prsc:2|A-4878-OUT,B-7059-OUT,C-7662-OUT,D-4383-OUT;n:type:ShaderForge.SFN_Add,id:6123,x:32212,y:33156,varname:node_6123,prsc:2|A-5345-OUT,B-69-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2636,x:30615,y:32242,ptovrint:False,ptlb:WaveThick0,ptin:_WaveThick0,varname:node_2636,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:8597,x:30616,y:32467,ptovrint:False,ptlb:WavePosTime1,ptin:_WavePosTime1,varname:_Wave0PosTime_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:5269,x:30616,y:32629,ptovrint:False,ptlb:WaveThick1,ptin:_WaveThick1,varname:_Wave0Thick_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:4801,x:30615,y:32837,ptovrint:False,ptlb:WavePosTime2,ptin:_WavePosTime2,varname:_Wave0PosTime_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:8258,x:30615,y:32999,ptovrint:False,ptlb:WaveThick2,ptin:_WaveThick2,varname:_Wave0Thick_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:168,x:30615,y:33209,ptovrint:False,ptlb:WavePosTime3,ptin:_WavePosTime3,varname:_Wave0PosTime_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:7033,x:30615,y:33371,ptovrint:False,ptlb:WaveThick3,ptin:_WaveThick3,varname:_Wave0Thick_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:7130,x:30601,y:33627,ptovrint:False,ptlb:WavePosTime4,ptin:_WavePosTime4,varname:_Wave0PosTime_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:8085,x:30601,y:33789,ptovrint:False,ptlb:WaveThick4,ptin:_WaveThick4,varname:_Wave0Thick_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:9920,x:30601,y:34056,ptovrint:False,ptlb:WavePosTime5,ptin:_WavePosTime5,varname:_Wave0PosTime_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:799,x:30601,y:34218,ptovrint:False,ptlb:WaveThick5,ptin:_WaveThick5,varname:_Wave0Thick_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:8227,x:30599,y:34450,ptovrint:False,ptlb:WavePosTime6,ptin:_WavePosTime6,varname:_Wave0PosTime_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:1872,x:30599,y:34612,ptovrint:False,ptlb:WaveThick6,ptin:_WaveThick6,varname:_Wave0Thick_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector4Property,id:7486,x:30596,y:34882,ptovrint:False,ptlb:WavePosTime7,ptin:_WavePosTime7,varname:_Wave0PosTime_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ValueProperty,id:7990,x:30596,y:35044,ptovrint:False,ptlb:WaveThick7,ptin:_WaveThick7,varname:_Wave0Thick_copy_copy_copy_copy_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:6903,x:32521,y:32647,ptovrint:False,ptlb:AdditiveCOlor,ptin:_AdditiveCOlor,varname:node_6903,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5588235,c2:0.8539555,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:5487,x:32834,y:32755,varname:node_5487,prsc:2|A-6903-RGB,B-6356-OUT;n:type:ShaderForge.SFN_Add,id:706,x:33096,y:32888,varname:node_706,prsc:2|A-5487-OUT,B-8827-OUT;n:type:ShaderForge.SFN_Slider,id:7945,x:32156,y:32891,ptovrint:False,ptlb:AdditivePower,ptin:_AdditivePower,varname:node_7945,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:3;n:type:ShaderForge.SFN_Power,id:6356,x:32623,y:32837,varname:node_6356,prsc:2|VAL-5476-OUT,EXP-7945-OUT;n:type:ShaderForge.SFN_Slider,id:6874,x:33130,y:32745,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_6874,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Clamp01,id:9440,x:33287,y:32888,varname:node_9440,prsc:2|IN-706-OUT;n:type:ShaderForge.SFN_Multiply,id:2624,x:33487,y:32816,varname:node_2624,prsc:2|A-6874-OUT,B-9440-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4017,x:30616,y:32331,ptovrint:False,ptlb:WaveFade0,ptin:_WaveFade0,varname:_WaveThick1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4174,x:30615,y:32721,ptovrint:False,ptlb:WaveFade1,ptin:_WaveFade1,varname:_WaveFade1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:3569,x:30615,y:33097,ptovrint:False,ptlb:WaveFade2,ptin:_WaveFade2,varname:_WaveFade2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4784,x:30615,y:33467,ptovrint:False,ptlb:WaveFade3,ptin:_WaveFade3,varname:_WaveFade3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2826,x:30601,y:33896,ptovrint:False,ptlb:WaveFade4,ptin:_WaveFade4,varname:_WaveFade4,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:4327,x:30599,y:34307,ptovrint:False,ptlb:WaveFade5,ptin:_WaveFade5,varname:_WaveFade5,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:8096,x:30596,y:34715,ptovrint:False,ptlb:WaveFade6,ptin:_WaveFade6,varname:_WaveFade6,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:2191,x:30585,y:35134,ptovrint:False,ptlb:WaveFade7,ptin:_WaveFade7,varname:_WaveFade7,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:7241-2302-6903-7945-4094-6874-6256-2636-4017-8597-5269-4174-4801-8258-3569-168-7033-4784-7130-8085-2826-9920-799-4327-8227-1872-8096-7486-7990-2191;pass:END;sub:END;*/

Shader "Lhama/SonarShader_SHR" {
    Properties {
        _MainColor ("MainColor", Color) = (1,1,1,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _AdditiveCOlor ("AdditiveCOlor", Color) = (0.5588235,0.8539555,1,1)
        _AdditivePower ("AdditivePower", Range(1, 3)) = 1
        _WaveGradient ("WaveGradient", 2D) = "white" {}
        _Intensity ("Intensity", Range(0, 1)) = 1
        _WavePosTime0 ("WavePosTime0", Vector) = (0,0,0,0)
        _WaveThick0 ("WaveThick0", Float ) = 1
        _WaveFade0 ("WaveFade0", Float ) = 1
        _WavePosTime1 ("WavePosTime1", Vector) = (0,0,0,0)
        _WaveThick1 ("WaveThick1", Float ) = 1
        _WaveFade1 ("WaveFade1", Float ) = 1
        _WavePosTime2 ("WavePosTime2", Vector) = (0,0,0,0)
        _WaveThick2 ("WaveThick2", Float ) = 1
        _WaveFade2 ("WaveFade2", Float ) = 1
        _WavePosTime3 ("WavePosTime3", Vector) = (0,0,0,0)
        _WaveThick3 ("WaveThick3", Float ) = 1
        _WaveFade3 ("WaveFade3", Float ) = 1
        _WavePosTime4 ("WavePosTime4", Vector) = (0,0,0,0)
        _WaveThick4 ("WaveThick4", Float ) = 1
        _WaveFade4 ("WaveFade4", Float ) = 1
        _WavePosTime5 ("WavePosTime5", Vector) = (0,0,0,0)
        _WaveThick5 ("WaveThick5", Float ) = 1
        _WaveFade5 ("WaveFade5", Float ) = 1
        _WavePosTime6 ("WavePosTime6", Vector) = (0,0,0,0)
        _WaveThick6 ("WaveThick6", Float ) = 1
        _WaveFade6 ("WaveFade6", Float ) = 1
        _WavePosTime7 ("WavePosTime7", Vector) = (0,0,0,0)
        _WaveThick7 ("WaveThick7", Float ) = 1
        _WaveFade7 ("WaveFade7", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _MainColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _WaveGradient; uniform float4 _WaveGradient_ST;
            uniform float4 _WavePosTime0;
            float Bla0( float3 Position , float3 WorldPosition , float t , float l , sampler2D Ramp , float F ){
            float2 uvs;
            
            float map = (length (WorldPosition - Position)/l)-(t/l-1);
            float mask = step (0.0, map) * step (map, 1.0); 
            uvs.x = 1.0-map;
            uvs.y = 0.0;
            return tex2D(Ramp, uvs) * mask * F;
            }
            
            float Bla1( float3 Position , float3 WorldPosition , float t , float l , sampler2D Ramp , float F ){
            float2 uvs;
            
            float map = (length (WorldPosition - Position)/l)-(t/l-1);
            float mask = step (0.0, map) * step (map, 1.0); 
            uvs.x = 1.0-map;
            uvs.y = 0.0;
            return tex2D(Ramp, uvs) * mask * F;
            }
            
            float Bla2( float3 Position , float3 WorldPosition , float t , float l , sampler2D Ramp , float F ){
            float2 uvs;
            
            float map = (length (WorldPosition - Position)/l)-(t/l-1);
            float mask = step (0.0, map) * step (map, 1.0); 
            uvs.x = 1.0-map;
            uvs.y = 0.0;
            return tex2D(Ramp, uvs) * mask * F;
            }
            
            float Bla3( float3 Position , float3 WorldPosition , float t , float l , sampler2D Ramp , float F ){
            float2 uvs;
            
            float map = (length (WorldPosition - Position)/l)-(t/l-1);
            float mask = step (0.0, map) * step (map, 1.0); 
            uvs.x = 1.0-map;
            uvs.y = 0.0;
            return tex2D(Ramp, uvs) * mask * F;
            }
            
            float Bla4( float3 Position , float3 WorldPosition , float t , float l , sampler2D Ramp , float F ){
            float2 uvs;
            
            float map = (length (WorldPosition - Position)/l)-(t/l-1);
            float mask = step (0.0, map) * step (map, 1.0); 
            uvs.x = 1.0-map;
            uvs.y = 0.0;
            return tex2D(Ramp, uvs) * mask * F;
            }
            
            float Bla5( float3 Position , float3 WorldPosition , float t , float l , sampler2D Ramp , float F ){
            float2 uvs;
            
            float map = (length (WorldPosition - Position)/l)-(t/l-1);
            float mask = step (0.0, map) * step (map, 1.0); 
            uvs.x = 1.0-map;
            uvs.y = 0.0;
            return tex2D(Ramp, uvs) * mask * F;
            }
            
            float Bla6( float3 Position , float3 WorldPosition , float t , float l , sampler2D Ramp , float F ){
            float2 uvs;
            
            float map = (length (WorldPosition - Position)/l)-(t/l-1);
            float mask = step (0.0, map) * step (map, 1.0); 
            uvs.x = 1.0-map;
            uvs.y = 0.0;
            return tex2D(Ramp, uvs) * mask * F;
            }
            
            float Bla7( float3 Position , float3 WorldPosition , float t , float l , sampler2D Ramp , float F ){
            float2 uvs;
            
            float map = (length (WorldPosition - Position)/l)-(t/l-1);
            float mask = step (0.0, map) * step (map, 1.0); 
            uvs.x = 1.0-map;
            uvs.y = 0.0;
            return tex2D(Ramp, uvs) * mask * F;
            }
            
            uniform float _WaveThick0;
            uniform float4 _WavePosTime1;
            uniform float _WaveThick1;
            uniform float4 _WavePosTime2;
            uniform float _WaveThick2;
            uniform float4 _WavePosTime3;
            uniform float _WaveThick3;
            uniform float4 _WavePosTime4;
            uniform float _WaveThick4;
            uniform float4 _WavePosTime5;
            uniform float _WaveThick5;
            uniform float4 _WavePosTime6;
            uniform float _WaveThick6;
            uniform float4 _WavePosTime7;
            uniform float _WaveThick7;
            uniform float4 _AdditiveCOlor;
            uniform float _AdditivePower;
            uniform float _Intensity;
            uniform float _WaveFade0;
            uniform float _WaveFade1;
            uniform float _WaveFade2;
            uniform float _WaveFade3;
            uniform float _WaveFade4;
            uniform float _WaveFade5;
            uniform float _WaveFade6;
            uniform float _WaveFade7;
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
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_5476 = saturate(((Bla0( _WavePosTime0.rgb , i.posWorld.rgb , _WavePosTime0.a , _WaveThick0 , _WaveGradient , _WaveFade0 )+Bla1( _WavePosTime1.rgb , i.posWorld.rgb , _WavePosTime1.a , _WaveThick1 , _WaveGradient , _WaveFade1 )+Bla2( _WavePosTime2.rgb , i.posWorld.rgb , _WavePosTime2.a , _WaveThick2 , _WaveGradient , _WaveFade2 )+Bla3( _WavePosTime3.rgb , i.posWorld.rgb , _WavePosTime3.a , _WaveThick3 , _WaveGradient , _WaveFade3 ))+(Bla4( _WavePosTime4.rgb , i.posWorld.rgb , _WavePosTime4.a , _WaveThick4 , _WaveGradient , _WaveFade4 )+Bla5( _WavePosTime5.rgb , i.posWorld.rgb , _WavePosTime5.a , _WaveThick5 , _WaveGradient , _WaveFade5 )+Bla6( _WavePosTime6.rgb , i.posWorld.rgb , _WavePosTime6.a , _WaveThick6 , _WaveGradient , _WaveFade6 )+Bla7( _WavePosTime7.rgb , i.posWorld.rgb , _WavePosTime7.a , _WaveThick7 , _WaveGradient , _WaveFade7 ))));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (_Intensity*saturate(((_AdditiveCOlor.rgb*pow(node_5476,_AdditivePower))+((_MainColor.rgb*_MainTex_var.rgb)*node_5476))));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
