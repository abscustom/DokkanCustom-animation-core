--1034070:LR_超サイヤ人孫悟飯(少年期)_必殺技：龍翔破
--sp_effect_b1_00377
--sp3040

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164548; --開始〜カードカットイン〜フィニッシュまで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);

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

-- setMoveKey(   0,   1,    0, -5000,   0);
-- setMoveKey(   1,   1,    0, -5000,   0);
-- setMoveKey(   2,   1,    0, -5000,   0);
-- setMoveKey(   3,   1,    0, -5000,   0);
-- setMoveKey(   4,   1,    0, -5000,   0);
-- setMoveKey(   5,   1,    0, -5000,   0);
-- setMoveKey(   6,   1,    0, -5000,   0);

-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

--setAlphaKey( 0, 1, 255 );


ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 682;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --追いかける
        SE037 = playSeVer2( spep_0 + 682 + 3, 9, "", 0, 0, 0, -1);
        setTimeStretch( SE037, 1.18, 30, 4 );

        -- ** 敵キャラクター ** --
        --敵の動き
        setMoveKey( spep_0 + 682, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載
        
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
MAX_FRAME_0 = 932;
CARD_FRAME = 218;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜カードカットイン〜フィニッシュまで(ef_001)
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
spep_x = spep_0 + 52; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 100; -- 演出によって白目にかからないように調整

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
addS = 0.8;

-- 敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 124 * mirror, 223.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 124 * mirror, 223.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 124 * mirror, 223.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 124 * mirror, 229.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 124 * mirror, 229.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 124 * mirror, 229.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 124 * mirror, 229.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 124 * mirror, 235.2 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 124 * mirror, 235.2 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 124 * mirror, 240.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 124 * mirror, 240.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 124 * mirror, 245.7 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 124 * mirror, 245.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 124 * mirror, 250.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 124 * mirror, 250.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 124 * mirror, 255.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 124 * mirror, 255.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 123.9 * mirror, 259.3 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 123.9 * mirror, 259.3 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 123.8 * mirror, 263.3 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 123.8 * mirror, 263.3 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 123.8 * mirror, 266.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 123.8 * mirror, 266.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 123.8 * mirror, 270.2 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 123.8 * mirror, 270.2 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 123.7 * mirror, 273.2 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 123.7 * mirror, 273.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 123.7 * mirror, 275.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 123.7 * mirror, 275.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 123.7 * mirror, 277.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 123.7 * mirror, 277.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 123.5 * mirror, 279.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 123.5 * mirror, 279.2 , 0 );

setScaleKey( spep_0 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 0, 1, -10 * mirror );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, -10 * mirror );

-- 敵の動き2
setDisp( spep_0 + 312 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 312 + OFFSET_X, 1, 43.4 * mirror, 175.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 43.4 * mirror, 175.8 , 0 );

setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 312 + OFFSET_X, 1, -9.8 * mirror );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -9.8 * mirror );

-- 敵の動き3
setDisp( spep_0 + 400 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 588 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 400 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_0 + 408 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 520 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 554 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 568 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 576 + OFFSET_X, 1, 105 );
changeAnimeBySide( spep_0 + 584 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 400 + OFFSET_X, 1, 18.2 * mirror, 21.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 18.2 * mirror, 21.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 28.1 * mirror, 69.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 28.1 * mirror, 69.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -21.9 * mirror, 80 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -21.9 * mirror, 80 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 48.8 * mirror, 72 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 48.8 * mirror, 72 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 5.5 * mirror, 46.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 5.5 * mirror, 46.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 63.7 * mirror, 39.2 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 63.7 * mirror, 39.2 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 51 * mirror, 99.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 51 * mirror, 99.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 35.6 * mirror, 91.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 35.6 * mirror, 91.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 19.2 * mirror, 72.3 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 19.2 * mirror, 72.3 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 27.9 * mirror, 90.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 27.9 * mirror, 90.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 24.5 * mirror, 90.3 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 24.5 * mirror, 90.3 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 31.2 * mirror, 87.2 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 31.2 * mirror, 87.2 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 29.9 * mirror, 88.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 29.9 * mirror, 88.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 30.2 * mirror, 89.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 30.2 * mirror, 89.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 30.4 * mirror, 90.3 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 30.4 * mirror, 90.3 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 30.6 * mirror, 91.1 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 30.6 * mirror, 91.1 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 30.9 * mirror, 91.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 30.9 * mirror, 91.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 31.1 * mirror, 92.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 31.1 * mirror, 92.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 31.3 * mirror, 93.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 31.3 * mirror, 93.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 31.6 * mirror, 94.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 31.6 * mirror, 94.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 31.8 * mirror, 95.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 31.8 * mirror, 95.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 32 * mirror, 96 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 32 * mirror, 96 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 32.2 * mirror, 96.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 32.2 * mirror, 96.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 32.4 * mirror, 97.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 32.4 * mirror, 97.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 32.7 * mirror, 98.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 32.7 * mirror, 98.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 32.9 * mirror, 99.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 32.9 * mirror, 99.3 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 33.1 * mirror, 100.1 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 33.1 * mirror, 100.1 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 33.3 * mirror, 101 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 33.3 * mirror, 101 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 33.6 * mirror, 101.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 33.6 * mirror, 101.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 33.8 * mirror, 102.6 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 33.8 * mirror, 102.6 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 34 * mirror, 103.4 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 34 * mirror, 103.4 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 34.2 * mirror, 104.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 34.2 * mirror, 104.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 34.4 * mirror, 105 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 34.4 * mirror, 105 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 34.7 * mirror, 105.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 34.7 * mirror, 105.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 34.9 * mirror, 106.7 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 34.9 * mirror, 106.7 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 35.1 * mirror, 107.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 35.1 * mirror, 107.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 35.3 * mirror, 108.3 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 35.3 * mirror, 108.3 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 35.5 * mirror, 109.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 35.5 * mirror, 109.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 35.7 * mirror, 109.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 35.7 * mirror, 109.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 35.9 * mirror, 110.7 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 35.9 * mirror, 110.7 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 36.1 * mirror, 111.5 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 36.1 * mirror, 111.5 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 36.4 * mirror, 112.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 36.4 * mirror, 112.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 36.6 * mirror, 113.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 36.6 * mirror, 113.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 36.8 * mirror, 114 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 36.8 * mirror, 114 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 37 * mirror, 114.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 37 * mirror, 114.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 36.1 * mirror, 113.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 36.1 * mirror, 113.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 33.7 * mirror, 110.5 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 33.7 * mirror, 110.5 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 29.7 * mirror, 105.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 29.7 * mirror, 105.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 24.5 * mirror, 98 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 24.5 * mirror, 98 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 18.2 * mirror, 89.5 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 18.2 * mirror, 89.5 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 11.3 * mirror, 80.2 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 11.3 * mirror, 80.2 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 4.2 * mirror, 70.6 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 4.2 * mirror, 70.6 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -2.5 * mirror, 61.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -2.5 * mirror, 61.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -8.2 * mirror, 53.7 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -8.2 * mirror, 53.7 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -12.7 * mirror, 47.7 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -12.7 * mirror, 47.7 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -15.5 * mirror, 44 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -15.5 * mirror, 44 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -15.9 * mirror, 43.2 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -15.9 * mirror, 43.2 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -295.4 * mirror, -946.8 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -295.4 * mirror, -946.8 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -295.7 * mirror, -974.7 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -295.7 * mirror, -974.7 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -295.8 * mirror, -999.4 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -295.8 * mirror, -999.4 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -295.8 * mirror, -1017.6 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -295.8 * mirror, -1017.6 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -295.5 * mirror, -1025.1 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -295.5 * mirror, -1025.1 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -58.5 * mirror, 51.2 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -58.5 * mirror, 51.2 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -58.5 * mirror, 55.2 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -58.5 * mirror, 55.2 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -60.5 * mirror, 73.1 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -60.5 * mirror, 73.1 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -62.5 * mirror, 86.1 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, -62.5 * mirror, 86.1 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -106.1 * mirror, 199.2 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -106.1 * mirror, 199.2 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -78.1 * mirror, 106.1 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -78.1 * mirror, 106.1 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -50 * mirror, 41.1 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -50 * mirror, 41.1 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 2.2 * mirror, -10.2 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 2.2 * mirror, -10.2 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 5.5 * mirror, -0.9 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 5.5 * mirror, -0.9 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 8.9 * mirror, 8.5 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 8.9 * mirror, 8.5 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 12.3 * mirror, 17.9 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 12.3 * mirror, 17.9 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 19.7 * mirror, 32.5 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 19.7 * mirror, 32.5 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 122.8 * mirror, -269.1 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 122.8 * mirror, -269.1 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 226.4 * mirror, -571.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 226.4 * mirror, -571.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 330.7 * mirror, -873.4 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 330.7 * mirror, -873.4 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 434.6 * mirror, -1193.2 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 434.6 * mirror, -1193.2 , 0 );

setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.75+addS, 1.75+addS );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.75+addS, 1.75+addS );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.9+addS, 1.9+addS );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 1.9+addS, 1.9+addS );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 15+addS, 15+addS );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 15+addS, 15+addS );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 14.99+addS, 14.99+addS );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 14.99+addS, 14.99+addS );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 15+addS, 15+addS );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 15+addS, 15+addS );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.4+addS, 1.4+addS );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.4+addS, 1.4+addS );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 1.3+addS, 1.3+addS );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 1.3+addS, 1.3+addS );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 0.45+addS-0.4, 0.45+addS-0.4 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 0.45+addS-0.4, 0.45+addS-0.4 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.48+addS-0.4, 0.48+addS-0.4 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 0.48+addS-0.4, 0.48+addS-0.4 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 0.55+addS-0.4, 0.55+addS-0.4 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 0.55+addS-0.4, 0.55+addS-0.4 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 2+addS, 2+addS );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 2+addS, 2+addS );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 3.17+addS, 3.17+addS );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 3.17+addS, 3.17+addS );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 4.33+addS, 4.33+addS );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 4.33+addS, 4.33+addS );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 5.5+addS, 5.5+addS );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 5.5+addS, 5.5+addS );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 6.5+addS, 6.5+addS );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 6.5+addS, 6.5+addS );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 7.33+addS, 7.33+addS );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 7.33+addS, 7.33+addS );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 8.16+addS, 8.16+addS );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 8.16+addS, 8.16+addS );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 9+addS, 9+addS );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 9+addS, 9+addS );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 10+addS, 10+addS );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 10+addS, 10+addS );

setRotateKey( spep_0 + 400 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -52 * mirror );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, -52 * mirror );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -50 * mirror );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -50 * mirror );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, -75 * mirror );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, -75 * mirror );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 45 * mirror );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 45 * mirror );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 100 * mirror );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, 100 * mirror );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 108.7 * mirror );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 108.7 * mirror );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 117.3 * mirror );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, 117.3 * mirror );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 126 * mirror );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, 126 * mirror );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 135 * mirror );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, 135 * mirror );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, 113.3 * mirror );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 113.3 * mirror );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 91.7 * mirror );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, 91.7 * mirror );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, 70 * mirror );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, 70 * mirror );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, 50 * mirror );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, 50 * mirror );

-- 敵の動き4
setDisp( spep_0 + 610 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 682 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 610 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 610 + OFFSET_X, 1, 266.9 * mirror, -75.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 266.9 * mirror, -75.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 194.1 * mirror, -75.6 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 194.1 * mirror, -75.6 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 135.5 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 135.5 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 80 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 80 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 17.5 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 17.5 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -8.3 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -8.3 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -31.3 * mirror, -75.6 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -31.3 * mirror, -75.6 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -69 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -69 * mirror, -75.5 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -90.5 * mirror, -75 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -90.5 * mirror, -75 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -110.3 * mirror, -74.5 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -110.3 * mirror, -74.5 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -134.9 * mirror, -76 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -134.9 * mirror, -76 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -155.4 * mirror, -75.1 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -155.4 * mirror, -75.1 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -162.3 * mirror, -74.6 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -162.3 * mirror, -74.6 , 0 );

setScaleKey( spep_0 + 610 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 610 + OFFSET_X, 1, -35.9 * mirror );
setRotateKey( spep_0 + 682 + OFFSET_X, 1, -35.9 * mirror );

-- 敵の動き5
setDisp( spep_0 + 746 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 758 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 746 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 746 + OFFSET_X, 1, 203.6 * mirror, 219.7 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 203.6 * mirror, 219.7 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 394.3 * mirror, 212.2 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 394.3 * mirror, 212.2 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 592.3 * mirror, 204.8 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 592.3 * mirror, 204.8 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 815.3 * mirror, 195.4 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 815.3 * mirror, 195.4 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 1030.2 * mirror, 186.3 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 1030.2 * mirror, 186.3 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 1181.2 * mirror, 179.9 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 1181.2 * mirror, 179.9 , 0 );

setScaleKey( spep_0 + 746 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 749 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 6, 6 );

setRotateKey( spep_0 + 746 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 758 + OFFSET_X, 1, 0 * mirror );

-- 敵の動き6
setDisp( spep_0 + 794 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 810 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 794 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 794 + OFFSET_X, 1, 99.8 * mirror, -51.7 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 99.8 * mirror, -51.7 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 111.3 * mirror, -52.6 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 111.3 * mirror, -52.6 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 122.4 * mirror, -53.5 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 122.4 * mirror, -53.5 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 132.7 * mirror, -54.3 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 132.7 * mirror, -54.3 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 141.7 * mirror, -55 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 141.7 * mirror, -55 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 149 * mirror, -55.5 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 149 * mirror, -55.5 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 154.1 * mirror, -55.9 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 154.1 * mirror, -55.9 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 156.1 * mirror, -56.1 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 156.1 * mirror, -56.1 , 0 );

setScaleKey( spep_0 + 794 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 797 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 798 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 799 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 810 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_0 + 794 + OFFSET_X, 1, 80.2 * mirror );
setRotateKey( spep_0 + 810 + OFFSET_X, 1, 80.2 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--気ダメ
SE003 = playSeVer2( spep_0 + 132, 1024, "",spep_0 + 234, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 132, SE003, 64 );
SE004 = playSeVer2( spep_0 + 132, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE004, 138 );
SE005 = playSeVer2( spep_0 + 132, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE005, 100 );
SE007 = playSeVer2( spep_0 + 141, 1504, "", 0, 0, 0, -1);

--オーラ
SE006 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 156, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 180, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 204, 1036, "", 0, 0, 0, -1);

--飛び立つ
SE012 = playSeVer2( spep_0 + 308, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 308, 1117, "", 0, 0, 0, -1);

--向かっていく
SE014 = playSeVer2( spep_0 + 340, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE014, 38 );
setTimeStretch( SE014, 1.43, 30, 4 );

--オーラ
SE015 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE015, 50 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 380; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
-- 回避しなかった場合
-----------------------------
--オーラ
SE016 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE016, 50 );
SE017 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE017, 50 );

--アッパー
SE018 = playSeVer2( spep_0 + 404, 1049, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 404, 1187, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 416, 1179, "", 0, 0, 0, -1);

--瞬間移動
SE021 = playSeVer2( spep_0 + 457, 1109, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 486, 1109, "", 0, 0, 0, -1);

--オーラ
SE023 = playSeVer2( spep_0 + 497, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 497, SE023, 50 );
SE024 = playSeVer2( spep_0 + 521, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 521, SE024, 50 );
SE026 = playSeVer2( spep_0 + 545, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 545, SE026, 50 );
SE029 = playSeVer2( spep_0 + 569, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 569, SE029, 50 );
SE032 = playSeVer2( spep_0 + 593, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 593, SE032, 50 );
SE033 = playSeVer2( spep_0 + 617, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 617, SE033, 50 );

--つかむ
SE025 = playSeVer2( spep_0 + 521, 1012, "", 0, 0, 0, -1);

--回転する
SE027 = playSeVer2( spep_0 + 545, 1004, "", 0, 0, 0, -1);

--投げ飛ばす
SE028 = playSeVer2( spep_0 + 559, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 559, SE028, 48 );
SE030 = playSeVer2( spep_0 + 567, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 567, SE030, 79 );
SE031 = playSeVer2( spep_0 + 567, 1027, "", 0, 0, 0, -1);

--追いかける
SE034 = playSeVer2( spep_0 + 626, 1035, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 626, 1503, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 654, 1277, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 675, 9, "", 0, 0, 0, -1);
setTimeStretch( SE037, 1.18, 30, 4 );

--蹴り飛ばす
SE038 = playSeVer2( spep_0 + 716, 1116, "",spep_0 + 767, 0, 23, -1);
SE039 = playSeVer2( spep_0 + 740, 1120, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 740, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 740, SE040, 64 );

--敵飛んでいく
SE041 = playSeVer2( spep_0 + 749, 1121, "",spep_0 + 826, 0, 23, -1);
setSeVolumeByWorkId( spep_0 + 749, SE041, 56 );

--オーラ
SE042 = playSeVer2( spep_0 + 770, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 770, SE042, 40 );
SE044 = playSeVer2( spep_0 + 794, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 794, SE044, 40 );
SE046 = playSeVer2( spep_0 + 818, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 818, SE046, 40 );
SE047 = playSeVer2( spep_0 + 842, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 842, SE047, 40 );
SE048 = playSeVer2( spep_0 + 866, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 866, SE048, 40 );
SE049 = playSeVer2( spep_0 + 890, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 890, SE049, 40 );
SE050 = playSeVer2( spep_0 + 914, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 914, SE050, 40 );

--岩激突
SE043 = playSeVer2( spep_0 + 791, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 791, SE043, 66 );
SE045 = playSeVer2( spep_0 + 804, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 804, SE045, 77 );

-----------------------------
-- 終了
-----------------------------
hideKoScreen();
fadeKoLabel(1,0.5);
dealDamage( spep_0 + 810); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 932F