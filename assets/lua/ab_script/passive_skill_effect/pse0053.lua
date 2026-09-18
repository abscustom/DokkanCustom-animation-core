--1028960:LR_セルマックス_登場時演出
--sp_effect_b4_00329
--pse0053

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162930;  -- ゲージ低下～復活まで ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.8);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 758;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ゲージ低下～復活まで(ef_001)
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
--地響き
SE001 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );

--機械音
SE002 = playSeVer2( spep_0 + 4, 53, "",spep_0 + 80, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 77 );

--水中起きる
SE003 = playSeVer2( spep_0 + 52, 1166, "",spep_0 + 170, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 52, SE003, 75 );
SE004 = playSeVer2( spep_0 + 60, 1211, "",spep_0 + 162, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 60, SE004, 69 );
setPitch( spep_0 + 60, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );
SE005 = playSeVer2( spep_0 + 60, 1267, "",spep_0 + 164, 0, 18, -1);
setPitch( spep_0 + 60, SE005, -600 );
setTimeStretch( SE005, 0.6, 30, 4 );

--水あふれる
SE006 = playSeVer2( spep_0 + 144, 1247, "",spep_0 + 276, 0, 40, -1);
setPitch( spep_0 + 144, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 142, 1011, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 142, 1166, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 166, 1247, "",spep_0 + 284, 0, 18, -1);
setPitch( spep_0 + 166, SE009, -700 );
setTimeStretch( SE009, 0.53, 30, 4 );
SE010 = playSeVer2( spep_0 + 166, 1011, "", 0, 0, 0, -1);

--正面水あふれる
SE011 = playSeVer2( spep_0 + 208, 1165, "",spep_0 + 582, 0, 152, -1);
setSeVolumeByWorkId( spep_0 + 208, SE011, 140 );
SE012 = playSeVer2( spep_0 + 216, 1258, "",spep_0 + 384, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 216, SE012, 85 );

--波おきる
SE013 = playSeVer2( spep_0 + 334, 1163, "",spep_0 + 440, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 334, SE013, 245 );
setPitch( spep_0 + 334, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );
SE014 = playSeVer2( spep_0 + 352, 1024, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 352, 1164, "",spep_0 + 628, 0, 156, -1);
setSeVolumeByWorkId( spep_0 + 352, SE015, 148 );

--縁つかむ
SE016 = playSeVer2( spep_0 + 430, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 430, SE016, -600 );
SE017 = playSeVer2( spep_0 + 430, 1153, "", 0, 0, 0, -1);

--叫ぶ
SE018 = playSeVer2( spep_0 + 604, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE018, 63 );
SE019 = playSeVer2( spep_0 + 604, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE019, 63 );
SE020 = playSeVer2( spep_0 + 604, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE020, 69 );
SE021 = playSeVer2( spep_0 + 606, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 606, SE021, 68 );

-- ** ボイス ** --
--「ウガアアアアア！」
playVoice( spep_0 + 598, 800 );
setVoiceVolume( spep_0 + 598, 800, 120 );


-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --758f

else end
