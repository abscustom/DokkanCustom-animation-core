--1034340:LR_孫悟飯(ビースト)_必殺技：魔旋連撃
--sp_effect_b4_00440
--sp3026

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164522; --最初〜最後まで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 662;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --蹴りヒット
        SE036 = playSeVer2( spep_0 + 662 + 3, 1049, "", 0, 0, 0, -1);
        SE037 = playSeVer2( spep_0 + 662 + 3, 1123, "", 0, 0, 0, -1);
        SE038 = playSeVer2( spep_0 + 610, 1187, "", 0, 0, 0, -1);

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

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
MAX_FRAME_0 = 944;
CARD_FRAME = 86;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
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
spep_x = spep_0 + 0; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 140; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------

--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 88 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, -261.1 * mirror, -250.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -261.1 * mirror, -250.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 0.56, 0.56 );

setRotateKey( spep_0 + 0, 1, 0 * mirror );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 * mirror );

setBlendColor( spep_0 + 0, 1, 2, 0.4, 0.4, 0.4, 1.0);
setBlendColor( spep_0 + 88, 1, 2, 0, 0, 0, 0);

setGaussBlurKey( spep_0 + 0, 1, 0.003);
setGaussBlurKey( spep_0 + 88 + OFFSET_X, 1, 0.003);

setAlphaKey( spep_0 + 0, 1, 150 );
setAlphaKey( spep_0 + 87 + OFFSET_X, 1, 150 );
setAlphaKey( spep_0 + 88 + OFFSET_X, 1, 255 );

--敵の動き2
setDisp( spep_0 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 326 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 314 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 314 + OFFSET_X, 1, 762 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 762 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 647 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 647 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 496 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 496 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 297 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 297 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 34 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 34 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -2 * mirror, -850.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -2 * mirror, -850.3 , 0 );

--setScaleKey( spep_0 + 326 + OFFSET_X, 1, 10.53, 10.53 );
--setScaleKey( spep_0 + 314 + OFFSET_X, 1, 10.53, 10.53 );

setScaleKey( spep_0 + 314 + OFFSET_X, 1, 11, 11 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 11, 11 );

setRotateKey( spep_0 + 314 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 0 * mirror );

setBlendColor( spep_0 + 314 + OFFSET_X, 1, 2, 0.6, 0.6, 1, 1.0 );

setGaussBlurKey( spep_0 + 314 + OFFSET_X, 1, 0);

setAlphaKey( spep_0 + 314 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 326 + OFFSET_X, 1, 255 );

--敵の動き3
setDisp( spep_0 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 332 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 332 + OFFSET_X, 1, -65.1 * mirror, -483.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -65.1 * mirror, -483.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -55.5 * mirror, -477.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -55.5 * mirror, -477.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 4 * mirror, -416.5 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 4 * mirror, -416.5 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -9.4 * mirror, -431.8 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -9.4 * mirror, -431.8 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -38.2 * mirror, -476 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -38.2 * mirror, -476 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -11.4 * mirror, -483.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -11.4 * mirror, -483.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -17.1 * mirror, -485.6 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -17.1 * mirror, -485.6 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -25.7 * mirror, -473.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -25.7 * mirror, -473.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -27.6 * mirror, -472.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -27.6 * mirror, -472.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -29.4 * mirror, -472 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -29.4 * mirror, -472 , 0 );

setScaleKey( spep_0 + 332 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 6.23, 6.23 );

setRotateKey( spep_0 + 332 + OFFSET_X, 1, -21.4 * mirror );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -21.4 * mirror );

setAlphaKey( spep_0 + 332 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 356 + OFFSET_X, 1, 255 );


--敵の動き4
setDisp( spep_0 + 616 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 640 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 616 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 616 + OFFSET_X, 1, -18.2 * mirror, -507.7 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -18.2 * mirror, -507.7 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -52.8 * mirror, -351 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -52.8 * mirror, -351 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -70 * mirror, -508.9 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -70 * mirror, -508.9 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 34.8 * mirror, -370.7 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 34.8 * mirror, -370.7 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -20.7 * mirror, -447.2 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -20.7 * mirror, -447.2 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 15.1 * mirror, -400.3 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 15.1 * mirror, -400.3 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -52.7 * mirror, -481.7 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -52.7 * mirror, -481.7 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -42.9 * mirror, -484.1 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -42.9 * mirror, -484.1 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -20.7 * mirror, -450.8 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -20.7 * mirror, -450.8 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -8.3 * mirror, -436 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -8.3 * mirror, -436 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -19.4 * mirror, -469.3 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -19.4 * mirror, -469.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -26.8 * mirror, -484.1 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -26.8 * mirror, -484.1 , 0 );

setScaleKey( spep_0 + 616 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 1.25, 1.25 );

setRotateKey( spep_0 + 616 + OFFSET_X, 1, -53.9 * mirror );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -53.9 * mirror );

setAlphaKey( spep_0 + 616 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 640 + OFFSET_X, 1, 255 );

--敵の動き5

adjust_x = -20;

setDisp( spep_0 + 650 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 678 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 650 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 650 + OFFSET_X, 1, (39.8 + adjust_x) * mirror, -75.1 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, (39.8 + adjust_x) * mirror, -75.1 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, (48.5 + adjust_x) * mirror, -86.9 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, (48.5 + adjust_x) * mirror, -86.9 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, (90.4 + adjust_x) * mirror, -90.1 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, (90.4 + adjust_x) * mirror, -90.1 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, (88 +   adjust_x) * mirror, -87.3 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, (88 +   adjust_x) * mirror, -87.3 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, (81.5 + adjust_x) * mirror, -83.3 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, (81.5 + adjust_x) * mirror, -83.3 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, (71 +   adjust_x) * mirror, -88.6 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, (71 +   adjust_x) * mirror, -88.6 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, (73.4 + adjust_x) * mirror, -89.4 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, (73.4 + adjust_x) * mirror, -89.4 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, (78.3 + adjust_x) * mirror, -88.2 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, (78.3 + adjust_x) * mirror, -88.2 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, (73.4 + adjust_x) * mirror, -79.3 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, (73.4 + adjust_x) * mirror, -79.3 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, (70.9 + adjust_x) * mirror, -82.1 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, (70.9 + adjust_x) * mirror, -82.1 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, (77.4 + adjust_x) * mirror, -83.7 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, (77.4 + adjust_x) * mirror, -83.7 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, (70.9 + adjust_x) * mirror, -82.1 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, (70.9 + adjust_x) * mirror, -82.1 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, (385.4 +adjust_x) * mirror, -30.7 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, (385.4 +adjust_x) * mirror, -30.7 , 0 );

--setScaleKey( spep_0 + 650 + OFFSET_X, 1, 0.94, 0.94 );
--setScaleKey( spep_0 + 678 + OFFSET_X, 1, 0.94, 0.94 );

setScaleKey( spep_0 + 650 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_0 + 650 + OFFSET_X, 1, 6.7 * mirror );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, 6.7 * mirror );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, 5.5 * mirror );
setRotateKey( spep_0 + 678 + OFFSET_X, 1, 5.5 * mirror );

setBlendColor( spep_0 + 650 + OFFSET_X, 1, 3, 0.13, 0.13, 0.3, 0.7 );

setAlphaKey( spep_0 + 650 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 678 + OFFSET_X, 1, 255 );


--敵の動き6
setDisp( spep_0 + 736 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 746 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 736 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 736 + OFFSET_X, 1, -132.1 * mirror, 35.2 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -132.1 * mirror, 35.2 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -89.2 * mirror, 79.1 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -89.2 * mirror, 79.1 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -36.8 * mirror, 104.2 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -36.8 * mirror, 104.2 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 18.3 * mirror, 130.4 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 18.3 * mirror, 130.4 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 67.8 * mirror, 109.1 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 67.8 * mirror, 109.1 , 0 );

setScaleKey( spep_0 + 736 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 0.38, 0.38 );

setRotateKey( spep_0 + 736 + OFFSET_X, 1, 12.7 * mirror );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, 12.7 * mirror );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, 40.6 * mirror );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, 40.6 * mirror );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, 70.9 * mirror );
setRotateKey( spep_0 + 741 + OFFSET_X, 1, 70.9 * mirror );
setRotateKey( spep_0 + 742 + OFFSET_X, 1, 98.9 * mirror );
setRotateKey( spep_0 + 743 + OFFSET_X, 1, 98.9 * mirror );
setRotateKey( spep_0 + 744 + OFFSET_X, 1, 127.6 * mirror );
setRotateKey( spep_0 + 746 + OFFSET_X, 1, 127.6 * mirror );

setBlendColor( spep_0 + 736 + OFFSET_X, 1, 2, 0.6, 0.6, 1, 1 );
setBlendColor( spep_0 + 746 + OFFSET_X, 1, 2, 0, 0, 0, 0 );

setAlphaKey( spep_0 + 736 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 746 + OFFSET_X, 1, 255 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 111, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--セリフカットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--拳握る
SE003 = playSeVer2( spep_0 + 14, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 77 );
SE004 = playSeVer2( spep_0 + 14, 1294, "",spep_0 + 38, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 269 );
SE005 = playSeVer2( spep_0 + 29, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 29, SE005, 67 );
--カードカットイン
--SE006 = playSeVer2( spep_0 + 90, 1035, "", 0, 0, 0, -1);
--環境音
SE007 = playSeVer2( spep_0 + 170, 1175, "",spep_0 + 370, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 170, SE007, 24 );
SE008 = playSeVer2( spep_0 + 170, 1226, "",spep_0 + 362, 0, 29, -1);
setSeVolumeByWorkId( spep_0 + 170, SE008, 22 );
--歩き出す
SE009 = playSeVer2( spep_0 + 179, 1111, "",spep_0 + 196, 0, 7, -1);
SE010 = playSeVer2( spep_0 + 181, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 181, SE010, 240 );
SE011 = playSeVer2( spep_0 + 204, 1111, "",spep_0 + 221, 0, 7, -1);
SE012 = playSeVer2( spep_0 + 206, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE012, 160 );
SE013 = playSeVer2( spep_0 + 233, 1111, "",spep_0 + 250, 0, 7, -1);
SE014 = playSeVer2( spep_0 + 235, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 235, SE014, 117 );
--瞬間移動
SE015 = playSeVer2( spep_0 + 258, 1245, "", spep_0 + 310, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 258, SE015, 71 );
SE016 = playSeVer2( spep_0 + 258, 1109, "", spep_0 + 310, 0, 4, -1);
SE017 = playSeVer2( spep_0 + 286, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE017, 62 );
SE018 = playSeVer2( spep_0 + 286, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 320; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

setBlendColor( SP_dodge + 9, 1, 2, 0, 0, 0, 0);

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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
--ひじうち
SE019 = playSeVer2( spep_0 + 314, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE019, 143 );
SE020 = playSeVer2( spep_0 + 321, 1414, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 321, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 321, 1180, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 335, 1491, "", 0, 0, 0, -1);
--回転する
SE024 = playSeVer2( spep_0 + 377, 1117, "",spep_0 + 447, 0, 24, -1);
SE025 = playSeVer2( spep_0 + 377, 1388, "",spep_0 + 443, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 377, SE025, 69 );
setPitch( spep_0 + 377, SE025, -1000 );
setTimeStretch( SE025, 0.33, 30, 4 );
SE026 = playSeVer2( spep_0 + 377, 1116, "",spep_0 + 426, 0, 21, -1);
--着地
SE027 = playSeVer2( spep_0 + 428, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE027, 209 );
SE028 = playSeVer2( spep_0 + 428, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE028, 180 );
SE029 = playSeVer2( spep_0 + 428, 1014, "",spep_0 + 489, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 428, SE029, 54 );
--追いかける
SE030 = playSeVer2( spep_0 + 491, 1143, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 491, 1179, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 491, 1277, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 491, 1030, "", 0, 0, 0, -1);
--向かってくる
SE034 = playSeVer2( spep_0 + 516, 1183, "",spep_0 + 658, 0, 41, -1);
SE035 = playSeVer2( spep_0 + 516, 1121, "",spep_0 + 662, 0, 49, -1);
setPitch( spep_0 + 516, SE035, 300 );
setTimeStretch( SE035, 1.2, 30, 4 );
--蹴りヒット
SE036 = playSeVer2( spep_0 + 602, 1049, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 607, 1123, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 611, 1187, "", 0, 0, 0, -1);
--敵吹き飛ぶ
SE039 = playSeVer2( spep_0 + 667, 1027, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 667, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 667, SE040, 27 );
SE041 = playSeVer2( spep_0 + 667, 1491, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 667, 1277, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 680, 1121, "",spep_0 + 780, 0, 25, -1);
setSeVolumeByWorkId( spep_0 + 680, SE043, 68 );
--爆発
SE044 = playSeVer2( spep_0 + 713, 1011, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 735, 1159, "", 0, 0, 0, -1);
--画面遷移
SE046 = playSeVer2( spep_0 + 815, 1232, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------

hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_0 + 836); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 944