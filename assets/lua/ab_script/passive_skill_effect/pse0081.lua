--1031120:UR_ヒット_登場時演出
--sp_effect_b4_00380
--pse0081

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163750;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 830;

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

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 216, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--腕構える
SE003 = playSeVer2( spep_0 + 88, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE003,  400 );
SE004 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 96, 1012, "", 0, 0, 0, -1);

--気ダメ
SE006 = playSeVer2( spep_0 + 136, 1298, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 136, 1068, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 136, 1145, "", 0, 0, 0, -1);

--地響き
SE009 = playSeVer2( spep_0 + 136, 1044, "",spep_0 + 344, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 136, SE009, 63 );

--オーラ
SE010 = playSeVer2( spep_0 + 136, 1227, "",spep_0 + 346, 0, 28, -1);

--気ダメ
SE011 = playSeVer2( spep_0 + 148, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE011, 193 );

--オーラ
SE012 = playSeVer2( spep_0 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE012, 71 );
SE013 = playSeVer2( spep_0 + 180, 45, "",spep_0 + 220, 0, 20, -1);

--風圧音
SE014 = playSeVer2( spep_0 + 192, 1427, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 204, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE015, 71 );
SE016 = playSeVer2( spep_0 + 204, 45, "",spep_0 + 244, 0, 20, -1);
SE017 = playSeVer2( spep_0 + 228, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE017, 71 );
SE018 = playSeVer2( spep_0 + 228, 45, "",spep_0 + 268, 0, 20, -1);
SE019 = playSeVer2( spep_0 + 252, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE019, 71 );
SE020 = playSeVer2( spep_0 + 252, 45, "",spep_0 + 292, 0, 20, -1);
SE021 = playSeVer2( spep_0 + 276, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE021, 71 );
SE022 = playSeVer2( spep_0 + 276, 45, "",spep_0 + 316, 0, 20, -1);

--気弾ける
SE023 = playSeVer2( spep_0 + 286, 1426, "",spep_0 + 396, 0, 70, -1);
SE024 = playSeVer2( spep_0 + 290, 1254, "",spep_0 + 344, 0, 32, -1);

--環境音
SE025 = playSeVer2( spep_0 + 296, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE025, 25 );

--足構える
SE026 = playSeVer2( spep_0 + 356, 1106, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 358, 1192, "",spep_0 + 382, 0, 12, -1);
SE028 = playSeVer2( spep_0 + 358, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE028, 79 );

--セリフカットイン
SE029 = playSeVer2( spep_0 + 390, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE029, 63 );

--環境音
SE030 = playSeVer2( spep_0 + 476, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE030, 25 );

--決め
SE031 = playSeVer2( spep_0 + 730, 1369, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「はああああ！！」
playVoice( spep_0 + 108, 983 );
setVoiceVolume( spep_0 + 108, 983, 132 );

--「最新のオレのポテンシャルを最大限まで引き出す構えを考えるとこうなる」
playVoice( spep_0 + 386, 984 );
setVoiceVolume( spep_0 + 386, 984, 132 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --830F

else end
