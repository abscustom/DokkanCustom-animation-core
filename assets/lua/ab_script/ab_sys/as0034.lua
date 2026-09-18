--1028630:UR_ブヨン_気弾無効
--sp_effect_a9_00126
--as0034

setPhase(9); --フェーズ9開始

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト
SP_01 = 162694; --開幕～フィニッシュの笑いまで   ef_001

setEnvZoomEnable(0, 0); -- ズーム許可
removeAllEffect(2); --必要

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI(0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

------------------------------------------------------------------------------------------------------------
--冒頭固定
------------------------------------------------------------------------------------------------------------
-- ** 白フェード ** --
entryFade( 4, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );

------------------------------------------------------------------------------------------------------------
--味方側 or 敵側
--味方側の場合はあり
--敵側の場合はコメントアウト
--(ただし敵味方共通のエフェクトの場合で反転した敵側専用のエフェクトがある場合はあり)
------------------------------------------------------------------------------------------------------------
--flipAttackerSide(0)

------------------------------------------------------------------------------------------------------------
--開始4F固定 (顔カットインが入るため)
------------------------------------------------------------------------------------------------------------

spep_0 = 4;

-----------------------------------------------------
-- 開幕～フィニッシュの笑いまで
------------------------------------------------------

MAX_FRAME_0 = 360;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, base_0, 0, 0, 0 );
setEffMoveKey( spep_0  + MAX_FRAME_0, base_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_0, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0 );
setEffAlphaKey( spep_0 + 0, base_0, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1177, "",spep_0 + 144, 0, 60, -1);
SE002 = playSeVer2( spep_0 + 0, 1215, "",spep_0 + 142, 0, 58, -1);

--気弾ヒット
SE003 = playSeVer2( spep_0 + 56, 1011, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 56, 1161, "",spep_0 + 206, 0, 26, -1);
SE005 = playSeVer2( spep_0 + 56, 1211, "",spep_0 + 206, 0, 26, -1);

--跳ね返す
SE006 = playSeVer2( spep_0 + 176, 1251, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 176, 1291, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 176, 1051, "", 0, 0, 0, -1);

--環境音
SE009 = playSeVer2( spep_0 + 176, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE009, 25 );

--息遣い
SE010 = playSeVer2( spep_0 + 256, 4, "", 0, 0, 0, -1);
setPitch( spep_0 + 256, SE010, -800 );
setTimeStretch( SE010, 0.47, 30, 4 );
SE011 = playSeVer2( spep_0 + 282, 4, "", 0, 0, 0, -1);
setPitch( spep_0 + 282, SE011, -800 );
setTimeStretch( SE011, 0.47, 30, 4 );
SE012 = playSeVer2( spep_0 + 308, 4, "", 0, 0, 0, -1);
setPitch( spep_0 + 308, SE012, -800 );
setTimeStretch( SE012, 0.47, 30, 4 );
SE013 = playSeVer2( spep_0 + 334, 4, "", 0, 0, 0, -1);
setPitch( spep_0 + 334, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );

-- ** ダメージ表示 ** --
-- ** 無効演出の場合 ** --
dealDamage( spep_0 + 226 );
endPhase( spep_0 + MAX_FRAME_0 );  --360
