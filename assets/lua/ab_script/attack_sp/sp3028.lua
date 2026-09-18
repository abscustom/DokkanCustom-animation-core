--1034240:UR_ピッコロ(レッドリボン軍)_必殺技：極秘ミッション
--sp_effect_b1_00372
--sp3028

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164518; --開始～カードカットインまで ef_001
SP_02  = 164519; --ガッ ef_002

SP_01r = 164545; --開始～カードカットインまで ef_001r
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



ENABLE_AUTO_TIME_STRETCH(0.84);
--HIDE_EFFECT_PHRASE_TEXTURES(); --v6.4からの敵側セリフ非表示コマンド

OFFSET_X = -1;

mirror = 1;
punch_mirror = 0; --パンチモーションによるchangeAnimeAndStopがあるため敵側反転用

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 740;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --振りかぶる
        SE031 = playSeVer2( spep_0 + 743, 1278, "",spep_0 + 798, 0, 38, -1);
        setSeVolumeByWorkId( spep_0 + 743, SE031, 37 );
        SE032 = playSeVer2( spep_0 + 743, 1116, "",spep_0 + 791, 0, 29, -1);
    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    punch_mirror = -100;

    SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始～カードカットインまで
-------------------------------------------------

MAX_FRAME_0 = 886;

CARD_FRAME = 642;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～カードカットインまで(ef_001)
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
spep_x = spep_0 + 106; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end
--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

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

setDisp( spep_0 + 324 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 360 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 324 + OFFSET_X, 1, 100 );
changeAnimeBySide( spep_0 + 348 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 324 + OFFSET_X, 1, 1.9 * mirror, -84.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 1.9 * mirror, -84.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 196.9 * mirror, -77.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 196.9 * mirror, -77.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 341.8 * mirror, -120 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 341.8 * mirror, -120 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 472.2 * mirror, -158.5 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 472.2 * mirror, -158.5 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 618.1 * mirror, -194.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 618.1 * mirror, -194.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 758.5 * mirror, -233.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 758.5 * mirror, -233.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 898.9 * mirror, -272.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 898.9 * mirror, -272.7 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 4.39, 4.39 );

setRotateKey( spep_0 + 324 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 15 * mirror );

-- 敵の動き2

setDisp( spep_0 + 372 + OFFSET_X, 1, 1 );

setDisp( spep_0 + 446 + OFFSET_X, 1, 0 );

changeAnimeAndStop( spep_0 + 372 + OFFSET_X, 1, 111 + punch_mirror ,1);
changeAnimeAndStop( spep_0 + 394 + OFFSET_X, 1, 119 + punch_mirror ,1);
changeAnimeBySide( spep_0 + 396 + OFFSET_X, 1, 109 );

setMoveKey( spep_0 + 372 + OFFSET_X, 1, 630 * mirror, -361.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 630 * mirror, -361.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 544.3 * mirror, -337.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 544.3 * mirror, -337.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 460.2 * mirror, -313 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 460.2 * mirror, -313 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 383.5 * mirror, -290.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 383.5 * mirror, -290.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 317.9 * mirror, -272.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 317.9 * mirror, -272.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 264.2 * mirror, -256.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 264.2 * mirror, -256.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 221.6 * mirror, -244.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 221.6 * mirror, -244.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 188.6 * mirror, -234.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 188.6 * mirror, -234.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 163.7 * mirror, -227.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 163.7 * mirror, -227.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 145.8 * mirror, -222.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 145.8 * mirror, -222.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 133.6 * mirror, -219.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 133.6 * mirror, -219.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 144.1 * mirror, -188.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 144.1 * mirror, -188.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 359.9 * mirror, -478.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 359.9 * mirror, -478.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 118.7 * mirror, -156.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 118.7 * mirror, -156.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 62.9 * mirror, -106 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 67.4 * mirror, -109.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 57.4 * mirror, -108.9 , 0 );

setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_0 + 372 + OFFSET_X, 1, 29 * mirror );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 29 * mirror );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 12 * mirror );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 12 * mirror );

-- 敵の動き3

setDisp( spep_0 + 624 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 644 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 624 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 624 + OFFSET_X, 1, 1164.3 * mirror, 60.1 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 1164.3 * mirror, 60.1 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 1087.2 * mirror, 66.2 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 1087.2 * mirror, 66.2 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 1010.2 * mirror, 72.2 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 1010.2 * mirror, 72.2 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 933.1 * mirror, 78.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 933.1 * mirror, 78.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 856.1 * mirror, 84.2 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 856.1 * mirror, 84.2 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 779 * mirror, 90.2 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 779 * mirror, 90.2 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 702 * mirror, 96.2 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 702 * mirror, 96.2 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 624.9 * mirror, 102.2 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 624.9 * mirror, 102.2 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 547.9 * mirror, 108.2 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 547.9 * mirror, 108.2 , 0 );

setScaleKey( spep_0 + 624 + OFFSET_X, 1, 6.33, 6.33 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 6.33, 6.33 );

setRotateKey( spep_0 + 624 + OFFSET_X, 1, 1 * mirror );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 1 * mirror );

-- 敵の動き4

setDisp( spep_0 + 778 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 884 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 778 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 786 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 844 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 778 + OFFSET_X, 1, 52.1 * mirror, -76.8 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 52.1 * mirror, -76.8 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 57.1 * mirror, -81.8 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 57.1 * mirror, -81.8 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 45 * mirror, -80.2 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 45 * mirror, -80.2 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 49.8 * mirror, -73 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 49.8 * mirror, -73 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 24.2 * mirror, -119.7 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 24.2 * mirror, -119.7 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 12.2 * mirror, -119.4 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 12.2 * mirror, -119.4 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 17 * mirror, -113.5 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 17 * mirror, -113.5 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 24.2 * mirror, -123.6 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 24.2 * mirror, -123.6 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 12.2 * mirror, -123.4 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 12.2 * mirror, -123.4 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 17 * mirror, -117.5 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 17 * mirror, -117.5 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 24.2 * mirror, -127.6 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 24.2 * mirror, -127.6 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 12.2 * mirror, -127.3 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 12.2 * mirror, -127.3 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 17 * mirror, -121.4 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 17 * mirror, -121.4 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 18.1 * mirror, -124.7 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 18.1 * mirror, -124.7 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 19.2 * mirror, -127.9 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 19.2 * mirror, -127.9 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 18.1 * mirror, -127.3 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 18.1 * mirror, -127.3 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 19.2 * mirror, -130.5 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 19.2 * mirror, -130.5 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 18.1 * mirror, -130 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 18.1 * mirror, -130 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 19.2 * mirror, -133.2 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 19.2 * mirror, -133.2 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 18 * mirror, -132.6 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 18 * mirror, -132.6 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 19.1 * mirror, -135.8 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 19.1 * mirror, -135.8 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 19.1 * mirror, -137.2 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 19.1 * mirror, -137.2 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 19.1 * mirror, -138.5 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 19.1 * mirror, -138.5 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 19.1 * mirror, -139.8 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 19.1 * mirror, -139.8 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 19.1 * mirror, -141.1 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 19.1 * mirror, -141.1 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 19.1 * mirror, -142.5 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 19.1 * mirror, -142.5 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 19.1 * mirror, -143.8 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 19.1 * mirror, -143.8 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 19.1 * mirror, -145.1 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 19.1 * mirror, -145.1 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 19.1 * mirror, -146.4 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 19.1 * mirror, -146.4 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 19 * mirror, -147.8 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 19 * mirror, -147.8 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 19 * mirror, -149.1 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 19 * mirror, -149.1 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 19 * mirror, -150.4 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 19 * mirror, -150.4 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 19 * mirror, -151.7 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 19 * mirror, -151.7 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 106.6 * mirror, 143.2 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 106.6 * mirror, 143.2 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 122.7 * mirror, 137.6 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 122.7 * mirror, 137.6 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 95.8 * mirror, 149.5 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 95.8 * mirror, 149.5 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 111.6 * mirror, 171.7 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, 111.6 * mirror, 171.7 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, 129.9 * mirror, 153.8 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 129.9 * mirror, 153.8 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 122.5 * mirror, 159.2 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 122.5 * mirror, 159.2 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, 131.9 * mirror, 170.3 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 131.9 * mirror, 170.3 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 136.7 * mirror, 155.5 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 136.7 * mirror, 155.5 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, 192.7 * mirror, 198.3 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, 192.7 * mirror, 198.3 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, 382 * mirror, 326 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, 382 * mirror, 326 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 556.2 * mirror, 426.3 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 556.2 * mirror, 426.3 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, 693.6 * mirror, 525.6 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, 693.6 * mirror, 525.6 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 830.2 * mirror, 618.9 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 830.2 * mirror, 618.9 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 945.6 * mirror, 691.7 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 945.6 * mirror, 691.7 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 1043.3 * mirror, 753 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 1043.3 * mirror, 753 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 1121.3 * mirror, 806.6 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, 1121.3 * mirror, 806.6 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, 1183.9 * mirror, 845 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, 1183.9 * mirror, 845 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 1226.8 * mirror, 875.6 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 1226.8 * mirror, 875.6 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, 1254.2 * mirror, 890.9 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, 1254.2 * mirror, 890.9 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, 1261.9 * mirror, 898.6 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 1261.9 * mirror, 898.6 , 0 );

setScaleKey( spep_0 + 778 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 843 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 844 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 849 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 857 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 858 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 859 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 860 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 861 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 862 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 863 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 864 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 865 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 866 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 867 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 868 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 869 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 870 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 871 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 872 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 873 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 874 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 875 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 876 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 877 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 878 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 879 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 880 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 881 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 882 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 884 + OFFSET_X, 1, 4.09, 4.09 );

setRotateKey( spep_0 + 778 + OFFSET_X, 1, -12 * mirror );
setRotateKey( spep_0 + 781 + OFFSET_X, 1, -12 * mirror );
setRotateKey( spep_0 + 782 + OFFSET_X, 1, -31 * mirror );
setRotateKey( spep_0 + 785 + OFFSET_X, 1, -31 * mirror );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, -132 * mirror );
setRotateKey( spep_0 + 787 + OFFSET_X, 1, -132 * mirror );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, -132.4 * mirror );
setRotateKey( spep_0 + 789 + OFFSET_X, 1, -132.4 * mirror );
setRotateKey( spep_0 + 790 + OFFSET_X, 1, -132.8 * mirror );
setRotateKey( spep_0 + 791 + OFFSET_X, 1, -132.8 * mirror );
setRotateKey( spep_0 + 792 + OFFSET_X, 1, -133.2 * mirror );
setRotateKey( spep_0 + 793 + OFFSET_X, 1, -133.2 * mirror );
setRotateKey( spep_0 + 794 + OFFSET_X, 1, -133.6 * mirror );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, -133.6 * mirror );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, -133.9 * mirror );
setRotateKey( spep_0 + 797 + OFFSET_X, 1, -133.9 * mirror );
setRotateKey( spep_0 + 798 + OFFSET_X, 1, -134.3 * mirror );
setRotateKey( spep_0 + 799 + OFFSET_X, 1, -134.3 * mirror );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, -134.7 * mirror );
setRotateKey( spep_0 + 801 + OFFSET_X, 1, -134.7 * mirror );
setRotateKey( spep_0 + 802 + OFFSET_X, 1, -135.1 * mirror );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, -135.1 * mirror );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, -135.5 * mirror );
setRotateKey( spep_0 + 805 + OFFSET_X, 1, -135.5 * mirror );
setRotateKey( spep_0 + 806 + OFFSET_X, 1, -135.9 * mirror );
setRotateKey( spep_0 + 807 + OFFSET_X, 1, -135.9 * mirror );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, -136.3 * mirror );
setRotateKey( spep_0 + 809 + OFFSET_X, 1, -136.3 * mirror );
setRotateKey( spep_0 + 810 + OFFSET_X, 1, -136.7 * mirror );
setRotateKey( spep_0 + 811 + OFFSET_X, 1, -136.7 * mirror );
setRotateKey( spep_0 + 812 + OFFSET_X, 1, -137.1 * mirror );
setRotateKey( spep_0 + 813 + OFFSET_X, 1, -137.1 * mirror );
setRotateKey( spep_0 + 814 + OFFSET_X, 1, -137.5 * mirror );
setRotateKey( spep_0 + 815 + OFFSET_X, 1, -137.5 * mirror );
setRotateKey( spep_0 + 816 + OFFSET_X, 1, -137.8 * mirror );
setRotateKey( spep_0 + 817 + OFFSET_X, 1, -137.8 * mirror );
setRotateKey( spep_0 + 818 + OFFSET_X, 1, -138.2 * mirror );
setRotateKey( spep_0 + 819 + OFFSET_X, 1, -138.2 * mirror );
setRotateKey( spep_0 + 820 + OFFSET_X, 1, -138.6 * mirror );
setRotateKey( spep_0 + 821 + OFFSET_X, 1, -138.6 * mirror );
setRotateKey( spep_0 + 822 + OFFSET_X, 1, -139 * mirror );
setRotateKey( spep_0 + 823 + OFFSET_X, 1, -139 * mirror );
setRotateKey( spep_0 + 824 + OFFSET_X, 1, -139.4 * mirror );
setRotateKey( spep_0 + 825 + OFFSET_X, 1, -139.4 * mirror );
setRotateKey( spep_0 + 826 + OFFSET_X, 1, -139.8 * mirror );
setRotateKey( spep_0 + 827 + OFFSET_X, 1, -139.8 * mirror );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, -140.2 * mirror );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, -140.2 * mirror );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, -140.6 * mirror );
setRotateKey( spep_0 + 831 + OFFSET_X, 1, -140.6 * mirror );
setRotateKey( spep_0 + 832 + OFFSET_X, 1, -141 * mirror );
setRotateKey( spep_0 + 833 + OFFSET_X, 1, -141 * mirror );
setRotateKey( spep_0 + 834 + OFFSET_X, 1, -141.4 * mirror );
setRotateKey( spep_0 + 835 + OFFSET_X, 1, -141.4 * mirror );
setRotateKey( spep_0 + 836 + OFFSET_X, 1, -141.7 * mirror );
setRotateKey( spep_0 + 837 + OFFSET_X, 1, -141.7 * mirror );
setRotateKey( spep_0 + 838 + OFFSET_X, 1, -142.1 * mirror );
setRotateKey( spep_0 + 839 + OFFSET_X, 1, -142.1 * mirror );
setRotateKey( spep_0 + 840 + OFFSET_X, 1, -142.5 * mirror );
setRotateKey( spep_0 + 841 + OFFSET_X, 1, -142.5 * mirror );
setRotateKey( spep_0 + 842 + OFFSET_X, 1, -142.9 * mirror );
setRotateKey( spep_0 + 843 + OFFSET_X, 1, -142.9 * mirror );
setRotateKey( spep_0 + 844 + OFFSET_X, 1, -35 * mirror );
setRotateKey( spep_0 + 847 + OFFSET_X, 1, -35 * mirror );
setRotateKey( spep_0 + 848 + OFFSET_X, 1, -34.9 * mirror );
setRotateKey( spep_0 + 855 + OFFSET_X, 1, -34.9 * mirror );
setRotateKey( spep_0 + 856 + OFFSET_X, 1, -34.8 * mirror );
setRotateKey( spep_0 + 859 + OFFSET_X, 1, -34.8 * mirror );
setRotateKey( spep_0 + 860 + OFFSET_X, 1, -32.9 * mirror );
setRotateKey( spep_0 + 861 + OFFSET_X, 1, -32.9 * mirror );
setRotateKey( spep_0 + 862 + OFFSET_X, 1, -29.2 * mirror );
setRotateKey( spep_0 + 863 + OFFSET_X, 1, -29.2 * mirror );
setRotateKey( spep_0 + 864 + OFFSET_X, 1, -25.9 * mirror );
setRotateKey( spep_0 + 865 + OFFSET_X, 1, -25.9 * mirror );
setRotateKey( spep_0 + 866 + OFFSET_X, 1, -22.9 * mirror );
setRotateKey( spep_0 + 867 + OFFSET_X, 1, -22.9 * mirror );
setRotateKey( spep_0 + 868 + OFFSET_X, 1, -20.3 * mirror );
setRotateKey( spep_0 + 869 + OFFSET_X, 1, -20.3 * mirror );
setRotateKey( spep_0 + 870 + OFFSET_X, 1, -18.1 * mirror );
setRotateKey( spep_0 + 871 + OFFSET_X, 1, -18.1 * mirror );
setRotateKey( spep_0 + 872 + OFFSET_X, 1, -16.2 * mirror );
setRotateKey( spep_0 + 873 + OFFSET_X, 1, -16.2 * mirror );
setRotateKey( spep_0 + 874 + OFFSET_X, 1, -14.6 * mirror );
setRotateKey( spep_0 + 875 + OFFSET_X, 1, -14.6 * mirror );
setRotateKey( spep_0 + 876 + OFFSET_X, 1, -13.4 * mirror );
setRotateKey( spep_0 + 877 + OFFSET_X, 1, -13.4 * mirror );
setRotateKey( spep_0 + 878 + OFFSET_X, 1, -12.5 * mirror );
setRotateKey( spep_0 + 879 + OFFSET_X, 1, -12.5 * mirror );
setRotateKey( spep_0 + 880 + OFFSET_X, 1, -12 * mirror );
setRotateKey( spep_0 + 881 + OFFSET_X, 1, -12 * mirror );
setRotateKey( spep_0 + 882 + OFFSET_X, 1, -11.8 * mirror );
setRotateKey( spep_0 + 884 + OFFSET_X, 1, -11.8 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 413, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--覗き出す
SE002 = playSeVer2( spep_0 + 30, 1108, "", 0, 1, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE002, 285 );
setStartTimeMs( SE002,  17 );
SE003 = playSeVer2( spep_0 + 31, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 31, SE003, 136 );
SE004 = playSeVer2( spep_0 + 47, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 47, SE004, 135 );
SE005 = playSeVer2( spep_0 + 47, 37, "",spep_0 + 78, 0, 13, -1);
setSeVolumeByWorkId( spep_0 + 47, SE005, 67 );

--骨ならす
SE007 = playSeVer2( spep_0 + 162, 1414, "",spep_0 + 185, 0, 7, -1);
setSeVolumeByWorkId( spep_0 + 162, SE007, 80 );
setBandpassFilter  ( spep_0 + 162, SE007, 400, 24000 );
SE008 = playSeVer2( spep_0 + 208, 1414, "",spep_0 + 228, 0, 5, -1);
setBandpassFilter  ( spep_0 + 208, SE008, 400, 24000 );
setSeVolumeByWorkId( spep_0 + 208, SE008, 80 );

--歩き出す
SE009 = playSeVer2( spep_0 + 231, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 231, SE009, 186 );
SE010 = playSeVer2( spep_0 + 231, 1106, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 277, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 277, SE011, 214 );
SE012 = playSeVer2( spep_0 + 277, 1106, "", 0, 0, 0, -1);

--殴りかかる
SE013 = playSeVer2( spep_0 + 328, 1004, "", 0, 0, 0, -1);

--瞬間移動
SE014 = playSeVer2( spep_0 + 337, 43, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 337, 1109, "", 0, 0, 0, -1);

--返り討ち
SE016 = playSeVer2( spep_0 + 362, 63, "",spep_0 + 407, 0, 16, -1);
SE017 = playSeVer2( spep_0 + 386, 1180, "", 0, 0, 0, -1);

--ピッコロ気づく
SE018 = playSeVer2( spep_0 + 449, 48, "", 0, 0, 0, -1);

--物陰から出る
SE019 = playSeVer2( spep_0 + 533, 1189, "", 0, 0, 0, -1);

--走ってくる
SE020 = playSeVer2( spep_0 + 564, 1108, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 567, 1106, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 575, 1108, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 586, 1108, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 589, 1107, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 597, 1108, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 597, 1108, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 599, 1106, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 620; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
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

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--飛びかかる
SE028 = playSeVer2( spep_0 + 612, 1117, "",spep_0 + 649, 0, 10, -1);
SE029 = playSeVer2( spep_0 + 612, 1182, "",spep_0 + 652, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 612, SE029, 77 );

--振りかぶる
SE031 = playSeVer2( spep_0 + 719, 1278, "",spep_0 + 798, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 719, SE031, 37 );
SE032 = playSeVer2( spep_0 + 727, 1116, "",spep_0 + 791, 0, 29, -1);

--殴る
SE033 = playSeVer2( spep_0 + 761, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 761, SE033, 170 );
SE034 = playSeVer2( spep_0 + 772, 1110, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 772, 1153, "", 0, 0, 0, -1);

--蹴り飛ばす
SE036 = playSeVer2( spep_0 + 838, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 838, SE036, 67 );
SE037 = playSeVer2( spep_0 + 838, 1120, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_0 + MAX_FRAME_0;  --886f


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_02 , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッの背景(ef_002)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム 108f
