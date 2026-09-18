--1031470:LR_超サイヤ人4ゴジータ_登場時演出
--battle_301332
--pse0088

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3278;  -- 登場時演出 ef_001 登場時演出

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
-- 登場時演出
------------------------------------------------------
spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

MAX_FRAME_0 = 1184;

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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 384, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + -6, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--歩み寄る
SE003 = playSeVer2( spep_0 + 36, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 158 );
SE004 = playSeVer2( spep_0 + 42, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE004, 166 );
--セリフカットイン
SE005 = playSeVer2( spep_0 + 44, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 63 );
--歩み寄る
SE006 = playSeVer2( spep_0 + 56, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 174 );
SE007 = playSeVer2( spep_0 + 62, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 158 );
SE008 = playSeVer2( spep_0 + 70, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE008, 158 );
SE009 = playSeVer2( spep_0 + 80, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE009, 166 );
SE010 = playSeVer2( spep_0 + 86, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE010, 162 );
SE011 = playSeVer2( spep_0 + 90, 1192, "", 0, 0, 0, -1);
--腕あげる
SE012 = playSeVer2( spep_0 + 98, 1004, "", 0, 0, 0, -1);
--画面遷移
SE013 = playSeVer2( spep_0 + 146, 1003, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 146, 1048, "", 0, 0, 0, -1);
--腕合わせる
SE015 = playSeVer2( spep_0 + 194, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE015, 67 );
setPitch( spep_0 + 194, SE015, -600 );
setTimeStretch( SE015, 0.6, 30, 4 );
SE016 = playSeVer2( spep_0 + 228, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE016, 63 );
setPitch( spep_0 + 228, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
--指合わせる
SE017 = playSeVer2( spep_0 + 254, 1189, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 254, 1243, "",spep_0 + 316, 16, 12, -1);
SE019 = playSeVer2( spep_0 + 256, 1155, "", 0, 0, 0, -1);
setPitch( spep_0 + 256, SE019, 700 );
setTimeStretch( SE019, 1.47, 30, 4 );
SE020 = playSeVer2( spep_0 + 256, 1178, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 262, 1312, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 266, 1295, "",spep_0 + 334, 0, 12, -1);
--光溢れる
SE023 = playSeVer2( spep_0 + 298, 1263, "", 0, 18, 0, -1);
setStartTimeMs( SE023, 133 );
SE024 = playSeVer2( spep_0 + 302, 1273, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 308, 1274, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 318, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE026, 71 );
SE027 = playSeVer2( spep_0 + 318, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE027, 82 );
--光中
SE028 = playSeVer2( spep_0 + 382, 1396, "",spep_0 + 786, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 382, SE028, 214 );
setPitch( spep_0 + 382, SE028, -300 );
setTimeStretch( SE028, 0.8, 30, 4 );
SE029 = playSeVer2( spep_0 + 398, 1227, "",spep_0 + 796, 0, 106, -1);
--気が弾ける1
SE030 = playSeVer2( spep_0 + 548, 1258, "",spep_0 + 676, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 548, SE030, 71 );
SE031 = playSeVer2( spep_0 + 548, 1479, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 548, 1483, "", 0, 0, 0, -1);
--気が弾ける2
SE033 = playSeVer2( spep_0 + 658, 1258, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 658, 1479, "",spep_0 + 766, 0, 52, -1);
SE035 = playSeVer2( spep_0 + 658, 1484, "", 0, 0, 0, -1);
--ラスト決め
SE055 = playSeVer2( spep_0 + 1105, 13, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 1105, 1062, "", 0, 0, 0, -1);
--オーラ
SE036 = playSeVer2( spep_0 + 732, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 732, SE036, 59 );
SE037 = playSeVer2( spep_0 + 732, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 732, SE037, 58 );
SE038 = playSeVer2( spep_0 + 734, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 734, SE038, 50 );
SE039 = playSeVer2( spep_0 + 744, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 744, SE039, 37 );
SE040 = playSeVer2( spep_0 + 758, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 758, SE040, 50 );
SE041 = playSeVer2( spep_0 + 782, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 782, SE041, 50 );
SE042 = playSeVer2( spep_0 + 806, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806, SE042, 50 );
SE043 = playSeVer2( spep_0 + 830, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 830, SE043, 50 );
SE044 = playSeVer2( spep_0 + 854, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 854, SE044, 50 );
SE045 = playSeVer2( spep_0 + 878, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 878, SE045, 50 );
SE046 = playSeVer2( spep_0 + 902, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 902, SE046, 50 );
SE047 = playSeVer2( spep_0 + 926, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 926, SE047, 50 );
SE048 = playSeVer2( spep_0 + 950, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 950, SE048, 50 );
SE049 = playSeVer2( spep_0 + 974, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 974, SE049, 50 );
SE050 = playSeVer2( spep_0 + 998, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 998, SE050, 50 );
SE051 = playSeVer2( spep_0 + 1022, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1022, SE051, 50 );
SE052 = playSeVer2( spep_0 + 1046, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1046, SE052, 50 );
SE053 = playSeVer2( spep_0 + 1070, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE053, 50 );
SE054 = playSeVer2( spep_0 + 1094, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1094, SE054, 50 );
SE057 = playSeVer2( spep_0 + 1118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1118, SE057, 50 );
SE058 = playSeVer2( spep_0 + 1142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1142, SE058, 50 );
SE059 = playSeVer2( spep_0 + 1166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1166, SE059, 50 );

-- ** ボイス ** --

--「フュー…ジョン!」
playVoice( spep_0 + 36, 1038 );
setVoiceVolume( spep_0 + 36, 1038, 100 );
--「はっ!!」
playVoice( spep_0 + 196, 1039 );
setVoiceVolume( spep_0 + 196, 1039, 130 );
--「オレは孫悟空でもベジータでもない」
playVoice( spep_0 + 740, 1040 );
setVoiceVolume( spep_0 + 740, 1040, 100 );
--「オレはキサマを倒すものだ」
playVoice( spep_0 + 966, 1041 );
setVoiceVolume( spep_0 + 966, 1041, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --1184

else end
