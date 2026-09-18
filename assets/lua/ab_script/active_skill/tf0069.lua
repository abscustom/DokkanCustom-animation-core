-- 1028680: UR_トッポ_アクティブ_変身
-- sp_effect_b4_00318
-- tf0069
  
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
  
-- エフェクト(味方)
SP_01 = 162811; -- ef_001 トッポ変身
 
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
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
 
ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
  
  
-------------------------------------------------
-- アクティブ変身
-------------------------------------------------
 
MAX_FRAME_0 = 1378;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001 トッポ変身
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 768, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
setTimeStretch( SE002, 1.11, 30, 4 );

--地響き
SE003 = playSeVer2( spep_0 + 44, 1044, "",spep_0 + 762, 28, 48, -1);
setSeVolumeByWorkId( spep_0 + 44, SE003, 56 );
setPitch( spep_0 + 44, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );

--雷
SE004 = playSeVer2( spep_0 + 122, 1230, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE004, 126 );
SE005 = playSeVer2( spep_0 + 130, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE005, 38 );
SE006 = playSeVer2( spep_0 + 142, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE006, 117 );
SE008 = playSeVer2( spep_0 + 176, 1230, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE008, 130 );
setPitch( spep_0 + 176, SE008, 200 );
setTimeStretch( SE008, 1.13, 30, 4 );
SE009 = playSeVer2( spep_0 + 226, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE009, 135 );

--岩持ち上がる
SE007 = playSeVer2( spep_0 + 176, 1168, "",spep_0 + 300, 36, 54, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 248, 1227, "",spep_0 + 558, 0, 22, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 264, 1232, "", 0, 0, 0, -1);

--肩盛り上がる
SE012 = playSeVer2( spep_0 + 386, 1190, "", 0, 0, 0, -1);
setPitch( spep_0 + 386, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );
SE013 = playSeVer2( spep_0 + 386, 1009, "", 0, 0, 0, -1);

--足盛り上がる
SE014 = playSeVer2( spep_0 + 418, 1190, "", 0, 0, 0, -1);
setPitch( spep_0 + 418, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );
SE015 = playSeVer2( spep_0 + 418, 1010, "", 0, 0, 0, -1);

--画面遷移
SE016 = playSeVer2( spep_0 + 452, 8, "", 0, 0, 0, -1);

--叫ぶ
SE017 = playSeVer2( spep_0 + 528, 1068, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 536, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 536, SE018, 79 );

--目線カットイン
SE019 = playSeVer2( spep_0 + 662, 1018, "", 0, 0, 0, -1);

--光立ち上る
SE020 = playSeVer2( spep_0 + 722, 1213, "",spep_0 + 956, 0, 116, -1);
setSeVolumeByWorkId( spep_0 + 722, SE020, 61 );
SE021 = playSeVer2( spep_0 + 722, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 722, SE021, 116 );
SE022 = playSeVer2( spep_0 + 722, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 722, SE022, 78 );
setTimeStretch( SE022, 1.42, 30, 4 );

--オーラに包まれる
SE023 = playSeVer2( spep_0 + 818, 1267, "",spep_0 + 1002, 0, 48, -1);
SE024 = playSeVer2( spep_0 + 818, 1407, "",spep_0 + 1028, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 818, SE024, 200 );

--画面遷移
SE025 = playSeVer2( spep_0 + 920, 1072, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 934, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 934, SE026, 72 );

--光立ち上りながらズームアウト
SE027 = playSeVer2( spep_0 + 944, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 944, SE027, 76 );
SE028 = playSeVer2( spep_0 + 952, 1379, "",spep_0 + 1110, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 952, SE028, 132 );
SE029 = playSeVer2( spep_0 + 954, 1213, "",spep_0 + 1104, 24, 28, -1);
setSeVolumeByWorkId( spep_0 + 954, SE029, 67 );
SE030 = playSeVer2( spep_0 + 954, 1226, "",spep_0 + 1116, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 954, SE030, 79 );
SE031 = playSeVer2( spep_0 + 954, 1159, "",spep_0 + 1130, 0, 50, -1);

--風圧
SE033 = playSeVer2( spep_0 + 1056, 1427, "",spep_0 + 1158, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 1056, SE033, 112 );
SE034 = playSeVer2( spep_0 + 1076, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1076, SE034, 91 );

--環境音
SE035 = playSeVer2( spep_0 + 1082, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1082, SE035, 25 );

--画面遷移
SE036 = playSeVer2( spep_0 + 1126, 1271, "",spep_0 + 1252, 22, 58, -1);
setSeVolumeByWorkId( spep_0 + 1126, SE036, 153 );
setStartTimeMs( SE036,  267 );

--オーラ
SE032 = playSeVer2( spep_0 + 1144, 1371, "",spep_0 + 1456, 14, 36, -1);
setSeVolumeByWorkId( spep_0 + 1144, SE032, 35 );
setStartTimeMs( SE032,  1733 );
setPitch( spep_0 + 1144, SE032, -300 );
setTimeStretch( SE032, 0.8, 30, 4 );
SE037 = playSeVer2( spep_0 + 1138, 1267, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1138, SE037, 59 );
SE038 = playSeVer2( spep_0 + 1138, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1138, SE038, 24 );
SE039 = playSeVer2( spep_0 + 1138, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1138, SE039, 55 );

-- ** ボイス ** --
--「もう正義はいらん、覚悟は決めた」
playVoice( spep_0 + 0, 771 );
setVoiceVolume( spep_0 + 0, 771, 110 );

--「うおおおお！！」
playVoice( spep_0 + 518, 772 );
setVoiceVolume( spep_0 + 518, 772, 100 );

--終わり
endPhase( spep_0 + MAX_FRAME_0); -- 1378F

else end