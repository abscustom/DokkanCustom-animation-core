--1032660:UR_魔人ブウ(善)_登場時演出
--sp_effect_a9_00154
--pse0105

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 164109;  -- 登場から終わりまで ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.84);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場から終わりまで
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 578;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場から終わりまで（ef_001）
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
--雲集まる
SE001 = playSeVer2( spep_0 + 0, 1398, "", 242, 0, 10, -1);
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 438, 0, 36, -1);
SE003 = playSeVer2( spep_0 + 0, 1455, "", 0, 0, 0, -1);
--画面遷移
SE004 = playSeVer2( spep_0 + 212, 8, "", 0, 0, 0, -1);
--雲集まる
SE005 = playSeVer2( spep_0 + 242, 1398, "",spep_0 + 438, 0, 38, -1);
--雲さらに集まる
SE006 = playSeVer2( spep_0 + 242, 1271, "",spep_0 + 392, 0, 44, -1);
setTimeStretch( SE006, 1.54, 30, 4 );
--雲集まる
SE007 = playSeVer2( spep_0 + 262, 1455, "",spep_0 + 466, 0, 58, -1);
--雲さらに集まる
SE008 = playSeVer2( spep_0 + 306, 1454, "",spep_0 + 458, 0, 62, -1);
SE009 = playSeVer2( spep_0 + 316, 1453, "", 0, 0, 0, -1);
--画面遷移
SE010 = playSeVer2( spep_0 + 408, 1509, "", 0, 0, 0, -1);
--ブウ登場
SE011 = playSeVer2( spep_0 + 468, 31, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 468, 1247, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 468, 1237, "", 0, 0, 0, -1);

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --578

else end
