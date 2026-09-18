--1030430:LR_超サイヤ人孫悟空+超サイヤ人ベジータ(天使)_アクティブ合体
--battle_301316
--tf0073

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 3255;  -- 合体演出 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 合体演出
-------------------------------------------------
MAX_FRAME_0 = 1378;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 合体演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 910, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕前に出す
SE002 = playSeVer2( spep_0 + 14, 1003, "", 0, 0, 0, -1);

--セリフカットイン
SE003 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE003, 63 );

--ポタラ音
SE004 = playSeVer2( spep_0 + 36, 1372, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 316 );

--画面遷移
SE005 = playSeVer2( spep_0 + 234, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE005, 71 );

--ベジータ腕前に出す
SE006 = playSeVer2( spep_0 + 410, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 418, 1013, "", 0, 0, 0, -1);

--ポタラつける
SE008 = playSeVer2( spep_0 + 522, 1372, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE008, 316 );
setStartTimeMs( SE008,  1133 );
SE009 = playSeVer2( spep_0 + 494, 1372, "",spep_0 + 564, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 494, SE009, 316 );
SE010 = playSeVer2( spep_0 + 494, 1331, "", 0, 0, 0, -1);

--ポタラ光る１
SE011 = playSeVer2( spep_0 + 552, 1273, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 566, 1274, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 568, 1275, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 568, 1271, "", 0, 0, 0, -1);
setPitch( spep_0 + 568, SE014, 500 );
setTimeStretch( SE014, 1.33, 30, 4 );

--ポタラ光る２
SE015 = playSeVer2( spep_0 + 648, 1274, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 650, 1275, "", 0, 0, 0, -1);

--合体する
SE017 = playSeVer2( spep_0 + 762, 1275, "", 0, 0, 0, -1);
setTimeStretch( SE017, 1.38, 30, 4 );
SE018 = playSeVer2( spep_0 + 782, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 782, SE018, 63 );
SE019 = playSeVer2( spep_0 + 782, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 782, SE019, 73 );
SE020 = playSeVer2( spep_0 + 790, 1035, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 790, SE020, 76 );
setTimeStretch( SE020, 1.33, 30, 4 );

--飛び上がる
SE021 = playSeVer2( spep_0 + 842, 1272, "", 0, 0, 0, -1);
setPitch( spep_0 + 842, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );
SE022 = playSeVer2( spep_0 + 842, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 842, SE022, 54 );
SE023 = playSeVer2( spep_0 + 842, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 842, SE023, 73 );
SE024 = playSeVer2( spep_0 + 842, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 842, SE024, 81 );

--弾ける
SE025 = playSeVer2( spep_0 + 906, 1384, "",spep_0 + 1040, 0, 108, -1);
SE026 = playSeVer2( spep_0 + 906, 1011, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 906, 1126, "",spep_0 + 1046, 0, 108, -1);
setPitch( spep_0 + 906, SE027, 300 );
setTimeStretch( SE027, 1.2, 30, 4 );

--地面連続爆発
SE028 = playSeVer2( spep_0 + 942, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 942, SE028, 65 );
SE029 = playSeVer2( spep_0 + 968, 1024, "",spep_0 + 1040, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 968, SE029, 68 );
SE030 = playSeVer2( spep_0 + 972, 1067, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 1002, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1002, SE031, 78 );
SE032 = playSeVer2( spep_0 + 1008, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1008, SE032, 188 );
SE033 = playSeVer2( spep_0 + 1014, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1014, SE033, 78 );
SE034 = playSeVer2( spep_0 + 1030, 1024, "",spep_0 + 1104, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 1030, SE034, 68 );

--ズーム
SE035 = playSeVer2( spep_0 + 1032, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1032, SE035, 119 );

--画面遷移
SE036 = playSeVer2( spep_0 + 1050, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1050, SE036, 68 );

--オーラ
SE037 = playSeVer2( spep_0 + 1064, 1227, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 1064, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1064, SE038, 40 );
SE039 = playSeVer2( spep_0 + 1064, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1064, SE039, 65 );
SE040 = playSeVer2( spep_0 + 1074, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1074, SE040, 63 );
SE041 = playSeVer2( spep_0 + 1098, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE041, 63 );
SE042 = playSeVer2( spep_0 + 1122, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1122, SE042, 63 );
SE043 = playSeVer2( spep_0 + 1146, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1146, SE043, 63 );
SE044 = playSeVer2( spep_0 + 1170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1170, SE044, 63 );

--風圧
SE045 = playSeVer2( spep_0 + 1170, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1170, SE045, 76 );
SE046 = playSeVer2( spep_0 + 1180, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1180, SE046, 65 );

--オーラ
SE047 = playSeVer2( spep_0 + 1194, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1194, SE047, 63 );
SE048 = playSeVer2( spep_0 + 1198, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1198, SE048, 40 );
SE049 = playSeVer2( spep_0 + 1218, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1218, SE049, 63 );
SE050 = playSeVer2( spep_0 + 1242, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1242, SE050, 63 );
SE051 = playSeVer2( spep_0 + 1266, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1266, SE051, 63 );

--ラスト決め
SE052 = playSeVer2( spep_0 + 1288, 1062, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 1288, 1179, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 1288, 1017, "", 0, 0, 0, -1);

--オーラ
SE055 = playSeVer2( spep_0 + 1290, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1290, SE055, 63 );
SE056 = playSeVer2( spep_0 + 1314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1314, SE056, 63 );
SE057 = playSeVer2( spep_0 + 1338, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1338, SE057, 63 );

-- ** ボイス ** --

--「こいつを右の耳につけてくれ！！たのむ！！」
playVoice( spep_0 + 24, 902 );
setVoiceVolume( spep_0 + 24, 902, 112 );

--「ベ……ベジータ……！！！！！」
playVoice( spep_0 + 242, 903 );
setVoiceVolume( spep_0 + 242, 903, 112 );

--「よこせ！！はやく」
playVoice( spep_0 + 410, 904 );
setVoiceVolume( spep_0 + 410, 904, 112 );

--「いいんだろこれで！！！」
playVoice( spep_0 + 524, 905 );
setVoiceVolume( spep_0 + 524, 905, 112 );

--「サンキューベジータ！！！」
playVoice( spep_0 + 658, 906 );
setVoiceVolume( spep_0 + 658, 906, 112 );

--「こいつが超ベジット！！」
playVoice( spep_0 + 1076, 907 );
setVoiceVolume( spep_0 + 1076, 907, 112 );

endPhase( spep_0 + MAX_FRAME_0); -- 1378F

end
