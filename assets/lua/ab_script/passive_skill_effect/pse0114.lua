--1033060:LR_魔人ベジータ+超サイヤ人2孫悟空(天使)_合流演出
--sp_effect_b4_00428
--pse0114

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164439;  -- 最初〜最後まで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 最初〜最後まで
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1356;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで（ef_001）
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );
SE010 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 63 );
SE011 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE011, 63 );
SE015 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE015, 63 );
SE016 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE016, 63 );
SE017 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE017, 63 );
SE022 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE022, 63 );
SE024 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE024, 63 );
SE028 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE028, 40 );
SE031 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE031, 40 );
SE034 = playSeVer2( spep_0 + 312, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE034, 40 );

--電気走る音
SE003 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
SE019 = playSeVer2( spep_0 + 206, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE019, 63 );

--蹴りヒット
SE006 = playSeVer2( spep_0 + 48, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 68, 1153, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 68, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE009, 77 );

--悟空パンチ受け
SE012 = playSeVer2( spep_0 + 114, 1012, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 118, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 118, 1110, "", 0, 0, 0, -1);

--ベジータパンチ受け
SE018 = playSeVer2( spep_0 + 200, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE018, 200 );
SE020 = playSeVer2( spep_0 + 206, 1013, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 210, 1187, "",spep_0 + 310, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 210, SE021, 59 );
SE023 = playSeVer2( spep_0 + 216, 1006, "", 0, 0, 0, -1);

--二人格闘
SE025 = playSeVer2( spep_0 + 246, 1425, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE025, 50 );
SE026 = playSeVer2( spep_0 + 246, 1012, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 248, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE027, 71 );
SE029 = playSeVer2( spep_0 + 260, 1009, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 272, 1013, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 284, 1009, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 302, 1005, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 310, 1012, "", 0, 0, 0, -1);

--岩爆発する
SE036 = playSeVer2( spep_0 + 330, 1024, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 364, 1068, "", 0, 0, 0, -1);



--ベジータ着地
SE038 = playSeVer2( spep_0 + 412, 63, "",spep_0 + 470, 0, 18, -1);
SE039 = playSeVer2( spep_0 + 412, 1508, "",spep_0 + 468, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 412, SE039, 71 );
SE041 = playSeVer2( spep_0 + 442, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE041, 237 );
SE042 = playSeVer2( spep_0 + 442, 1192, "", 0, 0, 0, -1);

--悟空着地
SE045 = playSeVer2( spep_0 + 460, 1508, "",spep_0 + 510, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 460, SE045, 71 );
SE046 = playSeVer2( spep_0 + 460, 44, "",spep_0 + 512, 0, 22, -1);
SE048 = playSeVer2( spep_0 + 482, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE048, 158 );
SE049 = playSeVer2( spep_0 + 482, 1192, "", 0, 0, 0, -1);

--オーラ
SE040 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE040, 40 );
SE044 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE044, 40 );
SE047 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE047, 40 );
SE050 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE050, 40 );
SE051 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE051, 40 );
SE052 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 548, SE052, 40 );
SE053 = playSeVer2( spep_0 + 572, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE053, 40 );
SE054 = playSeVer2( spep_0 + 596, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE054, 40 );
SE056 = playSeVer2( spep_0 + 620, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE056, 40 );
SE057 = playSeVer2( spep_0 + 644, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE057, 40 );
SE060 = playSeVer2( spep_0 + 668, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE060, 40 );
SE061 = playSeVer2( spep_0 + 692, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 692, SE061, 40 );
SE062 = playSeVer2( spep_0 + 716, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE062, 40 );
SE063 = playSeVer2( spep_0 + 740, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 740, SE063, 40 );
SE064 = playSeVer2( spep_0 + 764, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 764, SE064, 40 );
SE065 = playSeVer2( spep_0 + 788, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 788, SE065, 40 );
SE067 = playSeVer2( spep_0 + 812, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 812, SE067, 40 );
SE068 = playSeVer2( spep_0 + 836, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 836, SE068, 40 );
SE069 = playSeVer2( spep_0 + 860, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 860, SE069, 40 );
SE070 = playSeVer2( spep_0 + 884, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 884, SE070, 40 );
SE071 = playSeVer2( spep_0 + 908, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 908, SE071, 40 );
SE072 = playSeVer2( spep_0 + 932, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 932, SE072, 40 );
SE073 = playSeVer2( spep_0 + 956, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 956, SE073, 40 );
SE074 = playSeVer2( spep_0 + 980, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 980, SE074, 40 );
SE076 = playSeVer2( spep_0 + 1004, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1004, SE076, 40 );
SE077 = playSeVer2( spep_0 + 1028, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE077, 40 );
SE078 = playSeVer2( spep_0 + 1052, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1052, SE078, 40 );
SE079 = playSeVer2( spep_0 + 1076, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1076, SE079, 40 );
SE080 = playSeVer2( spep_0 + 1100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1100, SE080, 40 );
SE081 = playSeVer2( spep_0 + 1124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1124, SE081, 40 );
SE083 = playSeVer2( spep_0 + 1148, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1148, SE083, 40 );
SE084 = playSeVer2( spep_0 + 1172, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1172, SE084, 40 );
SE085 = playSeVer2( spep_0 + 1196, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1196, SE085, 40 );
SE086 = playSeVer2( spep_0 + 1220, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1220, SE086, 40 );
SE087 = playSeVer2( spep_0 + 1244, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1244, SE087, 40 );
SE088 = playSeVer2( spep_0 + 1268, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1268, SE088, 40 );
SE090 = playSeVer2( spep_0 + 1292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1292, SE090, 40 );
SE091 = playSeVer2( spep_0 + 1316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1316, SE091, 40 );
SE092 = playSeVer2( spep_0 + 1340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1340, SE092, 40 );

--電気走る音
SE043 = playSeVer2( spep_0 + 446, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE043, 50 );
SE058 = playSeVer2( spep_0 + 654, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE058, 50 );
SE066 = playSeVer2( spep_0 + 788, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 788, SE066, 50 );
SE075 = playSeVer2( spep_0 + 996, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 996, SE075, 50 );
SE082 = playSeVer2( spep_0 + 1134, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1134, SE082, 50 );

--セリフカットイン
SE055 = playSeVer2( spep_0 + 592, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 592, SE055, 63 );

--ベジータ止まる
SE059 = playSeVer2( spep_0 + 664, 1323, "",spep_0 + 708, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 664, SE059, 80 );
setPitch( spep_0 + 664, SE059, -300 );
setTimeStretch( SE059, 0.8, 30, 4 );

--ラスト決め
SE089 = playSeVer2( spep_0 + 1266, 1369, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「ま、待て　ベジータ」
playVoice( spep_0 + 594, 1167 );
setVoiceVolume( spep_0 + 600, 1167, 124 );

--「こんなことやってる場合じゃねえぞ…！」
playVoice( spep_0 + 720, 1168 );
setVoiceVolume( spep_0 + 720, 1168, 124 );

--「……わかった………」
playVoice( spep_0 + 1074, 1169 );
setVoiceVolume( spep_0 + 1074, 1169, 124 );

--「勝負はおあずけだ…」
playVoice( spep_0 + 1204, 1170 );
setVoiceVolume( spep_0 + 1204, 1170, 124 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); -- 1356f

else end