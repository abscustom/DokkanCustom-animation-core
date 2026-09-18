--1031820:LR_四星龍_気弾無効化
--sp_effect_b4_00384
--as0029

setPhase(9); --フェーズ9開始
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト
SP_01 = 163941; -- 最初から最後まで ef_001

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
flipAttackerSide(0);

------------------------------------------------------------------------------------------------------------
--開始4F固定 (顔カットインが入るため)
------------------------------------------------------------------------------------------------------------

spep_0 = 4;

-------------------------------------------------
-- 最初から最後まで
-------------------------------------------------

MAX_FRAME_0 = 318;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 最初から最後まで ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255); --黒 背景

-- ** 音 ** --

--気弾飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1215, "",spep_0 + 124, 0, 46, -1);
setStartTimeMs( SE001, 650);
SE002 = playSeVer2( spep_0 + 0, 1022, "",spep_0 + 108, 0, 36, -1);
--光たちのぼる
SE003 = playSeVer2( spep_0 + 34, 1179, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 34, 1256, "", 0, 0, 0, -1);
--爆発
SE005 = playSeVer2( spep_0 + 72, 1024, "", 0, 0, 0, -1);
--バリアまとってあがってくる
SE006 = playSeVer2( spep_0 + 130, 1495, "",spep_0 + 314, 0, 72, 0.6);
SE007 = playSeVer2( spep_0 + 136, 1271, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 136, SE007, 138 );
--画面遷移
SE008 = playSeVer2( spep_0 + 248, 8, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
-- ** 無効演出の場合 ** --
dealDamage( spep_0 + 170 );
endPhase( spep_0 + MAX_FRAME_0 );  --318