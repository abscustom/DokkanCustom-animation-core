--1031220:LR_超サイヤ人2カリフラ+超サイヤ人2ケール_アクティブ必殺技：リミットブレイクブラスター
--sp_effect_a3_00120
--ut0095

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163849; --開始〜フィニッシュまで ef_001
SP_01b = 163850; --開始〜フィニッシュまで ef_001b

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
 
if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 160 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1242 - 1);  -- スキップ先フレーム指定
            --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。

            -- ** 音 ** --
            --二人気弾発射
            SE037 = playSeVer2( spep_0 + 1242, 1423, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 1242, SE037, 73 );
            SE038 = playSeVer2( spep_0 + 1242, 1258, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 1242, SE038, 83 );
            SE039 = playSeVer2( spep_0 + 1242, 1213, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 1242, SE039, 73 );

            -- ** ボイス ** --
            --「はあああああ！！」
            playVoice( spep_0 + 1242, 998 );
            setVoiceVolume( spep_0 + 1242, 998, 130 );

            --「はあぁぁぁぁ!!!!」
            playVoice( spep_0 + 1242, 999 );
            setVoiceVolume( spep_0 + 1242, 999, 130 );
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始〜フィニッシュまで
-------------------------------------------------

MAX_FRAME_0 = 1660;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜フィニッシュまで (ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始〜フィニッシュまで (ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_0 + 1364 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1440 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1364 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 1364 + OFFSET_X, 1, 137.4, -51.8 , 0 );
setMoveKey( spep_0 + 1367 + OFFSET_X, 1, 137.4, -51.8 , 0 );
setMoveKey( spep_0 + 1368 + OFFSET_X, 1, 140, -38.8 , 0 );
setMoveKey( spep_0 + 1369 + OFFSET_X, 1, 140, -38.8 , 0 );
setMoveKey( spep_0 + 1370 + OFFSET_X, 1, 145.2, -50.5 , 0 );
setMoveKey( spep_0 + 1371 + OFFSET_X, 1, 145.2, -50.5 , 0 );
setMoveKey( spep_0 + 1372 + OFFSET_X, 1, 141.3, -34.9 , 0 );
setMoveKey( spep_0 + 1373 + OFFSET_X, 1, 141.3, -34.9 , 0 );
setMoveKey( spep_0 + 1374 + OFFSET_X, 1, 140, -36.2 , 0 );
setMoveKey( spep_0 + 1375 + OFFSET_X, 1, 140, -36.2 , 0 );
setMoveKey( spep_0 + 1376 + OFFSET_X, 1, 138.7, -51.8 , 0 );
setMoveKey( spep_0 + 1377 + OFFSET_X, 1, 138.7, -51.8 , 0 );
setMoveKey( spep_0 + 1378 + OFFSET_X, 1, 134.8, -36.2 , 0 );
setMoveKey( spep_0 + 1379 + OFFSET_X, 1, 134.8, -36.2 , 0 );
setMoveKey( spep_0 + 1380 + OFFSET_X, 1, 141.3, -40.1 , 0 );
setMoveKey( spep_0 + 1381 + OFFSET_X, 1, 141.3, -40.1 , 0 );
setMoveKey( spep_0 + 1382 + OFFSET_X, 1, 143.9, -37.5 , 0 );
setMoveKey( spep_0 + 1383 + OFFSET_X, 1, 143.9, -37.5 , 0 );
setMoveKey( spep_0 + 1384 + OFFSET_X, 1, 143.9, -36.2 , 0 );
setMoveKey( spep_0 + 1385 + OFFSET_X, 1, 143.9, -36.2 , 0 );
setMoveKey( spep_0 + 1386 + OFFSET_X, 1, 145.2, -47.9 , 0 );
setMoveKey( spep_0 + 1387 + OFFSET_X, 1, 145.2, -47.9 , 0 );
setMoveKey( spep_0 + 1388 + OFFSET_X, 1, 143.9, -38.8 , 0 );
setMoveKey( spep_0 + 1389 + OFFSET_X, 1, 143.9, -38.8 , 0 );
setMoveKey( spep_0 + 1390 + OFFSET_X, 1, 137.4, -51.8 , 0 );
setMoveKey( spep_0 + 1391 + OFFSET_X, 1, 137.4, -51.8 , 0 );
setMoveKey( spep_0 + 1392 + OFFSET_X, 1, 147.8, -27.4 , 0 );
setMoveKey( spep_0 + 1393 + OFFSET_X, 1, 147.8, -27.4 , 0 );
setMoveKey( spep_0 + 1394 + OFFSET_X, 1, 145.1, -28.6 , 0 );
setMoveKey( spep_0 + 1395 + OFFSET_X, 1, 145.1, -28.6 , 0 );
setMoveKey( spep_0 + 1396 + OFFSET_X, 1, 138.7, -51.8 , 0 );
setMoveKey( spep_0 + 1397 + OFFSET_X, 1, 138.7, -51.8 , 0 );
setMoveKey( spep_0 + 1398 + OFFSET_X, 1, 139.9, -21 , 0 );
setMoveKey( spep_0 + 1399 + OFFSET_X, 1, 139.9, -21 , 0 );
setMoveKey( spep_0 + 1400 + OFFSET_X, 1, 129.6, -54.4 , 0 );
setMoveKey( spep_0 + 1401 + OFFSET_X, 1, 129.6, -54.4 , 0 );
setMoveKey( spep_0 + 1402 + OFFSET_X, 1, 146.4, -42.8 , 0 );
setMoveKey( spep_0 + 1403 + OFFSET_X, 1, 146.4, -42.8 , 0 );
setMoveKey( spep_0 + 1404 + OFFSET_X, 1, 147.7, -40.2 , 0 );
setMoveKey( spep_0 + 1405 + OFFSET_X, 1, 147.7, -40.2 , 0 );
setMoveKey( spep_0 + 1406 + OFFSET_X, 1, 137.4, -51.8 , 0 );
setMoveKey( spep_0 + 1407 + OFFSET_X, 1, 137.4, -51.8 , 0 );
setMoveKey( spep_0 + 1408 + OFFSET_X, 1, 147.7, -27.4 , 0 );
setMoveKey( spep_0 + 1409 + OFFSET_X, 1, 147.7, -27.4 , 0 );
setMoveKey( spep_0 + 1410 + OFFSET_X, 1, 145.2, -57 , 0 );
setMoveKey( spep_0 + 1411 + OFFSET_X, 1, 145.2, -57 , 0 );
setMoveKey( spep_0 + 1412 + OFFSET_X, 1, 140, -26.1 , 0 );
setMoveKey( spep_0 + 1413 + OFFSET_X, 1, 140, -26.1 , 0 );
setMoveKey( spep_0 + 1414 + OFFSET_X, 1, 140, -29.7 , 0 );
setMoveKey( spep_0 + 1415 + OFFSET_X, 1, 140, -29.7 , 0 );
setMoveKey( spep_0 + 1416 + OFFSET_X, 1, 147.8, -51.8 , 0 );
setMoveKey( spep_0 + 1417 + OFFSET_X, 1, 147.8, -51.8 , 0 );
setMoveKey( spep_0 + 1418 + OFFSET_X, 1, 133.5, -31 , 0 );
setMoveKey( spep_0 + 1419 + OFFSET_X, 1, 133.5, -31 , 0 );
setMoveKey( spep_0 + 1420 + OFFSET_X, 1, 137.4, -51.8 , 0 );
setMoveKey( spep_0 + 1421 + OFFSET_X, 1, 137.4, -51.8 , 0 );
setMoveKey( spep_0 + 1422 + OFFSET_X, 1, 145, -30 , 0 );
setMoveKey( spep_0 + 1423 + OFFSET_X, 1, 145, -30 , 0 );
setMoveKey( spep_0 + 1424 + OFFSET_X, 1, 145.1, -29.9 , 0 );
setMoveKey( spep_0 + 1425 + OFFSET_X, 1, 145.1, -29.9 , 0 );
setMoveKey( spep_0 + 1426 + OFFSET_X, 1, 132.2, -57 , 0 );
setMoveKey( spep_0 + 1427 + OFFSET_X, 1, 132.2, -57 , 0 );
setMoveKey( spep_0 + 1428 + OFFSET_X, 1, 131, -33.8 , 0 );
setMoveKey( spep_0 + 1429 + OFFSET_X, 1, 131, -33.8 , 0 );
setMoveKey( spep_0 + 1430 + OFFSET_X, 1, 147.8, -44 , 0 );
setMoveKey( spep_0 + 1431 + OFFSET_X, 1, 147.8, -44 , 0 );
setMoveKey( spep_0 + 1432 + OFFSET_X, 1, 127, -44 , 0 );
setMoveKey( spep_0 + 1433 + OFFSET_X, 1, 127, -44 , 0 );
setMoveKey( spep_0 + 1434 + OFFSET_X, 1, 127, -42.7 , 0 );
setMoveKey( spep_0 + 1435 + OFFSET_X, 1, 127, -42.7 , 0 );
setMoveKey( spep_0 + 1436 + OFFSET_X, 1, 136.1, -46.6 , 0 );
setMoveKey( spep_0 + 1437 + OFFSET_X, 1, 136.1, -46.6 , 0 );
setMoveKey( spep_0 + 1438 + OFFSET_X, 1, 147.7, -20.9 , 0 );
setMoveKey( spep_0 + 1440 + OFFSET_X, 1, 147.7, -20.9 , 0 );

setScaleKey( spep_0 + 1364 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 1440 + OFFSET_X, 1, 2.05, 2.05 );

setRotateKey( spep_0 + 1364 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1440 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 1402 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 1404 + OFFSET_X, 1, 3, 0, 0, 0, 0.18 );
setBlendColor( spep_0 + 1406 + OFFSET_X, 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_0 + 1408 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 1410 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 + 1412 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_0 + 1414 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_0 + 1416 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_0 + 1422 + OFFSET_X, 1, 3, 0, 0, 0, 0.88 );
setBlendColor( spep_0 + 1426 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_0 + 1428 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_0 + 1440 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--入り
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 71 );
SE004 = playSeVer2( spep_0 + 0, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 71 );
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 79 );

--入り
SE006 = playSeVer2( spep_0 + 28, 8, "", 0, 0, 0, -1);

--オーラ
SE007 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE007, 79 );
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE008, 79 );

--気弾発射
SE009 = playSeVer2( spep_0 + 84, 1022, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 84, 1212, "",spep_0 + 264, 0, 108, -1);
SE011 = playSeVer2( spep_0 + 84, 1051, "", 0, 0, 0, -1);

--オーラ
SE012 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE012, 79 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE003, 0);

stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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
--オーラ
SE013 = playSeVer2( spep_0 + 168, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE013, 56 );

--気弾中
SE014 = playSeVer2( spep_0 + 168, 1211, "",spep_0 + 1286, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 168, SE014, 112 );
SE015 = playSeVer2( spep_0 + 168, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE015, 56 );

--画面遷移
SE016 = playSeVer2( spep_0 + 174, 1232, "", 0, 0, 0, -1);

--セリフカットイン
SE017 = playSeVer2( spep_0 + 178, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE017, 63 );

--オーラ
SE018 = playSeVer2( spep_0 + 376, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE018, 56 );

--気弾中
SE019 = playSeVer2( spep_0 + 384, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE019, 56 );

--オーラ
SE020 = playSeVer2( spep_0 + 510, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE020, 56 );

--涙あふれる
SE021 = playSeVer2( spep_0 + 526, 1303, "",spep_0 + 650, 0, 90, -1);
setSeVolumeByWorkId( spep_0 + 526, SE021, 50 );

--気弾中
SE022 = playSeVer2( spep_0 + 582, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE022, 56 );

--筋肉盛り上がる
SE023 = playSeVer2( spep_0 + 616, 1443, "",spep_0 + 676, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 616, SE023, 119 );
SE024 = playSeVer2( spep_0 + 616, 1313, "",spep_0 + 684, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 616, SE024, 83 );
SE025 = playSeVer2( spep_0 + 646, 1414, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 646, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE026, 85 );
SE027 = playSeVer2( spep_0 + 668, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE027, 79 );
SE028 = playSeVer2( spep_0 + 694, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 694, SE028, 79 );
SE029 = playSeVer2( spep_0 + 694, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 694, SE029, 79 );

--オーラ
SE030 = playSeVer2( spep_0 + 716, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE030, 56 );

--気弾ボリュームアップ
SE031 = playSeVer2( spep_0 + 778, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 778, SE031, 87 );
SE032 = playSeVer2( spep_0 + 778, 1258, "", 0, 0, 0, -1);

--気弾中
SE033 = playSeVer2( spep_0 + 786, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE033, 56 );

--オーラ
SE034 = playSeVer2( spep_0 + 854, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 854, SE034, 56 );

--気弾中
SE035 = playSeVer2( spep_0 + 994, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 994, SE035, 56 );

--オーラ
SE036 = playSeVer2( spep_0 + 1068, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1068, SE036, 56 );

--二人気弾発射
SE037 = playSeVer2( spep_0 + 1210, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1210, SE037, 73 );
SE038 = playSeVer2( spep_0 + 1210, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1210, SE038, 83 );
SE039 = playSeVer2( spep_0 + 1210, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1210, SE039, 73 );

--敵ヒット
SE040 = playSeVer2( spep_0 + 1396, 1437, "", 0, 6, 0, -1);
setStartTimeMs( SE040,  2267 );

--気弾飛んでいく
SE041 = playSeVer2( spep_0 + 1290, 1212, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1290, 1304, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1302, 1355, "", 0, 0, 0, -1);

--気弾飛んでいく２
SE044 = playSeVer2( spep_0 + 1436, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 1440, 1161, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 1440, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1440, SE046, 58 );


-- ** ボイス ** --
--「お前はあたしの仲間だ！どこまでもあたしについてこい！」
playVoice( spep_0 + 178, 994 );
setVoiceVolume( spep_0 + 178, 994, 130 );

--「はい！」
playVoice( spep_0 + 544, 995 );
setVoiceVolume( spep_0 + 544, 995, 130 );

--「はあああああ！！」
playVoice( spep_0 + 712, 996 );
setVoiceVolume( spep_0 + 712, 996, 130 );

--「ウルトラスーパーじゃねえか！あたしも負けねえよ！」
playVoice( spep_0 + 850, 997 );
setVoiceVolume( spep_0 + 850, 997, 130 );

--「はあああああ！！」
playVoice( spep_0 + 1188, 998 );
setVoiceVolume( spep_0 + 1188, 998, 130 );

--「はあぁぁぁぁ!!!!」
playVoice( spep_0 + 1186, 999 );
setVoiceVolume( spep_0 + 1186, 999, 130 );

--終わり
hideKoScreen();
dealDamage( spep_0 + 1442);
endPhase( spep_0 + MAX_FRAME_0 - 92); -- 1568f
 
else end