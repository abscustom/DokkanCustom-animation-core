--9931471:LR_超サイヤ人4ゴジータ_アクティブ必殺：龍拳エネミー側
--sp_effect_b1_00338
--sp2898

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側と共通
SP_01b = 164020;  --   ef_001b 奥
--SP_02 = 164021;  -- ef_002 KOループ用

-- 敵側
SP_01r = 164022;  --   ef_001r 敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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
--[[
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
]]
ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 龍拳
-------------------------------------------------
MAX_FRAME_0 = 1748;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 手前(ef_001r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
--[[
KO = entryEffectLife( spep_0 + 1872, SP_02, 100, 0x100, -1, 0, 0, 0); -- KOループ用(ef_002)
setEffMoveKey( spep_0 + 1872, KO, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0 + 100, KO, 0, 0 , 0);
setEffScaleKey( spep_0 + 1872, KO, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0 + 100, KO, 1.0, 1.0);
setEffRotateKey( spep_0 + 1872, KO, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0 + 100, KO, 0);
setEffAlphaKey( spep_0 + 1872, KO, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 + 100, KO, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 74 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 0 );

setMoveKey( spep_0 + 0, 1, -16, 314.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -16, 314.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -16, 314.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -16, 314.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -16, 314.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -16, 314.2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -16, 314.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -16, 314.2 , 0 );

setScaleKey( spep_0 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 74, 1, 0.22, 0.22 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 74, 1, 0 );

setBlendColor( spep_0 + 0, 1, 3, 1.0, 1.0, 1.0, 0.3 );
setBlendColor( spep_0 + 71 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.3 );
setBlendColor( spep_0 + 74 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );


--敵の動き2
setDisp( spep_0 + 598 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 636 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 598 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 598 + OFFSET_X, 1, 429.9, 280 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 429.9, 280 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 401.9, 269.2 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 401.9, 269.2 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 401.7, 269.2 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 401.7, 269.2 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 339.3, 236.7 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 339.3, 236.7 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 339.2, 236.6 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 339.2, 236.6 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 311.1, 219.4 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 311.1, 219.4 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 311, 219.3 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 311, 219.3 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 291.8, 206.4 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 291.8, 206.4 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 291.7, 206.3 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 291.7, 206.3 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 281.8, 198.7 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 281.8, 198.7 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 281.6, 198.7 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 281.6, 198.7 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 276.2, 194.1 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 276.2, 194.1 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 273.3, 191.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 273.3, 191.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 273.2, 191.4 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 273.2, 191.4 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 273.2, 191.4 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 273.2, 191.4 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 273.2, 191.4 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 273.2, 191.4 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 273.2, 191.4 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 273.2, 191.4 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 273.2, 191.4 , 0 );

setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 598 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_0 + 623 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -1.8 );

setBlendColor( spep_0 + 598 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 + 633 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 + 636 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );

--敵の動き3
setDisp( spep_0 + 1408 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1490 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1408 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 1408 + OFFSET_X, 1, -793.2, 21.9 , 0 );
setMoveKey( spep_0 + 1411 + OFFSET_X, 1, -793.2, 21.9 , 0 );
setMoveKey( spep_0 + 1412 + OFFSET_X, 1, -752.4, 30.2 , 0 );
setMoveKey( spep_0 + 1415 + OFFSET_X, 1, -752.4, 30.2 , 0 );
setMoveKey( spep_0 + 1416 + OFFSET_X, 1, -565.7, -10.1 , 0 );
setMoveKey( spep_0 + 1419 + OFFSET_X, 1, -565.7, -10.1 , 0 );
setMoveKey( spep_0 + 1420 + OFFSET_X, 1, -365.5, 13.9 , 0 );
setMoveKey( spep_0 + 1423 + OFFSET_X, 1, -365.5, 13.9 , 0 );
setMoveKey( spep_0 + 1424 + OFFSET_X, 1, -342.1, 20.8 , 0 );
setMoveKey( spep_0 + 1427 + OFFSET_X, 1, -342.1, 20.8 , 0 );
setMoveKey( spep_0 + 1428 + OFFSET_X, 1, -290.5, 29.9 , 0 );
setMoveKey( spep_0 + 1431 + OFFSET_X, 1, -290.5, 29.9 , 0 );
setMoveKey( spep_0 + 1432 + OFFSET_X, 1, -247, 48.9 , 0 );
setMoveKey( spep_0 + 1435 + OFFSET_X, 1, -247, 48.9 , 0 );
setMoveKey( spep_0 + 1436 + OFFSET_X, 1, -235.6, 63.9 , 0 );
setMoveKey( spep_0 + 1441 + OFFSET_X, 1, -235.6, 63.9 , 0 );
setMoveKey( spep_0 + 1442 + OFFSET_X, 1, -253.6, 59.3 , 0 );
setMoveKey( spep_0 + 1447 + OFFSET_X, 1, -253.6, 59.3 , 0 );
setMoveKey( spep_0 + 1448 + OFFSET_X, 1, -281, 48.8 , 0 );
setMoveKey( spep_0 + 1453 + OFFSET_X, 1, -281, 48.8 , 0 );
setMoveKey( spep_0 + 1454 + OFFSET_X, 1, -312.1, 39.5 , 0 );
setMoveKey( spep_0 + 1457 + OFFSET_X, 1, -312.1, 39.5 , 0 );
setMoveKey( spep_0 + 1458 + OFFSET_X, 1, -334.1, 34.1 , 0 );
setMoveKey( spep_0 + 1461 + OFFSET_X, 1, -334.1, 34.1 , 0 );
setMoveKey( spep_0 + 1462 + OFFSET_X, 1, -343.5, 41.8 , 0 );
setMoveKey( spep_0 + 1465 + OFFSET_X, 1, -343.5, 41.8 , 0 );
setMoveKey( spep_0 + 1466 + OFFSET_X, 1, -290, 51.3 , 0 );
setMoveKey( spep_0 + 1469 + OFFSET_X, 1, -290, 51.3 , 0 );
setMoveKey( spep_0 + 1470 + OFFSET_X, 1, -121.4, 76.9 , 0 );
setMoveKey( spep_0 + 1473 + OFFSET_X, 1, -121.4, 76.9 , 0 );
setMoveKey( spep_0 + 1474 + OFFSET_X, 1, -27.4, 85.1 , 0 );
setMoveKey( spep_0 + 1477 + OFFSET_X, 1, -27.4, 85.1 , 0 );
setMoveKey( spep_0 + 1478 + OFFSET_X, 1, -3.8, 91.9 , 0 );
setMoveKey( spep_0 + 1490 + OFFSET_X, 1, -3.8, 91.9 , 0 );

setScaleKey( spep_0 + 1408 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 1411 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 1412 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_0 + 1415 + OFFSET_X, 1, 7.05, 7.05 );
setScaleKey( spep_0 + 1416 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 1419 + OFFSET_X, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 1420 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 1423 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 1424 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 1427 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 1428 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 1431 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 1432 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 1435 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 1436 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 1441 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 1442 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 1447 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 1448 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 1453 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 1454 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 1457 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 1458 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 1461 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 1462 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 1465 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 1466 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 1469 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 1470 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 1473 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 1474 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 1477 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 1478 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 1490 + OFFSET_X, 1, 0.59, 0.59 );

setRotateKey( spep_0 + 1408 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1490 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 1408 + OFFSET_X, 1, 3, 1.0, 0.78, 0.0, 0.4 );
setBlendColor( spep_0 + 1479 + OFFSET_X, 1, 3, 1.0, 0.78, 0.0, 0.4 );
setBlendColor( spep_0 + 1480 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_0 + 1489 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_0 + 1490 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 638, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--雷
SE002 = playSeVer2( spep_0 + 0, 1229, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1230, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 106, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 67 );
SE006 = playSeVer2( spep_0 + 154, 1230, "", 0, 0, 0, -1);

--セリフカットイン
--SE004 = playSeVer2( spep_0 + 66, 1018, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 66, SE004, 63 );

--気ダメ
SE007 = playSeVer2( spep_0 + 264, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 264, 1503, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 284, 1504, "", 0, 0, 0, -1);

--オーラ
SE009 = playSeVer2( spep_0 + 274, 1477, "",spep_0 + 622, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 274, SE009, 25 );
SE011 = playSeVer2( spep_0 + 284, 1176, "",spep_0 + 506, 0, 32, -1);
SE012 = playSeVer2( spep_0 + 284, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE012, 63 );
SE013 = playSeVer2( spep_0 + 308, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE013, 63 );
SE014 = playSeVer2( spep_0 + 332, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE014, 63 );
SE016 = playSeVer2( spep_0 + 356, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE016, 63 );
SE017 = playSeVer2( spep_0 + 380, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE017, 63 );
SE018 = playSeVer2( spep_0 + 404, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE018, 63 );
SE021 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE021, 63 );
SE022 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE022, 63 );
SE025 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE025, 63 );
SE027 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE027, 63 );
SE031 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE031, 63 );

--上向く
SE015 = playSeVer2( spep_0 + 342, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE015, 162 );

--気ダメ２
SE019 = playSeVer2( spep_0 + 420, 1023, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 422, 1503, "", 0, 0, 0, -1);

--飛び上がる
SE023 = playSeVer2( spep_0 + 452, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 460, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE024, 68 );
SE026 = playSeVer2( spep_0 + 476, 1188, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 508, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE028, 129 );
SE029 = playSeVer2( spep_0 + 508, 1167, "", 0, 0, 0, -1);
setTimeStretch( SE029, 1.4, 30, 4 );
SE030 = playSeVer2( spep_0 + 508, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE030, 158 );

-- ** ボイス ** --
--「オレを本気にさせちまったな…！」
--playVoice( spep_0 + 64, 1042 );
--setVoiceVolume( spep_0 + 64, 1042, 100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 572; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--空中飛び続ける
SE032 = playSeVer2( spep_0 + 574, 1011, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 592, 1117, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 636, 1452, "",spep_0 + 742, 0, 32, -1);
SE035 = playSeVer2( spep_0 + 636, 1304, "",spep_0 + 788, 0, 62, -1);

--空中で加速
SE036 = playSeVer2( spep_0 + 704, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE036, 74 );
SE037 = playSeVer2( spep_0 + 704, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE037, 148 );

--飛んでる音
SE038 = playSeVer2( spep_0 + 704, 1019, "", 0, 0, 0, -1);

--翻る
SE039 = playSeVer2( spep_0 + 726, 63, "", 0, 0, 0, -1);

--オーラ
SE040 = playSeVer2( spep_0 + 734, 1477, "",spep_0 + 990, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 734, SE040, 25 );
SE041 = playSeVer2( spep_0 + 734, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 734, SE041, 63 );
SE042 = playSeVer2( spep_0 + 758, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 758, SE042, 63 );
SE044 = playSeVer2( spep_0 + 782, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 782, SE044, 63 );
SE045 = playSeVer2( spep_0 + 806, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806, SE045, 63 );
SE047 = playSeVer2( spep_0 + 830, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 830, SE047, 63 );
SE049 = playSeVer2( spep_0 + 854, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 854, SE049, 63 );
SE052 = playSeVer2( spep_0 + 878, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 878, SE052, 63 );
SE056 = playSeVer2( spep_0 + 902, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 902, SE056, 63 );
SE057 = playSeVer2( spep_0 + 926, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 926, SE057, 63 );
SE059 = playSeVer2( spep_0 + 950, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 950, SE059, 63 );

--飛んでる音
SE043 = playSeVer2( spep_0 + 768, 1019, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 832, 1019, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 896, 1019, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 960, 1019, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_0 + 1024, 1019, "", 0, 0, 0, -1);

--ブレる
SE046 = playSeVer2( spep_0 + 824, 1235, "",spep_0 + 908, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 824, SE046, 58 );

--拳握る
SE050 = playSeVer2( spep_0 + 862, 1400, "",spep_0 + 920, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 862, SE050, 120 );
SE051 = playSeVer2( spep_0 + 870, 1208, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 882, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 882, SE053, 84 );
SE054 = playSeVer2( spep_0 + 882, 1314, "",spep_0 + 1176, 0, 100, -1);

--龍現れて立ち上る
SE058 = playSeVer2( spep_0 + 942, 1152, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 942, SE058, 82 );
SE061 = playSeVer2( spep_0 + 966, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 966, SE061, 65 );
SE062 = playSeVer2( spep_0 + 1008, 1321, "",spep_0 + 1136, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 1008, SE062, 69 );

--向かっていく
SE064 = playSeVer2( spep_0 + 1072, 1004, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_0 + 1078, 1066, "", 1250, 0, 10, -1);
SE066 = playSeVer2( spep_0 + 1096, 1452, "", 1220, 0, 10, -1);
SE067 = playSeVer2( spep_0 + 1146, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1146, SE067, 99 );
SE068 = playSeVer2( spep_0 + 1144, 1027, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_0 + 1144, 1258, "", 0, 0, 0, -1);

--叫びながら振りかぶる
SE070 = playSeVer2( spep_0 + 1240, 1183, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_0 + 1240, 1116, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_0 + 1256, 1304, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_0 + 1308, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1308, SE073, 67 );

--敵ヒット
SE074 = playSeVer2( spep_0 + 1398, 1187, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_0 + 1398, 1120, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_0 + 1404, 1153, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_0 + 1416, 1068, "", 0, 0, 0, -1);

--龍が後追いする
SE078 = playSeVer2( spep_0 + 1470, 1466, "", 0, 0, 0, -1);
SE079 = playSeVer2( spep_0 + 1470, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1470, SE079, 71 );
SE080 = playSeVer2( spep_0 + 1526, 1066, "",spep_0 + 1662, 0, 72, -1);

--爆発
SE081 = playSeVer2( spep_0 + 1560, 1069, "", 0, 0, 0, -1);
SE082 = playSeVer2( spep_0 + 1578, 1159, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_0 + 1606, 1067, "", 0, 0, 0, -1);

--空晴れる
SE084 = playSeVer2( spep_0 + 1644, 1429, "", 0, 0, 0, -1);
SE085 = playSeVer2( spep_0 + 1648, 1494, "", 0, 0, 0, -1);
setPitch( spep_0 + 1648, SE085, 400 );
setTimeStretch( SE085, 1.27, 30, 4 );
SE086 = playSeVer2( spep_0 + 1648, 1263, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「龍拳ーーッ！！！！」
--playVoice( spep_0 + 1272, 1043 );
--setVoiceVolume( spep_0 + 1272, 1043, 100 );


if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1744 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

-- ** おわり ** --
--hideKoScreen();
dealDamage( spep_0 + 1626 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1748f


end
