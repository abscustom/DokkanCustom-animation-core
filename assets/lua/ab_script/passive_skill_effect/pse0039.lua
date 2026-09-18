--1027470：LR_セル(完全体)(GT)&フリーザ(最終形態)(GT)_登場時演出
--battle_301272
--pse0039

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3209;  -- 登場時演出 ef_001

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


MAX_FRAME_0 = 872;

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--フリーザ歩いてくる
SE002 = playSeVer2( spep_0 + 0, 1135, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 44, 1135, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 84, 1135, "", 0, 0, 0, -1);

--尻尾ふる
SE005 = playSeVer2( spep_0 + 82, 1003, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 140, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE006, 115 );
SE007 = playSeVer2( spep_0 + 140, 1116, "",spep_0 + 218, 0, 44, -1);
SE008 = playSeVer2( spep_0 + 140, 1289, "",spep_0 + 250, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 62 );
setPitch( spep_0 + 140, SE008, -600 );
setTimeStretch( SE008, 0.6, 30, 4 );

--ズームアウト
SE009 = playSeVer2( spep_0 + 262, 1072, "", 0, 0, 0, -1);

--セリフカットイン
SE010 = playSeVer2( spep_0 + 364, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE010, 79 );
SE011 = playSeVer2( spep_0 + 518, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE011, 79 );
setPitch( spep_0 + 518, SE011, -200 );
setTimeStretch( SE011, 0.87, 30, 4 );

--気ダメ
SE012 = playSeVer2( spep_0 + 672, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE012, 83 );
SE013 = playSeVer2( spep_0 + 672, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE013, 87 );
SE014 = playSeVer2( spep_0 + 672, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE014, 200 );
SE015 = playSeVer2( spep_0 + 672, 1356, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE015, 56 );
SE016 = playSeVer2( spep_0 + 672, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE016, 71 );
SE017 = playSeVer2( spep_0 + 698, 1427, "", 0, 0, 0, -1);

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); --872

else end
