--1030530:LR_フリーザ(最終形態)(天使)+孫悟空_アクティブ必殺技：第７宇宙の奇跡
--sp_effect_b1_00314
--ut0085

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163660;  -- 手前 ef_001
SP_01b = 163661;  -- 奥 ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 530 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 530 -13, SP_01, spep_0 + 530 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 1260 -1);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1260 - 1, SP_01, spep_0 + 1260 -1 + 2, 1);
           --羽広がる
           SE049 = playSeVer2( spep_0 + 1260, 1290, "", 0, 2, 0, -1);
           setStartTimeMs( SE049,  133 );
           setPitch( spep_0 + 1260, SE049, 300 );
           setTimeStretch( SE049, 1.2, 30, 4 );
           SE050 = playSeVer2( spep_0 + 1260, 1187, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1260, SE050, 72 );
           SE051 = playSeVer2( spep_0 + 1260, 1190, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1260, SE051, 78 );
           SE052 = playSeVer2( spep_0 + 1260, 1114, "", 0, 0, 0, -1);

       end
    else 
    setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 第７宇宙の奇跡
-------------------------------------------------
MAX_FRAME_0 = 1496;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 奥(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

-- 敵の動き1
setDisp( spep_0 + 30 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 58 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 30 + OFFSET_X , 1, 118 );

setMoveKey( spep_0 + 30 + OFFSET_X , 1, 88, -58.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X , 1, 88, -58.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X , 1, 90.1, -61.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X , 1, 90.1, -61.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X , 1, 97.2, -73.5 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X , 1, 97.2, -73.5 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X , 1, 110.7, -95.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X , 1, 110.7, -95.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X , 1, 132.2, -131.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X , 1, 132.2, -131.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X , 1, 165.1, -186.5 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X , 1, 165.1, -186.5 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X , 1, 215.2, -269.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X , 1, 215.2, -269.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X , 1, 297.4, -406.7 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X , 1, 297.4, -406.7 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X , 1, 500.4, -744.7 , 0 );

setScaleKey( spep_0 + 30 + OFFSET_X , 1, 1.64, 1.64 );
setScaleKey( spep_0 + 58 + OFFSET_X , 1, 1.64, 1.64 );

setRotateKey( spep_0 + 30 + OFFSET_X , 1, 12 );
setRotateKey( spep_0 + 58 + OFFSET_X , 1, 12 );

-- 敵の動き2
setDisp( spep_0 + 1142 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1158 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1142 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 1142 + OFFSET_X, 1, 132, -212.1 , 0 );
setMoveKey( spep_0 + 1143 + OFFSET_X, 1, 132, -212.1 , 0 );
setMoveKey( spep_0 + 1144 + OFFSET_X, 1, 136.7, -258.8 , 0 );
setMoveKey( spep_0 + 1147 + OFFSET_X, 1, 136.7, -258.8 , 0 );
setMoveKey( spep_0 + 1148 + OFFSET_X, 1, 150.7, -399.3 , 0 );
setMoveKey( spep_0 + 1151 + OFFSET_X, 1, 150.7, -399.3 , 0 );
setMoveKey( spep_0 + 1152 + OFFSET_X, 1, 175.7, -646.7 , 0 );
setMoveKey( spep_0 + 1155 + OFFSET_X, 1, 175.7, -646.7 , 0 );
setMoveKey( spep_0 + 1156 + OFFSET_X, 1, 215.5, -1042.5 , 0 );
setMoveKey( spep_0 + 1158 + OFFSET_X, 1, 215.5, -1042.5 , 0 );

setScaleKey( spep_0 + 1142 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 1143 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 1144 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 1147 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_0 + 1148 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 1151 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 1152 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 1155 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 1156 + OFFSET_X, 1, 7.24, 7.24 );
setScaleKey( spep_0 + 1158 + OFFSET_X, 1, 7.24, 7.24 );

setRotateKey( spep_0 + 1142 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_0 + 1158 + OFFSET_X, 1, 57.2 );

-- 敵の動き3

setDisp( spep_0 + 1422 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 1484 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 1422 + OFFSET_X , 1, 105 );

setMoveKey( spep_0 + 1422 + OFFSET_X , 1, 0, -0.6 , 0 );
setMoveKey( spep_0 + 1423 + OFFSET_X , 1, 0, -0.6 , 0 );
setMoveKey( spep_0 + 1424 + OFFSET_X , 1, 0.1, -0.4 , 0 );
setMoveKey( spep_0 + 1425 + OFFSET_X , 1, 0.1, -0.4 , 0 );
setMoveKey( spep_0 + 1426 + OFFSET_X , 1, 0.3, -0.3 , 0 );
setMoveKey( spep_0 + 1427 + OFFSET_X , 1, 0.3, -0.3 , 0 );
setMoveKey( spep_0 + 1428 + OFFSET_X , 1, 0.4, -0.2 , 0 );
setMoveKey( spep_0 + 1429 + OFFSET_X , 1, 0.4, -0.2 , 0 );
setMoveKey( spep_0 + 1430 + OFFSET_X , 1, 0.5, -0.1 , 0 );
setMoveKey( spep_0 + 1431 + OFFSET_X , 1, 0.5, -0.1 , 0 );
setMoveKey( spep_0 + 1432 + OFFSET_X , 1, 0.6, 0 , 0 );
setMoveKey( spep_0 + 1433 + OFFSET_X , 1, 0.6, 0 , 0 );
setMoveKey( spep_0 + 1434 + OFFSET_X , 1, 0.7, 0.1 , 0 );
setMoveKey( spep_0 + 1435 + OFFSET_X , 1, 0.7, 0.1 , 0 );
setMoveKey( spep_0 + 1436 + OFFSET_X , 1, 0.9, 0.2 , 0 );
setMoveKey( spep_0 + 1437 + OFFSET_X , 1, 0.9, 0.2 , 0 );
setMoveKey( spep_0 + 1438 + OFFSET_X , 1, 1, 0.3 , 0 );
setMoveKey( spep_0 + 1439 + OFFSET_X , 1, 1, 0.3 , 0 );
setMoveKey( spep_0 + 1440 + OFFSET_X , 1, 1.1, 0.4 , 0 );
setMoveKey( spep_0 + 1441 + OFFSET_X , 1, 1.1, 0.4 , 0 );
setMoveKey( spep_0 + 1442 + OFFSET_X , 1, 1.2, 0.5 , 0 );
setMoveKey( spep_0 + 1443 + OFFSET_X , 1, 1.2, 0.5 , 0 );
setMoveKey( spep_0 + 1444 + OFFSET_X , 1, 1.3, 0.6 , 0 );
setMoveKey( spep_0 + 1447 + OFFSET_X , 1, 1.3, 0.6 , 0 );
setMoveKey( spep_0 + 1448 + OFFSET_X , 1, 1.4, 0.7 , 0 );
setMoveKey( spep_0 + 1449 + OFFSET_X , 1, 1.4, 0.7 , 0 );
setMoveKey( spep_0 + 1450 + OFFSET_X , 1, 1.5, 0.8 , 0 );
setMoveKey( spep_0 + 1451 + OFFSET_X , 1, 1.5, 0.8 , 0 );
setMoveKey( spep_0 + 1452 + OFFSET_X , 1, 1.6, 0.8 , 0 );
setMoveKey( spep_0 + 1453 + OFFSET_X , 1, 1.6, 0.8 , 0 );
setMoveKey( spep_0 + 1454 + OFFSET_X , 1, 1.7, 0.9 , 0 );
setMoveKey( spep_0 + 1455 + OFFSET_X , 1, 1.7, 0.9 , 0 );
setMoveKey( spep_0 + 1456 + OFFSET_X , 1, 1.7, 1 , 0 );
setMoveKey( spep_0 + 1457 + OFFSET_X , 1, 1.7, 1 , 0 );
setMoveKey( spep_0 + 1458 + OFFSET_X , 1, 1.8, 1 , 0 );
setMoveKey( spep_0 + 1459 + OFFSET_X , 1, 1.8, 1 , 0 );
setMoveKey( spep_0 + 1460 + OFFSET_X , 1, 1.9, 1.1 , 0 );
setMoveKey( spep_0 + 1463 + OFFSET_X , 1, 1.9, 1.1 , 0 );
setMoveKey( spep_0 + 1464 + OFFSET_X , 1, 2, 1.2 , 0 );
setMoveKey( spep_0 + 1469 + OFFSET_X , 1, 2, 1.2 , 0 );
setMoveKey( spep_0 + 1470 + OFFSET_X , 1, 2.1, 1.3 , 0 );
setMoveKey( spep_0 + 1473 + OFFSET_X , 1, 2.1, 1.3 , 0 );
setMoveKey( spep_0 + 1474 + OFFSET_X , 1, 2.2, 1.3 , 0 );
setMoveKey( spep_0 + 1475 + OFFSET_X , 1, 2.2, 1.3 , 0 );
setMoveKey( spep_0 + 1476 + OFFSET_X , 1, 2.2, 1.4 , 0 );
setMoveKey( spep_0 + 1484 + OFFSET_X , 1, 2.2, 1.4 , 0 );

setScaleKey( spep_0 + 1422 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 1423 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 1424 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 1425 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 1426 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_0 + 1427 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_0 + 1428 + OFFSET_X , 1, 0.88, 0.88 );
setScaleKey( spep_0 + 1429 + OFFSET_X , 1, 0.88, 0.88 );
setScaleKey( spep_0 + 1430 + OFFSET_X , 1, 0.84, 0.84 );
setScaleKey( spep_0 + 1431 + OFFSET_X , 1, 0.84, 0.84 );
setScaleKey( spep_0 + 1432 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_0 + 1433 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_0 + 1434 + OFFSET_X , 1, 0.77, 0.77 );
setScaleKey( spep_0 + 1435 + OFFSET_X , 1, 0.77, 0.77 );
setScaleKey( spep_0 + 1436 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_0 + 1437 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_0 + 1438 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 1439 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 1440 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 1441 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 1442 + OFFSET_X , 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1443 + OFFSET_X , 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1444 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1445 + OFFSET_X , 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1446 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 1447 + OFFSET_X , 1, 0.59, 0.59 );
setScaleKey( spep_0 + 1448 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_0 + 1449 + OFFSET_X , 1, 0.56, 0.56 );
setScaleKey( spep_0 + 1450 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_0 + 1451 + OFFSET_X , 1, 0.54, 0.54 );
setScaleKey( spep_0 + 1452 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 1453 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 1454 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 1455 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 1456 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 1457 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 1458 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_0 + 1459 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_0 + 1460 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 1461 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 1462 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 1463 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 1464 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 1465 + OFFSET_X , 1, 0.4, 0.4 );
setScaleKey( spep_0 + 1466 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 1467 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 1468 + OFFSET_X , 1, 0.38, 0.38 );
setScaleKey( spep_0 + 1469 + OFFSET_X , 1, 0.38, 0.38 );
setScaleKey( spep_0 + 1470 + OFFSET_X , 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1471 + OFFSET_X , 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1472 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_0 + 1473 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_0 + 1474 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 1475 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 1476 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 1479 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 1480 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_0 + 1483 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_0 + 1484 + OFFSET_X , 1, 0.31, 0.31 );

setRotateKey( spep_0 + 1422 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 1484 + OFFSET_X , 1, 0 );

setBlendColor( spep_0 + 1422 + OFFSET_X , 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 1484 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1232, "", 0, 0, 0, -1);

--画面遷移
SE003 = playSeVer2( spep_0 + 22, 1072, "", 0, 0, 0, -1);

--二人落下中
SE004 = playSeVer2( spep_0 + 36, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 85 );
setTimeStretch( SE004, 1.41, 30, 4 );
SE005 = playSeVer2( spep_0 + 36, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 63 );
SE006 = playSeVer2( spep_0 + 56, 1395, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 76 );

--セリフカットイン
SE007 = playSeVer2( spep_0 + 64, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE007, 63 );

--二人落下中
SE008 = playSeVer2( spep_0 + 64, 1314, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE008, 65 );

--悟空回転
SE009 = playSeVer2( spep_0 + 224, 1151, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 228, 1004, "", 0, 0, 0, -1);

--壁ブレーキ
SE011 = playSeVer2( spep_0 + 270, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE011, 251 );
SE012 = playSeVer2( spep_0 + 270, 1476, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE012, 123 );
SE013 = playSeVer2( spep_0 + 270, 1044, "",spep_0 + 472, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 270, SE013, 56 );

--フリーザ気ダメ
SE014 = playSeVer2( spep_0 + 466, 1437, "",spep_0 + 558, 8, 46, -1);
setSeVolumeByWorkId( spep_0 + 466, SE014, 79 );
setStartTimeMs( SE014,  2267 );

--フリーザ持つ
SE015 = playSeVer2( spep_0 + 380, 1233, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 390, 1472, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 390, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE017, 141 );

--画面遷移
SE018 = playSeVer2( spep_0 + 412, 1232, "", 0, 0, 0, -1);

--フリーザ投げる
SE019 = playSeVer2( spep_0 + 438, 1395, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 438, 1027, "", 0, 0, 0, -1);

--フリーザ気ダメ
SE021 = playSeVer2( spep_0 + 476, 1179, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 476, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE022, 76 );

--フリーザ飛び込む
SE023 = playSeVer2( spep_0 + 492, 1121, "",spep_0 + 556, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 492, SE023, 50 );
SE024 = playSeVer2( spep_0 + 520, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE024, 145 );

-- ** ボイス ** --

--「わたしを投げ飛ばしなさい！！」
playVoice( spep_0 + 66, 944 );
setVoiceVolume( spep_0 + 66, 944, 140 );

--「わかった！！」
playVoice( spep_0 + 226, 945 );
setVoiceVolume( spep_0 + 226, 945, 140 );

--「はああっ！！」
playVoice( spep_0 + 420, 975 );
setVoiceVolume( spep_0 + 420, 975, 140 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 530; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);

    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);

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

--地面激突
SE025 = playSeVer2( spep_0 + 540, 1159, "", 0, 0, 0, -1);

--爆発
SE026 = playSeVer2( spep_0 + 552, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE026, 85 );

--悟空向かってくる
SE027 = playSeVer2( spep_0 + 608, 1011, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 608, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 608, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 614, 1183, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 634, 1019, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 640, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE032, 92 );
setTimeStretch( SE032, 1.4, 30, 4 );
SE033 = playSeVer2( spep_0 + 698, 1019, "",spep_0 + 754, 0, 24, -1);

--地面激突
SE034 = playSeVer2( spep_0 + 722, 1120, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 722, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 722, 1044, "",spep_0 + 1080, 0, 36, -1);
SE037 = playSeVer2( spep_0 + 730, 1226, "",spep_0 + 1144, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 730, SE037, 61 );

--途中爆発
SE038 = playSeVer2( spep_0 + 844, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 844, SE038, 71 );
SE039 = playSeVer2( spep_0 + 844, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 844, SE039, 73 );

--空気音
SE040 = playSeVer2( spep_0 + 876, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 876, SE040, 54 );

--二人飛び上がる
SE041 = playSeVer2( spep_0 + 1026, 1024, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1026, 1452, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1026, 1207, "", 0, 22, 0, -1);

--画面遷移
SE044 = playSeVer2( spep_0 + 1126, 1116, "",spep_0 + 1172, 0, 24, -1);

--オーラ
SE045 = playSeVer2( spep_0 + 1134, 1176, "",spep_0 + 1332, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 1134, SE045, 56 );

--二人叫ぶ
SE046 = playSeVer2( spep_0 + 1194, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1194, SE046, 107 );
SE047 = playSeVer2( spep_0 + 1194, 1298, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 1194, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1194, SE048, 60 );

--羽広がる
SE049 = playSeVer2( spep_0 + 1258, 1290, "", 0, 2, 0, -1);
setStartTimeMs( SE049,  133 );
setPitch( spep_0 + 1258, SE049, 300 );
setTimeStretch( SE049, 1.2, 30, 4 );
SE050 = playSeVer2( spep_0 + 1258, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1258, SE050, 72 );
SE051 = playSeVer2( spep_0 + 1258, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1258, SE051, 78 );
SE052 = playSeVer2( spep_0 + 1258, 1114, "", 0, 0, 0, -1);

--爆発して手前に近づく
SE053 = playSeVer2( spep_0 + 1306, 1215, "",spep_0 + 1518, 0, 44, -1);
SE054 = playSeVer2( spep_0 + 1312, 1137, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 1312, 1024, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 1312, 1226, "",spep_0 + 1510, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 1312, SE056, 65 );
SE057 = playSeVer2( spep_0 + 1318, 1044, "",spep_0 + 1490, 94, 50, -1);
setSeVolumeByWorkId( spep_0 + 1318, SE057, 316 );
setStartTimeMs( SE057,  100 );

--敵呑まれる
SE058 = playSeVer2( spep_0 + 1412, 1067, "",spep_0 + 1538, 0, 44, -1);
SE059 = playSeVer2( spep_0 + 1412, 1258, "",spep_0 + 1512, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 1412, SE059, 78 );
SE060 = playSeVer2( spep_0 + 1412, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1412, SE060, 74 );

-- ** ボイス ** --

--「はああああああああっ！！」
playVoice( spep_0 + 618, 976 );
setVoiceVolume( spep_0 + 618, 976, 160 );

--『はああああ！！！！』（フリーザ＆悟空）
playVoice( spep_0 + 956, 946 );
setVoiceVolume( spep_0 + 956, 946, 160 );

--『はああああああああ！！！！』（フリーザ＆悟空）
playVoice( spep_0 + 1146, 958 );
setVoiceVolume( spep_0 + 1146, 958, 170 );

-- ** おわり ** --

if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1486 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

hideKoScreen();
dealDamage( spep_0 + 1340); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 -0); -- 1496

else end