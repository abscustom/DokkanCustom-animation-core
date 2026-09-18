--1034300:UR_超サイヤ人3孫悟空(ミニ)(DAIMA)_アクティブ必殺：パワーアップの共鳴
--sp_effect_a2_00280
--ut0133

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164528; --正面、気を解放、飛行　パンチ　二人で拡散気弾 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 568 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 568 - 13, SP_01, spep_0 + 568 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           timing_skip = 692;

           skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
           setupMovie(spep_0 + timing_skip, SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 音 ** --

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
-- 正面、気を解放、飛行　パンチ　二人で拡散気弾
-------------------------------------------------
MAX_FRAME_0 = 1042;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面、気を解放、飛行　パンチ　二人で拡散気弾(ef_001)
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
setDisp( spep_0 + 488 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 534 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 488 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 488 + OFFSET_X, 1, -111.3 , 44.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -111.3 , 44.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -105.6 , 43.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -105.6 , 43.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -99.9 , 43.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -99.9 , 43.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -94.1 , 43.2 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -94.1 , 43.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -88.4 , 42.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -88.4 , 42.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -82.6 , 42.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -82.6 , 42.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -77 , 42.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -77 , 42.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -71.2 , 41.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -71.2 , 41.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -65.5 , 41.6 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -65.5 , 41.6 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -55.3 , 37.3 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -55.3 , 37.3 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -45.1 , 33 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -45.1 , 33 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -34.9 , 28.7 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -34.9 , 28.7 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -24.7 , 24.4 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -24.7 , 24.4 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -24.2 , 21.2 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -24.2 , 21.2 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -23.7 , 13.9 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -23.7 , 13.9 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -23.1 , 2.6 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -23.1 , 2.6 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -22.6 , -10 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -22.6 , -10 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -22.1 , -25.2 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -22.1 , -25.2 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -21.1 , -41.1 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -21.1 , -41.1 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -20 , -56.2 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -20 , -56.2 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -19.2 , -72.7 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -19.2 , -72.7 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -18.4 , -87.8 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -18.4 , -87.8 , 0 );

setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_0 + 488 + OFFSET_X, 1, 0  );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 0  );


--敵の動き2
setDisp( spep_0 + 618 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 684 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 618 + OFFSET_X, 1, 100 );
changeAnimeBySide( spep_0 + 622 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 628 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 632 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 640 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 648 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 656 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 662 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 672 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 618 + OFFSET_X, 1, 101.9 , -101.9 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 101.9 , -101.9 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 103.4 , -98 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 103.4 , -98 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 263.3 , -70.6 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 263.3 , -70.6 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 207.2 , -12.8 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 207.2 , -12.8 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 48.3 , -46.9 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 48.3 , -46.9 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -4.1 , 5.5 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -4.1 , 5.5 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 265 , -71.3 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 265 , -71.3 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 209.5 , -17.4 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 209.5 , -17.4 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 197.5 , -63.9 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 197.5 , -63.9 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 5 , 3.9 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 5 , 3.9 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 5 , 3.8 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 5 , 3.8 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -3.9 , -5.1 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -3.9 , -5.1 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 263 , -68.2 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 263 , -68.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 212.1 , -21.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 212.1 , -21.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 189.6 , -66.7 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 189.6 , -66.7 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 263.6 , 566.8 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 263.6 , 566.8 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 241.1 , 601.4 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 241.1 , 601.4 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -96.7 , -13 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -96.7 , -13 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -39.5 , 41.6 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -39.5 , 41.6 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 17.7 , 96.2 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 17.7 , 96.2 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 36.7 , 115 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 36.7 , 115 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 55.5 , 133.9 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, 55.5 , 133.9 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 112.2 , 178.5 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 112.2 , 178.5 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 117.7 , 182.7 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 117.7 , 182.7 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 123.1 , 186.9 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 123.1 , 186.9 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 128.5 , 191.1 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 128.5 , 191.1 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 134 , 195.3 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 134 , 195.3 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 139.5 , 199.6 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 139.5 , 199.6 , 0 );

setScaleKey( spep_0 + 618 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 661 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 663 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 665 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 667 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 668 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 669 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 670 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 671 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 673 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 674 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 675 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 0.17, 0.17 );

setRotateKey( spep_0 + 618 + OFFSET_X, 1, 0  );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 0  );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, -9.8  );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, -9.8  );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, -54.2  );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, -54.2  );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, -9.8  );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, -9.8  );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -54.2  );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, -54.2  );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, -9.8  );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, -9.8  );
setRotateKey( spep_0 + 656 + OFFSET_X, 1, -65.4  );
setRotateKey( spep_0 + 661 + OFFSET_X, 1, -65.4  );
setRotateKey( spep_0 + 662 + OFFSET_X, 1, -13  );
setRotateKey( spep_0 + 663 + OFFSET_X, 1, -13  );
setRotateKey( spep_0 + 664 + OFFSET_X, 1, -14.4  );
setRotateKey( spep_0 + 665 + OFFSET_X, 1, -14.4  );
setRotateKey( spep_0 + 666 + OFFSET_X, 1, -15.8  );
setRotateKey( spep_0 + 667 + OFFSET_X, 1, -15.8  );
setRotateKey( spep_0 + 668 + OFFSET_X, 1, -17.2  );
setRotateKey( spep_0 + 669 + OFFSET_X, 1, -17.2  );
setRotateKey( spep_0 + 670 + OFFSET_X, 1, -18.6  );
setRotateKey( spep_0 + 671 + OFFSET_X, 1, -18.6  );
setRotateKey( spep_0 + 672 + OFFSET_X, 1, 25.8  );
setRotateKey( spep_0 + 684 + OFFSET_X, 1, 25.8  );


--敵の動き3
setDisp( spep_0 + 864 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 926 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 864 + OFFSET_X, 1, 162 , -207.3 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 162 , -207.3 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, 154.7 , -203.7 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, 154.7 , -203.7 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 145.1 , -195.5 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 145.1 , -195.5 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 146.5 , -200.6 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 146.5 , -200.6 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 125.9 , -176.9 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 125.9 , -176.9 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 121.2 , -189.4 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 121.2 , -189.4 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, 107.3 , -182.4 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, 107.3 , -182.4 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 91.2 , -175.4 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 91.2 , -175.4 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, 91.7 , -180.6 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, 91.7 , -180.6 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, 89.4 , -177.6 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, 89.4 , -177.6 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 81.5 , -174.7 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, 81.5 , -174.7 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, 73.6 , -171.8 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, 73.6 , -171.8 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 65.6 , -172.3 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 65.6 , -172.3 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 57.7 , -162.9 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, 57.7 , -162.9 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, 49.7 , -159 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 49.7 , -159 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 34.3 , -156.5 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 34.3 , -156.5 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 30.5 , -155.4 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 30.5 , -155.4 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 26.5 , -154.3 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 26.5 , -154.3 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 17.3 , -170.7 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 17.3 , -170.7 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 11.5 , -149.3 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 11.5 , -149.3 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 5.1 , -147.9 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 5.1 , -147.9 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, -1.3 , -146.5 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, -1.3 , -146.5 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, -7.7 , -145 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, -7.7 , -145 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, -14.6 , -132.4 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, -14.6 , -132.4 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, -28.4 , -133.8 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, -28.4 , -133.8 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, -20.6 , -145.9 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, -20.6 , -145.9 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, -28.8 , -141.1 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, -28.8 , -141.1 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, -33.6 , -144 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, -33.6 , -144 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, -34 , -133.9 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, -34 , -133.9 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, -36.8 , -128.7 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, -36.8 , -128.7 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, -38.2 , -131.3 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, -38.2 , -131.3 , 0 );

setScaleKey( spep_0 + 864 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 865 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 866 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 867 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 868 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 869 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 870 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 871 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 872 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 873 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 874 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 875 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 876 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 877 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 878 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 879 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 880 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 881 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 882 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 883 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 884 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 885 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 886 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 887 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 888 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 889 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 890 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 891 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 892 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 893 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 894 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 895 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 896 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 897 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 898 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 899 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 900 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 901 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 902 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 903 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 904 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 905 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 906 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 907 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 908 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 909 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 910 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 911 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 912 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 913 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 914 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 915 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 916 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 917 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 918 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 919 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 920 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 921 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 922 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 923 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 924 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 926 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_0 + 864 + OFFSET_X, 1, -83.5  );
setRotateKey( spep_0 + 926 + OFFSET_X, 1, -83.5  );

setBlendColor( spep_0 + 868 + OFFSET_X, 1, 3, 1, 1, 1, 0.17);
setBlendColor( spep_0 + 870 + OFFSET_X, 1, 3, 1, 1, 1, 0.35);
setBlendColor( spep_0 + 872 + OFFSET_X, 1, 3, 1, 1, 1, 0.52);
setBlendColor( spep_0 + 874 + OFFSET_X, 1, 3, 1, 1, 1, 0.2);
setBlendColor( spep_0 + 876 + OFFSET_X, 1, 3, 1, 1, 1, 0);
setBlendColor( spep_0 + 878 + OFFSET_X, 1, 3, 1, 1, 1, 0.35);
setBlendColor( spep_0 + 880 + OFFSET_X, 1, 3, 1, 1, 1, 0.7);
setBlendColor( spep_0 + 882 + OFFSET_X, 1, 3, 1, 1, 1, 0.46);
setBlendColor( spep_0 + 884 + OFFSET_X, 1, 3, 1, 1, 1, 0.24);
setBlendColor( spep_0 + 886 + OFFSET_X, 1, 3, 1, 1, 1, 0);

setBlendColor( spep_0 + 894 + OFFSET_X, 1, 3, 1, 1, 1, 0.23);
setBlendColor( spep_0 + 896 + OFFSET_X, 1, 3, 1, 1, 1, 0.46);
setBlendColor( spep_0 + 898 + OFFSET_X, 1, 3, 1, 1, 1, 0.7);
setBlendColor( spep_0 + 900 + OFFSET_X, 1, 3, 1, 1, 1, 0.56);
setBlendColor( spep_0 + 902 + OFFSET_X, 1, 3, 1, 1, 1, 0.41);
setBlendColor( spep_0 + 904 + OFFSET_X, 1, 3, 1, 1, 1, 0.27);
setBlendColor( spep_0 + 906 + OFFSET_X, 1, 3, 1, 1, 1, 0.13);

setBlendColor( spep_0 + 912 + OFFSET_X, 1, 3, 1, 1, 1, 0.7);
setBlendColor( spep_0 + 920 + OFFSET_X, 1, 3, 1, 1, 1, 0.46);
setBlendColor( spep_0 + 922 + OFFSET_X, 1, 3, 1, 1, 1, 0.23);
setBlendColor( spep_0 + 924 + OFFSET_X, 1, 3, 1, 1, 1, 0);


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
--セリフカットイン
SE002 = playSeVer2( spep_0 + 21, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 21, SE002, 63 );
--オーラ
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 63 );
--溜め前兆
SE004 = playSeVer2( spep_0 + 33, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 33, SE004, 85 );
SE005 = playSeVer2( spep_0 + 33, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 33, SE005, 84 );
--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 63 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 63 );
--気ダメ
SE008 = playSeVer2( spep_0 + 85, 1259, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 93, 1035, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 93, 1188, "", 0, 0, 0, -1);
--オーラ
SE011 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE011, 63 );
SE012 = playSeVer2( spep_0 + 131, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 131, SE012, 56 );
SE013 = playSeVer2( spep_0 + 155, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 155, SE013, 56 );
SE014 = playSeVer2( spep_0 + 179, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 179, SE014, 56 );
SE015 = playSeVer2( spep_0 + 203, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 203, SE015, 56 );
SE016 = playSeVer2( spep_0 + 227, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 227, SE016, 56 );
SE017 = playSeVer2( spep_0 + 251, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 251, SE017, 56 );
SE018 = playSeVer2( spep_0 + 275, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 275, SE018, 56 );
SE019 = playSeVer2( spep_0 + 299, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 299, SE019, 56 );
SE020 = playSeVer2( spep_0 + 323, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 323, SE020, 56 );
SE021 = playSeVer2( spep_0 + 347, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 347, SE021, 56 );
--向かっていく
SE022 = playSeVer2( spep_0 + 346, 1452, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 371, 1277, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 378, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE024, 120 );
setTimeStretch( SE024, 1.43, 30, 4 );
SE025 = playSeVer2( spep_0 + 378, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE025, 120 );
SE026 = playSeVer2( spep_0 + 378, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE026, 59 );
--ズーム
SE027 = playSeVer2( spep_0 + 491, 1072, "", 0, 0, 0, -1);
--オーラ
SE028 = playSeVer2( spep_0 + 546, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 546, SE028, 56 );

-- ** ボイス ** --
--「はあああ」
playVoice( spep_0 + 22, 1226 );
setVoiceVolume( spep_0 + 22, 1226, 106 );
--「ギャオーーッ！！」
playVoice( spep_0 + 22, 1229 );
setVoiceVolume( spep_0 + 22, 1229, 100 );
--「いくぞ！！」
playVoice( spep_0 + 177, 1228 );
setVoiceVolume( spep_0 + 177, 1228, 120 );
--「オレもやるぞ！」
playVoice( spep_0 + 230, 1227 );
setVoiceVolume( spep_0 + 230, 1227, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 568; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
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
--振りかぶる
SE029 = playSeVer2( spep_0 + 551, 1116, "",spep_0 + 590, 0, 13, -1);
--オーラ
SE030 = playSeVer2( spep_0 + 570, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE030, 56 );
SE031 = playSeVer2( spep_0 + 594, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE031, 56 );
--パンチ
SE032 = playSeVer2( spep_0 + 603, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 610, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 610, 1359, "", 0, 0, 0, -1);
--オーラ
SE035 = playSeVer2( spep_0 + 618, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE035, 56 );
--気弾溜め
SE036 = playSeVer2( spep_0 + 655, 1442, "",spep_0 + 785, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 655, SE036, 200 );
--敵吹き飛ぶ
SE037 = playSeVer2( spep_0 + 661, 1027, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 661, 1121, "",spep_0 + 795, 0, 92, -1);
--オーラ
SE039 = playSeVer2( spep_0 + 676, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 676, SE039, 63 );
SE040 = playSeVer2( spep_0 + 700, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE040, 63 );
--気弾溜め
SE041 = playSeVer2( spep_0 + 703, 1224, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 703, SE041, 100 );
setPitch( spep_0 + 703, SE041, 300 );
setTimeStretch( SE041, 1.2, 30, 4 );
--オーラ
SE042 = playSeVer2( spep_0 + 724, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE042, 63 );
--気弾溜め
SE043 = playSeVer2( spep_0 + 725, 1225, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 730, 1276, "",spep_0 + 777, 0, 15, -1);
setSeVolumeByWorkId( spep_0 + 730, SE044, 112 );
--連続気弾発射
SE045 = playSeVer2( spep_0 + 750, 1027, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 750, 1463, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 750, 1409, "",spep_0 + 1023, 0, 12, -1);
SE048 = playSeVer2( spep_0 + 750, 1406, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 838, 1463, "", 0, 0, 0, -1);
--連続爆発
SE050 = playSeVer2( spep_0 + 870, 1023, "", 0, 0, 0, -1);
--連続気弾発射
SE051 = playSeVer2( spep_0 + 877, 1406, "",spep_0 + 1033, 0, 22, -1);
--連続爆発
SE052 = playSeVer2( spep_0 + 896, 1024, "", 0, 0, 0, -1);
--連続気弾発射
SE053 = playSeVer2( spep_0 + 919, 1463, "",spep_0 + 1024, 0, 17, -1);
--連続爆発
SE054 = playSeVer2( spep_0 + 934, 1159, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------
-- hideKoScreen();
dealDamage( spep_0 + 926); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1042

end