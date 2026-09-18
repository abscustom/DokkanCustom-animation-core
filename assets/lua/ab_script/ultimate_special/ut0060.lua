-- 1027330：LR_超サイヤ人孫悟飯(未来)_アクティブ必殺技：アナザーホープ
-- sp_effect_a1_00409
-- ut0060

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162235;  -- 手前 ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;
-- TODO: 敵キャラクターの開始フレームはムービー尺に合わせて手動確認してください。

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 150 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 150 -13, SP_01, spep_0 + 150 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 1358);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1358, SP_01, spep_0 + 1358 -1 + 2, 1);
       end
    else
        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 手前・奥 (1736F)
------------------------------------------------------
MAX_FRAME_0 = 1736;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 手前(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp(spep_0 + 332 + OFFSET_X, 1, 1);
setDisp(spep_0 + 410 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 0, 1, 104 );

setMoveKey( spep_0 + 332 + OFFSET_X, 1, 63.9, -2.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 64.5, -2.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 66.3, -2.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 69.3, -2.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 73.5, -2.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 78.9, -2.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 85.5, -2.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 93.3, -2.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 102.3, -2.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 112.5, -2.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 123.9, -2.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 123.9, -2.1 , 0 );

setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.88, 1.88 );

setRotateKey( spep_0 + 332 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -10.5 );

-- 敵の動き2

setDisp(spep_0 + 1428+ OFFSET_X, 1, 1);
setDisp(spep_0 + 1542 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 1428 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1428 + OFFSET_X, 1, 14, 2 , 0 );
setMoveKey( spep_0 + 1430 + OFFSET_X, 1, 14.1, 2.8 , 0 );
setMoveKey( spep_0 + 1432 + OFFSET_X, 1, 20.6, -1.4 , 0 );
setMoveKey( spep_0 + 1434 + OFFSET_X, 1, 11.7, 5.2 , 0 );
setMoveKey( spep_0 + 1436 + OFFSET_X, 1, 23, 3.2 , 0 );
setMoveKey( spep_0 + 1438 + OFFSET_X, 1, 15.5, 4.9 , 0 );
setMoveKey( spep_0 + 1440 + OFFSET_X, 1, 5.7, -1.9 , 0 );
setMoveKey( spep_0 + 1442 + OFFSET_X, 1, 17.3, 2.1 , 0 );
setMoveKey( spep_0 + 1444 + OFFSET_X, 1, 12.2, 8.3 , 0 );
setMoveKey( spep_0 + 1446 + OFFSET_X, 1, 18.8, 1.4 , 0 );
setMoveKey( spep_0 + 1448 + OFFSET_X, 1, 14.3, 0.3 , 0 );
setMoveKey( spep_0 + 1450 + OFFSET_X, 1, 10, -3.6 , 0 );
setMoveKey( spep_0 + 1452 + OFFSET_X, 1, 12.7, 1.2 , 0 );
setMoveKey( spep_0 + 1454 + OFFSET_X, 1, 20.5, 4.9 , 0 );
setMoveKey( spep_0 + 1456 + OFFSET_X, 1, 18, 1.8 , 0 );
setMoveKey( spep_0 + 1458 + OFFSET_X, 1, 20.2, -5.2 , 0 );
setMoveKey( spep_0 + 1460 + OFFSET_X, 1, 6.5, 2.7 , 0 );
setMoveKey( spep_0 + 1462 + OFFSET_X, 1, 12.9, 2.5 , 0 );
setMoveKey( spep_0 + 1464 + OFFSET_X, 1, 17.2, 7.1 , 0 );
setMoveKey( spep_0 + 1466 + OFFSET_X, 1, 10.8, 0.3 , 0 );
setMoveKey( spep_0 + 1468 + OFFSET_X, 1, 13.9, 1.6 , 0 );
setMoveKey( spep_0 + 1470 + OFFSET_X, 1, 14.3, 7.7 , 0 );
setMoveKey( spep_0 + 1472 + OFFSET_X, 1, 17.2, 6.3 , 0 );
setMoveKey( spep_0 + 1474 + OFFSET_X, 1, 17.4, -7.1 , 0 );
setMoveKey( spep_0 + 1476 + OFFSET_X, 1, 11.8, -1.6 , 0 );
setMoveKey( spep_0 + 1478 + OFFSET_X, 1, 8, 0.8 , 0 );
setMoveKey( spep_0 + 1480 + OFFSET_X, 1, 12.8, 3 , 0 );
setMoveKey( spep_0 + 1482 + OFFSET_X, 1, 18.1, 10.7 , 0 );
setMoveKey( spep_0 + 1484 + OFFSET_X, 1, 8.8, -4.3 , 0 );
setMoveKey( spep_0 + 1486 + OFFSET_X, 1, 11, -0.1 , 0 );
setMoveKey( spep_0 + 1488 + OFFSET_X, 1, 27.1, 7.3 , 0 );
setMoveKey( spep_0 + 1490 + OFFSET_X, 1, 40.5, 21 , 0 );
setMoveKey( spep_0 + 1492 + OFFSET_X, 1, 53.2, 19 , 0 );
setMoveKey( spep_0 + 1494 + OFFSET_X, 1, 71.1, 34.4 , 0 );
setMoveKey( spep_0 + 1496 + OFFSET_X, 1, 87.6, 47.7 , 0 );
setMoveKey( spep_0 + 1498 + OFFSET_X, 1, 104.8, 46 , 0 );
setMoveKey( spep_0 + 1500 + OFFSET_X, 1, 121.1, 46.9 , 0 );
setMoveKey( spep_0 + 1502 + OFFSET_X, 1, 134, 62.9 , 0 );
setMoveKey( spep_0 + 1504 + OFFSET_X, 1, 151.7, 68.9 , 0 );
setMoveKey( spep_0 + 1506 + OFFSET_X, 1, 170.1, 82.1 , 0 );
setMoveKey( spep_0 + 1508 + OFFSET_X, 1, 176.9, 80.8 , 0 );
setMoveKey( spep_0 + 1510 + OFFSET_X, 1, 192.8, 86.5 , 0 );
setMoveKey( spep_0 + 1512 + OFFSET_X, 1, 202.6, 91 , 0 );
setMoveKey( spep_0 + 1514 + OFFSET_X, 1, 216.1, 90.2 , 0 );
setMoveKey( spep_0 + 1516 + OFFSET_X, 1, 218.6, 103 , 0 );
setMoveKey( spep_0 + 1518 + OFFSET_X, 1, 228.2, 96.3 , 0 );
setMoveKey( spep_0 + 1520 + OFFSET_X, 1, 233, 109.3 , 0 );
setMoveKey( spep_0 + 1522 + OFFSET_X, 1, 244.7, 106.5 , 0 );
setMoveKey( spep_0 + 1524 + OFFSET_X, 1, 250.5, 110.9 , 0 );
setMoveKey( spep_0 + 1526 + OFFSET_X, 1, 264, 115.3 , 0 );
setMoveKey( spep_0 + 1528 + OFFSET_X, 1, 263.3, 121.7 , 0 );
setMoveKey( spep_0 + 1530 + OFFSET_X, 1, 275.1, 126.9 , 0 );
setMoveKey( spep_0 + 1532 + OFFSET_X, 1, 274.6, 128.6 , 0 );
setMoveKey( spep_0 + 1534 + OFFSET_X, 1, 270.7, 131.4 , 0 );
setMoveKey( spep_0 + 1536 + OFFSET_X, 1, 285.3, 133.6 , 0 );
setMoveKey( spep_0 + 1538 + OFFSET_X, 1, 290.5, 137.1 , 0 );
setMoveKey( spep_0 + 1540 + OFFSET_X, 1, 290.3, 133.6 , 0 );
setMoveKey( spep_0 + 1542 + OFFSET_X, 1, 292.4, 134.7 , 0 );

setScaleKey( spep_0 + 1428 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 1488 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 1490 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 1492 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 1494 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1496 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 1498 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 1500 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 1502 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 1504 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 1506 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 1508 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 1510 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 1512 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 1514 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 1516 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 1518 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 1520 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 1522 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 1524 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 1526 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 1528 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 1530 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 1532 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 1534 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 1536 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 1538 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 1540 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 1542 + OFFSET_X, 1, 2.56, 2.56 );

setRotateKey( spep_0 + 1428 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 1542 + OFFSET_X, 1, -13.7 );

setBlendColor( spep_0 + 1428 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 + 1540 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 + 1542 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--雨音
SE001 = playSeVer2( spep_0 + 0, 1428, "",spep_0 + 274, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 126 );

--オーラ 
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 79 );
SE010 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE010, 79 );
SE011 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE011, 79 );
--SE013 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 120, SE013, 79 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 56 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 60, 1370, "",spep_0 + 196, 12, 14, -1);
setSeVolumeByWorkId( spep_0 + 60, SE005, 123 );
setStartTimeMs( SE005,  367 );
SE007 = playSeVer2( spep_0 + 62, 1296, "",spep_0 + 196, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 106 );
SE008 = playSeVer2( spep_0 + 62, 1360, "", spep_0 + 160, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 62, SE008, 106 );
SE009 = playSeVer2( spep_0 + 62, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE009, 76 );

--腕あげる
SE012 = playSeVer2( spep_0 + 90, 1003, "", 0, 0, 0, -1);

--腕ひく
SE014 = playSeVer2( spep_0 + 116, 1116, "",spep_0 + 166, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 952, SE038, 130 );
setSeVolumeByWorkId( spep_0 + 750, SE036, 130 );

-- ** ボイス ** --
--「必ずお前たちを倒す！！！」
playVoice( spep_0 + 0, 689 );
setVoiceVolume( spep_0 + 0, 689, 126 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 150; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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
--腕前に出す
SE016 = playSeVer2( spep_0 + 166, 1004, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE015, 79 );
SE017 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE017, 79 );

--気弾発射
SE018 = playSeVer2( spep_0 + 178, 1146, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 178, 1193, "",spep_0 + 392, 0, 36, -1);
SE020 = playSeVer2( spep_0 + 178, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE020, 162 );

--気弾向かっていく
SE021 = playSeVer2( spep_0 + 202, 1161, "",spep_0 + 390, 44, 34, -1);
SE022 = playSeVer2( spep_0 + 240, 1212, "",spep_0 + 372, 24, 18, -1);
setStartTimeMs( SE022,  533 );
SE023 = playSeVer2( spep_0 + 264, 1215, "",spep_0 + 390, 34, 42, -1);
setSeVolumeByWorkId( spep_0 + 264, SE023, 117 );
setStartTimeMs( SE023,  833 );

--気弾向かっていく
SE025 = playSeVer2( spep_0 + 262, 1044, "",spep_0 + 402, 86, 22, -1);
setSeVolumeByWorkId( spep_0 + 262, SE025, 158 );
setStartTimeMs( SE025,  33 );
SE026 = playSeVer2( spep_0 + 274, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE026, 150 );

--気弾ヒット
SE027 = playSeVer2( spep_0 + 348, 1068, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 348, 1011, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 348, 1024, "", 0, 0, 0, -1);

--気弾ヒット中
SE024 = playSeVer2( spep_0 + 394, 1356, "",spep_0 + 722, 38, 130, -1);
setStartTimeMs( SE024,  2633 );
SE030 = playSeVer2( spep_0 + 380, 1161, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 380, 1227, "",spep_0 + 650, 0, 70, -1);
SE032 = playSeVer2( spep_0 + 388, 1226, "",spep_0 + 674, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 388, SE032, 79 );

--暗転中環境音
SE033 = playSeVer2( spep_0 + 618, 1288, "",spep_0 + 1236, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 618, SE033, 71 );
SE034 = playSeVer2( spep_0 + 618, 1269, "",spep_0 + 1260, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 618, SE034, 41 );
SE035 = playSeVer2( spep_0 + 618, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE035, 31 );

--悟空腕差し出す
SE036 = playSeVer2( spep_0 + 750, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE036, 83 );
setTimeStretch( SE036, 1.43, 30, 4 );
SE037 = playSeVer2( spep_0 + 750, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE037, 150 );

--ピッコロ腕差し出す
SE038 = playSeVer2( spep_0 + 952, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 952, SE038, 76 );
setPitch( spep_0 + 952, SE038, -400 );
setTimeStretch( SE038, 1.05, 30, 4 );
SE039 = playSeVer2( spep_0 + 952, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 952, SE039, 148 );

--３人揃う
SE040 = playSeVer2( spep_0 + 1056, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1056, SE040, 153 );
setTimeStretch( SE040, 2, 30, 4 );
SE041 = playSeVer2( spep_0 + 1070, 44, "", 0, 26, 0, -1);
setTimeStretch( SE041, 1.41, 30, 4 );
SE042 = playSeVer2( spep_0 + 1070, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE042, 63 );
--[[
SE043 = playSeVer2( spep_0 + 1132, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1132, SE043, 251 );
SE044 = playSeVer2( spep_0 + 1164, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 1164, SE044, -600 );
setTimeStretch( SE044, 0.6, 30, 4 );

--画面遷移
SE045 = playSeVer2( spep_0 + 1200, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1200, SE045, 120 );
SE046 = playSeVer2( spep_0 + 1200, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1200, SE046, 146 );
]]
--３人気弾発射
SE047 = playSeVer2( spep_0 + 1248, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1248, SE047, 76 );
SE048 = playSeVer2( spep_0 + 1250, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1250, SE048, 123 );
setPitch( spep_0 + 1250, SE048, 100 );
setTimeStretch( SE048, 1.07, 30, 4 );
SE049 = playSeVer2( spep_0 + 1256, 1284, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 1256, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1256, SE050, 81 );

--気弾撃ち（背中）
SE051 = playSeVer2( spep_0 + 1358, 1159, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 1358, 1067, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 1380, 1161, "",spep_0 + 1564, 0, 12, -1);
SE054 = playSeVer2( spep_0 + 1380, 1211, "",spep_0 + 1562, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 1380, SE054, 266 );

--敵飲まれる
SE055 = playSeVer2( spep_0 + 1426, 1258, "",spep_0 + 1524, 28, 26, -1);
setStartTimeMs( SE055,  167 );

-- ** ボイス ** --
--「ぐっ、ぐぐぐ……！！！！」
playVoice( spep_0 + 509, 690 );
setVoiceVolume( spep_0 + 509, 690, 126 );

--「悟飯！！あまったれてんじゃねえぞ！！」
playVoice( spep_0 + 682, 691 );
setVoiceVolume( spep_0 + 682, 691, 126 );

--「おまえの力はこんなものじゃないだろう！！」
playVoice( spep_0 + 881, 692 );
setVoiceVolume( spep_0 + 881, 692, 126 );

--「だああーーーーっ！！！！！」
playVoice( spep_0 + 1232, 693 );
setVoiceVolume( spep_0 + 1232, 693, 126 );


-- ** おわり ** --
hideKoScreen();
dealDamage( spep_0 + 1440 );
endPhase( spep_0 + 1542);

else end
