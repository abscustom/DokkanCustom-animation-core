-- 1031300:UR_桃白白_登場時演出
-- sp_effect_b4_00381
-- pse0084

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163827;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 906;

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
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 326, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 30, 0, 18, -1);

--セリフカットイン
SE003 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 63 );

--構える
SE004 = playSeVer2( spep_0 + 100, 92, "",spep_0 + 134, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 100, SE004, 56 );

--振りかぶる
SE005 = playSeVer2( spep_0 + 218, 1346, "",spep_0 + 308, 0, 32, -1);

--柱投げる
SE006 = playSeVer2( spep_0 + 262, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE006, 60 );
SE007 = playSeVer2( spep_0 + 262, 1027, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 262, 1278, "",spep_0 + 506, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 262, SE008, 56 );
SE009 = playSeVer2( spep_0 + 262, 1121, "",spep_0 + 422, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 262, SE009, 37 );
setTimeStretch( SE009, 1.42, 30, 4 );

--飛んでくる
SE010 = playSeVer2( spep_0 + 308, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE010, 53 );
setTimeStretch( SE010, 1.24, 30, 4 );
SE011 = playSeVer2( spep_0 + 366, 1019, "", 0, 0, 0, -1);

--柱にのる
SE012 = playSeVer2( spep_0 + 396, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE012, 130 );
SE013 = playSeVer2( spep_0 + 406, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE013, 130 );

--飛んでいく
SE014 = playSeVer2( spep_0 + 424, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE014, 69 );

--画面遷移
SE015 = playSeVer2( spep_0 + 424, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE015, 71 );

--飛んでいく
SE016 = playSeVer2( spep_0 + 430, 1019, "", 0, 0, 0, -1);

--ジャンプ
SE017 = playSeVer2( spep_0 + 482, 1452, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE017, 120 );

--柱地面にささる
SE018 = playSeVer2( spep_0 + 524, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE018, 65 );

--おりてくる
SE019 = playSeVer2( spep_0 + 570, 1117, "", 0, 0, 0, -1);

--着地
SE020 = playSeVer2( spep_0 + 658, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE020, 151 );
SE021 = playSeVer2( spep_0 + 664, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 664, SE021, 151 );

--ラスト決め
SE022 = playSeVer2( spep_0 + 758, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE022, 60 );

-- ** ボイス ** --
--「北東に2千3百キロか…」
playVoice( spep_0 + 2, 1002 );
setVoiceVolume( spep_0 + 2, 1002, 128 );
--「アローハー」
playVoice( spep_0 + 762, 1003 );
setVoiceVolume( spep_0 + 762, 1003, 128 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --906F

else end
