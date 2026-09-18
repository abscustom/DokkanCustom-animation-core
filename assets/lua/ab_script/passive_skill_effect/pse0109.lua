--1032580:LR_超サイヤ人3ベジータ(DAIMA)_登場時演出
--battle_301348
--pse0109

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3296;  -- 登場時演出 ef_001

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

setupMovie(0 , SP_01, 0, 1);

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1418;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出（ef_001）
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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 346, 0, 106, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--セリフカットイン
SE002 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 63 );
--構える
SE003 = playSeVer2( spep_0 + 132, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE003, 63 );
--飛び上がる
SE004 = playSeVer2( spep_0 + 206, 44, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 206, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE005, 63 );
--気ダメ
SE006 = playSeVer2( spep_0 + 238, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 238, 1503, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 252, 1504, "", 0, 0, 0, -1);

--画面遷移
SE010 = playSeVer2( spep_0 + 282, 8, "", 0, 0, 0, -1);

--飛行音
SE012 = playSeVer2( spep_0 + 302, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE012, 71 );

--３になる
SE015 = playSeVer2( spep_0 + 346, 1371, "",spep_0 + 588, 0, 50, -1);
setPitch( spep_0 + 346, SE015, 800 );
setTimeStretch( SE015, 1.53, 30, 4 );
SE016 = playSeVer2( spep_0 + 346, 1026, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 346, 1374, "",spep_0 + 430, 0, 24, -1);
SE018 = playSeVer2( spep_0 + 346, 1265, "",spep_0 + 588, 0, 54, -1);

--３になる
SE020 = playSeVer2( spep_0 + 362, 1362, "",spep_0 + 608, 28, 54, -1);
setSeVolumeByWorkId( spep_0 + 362, SE020, 79 );
setPitch( spep_0 + 362, SE020, -900 );
setTimeStretch( SE020, 0.36, 30, 4 );

--３になる
SE024 = playSeVer2( spep_0 + 432, 1468, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE024, 81 );

--ズーム
SE028 = playSeVer2( spep_0 + 512, 1072, "", 0, 0, 0, -1);

--飛んでいく
SE031 = playSeVer2( spep_0 + 560, 1025, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 560, 1452, "", 0, 0, 0, -1);

--地響き
SE037 = playSeVer2( spep_0 + 654, 1226, "",spep_0 + 1014, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 654, SE037, 79 );

--気を高める
SE040 = playSeVer2( spep_0 + 698, 1491, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 698, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 698, SE041, 126 );
SE042 = playSeVer2( spep_0 + 702, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 702, SE042, 79 );
SE043 = playSeVer2( spep_0 + 710, 1504, "", 0, 0, 0, -1);

--気を高める
SE045 = playSeVer2( spep_0 + 720, 1513, "",spep_0 + 872, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 720, SE045, 79 );

--気を高める
SE048 = playSeVer2( spep_0 + 768, 1356, "",spep_0 + 862, 0, 38, -1);

--気が爆発する
SE051 = playSeVer2( spep_0 + 816, 1282, "",spep_0 + 892, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 816, SE051, 79 );
SE052 = playSeVer2( spep_0 + 846, 1466, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 846, 1159, "",spep_0 + 1010, 0, 90, -1);
setSeVolumeByWorkId( spep_0 + 846, SE053, 72 );
SE054 = playSeVer2( spep_0 + 846, 1213, "",spep_0 + 1018, 0, 84, -1);
SE055 = playSeVer2( spep_0 + 870, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 870, SE055, 71 );

--電気音
SE057 = playSeVer2( spep_0 + 942, 1513, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 942, SE057, 50 );

--電気走る
SE060 = playSeVer2( spep_0 + 970, 1491, "", 0, 0, 0, -1);

--おりてくる
SE063 = playSeVer2( spep_0 + 1024, 63, "",spep_0 + 1122, 0, 60, -1);
SE064 = playSeVer2( spep_0 + 1024, 1508, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1024, SE064, 71 );

--電気走る
SE069 = playSeVer2( spep_0 + 1112, 1491, "", 0, 0, 0, -1);

--電気走る
SE074 = playSeVer2( spep_0 + 1212, 1491, "", 0, 0, 0, -1);

--電気走る
SE078 = playSeVer2( spep_0 + 1278, 1491, "", 0, 0, 0, -1);
SE079 = playSeVer2( spep_0 + 1278, 1043, "", 0, 0, 0, -1);

--ラスト決め
SE082 = playSeVer2( spep_0 + 1328, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1328, SE082, 85 );
SE083 = playSeVer2( spep_0 + 1328, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1328, SE083, 76 );

--オーラ
SE009 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE009, 50 );

SE011 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE011, 50 );

SE013 = playSeVer2( spep_0 + 312, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE013, 50 );
SE014 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE014, 50 );

SE019 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE019, 50 );

SE021 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE021, 50 );
SE022 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE022, 50 );
SE023 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE023, 50 );

SE025 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE025, 50 );
SE026 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE026, 50 );
SE027 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE027, 50 );

SE029 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE029, 50 );
SE030 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE030, 50 );

SE033 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE033, 50 );
SE034 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE034, 50 );
SE035 = playSeVer2( spep_0 + 624, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE035, 50 );
SE036 = playSeVer2( spep_0 + 648, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE036, 50 );

SE038 = playSeVer2( spep_0 + 672, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE038, 50 );
SE039 = playSeVer2( spep_0 + 696, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE039, 50 );

SE046 = playSeVer2( spep_0 + 744, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE046, 50 );
SE047 = playSeVer2( spep_0 + 768, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE047, 50 );

SE044 = playSeVer2( spep_0 + 720, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE044, 50 );

SE056 = playSeVer2( spep_0 + 916, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 916, SE056, 126 );

SE061 = playSeVer2( spep_0 + 990, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 990, SE061, 50 );
SE062 = playSeVer2( spep_0 + 1014, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1014, SE062, 50 );

SE065 = playSeVer2( spep_0 + 1038, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1038, SE065, 50 );
SE066 = playSeVer2( spep_0 + 1062, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1062, SE066, 50 );
SE067 = playSeVer2( spep_0 + 1086, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1086, SE067, 50 );
SE068 = playSeVer2( spep_0 + 1110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1110, SE068, 50 );

SE070 = playSeVer2( spep_0 + 1134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1134, SE070, 50 );
SE071 = playSeVer2( spep_0 + 1158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1158, SE071, 50 );
SE072 = playSeVer2( spep_0 + 1182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1182, SE072, 50 );
SE073 = playSeVer2( spep_0 + 1206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1206, SE073, 50 );

SE075 = playSeVer2( spep_0 + 1230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1230, SE075, 50 );
SE076 = playSeVer2( spep_0 + 1254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1254, SE076, 50 );
SE077 = playSeVer2( spep_0 + 1278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1278, SE077, 50 );

SE049 = playSeVer2( spep_0 + 792, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 792, SE049, 50 );
SE050 = playSeVer2( spep_0 + 816, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 816, SE050, 50 );

SE058 = playSeVer2( spep_0 + 942, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 942, SE058, 50 );
SE059 = playSeVer2( spep_0 + 966, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 966, SE059, 50 );

SE080 = playSeVer2( spep_0 + 1302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1302, SE080, 50 );
SE081 = playSeVer2( spep_0 + 1326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1326, SE081, 50 );

SE084 = playSeVer2( spep_0 + 1350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1350, SE084, 50 );
SE085 = playSeVer2( spep_0 + 1374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1374, SE085, 50 );
SE086 = playSeVer2( spep_0 + 1398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1398, SE086, 50 );

-- ** ボイス ** --

--「元に戻ったオレたちをなめるんじゃないぞ！」
playVoice( spep_0 + 6, 1137 );
setVoiceVolume( spep_0 + 6, 1137, 122 );

--「はああああーーっ！！！」
playVoice( spep_0 + 648, 1138 );
setVoiceVolume( spep_0 + 648, 1138, 122 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1418

else end
