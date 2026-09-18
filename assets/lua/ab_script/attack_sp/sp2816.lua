--1030390:LR_超サイヤ人2孫悟飯(少年期)_超必殺技：超かめはめ波
--sp_effect_b4_00374
--sp2816

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163614;  -- 開幕～気合いためまで ef_001
SP_01b = 163615;  -- 開幕～気合いためまで ef_001b
SP_02 = 163617;  -- 気弾連射～フィニッシュまで ef_002
SP_02b = 163618;  -- 気弾連射～フィニッシュまでef_002b

--エフェクト(敵)
SP_01r = 163616;  -- 開幕～気合いためまで ef_001r
SP_02r = 163619;  -- 気弾連射～フィニッシュまで ef_002r


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～気合いためまで
-------------------------------------------------
MAX_FRAME_0 = 504;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～気合いためまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～気合いためまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 134;

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

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 78 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 207.6, 412.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 207.7, 412.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 207.7, 412.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 207.8, 413.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 207.8, 413.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 208, 413.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 208, 413.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 208.1, 413.5 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 208.1, 413.5 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 208.2, 413.7 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 208.2, 413.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 208.3, 413.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 208.3, 413.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 208.5, 414.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 208.5, 414.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 208.6, 414.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 208.6, 414.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 208.7, 414.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 208.7, 414.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 208.8, 414.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 208.8, 414.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 208.9, 414.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 208.9, 414.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 209, 415 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 209, 415 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 209.2, 415.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 209.2, 415.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 209.3, 415.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 209.3, 415.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 209.4, 415.5 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 209.4, 415.5 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 209.5, 415.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 209.5, 415.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 209.6, 415.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 209.6, 415.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 209.7, 416 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 209.7, 416 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 209.8, 416.2 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 209.8, 416.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 209.9, 416.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 209.9, 416.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 210, 416.5 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 210, 416.5 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 210, 416.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 210, 416.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 210.1, 416.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 210.1, 416.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 210.2, 416.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 210.2, 416.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 210.3, 417 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 210.3, 417 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 210.3, 417.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 210.3, 417.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 210.4, 417.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 210.4, 417.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 210.5, 417.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 210.5, 417.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 210.5, 417.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 210.5, 417.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 210.6, 417.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 210.6, 417.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 210.7, 417.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 210.7, 417.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 210.7, 417.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 210.7, 417.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 210.8, 417.8 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 210.8, 417.8 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 210.8, 417.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 210.8, 417.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 210.9, 417.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 210.9, 417.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 210.9, 418 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 210.9, 418 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 211, 418 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 211, 418 , 0 );

setScaleKey( spep_0 + 0, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 5+ OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 0.27, 0.27 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_0 + 404 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 508 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 404 + OFFSET_X, 1, 226.9, 516.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 226.9, 516.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 214.1, 506.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 214.1, 506.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 209.8, 516.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 209.8, 516.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 217.9, 508.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 217.9, 508.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 217.9, 510.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 217.9, 510.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 211.7, 511.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 211.7, 511.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 216.3, 504.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 216.3, 504.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 217.9, 507.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 217.9, 507.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 211.7, 503.6 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 211.7, 503.6 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 211.7, 505.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 211.7, 505.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 216.3, 504.7 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 216.3, 504.7 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 211.7, 503.6 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 211.7, 503.6 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 216.3, 499.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 216.3, 499.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 216.3, 501.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 216.3, 501.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 211.7, 502.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 211.7, 502.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 216.3, 496.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 216.3, 496.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 217.9, 498.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 217.9, 498.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 211.7, 494.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 211.7, 494.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 211.7, 498 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 211.7, 498 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 216.3, 497 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 216.3, 497 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 211.7, 491.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 211.7, 491.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 213.2, 493.4 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 213.2, 493.4 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 217.9, 489.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 217.9, 489.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 217.9, 491.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 217.9, 491.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 211.7, 490.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 211.7, 490.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 211.7, 490.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 211.7, 490.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 216.3, 483.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 216.3, 483.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 216.3, 487.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 216.3, 487.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 211.7, 487.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 211.7, 487.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 217.9, 482.1 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 217.9, 482.1 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 216.3, 485.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 216.3, 485.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 213.2, 483.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 213.2, 483.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 341.1, 863.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 341.1, 863.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 211.7, 478 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 211.7, 478 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 313.3, 784.2 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 313.3, 784.2 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 216.3, 479.1 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 216.3, 479.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 288.7, 702.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 288.7, 702.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 216.3, 478.6 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 216.3, 478.6 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 261, 624.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 261, 624.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 216.3, 470.3 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 216.3, 470.3 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 240.9, 549.4 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 240.9, 549.4 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 211.7, 472.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 211.7, 472.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 216.3, 468.8 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 216.3, 468.8 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 213.2, 470.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 213.2, 470.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 214.8, 468.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 214.8, 468.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 214.8, 468.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 214.8, 468.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 214.8, 467.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 214.8, 467.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 214.8, 462.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 214.8, 462.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 211.7, 465.7 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 211.7, 465.7 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 217.9, 463.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 217.9, 463.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 211.7, 463.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 211.7, 463.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 217.9, 458 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 217.9, 458 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 213.2, 463.2 , 0 );

setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_0 + 404 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE003 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );

--オーラ
SE004 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);

--拳握る
SE007 = playSeVer2( spep_0 + 86, 1344, "",spep_0 + 172, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 63 );

--オーラ
SE008 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 184, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE014 = playSeVer2( spep_0 + 198, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE014, 50 );

--オーラ
SE015 = playSeVer2( spep_0 + 208, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 232, 1036, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 256, 1036, "", 0, 0, 0, -1);

--顔こわばる
SE018 = playSeVer2( spep_0 + 262, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 270, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE019, 76 );

--オーラ
SE020 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);

--カメラ引く
SE022 = playSeVer2( spep_0 + 304, 1116, "",spep_0 + 348, 0, 26, -1);

--かめはめ波溜め
SE023 = playSeVer2( spep_0 + 356, 1210, "",spep_0 + 522, 24, 30, -1);
setStartTimeMs( SE023,  867 );
setTimeStretch( SE023, 0.77, 30, 4 );

--カメラ引く
SE024 = playSeVer2( spep_0 + 316, 1004, "", 0, 0, 0, -1);

--オーラ
SE025 = playSeVer2( spep_0 + 328, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE026 = playSeVer2( spep_0 + 332, 1147, "",spep_0 + 502, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 332, SE026, 50 );

--かめはめ波溜め
SE027 = playSeVer2( spep_0 + 346, 1209, "",spep_0 + 518, 0, 14, -1);
SE028 = playSeVer2( spep_0 + 346, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE028, 74 );

--オーラ
SE029 = playSeVer2( spep_0 + 352, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);

--パワー上がる
SE034 = playSeVer2( spep_0 + 456, 1427, "",spep_0 + 518, 6, 14, -1);
setStartTimeMs( SE034,  400 );

--オーラ
SE035 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);

--パワー上がる
SE036 = playSeVer2( spep_0 + 458, 1025, "",spep_0 + 520, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 458, SE036, 69 );

--オーラ
SE037 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--504F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE030 = playSeVer2( spep_1 + 92, 1210, "",spep_1 + 148, 2, 14, -1);
setSeVolumeByWorkId( spep_1 + 86, SE030, 200 );
setStartTimeMs( SE030,  4800 );
setTimeStretch( SE030, 0.77, 30, 4 );
SE039 = playSeVer2( spep_1 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE039, 63 );


-------------------------------------------------
-- 気弾連射～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 600;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾連射～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾連射～フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 202 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 370 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 202 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 302 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 202 + OFFSET_X, 1, 192.9, 61.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 192.9, 61.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 189.8, 63.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 189.8, 63.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 191.5, 60.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 191.5, 60.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 193.3, 58.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 193.3, 58.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 193.7, 60.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 193.7, 60.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 194.2, 60.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 194.2, 60.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 194.6, 62.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 194.6, 62.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 195.2, 63.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 195.2, 63.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 195.9, 63.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 195.9, 63.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 196.8, 63.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 196.8, 63.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 197.7, 64.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 197.7, 64.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 198.7, 65 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 198.7, 65 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 199.8, 65.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 199.8, 65.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 200.9, 66.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 200.9, 66.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 202.1, 66.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 202.1, 66.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 203.5, 67.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 203.5, 67.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 204.9, 68.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 204.9, 68.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 206.5, 69.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 206.5, 69.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 208.2, 70.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 208.2, 70.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 210, 71.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 210, 71.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 212, 72.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 212, 72.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 214, 73.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 214, 73.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 216.2, 74.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 216.2, 74.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 218.5, 75.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 218.5, 75.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 220.9, 77 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 220.9, 77 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 223.3, 78.3 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 223.3, 78.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 225.8, 79.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 225.8, 79.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 228.3, 81.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 228.3, 81.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 230.8, 82.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 230.8, 82.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 233.3, 83.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 233.3, 83.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 235.8, 85.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 235.8, 85.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 233.6, 91.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 233.6, 91.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 245.3, 80.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 245.3, 80.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 247.7, 93.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 247.7, 93.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 240.6, 92.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 240.6, 92.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 253, 96.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 253, 96.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 252.4, 94.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 252.4, 94.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 267.2, 109.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 267.2, 109.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 297.2, 118.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 297.2, 118.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 314.3, 130.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 314.3, 130.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 329.1, 140.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 329.1, 140.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 345, 149.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 345, 149.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 347.7, 150.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 347.7, 150.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 358.6, 158.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 358.6, 158.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 370.5, 165 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 370.5, 165 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 371.7, 163.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 371.7, 163.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 378.7, 166.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 378.7, 166.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 377.2, 168.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 377.2, 168.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 379.2, 172.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 379.2, 172.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 389.2, 175.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 389.2, 175.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -91.3, -63.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -91.3, -63.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -80.9, -61.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -80.9, -61.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -82.4, -56.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -82.4, -56.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -81.5, -54.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -81.5, -54.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -68.8, -49.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -68.8, -49.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -70.3, -52.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -70.3, -52.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -72, -44.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -72, -44.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -61.2, -52.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -61.2, -52.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -55.5, -42.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -55.5, -42.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -62.2, -40.5 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -62.2, -40.5 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -51.5, -45.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -51.5, -45.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -53.2, -33.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -53.2, -33.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -42.4, -33.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -42.4, -33.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -49.2, -31.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -49.2, -31.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -38.4, -36.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -38.4, -36.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -42.7, -26.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -42.7, -26.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -31.9, -29.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -31.9, -29.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -31.1, -24.7 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -31.1, -24.7 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -35.7, -18.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -35.7, -18.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -24.6, -28 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -24.6, -28 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -17.5, -14 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -17.5, -14 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -25.9, -11.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -25.9, -11.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -14.8, -17.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -14.8, -17.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -7.7, -7.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -7.7, -7.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -12.2, -8.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -12.2, -8.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -5.1, -6.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -5.1, -6.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -5.7, -4.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -5.7, -4.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 1.5, -1.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 1.5, -1.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 4.7, 0.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 4.7, 0.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 8, 2.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 8, 2.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 11.3, 5 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 11.3, 5 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 14.5, 7.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 14.5, 7.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 17.8, 9.6 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 17.8, 9.6 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 21, 11.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 21, 11.9 , 0 );

setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 2.55, 2.55 );

setRotateKey( spep_2 + 202 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -26.2 );

setBlendColor( spep_2 + 202 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 208 + OFFSET_X, 1, 3, 0, 0, 0, 1. );
setBlendColor( spep_2 + 210 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 1. );
setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 220 + OFFSET_X, 1, 3, 0, 0, 0, 1. );
setBlendColor( spep_2 + 222 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_2 + 226 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_2 + 286 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 292 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 294 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 370 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--発射前溜め
SE040 = playSeVer2( spep_2 + 4, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE040, 63 );
SE041 = playSeVer2( spep_2 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE041, 63 );

--かめはめ波発射
SE042 = playSeVer2( spep_2 + 28, 1022, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 28, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE043, 141 );
SE044 = playSeVer2( spep_2 + 28, 1284, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 28, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE045, 79 );

--飛んでいく
SE046 = playSeVer2( spep_2 + 124, 1211, "",spep_2 + 404, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 124, SE046, 186 );
SE047 = playSeVer2( spep_2 + 148, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE047, 65 );
SE048 = playSeVer2( spep_2 + 148, 1146, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 148, 1133, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 148, 1215, "",spep_2 + 454, 0, 94, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE042, 0);
stopSe( SP_dodge - 12, SE043, 0);
stopSe( SP_dodge - 12, SE044, 0);
stopSe( SP_dodge - 12, SE045, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE046, 0);
stopSe( SP_dodge - 12, SE047, 0);
stopSe( SP_dodge - 12, SE048, 0);
stopSe( SP_dodge - 12, SE049, 0);
stopSe( SP_dodge - 12, SE050, 0);
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

--飛んでいく２
SE051 = playSeVer2( spep_2 + 260, 1258, "", 0, 0, 0, -1);

--敵ヒット
SE052 = playSeVer2( spep_2 + 298, 1024, "",spep_2 + 442, 0, 70, -1);

--宇宙に飛んでいく
SE053 = playSeVer2( spep_2 + 360, 1114, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 360, 1296, "",spep_2 + 488, 0, 102, -1);

--環境音
SE055 = playSeVer2( spep_2 + 360, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 360, SE055, 25 );

--宇宙に飛んでいく
SE056 = playSeVer2( spep_2 + 360, 1175, "", spep_2 + 360 + 154, 0, 69, 0.6);
setSeVolumeByWorkId( spep_2 + 360, SE056, 53 );

--画面遷移
SE057 = playSeVer2( spep_2 + 470, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 470, SE057, 67 );

--オーラ
SE058 = playSeVer2( spep_2 + 470, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 470, SE058, 79 );

--イナヅマ
SE059 = playSeVer2( spep_2 + 470, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 470, SE059, 56 );

--オーラ
SE060 = playSeVer2( spep_2 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE060, 79 );
SE061 = playSeVer2( spep_2 + 518, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 518, SE061, 79 );
SE062 = playSeVer2( spep_2 + 542, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE062, 79 );
SE063 = playSeVer2( spep_2 + 566, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 566, SE063, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 482); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 600F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕～気合いためまで
-------------------------------------------------
MAX_FRAME_0 = 504;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕～気合いためまで(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～気合いためまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 134;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 78 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 207.6, 412.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 207.7, 412.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 207.7, 412.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 207.8, 413.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 207.8, 413.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 208, 413.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 208, 413.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 208.1, 413.5 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 208.1, 413.5 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 208.2, 413.7 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 208.2, 413.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 208.3, 413.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 208.3, 413.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 208.5, 414.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 208.5, 414.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 208.6, 414.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 208.6, 414.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 208.7, 414.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 208.7, 414.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 208.8, 414.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 208.8, 414.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 208.9, 414.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 208.9, 414.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 209, 415 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 209, 415 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 209.2, 415.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 209.2, 415.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 209.3, 415.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 209.3, 415.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 209.4, 415.5 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 209.4, 415.5 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 209.5, 415.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 209.5, 415.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 209.6, 415.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 209.6, 415.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 209.7, 416 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 209.7, 416 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 209.8, 416.2 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 209.8, 416.2 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 209.9, 416.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 209.9, 416.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 210, 416.5 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 210, 416.5 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 210, 416.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 210, 416.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 210.1, 416.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 210.1, 416.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 210.2, 416.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 210.2, 416.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 210.3, 417 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 210.3, 417 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 210.3, 417.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 210.3, 417.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 210.4, 417.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 210.4, 417.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 210.5, 417.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 210.5, 417.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 210.5, 417.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 210.5, 417.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 210.6, 417.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 210.6, 417.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 210.7, 417.6 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 210.7, 417.6 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 210.7, 417.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 210.7, 417.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 210.8, 417.8 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 210.8, 417.8 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 210.8, 417.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 210.8, 417.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 210.9, 417.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 210.9, 417.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 210.9, 418 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 210.9, 418 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 211, 418 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 211, 418 , 0 );

setScaleKey( spep_0 + 0, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 5+ OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 0.27, 0.27 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_0 + 404 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 508 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 404 + OFFSET_X, 1, 226.9, 516.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 226.9, 516.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 214.1, 506.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 214.1, 506.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 209.8, 516.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 209.8, 516.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 217.9, 508.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 217.9, 508.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 217.9, 510.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 217.9, 510.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 211.7, 511.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 211.7, 511.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 216.3, 504.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 216.3, 504.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 217.9, 507.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 217.9, 507.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 211.7, 503.6 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 211.7, 503.6 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 211.7, 505.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 211.7, 505.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 216.3, 504.7 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 216.3, 504.7 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 211.7, 503.6 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 211.7, 503.6 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 216.3, 499.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 216.3, 499.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 216.3, 501.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 216.3, 501.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 211.7, 502.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 211.7, 502.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 216.3, 496.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 216.3, 496.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 217.9, 498.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 217.9, 498.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 211.7, 494.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 211.7, 494.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 211.7, 498 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 211.7, 498 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 216.3, 497 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 216.3, 497 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 211.7, 491.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 211.7, 491.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 213.2, 493.4 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 213.2, 493.4 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 217.9, 489.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 217.9, 489.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 217.9, 491.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 217.9, 491.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 211.7, 490.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 211.7, 490.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 211.7, 490.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 211.7, 490.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 216.3, 483.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 216.3, 483.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 216.3, 487.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 216.3, 487.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 211.7, 487.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 211.7, 487.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 217.9, 482.1 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 217.9, 482.1 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 216.3, 485.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 216.3, 485.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 213.2, 483.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 213.2, 483.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 341.1, 863.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 341.1, 863.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 211.7, 478 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 211.7, 478 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 313.3, 784.2 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 313.3, 784.2 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 216.3, 479.1 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 216.3, 479.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 288.7, 702.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 288.7, 702.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 216.3, 478.6 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 216.3, 478.6 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 261, 624.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 261, 624.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 216.3, 470.3 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 216.3, 470.3 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 240.9, 549.4 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 240.9, 549.4 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 211.7, 472.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 211.7, 472.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 216.3, 468.8 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 216.3, 468.8 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 213.2, 470.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 213.2, 470.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 214.8, 468.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 214.8, 468.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 214.8, 468.8 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 214.8, 468.8 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 214.8, 467.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 214.8, 467.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 214.8, 462.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 214.8, 462.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 211.7, 465.7 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 211.7, 465.7 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 217.9, 463.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 217.9, 463.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 211.7, 463.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 211.7, 463.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 217.9, 458 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 217.9, 458 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 213.2, 463.2 , 0 );

setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_0 + 404 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE003 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );

--オーラ
SE004 = playSeVer2( spep_0 + 16, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 64, 1036, "", 0, 0, 0, -1);

--拳握る
SE007 = playSeVer2( spep_0 + 86, 1344, "",spep_0 + 172, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 63 );

--オーラ
SE008 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 112, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 136, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 160, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 184, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE014 = playSeVer2( spep_0 + 198, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE014, 50 );

--オーラ
SE015 = playSeVer2( spep_0 + 208, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 232, 1036, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 256, 1036, "", 0, 0, 0, -1);

--顔こわばる
SE018 = playSeVer2( spep_0 + 262, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 270, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE019, 76 );

--オーラ
SE020 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);

--カメラ引く
SE022 = playSeVer2( spep_0 + 304, 1116, "",spep_0 + 348, 0, 26, -1);

--かめはめ波溜め
SE023 = playSeVer2( spep_0 + 356, 1210, "",spep_0 + 522, 24, 30, -1);
setStartTimeMs( SE023,  867 );
setTimeStretch( SE023, 0.77, 30, 4 );

--カメラ引く
SE024 = playSeVer2( spep_0 + 316, 1004, "", 0, 0, 0, -1);

--オーラ
SE025 = playSeVer2( spep_0 + 328, 1036, "", 0, 0, 0, -1);

--イナヅマ
SE026 = playSeVer2( spep_0 + 332, 1147, "",spep_0 + 502, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 332, SE026, 50 );

--かめはめ波溜め
SE027 = playSeVer2( spep_0 + 346, 1209, "",spep_0 + 518, 0, 14, -1);
SE028 = playSeVer2( spep_0 + 346, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE028, 74 );

--オーラ
SE029 = playSeVer2( spep_0 + 352, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);

--パワー上がる
SE034 = playSeVer2( spep_0 + 456, 1427, "",spep_0 + 518, 6, 14, -1);
setStartTimeMs( SE034,  400 );

--オーラ
SE035 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);

--パワー上がる
SE036 = playSeVer2( spep_0 + 458, 1025, "",spep_0 + 520, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 458, SE036, 69 );

--オーラ
SE037 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--504F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE030 = playSeVer2( spep_1 + 92, 1210, "",spep_1 + 148, 2, 14, -1);
setSeVolumeByWorkId( spep_1 + 92, SE030, 83 );
setStartTimeMs( SE030,  4800 );
setTimeStretch( SE030, 0.77, 30, 4 );
SE039 = playSeVer2( spep_1 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE039, 63 );

-------------------------------------------------
-- 気弾連射～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 600;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気弾連射～フィニッシュまで(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾連射～フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 202 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 370 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 202 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 302 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 202 + OFFSET_X, 1, 192.9, 61.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 192.9, 61.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 189.8, 63.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 189.8, 63.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 191.5, 60.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 191.5, 60.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 193.3, 58.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 193.3, 58.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 193.7, 60.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 193.7, 60.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 194.2, 60.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 194.2, 60.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 194.6, 62.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 194.6, 62.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 195.2, 63.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 195.2, 63.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 195.9, 63.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 195.9, 63.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 196.8, 63.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 196.8, 63.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 197.7, 64.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 197.7, 64.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 198.7, 65 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 198.7, 65 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 199.8, 65.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 199.8, 65.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 200.9, 66.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 200.9, 66.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 202.1, 66.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 202.1, 66.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 203.5, 67.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 203.5, 67.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 204.9, 68.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 204.9, 68.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 206.5, 69.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 206.5, 69.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 208.2, 70.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 208.2, 70.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 210, 71.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 210, 71.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 212, 72.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 212, 72.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 214, 73.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 214, 73.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 216.2, 74.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 216.2, 74.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 218.5, 75.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 218.5, 75.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 220.9, 77 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 220.9, 77 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 223.3, 78.3 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 223.3, 78.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 225.8, 79.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 225.8, 79.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 228.3, 81.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 228.3, 81.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 230.8, 82.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 230.8, 82.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 233.3, 83.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 233.3, 83.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 235.8, 85.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 235.8, 85.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 233.6, 91.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 233.6, 91.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 245.3, 80.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 245.3, 80.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 247.7, 93.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 247.7, 93.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 240.6, 92.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 240.6, 92.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 253, 96.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 253, 96.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 252.4, 94.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 252.4, 94.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 267.2, 109.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 267.2, 109.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 297.2, 118.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 297.2, 118.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 314.3, 130.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 314.3, 130.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 329.1, 140.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 329.1, 140.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 345, 149.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 345, 149.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 347.7, 150.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 347.7, 150.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 358.6, 158.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 358.6, 158.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 370.5, 165 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 370.5, 165 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 371.7, 163.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 371.7, 163.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 378.7, 166.7 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 378.7, 166.7 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 377.2, 168.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 377.2, 168.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 379.2, 172.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 379.2, 172.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 389.2, 175.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 389.2, 175.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -91.3, -63.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -91.3, -63.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -80.9, -61.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -80.9, -61.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -82.4, -56.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -82.4, -56.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -81.5, -54.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -81.5, -54.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -68.8, -49.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -68.8, -49.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -70.3, -52.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -70.3, -52.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -72, -44.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -72, -44.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -61.2, -52.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -61.2, -52.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -55.5, -42.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -55.5, -42.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -62.2, -40.5 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -62.2, -40.5 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -51.5, -45.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -51.5, -45.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -53.2, -33.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -53.2, -33.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -42.4, -33.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -42.4, -33.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -49.2, -31.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -49.2, -31.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -38.4, -36.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -38.4, -36.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -42.7, -26.8 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -42.7, -26.8 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -31.9, -29.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -31.9, -29.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -31.1, -24.7 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -31.1, -24.7 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -35.7, -18.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -35.7, -18.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -24.6, -28 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -24.6, -28 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -17.5, -14 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -17.5, -14 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -25.9, -11.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -25.9, -11.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -14.8, -17.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -14.8, -17.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -7.7, -7.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -7.7, -7.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -12.2, -8.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -12.2, -8.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -5.1, -6.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -5.1, -6.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -5.7, -4.1 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -5.7, -4.1 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 1.5, -1.9 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 1.5, -1.9 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 4.7, 0.4 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 4.7, 0.4 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 8, 2.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 8, 2.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 11.3, 5 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 11.3, 5 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 14.5, 7.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 14.5, 7.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 17.8, 9.6 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 17.8, 9.6 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 21, 11.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 21, 11.9 , 0 );

setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 2.55, 2.55 );

setRotateKey( spep_2 + 202 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -26.2 );

setBlendColor( spep_2 + 202 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 208 + OFFSET_X, 1, 3, 0, 0, 0, 1. );
setBlendColor( spep_2 + 210 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 212 + OFFSET_X, 1, 3, 0, 0, 0, 1. );
setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 220 + OFFSET_X, 1, 3, 0, 0, 0, 1. );
setBlendColor( spep_2 + 222 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 0, 0, 0, 0.85 );
setBlendColor( spep_2 + 226 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_2 + 286 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 292 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 294 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 370 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--発射前溜め
SE040 = playSeVer2( spep_2 + 4, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE040, 63 );
SE041 = playSeVer2( spep_2 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE041, 63 );

--かめはめ波発射
SE042 = playSeVer2( spep_2 + 28, 1022, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 28, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE043, 141 );
SE044 = playSeVer2( spep_2 + 28, 1284, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 28, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE045, 79 );

--飛んでいく
SE046 = playSeVer2( spep_2 + 124, 1211, "",spep_2 + 404, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 124, SE046, 186 );
SE047 = playSeVer2( spep_2 + 148, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE047, 65 );
SE048 = playSeVer2( spep_2 + 148, 1146, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 148, 1133, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 148, 1215, "",spep_2 + 454, 0, 94, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE042, 0);
stopSe( SP_dodge - 12, SE043, 0);
stopSe( SP_dodge - 12, SE044, 0);
stopSe( SP_dodge - 12, SE045, 0);
stopSe( SP_dodge - 12, SE041, 0);
stopSe( SP_dodge - 12, SE046, 0);
stopSe( SP_dodge - 12, SE047, 0);
stopSe( SP_dodge - 12, SE048, 0);
stopSe( SP_dodge - 12, SE049, 0);
stopSe( SP_dodge - 12, SE050, 0);
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

--飛んでいく２
SE051 = playSeVer2( spep_2 + 260, 1258, "", 0, 0, 0, -1);

--敵ヒット
SE052 = playSeVer2( spep_2 + 298, 1024, "",spep_2 + 442, 0, 70, -1);

--宇宙に飛んでいく
SE053 = playSeVer2( spep_2 + 360, 1114, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 360, 1296, "",spep_2 + 488, 0, 102, -1);

--環境音
SE055 = playSeVer2( spep_2 + 360, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 360, SE055, 25 );

--宇宙に飛んでいく
SE056 = playSeVer2( spep_2 + 360, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 360, SE056, 53 );

--画面遷移
SE057 = playSeVer2( spep_2 + 470, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 470, SE057, 67 );

--オーラ
SE058 = playSeVer2( spep_2 + 470, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 470, SE058, 79 );

--イナヅマ
SE059 = playSeVer2( spep_2 + 470, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 470, SE059, 56 );

--オーラ
SE060 = playSeVer2( spep_2 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 494, SE060, 79 );
SE061 = playSeVer2( spep_2 + 518, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 518, SE061, 79 );
SE062 = playSeVer2( spep_2 + 542, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 542, SE062, 79 );
SE063 = playSeVer2( spep_2 + 566, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 566, SE063, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 482); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 600F


end
