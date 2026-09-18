--1032650:UR_超サイヤ人2孫悟飯(少年期)_登場時演出
--battle_301337
--pse0104

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3286;  -- 登場時演出 ef_001

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

MAX_FRAME_0 = 568;

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
--覚醒する
SE001 = playSeVer2( spep_0 + 4, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 112 );

--画面遷移
SE002 = playSeVer2( spep_0 + 82, 1509, "", 0, 8, 0, -1);
setStartTimeMs( SE002,  267 );

--叫ぶ
SE003 = playSeVer2( spep_0 + 130, 1125, "", 0, 0, 0, -1);
setPitch( spep_0 + 130, SE003, -300 );
setTimeStretch( SE003, 0.8, 30, 4 );
SE004 = playSeVer2( spep_0 + 130, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE004, 78 );

--気が爆発する
SE005 = playSeVer2( spep_0 + 274, 1503, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 276, 1159, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 284, 1258, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 294, 1504, "", 0, 0, 0, -1);

--画面遷移
SE009 = playSeVer2( spep_0 + 394, 8, "", 0, 0, 0, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 404, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE010, 71 );
SE011 = playSeVer2( spep_0 + 420, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE011, 65 );
SE012 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --568f

else end
