-- 1029830: LR_超サイヤ人バーダック_アクティブ必殺技：ファイナルスピリッツキャノン
-- sp_effect_a1_00460
-- ut0080

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163375; -- 正面気弾発射～フィニッシュ ef_001

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

--setDisp( 0, 1, 0);
--changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;
-- TODO: 敵キャラクターの開始フレームはムービー尺に合わせて手動確認してください。

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then

        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 530 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 530 -13, SP_01, spep_0 + 530 -13 + 2, 1);

        else

           skipFrame(0, spep_0 + 868);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 868, SP_01, spep_0 + 868 -1 + 2, 1);

           --気弾中
           SE037 = playSeVer2( spep_0 + 868, 1226, "",spep_0 + 1134, 0, 138, -1);
           setSeVolumeByWorkId( spep_0 + 868, SE037, 71 );

        end

    else

        setupMovie(0, SP_01, 0, 1);

    end
------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 正面気弾発射～フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 1192;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面気弾発射～フィニッシュ(ef_001)
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
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 102 );

setMoveKey( spep_0 + 0 , 1, 124.5, 0.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 143.1, 6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 143.1, 6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 161.7, 11.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 161.7, 11.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 180.3, 16.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 180.3, 16.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 198.9, 21.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 198.9, 21.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 217.4, 26.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 217.4, 26.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 236, 31.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 236, 31.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 254.6, 36.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 254.6, 36.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 273.2, 41.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 273.2, 41.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 291.8, 46.6 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 291.8, 46.6 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 310.4, 51.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 310.4, 51.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 329, 56.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 329, 56.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 347.6, 61.9 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 347.6, 61.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 366.2, 67 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 366.2, 67 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 384.8, 72.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 384.8, 72.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 403.3, 77.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 403.3, 77.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 421.9, 82.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 421.9, 82.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 440.5, 87.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 440.5, 87.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 459.1, 92.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 459.1, 92.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 477.7, 97.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 477.7, 97.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 496.3, 102.5 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 496.3, 102.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 514.9, 107.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 514.9, 107.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 533.5, 112.7 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 533.5, 112.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 773.6, 306.2 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 773.6, 306.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 1013.8, 499.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 1013.8, 499.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 1253.9, 693.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 1253.9, 693.1 , 0 );

setScaleKey( spep_0 + 0 , 1, 2.68, 2.68 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 5.71, 5.71 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 6.12, 6.12 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 6.12, 6.12 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 6.52, 6.52 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 7.13, 7.13 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 7.13, 7.13 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 11.53, 11.53 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 11.53, 11.53 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 15.93, 15.93 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 15.93, 15.93 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 20.33, 20.33 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 20.33, 20.33 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 514 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 624 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 514 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 514 + OFFSET_X, 1, 4.7, 3.4 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 4.7, 3.4 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 4.7, 4.4 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 4.7, 2.4 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 3.7, 3.4 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 5.7, 3.4 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 4.7, 3.4 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 4.7, 3.4 , 0 );

setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_0 + 514 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 866 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 976 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 866 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 890 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 866 + OFFSET_X, 1, 134, 8.9 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, 134, 8.9 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 134, 16.9 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 134, 16.9 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, 134, -3.1 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, 134, -3.1 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, 122, 8.9 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, 122, 8.9 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 146, 8.9 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, 146, 8.9 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, 134, 16.9 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, 134, 16.9 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 134, -3.1 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 134, -3.1 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 134.9, 37.9 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, 134.9, 37.9 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, 161.7, 40.3 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 161.7, 40.3 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 152.4, 54.8 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 152.4, 54.8 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 155.2, 33.2 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 155.2, 33.2 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 145.9, 47.7 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 145.9, 47.7 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 172.7, 50.1 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 172.7, 50.1 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 163.4, 64.6 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 163.4, 64.6 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 166.1, 43.1 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 166.1, 43.1 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 156.9, 57.5 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 156.9, 57.5 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 183.6, 60 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 183.6, 60 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 174.4, 74.4 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 174.4, 74.4 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 177.1, 52.9 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 177.1, 52.9 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 167.8, 67.3 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 167.8, 67.3 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 194.6, 69.8 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, 194.6, 69.8 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 185.3, 84.2 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 185.3, 84.2 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 188.1, 62.7 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 188.1, 62.7 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 178.8, 77.1 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 178.8, 77.1 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 205.5, 79.6 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 205.5, 79.6 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 196.3, 94 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 196.3, 94 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 199, 72.5 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 199, 72.5 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 189.8, 87 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 189.8, 87 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 216.5, 89.4 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 216.5, 89.4 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 207.2, 103.9 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 207.2, 103.9 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 210, 82.3 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 210, 82.3 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 200.7, 96.8 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 200.7, 96.8 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 227.5, 99.2 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 227.5, 99.2 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 218.2, 113.7 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 218.2, 113.7 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 220.9, 92.1 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 220.9, 92.1 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 211.7, 106.6 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 211.7, 106.6 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 238.4, 109.1 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 238.4, 109.1 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 229.2, 123.5 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 229.2, 123.5 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 231.9, 102 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 231.9, 102 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 233.8, 105.4 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 233.8, 105.4 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 235.6, 108.7 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, 235.6, 108.7 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, 237.4, 112.1 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, 237.4, 112.1 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 239.2, 115.5 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, 239.2, 115.5 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, 241, 118.9 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, 241, 118.9 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, 242.9, 122.3 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 242.9, 122.3 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 244.6, 125.7 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 244.6, 125.7 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 246.5, 129 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 246.5, 129 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 248.3, 132.4 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 248.3, 132.4 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 250.1, 135.8 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 250.1, 135.8 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 251.9, 139.2 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 251.9, 139.2 , 0 );

setScaleKey( spep_0 + 866 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 891 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 892 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 893 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 894 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 895 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 896 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 897 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 898 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 899 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 900 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 901 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 902 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 903 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 904 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 905 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 906 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 907 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 908 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 909 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 910 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 911 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 912 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 913 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 914 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 915 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 916 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 917 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 918 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 919 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 920 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 921 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 922 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 923 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 924 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 925 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 926 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 927 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 928 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 929 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 930 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 931 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 932 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 933 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 934 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 935 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 936 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 937 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 938 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 939 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 940 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 941 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 942 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 943 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 944 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 945 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 946 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 947 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 948 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 949 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 950 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 951 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 952 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 953 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 954 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 955 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 956 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 957 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 958 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 959 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 960 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 961 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 962 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 963 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 964 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 965 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 966 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 967 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 968 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 969 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 970 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 971 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 972 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 973 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 974 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 976 + OFFSET_X, 1, 0.22, 0.22 );

setRotateKey( spep_0 + 866 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 889 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 890 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 891 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 892 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_0 + 893 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 895 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 896 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_0 + 897 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_0 + 898 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 899 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 900 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 901 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 902 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 903 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 904 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_0 + 905 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_0 + 906 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_0 + 907 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_0 + 908 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 909 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_0 + 910 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 911 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 912 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 913 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 914 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 915 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 916 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 917 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 918 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 919 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 920 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 921 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 922 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 923 + OFFSET_X, 1, -34.4 );
setRotateKey( spep_0 + 924 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_0 + 925 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_0 + 926 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_0 + 927 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_0 + 928 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 929 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 930 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 931 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 932 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 933 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 934 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 935 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_0 + 936 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 937 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 938 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 939 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 940 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 941 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 942 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_0 + 943 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_0 + 944 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 945 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 946 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 947 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 948 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_0 + 949 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_0 + 950 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 951 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 952 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 953 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 954 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 955 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 956 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 957 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 958 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 959 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 960 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 961 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 962 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 963 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 964 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 965 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 966 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 967 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 968 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 969 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 970 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 971 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 972 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_0 + 973 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_0 + 974 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 976 + OFFSET_X, 1, -10.5 );

setBlendColor( spep_0 + 866 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 888 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 976 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--集中線からズーム
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 77 );
SE002 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 43 );
SE003 = playSeVer2( spep_0 + 12, 1072, "", 0, 0, 0, -1);

--気ダメ
SE004 = playSeVer2( spep_0 + 50, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 162 );
SE005 = playSeVer2( spep_0 + 50, 1126, "",spep_0 + 178, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 60 );
SE006 = playSeVer2( spep_0 + 54, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE006, 63 );

--オーラ
SE007 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE007, 50 );

--構える
SE008 = playSeVer2( spep_0 + 66, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE008, 145 );

--セリフカットイン
SE009 = playSeVer2( spep_0 + 84, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE009, 63 );

--オーラ
SE010 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE010, 40 );
SE011 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE011, 40 );
SE014 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE014, 40 );
SE015 = playSeVer2( spep_0 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE015, 40 );
SE016 = playSeVer2( spep_0 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE016, 40 );
SE017 = playSeVer2( spep_0 + 204, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE017, 40 );
SE018 = playSeVer2( spep_0 + 228, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE018, 40 );
SE019 = playSeVer2( spep_0 + 252, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE019, 40 );
SE020 = playSeVer2( spep_0 + 276, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE020, 40 );
SE021 = playSeVer2( spep_0 + 300, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE021, 40 );
SE022 = playSeVer2( spep_0 + 324, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE022, 40 );
SE023 = playSeVer2( spep_0 + 348, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE023, 40 );

--腕うしろに
SE012 = playSeVer2( spep_0 + 120, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE013 = playSeVer2( spep_0 + 130, 1204, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE013, 78 );

--気弾溜め２
SE024 = playSeVer2( spep_0 + 364, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE024, 178 );
SE025 = playSeVer2( spep_0 + 364, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE025, 130 );
SE026 = playSeVer2( spep_0 + 364, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE026, 130 );
SE027 = playSeVer2( spep_0 + 364, 1114, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 364, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE028, 86 );

--オーラ
SE029 = playSeVer2( spep_0 + 372, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE029, 50 );
SE030 = playSeVer2( spep_0 + 396, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE030, 50 );
SE031 = playSeVer2( spep_0 + 420, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE031, 50 );

--気弾発射
SE032 = playSeVer2( spep_0 + 436, 1133, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 436, 1213, "", 0, 0, 0, -1);
setTimeStretch( SE033, 1.66, 30, 4 );
SE034 = playSeVer2( spep_0 + 436, 1284, "", 0, 0, 0, -1);

--気弾迫ってくる
SE035 = playSeVer2( spep_0 + 464, 1215, "",spep_0 + 670, 0, 54, -1);

--気弾中
SE036 = playSeVer2( spep_0 + 484, 1211, "",spep_0 + 900, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 484, SE036, 282 );
SE037 = playSeVer2( spep_0 + 514, 1226, "",spep_0 + 1134, 0, 138, -1);
setSeVolumeByWorkId( spep_0 + 514, SE037, 71 );

-- ** ボイス ** --
--「今度こそ…呪われた未来を変えてみせる！！」
SE_6_884 = playVoice( spep_0 + 88, 884 );
setVoiceVolume( spep_0 + 88, 884, 148 );

--「うおおおおっ！！！」
SE_7_885 = playVoice( spep_0 + 624, 885 );
setVoiceVolume( spep_0 + 624, 885, 148 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 530; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 12, SE037, 0);
setVoiceVolume( SP_dodge - 12, SE_7_885, 0 );

pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--画面遷移
SE038 = playSeVer2( spep_0 + 612, 8, "", 0, 0, 0, -1);

--オーラ
SE039 = playSeVer2( spep_0 + 618, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE039, 40 );
SE040 = playSeVer2( spep_0 + 642, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 642, SE040, 40 );
SE041 = playSeVer2( spep_0 + 666, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 666, SE041, 40 );
SE042 = playSeVer2( spep_0 + 690, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 690, SE042, 40 );
SE043 = playSeVer2( spep_0 + 714, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 714, SE043, 40 );
SE044 = playSeVer2( spep_0 + 738, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 738, SE044, 40 );
SE045 = playSeVer2( spep_0 + 762, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE045, 40 );
SE048 = playSeVer2( spep_0 + 786, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE048, 40 );
SE049 = playSeVer2( spep_0 + 810, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 810, SE049, 40 );
SE050 = playSeVer2( spep_0 + 834, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 834, SE050, 40 );
SE051 = playSeVer2( spep_0 + 858, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 858, SE051, 40 );

--気合い入れる
SE046 = playSeVer2( spep_0 + 768, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE046, 121 );
SE047 = playSeVer2( spep_0 + 768, 1258, "", 0, 0, 0, -1);

--気弾飛んでいく
SE052 = playSeVer2( spep_0 + 870, 1021, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 870, 1146, "", 0, 0, 0, -1);

--気弾宇宙へ
SE054 = playSeVer2( spep_0 + 978, 1145, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 978, 1296, "",spep_0 + 1108, 0, 98, -1);

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 1040 );
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 1192F

else end
