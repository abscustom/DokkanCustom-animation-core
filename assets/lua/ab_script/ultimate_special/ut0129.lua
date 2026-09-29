--1034150:LR_魔人ブウ(純粋)_アクティブ必殺：プラネットバースト
--sp_effect_a2_00281
--ut0129

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164554; --開始～フィニッシュ、全体攻撃直前まで ef_001
SP_02  = 164555; --全体攻撃用 敵の手前 ef_002
SP_02b = 164572; --全体攻撃用 敵のうしろ側 ef_002b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

--「1体目（初回時）の演出」で冒頭に敵表示なし、
--「2体目以降の演出」では冒頭に敵が表示されている場合は
--こちらの敵側の動きはコメントアウトする

setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);

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

--[[
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
]]

--setAlphaKey( 0, 1, 255 );

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;


if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文(敵の初期化)
setDisp( 0, 1, 0);

changeAnime( 0, 1, 100);

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

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

            skipFrame(0, spep_0 + 720 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
            setupMovie(spep_0 + 720 - 13, SP_01, spep_0 + 720 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

            timing_skip = 800;

            skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
            setupMovie(spep_0 + timing_skip, SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

            -- ** 音 ** --
            --気弾発射
            SE015 = playSeVer2( spep_0 + 800 + 3, 1193, "", spep_0 + 910, 7, 10, -1);
            setStartTimeMs( SE015,  900 );
            SE018 = playSeVer2( spep_0 + 800 + 3, 1511, "", 0, 0, 0, -1);
            setPitch( spep_0 + 800 + 3, SE018, -400 );
            setTimeStretch( SE018, 0.73, 30, 4 );
            SE019 = playSeVer2( spep_0 + 800 + 3, 1027, "", 0, 0, 0, -1);
            SE020 = playSeVer2( spep_0 + 800 + 3, 1044, "",spep_0 + 893, 0, 25, -1);
            SE021 = playSeVer2( spep_0 + 800 + 3, 1226, "",spep_0 + 1144, 0, 149, -1);
            -- ** ボイス ** --

       end

    else

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～フィニッシュ、全体攻撃直前まで
-------------------------------------------------
MAX_FRAME_0 = 1108;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～フィニッシュ、全体攻撃直前まで ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


--------------------------------------
-- 敵キャラクター
--------------------------------------
--敵の動き1
setDisp( spep_0 + 506 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 570 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 506 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 506 + OFFSET_X, 1, 622.7, -279.6 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 622.7, -279.6 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 599, -268.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 599, -268.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 575.9, -258.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 575.9, -258.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 553.4, -248.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 553.4, -248.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 531.6, -238.5 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 531.6, -238.5 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 510.5, -229 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 510.5, -229 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 490.2, -219.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 490.2, -219.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 470.6, -210.9 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 470.6, -210.9 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 451.8, -202.5 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 451.8, -202.5 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 433.8, -194.4 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 433.8, -194.4 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 416.6, -186.6 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 416.6, -186.6 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 400.3, -179.2 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 400.3, -179.2 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 384.9, -172.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 384.9, -172.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 370.2, -165.6 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 370.2, -165.6 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 356.5, -159.4 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 356.5, -159.4 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 343.7, -153.6 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 343.7, -153.6 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 331.7, -148.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 331.7, -148.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 320.6, -143.3 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 320.6, -143.3 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 310.4, -138.7 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 310.4, -138.7 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 301.1, -134.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 301.1, -134.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 292.6, -130.6 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 292.6, -130.6 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 284.9, -127.1 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 284.9, -127.1 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 278, -124 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 278, -124 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 272, -121.3 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 272, -121.3 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 266.8, -118.9 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 266.8, -118.9 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 262.4, -116.9 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 262.4, -116.9 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 258.8, -115.3 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 258.8, -115.3 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 255.7, -113.9 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 255.7, -113.9 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 253.4, -112.9 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 253.4, -112.9 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 251.8, -112.1 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 251.8, -112.1 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 250.9, -111.7 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 250.9, -111.7 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 250.6, -111.6 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 250.6, -111.6 , 0 );

setScaleKey( spep_0 + 506 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_0 + 506 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 506 + OFFSET_X, 1, 3, 1, 1, 1, 0.55);
setBlendColor( spep_0 + 570 + OFFSET_X, 1, 3, 1, 1, 1, 0.55);

--敵の動き2
setDisp( spep_0 + 800 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 900 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 800 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 800 + OFFSET_X, 1, 161.6, -210.5 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 161.6, -210.5 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 164.8, -205.7 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 164.8, -205.7 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 174, -212.5 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 174, -212.5 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 168.1, -202 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 168.1, -202 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 164.6, -213 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 164.6, -213 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 162.1, -206 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 162.1, -206 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 161.1, -213.5 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 161.1, -213.5 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 169.1, -203 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 169.1, -203 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 160.6, -202 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 160.6, -202 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 168.6, -208.5 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 168.6, -208.5 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 169.1, -215 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 169.1, -215 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 165.6, -209 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 165.6, -209 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 172.6, -201.5 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 172.6, -201.5 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 168.6, -215.5 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 168.6, -215.5 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 162.6, -205.5 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 162.6, -205.5 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 169.1, -218 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 169.1, -218 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 169.1, -200.5 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 169.1, -200.5 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 161.1, -217 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 161.1, -217 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 165.1, -199 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 165.1, -199 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 175.6, -213 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 175.6, -213 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 169.1, -199 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 169.1, -199 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 164.6, -216.5 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 164.6, -216.5 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 173.1, -200.5 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 173.1, -200.5 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 159.6, -217 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 159.6, -217 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 168.6, -200 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 168.6, -200 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 161.1, -198.5 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, 161.1, -198.5 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, 169.1, -210.5 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 169.1, -210.5 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 160.6, -220 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 160.6, -220 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, 173.6, -197.5 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 173.6, -197.5 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 172.6, -220 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 172.6, -220 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, 157.6, -202 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, 157.6, -202 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, 169.1, -223.5 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, 169.1, -223.5 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 169.1, -196.5 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 169.1, -196.5 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, 177.1, -212.5 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, 177.1, -212.5 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 160.6, -226.5 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 160.6, -226.5 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 169.1, -193.5 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 169.1, -193.5 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 153.1, -217 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 153.1, -217 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 174.6, -201 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 174.6, -201 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, 156.1, -198 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, 156.1, -198 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 169.6, -228 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 169.6, -228 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, 169.1, -201 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, 169.1, -201 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, 160.6, -221.5 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, 160.6, -221.5 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 165.1, -191 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, 165.1, -191 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, 179.1, -216 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, 179.1, -216 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 169.1, -195.5 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 169.1, -195.5 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 160.1, -229.5 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, 160.1, -229.5 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, 153.1, -191 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 153.1, -191 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 166.1, -226.5 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 166.1, -226.5 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 168.6, -200.5 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 168.6, -200.5 , 0 );
setMoveKey( spep_0 + 898+ OFFSET_X, 1, 157.6, -197.5 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 157.6, -197.5 , 0 );

setScaleKey( spep_0 + 800 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 900 + OFFSET_X, 1, 1.22, 1.22 );

setBlendColor( spep_0 + 800 + OFFSET_X, 1, 3, 1, 1, 1, 0.55);
setBlendColor( spep_0 + 900 + OFFSET_X, 1, 3, 1, 1, 1, 0.55);

--敵の動き3
setDisp( spep_0 + 906 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 960 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 906 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 906 + OFFSET_X, 1, 150.6, -225.3 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 150.6, -225.3 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 151.2, -263.8 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 151.2, -263.8 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 150.8, -264.2 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 150.8, -264.2 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 133.7, -175.9 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 133.7, -175.9 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 134.1, -177.6 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 134.1, -177.6 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 168.6, -256.6 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, 168.6, -256.6 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 169.2, -256.6 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 169.2, -256.6 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 129.9, -187.5 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 129.9, -187.5 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 161.3, -247.3 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 161.3, -247.3 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 168.2, -206.9 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 168.2, -206.9 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 145.2, -248.5 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 145.2, -248.5 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 153.9, -203.5 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 153.9, -203.5 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 166.1, -212.9 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 166.1, -212.9 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 166.6, -241.2 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 166.6, -241.2 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 163.6, -226.4 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 163.6, -226.4 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 178.2, -243 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 178.2, -243 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 163.5, -209 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 163.5, -209 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 153.8, -268.4 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 153.8, -268.4 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 174.7, -182.2 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 174.7, -182.2 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 166.7, -249.4 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 166.7, -249.4 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 176, -229.6 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 176, -229.6 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 168.3, -232 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 168.3, -232 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 186.6, -249.4 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 186.6, -249.4 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 175.6, -216.3 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 175.6, -216.3 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 165.3, -279 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 165.3, -279 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 185.3, -195.1 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 185.3, -195.1 , 0 );

setScaleKey( spep_0 + 906 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 913 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 914 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 919 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 920 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 923 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 924 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 927 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 928 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 929 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 930 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 933 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 934 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 935 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 936 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 937 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 938 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 939 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 940 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 941 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 942 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 943 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 944 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 945 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 946 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 947 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 948 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 949 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 950 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 951 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 952 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 953 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 954 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 955 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 956 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 960 + OFFSET_X, 1, 0.73, 0.73 );

setRotateKey( spep_0 + 906 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 960 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 906 + OFFSET_X, 1, 3, 0.576, 0.329, 0.396, 1 );
setBlendColor( spep_0 + 908 + OFFSET_X, 1, 3, 0.593, 0.358, 0.421, 1 );
setBlendColor( spep_0 + 910 + OFFSET_X, 1, 3, 0.611, 0.387, 0.447, 1 );
setBlendColor( spep_0 + 912 + OFFSET_X, 1, 3, 0.629, 0.416, 0.473, 1 );
setBlendColor( spep_0 + 914 + OFFSET_X, 1, 3, 0.647, 0.445, 0.499, 1 );
setBlendColor( spep_0 + 916 + OFFSET_X, 1, 3, 0.664, 0.474, 0.525, 1 );
setBlendColor( spep_0 + 918 + OFFSET_X, 1, 3, 0.682, 0.503, 0.551, 1 );
setBlendColor( spep_0 + 920 + OFFSET_X, 1, 3, 0.7, 0.532, 0.577, 1 );
setBlendColor( spep_0 + 922 + OFFSET_X, 1, 3, 0.718, 0.561, 0.603, 1 );
setBlendColor( spep_0 + 924 + OFFSET_X, 1, 3, 0.735, 0.59, 0.629, 1 );
setBlendColor( spep_0 + 926 + OFFSET_X, 1, 3, 0.753, 0.619, 0.655, 1 );
setBlendColor( spep_0 + 928 + OFFSET_X, 1, 3, 0.771, 0.648, 0.681, 1 );
setBlendColor( spep_0 + 930 + OFFSET_X, 1, 3, 0.789, 0.677, 0.707, 1 );
setBlendColor( spep_0 + 932 + OFFSET_X, 1, 3, 0.807, 0.706, 0.733, 1 );
setBlendColor( spep_0 + 934 + OFFSET_X, 1, 3, 0.824, 0.735, 0.759, 1 );
setBlendColor( spep_0 + 936 + OFFSET_X, 1, 3, 0.842, 0.764, 0.785, 1 );
setBlendColor( spep_0 + 938 + OFFSET_X, 1, 3, 0.86, 0.793, 0.811, 1 );
setBlendColor( spep_0 + 940 + OFFSET_X, 1, 3, 0.878, 0.822, 0.837, 1 );
setBlendColor( spep_0 + 942 + OFFSET_X, 1, 3, 0.895, 0.851, 0.863, 1 );
setBlendColor( spep_0 + 944 + OFFSET_X, 1, 3, 0.913, 0.88, 0.889, 1 );
setBlendColor( spep_0 + 946 + OFFSET_X, 1, 3, 0.931, 0.909, 0.915, 1 );
setBlendColor( spep_0 + 948 + OFFSET_X, 1, 3, 0.949, 0.938, 0.941, 1 );
setBlendColor( spep_0 + 950 + OFFSET_X, 1, 3, 0.967, 0.967, 0.967, 1 );
setBlendColor( spep_0 + 960 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 360, 0, 89, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--腕上げる
SE002 = playSeVer2( spep_0 + 26, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE002, 72 );

--気弾溜め

SE003 = playSeVer2( spep_0 + 91, 1354, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 91, 1291, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 91, SE004, 91 );
SE005 = playSeVer2( spep_0 + 91, 1227, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 91, 1396, "",spep_0 + 913, 0, 115, -1);
setSeVolumeByWorkId( spep_0 + 91, SE006, 138 );
setPitch( spep_0 + 91, SE006, 500 );
setStartTimeMs( SE013,  120 );
SE007 = playSeVer2( spep_0 + 116, 1341, "", 0, 0, 0, -1);
setPitch( spep_0 + 116, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 202, 1214, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE008, 157 );
SE009 = playSeVer2( spep_0 + 237, 1341, "", 0, 0, 0, -1);
setPitch( spep_0 + 237, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 275, 1184, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 361, 1341, "", 0, 0, 0, -1);
setPitch( spep_0 + 361, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );

--セリフカットイン
--SE012 = playSeVer2( spep_0 + 421, 1018, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 421, SE012, 63 );
--気弾溜め
SE013 = playSeVer2( spep_0 + 466, 1161, "", 0, 33, 0, -1);
setStartTimeMs( SE013,  100 );
setPitch( spep_0 + 466, SE013, -700 );
setTimeStretch( SE013, 0.53, 30, 4 );
SE014 = playSeVer2( spep_0 + 485, 1341, "", 0, 0, 0, -1);
setPitch( spep_0 + 485, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );
--気弾発射
SE015 = playSeVer2( spep_0 + 657, 1193, "", 0, 7, 0, -1);
setStartTimeMs( SE015,  900 );
--振りかぶる
SE016 = playSeVer2( spep_0 + 615, 1116, "",spep_0 + 671, 0, 24, -1);
--気弾溜め
SE017 = playSeVer2( spep_0 + 609, 1341, "", 0, 0, 0, -1);
setPitch( spep_0 + 609, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );
--気弾発射
SE018 = playSeVer2( spep_0 + 658, 1511, "", 0, 0, 0, -1);
setPitch( spep_0 + 658, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE019 = playSeVer2( spep_0 + 662, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 662, 1044, "",spep_0 + 893, 0, 25, -1);
SE021 = playSeVer2( spep_0 + 662, 1226, "",spep_0 + 1144, 0, 149, -1);

-- ** ボイス ** --
--「ヒヒ……！」
playVoice( spep_0 + 421, 1252 );
setVoiceVolume( spep_0 + 421, 1252, 108 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 720; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

setBlendColor( SP_dodge, 1, 3, 0, 0, 0, 0 );

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

--敵ヒット
SE022 = playSeVer2( spep_0 + 853, 1024, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 908, 1067, "", 0, 0, 0, -1);
--爆発
SE024 = playSeVer2( spep_0 + 990, 1128, "",spep_0 + 1130, 0, 16, -1);
setPitch( spep_0 + 990, SE024, -1200 );
setTimeStretch( SE024, 0.2, 30, 4 );
SE025 = playSeVer2( spep_0 + 993, 1159, "",spep_0 + 1130, 0, 17, -1);

-----------------------------
-- 終了
-----------------------------
-- hideKoScreen();
pauseMovie( spep_0 + MAX_FRAME_0 - 2, 1 );   -- endphaseのフレーム-2Fで処理する
dealDamage( spep_0 + 990); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1108

end


else

if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- ２人目以降の演出
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

MAX_FRAME_Z = 148;

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_02, 0x100, -1, 0, 0, 0); -- 全体攻撃用 敵の手前 ef_002
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

base_bZ = entryEffect( spep_z + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 全体攻撃用 敵のうしろ側 ef_002b
setEffMoveKey( spep_z + 0, base_bZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_bZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_bZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_bZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_bZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_bZ, 0);
setEffAlphaKey( spep_z + 0, base_bZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_bZ, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒 背景


--------------------------------------
-- 敵キャラクター
--------------------------------------
--敵の動き
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 118 );
changeAnime( spep_z + 88 + OFFSET_X, 1, 107 );

setMoveKey( spep_z + 0, 1, 98.8, -356.2 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 98.8, -356.2 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 108.2, -363.3 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 108.2, -363.3 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 101.2, -351.2 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 101.2, -351.2 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 100.2, -362.1 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 100.2, -362.1 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, 97.5, -355.2 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, 97.5, -355.2 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 95.9, -363.5 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 95.9, -363.5 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 102.8, -353.2 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 102.8, -353.2 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 94.9, -352.4 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 94.9, -352.4 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 102.8, -360.5 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 102.8, -360.5 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 103.6, -365.7 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 103.6, -365.7 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 100, -359.3 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 100, -359.3 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 106.8, -353.6 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 106.8, -353.6 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 102.2, -366.1 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 102.2, -366.1 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 96.9, -357 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 96.9, -357 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 103, -369.1 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 103, -369.1 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 103.8, -353.2 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 103.8, -353.2 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 97.5, -367.5 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 97.5, -367.5 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 99, -349.6 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 99, -349.6 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 109.4, -363.5 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 109.4, -363.5 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 103.8, -350.4 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 103.8, -350.4 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 98.6, -368.3 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 98.6, -368.3 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 107, -351.6 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 107, -351.6 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 95.5, -367.5 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 95.5, -367.5 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 102.2, -351.6 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 102.2, -351.6 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 95.5, -350.4 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 95.5, -350.4 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 101.8, -361.1 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 101.8, -361.1 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 96.3, -371.9 , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, 96.3, -371.9 , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, 106.2, -349.2 , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, 106.2, -349.2 , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, 105, -371.5 , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, 105, -371.5 , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, 90.7, -352.8 , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, 90.7, -352.8 , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, 102.2, -375.5 , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, 102.2, -375.5 , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, 102.6, -348.8 , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, 102.6, -348.8 , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, 111, -363.9 , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, 111, -363.9 , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, 93.9, -377.9 , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, 93.9, -377.9 , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, 103.8, -346 , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, 103.8, -346 , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, 87.1, -369.1 , 0 );
setMoveKey( spep_z + 73 + OFFSET_X, 1, 87.1, -369.1 , 0 );
setMoveKey( spep_z + 74 + OFFSET_X, 1, 108.6, -352.4 , 0 );
setMoveKey( spep_z + 75 + OFFSET_X, 1, 108.6, -352.4 , 0 );
setMoveKey( spep_z + 76 + OFFSET_X, 1, 89.9, -350 , 0 );
setMoveKey( spep_z + 77 + OFFSET_X, 1, 89.9, -350 , 0 );
setMoveKey( spep_z + 78 + OFFSET_X, 1, 102.2, -379.1 , 0 );
setMoveKey( spep_z + 79 + OFFSET_X, 1, 102.2, -379.1 , 0 );
setMoveKey( spep_z + 80 + OFFSET_X, 1, 102.2, -352.8 , 0 );
setMoveKey( spep_z + 81 + OFFSET_X, 1, 102.2, -352.8 , 0 );
setMoveKey( spep_z + 82 + OFFSET_X, 1, 93.5, -373.5 , 0 );
setMoveKey( spep_z + 83 + OFFSET_X, 1, 93.5, -373.5 , 0 );
setMoveKey( spep_z + 84 + OFFSET_X, 1, 99, -343.2 , 0 );
setMoveKey( spep_z + 85 + OFFSET_X, 1, 99, -343.2 , 0 );
setMoveKey( spep_z + 86 + OFFSET_X, 1, 112.6, -369.1 , 0 );
setMoveKey( spep_z + 87 + OFFSET_X, 1, 112.6, -369.1 , 0 );
setMoveKey( spep_z + 88 + OFFSET_X, 1, 103.9, -359.6 , 0 );
setMoveKey( spep_z + 89 + OFFSET_X, 1, 103.9, -359.6 , 0 );
setMoveKey( spep_z + 90 + OFFSET_X, 1, 95.6, -394.1 , 0 );
setMoveKey( spep_z + 91 + OFFSET_X, 1, 95.6, -394.1 , 0 );
setMoveKey( spep_z + 92 + OFFSET_X, 1, 89.1, -355.7 , 0 );
setMoveKey( spep_z + 93 + OFFSET_X, 1, 89.1, -355.7 , 0 );
setMoveKey( spep_z + 94 + OFFSET_X, 1, 101, -391.8 , 0 );
setMoveKey( spep_z + 95 + OFFSET_X, 1, 101, -391.8 , 0 );
setMoveKey( spep_z + 96 + OFFSET_X, 1, 103.7, -367.4 , 0 );
setMoveKey( spep_z + 97 + OFFSET_X, 1, 103.7, -367.4 , 0 );
setMoveKey( spep_z + 98 + OFFSET_X, 1, 92.9, -364.5 , 0 );
setMoveKey( spep_z + 99 + OFFSET_X, 1, 92.9, -364.5 , 0 );
setMoveKey( spep_z + 100 + OFFSET_X, 1, 104.3, -377.2 , 0 );
setMoveKey( spep_z + 101 + OFFSET_X, 1, 104.3, -377.2 , 0 );
setMoveKey( spep_z + 102 + OFFSET_X, 1, 105.7, -385.1 , 0 );
setMoveKey( spep_z + 103 + OFFSET_X, 1, 105.7, -385.1 , 0 );
setMoveKey( spep_z + 104 + OFFSET_X, 1, 110.3, -370.7 , 0 );
setMoveKey( spep_z + 105 + OFFSET_X, 1, 110.3, -370.7 , 0 );
setMoveKey( spep_z + 106 + OFFSET_X, 1, 97.4, -399.8 , 0 );
setMoveKey( spep_z + 107 + OFFSET_X, 1, 97.4, -399.8 , 0 );
setMoveKey( spep_z + 108 + OFFSET_X, 1, 91.9, -363.2 , 0 );
setMoveKey( spep_z + 109 + OFFSET_X, 1, 91.9, -363.2 , 0 );
setMoveKey( spep_z + 110 + OFFSET_X, 1, 105.2, -400.6 , 0 );
setMoveKey( spep_z + 111 + OFFSET_X, 1, 105.2, -400.6 , 0 );
setMoveKey( spep_z + 112 + OFFSET_X, 1, 107.7, -356.5 , 0 );
setMoveKey( spep_z + 113 + OFFSET_X, 1, 107.7, -356.5 , 0 );
setMoveKey( spep_z + 114 + OFFSET_X, 1, 90.3, -414 , 0 );
setMoveKey( spep_z + 115 + OFFSET_X, 1, 90.3, -414 , 0 );
setMoveKey( spep_z + 116 + OFFSET_X, 1, 112.3, -388.6 , 0 );
setMoveKey( spep_z + 117 + OFFSET_X, 1, 112.3, -388.6 , 0 );
setMoveKey( spep_z + 118 + OFFSET_X, 1, 109.5, -435.1 , 0 );
setMoveKey( spep_z + 119 + OFFSET_X, 1, 109.5, -435.1 , 0 );
setMoveKey( spep_z + 120 + OFFSET_X, 1, 118.8, -339 , 0 );
setMoveKey( spep_z + 121 + OFFSET_X, 1, 118.8, -339 , 0 );
setMoveKey( spep_z + 122 + OFFSET_X, 1, 120.4, -436.2 , 0 );
setMoveKey( spep_z + 123 + OFFSET_X, 1, 120.4, -436.2 , 0 );
setMoveKey( spep_z + 124 + OFFSET_X, 1, 77.2, -331.7 , 0 );
setMoveKey( spep_z + 125 + OFFSET_X, 1, 77.2, -331.7 , 0 );
setMoveKey( spep_z + 126 + OFFSET_X, 1, 108.3, -447.8 , 0 );
setMoveKey( spep_z + 127 + OFFSET_X, 1, 108.3, -447.8 , 0 );
setMoveKey( spep_z + 128 + OFFSET_X, 1, 115.3, -384.9 , 0 );
setMoveKey( spep_z + 129 + OFFSET_X, 1, 115.3, -384.9 , 0 );
setMoveKey( spep_z + 130 + OFFSET_X, 1, 88.1, -359.2 , 0 );
setMoveKey( spep_z + 131 + OFFSET_X, 1, 88.1, -359.2 , 0 );
setMoveKey( spep_z + 132 + OFFSET_X, 1, 83.2, -442.7 , 0 );
setMoveKey( spep_z + 133 + OFFSET_X, 1, 83.2, -442.7 , 0 );
setMoveKey( spep_z + 134 + OFFSET_X, 1, 123.8, -354.5 , 0 );
setMoveKey( spep_z + 135 + OFFSET_X, 1, 123.8, -354.5 , 0 );
setMoveKey( spep_z + 136 + OFFSET_X, 1, 116.8, -441.3 , 0 );
setMoveKey( spep_z + 137 + OFFSET_X, 1, 116.8, -441.3 , 0 );
setMoveKey( spep_z + 138 + OFFSET_X, 1, 112.1, -367.5 , 0 );
setMoveKey( spep_z + 139 + OFFSET_X, 1, 112.1, -367.5 , 0 );
setMoveKey( spep_z + 140 + OFFSET_X, 1, 101.1, -441.2 , 0 );
setMoveKey( spep_z + 141 + OFFSET_X, 1, 101.1, -441.2 , 0 );
setMoveKey( spep_z + 142 + OFFSET_X, 1, 132.4, -419.1 , 0 );
setMoveKey( spep_z + 143 + OFFSET_X, 1, 132.4, -419.1 , 0 );
setMoveKey( spep_z + 144 + OFFSET_X, 1, 97.4, -357.2 , 0 );
setMoveKey( spep_z + 145 + OFFSET_X, 1, 97.4, -357.2 , 0 );
setMoveKey( spep_z + 146 + OFFSET_X, 1, 93.5, -453.1 , 0 );
setMoveKey( spep_z + 150 + OFFSET_X, 1, 93.5, -453.1 , 0 );

setScaleKey( spep_z + 0, 1, 1.67, 1.67 );
setScaleKey( spep_z + 87 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_z + 88 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_z + 97 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_z + 98 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_z + 103 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_z + 104 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_z + 109 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_z + 110 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_z + 113 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_z + 114 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_z + 115 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_z + 116 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_z + 119 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_z + 120 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_z + 121 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_z + 122 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_z + 123 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_z + 124 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_z + 125 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_z + 126 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_z + 127 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_z + 128 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_z + 131 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_z + 132 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_z + 133 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_z + 134 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 135 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_z + 136 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_z + 137 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_z + 138 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_z + 139 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_z + 140 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_z + 141 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_z + 142 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_z + 143 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_z + 144 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_z + 145 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_z + 146 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_z + 150 + OFFSET_X, 1, 1.07, 1.07 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 150 + OFFSET_X, 1, 0 );

setBlendColor( spep_z + 0 , 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_z + 2 + OFFSET_X, 1, 3, 0.005, 0, 0.002, 0.01 );
setBlendColor( spep_z + 4 + OFFSET_X, 1, 3, 0.01, 0, 0.004, 0.03 );
setBlendColor( spep_z + 6 + OFFSET_X, 1, 3, 0.015, 0.001, 0.007, 0.05 );
setBlendColor( spep_z + 8 + OFFSET_X, 1, 3, 0.021, 0.001, 0.009, 0.07 );
setBlendColor( spep_z + 10 + OFFSET_X, 1, 3, 0.026, 0.002, 0.012, 0.09 );
setBlendColor( spep_z + 12 + OFFSET_X, 1, 3, 0.031, 0.002, 0.014, 0.11 );
setBlendColor( spep_z + 14 + OFFSET_X, 1, 3, 0.036, 0.003, 0.016, 0.12 );
setBlendColor( spep_z + 16 + OFFSET_X, 1, 3, 0.042, 0.003, 0.019, 0.14 );
setBlendColor( spep_z + 18 + OFFSET_X, 1, 3, 0.047, 0.003, 0.021, 0.16 );
setBlendColor( spep_z + 20 + OFFSET_X, 1, 3, 0.052, 0.004, 0.024, 0.18 );
setBlendColor( spep_z + 22 + OFFSET_X, 1, 3, 0.057, 0.004, 0.026, 0.2 );
setBlendColor( spep_z + 24 + OFFSET_X, 1, 3, 0.063, 0.005, 0.028, 0.22 );
setBlendColor( spep_z + 26 + OFFSET_X, 1, 3, 0.068, 0.005, 0.031, 0.23 );
setBlendColor( spep_z + 28 + OFFSET_X, 1, 3, 0.073, 0.006, 0.033, 0.25 );
setBlendColor( spep_z + 30 + OFFSET_X, 1, 3, 0.078, 0.006, 0.036, 0.27 );
setBlendColor( spep_z + 32 + OFFSET_X, 1, 3, 0.084, 0.006, 0.038, 0.29 );
setBlendColor( spep_z + 34 + OFFSET_X, 1, 3, 0.089, 0.007, 0.04, 0.31 );
setBlendColor( spep_z + 36 + OFFSET_X, 1, 3, 0.094, 0.007, 0.043, 0.33 );
setBlendColor( spep_z + 38 + OFFSET_X, 1, 3, 0.099, 0.008, 0.045, 0.34 );
setBlendColor( spep_z + 40 + OFFSET_X, 1, 3, 0.105, 0.008, 0.048, 0.36 );
setBlendColor( spep_z + 42 + OFFSET_X, 1, 3, 0.11, 0.009, 0.05, 0.38 );
setBlendColor( spep_z + 44 + OFFSET_X, 1, 3, 0.115, 0.009, 0.053, 0.4 );
setBlendColor( spep_z + 46 + OFFSET_X, 1, 3, 0.12, 0.009, 0.055, 0.42 );
setBlendColor( spep_z + 48 + OFFSET_X, 1, 3, 0.126, 0.01, 0.057, 0.44 );
setBlendColor( spep_z + 50 + OFFSET_X, 1, 3, 0.131, 0.01, 0.06, 0.46 );
setBlendColor( spep_z + 52 + OFFSET_X, 1, 3, 0.136, 0.011, 0.062, 0.47 );
setBlendColor( spep_z + 54 + OFFSET_X, 1, 3, 0.141, 0.011, 0.065, 0.49 );
setBlendColor( spep_z + 56 + OFFSET_X, 1, 3, 0.147, 0.012, 0.067, 0.51 );
setBlendColor( spep_z + 58 + OFFSET_X, 1, 3, 0.152, 0.012, 0.069, 0.53 );
setBlendColor( spep_z + 60 + OFFSET_X, 1, 3, 0.157, 0.012, 0.072, 0.55 );
setBlendColor( spep_z + 62 + OFFSET_X, 1, 3, 0.162, 0.013, 0.074, 0.57 );
setBlendColor( spep_z + 64 + OFFSET_X, 1, 3, 0.168, 0.013, 0.077, 0.58 );
setBlendColor( spep_z + 66 + OFFSET_X, 1, 3, 0.173, 0.014, 0.079, 0.6 );
setBlendColor( spep_z + 68 + OFFSET_X, 1, 3, 0.178, 0.014, 0.081, 0.62 );
setBlendColor( spep_z + 70 + OFFSET_X, 1, 3, 0.183, 0.015, 0.084, 0.64 );
setBlendColor( spep_z + 72 + OFFSET_X, 1, 3, 0.189, 0.015, 0.086, 0.66 );
setBlendColor( spep_z + 74 + OFFSET_X, 1, 3, 0.194, 0.015, 0.089, 0.68 );
setBlendColor( spep_z + 76 + OFFSET_X, 1, 3, 0.199, 0.016, 0.091, 0.69 );
setBlendColor( spep_z + 78 + OFFSET_X, 1, 3, 0.204, 0.016, 0.093, 0.71 );
setBlendColor( spep_z + 80 + OFFSET_X, 1, 3, 0.21, 0.017, 0.096, 0.73 );
setBlendColor( spep_z + 82 + OFFSET_X, 1, 3, 0.215, 0.017, 0.098, 0.75 );
setBlendColor( spep_z + 84 + OFFSET_X, 1, 3, 0.22, 0.018, 0.101, 0.77 );
setBlendColor( spep_z + 86 + OFFSET_X, 1, 3, 0.225, 0.018, 0.103, 0.79 );
setBlendColor( spep_z + 88 + OFFSET_X, 1, 3, 0.231, 0.019, 0.106, 0.81 );

setBlendColor( spep_z + 92 + OFFSET_X, 1, 3, 0.28, 0.082, 0.163, 0.82 );
setBlendColor( spep_z + 94 + OFFSET_X, 1, 3, 0.329, 0.145, 0.22, 0.83 );
setBlendColor( spep_z + 96 + OFFSET_X, 1, 3, 0.378, 0.208, 0.278, 0.84 );
setBlendColor( spep_z + 98 + OFFSET_X, 1, 3, 0.427, 0.271, 0.335, 0.86 );
setBlendColor( spep_z + 100 + OFFSET_X, 1, 3, 0.476, 0.335, 0.393, 0.87 );
setBlendColor( spep_z + 102 + OFFSET_X, 1, 3, 0.525, 0.398, 0.45, 0.88 );
setBlendColor( spep_z + 104 + OFFSET_X, 1, 3, 0.574, 0.461, 0.507, 0.89 );
setBlendColor( spep_z + 106 + OFFSET_X, 1, 3, 0.623, 0.524, 0.565, 0.91 );
setBlendColor( spep_z + 108 + OFFSET_X, 1, 3, 0.672, 0.587, 0.622, 0.92 );
setBlendColor( spep_z + 110 + OFFSET_X, 1, 3, 0.721, 0.651, 0.68, 0.93 );
setBlendColor( spep_z + 112 + OFFSET_X, 1, 3, 0.77, 0.714, 0.737, 0.94 );
setBlendColor( spep_z + 114 + OFFSET_X, 1, 3, 0.819, 0.777, 0.794, 0.96 );
setBlendColor( spep_z + 116 + OFFSET_X, 1, 3, 0.868, 0.84, 0.852, 0.97 );
setBlendColor( spep_z + 118 + OFFSET_X, 1, 3, 0.917, 0.903, 0.909, 0.98 );
setBlendColor( spep_z + 120 + OFFSET_X, 1, 3, 0.967, 0.967, 0.967, 1 );
setBlendColor( spep_z + 150 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--【全体】気弾発射
SE026 = playSeVer2( spep_z + 4, 1193, "",spep_z + 155, 7, 64, -1);
setStartTimeMs( SE026,  900 );
SE027 = playSeVer2( spep_z + 5, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_z + 5, SE027, 79 );
setPitch( spep_z + 5, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );
SE028 = playSeVer2( spep_z + 5, 1161, "",spep_z + 128, 0, 44, -1);
setPitch( spep_z + 5, SE028, -700 );
setTimeStretch( SE028, 0.53, 30, 4 );
--【全体】爆発
SE029 = playSeVer2( spep_z + 90, 1067, "",spep_z + 160, 0, 5, -1);
SE030 = playSeVer2( spep_z + 90, 1226, "",spep_z + 164, 0, 9, -1);
-----------------------------
-- 終了
-----------------------------
dealDamage( spep_z + 48 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z - 2 ); -- 148

end
end