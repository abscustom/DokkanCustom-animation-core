--1020340:超サイヤ人ゴッドSSベジータ(進化)＿ファイナルエクスプロージョン（アクティブ）
--sp_effect_a7_00042
--ut0013.lua

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01=	156610	;--	ベジータ立ち〜敵が爆発にのまれる
SP_03=	156612	;--	2体目以降のダメージ演出用

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then
    	spep_0 = 0;
    	
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 830 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 830 -12, SP_01, spep_0 + 830 -12 + 2, 1);
       else
           skipFrame(0, spep_0 + 920);      -- スキップ先フレーム指定
           setupMovie(spep_0 + 920, SP_01, spep_0 + 920 + 2, 1);

           --敵飲まれる
           SE019 = playSe( spep_0 + 920, 1175 );
           setSeVolumeByWorkId( spep_0 + 920, SE019, 32 );
           setSeVolumeByWorkId( spep_0 + 921, SE019, 34 );
           setSeVolumeByWorkId( spep_0 + 922, SE019, 36 );
           setSeVolumeByWorkId( spep_0 + 923, SE019, 38 );
           setSeVolumeByWorkId( spep_0 + 924, SE019, 40 );
           setStartTimeMs( SE019,  2067 );
           stopSe( spep_0 + 1020, SE019, 20 );

           SE024 = playSe( spep_0 + 920, 1226 );
           stopSe( spep_0 + 1020, SE024, 20 );

           SE025 = playSe( spep_0 + 920, 1161 );
           setSeVolumeByWorkId( spep_0 + 920, SE025, 71 );
           stopSe( spep_0 + 990, SE025, 50 );

           SE027 = playSe( spep_0 + 920, 1258 );
           setSeVolumeByWorkId( spep_0 + 920, SE027, 71 );

       end
    else
        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ベジータ立ち〜敵が爆発にのまれる
------------------------------------------------------
--はじめの準備
spep_0=0;

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

-- ** エフェクト等 ** --
stand_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, stand_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 1020, stand_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stand_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1020, stand_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stand_f, 0 );
setEffRotateKey( spep_0 + 1020, stand_f, 0 );
setEffAlphaKey( spep_0 + 0, stand_f, 255 );
setEffAlphaKey( spep_0 + 1020, stand_f, 255 );

--敵の動き
setDisp( spep_0-3 + 540, 1, 1);
setDisp( spep_0-1 + 598, 1, 0);

changeAnime( spep_0-3 + 540, 1, 102);

setMoveKey( spep_0-3 + 540, 1, 230.8, -198.9 , 0 );
setMoveKey( spep_0-3 + 542, 1, 221.4, -215.4 , 0 );
setMoveKey( spep_0-3 + 544, 1, 221.4, -210.7 , 0 );
setMoveKey( spep_0-3 + 546, 1, 217.8, -230.2 , 0 );
setMoveKey( spep_0-3 + 548, 1, 217.8, -202.2 , 0 );
setMoveKey( spep_0-3 + 550, 1, 229.8, -242.2 , 0 );
setMoveKey( spep_0-3 + 552, 1, 217.8, -222.2 , 0 );
setMoveKey( spep_0-3 + 554, 1, 225.8, -238.2 , 0 );
setMoveKey( spep_0-3 + 556, 1, 221.8, -220.2 , 0 );
setMoveKey( spep_0-3 + 558, 1, 210.2, -263 , 0 );
setMoveKey( spep_0-3 + 560, 1, 210.2, -223 , 0 );
setMoveKey( spep_0-3 + 562, 1, 214.2, -251 , 0 );
setMoveKey( spep_0-3 + 564, 1, 204.2, -231 , 0 );
setMoveKey( spep_0-3 + 566, 1, 212.2, -255 , 0 );
setMoveKey( spep_0-3 + 568, 1, 212.2, -255 , 0 );
setMoveKey( spep_0-3 + 570, 1, 208.2, -269 , 0 );
setMoveKey( spep_0-3 + 572, 1, 212.2, -243 , 0 );
setMoveKey( spep_0-3 + 574, 1, 218.2, -267 , 0 );
setMoveKey( spep_0-3 + 576, 1, 206.2, -237 , 0 );
setMoveKey( spep_0-3 + 578, 1, 206.2, -277 , 0 );
setMoveKey( spep_0-3 + 580, 1, 220.2, -233 , 0 );
setMoveKey( spep_0-3 + 582, 1, 214.2, -253 , 0 );
setMoveKey( spep_0-3 + 584, 1, 216.3, -222.2 , 0 );
setMoveKey( spep_0-3 + 586, 1, 214.3, -236.2 , 0 );
setMoveKey( spep_0-3 + 588, 1, 220.3, -228.2 , 0 );
setMoveKey( spep_0-3 + 590, 1, 224.3, -272.2 , 0 );
setMoveKey( spep_0-3 + 592, 1, 204.3, -244.2 , 0 );
setMoveKey( spep_0-3 + 594, 1, 222.3, -274.2 , 0 );
setMoveKey( spep_0-3 + 596, 1, 212.6, -232.6 , 0 );
setMoveKey( spep_0-1 + 598, 1, 230.8, -198.9 , 0 );

setScaleKey( spep_0-3 + 540, 1, 1.5, 1.5 );
setScaleKey( spep_0-1 + 598, 1, 1.5, 1.5 );

setRotateKey( spep_0-3 + 540, 1, 33 );
setRotateKey( spep_0-1 + 598, 1, 33 );

--敵の動き
setDisp( spep_0-3 + 880, 1, 1);
setDisp( spep_0-1 + 1012, 1, 0);

changeAnime( spep_0-3 + 880, 1, 102);
changeAnime( spep_0-3 + 918, 1, 106);

--102
setBlendColor(spep_0-3 + 880,1,3,0.83,0.89,0.34,0.028);
setBlendColor(spep_0-3 + 881,1,3,0.83,0.89,0.34,0.056);
setBlendColor(spep_0-3 + 882,1,3,0.83,0.89,0.34,0.084);
setBlendColor(spep_0-3 + 883,1,3,0.83,0.89,0.34,0.112);
setBlendColor(spep_0-3 + 884,1,3,0.83,0.89,0.34,0.14);
setBlendColor(spep_0-3 + 885,1,3,0.83,0.89,0.34,0.168);
setBlendColor(spep_0-3 + 886,1,3,0.83,0.89,0.34,0.196);
setBlendColor(spep_0-3 + 887,1,3,0.83,0.89,0.34,0.224);
setBlendColor(spep_0-3 + 888,1,3,0.83,0.89,0.34,0.252);
setBlendColor(spep_0-3 + 889,1,3,0.83,0.89,0.34,0.28);
setBlendColor(spep_0-3 + 890,1,3,0.83,0.89,0.34,0.308);
setBlendColor(spep_0-3 + 891,1,3,0.83,0.89,0.34,0.336);
setBlendColor(spep_0-3 + 892,1,3,0.83,0.89,0.34,0.364);
setBlendColor(spep_0-3 + 893,1,3,0.83,0.89,0.34,0.392);
setBlendColor(spep_0-3 + 894,1,3,0.83,0.89,0.34,0.42);
setBlendColor(spep_0-3 + 895,1,3,0.83,0.89,0.34,0.448);
setBlendColor(spep_0-3 + 896,1,3,0.83,0.89,0.34,0.476);
setBlendColor(spep_0-3 + 897,1,3,0.83,0.89,0.34,0.504);
setBlendColor(spep_0-3 + 898,1,3,0.83,0.89,0.34,0.532);
setBlendColor(spep_0-3 + 899,1,3,0.83,0.89,0.34,0.56);
setBlendColor(spep_0-3 + 900,1,3,0.83,0.89,0.34,0.588);
setBlendColor(spep_0-3 + 901,1,3,0.83,0.89,0.34,0.616);
setBlendColor(spep_0-3 + 902,1,3,0.83,0.89,0.34,0.644);
setBlendColor(spep_0-3 + 903,1,3,0.83,0.89,0.34,0.672);
setBlendColor(spep_0-3 + 904,1,3,0.83,0.89,0.34,0.7);
setBlendColor(spep_0-3 + 905,1,3,0.83,0.89,0.34,0.728);
setBlendColor(spep_0-3 + 906,1,3,0.83,0.89,0.34,0.756);
setBlendColor(spep_0-3 + 907,1,3,0.83,0.89,0.34,0.8);
setBlendColor(spep_0-3 + 917,1,3,0.83,0.89,0.34,0.8);

--106
setBlendColor(spep_0-3 + 918,1,5,1,1,1,0.019);
setBlendColor(spep_0-3 + 919,1,5,1,1,1,0.038);
setBlendColor(spep_0-3 + 920,1,5,1,1,1,0.057);
setBlendColor(spep_0-3 + 921,1,5,1,1,1,0.076);
setBlendColor(spep_0-3 + 922,1,5,1,1,1,0.095);
setBlendColor(spep_0-3 + 923,1,5,1,1,1,0.114);
setBlendColor(spep_0-3 + 924,1,5,1,1,1,0.133);
setBlendColor(spep_0-3 + 925,1,5,1,1,1,0.152);
setBlendColor(spep_0-3 + 926,1,5,1,1,1,0.171);
setBlendColor(spep_0-3 + 927,1,5,1,1,1,0.19);
setBlendColor(spep_0-3 + 928,1,5,1,1,1,0.209);
setBlendColor(spep_0-3 + 929,1,5,1,1,1,0.228);
setBlendColor(spep_0-3 + 930,1,5,1,1,1,0.247);
setBlendColor(spep_0-3 + 931,1,5,1,1,1,0.266);
setBlendColor(spep_0-3 + 932,1,5,1,1,1,0.285);
setBlendColor(spep_0-3 + 933,1,5,1,1,1,0.304);
setBlendColor(spep_0-3 + 934,1,5,1,1,1,0.323);
setBlendColor(spep_0-3 + 935,1,5,1,1,1,0.342);
setBlendColor(spep_0-3 + 936,1,5,1,1,1,0.361);
setBlendColor(spep_0-3 + 937,1,5,1,1,1,0.38);
setBlendColor(spep_0-3 + 938,1,5,1,1,1,0.399);
setBlendColor(spep_0-3 + 939,1,5,1,1,1,0.418);
setBlendColor(spep_0-3 + 940,1,5,1,1,1,0.437);
setBlendColor(spep_0-3 + 941,1,5,1,1,1,0.456);
setBlendColor(spep_0-3 + 942,1,5,1,1,1,0.475);
setBlendColor(spep_0-3 + 943,1,5,1,1,1,0.494);
setBlendColor(spep_0-3 + 944,1,5,1,1,1,0.513);
setBlendColor(spep_0-3 + 945,1,5,1,1,1,0.532);
setBlendColor(spep_0-3 + 946,1,5,1,1,1,0.551);
setBlendColor(spep_0-3 + 947,1,5,1,1,1,0.57);
setBlendColor(spep_0-3 + 948,1,5,1,1,1,0.589);
setBlendColor(spep_0-3 + 949,1,5,1,1,1,0.608);
setBlendColor(spep_0-3 + 950,1,5,1,1,1,0.627);
setBlendColor(spep_0-3 + 951,1,5,1,1,1,0.65);

--色を元に戻す
setBlendColor(spep_0 + 1012,1,5,1,1,1,0.65);
setBlendColor(spep_0 + 1013,1,5,1,1,1,0);


setMoveKey( spep_0-3 + 880, 1, 142.6, -106.5 , 0 );
setMoveKey( spep_0-3 + 882, 1, 153.6, -86.7 , 0 );
setMoveKey( spep_0-3 + 884, 1, 161.7, -131.9 , 0 );
setMoveKey( spep_0-3 + 886, 1, 159.5, -125.3 , 0 );
setMoveKey( spep_0-3 + 888, 1, 152.9, -81.3 , 0 );
setMoveKey( spep_0-3 + 890, 1, 164, -134.1 , 0 );
setMoveKey( spep_0-3 + 892, 1, 157.4, -138.5 , 0 );
setMoveKey( spep_0-3 + 894, 1, 146.4, -105.6 , 0 );
setMoveKey( spep_0-3 + 896, 1, 164.1, -127.6 , 0 );
setMoveKey( spep_0-3 + 898, 1, 155.3, -107.9 , 0 );
setMoveKey( spep_0-3 + 900, 1, 157.6, -90.3 , 0 );
setMoveKey( spep_0-3 + 902, 1, 157.6, -119 , 0 );
setMoveKey( spep_0-3 + 904, 1, 153.3, -108.1 , 0 );
setMoveKey( spep_0-3 + 906, 1, 160, -84 , 0 );
setMoveKey( spep_0-3 + 908, 1, 162.2, -132.3 , 0 );
setMoveKey( spep_0-3 + 910, 1, 166.6, -99.3 , 0 );
setMoveKey( spep_0-3 + 912, 1, 153.4, -99.3 , 0 );
setMoveKey( spep_0-3 + 914, 1, 157.8, -134.5 , 0 );
setMoveKey( spep_0-3 + 916, 1, 165, -89.4 , 0 );
setMoveKey( spep_0-3 + 917, 1, 165, -89.4 , 0 );

setMoveKey( spep_0-3 + 918, 1, -46.7, -121.3 , 0 );
setMoveKey( spep_0-3 + 920, 1, -40.1, -138.9 , 0 );
setMoveKey( spep_0-3 + 922, 1, -40.1, -138.9 , 0 );
setMoveKey( spep_0-3 + 924, 1, -40.1, -147.7 , 0 );
setMoveKey( spep_0-3 + 930, 1, -40.1, -147.7 , 0 );
setMoveKey( spep_0-3 + 932, 1, -40.1, -191.7 , 0 );
setMoveKey( spep_0-3 + 934, 1, -33.5, -147.7 , 0 );
setMoveKey( spep_0-3 + 936, 1, -42.3, -178.5 , 0 );
setMoveKey( spep_0-3 + 938, 1, -51.1, -143.3 , 0 );
setMoveKey( spep_0-3 + 940, 1, -46.7, -185.1 , 0 );
setMoveKey( spep_0-3 + 942, 1, -37.9, -167.5 , 0 );
setMoveKey( spep_0-3 + 944, 1, -29.1, -191.7 , 0 );
setMoveKey( spep_0-3 + 946, 1, -37.9, -160.9 , 0 );
setMoveKey( spep_0-3 + 948, 1, -37.9, -182.9 , 0 );
setMoveKey( spep_0-3 + 950, 1, -33.5, -191.7 , 0 );
setMoveKey( spep_0-3 + 952, 1, -33.5, -191.7 , 0 );
setMoveKey( spep_0-3 + 954, 1, -33.5, -169.7 , 0 );
setMoveKey( spep_0-3 + 956, 1, -33.5, -198.3 , 0 );
setMoveKey( spep_0-3 + 958, 1, -33.5, -167.5 , 0 );
setMoveKey( spep_0-3 + 960, 1, -48.9, -202.7 , 0 );
setMoveKey( spep_0-3 + 962, 1, -35.7, -158.7 , 0 );
setMoveKey( spep_0-3 + 964, 1, -35.7, -180.7 , 0 );
setMoveKey( spep_0-3 + 966, 1, -35.7, -158.7 , 0 );
setMoveKey( spep_0-3 + 968, 1, -40.1, -196.1 , 0 );
setMoveKey( spep_0-3 + 970, 1, -26.9, -185.1 , 0 );
setMoveKey( spep_0-3 + 972, 1, -15.9, -207.1 , 0 );
setMoveKey( spep_0-3 + 974, 1, -15.9, -171.9 , 0 );
setMoveKey( spep_0-3 + 976, 1, -26.9, -200.5 , 0 );
setMoveKey( spep_0-3 + 978, 1, -22.5, -174.1 , 0 );
setMoveKey( spep_0-3 + 980, 1, -13.7, -207.1 , 0 );
setMoveKey( spep_0-3 + 982, 1, -0.5, -163.1 , 0 );
setMoveKey( spep_0-3 + 984, 1, -0.5, -198.3 , 0 );
setMoveKey( spep_0-3 + 994, 1, -0.5, -198.3 , 0 );
setMoveKey( spep_0-3 + 996, 1, -7.1, -191.7 , 0 );
setMoveKey( spep_0-3 + 998, 1, -0.5, -213.7 , 0 );
setMoveKey( spep_0-3 + 1002, 1, -0.5, -213.7 , 0 );
setMoveKey( spep_0-3 + 1004, 1, -7.1, -202.7 , 0 );
setMoveKey( spep_0-3 + 1006, 1, -7.1, -202.7 , 0 );
setMoveKey( spep_0-3 + 1008, 1, -2.7, -187.3 , 0 );
setMoveKey( spep_0-3 + 1010, 1, -2.7, -187.3 , 0 );
setMoveKey( spep_0-1 + 1012, 1, -24.7, -165.3 , 0 );

setScaleKey( spep_0-3 + 880, 1, 2.2, 2.2 );
setScaleKey( spep_0-3 + 917, 1, 2.2, 2.2 );

setScaleKey( spep_0-3 + 918, 1, 3.96, 3.96 );
setScaleKey( spep_0-1 + 1012, 1, 3.96, 3.96 );

setRotateKey( spep_0-3 + 880, 1, 10 );
setRotateKey( spep_0-3 + 917, 1, 10 );

setRotateKey( spep_0-3 + 918, 1, -25 );
setRotateKey( spep_0-1 + 1012, 1, -25 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 1050, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- ボイス
------------------------------------------------------
--破壊しきれんほどの技をくらわせてやる!
playVoice( spep_0 + 26, 201 );
setVoiceVolume( spep_0 + 26, 201, 90 );

--はああああ…!!
playVoice( spep_0 + 190, 202 );
setVoiceVolume( spep_0 + 190, 202, 100 );

--これがオレのすべてだ!!
playVoice( spep_0 + 436, 200 );
setVoiceVolume( spep_0 + 436, 200, 100 );

--はあああああ!!!!
playVoice( spep_0 + 592, 203 );
setVoiceVolume( spep_0 + 592, 203, 100 );

------------------------------------------------------
-- SE
------------------------------------------------------
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 14 );
stopSe( spep_0 + 196, SE001, 52 );

--セリフカットイン
SE002 = playSe( spep_0 + 26, 1018 );
setSeVolumeByWorkId( spep_0 + 26, SE002, 63 );

--気ダメ
SE003 = playSe( spep_0 + 186, 1264 );
setSeVolumeByWorkId( spep_0 + 186, SE003, 68 );
SE004 = playSe( spep_0 + 186, 1175 );
setSeVolumeByWorkId( spep_0 + 186, SE004, 52 );
SE005 = playSe( spep_0 + 186, 1011 );
setSeVolumeByWorkId( spep_0 + 186, SE005, 76 );
SE006 = playSe( spep_0 + 186, 1278 );
setSeVolumeByWorkId( spep_0 + 186, SE006, 52 );
setTimeStretch( SE006, 1.25, 10, 1 );
stopSe( spep_0 + 520, SE006, 50 );

--いなづま
SE007 = playSe( spep_0 + 260, 1056 );
setSeVolumeByWorkId( spep_0 + 260, SE007, 71 );
SE010 = playSe( spep_0 + 382, 1147 );
setSeVolumeByWorkId( spep_0 + 382, SE010, 45 );
SE014 = playSe( spep_0 + 588, 1148 );
setSeVolumeByWorkId( spep_0 + 588, SE014, 45 );
SE018 = playSe( spep_0 + 722, 1147 );
setSeVolumeByWorkId( spep_0 + 722, SE018, 45 );
stopSe( spep_0 + 780, SE018, 0 );

--気力爆発
SE008 = playSe( spep_0 + 334, 1068 );

--地鳴り音
SE009 = playSe( spep_0 + 366, 1226 );
setSeVolumeByWorkId( spep_0 + 366, SE009, 63 );
--setSeVolumeByWorkId( spep_0 + 327, SE009, 63 );
setSeVolumeByWorkId( spep_0 + 528, SE009, 63);
setSeVolumeByWorkId( spep_0 + 529, SE009, 63.72);
setSeVolumeByWorkId( spep_0 +530, SE009, 64.44);
setSeVolumeByWorkId( spep_0 +531, SE009, 65.16);
setSeVolumeByWorkId( spep_0 +532, SE009, 65.88);
setSeVolumeByWorkId( spep_0 +533, SE009, 66.6);
setSeVolumeByWorkId( spep_0 +534, SE009, 67.32);
setSeVolumeByWorkId( spep_0 +535, SE009, 68.04);
setSeVolumeByWorkId( spep_0 +536, SE009, 68.76);
setSeVolumeByWorkId( spep_0 +537, SE009, 69.48);
setSeVolumeByWorkId( spep_0 +538, SE009, 70.2);
setSeVolumeByWorkId( spep_0 +539, SE009, 70.92);
setSeVolumeByWorkId( spep_0 +540, SE009, 71.64);
setSeVolumeByWorkId( spep_0 +541, SE009, 72.36);
setSeVolumeByWorkId( spep_0 +542, SE009, 73.08);
setSeVolumeByWorkId( spep_0 +543, SE009, 73.8);
setSeVolumeByWorkId( spep_0 +544, SE009, 74.52);
setSeVolumeByWorkId( spep_0 +545, SE009, 75.24);
setSeVolumeByWorkId( spep_0 +546, SE009, 75.96);
setSeVolumeByWorkId( spep_0 +547, SE009, 76.68);
setSeVolumeByWorkId( spep_0 +548, SE009, 77.4);
setSeVolumeByWorkId( spep_0 +549, SE009, 78.12);
setSeVolumeByWorkId( spep_0 +550, SE009, 78.84);
setSeVolumeByWorkId( spep_0 +551, SE009, 79.56);
setSeVolumeByWorkId( spep_0 +552, SE009, 80.28);
setSeVolumeByWorkId( spep_0 +553, SE009, 81);
setSeVolumeByWorkId( spep_0 +554, SE009, 81.72);
setSeVolumeByWorkId( spep_0 +555, SE009, 82.44);
setSeVolumeByWorkId( spep_0 +556, SE009, 83.16);
setSeVolumeByWorkId( spep_0 +557, SE009, 83.88);
setSeVolumeByWorkId( spep_0 +558, SE009, 84.6);
setSeVolumeByWorkId( spep_0 +559, SE009, 85.32);
setSeVolumeByWorkId( spep_0 +560, SE009, 86.04);
setSeVolumeByWorkId( spep_0 +561, SE009, 86.76);
setSeVolumeByWorkId( spep_0 +562, SE009, 87.48);
setSeVolumeByWorkId( spep_0 +563, SE009, 88.2);
setSeVolumeByWorkId( spep_0 +564, SE009, 88.92);
setSeVolumeByWorkId( spep_0 +565, SE009, 89.64);
setSeVolumeByWorkId( spep_0 +566, SE009, 90.36);
setSeVolumeByWorkId( spep_0 +567, SE009, 91.08);
setSeVolumeByWorkId( spep_0 +568, SE009, 91.8);
setSeVolumeByWorkId( spep_0 +569, SE009, 92.52);
setSeVolumeByWorkId( spep_0 +570, SE009, 93.24);
setSeVolumeByWorkId( spep_0 +571, SE009, 93.96);
setSeVolumeByWorkId( spep_0 +572, SE009, 94.67);
setSeVolumeByWorkId( spep_0 +573, SE009, 95.39);
setSeVolumeByWorkId( spep_0 +574, SE009, 96.11);
setSeVolumeByWorkId( spep_0 +575, SE009, 96.83);
setSeVolumeByWorkId( spep_0 +576, SE009, 97.55);
setSeVolumeByWorkId( spep_0 +577, SE009, 98.27);
setSeVolumeByWorkId( spep_0 +578, SE009, 98.99);
setSeVolumeByWorkId( spep_0 +579, SE009, 99.71);
setSeVolumeByWorkId( spep_0 +580, SE009, 100);
setSeVolumeByWorkId( spep_0 +594, SE009, 90);

--気力爆発２
SE011 = playSe( spep_0 + 384, 1159 );
setSeVolumeByWorkId( spep_0 + 384, SE011, 70 );
stopSe( spep_0 + 646, SE011, 32 );

--地割れ音
SE012 = playSe( spep_0 + 526, 1044 );
setSeVolumeByWorkId( spep_0 + 526, SE012, 0 );
setSeVolumeByWorkId( spep_0 + 527, SE012, 2.1 );
setSeVolumeByWorkId( spep_0 + 528, SE012, 4.2 );
setSeVolumeByWorkId( spep_0 + 529, SE012, 6.3 );
setSeVolumeByWorkId( spep_0 + 530, SE012, 8.4 );
setSeVolumeByWorkId( spep_0 + 531, SE012, 10.5 );
setSeVolumeByWorkId( spep_0 + 532, SE012, 12.6 );
setSeVolumeByWorkId( spep_0 + 533, SE012, 14.7 );
setSeVolumeByWorkId( spep_0 + 534, SE012, 16.8 );
setSeVolumeByWorkId( spep_0 + 535, SE012, 18.9 );
setSeVolumeByWorkId( spep_0 + 536, SE012, 21 );
setSeVolumeByWorkId( spep_0 + 537, SE012, 23.1 );
setSeVolumeByWorkId( spep_0 + 538, SE012, 25.2 );
setSeVolumeByWorkId( spep_0 + 539, SE012, 27.3 );
setSeVolumeByWorkId( spep_0 + 540, SE012, 29.4 );
setSeVolumeByWorkId( spep_0 + 541, SE012, 31.5 );
setSeVolumeByWorkId( spep_0 + 542, SE012, 33.6 );
setSeVolumeByWorkId( spep_0 + 543, SE012, 35.7 );
setSeVolumeByWorkId( spep_0 + 544, SE012, 37.8 );
setSeVolumeByWorkId( spep_0 + 545, SE012, 39.9 );
setSeVolumeByWorkId( spep_0 + 546, SE012, 42 );
setSeVolumeByWorkId( spep_0 + 547, SE012, 44.1 );
setSeVolumeByWorkId( spep_0 + 548, SE012, 46.2 );
setSeVolumeByWorkId( spep_0 + 549, SE012, 48.3 );
setSeVolumeByWorkId( spep_0 + 550, SE012, 50.4 );
setSeVolumeByWorkId( spep_0 + 551, SE012, 52.5 );
setSeVolumeByWorkId( spep_0 + 552, SE012, 54.6 );
setSeVolumeByWorkId( spep_0 + 553, SE012, 56.7 );
setSeVolumeByWorkId( spep_0 + 554, SE012, 58.8 );
setSeVolumeByWorkId( spep_0 + 555, SE012, 60.9 );
setSeVolumeByWorkId( spep_0 + 556, SE012, 63 );
setSeVolumeByWorkId( spep_0 + 557, SE012, 65.1 );
setSeVolumeByWorkId( spep_0 + 558, SE012, 67.2 );
setSeVolumeByWorkId( spep_0 + 559, SE012, 69.3 );
setSeVolumeByWorkId( spep_0 + 560, SE012, 71.4 );
setSeVolumeByWorkId( spep_0 + 561, SE012, 73.5 );
setSeVolumeByWorkId( spep_0 + 562, SE012, 75.6 );
setSeVolumeByWorkId( spep_0 + 563, SE012, 77.7 );
setSeVolumeByWorkId( spep_0 + 564, SE012, 79.8 );
setSeVolumeByWorkId( spep_0 + 565, SE012, 81.9 );
setSeVolumeByWorkId( spep_0 + 566, SE012, 84 );
setSeVolumeByWorkId( spep_0 + 567, SE012, 86.1 );
setSeVolumeByWorkId( spep_0 + 568, SE012, 88.2 );
setSeVolumeByWorkId( spep_0 + 569, SE012, 90.3 );
setSeVolumeByWorkId( spep_0 + 570, SE012, 92.4 );
setSeVolumeByWorkId( spep_0 + 571, SE012, 94.5 );
setSeVolumeByWorkId( spep_0 + 572, SE012, 96.6 );
setSeVolumeByWorkId( spep_0 + 573, SE012, 98.7 );
setSeVolumeByWorkId( spep_0 + 574, SE012, 100 );
setSeVolumeByWorkId( spep_0 + 594, SE012, 90);
stopSe( spep_0 + 680, SE012, 0 );

--気ダメ爆発
SE013 = playSe( spep_0 + 694, 1266 );
setSeVolumeByWorkId( spep_0 + 694, SE013, 0 );
setSeVolumeByWorkId( spep_0 + 695, SE013, 2.6 );
setSeVolumeByWorkId( spep_0 + 696, SE013, 5.2 );
setSeVolumeByWorkId( spep_0 + 697, SE013, 7.8 );
setSeVolumeByWorkId( spep_0 + 698, SE013, 10.4 );
setSeVolumeByWorkId( spep_0 + 699, SE013, 13 );
setSeVolumeByWorkId( spep_0 + 700, SE013, 15.6 );
setSeVolumeByWorkId( spep_0 + 701, SE013, 18.2 );
setSeVolumeByWorkId( spep_0 + 702, SE013, 20.8 );
setSeVolumeByWorkId( spep_0 + 703, SE013, 23.4 );
setSeVolumeByWorkId( spep_0 + 704, SE013, 26 );
setSeVolumeByWorkId( spep_0 + 705, SE013, 28.6 );
setSeVolumeByWorkId( spep_0 + 706, SE013, 31.2 );
setSeVolumeByWorkId( spep_0 + 707, SE013, 33.8 );
setSeVolumeByWorkId( spep_0 + 708, SE013, 36.4 );
setSeVolumeByWorkId( spep_0 + 709, SE013, 39 );
setSeVolumeByWorkId( spep_0 + 710, SE013, 41.6 );
setSeVolumeByWorkId( spep_0 + 711, SE013, 44.2 );
setSeVolumeByWorkId( spep_0 + 712, SE013, 46.8 );
setSeVolumeByWorkId( spep_0 + 713, SE013, 49.4 );
setSeVolumeByWorkId( spep_0 + 714, SE013, 52 );
setSeVolumeByWorkId( spep_0 + 715, SE013, 54.6 );
setSeVolumeByWorkId( spep_0 + 715, SE013, 56 );
setStartTimeMs( SE013,  2300 );
SE015 = playSe( spep_0 + 692, 1265 );
setSeVolumeByWorkId( spep_0 + 692, SE015, 0 );
setSeVolumeByWorkId( spep_0 + 693, SE015, 3.2 );
setSeVolumeByWorkId( spep_0 + 694, SE015, 6.4 );
setSeVolumeByWorkId( spep_0 + 695, SE015, 9.6 );
setSeVolumeByWorkId( spep_0 + 696, SE015, 12.8 );
setSeVolumeByWorkId( spep_0 + 697, SE015, 16 );
setSeVolumeByWorkId( spep_0 + 698, SE015, 19.2 );
setSeVolumeByWorkId( spep_0 + 699, SE015, 22.4 );
setSeVolumeByWorkId( spep_0 + 700, SE015, 25.6 );
setSeVolumeByWorkId( spep_0 + 701, SE015, 28.8 );
setSeVolumeByWorkId( spep_0 + 702, SE015, 32 );
setSeVolumeByWorkId( spep_0 + 703, SE015, 35.2 );
setSeVolumeByWorkId( spep_0 + 704, SE015, 38.4 );
setSeVolumeByWorkId( spep_0 + 705, SE015, 41.6 );
setSeVolumeByWorkId( spep_0 + 706, SE015, 44.8 );
setSeVolumeByWorkId( spep_0 + 707, SE015, 48 );
setSeVolumeByWorkId( spep_0 + 708, SE015, 51.2 );
setSeVolumeByWorkId( spep_0 + 709, SE015, 54.4 );
setSeVolumeByWorkId( spep_0 + 710, SE015, 57.6 );
setSeVolumeByWorkId( spep_0 + 711, SE015, 60.8 );
setSeVolumeByWorkId( spep_0 + 712, SE015, 64 );
setSeVolumeByWorkId( spep_0 + 713, SE015, 67.2 );
setSeVolumeByWorkId( spep_0 + 714, SE015, 70 );
setStartTimeMs( SE015,  1283 );
SE016 = playSe( spep_0 + 690, 1264 );
setSeVolumeByWorkId( spep_0 + 690, SE016, 0 );
setSeVolumeByWorkId( spep_0 + 691, SE016, 3.3 );
setSeVolumeByWorkId( spep_0 + 692, SE016, 6.6 );
setSeVolumeByWorkId( spep_0 + 693, SE016, 9.9 );
setSeVolumeByWorkId( spep_0 + 694, SE016, 13.2 );
setSeVolumeByWorkId( spep_0 + 695, SE016, 16.5 );
setSeVolumeByWorkId( spep_0 + 696, SE016, 19.8 );
setSeVolumeByWorkId( spep_0 + 697, SE016, 23.1 );
setSeVolumeByWorkId( spep_0 + 698, SE016, 26.4 );
setSeVolumeByWorkId( spep_0 + 699, SE016, 29.7 );
setSeVolumeByWorkId( spep_0 + 700, SE016, 33 );
setSeVolumeByWorkId( spep_0 + 701, SE016, 36.3 );
setSeVolumeByWorkId( spep_0 + 702, SE016, 39.6 );
setSeVolumeByWorkId( spep_0 + 703, SE016, 42.9 );
setSeVolumeByWorkId( spep_0 + 704, SE016, 46.2 );
setSeVolumeByWorkId( spep_0 + 705, SE016, 49.5 );
setSeVolumeByWorkId( spep_0 + 706, SE016, 52.8 );
setSeVolumeByWorkId( spep_0 + 707, SE016, 56.1 );
setSeVolumeByWorkId( spep_0 + 708, SE016, 59.4 );
setSeVolumeByWorkId( spep_0 + 709, SE016, 62.7 );
setSeVolumeByWorkId( spep_0 + 710, SE016, 66 );
setSeVolumeByWorkId( spep_0 + 711, SE016, 69.3 );
setSeVolumeByWorkId( spep_0 + 712, SE016, 72 );
setStartTimeMs( SE016,  400 );
stopSe( spep_0 + 758, SE016, 40 );
SE017 = playSe( spep_0 + 678, 1024 );

--光溢れる
SE020 = playSe( spep_0 + 784, 1306 );
setSeVolumeByWorkId( spep_0 + 784, SE020, 126 );
SE021 = playSe( spep_0 + 808, 1306 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 +830; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE020, 0 );
    stopSe( SP_dodge - 12, SE021, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--気ダメ爆発
stopSe( spep_0 + 856, SE013, 28 );
stopSe( spep_0 + 856, SE015, 28 );

--地鳴り音
stopSe( spep_0 + 858, SE009, 22 );

--光溢れる
stopSe( spep_0 + 856, SE020, 28 );
stopSe( spep_0 + 860, SE021, 44 );


--敵飲まれる
SE019 = playSe( spep_0 + 904, 1175 );
setSeVolumeByWorkId( spep_0 + 904, SE019, 0 );
setSeVolumeByWorkId( spep_0 + 905, SE019, 2 );
setSeVolumeByWorkId( spep_0 + 906, SE019, 4 );
setSeVolumeByWorkId( spep_0 + 907, SE019, 6 );
setSeVolumeByWorkId( spep_0 + 908, SE019, 8 );
setSeVolumeByWorkId( spep_0 + 909, SE019, 10 );
setSeVolumeByWorkId( spep_0 + 910, SE019, 12 );
setSeVolumeByWorkId( spep_0 + 911, SE019, 14 );
setSeVolumeByWorkId( spep_0 + 912, SE019, 16 );
setSeVolumeByWorkId( spep_0 + 913, SE019, 18 );
setSeVolumeByWorkId( spep_0 + 914, SE019, 20 );
setSeVolumeByWorkId( spep_0 + 915, SE019, 22 );
setSeVolumeByWorkId( spep_0 + 916, SE019, 24 );
setSeVolumeByWorkId( spep_0 + 917, SE019, 26 );
setSeVolumeByWorkId( spep_0 + 918, SE019, 28 );
setSeVolumeByWorkId( spep_0 + 919, SE019, 30 );
setSeVolumeByWorkId( spep_0 + 920, SE019, 32 );
setSeVolumeByWorkId( spep_0 + 921, SE019, 34 );
setSeVolumeByWorkId( spep_0 + 922, SE019, 36 );
setSeVolumeByWorkId( spep_0 + 923, SE019, 38 );
setSeVolumeByWorkId( spep_0 + 924, SE019, 40 );
setStartTimeMs( SE019,  2067 );
stopSe( spep_0 + 1020, SE019, 20 );
SE024 = playSe( spep_0 + 888, 1226 );
stopSe( spep_0 + 1020, SE024, 20 );
SE025 = playSe( spep_0 + 888, 1161 );
setSeVolumeByWorkId( spep_0 + 888, SE025, 71 );
stopSe( spep_0 + 990, SE025, 50 );
SE027 = playSe( spep_0 + 916, 1258 );
setSeVolumeByWorkId( spep_0 + 916, SE027, 71 );
--爆発
SE022 = playSe( spep_0 + 834, 1069 );
SE023 = playSe( spep_0 + 850, 1159 );
setSeVolumeByWorkId( spep_0 + 850, SE023, 79 );

--敵消える
SE026 = playSe( spep_0 + 1006, 1255 );
setSeVolumeByWorkId( spep_0 + 1006, SE026, 0 );
setSeVolumeByWorkId( spep_0 + 1007, SE026, 12.5 );
setSeVolumeByWorkId( spep_0 + 1008, SE026, 25 );
setSeVolumeByWorkId( spep_0 + 1009, SE026, 37.5 );
setSeVolumeByWorkId( spep_0 + 1010, SE026, 50 );
setSeVolumeByWorkId( spep_0 + 1011, SE026, 62.5 );
setSeVolumeByWorkId( spep_0 + 1012, SE026, 75 );
setSeVolumeByWorkId( spep_0 + 1013, SE026, 87.5 );
setSeVolumeByWorkId( spep_0 + 1014, SE026, 100 );
setStartTimeMs( SE026,  1517 );
stopSe( spep_0 + 1020, SE026, 20 );
SE029 = playSe( spep_0 + 1006, 1182 );
setSeVolumeByWorkId( spep_0 + 1006, SE029, 60 );
SE030 = playSe( spep_0 + 1006, 1021 );
setSeVolumeByWorkId( spep_0 + 1006, SE030, 63 );

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_0 + 920 );
entryFade( spep_0 +1030, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_0 + 1040 );
else end
end
------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

	if(_IS_DODGE_ == 1) then

	SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える
	pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
	pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
	stopMovie( SP_dodge + 9 );   -- 停止

	playSe( SP_dodge-12, 1042);

	speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
	setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

	kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
		if (_IS_PLAYER_SIDE_ == 1) then

			setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

		else

			setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

		end

	setEffAlphaKey( SP_dodge, kaihi, 255);

	pauseAll( SP_dodge, 67);

	entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

	endPhase(SP_dodge+10);
	do return end
	else end

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_z + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_z + 80, hit_f, 0, 0, 0 );
setEffScaleKey( spep_z + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 80, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, hit_f, 0 );
setEffRotateKey( spep_z + 80, hit_f, 0 );
setEffAlphaKey( spep_z + 0, hit_f, 255 );
setEffAlphaKey( spep_z + 80, hit_f, 255 );

--敵の動き
setDisp( spep_z + 0, 1, 1);
setDisp( spep_z-1 + 38, 1, 0);

changeAnime( spep_z + 0, 1, 106);

setBlendColor(spep_z + 0,1,5,1,1,1,0.65);
setBlendColor(spep_z + 38,1,5,1,1,1,0.65);
setBlendColor(spep_z + 39,1,5,1,1,1,0);

setMoveKey( spep_z + 0, 1, -37.9, -182.9 , 0 );
--setMoveKey( spep_z-3 + 2, 1, -33.5, -191.7 , 0 );
setMoveKey( spep_z-3 + 4, 1, -33.5, -191.7 , 0 );
setMoveKey( spep_z-3 + 6, 1, -33.5, -169.7 , 0 );
setMoveKey( spep_z-3 + 8, 1, -33.5, -198.3 , 0 );
setMoveKey( spep_z-3 + 10, 1, -33.5, -167.5 , 0 );
setMoveKey( spep_z-3 + 12, 1, -48.9, -202.7 , 0 );
setMoveKey( spep_z-3 + 14, 1, -35.7, -158.7 , 0 );
setMoveKey( spep_z-3 + 16, 1, -35.7, -180.7 , 0 );
setMoveKey( spep_z-3 + 18, 1, -35.7, -158.7 , 0 );
setMoveKey( spep_z-3 + 20, 1, -40.1, -196.1 , 0 );
setMoveKey( spep_z-3 + 22, 1, -26.9, -185.1 , 0 );
setMoveKey( spep_z-3 + 24, 1, -15.9, -207.1 , 0 );
setMoveKey( spep_z-3 + 26, 1, -15.9, -171.9 , 0 );
setMoveKey( spep_z-3 + 28, 1, -26.9, -200.5 , 0 );
setMoveKey( spep_z-3 + 30, 1, -22.5, -174.1 , 0 );
setMoveKey( spep_z-3 + 32, 1, -13.7, -207.1 , 0 );
setMoveKey( spep_z-3 + 34, 1, -0.5, -163.1 , 0 );
setMoveKey( spep_z-3 + 36, 1, -0.5, -198.3 , 0 );
setMoveKey( spep_z-1 + 38, 1, -0.5, -198.3 , 0 );

setScaleKey( spep_z + 0, 1, 3.96, 3.96 );
setScaleKey( spep_z-1 + 38, 1, 3.96, 3.96 );

setRotateKey( spep_z + 0, 1, -25 );
setRotateKey( spep_z-1 + 38, 1, -25 );

--SE
--敵飲まれる
SE031 = playSe( spep_z + 0, 1258 );
setSeVolumeByWorkId( spep_z + 0, SE031, 63 );
stopSe( spep_z + 58, SE031, 22 );
SE033 = playSe( spep_z + 4, 1278 );
setSeVolumeByWorkId( spep_z + 4, SE033, 56 );
stopSe( spep_z + 58, SE033, 22 );
SE034 = playSe( spep_z + 4, 1226 );
stopSe( spep_z + 58, SE034, 22 );
SE035 = playSe( spep_z + 4, 1161 );
setSeVolumeByWorkId( spep_z + 4, SE035, 71 );
stopSe( spep_z + 58, SE035, 22 );

--敵消える
SE028 = playSe( spep_z + 36, 1255 );
setSeVolumeByWorkId( spep_z + 36, SE028, 81 );
setStartTimeMs( SE028,  1517 );
stopSe( spep_z + 66, SE028, 46 );	
SE032 = playSe( spep_z + 94, 1255 );
setSeVolumeByWorkId( spep_z + 94, SE032, 81 );
setStartTimeMs( SE032,  1517 );
stopSe( spep_z + 124, SE032, 46 );
SE036 = playSe( spep_z + 36, 1182 );
setSeVolumeByWorkId( spep_z + 36, SE036, 60 )
SE037 = playSe( spep_z + 36, 1021 );
setSeVolumeByWorkId( spep_z + 36, SE037, 63 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_z + 0 );
entryFade( spep_z +70, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_z + 80 );
end