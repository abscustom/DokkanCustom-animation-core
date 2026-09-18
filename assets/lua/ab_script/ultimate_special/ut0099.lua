--4031400:LR_超サイヤ人ゴッドSSベジータ+超サイヤ人ゴッドSS孫悟空_アクティブ必殺技：親子ギャリック砲
--sp_effect_a1_00491
--ut0099

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163913; --ef_001_構え→発射→爆発：手前
SP_01b = 163915; --ef_001b_構え→発射→爆発：奥

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 654 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1278 - 1);  -- スキップ先フレーム指定
           --気弾中
           SE030 = playSeVer2( spep_0 + 1278, 1211, "",spep_0 + 1684, 0, 38, -1);
           setSeVolumeByWorkId( spep_0 + 1278, SE030, 162 );
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 構え→発射→爆発
-------------------------------------------------

MAX_FRAME_0 = 1584;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 構え→発射→爆発：手前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 構え→発射→爆発：奥 ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 658 + OFFSET_X, 1, 1);
setDisp( spep_0 + 718 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 658 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 658 + OFFSET_X, 1, -57.9, 26 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -57.9, 26 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -83.9, 36 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -83.9, 36 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -89.9, 32 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -89.9, 32 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -95.9, 40 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -95.9, 40 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -103.9, 32 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -103.9, 32 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, -105.9, 34 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -105.9, 34 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -107.9, 16 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -107.9, 16 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -103.9, 50 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -103.9, 50 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -97.9, 30 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -97.9, 30 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -109.9, 40 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -109.9, 40 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -134.7, 60.4 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -134.7, 60.4 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -132.1, 36.1 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -132.1, 36.1 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -119.9, 50 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -119.9, 50 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -134.7, 60.4 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -134.7, 60.4 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -132.1, 36.1 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -132.1, 36.1 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -119.9, 50 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -119.9, 50 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -134.7, 60.4 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -134.7, 60.4 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -132.1, 36.1 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -132.1, 36.1 , 0 );

setScaleKey( spep_0 + 658 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.23, 0.23 );

setRotateKey( spep_0 + 658 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 663 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 664 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 718 + OFFSET_X, 1, 19.8 );

--敵の動き2
setDisp( spep_0 + 1372 + OFFSET_X, 1, 1);
setDisp( spep_0 + 1452 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 1372 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 1384 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 1372 + OFFSET_X, 1, 21.7, 1.2 , 0 );
setMoveKey( spep_0 + 1373 + OFFSET_X, 1, 21.7, 1.2 , 0 );
setMoveKey( spep_0 + 1374 + OFFSET_X, 1, 12.6, 8.3 , 0 );
setMoveKey( spep_0 + 1375 + OFFSET_X, 1, 12.6, 8.3 , 0 );
setMoveKey( spep_0 + 1376 + OFFSET_X, 1, -0.8, 10 , 0 );
setMoveKey( spep_0 + 1377 + OFFSET_X, 1, -0.8, 10 , 0 );
setMoveKey( spep_0 + 1378 + OFFSET_X, 1, -30.4, 13 , 0 );
setMoveKey( spep_0 + 1379 + OFFSET_X, 1, -30.4, 13 , 0 );
setMoveKey( spep_0 + 1380 + OFFSET_X, 1, -19, 19.7 , 0 );
setMoveKey( spep_0 + 1381 + OFFSET_X, 1, -19, 19.7 , 0 );
setMoveKey( spep_0 + 1382 + OFFSET_X, 1, -36.8, 42.1 , 0 );
setMoveKey( spep_0 + 1383 + OFFSET_X, 1, -36.8, 42.1 , 0 );
setMoveKey( spep_0 + 1384 + OFFSET_X, 1, -28.4, 51.7 , 0 );
setMoveKey( spep_0 + 1385 + OFFSET_X, 1, -28.4, 51.7 , 0 );
setMoveKey( spep_0 + 1386 + OFFSET_X, 1, -46.1, 41.7 , 0 );
setMoveKey( spep_0 + 1387 + OFFSET_X, 1, -46.1, 41.7 , 0 );
setMoveKey( spep_0 + 1388 + OFFSET_X, 1, -24.2, 52.7 , 0 );
setMoveKey( spep_0 + 1389 + OFFSET_X, 1, -24.2, 52.7 , 0 );
setMoveKey( spep_0 + 1390 + OFFSET_X, 1, -31.5, 38.6 , 0 );
setMoveKey( spep_0 + 1391 + OFFSET_X, 1, -31.5, 38.6 , 0 );
setMoveKey( spep_0 + 1392 + OFFSET_X, 1, -60.9, 51.7 , 0 );
setMoveKey( spep_0 + 1393 + OFFSET_X, 1, -60.9, 51.7 , 0 );
setMoveKey( spep_0 + 1394 + OFFSET_X, 1, -24, 42.6 , 0 );
setMoveKey( spep_0 + 1395 + OFFSET_X, 1, -24, 42.6 , 0 );
setMoveKey( spep_0 + 1396 + OFFSET_X, 1, -25.9, 58.1 , 0 );
setMoveKey( spep_0 + 1397 + OFFSET_X, 1, -25.9, 58.1 , 0 );
setMoveKey( spep_0 + 1398 + OFFSET_X, 1, -39.9, 49.3 , 0 );
setMoveKey( spep_0 + 1399 + OFFSET_X, 1, -39.9, 49.3 , 0 );
setMoveKey( spep_0 + 1400 + OFFSET_X, 1, -22.4, 40.5 , 0 );
setMoveKey( spep_0 + 1401 + OFFSET_X, 1, -22.4, 40.5 , 0 );
setMoveKey( spep_0 + 1402 + OFFSET_X, 1, -36.7, 55.8 , 0 );
setMoveKey( spep_0 + 1403 + OFFSET_X, 1, -36.7, 55.8 , 0 );
setMoveKey( spep_0 + 1404 + OFFSET_X, 1, -28.4, 45.6 , 0 );
setMoveKey( spep_0 + 1405 + OFFSET_X, 1, -28.4, 45.6 , 0 );
setMoveKey( spep_0 + 1406 + OFFSET_X, 1, -31, 61.6 , 0 );
setMoveKey( spep_0 + 1407 + OFFSET_X, 1, -31, 61.6 , 0 );
setMoveKey( spep_0 + 1408 + OFFSET_X, 1, -43.7, 30.2 , 0 );
setMoveKey( spep_0 + 1409 + OFFSET_X, 1, -43.7, 30.2 , 0 );
setMoveKey( spep_0 + 1410 + OFFSET_X, 1, -42.3, 22.5 , 0 );
setMoveKey( spep_0 + 1411 + OFFSET_X, 1, -42.3, 22.5 , 0 );
setMoveKey( spep_0 + 1412 + OFFSET_X, 1, -42.9, 24.9 , 0 );
setMoveKey( spep_0 + 1413 + OFFSET_X, 1, -42.9, 24.9 , 0 );
setMoveKey( spep_0 + 1414 + OFFSET_X, 1, -43.5, 25.3 , 0 );
setMoveKey( spep_0 + 1415 + OFFSET_X, 1, -43.5, 25.3 , 0 );
setMoveKey( spep_0 + 1416 + OFFSET_X, 1, -44.1, 25.6 , 0 );
setMoveKey( spep_0 + 1417 + OFFSET_X, 1, -44.1, 25.6 , 0 );
setMoveKey( spep_0 + 1418 + OFFSET_X, 1, -44.7, 32 , 0 );
setMoveKey( spep_0 + 1419 + OFFSET_X, 1, -44.7, 32 , 0 );
setMoveKey( spep_0 + 1420 + OFFSET_X, 1, -45.3, 20.3 , 0 );
setMoveKey( spep_0 + 1421 + OFFSET_X, 1, -45.3, 20.3 , 0 );
setMoveKey( spep_0 + 1422 + OFFSET_X, 1, -45.9, 32.8 , 0 );
setMoveKey( spep_0 + 1423 + OFFSET_X, 1, -45.9, 32.8 , 0 );
setMoveKey( spep_0 + 1424 + OFFSET_X, 1, -46.5, 33.1 , 0 );
setMoveKey( spep_0 + 1425 + OFFSET_X, 1, -46.5, 33.1 , 0 );
setMoveKey( spep_0 + 1426 + OFFSET_X, 1, -47.1, 17.3 , 0 );
setMoveKey( spep_0 + 1427 + OFFSET_X, 1, -47.1, 17.3 , 0 );
setMoveKey( spep_0 + 1428 + OFFSET_X, 1, -47.7, 28.5 , 0 );
setMoveKey( spep_0 + 1429 + OFFSET_X, 1, -47.7, 28.5 , 0 );
setMoveKey( spep_0 + 1430 + OFFSET_X, 1, -48.3, 34.9 , 0 );
setMoveKey( spep_0 + 1431 + OFFSET_X, 1, -48.3, 34.9 , 0 );
setMoveKey( spep_0 + 1432 + OFFSET_X, 1, -48.9, 23.3 , 0 );
setMoveKey( spep_0 + 1433 + OFFSET_X, 1, -48.9, 23.3 , 0 );
setMoveKey( spep_0 + 1434 + OFFSET_X, 1, -49.5, 35.7 , 0 );
setMoveKey( spep_0 + 1435 + OFFSET_X, 1, -49.5, 35.7 , 0 );
setMoveKey( spep_0 + 1436 + OFFSET_X, 1, -50.1, 36 , 0 );
setMoveKey( spep_0 + 1437 + OFFSET_X, 1, -50.1, 36 , 0 );
setMoveKey( spep_0 + 1438 + OFFSET_X, 1, -50.7, 20.3 , 0 );
setMoveKey( spep_0 + 1439 + OFFSET_X, 1, -50.7, 20.3 , 0 );
setMoveKey( spep_0 + 1440 + OFFSET_X, 1, -51.3, 37 , 0 );
setMoveKey( spep_0 + 1441 + OFFSET_X, 1, -51.3, 37 , 0 );
setMoveKey( spep_0 + 1442 + OFFSET_X, 1, -51.9, 21.2 , 0 );
setMoveKey( spep_0 + 1443 + OFFSET_X, 1, -51.9, 21.2 , 0 );
setMoveKey( spep_0 + 1444 + OFFSET_X, 1, -52.5, 37.9 , 0 );
setMoveKey( spep_0 + 1445 + OFFSET_X, 1, -52.5, 37.9 , 0 );
setMoveKey( spep_0 + 1446 + OFFSET_X, 1, -53.1, 22.2 , 0 );
setMoveKey( spep_0 + 1447 + OFFSET_X, 1, -53.1, 22.2 , 0 );
setMoveKey( spep_0 + 1448 + OFFSET_X, 1, -53.7, 38.9 , 0 );
setMoveKey( spep_0 + 1449 + OFFSET_X, 1, -53.7, 38.9 , 0 );
setMoveKey( spep_0 + 1450 + OFFSET_X, 1, -42.3, 56.8 , 0 );
setMoveKey( spep_0 + 1452 + OFFSET_X, 1, -42.3, 56.8 , 0 );

setScaleKey( spep_0 + 1372 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 1383 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 1384 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 1452 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_0 + 1372 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 1383 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_0 + 1384 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 1391 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 1392 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_0 + 1399 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_0 + 1400 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_0 + 1409 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_0 + 1410 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_0 + 1417 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_0 + 1418 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 1425 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 1426 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_0 + 1435 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_0 + 1436 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_0 + 1443 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_0 + 1444 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 1442 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 1452 + OFFSET_X, 1, 33.1 );

-- ** 音 ** --

--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 542, 0, 140, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--ベジータ構える
SE003 = playSeVer2( spep_0 + 194, 1233, "", 0, 0, 0, -1);
--トランクス降りてくる
SE004 = playSeVer2( spep_0 + 214, 63, "",spep_0 + 254, 0, 20, -1);
SE005 = playSeVer2( spep_0 + 234, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE005, 145 );
SE006 = playSeVer2( spep_0 + 234, 1192, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 238, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE007, 188 );
--トランクスにフォーカス
SE008 = playSeVer2( spep_0 + 270, 1072, "", 0, 0, 0, -1);
--トランクス構える
SE009 = playSeVer2( spep_0 + 340, 1004, "", 0, 0, 0, -1);
--気弾溜め
SE010 = playSeVer2( spep_0 + 348, 1370, "",spep_0 + 652, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 348, SE010, 158 );
SE011 = playSeVer2( spep_0 + 348, 1371, "",spep_0 + 650, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 348, SE011, 71 );
SE012 = playSeVer2( spep_0 + 348, 1210, "",spep_0 + 648, 0, 50, -1);
SE013 = playSeVer2( spep_0 + 390, 1491, "",spep_0 + 426, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 390, SE013, 75 );
SE014 = playSeVer2( spep_0 + 402, 1491, "",spep_0 + 438, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 402, SE014, 63 );
SE015 = playSeVer2( spep_0 + 418, 1491, "",spep_0 + 448, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 418, SE015, 55 );
--ベジータ構え
SE016 = playSeVer2( spep_0 + 426, 1004, "", 0, 0, 0, -1);
--ベジータ気弾溜め
SE017 = playSeVer2( spep_0 + 450, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE017, 79 );
--気弾溜め
SE018 = playSeVer2( spep_0 + 474, 1491, "",spep_0 + 512, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 486, 1491, "",spep_0 + 524, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 486, SE019, 71 );
SE020 = playSeVer2( spep_0 + 502, 1491, "",spep_0 + 540, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 502, SE020, 56 );
SE021 = playSeVer2( spep_0 + 538, 1491, "",spep_0 + 576, 0, 14, -1);
SE022 = playSeVer2( spep_0 + 550, 1491, "",spep_0 + 588, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 550, SE022, 66 );
SE023 = playSeVer2( spep_0 + 566, 1491, "",spep_0 + 604, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 566, SE023, 58 );
--気弾発射
SE024 = playSeVer2( spep_0 + 586, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE024, 77 );
SE025 = playSeVer2( spep_0 + 586, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE025, 77 );
SE026 = playSeVer2( spep_0 + 586, 1213, "",spep_0 + 826, 0, 132, -1);
setSeVolumeByWorkId( spep_0 + 586, SE026, 71 );
SE027 = playSeVer2( spep_0 + 586, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE027, 72 );

-- ** ボイス ** --
--「トランクスとこの未来のためにきさまを倒す！」
playVoice( spep_0 + 2, 1017 );
setVoiceVolume( spep_0 + 2, 1017, 122 );

--「父さん！」
playVoice( spep_0 + 242, 1018 );
setVoiceVolume( spep_0 + 242, 1018, 122 );

--「くらえ！ギャリック砲！」
playVoice( spep_0 + 464, 1019 );
setVoiceVolume( spep_0 + 464, 1019, 122 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 654; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE027, 0);
    pauseAll( SP_dodge, 67);
    
    setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
    
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

--敵ヒット
SE028 = playSeVer2( spep_0 + 666, 1011, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 666, 1187, "", 0, 0, 0, -1);
--気弾中
SE030 = playSeVer2( spep_0 + 700, 1211, "",spep_0 + 1684, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 700, SE030, 162 );
SE031 = playSeVer2( spep_0 + 700, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE031, 63 );
SE032 = playSeVer2( spep_0 + 904, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 904, SE032, 63 );
SE033 = playSeVer2( spep_0 + 1100, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1100, SE033, 63 );
--威力増す
SE034 = playSeVer2( spep_0 + 1284, 1343, "",spep_0 + 1486, 4, 30, -1);
setStartTimeMs( SE034, 2000 );
SE035 = playSeVer2( spep_0 + 1284, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1284, SE035, 81 );
SE036 = playSeVer2( spep_0 + 1284, 1213, "",spep_0 + 1484, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 1284, SE036, 67 );
--気弾飲まれる
SE037 = playSeVer2( spep_0 + 1340, 1258, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 1346, 1284, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 1368, 1024, "", 0, 0, 0, -1);
--ラスト爆発
SE040 = playSeVer2( spep_0 + 1454, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1482, 1067, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1482, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1482, SE042, 76 );

-- ** ボイス ** --
--「トランクス！力を出し切れ！ 」
playVoice( spep_0 + 716, 1020 );
setVoiceVolume( spep_0 + 716, 1020, 122 );

--「はい！はああ！！これが人間の力だ！」
playVoice( spep_0 + 906, 1021 );
setVoiceVolume( spep_0 + 906, 1021, 122 );


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 1458);
endPhase( spep_0 + MAX_FRAME_0);--1584

else end