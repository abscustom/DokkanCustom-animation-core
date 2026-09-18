-- 1028370: LR_ガンマ1号&ガンマ2号/ガンマ1号_スタンバイ
-- battle_301284
-- stb0008

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3222;  -- ef_001 スタンバイ演出

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
-- 味方側
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- スタンバイ演出
------------------------------------------------------
MAX_FRAME_0 = 1272;

-- ** エフェクト等 ** --
standby_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );      -- ef_001 スタンバイ演出
setEffMoveKey( spep_0 + 0, standby_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, standby_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, standby_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, standby_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, standby_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, standby_f, 0 );
setEffAlphaKey( spep_0 + 0, standby_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, standby_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 544, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 63 );

--マント音
SE003 = playSeVer2( spep_0 + 126, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE003, 62 );

--1号の動き
SE004 = playSeVer2( spep_0 + 230, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE004, 153 );

--気ダメ始め
SE005 = playSeVer2( spep_0 + 458, 1210, "",spep_0 + 578, 20, 38, -1);
setSeVolumeByWorkId( spep_0 + 458, SE005, 63 );
setStartTimeMs( SE005,  2400 );

--1号の動き２
SE006 = playSeVer2( spep_0 + 332, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE006, 145 );

--気ダメ始め
SE007 = playSeVer2( spep_0 + 458, 1255, "",spep_0 + 576, 18, 36, -1);
setStartTimeMs( SE007,  1533 );
SE008 = playSeVer2( spep_0 + 462, 1371, "",spep_0 + 580, 22, 36, -1);
setStartTimeMs( SE008,  1200 );
SE009 = playSeVer2( spep_0 + 462, 1307, "", 0, 0, 0, -1);

--気弾ける
SE010 = playSeVer2( spep_0 + 534, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 534, SE010, 92 );
SE011 = playSeVer2( spep_0 + 538, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE011, 92 );
SE012 = playSeVer2( spep_0 + 538, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE012, 85 );

--気高まる
SE013 = playSeVer2( spep_0 + 598, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 598, SE013, 80 );
SE014 = playSeVer2( spep_0 + 602, 1176, "",spep_0 + 772, 0, 32, -1);
SE015 = playSeVer2( spep_0 + 602, 1173, "",spep_0 + 740, 0, 40, -1);
SE016 = playSeVer2( spep_0 + 602, 1407, "",spep_0 + 774, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 602, SE016, 174 );
SE017 = playSeVer2( spep_0 + 602, 1361, "",spep_0 + 774, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 602, SE017, 50 );
setPitch( spep_0 + 602, SE017, -1200 );
setTimeStretch( SE017, 0.2, 30, 4 );

--地響き
SE018 = playSeVer2( spep_0 + 668, 1226, "",spep_0 + 770, 0, 26, -1);

--飛び上がる
SE019 = playSeVer2( spep_0 + 724, 1427, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 740, 1173, "",spep_0 + 808, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 740, SE020, 157 );
SE021 = playSeVer2( spep_0 + 740, 1188, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 754, 1277, "", 0, 0, 0, -1);

--飛び上がった後気が弾ける
SE023 = playSeVer2( spep_0 + 790, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 790, SE023, 108 );
setPitch( spep_0 + 790, SE023, -600 );
setTimeStretch( SE023, 0.6, 30, 4 );

--加速していく
SE024 = playSeVer2( spep_0 + 878, 9, "",spep_0 + 1010, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 878, SE024, 79 );
setTimeStretch( SE024, 1.66, 30, 4 );
SE025 = playSeVer2( spep_0 + 878, 1183, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 878, 1356, "",spep_0 + 1058, 0, 36, -1);
setPitch( spep_0 + 878, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );
SE027 = playSeVer2( spep_0 + 878, 1227, "",spep_0 + 1058, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 878, SE027, 73 );
setPitch( spep_0 + 878, SE027, 400 );
setTimeStretch( SE027, 1.27, 30, 4 );
SE028 = playSeVer2( spep_0 + 878, 1019, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 942, 1019, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 1006, 1019, "",spep_0 + 1066, 0, 46, -1);

--画面遷移
SE031 = playSeVer2( spep_0 + 1006, 8, "", 0, 0, 0, -1);

--宇宙で止まる
SE032 = playSeVer2( spep_0 + 1016, 1269, "",spep_0 + 1158, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 1016, SE032, 25 );
SE033 = playSeVer2( spep_0 + 1016, 1181, "",spep_0 + 1156, 0, 40, -1);
SE034 = playSeVer2( spep_0 + 1016, 1444, "",spep_0 + 1158, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 1016, SE034, 158 );

--環境音
SE035 = playSeVer2( spep_0 + 1112, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1112, SE035, 25 );

--空光る
SE036 = playSeVer2( spep_0 + 1122, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1122, SE036, 127 );
SE037 = playSeVer2( spep_0 + 1142, 1303, "",spep_0 + 1258, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 1142, SE037, 65 );
setPitch( spep_0 + 1142, SE037, 400 );
setTimeStretch( SE037, 1.27, 30, 4 );

--ラスト構える
SE038 = playSeVer2( spep_0 + 1214, 1233, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 1220, 1387, "", 0, 4, 0, -1);
setStartTimeMs( SE039,  33 );

--ラスト決め
SE040 = playSeVer2( spep_0 + 1222, 1062, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1222, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1222, SE041, 79 );

-- ** ボイス ** --
--「1号はあいつを引きつけて　時間をかせいでくれ！」
playVoice( spep_0 + 20, 751 );
setVoiceVolume( spep_0 + 20, 751, 110 );

--「2号…！おまえ まさか……！」
playVoice( spep_0 + 208, 752 );
setVoiceVolume( spep_0 + 208, 752, 110 );

--「ふ……」
playVoice( spep_0 + 404, 753 );
setVoiceVolume( spep_0 + 404, 753, 110 );

-- ** おわり ** --
endPhase( spep_0 + MAX_FRAME_0 ); -- 1272

else end