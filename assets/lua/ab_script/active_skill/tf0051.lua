--1025650：LR_ハッチヒャック(巨大化)(アクティブ巨大化)
--sp_effect_b4_00264
--tf0051

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 160984;	--力溜め、白発光、巨大化、煽りアングル	ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--力溜め、白発光、巨大化、煽りアングル
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 472 -4, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 472 -4, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 472 -4, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 472 -4, eff, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 472 -2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 75 );
SE003 = playSeVer2( spep_0 + 0, 17, "",spep_0 + 118, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 75 );

--巨大化始まり
SE005 = playSeVer2( spep_0 + 72, 1290, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 68 );
setPitch( spep_0 + 72, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );
SE004 = playSeVer2( spep_0 + 58, 1290, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE004, 56 );
setPitch( spep_0 + 58, SE004, -500 );
setTimeStretch( SE004, 0.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 83, 1290, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 83, SE006, 46 );
setPitch( spep_0 + 83, SE006, -500 );
setTimeStretch( SE006, 0.67, 30, 4 );

--地響き
SE007 = playSeVer2( spep_0 + 122, 1044, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE007, 60 );
SE008 = playSeVer2( spep_0 + 122, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE008, 58 );

--大きくなる
SE009 = playSeVer2( spep_0 + 162, 1214, "",spep_0 + 402, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 162, SE009, 254 );
SE010 = playSeVer2( spep_0 + 168, 1325, "",spep_0 + 402, 130, 66, -1);
SE011 = playSeVer2( spep_0 + 206, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE011, 78 );
SE012 = playSeVer2( spep_0 + 230, 1190, "", 0, 14, 0, -1);
setStartTimeMs( SE012,  100 );
setSeVolumeByWorkId( spep_0 + 230, SE012, 126 );
SE013 = playSeVer2( spep_0 + 240, 1232, "", 0, 0, 0, -1);

--地面割れる
SE014 = playSeVer2( spep_0 + 286, 1011, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 286, 1188, "", 0, 0, 0, -1);

--巨大化完了
SE016 = playSeVer2( spep_0 + 322, 1066, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE016, 56 );
SE017 = playSeVer2( spep_0 + 322, 1321, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE017, 54 );
SE018 = playSeVer2( spep_0 + 322, 1024, "", 0, 0, 0, -1);

endPhase( spep_0 + 472 -4 );
else end