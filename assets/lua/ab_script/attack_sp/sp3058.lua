--1034430:UR_ドクター・アリンス_必殺技：あなたが行きなさい！(魔人ドゥー)
--sp_effect_a9_00175
--sp3058

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164544; --セリフカットイン〜フィニッシュまで ef_001

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

--HIDE_EFFECT_PHRASE_TEXTURES();

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 708;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --

    else
        setupMovie(0, SP_01, 0, 1);
    end

else
    HIDE_EFFECT_PHRASE_TEXTURES();
    
    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 938;
CARD_FRAME = 132;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜フィニッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 48; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
--敵の動き1
setDisp( spep_0 + 500 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 548 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 500 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_0 + 522 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 500 + OFFSET_X, 1, 597.7 * mirror, -493.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 597.7 * mirror, -493.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 550.9 * mirror, -459.8 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 550.9 * mirror, -459.8 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 504.1 * mirror, -426.4 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 504.1 * mirror, -426.4 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 457.2 * mirror, -392.9 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 457.2 * mirror, -392.9 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 410.4 * mirror, -359.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 410.4 * mirror, -359.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 363.7 * mirror, -325.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 363.7 * mirror, -325.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 316.8 * mirror, -292.4 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 316.8 * mirror, -292.4 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 269.9 * mirror, -259 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 269.9 * mirror, -259 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 223 * mirror, -225.5 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 223 * mirror, -225.5 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 176.3 * mirror, -192 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 176.3 * mirror, -192 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 162.3 * mirror, -190.4 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 162.3 * mirror, -190.4 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 126.4 * mirror, -108 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 126.4 * mirror, -108 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 87.6 * mirror, -44.1 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 87.6 * mirror, -44.1 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 88.5 * mirror, -4.5 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 88.5 * mirror, -4.5 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 50.1 * mirror, 42.7 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 50.1 * mirror, 42.7 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -18.1 * mirror, 168.9 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -18.1 * mirror, 168.9 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -78.5 * mirror, 280.2 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -78.5 * mirror, 280.2 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -130.8 * mirror, 376.6 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -130.8 * mirror, 376.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -175.1 * mirror, 458.1 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -175.1 * mirror, 458.1 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -211.2 * mirror, 524.9 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -211.2 * mirror, 524.9 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -239.5 * mirror, 576.8 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -239.5 * mirror, 576.8 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -259.5 * mirror, 613.9 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -259.5 * mirror, 613.9 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -271.7 * mirror, 636.1 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -271.7 * mirror, 636.1 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -275.7 * mirror, 643.8 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -275.7 * mirror, 643.8 , 0 );

setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 500 + OFFSET_X, 1, 16 * mirror );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 16 * mirror );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, 16.1 * mirror );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, 16.1 * mirror );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, 16.2 * mirror );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, 16.2 * mirror );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, 16.3 * mirror );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, 16.3 * mirror );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, 16.4 * mirror );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, 16.4 * mirror );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, 16.5 * mirror );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, 16.5 * mirror );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 16.6 * mirror );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 16.6 * mirror );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 16.7 * mirror );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, 16.7 * mirror );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 16.2 * mirror );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, 16.2 * mirror );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, 7 * mirror );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, 7 * mirror );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -1.8 * mirror );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, -1.8 * mirror );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -10.3 * mirror );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, -10.3 * mirror );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, -33.9 * mirror );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -33.9 * mirror );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, -54.8 * mirror );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, -54.8 * mirror );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, -72.9 * mirror );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -72.9 * mirror );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -88.2 * mirror );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, -88.2 * mirror );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, -100.7 * mirror );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -100.7 * mirror );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, -110.5 * mirror );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, -110.5 * mirror );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, -117.4 * mirror );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, -117.4 * mirror );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, -121.6 * mirror );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, -121.6 * mirror );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -123 * mirror );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, -123 * mirror );


--敵の動き2
setDisp( spep_0 + 672 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 706 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 672 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 672 + OFFSET_X, 1, 33.7 * mirror, 146.9 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 33.7 * mirror, 146.9 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 23.6 * mirror, 141.2 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 23.6 * mirror, 141.2 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 13.5 * mirror, 135.5 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 13.5 * mirror, 135.5 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 3.4 * mirror, 129.7 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 3.4 * mirror, 129.7 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -6.5 * mirror, 124.1 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -6.5 * mirror, 124.1 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -16.6 * mirror, 118.3 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -16.6 * mirror, 118.3 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -26.6 * mirror, 112.7 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -26.6 * mirror, 112.7 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -36.7 * mirror, 107.1 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -36.7 * mirror, 107.1 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -23.1 * mirror, 68.1 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -23.1 * mirror, 68.1 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -9.5 * mirror, 29 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -9.5 * mirror, 29 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -1.3 * mirror, 5.6 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -1.3 * mirror, 5.6 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 9.7 * mirror, -25.9 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 9.7 * mirror, -25.9 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 20.4 * mirror, -57.3 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 20.4 * mirror, -57.3 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 28.7 * mirror, -80.9 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 28.7 * mirror, -80.9 , 0 );

setScaleKey( spep_0 + 672 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 673 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 674 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 675 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 685 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 686 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 693 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 697 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 698 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 5.21, 5.21 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_0 + 701 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 6.9, 6.9 );

setRotateKey( spep_0 + 672 + OFFSET_X, 1, -270 * mirror );
setRotateKey( spep_0 + 673 + OFFSET_X, 1, -270 * mirror );
setRotateKey( spep_0 + 674 + OFFSET_X, 1, -268.7 * mirror );
setRotateKey( spep_0 + 675 + OFFSET_X, 1, -268.7 * mirror );
setRotateKey( spep_0 + 676 + OFFSET_X, 1, -267.4 * mirror );
setRotateKey( spep_0 + 677 + OFFSET_X, 1, -267.4 * mirror );
setRotateKey( spep_0 + 678 + OFFSET_X, 1, -266.1 * mirror );
setRotateKey( spep_0 + 679 + OFFSET_X, 1, -266.1 * mirror );
setRotateKey( spep_0 + 680 + OFFSET_X, 1, -264.9 * mirror );
setRotateKey( spep_0 + 681 + OFFSET_X, 1, -264.9 * mirror );
setRotateKey( spep_0 + 682 + OFFSET_X, 1, -263.6 * mirror );
setRotateKey( spep_0 + 683 + OFFSET_X, 1, -263.6 * mirror );
setRotateKey( spep_0 + 684 + OFFSET_X, 1, -262.3 * mirror );
setRotateKey( spep_0 + 685 + OFFSET_X, 1, -262.3 * mirror );
setRotateKey( spep_0 + 686 + OFFSET_X, 1, -261 * mirror );
setRotateKey( spep_0 + 693 + OFFSET_X, 1, -261 * mirror );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, -260.6 * mirror );
setRotateKey( spep_0 + 695 + OFFSET_X, 1, -260.6 * mirror );
setRotateKey( spep_0 + 696 + OFFSET_X, 1, -260.3 * mirror );
setRotateKey( spep_0 + 697 + OFFSET_X, 1, -260.3 * mirror );
setRotateKey( spep_0 + 698 + OFFSET_X, 1, -260 * mirror );
setRotateKey( spep_0 + 699 + OFFSET_X, 1, -260 * mirror );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, -259.7 * mirror );
setRotateKey( spep_0 + 701 + OFFSET_X, 1, -259.7 * mirror );
setRotateKey( spep_0 + 702 + OFFSET_X, 1, -259.4 * mirror );
setRotateKey( spep_0 + 703 + OFFSET_X, 1, -259.4 * mirror );
setRotateKey( spep_0 + 704 + OFFSET_X, 1, -259.2 * mirror );
setRotateKey( spep_0 + 706 + OFFSET_X, 1, -259.2 * mirror );


--敵の動き3
setDisp( spep_0 + 800 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 938 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 800 + OFFSET_X, 1, 119.2 * mirror, 1114.5 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 119.2 * mirror, 1114.5 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 105.5 * mirror, 1000.1 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 105.5 * mirror, 1000.1 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 91.9 * mirror, 885.3 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 91.9 * mirror, 885.3 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 78.3 * mirror, 770.6 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 78.3 * mirror, 770.6 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 64.7 * mirror, 655.9 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 64.7 * mirror, 655.9 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 51.1 * mirror, 541.3 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 51.1 * mirror, 541.3 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 37.5 * mirror, 426.5 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 37.5 * mirror, 426.5 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 24 * mirror, 311.8 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 24 * mirror, 311.8 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 10.4 * mirror, 197.1 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 10.4 * mirror, 197.1 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -3 * mirror, 82.3 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -3 * mirror, 82.3 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -2.5 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, -2.5 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 9.7 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, -2.4 * mirror, 66.7 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, -11.6 * mirror, 100.3 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 15.8 * mirror, 82 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, -17.7 * mirror, 82 , 0 );

setScaleKey( spep_0 + 800 + OFFSET_X, 1, 13.79, 13.79 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 13.79, 13.79 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 11.66, 11.66 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 11.66, 11.66 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 10.59, 10.59 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 10.59, 10.59 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 809 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 810 + OFFSET_X, 1, 8.46, 8.46 );
setScaleKey( spep_0 + 811 + OFFSET_X, 1, 8.46, 8.46 );
setScaleKey( spep_0 + 812 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 813 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 814 + OFFSET_X, 1, 6.33, 6.33 );
setScaleKey( spep_0 + 815 + OFFSET_X, 1, 6.33, 6.33 );
setScaleKey( spep_0 + 816 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_0 + 817 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_0 + 818 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 938 + OFFSET_X, 1, 4.2, 4.2 );

setRotateKey( spep_0 + 800 + OFFSET_X, 1, -235 * mirror );
setRotateKey( spep_0 + 938 + OFFSET_X, 1, -235 * mirror );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 159, 0, 31, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--ズーム
SE002 = playSeVer2( spep_0 + 18, 1072, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 18, SE002, 100 );
--セリフカットイン
--SE003 = playSeVer2( spep_0 + 56, 1018, "", 0, 0, 0, -1);
--カードカットイン
--SE004 = playSeVer2( spep_0 + 242, 1035, "", 0, 0, 0, -1);
--環境音
SE005 = playSeVer2( spep_0 + 216, 1269, "",spep_0 + 491, 0, 31, -1);
setSeVolumeByWorkId( spep_0 + 216, SE005, 25 );
--口パク
SE006 = playSeVer2( spep_0 + 247, 44, "", 0, 0, 0, -1);
--湯気出す
SE007 = playSeVer2( spep_0 + 325, 1027, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 325, 1247, "", 0, 0, 0, -1);
--飛び込んでくる
SE009 = playSeVer2( spep_0 + 445, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 445, 1117, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 445, 1183, "",spep_0 + 574, 0, 20, -1);
SE012 = playSeVer2( spep_0 + 445, 1121, "",spep_0 + 572, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 445, SE012, 65 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 500; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
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
SE013 = playSeVer2( spep_0 + 513, 1153, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 513, 1009, "", 0, 0, 0, -1);
--壁激突
SE015 = playSeVer2( spep_0 + 552, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE015, 78 );
--ターンする
SE016 = playSeVer2( spep_0 + 611, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 611, 1017, "", 0, 0, 0, -1);
--腕伸ばす
SE018 = playSeVer2( spep_0 + 638, 1505, "",spep_0 + 700, 7, 13, -1);
setSeVolumeByWorkId( spep_0 + 638, SE018, 58 );
setStartTimeMs( SE018,  350 );
setPitch( spep_0 + 638, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_0 + 641, 1385, "",spep_0 + 702, 0, 16, -1);
--気弾溜め
SE020 = playSeVer2( spep_0 + 710, 1443, "", 0, 7, 0, -1);
setStartTimeMs( SE020,  1033 );
--つかむ
SE021 = playSeVer2( spep_0 + 674, 1233, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 685, 1006, "", 0, 0, 0, -1);
--気弾溜め
SE023 = playSeVer2( spep_0 + 711, 1214, "",spep_0 + 816, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 711, SE023, 170 );
SE024 = playSeVer2( spep_0 + 711, 63, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 711, SE024, 120 );
SE025 = playSeVer2( spep_0 + 711, 1311, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 711, SE025, 172 );
setTimeStretch( SE025, 1.11, 30, 4 );
--気弾発射
SE026 = playSeVer2( spep_0 + 804, 1423, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 804, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 804, 1145, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 804, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 804, SE029, 65 );


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 816); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 - 2); -- 938