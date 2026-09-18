--1029140:UR_亀仙人_ユニット必殺技１：師弟かめはめ波
--sp_effect_a1_00446
--sp2746

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(味方)
SP_01 = 163071 --冒頭〜格闘〜構え ef_001
SP_02 = 163073 --冒頭〜格闘〜構え ef_001b
SP_03 = 163075 --かめはめ波〜ラスト ef_002
SP_04 = 163077 --かめはめ波〜ラスト ef_002b

--エフェクト(てき)
SP_01r = 163072 --冒頭〜格闘〜構え ef_001r
SP_02r = 163074 --冒頭〜格闘〜構え ef_001br
SP_03r = 163076 --かめはめ波〜ラスト ef_002r
SP_04r = 163078 --かめはめ波〜ラスト ef_002br

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
 
ENABLE_AUTO_TIME_STRETCH(0.84);
 
OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭〜格闘〜構え
-------------------------------------------------
MAX_FRAME_0 = 600;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭〜格闘〜構え ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 冒頭〜格闘〜構え(背景) ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 52;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵の動き ** --
--敵の動き1
setDisp( spep_0 + 328 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 376 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 328 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 350 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 328 + OFFSET_X, 1, 362.3, -63.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 362.3, -63.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 467.6, -32.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 467.6, -32.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 478.2, -26 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 478.2, -26 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 480.6, -17.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 480.6, -17.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 433.6, -26.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 433.6, -26.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 379.6, -37.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 379.6, -37.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 522.4, -9.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 522.4, -9.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 447.9, -7.1 , 0 );

setScaleKey( spep_0 + 328 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 6.24, 6.24 );

setRotateKey( spep_0 + 328 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 408 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 448 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 408 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 408 + OFFSET_X, 1, -295.2, -378.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -295.2, -378.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -76.4, -369.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -76.4, -369.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 80.3, -361.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 80.3, -361.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 166.9, -385.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 166.9, -385.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 204.8, -351.2 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 204.8, -351.2 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 201.4, -386.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 201.4, -386.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 199.7, -350.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 199.7, -350.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 201.4, -375 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 201.4, -375 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 213.3, -368.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 213.3, -368.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 209.9, -383.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 209.9, -383.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 209.1, -378.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 209.1, -378.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 208.2, -374.2 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 208.2, -374.2 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 209.9, -381.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 209.9, -381.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 433.4, -381.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 433.4, -381.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 633.5, -381.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 633.5, -381.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 810, -381.8 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 810, -381.8 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 962.9, -381.8 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 962.9, -381.8 , 0 );

setScaleKey( spep_0 + 408 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 5.43, 5.43 );

setRotateKey( spep_0 + 408 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -52.9 );

--敵の動き3
setDisp( spep_0 + 506 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 556 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 506 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 506 + OFFSET_X, 1, 24.1, -123.9 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 24.1, -123.9 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 90.2, -100 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 90.2, -100 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 156.3, -76 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 156.3, -76 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 219.8, -11.6 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 219.8, -11.6 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 274.6, 45.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 274.6, 45.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 295.5, 25.3 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 295.5, 25.3 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 341.6, 91.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 341.6, 91.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 341.6, 72.6 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 341.6, 72.6 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 348.3, 125.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 348.3, 125.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 386.3, 115 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 386.3, 115 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 420.4, 149.3 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 420.4, 149.3 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 451.1, 180.8 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 451.1, 180.8 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 462.8, 190 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 462.8, 190 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 472.1, 197.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 472.1, 197.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 479.3, 203 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 479.3, 203 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 484.9, 207.4 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 484.9, 207.4 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 489, 210.7 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 489, 210.7 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 492.1, 213.1 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 492.1, 213.1 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 494.3, 214.8 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 494.3, 214.8 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 495.8, 216 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 495.8, 216 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 496.8, 216.8 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 496.8, 216.8 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 497.5, 217.4 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 497.5, 217.4 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 497.9, 217.7 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 497.9, 217.7 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 498.1, 217.8 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 498.1, 217.8 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 498.2, 217.9 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 498.2, 217.9 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 498.3, 218 , 0 );

setScaleKey( spep_0 + 506 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.66, 0.66 );

setRotateKey( spep_0 + 506 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -2.5 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 22, 1072, "", 0, 0, 0, 0.6);

--両手ポーズ
SE003 = playSeVer2( spep_0 + 146, 1003, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 194, 1330, "",spep_0 + 248, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 194, SE004, 81 );
SE005 = playSeVer2( spep_0 + 198, 1012, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 246;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--亀仙人向かっていく
SE006 = playSeVer2( spep_0 + 270, 44, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 270, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE007, 63 );
SE008 = playSeVer2( spep_0 + 270, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE008, 151 );
SE009 = playSeVer2( spep_0 + 286, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE009, 158 );
SE010 = playSeVer2( spep_0 + 296, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE010, 166 );
SE011 = playSeVer2( spep_0 + 308, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE011, 166 );
SE012 = playSeVer2( spep_0 + 316, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE012, 166 );

--亀仙人パンチ
SE013 = playSeVer2( spep_0 + 326, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 334, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 334, 1110, "", 0, 0, 0, -1);

--クリリン向かってくる
SE016 = playSeVer2( spep_0 + 366, 1117, "",spep_0 + 436, 0, 26, -1);

--クリリンキック
SE017 = playSeVer2( spep_0 + 398, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 398, 1010, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 398, 1110, "", 0, 0, 0, -1);

--悟空向かってくる
SE020 = playSeVer2( spep_0 + 432, 1157, "",spep_0 + 526, 0, 38, -1);
SE021 = playSeVer2( spep_0 + 432, 1264, "",spep_0 + 556, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 432, SE021, 60 );
setPitch( spep_0 + 432, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );

--悟空構える
SE022 = playSeVer2( spep_0 + 460, 1007, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 460, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 464, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE024, 178 );

--悟空殴り飛ばす
SE025 = playSeVer2( spep_0 + 484, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 494, 1120, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 494, 1110, "", 0, 0, 0, -1);

--悟空着地
SE028 = playSeVer2( spep_0 + 542, 63, "",spep_0 + 582, 0, 14, -1);
SE029 = playSeVer2( spep_0 + 566, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE029, 141 );
SE030 = playSeVer2( spep_0 + 568, 1106, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 600F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -80 ); -- 第8引数のY軸オフセット値は適宜調整してください。（このコメントはコンフル用説明なので実装時は削除ください）
--setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

--亀仙人アップ
SE032 = playSeVer2( spep_c + 84, 34, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_c + 84, 13, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_c + 84, 1042, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-------------------------------------------------
-- かめはめ波〜ラスト
-------------------------------------------------
MAX_FRAME_2 = 318;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- かめはめ波〜ラスト ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- かめはめ波〜ラスト(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 124 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 124 + OFFSET_X, 1, 4881.8, 2113.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 4881.8, 2113.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 4726.8, 2041.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 4726.8, 2041.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 4571.2, 1969.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 4571.2, 1969.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 4414.8, 1896.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 4414.8, 1896.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 4257.6, 1824.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 4257.6, 1824.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 4099.7, 1751.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 4099.7, 1751.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 3941.1, 1678.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 3941.1, 1678.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 3781.8, 1605.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 3781.8, 1605.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 3621.7, 1532.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 3621.7, 1532.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 3460.9, 1459.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 3460.9, 1459.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 3299.3, 1385.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 3299.3, 1385.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 3137.1, 1312 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 3137.1, 1312 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 2974.1, 1238.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 2974.1, 1238.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 2810.4, 1164.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 2810.4, 1164.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 2645.9, 1090.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 2645.9, 1090.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 2480.7, 1016 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 2480.7, 1016 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 2314.7, 941.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 2314.7, 941.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 2148.1, 867.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 2148.1, 867.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 1980.7, 792.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 1980.7, 792.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 1812.6, 717.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 1812.6, 717.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 1709.5, 666.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 1709.5, 666.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 1606.3, 615.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 1606.3, 615.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 1503, 563.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 1503, 563.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 1399.6, 512.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 1399.6, 512.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 1296.1, 460.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 1296.1, 460.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1192.4, 409.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 1192.4, 409.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 1088.7, 358.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 1088.7, 358.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 984.8, 306.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 984.8, 306.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 880.9, 255.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 880.9, 255.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 776.8, 203.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 776.8, 203.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 672.5, 152.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 672.5, 152.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 568.2, 100.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 568.2, 100.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 463.7, 48.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 463.7, 48.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 359.2, -2.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 359.2, -2.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 254.5, -54.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 254.5, -54.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 252.5, 26.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 252.5, 26.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 247.5, -36.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 247.5, -36.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 242.7, -99.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 242.7, -99.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 234.7, -41.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 234.7, -41.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 226.8, 16.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 226.8, 16.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 236.8, -29.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 236.8, -29.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 246.8, -75.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 246.8, -75.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 233.6, -52.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 233.6, -52.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 220.2, -30.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 220.2, -30.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 206.9, -8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 206.9, -8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 226.3, -27.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 226.3, -27.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 245.6, -47.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 245.6, -47.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 265, -66.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 265, -66.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 777.9, 223 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 777.9, 223 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 313.2, -108.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 313.2, -108.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 267, -72.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 267, -72.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 228.9, -43.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 228.9, -43.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 199.6, -20.3 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 199.6, -20.3 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 180.1, -3.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 180.1, -3.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 171.3, 8.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 171.3, 8.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 174, 15.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 174, 15.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 182.8, 20.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 182.8, 20.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 191.6, 24.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 191.6, 24.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 200.4, 29.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 200.4, 29.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 209.2, 33.8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 209.2, 33.8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 218, 38.4 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 218, 38.4 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 226.8, 43 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 226.8, 43 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 235.6, 47.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 235.6, 47.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 244.4, 52.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 244.4, 52.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 253.2, 56.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 253.2, 56.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 262, 61.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 262, 61.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 270.8, 66 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 270.8, 66 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 279.6, 70.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 279.6, 70.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 288.4, 75.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 288.4, 75.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 297.2, 79.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 297.2, 79.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 306, 84.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 306, 84.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 314.8, 89 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 314.8, 89 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 323.6, 93.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 323.6, 93.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 332.4, 98.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 332.4, 98.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 341.2, 102.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 341.2, 102.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 350, 107.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 350, 107.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 358.8, 111.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 358.8, 111.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 367.5, 116.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 367.5, 116.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 376.3, 121.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 376.3, 121.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 385.1, 125.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 385.1, 125.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 393.9, 130.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 393.9, 130.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 402.7, 134.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 402.7, 134.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 411.5, 139.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 411.5, 139.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 420.3, 144.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 420.3, 144.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 429.1, 148.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 429.1, 148.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 437.9, 153.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 437.9, 153.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 446.7, 157.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 446.7, 157.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 455.5, 162.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 455.5, 162.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 464.3, 167 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 464.3, 167 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 473.1, 171.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 473.1, 171.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 481.9, 176.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 481.9, 176.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 490.7, 180.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 490.7, 180.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 499.5, 185.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 499.5, 185.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 508.3, 190 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 508.3, 190 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 517.1, 194.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 517.1, 194.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 525.9, 199.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 525.9, 199.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 534.7, 203.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 534.7, 203.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 543.5, 208.4 , 0 );

setScaleKey( spep_2 + 124 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 3.67, 3.66 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 3.67, 3.66 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.59, 3.58 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 3.59, 3.58 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.86, 2.85 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.86, 2.85 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.78, 2.77 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.78, 2.77 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_2 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--かめはめ波溜め
SE035 = playSeVer2( spep_2 + 52, 1131, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 52, 1132, "",spep_2 + 128, 0, 22, -1);

--かめはめ波発射
SE037 = playSeVer2( spep_2 + 102, 1146, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 102, 1145, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 102, 1027, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE040 = playSeVer2( spep_2 + 136, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE040, 314 );
SE041 = playSeVer2( spep_2 + 136, 1161, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 178, 1215, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE042, 72 );
setStartTimeMs( SE042, 567 );

--爆発
SE043 = playSeVer2( spep_2 + 184, 1011, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 192, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 218); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 318F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭〜格闘〜構え
-------------------------------------------------
MAX_FRAME_0 = 600;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 冒頭〜格闘〜構え ef_001r
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 冒頭〜格闘〜構え(背景) ef_001br
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 52;
 
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵の動き ** --
--敵の動き1
setDisp( spep_0 + 328 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 376 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 328 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 350 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 328 + OFFSET_X, 1, 362.3, -63.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 362.3, -63.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 467.6, -32.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 467.6, -32.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 478.2, -26 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 478.2, -26 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 480.6, -17.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 480.6, -17.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 433.6, -26.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 433.6, -26.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 379.6, -37.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 379.6, -37.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 522.4, -9.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 522.4, -9.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 414.9, -28.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 447.9, -7.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 447.9, -7.1 , 0 );

setScaleKey( spep_0 + 328 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 6.24, 6.24 );

setRotateKey( spep_0 + 328 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 408 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 448 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 408 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 408 + OFFSET_X, 1, -295.2, -378.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -295.2, -378.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -76.4, -369.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -76.4, -369.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 80.3, -361.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 80.3, -361.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 166.9, -385.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 166.9, -385.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 204.8, -351.2 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 204.8, -351.2 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 201.4, -386.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 201.4, -386.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 199.7, -350.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 199.7, -350.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 201.4, -375 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 201.4, -375 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 213.3, -368.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 213.3, -368.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 209.9, -383.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 209.9, -383.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 209.1, -378.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 209.1, -378.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 208.2, -374.2 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 208.2, -374.2 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 209.9, -381.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 209.9, -381.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 433.4, -381.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 433.4, -381.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 633.5, -381.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 633.5, -381.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 810, -381.8 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 810, -381.8 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 962.9, -381.8 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 962.9, -381.8 , 0 );

setScaleKey( spep_0 + 408 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 5.43, 5.43 );

setRotateKey( spep_0 + 408 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -52.9 );

--敵の動き3
setDisp( spep_0 + 506 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 556 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 506 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 506 + OFFSET_X, 1, 24.1, -123.9 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 24.1, -123.9 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 90.2, -100 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 90.2, -100 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 156.3, -76 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 156.3, -76 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 219.8, -11.6 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 219.8, -11.6 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 274.6, 45.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 274.6, 45.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 295.5, 25.3 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 295.5, 25.3 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 341.6, 91.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 341.6, 91.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 341.6, 72.6 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 341.6, 72.6 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 348.3, 125.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 348.3, 125.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 386.3, 115 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 386.3, 115 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 420.4, 149.3 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 420.4, 149.3 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 451.1, 180.8 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 451.1, 180.8 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 462.8, 190 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 462.8, 190 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 472.1, 197.3 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 472.1, 197.3 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 479.3, 203 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 479.3, 203 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 484.9, 207.4 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 484.9, 207.4 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 489, 210.7 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 489, 210.7 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 492.1, 213.1 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 492.1, 213.1 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 494.3, 214.8 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 494.3, 214.8 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 495.8, 216 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 495.8, 216 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 496.8, 216.8 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 496.8, 216.8 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 497.5, 217.4 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 497.5, 217.4 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 497.9, 217.7 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 497.9, 217.7 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 498.1, 217.8 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 498.1, 217.8 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 498.2, 217.9 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 498.2, 217.9 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 498.3, 218 , 0 );

setScaleKey( spep_0 + 506 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.66, 0.66 );

setRotateKey( spep_0 + 506 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -2.5 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 22, 1072, "", 0, 0, 0, 0.6);

--両手ポーズ
SE003 = playSeVer2( spep_0 + 146, 1003, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 194, 1330, "",spep_0 + 248, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 194, SE004, 81 );
SE005 = playSeVer2( spep_0 + 198, 1012, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 246;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--亀仙人向かっていく
SE006 = playSeVer2( spep_0 + 270, 44, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 270, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE007, 63 );
SE008 = playSeVer2( spep_0 + 270, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE008, 151 );
SE009 = playSeVer2( spep_0 + 286, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE009, 158 );
SE010 = playSeVer2( spep_0 + 296, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE010, 166 );
SE011 = playSeVer2( spep_0 + 308, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE011, 166 );
SE012 = playSeVer2( spep_0 + 316, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE012, 166 );

--亀仙人パンチ
SE013 = playSeVer2( spep_0 + 326, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 334, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 334, 1110, "", 0, 0, 0, -1);

--クリリン向かってくる
SE016 = playSeVer2( spep_0 + 366, 1117, "",spep_0 + 436, 0, 26, -1);

--クリリンキック
SE017 = playSeVer2( spep_0 + 398, 1153, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 398, 1010, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 398, 1110, "", 0, 0, 0, -1);

--悟空向かってくる
SE020 = playSeVer2( spep_0 + 432, 1157, "",spep_0 + 526, 0, 38, -1);
SE021 = playSeVer2( spep_0 + 432, 1264, "",spep_0 + 556, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 432, SE021, 60 );
setPitch( spep_0 + 432, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );

--悟空構える
SE022 = playSeVer2( spep_0 + 460, 1007, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 460, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 464, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE024, 178 );

--悟空殴り飛ばす
SE025 = playSeVer2( spep_0 + 484, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 494, 1120, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 494, 1110, "", 0, 0, 0, -1);

--悟空着地
SE028 = playSeVer2( spep_0 + 542, 63, "",spep_0 + 582, 0, 14, -1);
SE029 = playSeVer2( spep_0 + 566, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE029, 141 );
SE030 = playSeVer2( spep_0 + 568, 1106, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 600F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -80 ); -- 第8引数のY軸オフセット値は適宜調整してください。（このコメントはコンフル用説明なので実装時は削除ください）
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

--亀仙人アップ
SE032 = playSeVer2( spep_c + 84, 34, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_c + 84, 13, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_c + 84, 1042, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-------------------------------------------------
-- かめはめ波〜ラスト
-------------------------------------------------
MAX_FRAME_2 = 318;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- かめはめ波〜ラスト ef_002r
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0); -- かめはめ波〜ラスト(背景) ef_002br
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 124 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 124 + OFFSET_X, 1, 4881.8, 2113.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 4881.8, 2113.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 4726.8, 2041.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 4726.8, 2041.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 4571.2, 1969.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 4571.2, 1969.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 4414.8, 1896.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 4414.8, 1896.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 4257.6, 1824.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 4257.6, 1824.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 4099.7, 1751.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 4099.7, 1751.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 3941.1, 1678.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 3941.1, 1678.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 3781.8, 1605.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 3781.8, 1605.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 3621.7, 1532.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 3621.7, 1532.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 3460.9, 1459.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 3460.9, 1459.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 3299.3, 1385.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 3299.3, 1385.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 3137.1, 1312 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 3137.1, 1312 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 2974.1, 1238.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 2974.1, 1238.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 2810.4, 1164.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 2810.4, 1164.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 2645.9, 1090.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 2645.9, 1090.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 2480.7, 1016 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 2480.7, 1016 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 2314.7, 941.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 2314.7, 941.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 2148.1, 867.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 2148.1, 867.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 1980.7, 792.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 1980.7, 792.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 1812.6, 717.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 1812.6, 717.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 1709.5, 666.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 1709.5, 666.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 1606.3, 615.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 1606.3, 615.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 1503, 563.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 1503, 563.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 1399.6, 512.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 1399.6, 512.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 1296.1, 460.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 1296.1, 460.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1192.4, 409.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 1192.4, 409.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 1088.7, 358.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 1088.7, 358.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 984.8, 306.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 984.8, 306.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 880.9, 255.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 880.9, 255.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 776.8, 203.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 776.8, 203.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 672.5, 152.1 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 672.5, 152.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 568.2, 100.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 568.2, 100.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 463.7, 48.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 463.7, 48.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 359.2, -2.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 359.2, -2.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 254.5, -54.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 254.5, -54.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 252.5, 26.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 252.5, 26.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 247.5, -36.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 247.5, -36.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 242.7, -99.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 242.7, -99.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 234.7, -41.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 234.7, -41.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 226.8, 16.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 226.8, 16.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 236.8, -29.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 236.8, -29.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 246.8, -75.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 246.8, -75.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 233.6, -52.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 233.6, -52.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 220.2, -30.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 220.2, -30.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 206.9, -8 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 206.9, -8 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 226.3, -27.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 226.3, -27.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 245.6, -47.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 245.6, -47.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 265, -66.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 265, -66.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 777.9, 223 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 777.9, 223 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 313.2, -108.4 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 313.2, -108.4 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 267, -72.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 267, -72.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 228.9, -43.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 228.9, -43.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 199.6, -20.3 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 199.6, -20.3 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 180.1, -3.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 180.1, -3.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 171.3, 8.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 171.3, 8.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 174, 15.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 174, 15.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 182.8, 20.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 182.8, 20.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 191.6, 24.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 191.6, 24.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 200.4, 29.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 200.4, 29.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 209.2, 33.8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 209.2, 33.8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 218, 38.4 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 218, 38.4 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 226.8, 43 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 226.8, 43 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 235.6, 47.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 235.6, 47.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 244.4, 52.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 244.4, 52.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 253.2, 56.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 253.2, 56.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 262, 61.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 262, 61.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 270.8, 66 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 270.8, 66 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 279.6, 70.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 279.6, 70.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 288.4, 75.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 288.4, 75.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 297.2, 79.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 297.2, 79.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 306, 84.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 306, 84.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 314.8, 89 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 314.8, 89 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 323.6, 93.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 323.6, 93.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 332.4, 98.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 332.4, 98.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 341.2, 102.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 341.2, 102.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 350, 107.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 350, 107.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 358.8, 111.9 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 358.8, 111.9 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 367.5, 116.5 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 367.5, 116.5 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 376.3, 121.1 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 376.3, 121.1 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 385.1, 125.7 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 385.1, 125.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 393.9, 130.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 393.9, 130.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 402.7, 134.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 402.7, 134.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 411.5, 139.5 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 411.5, 139.5 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 420.3, 144.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 420.3, 144.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 429.1, 148.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 429.1, 148.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 437.9, 153.3 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 437.9, 153.3 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 446.7, 157.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 446.7, 157.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 455.5, 162.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 455.5, 162.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 464.3, 167 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 464.3, 167 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 473.1, 171.6 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 473.1, 171.6 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 481.9, 176.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 481.9, 176.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 490.7, 180.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 490.7, 180.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 499.5, 185.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 499.5, 185.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 508.3, 190 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 508.3, 190 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 517.1, 194.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 517.1, 194.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 525.9, 199.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 525.9, 199.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 534.7, 203.8 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 534.7, 203.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 543.5, 208.4 , 0 );

setScaleKey( spep_2 + 124 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 3.67, 3.66 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 3.67, 3.66 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.59, 3.58 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 3.59, 3.58 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.86, 2.85 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.86, 2.85 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.78, 2.77 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.78, 2.77 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_2 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--かめはめ波溜め
SE035 = playSeVer2( spep_2 + 52, 1131, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 52, 1132, "",spep_2 + 128, 0, 22, -1);

--かめはめ波発射
SE037 = playSeVer2( spep_2 + 102, 1146, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 102, 1145, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 102, 1027, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE040 = playSeVer2( spep_2 + 136, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE040, 314 );
SE041 = playSeVer2( spep_2 + 136, 1161, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 178, 1215, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_2 + 178, SE042, 72 );
setStartTimeMs( SE042, 567 );

--爆発
SE043 = playSeVer2( spep_2 + 184, 1011, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 192, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 218); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 318F

end