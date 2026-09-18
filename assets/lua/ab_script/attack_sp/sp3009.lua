--4033560:UR_ナッパ+ベジータ_必殺技：ジャイアントストーム
--sp_effect_a7_00077
--sp3009

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164444;  -- カットイン前 ef_001
SP_02 = 164445;  -- カットイン後 ef_002
SP_03 = 164446;  -- 全体攻撃 ef_003


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

--「1体目（初回時）の演出」で冒頭に敵表示なし、
--「2体目以降の演出」では冒頭に敵が表示されている場合は
--こちらの敵側の動きはコメントアウトする

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
ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文(敵の初期化)
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 316;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 350);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 350, SP_02, spep_2 + 350 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --爆発
        SE023 = playSeVer2( spep_2 + 353, 1264, "",spep_2 + 386, 0, 76, -1);
        setSeVolumeByWorkId( spep_2 + 535, SE023, 63 );
        SE024 = playSeVer2( spep_2 + 353, 1159, "",spep_2 + 410, 0, 98, -1);
        --地球から光広がる
        SE025 = playSeVer2( spep_2 + 353, 1158, "", 0, 0, 0, -1);
        SE026 = playSeVer2( spep_2 + 353, 1343, "", 0, 0, 0, -1);
        SE027 = playSeVer2( spep_2 + 353, 1305, "", 0, 0, 0, -1);
    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カットイン前
-------------------------------------------------
MAX_FRAME_0 = 316;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 122;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 280, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 59 );

--歩いてくる
SE002 = playSeVer2( spep_0 + 0, 1107, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1111, "",spep_0 + 8, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 123 );
SE004 = playSeVer2( spep_0 + 0, 1033, "",spep_0 + 20, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 60 );
SE005 = playSeVer2( spep_0 + 40, 1107, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 40, 1111, "",spep_0 + 56, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 126 );
SE007 = playSeVer2( spep_0 + 40, 1033, "",spep_0 + 70, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 56 );
SE008 = playSeVer2( spep_0 + 96, 1107, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1111, "",spep_0 + 112, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 129 );
SE010 = playSeVer2( spep_0 + 96, 1033, "",spep_0 + 124, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 62 );

--気を高める
SE012 = playSeVer2( spep_0 + 208, 1391, "",spep_0 + 300, 0, 28, -1);
SE013 = playSeVer2( spep_0 + 208, 1227, "",spep_0 + 324, 0, 12, -1);
SE014 = playSeVer2( spep_0 + 258, 1258, "",spep_0 + 328, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 258, SE014, 79 );
SE015 = playSeVer2( spep_0 + 264, 1011, "",spep_0 + 328, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --316F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カットイン後
-------------------------------------------------
MAX_FRAME_2 = 520;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 400 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 520 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 400 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 400 + OFFSET_X, 1, 55, -202.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 55, -202.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 49.8, -202.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 49.8, -202.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 60.4, -196.5 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 60.4, -196.5 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 52.5, -184.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 52.5, -184.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 62.8, -186.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 62.8, -186.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 50.2, -175.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 50.2, -175.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 62.3, -181.7 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 62.3, -181.7 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 50.5, -170.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 50.5, -170.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 61.6, -171.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 61.6, -171.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 53.6, -159 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 53.6, -159 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 51.6, -164.3 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 51.6, -164.3 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 59.7, -156.4 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 59.7, -156.4 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 52.1, -155.6 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 52.1, -155.6 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 59, -144.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 59, -144.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 50.2, -150.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 50.2, -150.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 61.6, -140.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 61.6, -140.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 51.1, -143.2 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 51.1, -143.2 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 58.2, -129.1 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 58.2, -129.1 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 54.4, -134.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 54.4, -134.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 58.8, -121.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 58.8, -121.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 55.4, -127.3 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 55.4, -127.3 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 52.4, -116.6 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 52.4, -116.6 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 59.2, -115.5 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 59.2, -115.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 51.6, -111.9 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 51.6, -111.9 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 59.7, -106.8 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 59.7, -106.8 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 51.5, -103.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 51.5, -103.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 56.7, -107.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 56.7, -107.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 54, -95.1 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 54, -95.1 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 58.7, -99.7 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 58.7, -99.7 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 55, -88.5 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 55, -88.5 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 54.7, -92.6 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 54.7, -92.6 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 52.4, -84.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 52.4, -84.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 55.5, -86.8 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 55.5, -86.8 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 54.3, -76.8 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 54.3, -76.8 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 55.8, -82.2 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 55.8, -82.2 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 57.5, -72.4 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 57.5, -72.4 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 54.6, -75.9 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 54.6, -75.9 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 52.6, -65.4 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 52.6, -65.4 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 53.6, -70.1 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 53.6, -70.1 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 56.8, -61.7 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 56.8, -61.7 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 55.4, -63.8 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 55.4, -63.8 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 55, -54.4 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 55, -54.4 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 53.2, -58.8 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 53.2, -58.8 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 56.3, -51.6 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 56.3, -51.6 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 55.8, -53.9 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 55.8, -53.9 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 54.9, -46.5 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 54.9, -46.5 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 54.5, -49.2 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 54.5, -49.2 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 53.6, -42.3 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 53.6, -42.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 57.3, -42.4 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 57.3, -42.4 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 51.6, -38.5 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 51.6, -38.5 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 57.1, -36.5 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 57.1, -36.5 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 53.4, -36.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 53.4, -36.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 57.9, -34.2 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 57.9, -34.2 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 51.7, -30.7 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 51.7, -30.7 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 57.1, -31.4 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 57.1, -31.4 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 52.3, -27.6 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 52.3, -27.6 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 56.6, -27.1 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 56.6, -27.1 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 52.7, -23.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 52.7, -23.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 57.6, -23 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 57.6, -23 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 53.1, -21.2 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 53.1, -21.2 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 57.4, -17.1 , 0 );

setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 499 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 2.67, 2.67 );

setRotateKey( spep_2 + 400 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 520 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 400 + OFFSET_X, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_2 + 520 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--手に気を溜める
SE017 = playSeVer2( spep_2 + 10, 1397, "",spep_2 + 182, 0, 24, -1);
SE018 = playSeVer2( spep_2 + 10, 1227, "",spep_2 + 186, 0, 30, -1);
SE019 = playSeVer2( spep_2 + 114, 1467, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 150; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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

--クン
SE020 = playSeVer2( spep_2 + 154, 1430, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 154, 1017, "", 0, 0, 0, -1);

--足元光る
SE022 = playSeVer2( spep_2 + 204, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE022, 112 );

--爆発
SE023 = playSeVer2( spep_2 + 252, 1264, "",spep_2 + 386, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 252, SE023, 63 );
SE024 = playSeVer2( spep_2 + 254, 1159, "",spep_2 + 410, 0, 98, -1);

--地球から光広がる
SE025 = playSeVer2( spep_2 + 300, 1158, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 314, 1343, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 314, 1305, "", 0, 0, 0, -1);

--【全体攻撃】爆発
SE028 = playSeVer2( spep_2 + 398, 1159, "",spep_2 + 516, 0, 8, -1);
SE029 = playSeVer2( spep_2 + 398, 1264, "",spep_2 + 518, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 398, SE029, 63 );
SE030 = playSeVer2( spep_2 + 398, 1343, "",spep_2 + 522, 0, 12, -1);

-- ** ダメージ表示 ** --
pauseMovie( spep_2 + MAX_FRAME_2 - 2, 1 );   -- 一時停止(endphaseから-2F)
dealDamage( spep_2 + 400); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム 518F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- カットイン前
-------------------------------------------------
MAX_FRAME_0 = 316;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 122;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 280, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 59 );

--歩いてくる
SE002 = playSeVer2( spep_0 + 0, 1107, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1111, "",spep_0 + 8, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 123 );
SE004 = playSeVer2( spep_0 + 0, 1033, "",spep_0 + 20, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 60 );
SE005 = playSeVer2( spep_0 + 40, 1107, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 40, 1111, "",spep_0 + 56, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 126 );
SE007 = playSeVer2( spep_0 + 40, 1033, "",spep_0 + 70, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 40, SE007, 56 );
SE008 = playSeVer2( spep_0 + 96, 1107, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1111, "",spep_0 + 112, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 129 );
SE010 = playSeVer2( spep_0 + 96, 1033, "",spep_0 + 124, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 62 );

--気を高める
SE012 = playSeVer2( spep_0 + 208, 1391, "",spep_0 + 300, 0, 28, -1);
SE013 = playSeVer2( spep_0 + 208, 1227, "",spep_0 + 324, 0, 12, -1);
SE014 = playSeVer2( spep_0 + 258, 1258, "",spep_0 + 328, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 258, SE014, 79 );
SE015 = playSeVer2( spep_0 + 264, 1011, "",spep_0 + 328, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --316F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カットイン後
-------------------------------------------------
MAX_FRAME_2 = 520;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン後(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 400 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 520 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 400 + OFFSET_X, 1,8 );

setMoveKey( spep_2 + 400 + OFFSET_X, 1, -55, -202.9 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -55, -202.9 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -49.8, -202.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -49.8, -202.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -60.4, -196.5 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -60.4, -196.5 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -52.5, -184.2 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -52.5, -184.2 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -62.8, -186.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -62.8, -186.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -50.2, -175.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -50.2, -175.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -62.3, -181.7 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -62.3, -181.7 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -50.5, -170.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -50.5, -170.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -61.6, -171.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -61.6, -171.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -53.6, -159 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -53.6, -159 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -51.6, -164.3 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -51.6, -164.3 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -59.7, -156.4 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -59.7, -156.4 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -52.1, -155.6 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -52.1, -155.6 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -59, -144.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -59, -144.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -50.2, -150.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -50.2, -150.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -61.6, -140.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -61.6, -140.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -51.1, -143.2 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -51.1, -143.2 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -58.2, -129.1 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -58.2, -129.1 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -54.4, -134.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -54.4, -134.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -58.8, -121.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -58.8, -121.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -55.4, -127.3 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -55.4, -127.3 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -52.4, -116.6 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -52.4, -116.6 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -59.2, -115.5 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -59.2, -115.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -51.6, -111.9 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -51.6, -111.9 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -59.7, -106.8 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -59.7, -106.8 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -51.5, -103.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -51.5, -103.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -56.7, -107.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -56.7, -107.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -54, -95.1 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -54, -95.1 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -58.7, -99.7 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -58.7, -99.7 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -55, -88.5 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -55, -88.5 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -54.7, -92.6 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -54.7, -92.6 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -52.4, -84.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -52.4, -84.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -55.5, -86.8 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -55.5, -86.8 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -54.3, -76.8 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -54.3, -76.8 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -55.8, -82.2 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -55.8, -82.2 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -57.5, -72.4 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -57.5, -72.4 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -54.6, -75.9 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -54.6, -75.9 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -52.6, -65.4 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -52.6, -65.4 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -53.6, -70.1 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -53.6, -70.1 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -56.8, -61.7 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -56.8, -61.7 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -55.4, -63.8 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -55.4, -63.8 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -55, -54.4 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -55, -54.4 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -53.2, -58.8 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -53.2, -58.8 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -56.3, -51.6 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -56.3, -51.6 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -55.8, -53.9 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -55.8, -53.9 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -54.9, -46.5 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -54.9, -46.5 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -54.5, -49.2 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -54.5, -49.2 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -53.6, -42.3 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -53.6, -42.3 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -57.3, -42.4 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -57.3, -42.4 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -51.6, -38.5 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -51.6, -38.5 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -57.1, -36.5 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -57.1, -36.5 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -53.4, -36.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -53.4, -36.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -57.9, -34.2 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -57.9, -34.2 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -51.7, -30.7 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -51.7, -30.7 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -57.1, -31.4 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -57.1, -31.4 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -52.3, -27.6 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -52.3, -27.6 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -56.6, -27.1 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -56.6, -27.1 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -52.7, -23.5 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -52.7, -23.5 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -57.6, -23 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -57.6, -23 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -53.1, -21.2 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -53.1, -21.2 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -57.4, -17.1 , 0 );

setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 449 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 453 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 499 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 2.67, 2.67 );

setRotateKey( spep_2 + 400 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 520 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 400 + OFFSET_X, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_2 + 520 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--手に気を溜める
SE017 = playSeVer2( spep_2 + 10, 1397, "",spep_2 + 182, 0, 24, -1);
SE018 = playSeVer2( spep_2 + 10, 1227, "",spep_2 + 186, 0, 30, -1);
SE019 = playSeVer2( spep_2 + 114, 1467, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 150; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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

--クン
SE020 = playSeVer2( spep_2 + 154, 1430, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 154, 1017, "", 0, 0, 0, -1);

--足元光る
SE022 = playSeVer2( spep_2 + 204, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE022, 112 );

--爆発
SE023 = playSeVer2( spep_2 + 252, 1264, "",spep_2 + 386, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 252, SE023, 63 );
SE024 = playSeVer2( spep_2 + 254, 1159, "",spep_2 + 410, 0, 98, -1);

--地球から光広がる
SE025 = playSeVer2( spep_2 + 300, 1158, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 314, 1343, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 314, 1305, "", 0, 0, 0, -1);

--【全体攻撃】爆発
SE028 = playSeVer2( spep_2 + 398, 1159, "",spep_2 + 516, 0, 8, -1);
SE029 = playSeVer2( spep_2 + 398, 1264, "",spep_2 + 518, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 398, SE029, 63 );
SE030 = playSeVer2( spep_2 + 398, 1343, "",spep_2 + 522, 0, 12, -1);

-- ** ダメージ表示 ** --
pauseMovie( spep_2 + MAX_FRAME_2 - 2, 1 );   -- 一時停止(endphaseから-2F)
dealDamage( spep_2 + 400); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム 518F

end
end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避　　2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    -- stopSe( SP_dodge - 12, SE001, 0);
    -- stopSe( SP_dodge - 12, SE002, 0);
    -- stopSe( SP_dodge - 12, SE003, 0);
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 72;

setupMovie(0, SP_01, 932, 1); -- xxxxはusmの全体攻撃背景が始まるフレームを指定

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- 全体攻撃(ef_003)
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_z + 0, 1, 1 );
changeAnime( spep_z + 0, 1, 108 );

y = 120

setMoveKey( spep_z + 0, 1, 55, -202.9 + y , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 46.8, -202.4 + y , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 46.8, -202.4 + y , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 59.5, -196.5 + y , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 59.5, -196.5 + y , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 48.2, -184.2 + y , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 48.2, -184.2 + y , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 54.4, -186.4 + y , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 54.4, -186.4 + y , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, 52.1, -175.7 + y , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, 52.1, -175.7 + y , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 61.4, -181.7 + y , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 61.4, -181.7 + y , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 47.2, -170.6 + y , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 47.2, -170.6 + y , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 58.1, -171.2 + y , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 58.1, -171.2 + y , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 53.3, -159 + y , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 53.3, -159 + y , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 56.7, -164.3 + y , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 56.7, -164.3 + y , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 54, -156.4 + y , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 54, -156.4 + y , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 56.3, -155.6 + y , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 56.3, -155.6 + y , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 56.7, -144.3 + y , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 56.7, -144.3 + y , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 55.1, -150.4 + y , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 55.1, -150.4 + y , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 54.5, -140.3 + y , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 54.5, -140.3 + y , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 55.9, -143.2 + y , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 55.9, -143.2 + y , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 50.3, -129.1 + y , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 50.3, -129.1 + y , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 55.6, -134.4 + y , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 55.6, -134.4 + y , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 57, -121.9 + y , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 57, -121.9 + y , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 55.1, -127.3 + y , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 55.1, -127.3 + y , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 51.2, -116.6 + y , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 51.2, -116.6 + y , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 56.8, -115.5 + y , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 56.8, -115.5 + y , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 51.2, -111.9 + y , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 51.2, -111.9 + y , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 59.9, -106.8 + y , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 59.9, -106.8 + y , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 51, -103.8 + y , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 51, -103.8 + y , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 58.8, -107.5 + y , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 58.8, -107.5 + y , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 50.6, -95.1 + y , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, 50.6, -95.1 + y , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, 57.1, -99.7 + y , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, 57.1, -99.7 + y , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, 55.4, -88.5 + y , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, 55.4, -88.5 + y , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, 56.8, -92.6 + y , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, 56.8, -92.6 + y , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, 50.7, -84.5 + y , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, 50.7, -84.5 + y , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, 56.8, -86.8 + y , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, 56.8, -86.8 + y , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, 51.6, -76.8 + y , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, 51.6, -76.8 + y , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, 55.9, -82.2 + y , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, 55.9, -82.2 + y , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, 51.8, -72.4 + y , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, 51.8, -72.4 + y , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, 59, -75.9 + y , 0 );

r = 0.25

setScaleKey( spep_z + 0, 1, 2.2 + r, 2.2 + r );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 2.22 + r, 2.22 + r );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 2.22 + r, 2.22 + r );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 2.24 + r, 2.24 + r );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 2.24 + r, 2.24 + r );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 2.26 + r, 2.26 + r );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 2.26 + r, 2.26 + r );
setScaleKey( spep_z + 8 + OFFSET_X, 1, 2.28 + r, 2.28 + r );
setScaleKey( spep_z + 9 + OFFSET_X, 1, 2.28 + r, 2.28 + r );
setScaleKey( spep_z + 10 + OFFSET_X, 1, 2.3 + r, 2.3 + r );
setScaleKey( spep_z + 11 + OFFSET_X, 1, 2.3 + r, 2.3 + r );
setScaleKey( spep_z + 12 + OFFSET_X, 1, 2.32 + r, 2.32 + r );
setScaleKey( spep_z + 13 + OFFSET_X, 1, 2.32 + r, 2.32 + r );
setScaleKey( spep_z + 14 + OFFSET_X, 1, 2.34 + r, 2.34 + r );
setScaleKey( spep_z + 15 + OFFSET_X, 1, 2.34 + r, 2.34 + r );
setScaleKey( spep_z + 16 + OFFSET_X, 1, 2.36 + r, 2.36 + r );
setScaleKey( spep_z + 17 + OFFSET_X, 1, 2.36 + r, 2.36 + r );
setScaleKey( spep_z + 18 + OFFSET_X, 1, 2.38 + r, 2.38 + r );
setScaleKey( spep_z + 19 + OFFSET_X, 1, 2.38 + r, 2.38 + r );
setScaleKey( spep_z + 20 + OFFSET_X, 1, 2.39 + r, 2.39 + r );
setScaleKey( spep_z + 21 + OFFSET_X, 1, 2.39 + r, 2.39 + r );
setScaleKey( spep_z + 22 + OFFSET_X, 1, 2.41 + r, 2.41 + r );
setScaleKey( spep_z + 23 + OFFSET_X, 1, 2.41 + r, 2.41 + r );
setScaleKey( spep_z + 24 + OFFSET_X, 1, 2.43 + r, 2.43 + r );
setScaleKey( spep_z + 25 + OFFSET_X, 1, 2.43 + r, 2.43 + r );
setScaleKey( spep_z + 26 + OFFSET_X, 1, 2.44 + r, 2.44 + r );
setScaleKey( spep_z + 27 + OFFSET_X, 1, 2.44 + r, 2.44 + r );
setScaleKey( spep_z + 28 + OFFSET_X, 1, 2.46 + r, 2.46 + r );
setScaleKey( spep_z + 29 + OFFSET_X, 1, 2.46 + r, 2.46 + r );
setScaleKey( spep_z + 30 + OFFSET_X, 1, 2.47 + r, 2.47 + r );
setScaleKey( spep_z + 31 + OFFSET_X, 1, 2.47 + r, 2.47 + r );
setScaleKey( spep_z + 32 + OFFSET_X, 1, 2.49 + r, 2.49 + r );
setScaleKey( spep_z + 33 + OFFSET_X, 1, 2.49 + r, 2.49 + r );
setScaleKey( spep_z + 34 + OFFSET_X, 1, 2.5 + r, 2.5 + r );
setScaleKey( spep_z + 35 + OFFSET_X, 1, 2.5 + r, 2.5 + r );
setScaleKey( spep_z + 36 + OFFSET_X, 1, 2.52 + r, 2.52 + r );
setScaleKey( spep_z + 37 + OFFSET_X, 1, 2.52 + r, 2.52 + r );
setScaleKey( spep_z + 38 + OFFSET_X, 1, 2.53 + r, 2.53 + r );
setScaleKey( spep_z + 39 + OFFSET_X, 1, 2.53 + r, 2.53 + r );
setScaleKey( spep_z + 40 + OFFSET_X, 1, 2.54 + r, 2.54 + r );
setScaleKey( spep_z + 41 + OFFSET_X, 1, 2.54 + r, 2.54 + r );
setScaleKey( spep_z + 42 + OFFSET_X, 1, 2.56 + r, 2.56 + r );
setScaleKey( spep_z + 43 + OFFSET_X, 1, 2.56 + r, 2.56 + r );
setScaleKey( spep_z + 44 + OFFSET_X, 1, 2.57 + r, 2.57 + r );
setScaleKey( spep_z + 45 + OFFSET_X, 1, 2.57 + r, 2.57 + r );
setScaleKey( spep_z + 46 + OFFSET_X, 1, 2.58 + r, 2.58 + r );
setScaleKey( spep_z + 47 + OFFSET_X, 1, 2.58 + r, 2.58 + r );
setScaleKey( spep_z + 48 + OFFSET_X, 1, 2.59 + r, 2.59 + r );
setScaleKey( spep_z + 49 + OFFSET_X, 1, 2.59 + r, 2.59 + r );
setScaleKey( spep_z + 50 + OFFSET_X, 1, 2.6 + r, 2.6 + r );
setScaleKey( spep_z + 51 + OFFSET_X, 1, 2.6 + r, 2.6 + r );
setScaleKey( spep_z + 52 + OFFSET_X, 1, 2.61 + r, 2.61 + r );
setScaleKey( spep_z + 53 + OFFSET_X, 1, 2.61 + r, 2.61 + r );
setScaleKey( spep_z + 54 + OFFSET_X, 1, 2.62 + r, 2.62 + r );
setScaleKey( spep_z + 55 + OFFSET_X, 1, 2.62 + r, 2.62 + r );
setScaleKey( spep_z + 56 + OFFSET_X, 1, 2.63 + r, 2.63 + r );
setScaleKey( spep_z + 57 + OFFSET_X, 1, 2.63 + r, 2.63 + r );
setScaleKey( spep_z + 58 + OFFSET_X, 1, 2.64 + r, 2.64 + r );
setScaleKey( spep_z + 59 + OFFSET_X, 1, 2.64 + r, 2.64 + r );
setScaleKey( spep_z + 60 + OFFSET_X, 1, 2.65 + r, 2.65 + r );
setScaleKey( spep_z + 61 + OFFSET_X, 1, 2.65 + r, 2.65 + r );
setScaleKey( spep_z + 62 + OFFSET_X, 1, 2.66 + r, 2.66 + r );
setScaleKey( spep_z + 63 + OFFSET_X, 1, 2.66 + r, 2.66 + r );
setScaleKey( spep_z + 64 + OFFSET_X, 1, 2.67 + r, 2.67 + r );
setScaleKey( spep_z + 67 + OFFSET_X, 1, 2.67 + r, 2.67 + r );
setScaleKey( spep_z + 68 + OFFSET_X, 1, 2.68 + r, 2.68 + r );
setScaleKey( spep_z + 72 + OFFSET_X, 1, 2.68 + r, 2.68 + r );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 68 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 72 + OFFSET_X, 1, 0 );

setBlendColor( spep_z + 0, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_z + 72 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--【全体攻撃】爆発
SE028 = playSeVer2( spep_z + 0, 1159, "",0, 0, 8, -1);
SE029 = playSeVer2( spep_z + 0, 1264, "",0, 0, 8, -1);
setSeVolumeByWorkId( spep_z + 0, SE029, 63 );
SE030 = playSeVer2( spep_z + 0, 1343, "",0, 0, 12, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 000 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -0); -- 終了フレーム 72F

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避　　2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    -- stopSe( SP_dodge - 12, SE001, 0);
    -- stopSe( SP_dodge - 12, SE002, 0);
    -- stopSe( SP_dodge - 12, SE003, 0);
    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 72;

setupMovie(0, SP_01, 932, 1); -- xxxxはusmの全体攻撃背景が始まるフレームを指定

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(ef_003)
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, -1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, -1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);


entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_z + 0, 1, 1 );
changeAnime( spep_z + 0, 1,8 );

y = 120
setMoveKey( spep_z + 0, 1, -55, -202.9 + y , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, -46.8, -202.4 + y , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, -46.8, -202.4 + y , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, -59.5, -196.5 + y , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, -59.5, -196.5 + y , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, -48.2, -184.2 + y , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, -48.2, -184.2 + y , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, -54.4, -186.4 + y , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, -54.4, -186.4 + y , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, -52.1, -175.7 + y , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, -52.1, -175.7 + y , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, -61.4, -181.7 + y , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, -61.4, -181.7 + y , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, -47.2, -170.6 + y , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, -47.2, -170.6 + y , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, -58.1, -171.2 + y , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, -58.1, -171.2 + y , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, -53.3, -159 + y , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, -53.3, -159 + y , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, -56.7, -164.3 + y , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, -56.7, -164.3 + y , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, -54, -156.4 + y , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, -54, -156.4 + y , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, -56.3, -155.6 + y , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, -56.3, -155.6 + y , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, -56.7, -144.3 + y , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, -56.7, -144.3 + y , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, -55.1, -150.4 + y , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, -55.1, -150.4 + y , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, -54.5, -140.3 + y , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, -54.5, -140.3 + y , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, -55.9, -143.2 + y , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, -55.9, -143.2 + y , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, -50.3, -129.1 + y , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, -50.3, -129.1 + y , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, -55.6, -134.4 + y , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, -55.6, -134.4 + y , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, -57, -121.9 + y , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, -57, -121.9 + y , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, -55.1, -127.3 + y , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, -55.1, -127.3 + y , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, -51.2, -116.6 + y , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, -51.2, -116.6 + y , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, -56.8, -115.5 + y , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, -56.8, -115.5 + y , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, -51.2, -111.9 + y , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, -51.2, -111.9 + y , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, -59.9, -106.8 + y , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, -59.9, -106.8 + y , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, -51, -103.8 + y , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, -51, -103.8 + y , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, -58.8, -107.5 + y , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, -58.8, -107.5 + y , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, -50.6, -95.1 + y , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, -50.6, -95.1 + y , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, -57.1, -99.7 + y , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, -57.1, -99.7 + y , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, -55.4, -88.5 + y , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, -55.4, -88.5 + y , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, -56.8, -92.6 + y , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, -56.8, -92.6 + y , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, -50.7, -84.5 + y , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, -50.7, -84.5 + y , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, -56.8, -86.8 + y , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, -56.8, -86.8 + y , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, -51.6, -76.8 + y , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, -51.6, -76.8 + y , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, -55.9, -82.2 + y , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, -55.9, -82.2 + y , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, -51.8, -72.4 + y , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, -51.8, -72.4 + y , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, -59, -75.9 + y , 0 );

r = 0.25

setScaleKey( spep_z + 0, 1, 2.2 + r, 2.2 + r );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 2.22 + r, 2.22 + r );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 2.22 + r, 2.22 + r );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 2.24 + r, 2.24 + r );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 2.24 + r, 2.24 + r );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 2.26 + r, 2.26 + r );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 2.26 + r, 2.26 + r );
setScaleKey( spep_z + 8 + OFFSET_X, 1, 2.28 + r, 2.28 + r );
setScaleKey( spep_z + 9 + OFFSET_X, 1, 2.28 + r, 2.28 + r );
setScaleKey( spep_z + 10 + OFFSET_X, 1, 2.3 + r, 2.3 + r );
setScaleKey( spep_z + 11 + OFFSET_X, 1, 2.3 + r, 2.3 + r );
setScaleKey( spep_z + 12 + OFFSET_X, 1, 2.32 + r, 2.32 + r );
setScaleKey( spep_z + 13 + OFFSET_X, 1, 2.32 + r, 2.32 + r );
setScaleKey( spep_z + 14 + OFFSET_X, 1, 2.34 + r, 2.34 + r );
setScaleKey( spep_z + 15 + OFFSET_X, 1, 2.34 + r, 2.34 + r );
setScaleKey( spep_z + 16 + OFFSET_X, 1, 2.36 + r, 2.36 + r );
setScaleKey( spep_z + 17 + OFFSET_X, 1, 2.36 + r, 2.36 + r );
setScaleKey( spep_z + 18 + OFFSET_X, 1, 2.38 + r, 2.38 + r );
setScaleKey( spep_z + 19 + OFFSET_X, 1, 2.38 + r, 2.38 + r );
setScaleKey( spep_z + 20 + OFFSET_X, 1, 2.39 + r, 2.39 + r );
setScaleKey( spep_z + 21 + OFFSET_X, 1, 2.39 + r, 2.39 + r );
setScaleKey( spep_z + 22 + OFFSET_X, 1, 2.41 + r, 2.41 + r );
setScaleKey( spep_z + 23 + OFFSET_X, 1, 2.41 + r, 2.41 + r );
setScaleKey( spep_z + 24 + OFFSET_X, 1, 2.43 + r, 2.43 + r );
setScaleKey( spep_z + 25 + OFFSET_X, 1, 2.43 + r, 2.43 + r );
setScaleKey( spep_z + 26 + OFFSET_X, 1, 2.44 + r, 2.44 + r );
setScaleKey( spep_z + 27 + OFFSET_X, 1, 2.44 + r, 2.44 + r );
setScaleKey( spep_z + 28 + OFFSET_X, 1, 2.46 + r, 2.46 + r );
setScaleKey( spep_z + 29 + OFFSET_X, 1, 2.46 + r, 2.46 + r );
setScaleKey( spep_z + 30 + OFFSET_X, 1, 2.47 + r, 2.47 + r );
setScaleKey( spep_z + 31 + OFFSET_X, 1, 2.47 + r, 2.47 + r );
setScaleKey( spep_z + 32 + OFFSET_X, 1, 2.49 + r, 2.49 + r );
setScaleKey( spep_z + 33 + OFFSET_X, 1, 2.49 + r, 2.49 + r );
setScaleKey( spep_z + 34 + OFFSET_X, 1, 2.5 + r, 2.5 + r );
setScaleKey( spep_z + 35 + OFFSET_X, 1, 2.5 + r, 2.5 + r );
setScaleKey( spep_z + 36 + OFFSET_X, 1, 2.52 + r, 2.52 + r );
setScaleKey( spep_z + 37 + OFFSET_X, 1, 2.52 + r, 2.52 + r );
setScaleKey( spep_z + 38 + OFFSET_X, 1, 2.53 + r, 2.53 + r );
setScaleKey( spep_z + 39 + OFFSET_X, 1, 2.53 + r, 2.53 + r );
setScaleKey( spep_z + 40 + OFFSET_X, 1, 2.54 + r, 2.54 + r );
setScaleKey( spep_z + 41 + OFFSET_X, 1, 2.54 + r, 2.54 + r );
setScaleKey( spep_z + 42 + OFFSET_X, 1, 2.56 + r, 2.56 + r );
setScaleKey( spep_z + 43 + OFFSET_X, 1, 2.56 + r, 2.56 + r );
setScaleKey( spep_z + 44 + OFFSET_X, 1, 2.57 + r, 2.57 + r );
setScaleKey( spep_z + 45 + OFFSET_X, 1, 2.57 + r, 2.57 + r );
setScaleKey( spep_z + 46 + OFFSET_X, 1, 2.58 + r, 2.58 + r );
setScaleKey( spep_z + 47 + OFFSET_X, 1, 2.58 + r, 2.58 + r );
setScaleKey( spep_z + 48 + OFFSET_X, 1, 2.59 + r, 2.59 + r );
setScaleKey( spep_z + 49 + OFFSET_X, 1, 2.59 + r, 2.59 + r );
setScaleKey( spep_z + 50 + OFFSET_X, 1, 2.6 + r, 2.6 + r );
setScaleKey( spep_z + 51 + OFFSET_X, 1, 2.6 + r, 2.6 + r );
setScaleKey( spep_z + 52 + OFFSET_X, 1, 2.61 + r, 2.61 + r );
setScaleKey( spep_z + 53 + OFFSET_X, 1, 2.61 + r, 2.61 + r );
setScaleKey( spep_z + 54 + OFFSET_X, 1, 2.62 + r, 2.62 + r );
setScaleKey( spep_z + 55 + OFFSET_X, 1, 2.62 + r, 2.62 + r );
setScaleKey( spep_z + 56 + OFFSET_X, 1, 2.63 + r, 2.63 + r );
setScaleKey( spep_z + 57 + OFFSET_X, 1, 2.63 + r, 2.63 + r );
setScaleKey( spep_z + 58 + OFFSET_X, 1, 2.64 + r, 2.64 + r );
setScaleKey( spep_z + 59 + OFFSET_X, 1, 2.64 + r, 2.64 + r );
setScaleKey( spep_z + 60 + OFFSET_X, 1, 2.65 + r, 2.65 + r );
setScaleKey( spep_z + 61 + OFFSET_X, 1, 2.65 + r, 2.65 + r );
setScaleKey( spep_z + 62 + OFFSET_X, 1, 2.66 + r, 2.66 + r );
setScaleKey( spep_z + 63 + OFFSET_X, 1, 2.66 + r, 2.66 + r );
setScaleKey( spep_z + 64 + OFFSET_X, 1, 2.67 + r, 2.67 + r );
setScaleKey( spep_z + 67 + OFFSET_X, 1, 2.67 + r, 2.67 + r );
setScaleKey( spep_z + 68 + OFFSET_X, 1, 2.68 + r, 2.68 + r );
setScaleKey( spep_z + 72 + OFFSET_X, 1, 2.68 + r, 2.68 + r );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 68 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 72 + OFFSET_X, 1, 0 );

setBlendColor( spep_z + 0, 1, 3, 0, 0, 0, 0.95 );
setBlendColor( spep_z + 72 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--【全体攻撃】爆発
SE028 = playSeVer2( spep_z + 0, 1159, "",0, 0, 8, -1);
SE029 = playSeVer2( spep_z + 0, 1264, "",0, 0, 8, -1);
setSeVolumeByWorkId( spep_z + 0, SE029, 63 );
SE030 = playSeVer2( spep_z + 0, 1343, "",0, 0, 12, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 000 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -0); -- 終了フレーム 72F

end
end