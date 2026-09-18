--1034410:UR_パンジ_必殺技：とっておきショット
--sp_effect_a3_00129
--sp3059

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164533; --カード前 ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 544;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;


end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 730;
CARD_FRAME = 390;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前(ef_001)
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
spep_x = spep_0 + 212; --spep名とフレーム数を置き換える

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
--[[
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
]]

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 320 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 390 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 320 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_0 + 346 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 364 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 320 + OFFSET_X, 1, 688.3 * mirror, 148.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 688.3 * mirror, 148.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 494.7 * mirror, 103.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 494.7 * mirror, 103.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 301.1 * mirror, 59.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 301.1 * mirror, 59.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 107.6 * mirror, 14.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 107.6 * mirror, 14.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 99.7 * mirror, 12.3 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 99.7 * mirror, 12.3 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 91.8 * mirror, 10.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 91.8 * mirror, 10.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 84 * mirror, 7.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 84 * mirror, 7.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 76.1 * mirror, 5.6 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 76.1 * mirror, 5.6 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 68.2 * mirror, 3.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 68.2 * mirror, 3.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 60.3 * mirror, 1.1 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 60.3 * mirror, 1.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 52.5 * mirror, -1.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 52.5 * mirror, -1.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 44.6 * mirror, -3.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 44.6 * mirror, -3.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 38.6 * mirror, 11.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 38.6 * mirror, 11.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 54.6 * mirror, -4.2 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 54.6 * mirror, -4.2 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 40.6 * mirror, 6.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 40.6 * mirror, 6.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 46.6 * mirror, -12.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 46.6 * mirror, -12.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 41.6 * mirror, 3.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 41.6 * mirror, 3.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 44.6 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 44.6 * mirror, -0.2 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 48.6 * mirror, 4.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 48.6 * mirror, 4.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 50.6 * mirror, 0.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 50.6 * mirror, 0.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 54.6 * mirror, 0.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 54.6 * mirror, 0.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 53.8 * mirror, 6.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 53.8 * mirror, 6.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 41.3 * mirror, 10.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 41.3 * mirror, 10.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 56.8 * mirror, -2.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 56.8 * mirror, -2.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 53.3 * mirror, 12.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 53.3 * mirror, 12.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 48.8 * mirror, 0.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 48.8 * mirror, 0.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 52.3 * mirror, 1.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 52.3 * mirror, 1.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 54.8 * mirror, 7.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 54.8 * mirror, 7.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 51.3 * mirror, 7.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 51.3 * mirror, 7.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 53.8 * mirror, 2.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 53.8 * mirror, 2.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 54.3 * mirror, 2.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 54.3 * mirror, 2.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 54.8 * mirror, 3.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 54.8 * mirror, 3.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 55.3 * mirror, 3.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 55.3 * mirror, 3.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 55.8 * mirror, 3.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 55.8 * mirror, 3.4 , 0 );

setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_0 + 320 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 0 * mirror );

-- 敵の動き2
setDisp( spep_0 + 544 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 586 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 544 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 544 + OFFSET_X, 1, 168.9 * mirror, -82.4 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 168.9 * mirror, -82.4 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 170 * mirror, -82.1 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 170 * mirror, -82.1 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 171 * mirror, -81.8 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 171 * mirror, -81.8 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 172.1 * mirror, -81.6 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 172.1 * mirror, -81.6 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 173.1 * mirror, -81.3 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 173.1 * mirror, -81.3 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 182.2 * mirror, -71 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 182.2 * mirror, -71 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 169.2 * mirror, -90.8 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 169.2 * mirror, -90.8 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 176.3 * mirror, -72.5 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 176.3 * mirror, -72.5 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 177.3 * mirror, -86.2 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 177.3 * mirror, -86.2 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 184.4 * mirror, -76 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 184.4 * mirror, -76 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 175.4 * mirror, -83.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 175.4 * mirror, -83.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 180.5 * mirror, -79.4 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 180.5 * mirror, -79.4 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 181.5 * mirror, -79.2 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 181.5 * mirror, -79.2 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 182.6 * mirror, -78.9 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 182.6 * mirror, -78.9 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 183.6 * mirror, -78.6 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 183.6 * mirror, -78.6 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 184.7 * mirror, -78.4 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 184.7 * mirror, -78.4 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 185.8 * mirror, -78.1 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 185.8 * mirror, -78.1 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 186.8 * mirror, -77.8 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 186.8 * mirror, -77.8 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 187.9 * mirror, -77.6 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 187.9 * mirror, -77.6 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 188.9 * mirror, -77.3 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 188.9 * mirror, -77.3 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 190 * mirror, -77 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 190 * mirror, -77 , 0 );

setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 544 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 0 * mirror );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--飛び込んでくる
SE001 = playSeVer2( spep_0 + 0, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 64 );
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);

--着地
SE003 = playSeVer2( spep_0 + 66, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE003, 188 );
SE004 = playSeVer2( spep_0 + 66, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE004, 77 );

--すべる
SE005 = playSeVer2( spep_0 + 85, 1476, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 85, SE005, 45 );
SE006 = playSeVer2( spep_0 + 85, 1314, "",spep_0 + 271, 0, 35, -1);
SE007 = playSeVer2( spep_0 + 150, 1476, "",spep_0 + 264, 0, 27, -1);
setSeVolumeByWorkId( spep_0 + 150, SE007, 64 );

--銃取り出す
SE009 = playSeVer2( spep_0 + 217, 1389, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 217, SE009, 136 );

--銃撃つ１
SE010 = playSeVer2( spep_0 + 264, 1178, "",spep_0 + 303, 0, 16, -1);
SE011 = playSeVer2( spep_0 + 264, 1424, "",spep_0 + 304, 0, 18, -1);
SE012 = playSeVer2( spep_0 + 264, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE012, 70 );

--銃撃つ２
SE013 = playSeVer2( spep_0 + 295, 1178, "",spep_0 + 334, 0, 16, -1);
SE014 = playSeVer2( spep_0 + 295, 1424, "",spep_0 + 335, 0, 18, -1);
SE015 = playSeVer2( spep_0 + 295, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 295, SE015, 75 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 304; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 6, SE013, 0);
stopSe( SP_dodge - 6, SE014, 0);
stopSe( SP_dodge - 6, SE015, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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

-- ** SE ** --
--弾飛んで行く
SE016 = playSeVer2( spep_0 + 311, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE017 = playSeVer2( spep_0 + 338, 1023, "",spep_0 + 406, 0, 10, -1);
SE018 = playSeVer2( spep_0 + 342, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 360, 1011, "",spep_0 + 408, 0, 10, -1);
SE020 = playSeVer2( spep_0 + 360, 1047, "",spep_0 + 411, 0, 13, -1);

--銃溜め
SE021 = playSeVer2( spep_0 + 486, 1505, "",spep_0 + 569, 4, 20, -1);
setSeVolumeByWorkId( spep_0 + 486, SE021, 53 );
setStartTimeMs( SE021,  1733 );
setPitch( spep_0 + 486, SE021, 1000 );
setTimeStretch( SE021, 1.67, 30, 4 );

--銃溜め
SE023 = playSeVer2( spep_0 + 488, 1136, "",spep_0 + 576, 0, 19, -1);
setSeVolumeByWorkId( spep_0 + 488, SE023, 77 );
setPitch( spep_0 + 488, SE023, 400 );
setTimeStretch( SE023, 1.27, 30, 4 );
SE024 = playSeVer2( spep_0 + 488, 1199, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 488, 1254, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE025, 42 );

--銃放つ
SE026 = playSeVer2( spep_0 + 550, 1026, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 550, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 550, 1178, "",spep_0 + 593, 0, 16, -1);
SE029 = playSeVer2( spep_0 + 550, 1424, "",spep_0 + 594, 0, 18, -1);
SE030 = playSeVer2( spep_0 + 550, 1114, "", 0, 0, 0, -1);

--爆発
SE031 = playSeVer2( spep_0 + 580, 1024, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 626, 1159, "", 0, 0, 0, -1);

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 602); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 730f