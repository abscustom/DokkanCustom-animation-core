--1033870:UR_コルド大王_必殺技：ダーティースラッシュ
--sp_effect_b2_00072
--sp3025

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164504; --エフェクトのコメント　ef_001

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

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 404;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** スキップ時 ** --

        -- ** 音 ** --
        SE008 = playSeVer2( spep_0 + 407, 1278, "",spep_0 + 509, 8, 46, -1);
        setSeVolumeByWorkId( spep_0 + 407, SE008, 61 );
        setStartTimeMs( SE008, 1167 );

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; --敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで ef_001
-------------------------------------------------
MAX_FRAME_0 = 716;
CARD_FRAME = 310;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで ef_001
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
spep_x = spep_0 + 394; --spep名とフレーム数を置き換える

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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 496 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 580 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 496 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 496 + OFFSET_X, 1, -170 * mirror, -257.9 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -170 * mirror, -257.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -128.6 * mirror, -231.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -128.6 * mirror, -231.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -94.8 * mirror, -209.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -94.8 * mirror, -209.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -67.3 * mirror, -191.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -67.3 * mirror, -191.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -45.3 * mirror, -177.3 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -45.3 * mirror, -177.3 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -28.1 * mirror, -166 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -28.1 * mirror, -166 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -14.5 * mirror, -157.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -14.5 * mirror, -157.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -4.1 * mirror, -150.6 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -4.1 * mirror, -150.6 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 3.6 * mirror, -145.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 3.6 * mirror, -145.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 9.3 * mirror, -141.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 9.3 * mirror, -141.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 13.5 * mirror, -139.2 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 13.5 * mirror, -139.2 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 16.3 * mirror, -137.3 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 16.3 * mirror, -137.3 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 18.2 * mirror, -136.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 18.2 * mirror, -136.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 19.4 * mirror, -135.3 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 19.4 * mirror, -135.3 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 20.2 * mirror, -134.7 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 20.2 * mirror, -134.7 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 20.6 * mirror, -134.5 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 20.6 * mirror, -134.5 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 48.8 * mirror, -98.4 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 48.8 * mirror, -98.4 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 8.9 * mirror, -158.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 8.9 * mirror, -158.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 4.9 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 4.9 * mirror, -110.2 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 30.4 * mirror, -147.5 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 30.4 * mirror, -147.5 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 30.4 * mirror, -123.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 30.4 * mirror, -123.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 14.3 * mirror, -144.7 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 14.3 * mirror, -144.7 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 13 * mirror, -124.7 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 13 * mirror, -124.7 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 30.3 * mirror, -147.4 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 30.3 * mirror, -147.4 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 30.3 * mirror, -123.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 30.3 * mirror, -123.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 14.3 * mirror, -144.7 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 14.3 * mirror, -144.7 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 13 * mirror, -124.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 13 * mirror, -124.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 18 * mirror, -138.7 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 18 * mirror, -138.7 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 26 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 26 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 26 * mirror, -137.7 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 26 * mirror, -137.7 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 18 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 18 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 18 * mirror, -138.7 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 18 * mirror, -138.7 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 26 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 26 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 26 * mirror, -137.7 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 26 * mirror, -137.7 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 18 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 18 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 18 * mirror, -138.7 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 18 * mirror, -138.7 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 26 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 26 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 26 * mirror, -137.7 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 26 * mirror, -137.7 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 18 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 18 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 18 * mirror, -138.7 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 18 * mirror, -138.7 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 26 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 26 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 26 * mirror, -137.7 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 26 * mirror, -137.7 , 0 );

setScaleKey( spep_0 + 496 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 496 + OFFSET_X, 1, 45.6 * mirror );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, 45.6 * mirror );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, 46.1 * mirror );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, 46.1 * mirror );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, 46.5 * mirror );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 46.5 * mirror );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, 46.8 * mirror );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, 46.8 * mirror );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, 47.1 * mirror );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, 47.1 * mirror );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, 47.3 * mirror );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, 47.3 * mirror );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, 47.5 * mirror );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, 47.5 * mirror );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, 47.6 * mirror );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, 47.6 * mirror );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, 47.7 * mirror );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, 47.7 * mirror );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, 47.8 * mirror );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 47.8 * mirror );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 47.9 * mirror );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 47.9 * mirror );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 332, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 49 );
setTimeStretch( SE002, 1.67, 30, 4 );
--剣構えるうごき
SE003 = playSeVer2( spep_0 + 154, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE003, 51 );
SE004 = playSeVer2( spep_0 + 185, 1013, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 232, 1317, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE005, 126 );
SE006 = playSeVer2( spep_0 + 283, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 283, SE006, 65 );
--カードカットイン
--SE007 = playSeVer2( spep_0 + 315, 1035, "", 0, 0, 0, -1);
--振りかぶる
SE008 = playSeVer2( spep_0 + 407, 1278, "",spep_0 + 509, 8, 46, -1);
setSeVolumeByWorkId( spep_0 + 407, SE008, 61 );
setStartTimeMs( SE008, 1167 );
--セリフカットイン
--SE009 = playSeVer2( spep_0 + 412, 1018, "", 0, 0, 0, -1);
--振りかぶる
SE010 = playSeVer2( spep_0 + 426, 1116, "",spep_0 + 480, 0, 28, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 460; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE00X, 0);
-- stopSe( SP_dodge - 12, SE003, 0);
-- stopSe( SP_dodge - 12, SE004, 0);
-- stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--斬りつける
SE011 = playSeVer2( spep_0 + 482, 1061, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 485, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 485, SE012, 53 );
SE013 = playSeVer2( spep_0 + 488, 1143, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 495, 1121, "",spep_0 + 544, 0, 16, -1);
--地面激突
SE015 = playSeVer2( spep_0 + 529, 1159, "", 0, 0, 0, -1);
--剣投げ捨てる
SE016 = playSeVer2( spep_0 + 576, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 576, 1119, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE017, 55 );
SE018 = playSeVer2( spep_0 + 585, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 585, SE018, 67 );
SE019 = playSeVer2( spep_0 + 594, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE019, 65 );
--マントひるがえる
SE020 = playSeVer2( spep_0 + 628, 1333, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 662, 1332, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
if (_IS_PLAYER_SIDE_ == 1) then -- 味方側のみ
    hideKoScreen();
    fadeKoLabel(1,0.5);
end
dealDamage( spep_0 + 522); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム
