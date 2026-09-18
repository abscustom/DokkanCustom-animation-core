--4032930:LR_超サイヤ人ゴッドSSべジータ(進化)+孫悟空(身勝手の極意"兆")_超必殺技：ファイナルインパクト
--sp_effect_a3_00124
--sp2997

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164436; --前半 ef_001
SP_02  = 164437; --後半 ef_002
SP_03  = 164438; --KO ef_003

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

audio_adjust = 14;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

setupMovie(0 , SP_01, 0, 1);

spep_0 = 0;

-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 1042;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前半(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 222 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 222 + OFFSET_X, 1, 2 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 222 + OFFSET_X, 1, -1195.8, -290.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -1195.8, -290.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -1041.5, -328.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -1041.5, -328.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -885.4, -364.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -885.4, -364.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -838.1, -346.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -838.1, -346.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -789.3, -313.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -789.3, -313.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -736.1, -306.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -736.1, -306.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -653.6, -286.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -653.6, -286.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -597.1, -296.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -597.1, -296.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -556.2, -296.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -556.2, -296.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -512.9, -283.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -512.9, -283.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -2383.5, 302.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -2383.5, 302.2 , 0 );

setScaleKey( spep_0 + 222 + OFFSET_X, 1, 41.93, 41.93 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 41.93, 41.93 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 39.94, 39.94 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 39.94, 39.94 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 37.95, 37.95 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 37.95, 37.95 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 36.31, 36.31 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 36.31, 36.31 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 34.14, 34.14 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 34.14, 34.14 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 31.67, 31.67 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 31.67, 31.67 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 26.92, 26.92 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 26.92, 26.92 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 24.1, 24.1 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 24.1, 24.1 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 21.66, 21.66 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 21.66, 21.66 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 19.66, 19.66 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 19.66, 19.66 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 15.39, 15.39 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 15.39, 15.39 );

setRotateKey( spep_0 + 222 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 352 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 360 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 352 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 352 + OFFSET_X, 1, 43, -143 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 43, -143 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 37.9, -144 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 37.9, -144 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -9.5, -107.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -9.5, -107.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -146.3, -9.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -146.3, -9.3 , 0 );

setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.42, 0.42 );

setRotateKey( spep_0 + 352 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -12 );

--敵の動き3
setDisp( spep_0 + 480 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 558 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 480 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 548 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 480 + OFFSET_X, 1, -182.8, -40 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -182.8, -40 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -110.8, -38 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -110.8, -38 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -150.8, -28 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -150.8, -28 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -128.8, -52 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -128.8, -52 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -155.8, -44 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -155.8, -44 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -116.8, -41 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -116.8, -41 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -142.8, -38 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -142.8, -38 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -124.8, -37 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -124.8, -37 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -136.8, -38 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -136.8, -38 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -132.8, -40 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -132.8, -40 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -163.7, -35.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -163.7, -35.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -173.8, -25 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -173.8, -25 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -202.8, -30 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -202.8, -30 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -142.8, -30 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -142.8, -30 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -152.8, -20 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -152.8, -20 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -122.8, -20 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -122.8, -20 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -182.8, -20 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -182.8, -20 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -142.8, -30 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -142.8, -30 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -112.8, -60 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -112.8, -60 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -202.8, -45 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -202.8, -45 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -122.8, -25 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -122.8, -25 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -110.8, -55 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -110.8, -55 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -176.8, -50 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -176.8, -50 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -196.8, -34 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -196.8, -34 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -155.8, -24 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -155.8, -24 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -178.8, -35 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -178.8, -35 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -148.8, -25 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -148.8, -25 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -128.8, -35 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -128.8, -35 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -138.8, -45 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -138.8, -45 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -128.8, -45 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -128.8, -45 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -132.8, -40 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -132.8, -40 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -203.2, 246.4 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -203.2, 246.4 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -173.2, 180.4 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -173.2, 180.4 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -222.8, 305.8 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, -222.8, 305.8 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -220.8, 241.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -220.8, 241.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -323, 546.3 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -323, 546.3 , 0 );

setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.78, 0.78 );

setRotateKey( spep_0 + 480 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 30.1 );

--敵の動き4
setDisp( spep_0 + 644 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 650 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 644 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 648 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 644 + OFFSET_X, 1, 23.9, 329 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 23.9, 329 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 24.9, 325 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 24.9, 325 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 102.7, 497.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 102.7, 497.2 , 0 );

setScaleKey( spep_0 + 644 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 2.54, 2.54 );

setRotateKey( spep_0 + 644 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 37 );

--敵の動き5
setDisp( spep_0 + 674 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 692 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 674 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 674 + OFFSET_X, 1, -810.3, -1005.9 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, -810.3, -1005.9 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, -638.4, -788.9 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, -638.4, -788.9 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -464.7, -566 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -464.7, -566 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, -291.3, -338.8 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -291.3, -338.8 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -129.7, -121.7 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -129.7, -121.7 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 19.9, 70.6 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 19.9, 70.6 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 136.6, 222.9 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 136.6, 222.9 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 212.1, 322.4 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 212.1, 322.4 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 240.8, 359.4 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 240.8, 359.4 , 0 );

setScaleKey( spep_0 + 674 + OFFSET_X, 1, 12.09, 12.09 );
setScaleKey( spep_0 + 675 + OFFSET_X, 1, 12.09, 12.09 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 10.26, 10.26 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 10.26, 10.26 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 685 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 686 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_0 + 674 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 692 + OFFSET_X, 1, 12.8 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 288, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--指さす
SE003 = playSeVer2( spep_0 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 158 );
--気ダメ
SE004 = playSeVer2( spep_0 + 112, 1035, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 112, 1503, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 112, 1504, "", 0, 0, 0, -1);
--オーラ
SE007 = playSeVer2( spep_0 + 134, 1474, "",spep_0 + 504, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 134, SE007, 320 );
SE008 = playSeVer2( spep_0 + 134, 1176, "",spep_0 + 502, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 134, SE008, 63 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 212; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--向かってくる
SE009 = playSeVer2( spep_0 + 212, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 216, 1117, "", 0, 0, 0, -1);

--殴る
SE011 = playSeVer2( spep_0 + 242, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 242, 1359, "", 0, 0, 0, -1);

--追いかける
SE013 = playSeVer2( spep_0 + 266, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE013, 45 );
SE014 = playSeVer2( spep_0 + 302, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 318 + audio_adjust, 1116, "",spep_0 + 364 + audio_adjust, 0, 14, -1);
--追い討ち
SE016 = playSeVer2( spep_0 + 340 + audio_adjust, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 340 + audio_adjust, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 346 + audio_adjust, 1026, "", 0, 0, 0, -1);
--向かっていく
SE019 = playSeVer2( spep_0 + 390 + audio_adjust, 63, "",spep_0 + 486 + audio_adjust, 0, 38, -1);
SE020 = playSeVer2( spep_0 + 402 + audio_adjust, 1508, "", 0, 0, 0, -1);
--ラッシュ
SE021 = playSeVer2( spep_0 + 464 + audio_adjust, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 464 + audio_adjust, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 486 + audio_adjust, 1414, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 486 + audio_adjust, 1425, "",spep_0 + 542 + audio_adjust, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 486 + audio_adjust, SE024, 80 );
SE025 = playSeVer2( spep_0 + 502 + audio_adjust, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 518 + audio_adjust, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518 + audio_adjust, SE026, 79 );
SE027 = playSeVer2( spep_0 + 532 + audio_adjust, 1187, "", 0, 0, 0, -1);
--土煙
SE028 = playSeVer2( spep_0 + 552 + audio_adjust, 1188, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_0 + 552 + audio_adjust, SE028, 63 );
setStartTimeMs( SE028, 67 );
--オーラ
SE029 = playSeVer2( spep_0 + 570 + audio_adjust, 1474, "",spep_0 + 936 + audio_adjust, 52, 22, -1);
setSeVolumeByWorkId( spep_0 + 570 + audio_adjust, SE029, 119 );
SE030 = playSeVer2( spep_0 + 570 + audio_adjust, 1176, "",spep_0 + 938 + audio_adjust, 52, 24, -1);
setSeVolumeByWorkId( spep_0 + 570 + audio_adjust, SE030, 63 );
--蹴りとばす
SE031 = playSeVer2( spep_0 + 618 + audio_adjust, 1004, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 632 + audio_adjust, 1359, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 632 + audio_adjust, 1120, "", 0, 0, 0, -1);
--敵飛んでいく
SE034 = playSeVer2( spep_0 + 660 + audio_adjust, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 660 + audio_adjust, 1121, "",spep_0 + 770 + audio_adjust, 0, 62, -1);
--構える
SE036 = playSeVer2( spep_0 + 692 + audio_adjust, 1233, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 734 + audio_adjust, 1189, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 742 + audio_adjust, 1006, "", 0, 0, 0, -1);
--追いかける
SE039 = playSeVer2( spep_0 + 776 + audio_adjust, 1182, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 784 + audio_adjust, 1277, "",spep_0 + 800 + audio_adjust, 0, 6, -1);
SE041 = playSeVer2( spep_0 + 784 + audio_adjust, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784 + audio_adjust, SE041, 52 );
SE042 = playSeVer2( spep_0 + 794 + audio_adjust, 1277, "",spep_0 + 830 + audio_adjust, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 794 + audio_adjust, SE042, 123 );
setPitch( spep_0 + 794 + audio_adjust, SE042, 400 );
setTimeStretch( SE042, 1.27, 30, 4 );
SE043 = playSeVer2( spep_0 + 802 + audio_adjust, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802 + audio_adjust, SE043, 40 );
SE044 = playSeVer2( spep_0 + 806 + audio_adjust, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806 + audio_adjust, SE044, 172 );
setPitch( spep_0 + 806 + audio_adjust, SE044, -600 );
setTimeStretch( SE044, 0.6, 30, 4 );
--振りかぶる
SE045 = playSeVer2( spep_0 + 852 + audio_adjust, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 852 + audio_adjust, SE045, 80 );
SE046 = playSeVer2( spep_0 + 852 + audio_adjust, 1117, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 886 + audio_adjust, 1116, "",spep_0 + 926 + audio_adjust, 0, 20, -1);
--叩きつける
SE048 = playSeVer2( spep_0 + 914 + audio_adjust, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 914 + audio_adjust, SE048, 174 );
SE049 = playSeVer2( spep_0 + 920 + audio_adjust, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 920 + audio_adjust, SE049, 120 );
SE050 = playSeVer2( spep_0 + 924 + audio_adjust, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 924 + audio_adjust, SE050, 120 );
--光走る
SE051 = playSeVer2( spep_0 + 950 + audio_adjust, 1179, "",spep_0 + 1046 + audio_adjust, 0, 12, -1);
--地面つきささる
SE052 = playSeVer2( spep_0 + 986 + audio_adjust, 1043, "",spep_0 + 1048 + audio_adjust, 0, 22, -1);
SE053 = playSeVer2( spep_0 + 986 + audio_adjust, 1159, "",spep_0 + 1048 + audio_adjust, 0, 16, -1);
SE054 = playSeVer2( spep_0 + 992 + audio_adjust, 1491, "",spep_0 + 1046 + audio_adjust, 0, 12, -1);
--カードカットイン
--SE055 = playSeVer2( spep_0 + 1028 + audio_adjust, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 1042

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--気弾溜め
SE056 = playSeVer2( spep_1 + 84 + audio_adjust, 1341, "",spep_2 + 78 + audio_adjust, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 84 + audio_adjust, SE056, 158 );
SE057 = playSeVer2( spep_1 + 84 + audio_adjust, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84 + audio_adjust, SE057, 146 );
SE058 = playSeVer2( spep_1 + 84 + audio_adjust, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84 + audio_adjust, SE058, 150 );
SE059 = playSeVer2( spep_1 + 92 + audio_adjust, 1507, "", 0, 0, 0, -1);

-------------------------------------------------
-- 後半
-------------------------------------------------
MAX_FRAME_2 = 176;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 後半(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 80 + OFFSET_X, 1, 1);
setDisp( spep_2 + 104 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 80 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, -8.1, -7.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -8.1, -7.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -8, -7.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -8, -7.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -7.8, -8.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -7.8, -8.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -7.3, -8.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -7.3, -8.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -6.6, -9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -6.6, -9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -5.5, -9.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -5.5, -9.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -4.7, -9.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -4.7, -9.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -3.4, -7.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -3.4, -7.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -2.1, -5.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -2.1, -5.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -1.4, -3.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -1.4, -3.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -0.9, -3.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -0.9, -3.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -0.9, -3.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -0.9, -3.3 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 36 );

setBlendColor( spep_2 + 80 + OFFSET_X, 1, 6, 0.862, 0.337, 0, 0.2);
setBlendColor( spep_2 + 104 + OFFSET_X, 1, 6, 0.862, 0.337, 0, 0.2);
setBlendColor( spep_2 + 105 + OFFSET_X, 1, 6, 0, 0, 0, 0);

-- ** 音 ** --
--腕前にだす
SE060 = playSeVer2( spep_2 + 36 + audio_adjust, 1004, "", 0, 0, 0, -1);
--気弾発射
SE061 = playSeVer2( spep_2 + 50 + audio_adjust, 1156, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 50 + audio_adjust, 1401, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 50 + audio_adjust, 1177, "",spep_2 + 150 + audio_adjust, 0, 36, -1);
--爆発
SE064 = playSeVer2( spep_2 + 96 + audio_adjust, 1258, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 104 + audio_adjust, 1423, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 104 + audio_adjust, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104 + audio_adjust, SE066, 158 );
SE067 = playSeVer2( spep_2 + 104 + audio_adjust, 1159, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 118 + audio_adjust, 1067, "", 0, 0, 0, -1);

-------------------------------------------------
-- KO
-------------------------------------------------
spep_3 = spep_2 + MAX_FRAME_2;

KO = entryEffectLife( spep_3 + 0, SP_03, 98, 0x100, -1, 0, 0, 0); -- KO ef_003
setEffMoveKey( spep_3 + 0, KO, 0, 0 , 0);
setEffMoveKey( spep_3 + 98, KO, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, KO, 1.0, 1.0);
setEffScaleKey( spep_3 + 98, KO, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, KO, 0);
setEffRotateKey( spep_3 + 98, KO, 0);
setEffAlphaKey( spep_3 + 0, KO, 255);
setEffAlphaKey( spep_3 + 98, KO, 255);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 116); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 + 80); -- 274
hideKoScreen();
fadeKoLabel(1,0.5);

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

setupMovie(0 , SP_01, 0, 1);

spep_0 = 0;

-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 1042;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前半(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- -- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- --顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1
setDisp( spep_0 + 222 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 244 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 222 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 222 + OFFSET_X, 1, 1195.8, -290.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 1195.8, -290.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 1041.5, -328.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 1041.5, -328.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 885.4, -364.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 885.4, -364.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 838.1, -346.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 838.1, -346.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 789.3, -313.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 789.3, -313.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 736.1, -306.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 736.1, -306.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 653.6, -286.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 653.6, -286.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 597.1, -296.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 597.1, -296.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 556.2, -296.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 556.2, -296.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 512.9, -283.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 512.9, -283.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 2383.5, 302.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 2383.5, 302.2 , 0 );

setScaleKey( spep_0 + 222 + OFFSET_X, 1, 41.93, 41.93 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 41.93, 41.93 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 39.94, 39.94 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 39.94, 39.94 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 37.95, 37.95 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 37.95, 37.95 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 36.31, 36.31 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 36.31, 36.31 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 34.14, 34.14 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 34.14, 34.14 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 31.67, 31.67 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 31.67, 31.67 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 26.92, 26.92 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 26.92, 26.92 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 24.1, 24.1 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 24.1, 24.1 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 21.66, 21.66 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 21.66, 21.66 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 19.66, 19.66 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 19.66, 19.66 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 15.39, 15.39 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 15.39, 15.39 );

setRotateKey( spep_0 + 222 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 352 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 360 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 352 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 352 + OFFSET_X, 1, -43, -143 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -43, -143 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -37.9, -144 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -37.9, -144 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 9.5, -107.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 9.5, -107.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 146.3, -9.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 146.3, -9.3 , 0 );

setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.42, 0.42 );

setRotateKey( spep_0 + 352 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 12 );

--敵の動き3
setDisp( spep_0 + 480 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 558 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 480 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 548 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 480 + OFFSET_X, 1, 182.8, -40 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 182.8, -40 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 110.8, -38 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 110.8, -38 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 150.8, -28 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 150.8, -28 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 128.8, -52 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 128.8, -52 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 155.8, -44 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 155.8, -44 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 116.8, -41 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 116.8, -41 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 142.8, -38 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 142.8, -38 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 124.8, -37 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 124.8, -37 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 136.8, -38 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 136.8, -38 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 132.8, -40 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 132.8, -40 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 163.7, -35.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 163.7, -35.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 173.8, -25 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 173.8, -25 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 202.8, -30 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 202.8, -30 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 142.8, -30 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 142.8, -30 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 152.8, -20 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 152.8, -20 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 122.8, -20 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 122.8, -20 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 182.8, -20 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 182.8, -20 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 142.8, -30 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 142.8, -30 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 112.8, -60 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 112.8, -60 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 202.8, -45 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 202.8, -45 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 122.8, -25 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 122.8, -25 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 110.8, -55 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 110.8, -55 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 176.8, -50 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 176.8, -50 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 196.8, -34 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 196.8, -34 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 155.8, -24 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 155.8, -24 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 178.8, -35 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 178.8, -35 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 148.8, -25 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 148.8, -25 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 128.8, -35 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 128.8, -35 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 138.8, -45 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 138.8, -45 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 128.8, -45 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 128.8, -45 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 132.8, -40 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 132.8, -40 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 203.2, 246.4 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 203.2, 246.4 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 173.2, 180.4 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 173.2, 180.4 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 222.8, 305.8 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 222.8, 305.8 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 220.8, 241.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 220.8, 241.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 323, 546.3 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 323, 546.3 , 0 );

setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.78, 0.78 );

setRotateKey( spep_0 + 480 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, -30.1 );

--敵の動き4
setDisp( spep_0 + 644 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 650 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 644 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 648 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 644 + OFFSET_X, 1, -23.9, 329 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -23.9, 329 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -24.9, 325 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -24.9, 325 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -102.7, 497.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -102.7, 497.2 , 0 );

setScaleKey( spep_0 + 644 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 2.54, 2.54 );

setRotateKey( spep_0 + 644 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, -37 );

--敵の動き5
setDisp( spep_0 + 674 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 692 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 674 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 674 + OFFSET_X, 1, 810.3, -1005.9 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 810.3, -1005.9 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 638.4, -788.9 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 638.4, -788.9 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 464.7, -566 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 464.7, -566 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 291.3, -338.8 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 291.3, -338.8 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 129.7, -121.7 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 129.7, -121.7 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -19.9, 70.6 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -19.9, 70.6 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -136.6, 222.9 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -136.6, 222.9 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -212.1, 322.4 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -212.1, 322.4 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -240.8, 359.4 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -240.8, 359.4 , 0 );

setScaleKey( spep_0 + 674 + OFFSET_X, 1, 12.09, 12.09 );
setScaleKey( spep_0 + 675 + OFFSET_X, 1, 12.09, 12.09 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 10.26, 10.26 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 10.26, 10.26 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 685 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 686 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_0 + 674 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 692 + OFFSET_X, 1, -12.8 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 288, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
--指さす
SE003 = playSeVer2( spep_0 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 158 );
--気ダメ
SE004 = playSeVer2( spep_0 + 112, 1035, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 112, 1503, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 112, 1504, "", 0, 0, 0, -1);
--オーラ
SE007 = playSeVer2( spep_0 + 134, 1474, "",spep_0 + 504, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 134, SE007, 320 );
SE008 = playSeVer2( spep_0 + 134, 1176, "",spep_0 + 502, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 134, SE008, 63 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 212; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--向かってくる
SE009 = playSeVer2( spep_0 + 212, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 216, 1117, "", 0, 0, 0, -1);

--殴る
SE011 = playSeVer2( spep_0 + 242, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 242, 1359, "", 0, 0, 0, -1);

--追いかける
SE013 = playSeVer2( spep_0 + 266, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE013, 45 );
SE014 = playSeVer2( spep_0 + 302, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 318 + audio_adjust, 1116, "",spep_0 + 364 + audio_adjust, 0, 14, -1);
--追い討ち
SE016 = playSeVer2( spep_0 + 340 + audio_adjust, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 340 + audio_adjust, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 346 + audio_adjust, 1026, "", 0, 0, 0, -1);
--向かっていく
SE019 = playSeVer2( spep_0 + 390 + audio_adjust, 63, "",spep_0 + 486 + audio_adjust, 0, 38, -1);
SE020 = playSeVer2( spep_0 + 402 + audio_adjust, 1508, "", 0, 0, 0, -1);
--ラッシュ
SE021 = playSeVer2( spep_0 + 464 + audio_adjust, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 464 + audio_adjust, 1359, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 486 + audio_adjust, 1414, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 486 + audio_adjust, 1425, "",spep_0 + 542 + audio_adjust, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 486 + audio_adjust, SE024, 80 );
SE025 = playSeVer2( spep_0 + 502 + audio_adjust, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 518 + audio_adjust, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518 + audio_adjust, SE026, 79 );
SE027 = playSeVer2( spep_0 + 532 + audio_adjust, 1187, "", 0, 0, 0, -1);
--土煙
SE028 = playSeVer2( spep_0 + 552 + audio_adjust, 1188, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_0 + 552 + audio_adjust, SE028, 63 );
setStartTimeMs( SE028, 67 );
--オーラ
SE029 = playSeVer2( spep_0 + 570 + audio_adjust, 1474, "",spep_0 + 936 + audio_adjust, 52, 22, -1);
setSeVolumeByWorkId( spep_0 + 570 + audio_adjust, SE029, 119 );
SE030 = playSeVer2( spep_0 + 570 + audio_adjust, 1176, "",spep_0 + 938 + audio_adjust, 52, 24, -1);
setSeVolumeByWorkId( spep_0 + 570 + audio_adjust, SE030, 63 );
--蹴りとばす
SE031 = playSeVer2( spep_0 + 618 + audio_adjust, 1004, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 632 + audio_adjust, 1359, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 632 + audio_adjust, 1120, "", 0, 0, 0, -1);
--敵飛んでいく
SE034 = playSeVer2( spep_0 + 660 + audio_adjust, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 660 + audio_adjust, 1121, "",spep_0 + 770 + audio_adjust, 0, 62, -1);
--構える
SE036 = playSeVer2( spep_0 + 692 + audio_adjust, 1233, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 734 + audio_adjust, 1189, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 742 + audio_adjust, 1006, "", 0, 0, 0, -1);
--追いかける
SE039 = playSeVer2( spep_0 + 776 + audio_adjust, 1182, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 784 + audio_adjust, 1277, "",spep_0 + 800 + audio_adjust, 0, 6, -1);
SE041 = playSeVer2( spep_0 + 784 + audio_adjust, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784 + audio_adjust, SE041, 52 );
SE042 = playSeVer2( spep_0 + 794 + audio_adjust, 1277, "",spep_0 + 830 + audio_adjust, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 794 + audio_adjust, SE042, 123 );
setPitch( spep_0 + 794 + audio_adjust, SE042, 400 );
setTimeStretch( SE042, 1.27, 30, 4 );
SE043 = playSeVer2( spep_0 + 802 + audio_adjust, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802 + audio_adjust, SE043, 40 );
SE044 = playSeVer2( spep_0 + 806 + audio_adjust, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806 + audio_adjust, SE044, 172 );
setPitch( spep_0 + 806 + audio_adjust, SE044, -600 );
setTimeStretch( SE044, 0.6, 30, 4 );
--振りかぶる
SE045 = playSeVer2( spep_0 + 852 + audio_adjust, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 852 + audio_adjust, SE045, 80 );
SE046 = playSeVer2( spep_0 + 852 + audio_adjust, 1117, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 886 + audio_adjust, 1116, "",spep_0 + 926 + audio_adjust, 0, 20, -1);
--叩きつける
SE048 = playSeVer2( spep_0 + 914 + audio_adjust, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 914 + audio_adjust, SE048, 174 );
SE049 = playSeVer2( spep_0 + 920 + audio_adjust, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 920 + audio_adjust, SE049, 120 );
SE050 = playSeVer2( spep_0 + 924 + audio_adjust, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 924 + audio_adjust, SE050, 120 );
--光走る
SE051 = playSeVer2( spep_0 + 950 + audio_adjust, 1179, "",spep_0 + 1046 + audio_adjust, 0, 12, -1);
--地面つきささる
SE052 = playSeVer2( spep_0 + 986 + audio_adjust, 1043, "",spep_0 + 1048 + audio_adjust, 0, 22, -1);
SE053 = playSeVer2( spep_0 + 986 + audio_adjust, 1159, "",spep_0 + 1048 + audio_adjust, 0, 16, -1);
SE054 = playSeVer2( spep_0 + 992 + audio_adjust, 1491, "",spep_0 + 1046 + audio_adjust, 0, 12, -1);
--カードカットイン
--SE055 = playSeVer2( spep_0 + 1028 + audio_adjust, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 1042

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--気弾溜め
SE056 = playSeVer2( spep_1 + 84 + audio_adjust, 1341, "",spep_2 + 78 + audio_adjust, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 84 + audio_adjust, SE056, 158 );
SE057 = playSeVer2( spep_1 + 84 + audio_adjust, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84 + audio_adjust, SE057, 146 );
SE058 = playSeVer2( spep_1 + 84 + audio_adjust, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84 + audio_adjust, SE058, 150 );
SE059 = playSeVer2( spep_1 + 92 + audio_adjust, 1507, "", 0, 0, 0, -1);

-------------------------------------------------
-- 後半
-------------------------------------------------
MAX_FRAME_2 = 176;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 後半(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 80 + OFFSET_X, 1, 1);
setDisp( spep_2 + 104 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 80 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, 8.1, -7.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 8.1, -7.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 8, -7.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 8, -7.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 7.8, -8.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 7.8, -8.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 7.3, -8.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 7.3, -8.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 6.6, -9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 6.6, -9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 5.5, -9.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 5.5, -9.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 4.7, -9.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 4.7, -9.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 3.4, -7.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 3.4, -7.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 2.1, -5.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 2.1, -5.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 1.4, -3.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 1.4, -3.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 0.9, -3.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 0.9, -3.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0.9, -3.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 0.9, -3.3 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -36 );

setBlendColor( spep_2 + 80 + OFFSET_X, 1, 6, 0.862, 0.337, 0, 0.2);
setBlendColor( spep_2 + 104 + OFFSET_X, 1, 6, 0.862, 0.337, 0, 0.2);
setBlendColor( spep_2 + 105 + OFFSET_X, 1, 6, 0, 0, 0, 0);

-- ** 音 ** --
--腕前にだす
SE060 = playSeVer2( spep_2 + 36 + audio_adjust, 1004, "", 0, 0, 0, -1);
--気弾発射
SE061 = playSeVer2( spep_2 + 50 + audio_adjust, 1156, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_2 + 50 + audio_adjust, 1401, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 50 + audio_adjust, 1177, "",spep_2 + 150 + audio_adjust, 0, 36, -1);
--爆発
SE064 = playSeVer2( spep_2 + 96 + audio_adjust, 1258, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 104 + audio_adjust, 1423, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 104 + audio_adjust, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104 + audio_adjust, SE066, 158 );
SE067 = playSeVer2( spep_2 + 104 + audio_adjust, 1159, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 118 + audio_adjust, 1067, "", 0, 0, 0, -1);

-------------------------------------------------
-- KO
-------------------------------------------------
spep_3 = spep_2 + MAX_FRAME_2;

KO = entryEffectLife( spep_3 + 0, SP_03, 98, 0x100, -1, 0, 0, 0); -- KO ef_003
setEffMoveKey( spep_3 + 0, KO, 0, 0 , 0);
setEffMoveKey( spep_3 + 98, KO, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, KO, -1.0, 1.0);
setEffScaleKey( spep_3 + 98, KO, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, KO, 0);
setEffRotateKey( spep_3 + 98, KO, 0);
setEffAlphaKey( spep_3 + 0, KO, 255);
setEffAlphaKey( spep_3 + 98, KO, 255);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 116); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 + 80); -- 274
hideKoScreen();
fadeKoLabel(1,0.5);

end