--1028320：LR_孫悟飯(ビースト)_登場時演出
--battle_301282
--pse0044

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3221;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 584;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場時演出 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 音 ** --
--気が爆発する
SE001 = playSeVer2( spep_0 + 0, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 80 );
SE002 = playSeVer2( spep_0 + 0, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );
SE003 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 172, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 68 );
SE004 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 176, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 143 );
SE005 = playSeVer2( spep_0 + 0, 1427, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 14, 1121, "",spep_0 + 164, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 14, SE006, 58 );

--画面遷移
SE007 = playSeVer2( spep_0 + 106, 8, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 124, 1176, "", 0, 0, 0, -1);
setPitch( spep_0 + 124, SE008, -1200 );
setTimeStretch( SE008, 0.2, 30, 4 );

--電撃
SE009 = playSeVer2( spep_0 + 124, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE009, 73 );
setPitch( spep_0 + 124, SE009, -1200 );
setTimeStretch( SE009, 0.2, 30, 4 );

--オーラ
SE010 = playSeVer2( spep_0 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE010, 50 );
setPitch( spep_0 + 124, SE010, -800 );
setTimeStretch( SE010, 0.47, 30, 4 );
SE011 = playSeVer2( spep_0 + 148, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE011, 50 );
setPitch( spep_0 + 148, SE011, -800 );
setTimeStretch( SE011, 0.47, 30, 4 );

--画面遷移２
SE012 = playSeVer2( spep_0 + 168, 1237, "", 0, 4, 0, -1);
setStartTimeMs( SE012,  128 );
setPitch( spep_0 + 168, SE012, -260 );
setTimeStretch( SE012, 0.9, 30, 4 );

--オーラ
SE013 = playSeVer2( spep_0 + 172, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE013, 50 );
setPitch( spep_0 + 172, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );
SE014 = playSeVer2( spep_0 + 196, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE014, 50 );
setPitch( spep_0 + 196, SE014, -800 );
setTimeStretch( SE014, 0.47, 30, 4 );
SE015 = playSeVer2( spep_0 + 220, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE015, 50 );
setPitch( spep_0 + 220, SE015, -800 );
setTimeStretch( SE015, 0.47, 30, 4 );

--画面遷移３
SE016 = playSeVer2( spep_0 + 232, 1232, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 244, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE017, 50 );
setPitch( spep_0 + 244, SE017, -800 );
setTimeStretch( SE017, 0.47, 30, 4 );
SE018 = playSeVer2( spep_0 + 268, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE018, 50 );
setPitch( spep_0 + 268, SE018, -800 );
setTimeStretch( SE018, 0.47, 30, 4 );
SE019 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE019, 50 );
setPitch( spep_0 + 292, SE019, -800 );
setTimeStretch( SE019, 0.47, 30, 4 );

--髪アップ
SE020 = playSeVer2( spep_0 + 302, 44, "", 0, 0, 0, -1);
setPitch( spep_0 + 302, SE020, -400 );
setTimeStretch( SE020, 0.73, 30, 4 );

--オーラ
SE021 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE021, 50 );
setPitch( spep_0 + 316, SE021, -800 );
setTimeStretch( SE021, 0.47, 30, 4 );

--電撃
SE022 = playSeVer2( spep_0 + 330, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE022, 69 );
setPitch( spep_0 + 330, SE022, -1200 );
setTimeStretch( SE022, 0.2, 30, 4 );

--オーラ
SE023 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE023, 50 );
setPitch( spep_0 + 340, SE023, -800 );
setTimeStretch( SE023, 0.47, 30, 4 );

--環境音
SE024 = playSeVer2( spep_0 + 352, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE024, 38 );
setBandpassFilter( spep_0 + 352, SE024, 24, 321 );

--オーラ
SE025 = playSeVer2( spep_0 + 364, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE025, 50 );
setPitch( spep_0 + 364, SE025, -800 );
setTimeStretch( SE025, 0.47, 30, 4 );
SE026 = playSeVer2( spep_0 + 388, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE026, 50 );
setPitch( spep_0 + 388, SE026, -800 );
setTimeStretch( SE026, 0.47, 30, 4 );
SE027 = playSeVer2( spep_0 + 412, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 412, SE027, 50 );
setPitch( spep_0 + 412, SE027, -800 );
setTimeStretch( SE027, 0.47, 30, 4 );
SE028 = playSeVer2( spep_0 + 436, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE028, 50 );
setPitch( spep_0 + 436, SE028, -800 );
setTimeStretch( SE028, 0.47, 30, 4 );

--セリフカットイン
SE029 = playSeVer2( spep_0 + 450, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE029, 63 );

--オーラ
SE030 = playSeVer2( spep_0 + 460, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE030, 50 );
setPitch( spep_0 + 460, SE030, -800 );
setTimeStretch( SE030, 0.47, 30, 4 );

--電撃
SE031 = playSeVer2( spep_0 + 464, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE031, 74 );
setPitch( spep_0 + 464, SE031, -1200 );
setTimeStretch( SE031, 0.2, 30, 4 );

--オーラ
SE032 = playSeVer2( spep_0 + 484, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE032, 50 );
setPitch( spep_0 + 484, SE032, -800 );
setTimeStretch( SE032, 0.47, 30, 4 );
SE033 = playSeVer2( spep_0 + 508, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE033, 50 );
setPitch( spep_0 + 508, SE033, -800 );
setTimeStretch( SE033, 0.47, 30, 4 );
SE034 = playSeVer2( spep_0 + 532, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE034, 50 );
setPitch( spep_0 + 532, SE034, -800 );
setTimeStretch( SE034, 0.47, 30, 4 );

--ラスト決め
SE035 = playSeVer2( spep_0 + 526, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 526, SE035, 82 );
SE036 = playSeVer2( spep_0 + 526, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 526, SE036, 72 );

--オーラ
SE037 = playSeVer2( spep_0 + 556, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE037, 50 );
setPitch( spep_0 + 556, SE037, -800 );
setTimeStretch( SE037, 0.47, 30, 4 );

-- ** ボイス ** --
--「今度は、ボクの番だ」
playVoice( spep_0 + 430, 749 );
setVoiceVolume( spep_0 + 430, 749, 120 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --584

else end
