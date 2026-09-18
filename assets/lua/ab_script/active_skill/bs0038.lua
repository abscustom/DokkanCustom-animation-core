--1027250:UR_トランクス(青年期)(未来)_場所を変えさせてもらうぞ
--sp_effect_a2_00225
--bs0038

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162113; --開始～敵ふっ飛び、追いかけてフィニッシュ ef_001
SP_01b = 162114; --開始～敵ふっ飛び、追いかけてフィニッシュ ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 素材が１つのみのシーン
-------------------------------------------------

MAX_FRAME_0 = 614;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 0);

base_1 = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_1, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_1, 0);
setEffAlphaKey( spep_0 + 0, base_1, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_1, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_1, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_1, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 384 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 614, 1, 0);
changeAnime( spep_0 + 384 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 422 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 428 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 384 + OFFSET_X, 1, 16.6, 62.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 16.6, 62.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 16.9, 37.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 16.9, 37.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 15.1, 14.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 15.1, 14.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 18.3, -14.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 18.3, -14.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 15, -10 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 15, -10 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -3.9, 8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -3.9, 8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 24.3, -23 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 24.3, -23 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 5.6, -15.3 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 5.6, -15.3 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 24.7, 7.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 24.7, 7.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 5.8, -3.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 5.8, -3.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 19.7, -11.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 19.7, -11.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 8.1, -12.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 8.1, -12.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 15.8, 4.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 15.8, 4.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 16.4, -17.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 16.4, -17.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 9, -4.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 9, -4.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 11.7, -10.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 11.7, -10.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 12.3, -3.6 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 12.3, -3.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 1.3, 10.5 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 1.3, 10.5 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 15.6, 1.6 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 15.6, 1.6 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 74.7, 82.8 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 74.7, 82.8 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 55.9, 242.7 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 55.9, 242.7 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 48.3, 258.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 48.3, 258.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 14.7, 220.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 14.7, 220.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 2.5, 242.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 2.5, 242.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 1, 240.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 1, 240.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 16.6, 254.2 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 16.6, 254.2 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 5.1, 276.2 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 5.1, 276.2 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 17.8, 265.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 17.8, 265.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 11.5, 280.7 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 11.5, 280.7 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 5.2, 276.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 5.2, 276.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 17.8, 266.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 17.8, 266.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 11.5, 272.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 11.5, 272.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 11.5, 273 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 11.5, 273 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 11.6, 273.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 11.6, 273.4 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 11.6, 273.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 11.6, 273.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 11.6, 273.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 11.6, 274 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 11.7, 274.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 11.7, 274.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 11.7, 274.5 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 11.7, 274.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 11.7, 274.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 11.7, 275 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 11.7, 275.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 11.8, 275.3 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 11.8, 275.4 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 11.8, 275.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 11.8, 275.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 11.8, 275.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 11.8, 276 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 11.8, 276.1 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 11.8, 276.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 11.8, 276.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 11.8, 276.5 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 11.9, 276.6 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 11.9, 276.7 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 11.9, 276.8 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 11.9, 277 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 11.9, 277.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 11.9, 277.2 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 11.9, 277.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 11.9, 277.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 24.4, 262.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 4.4, 280.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 34.4, 285.2 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 24.4, 262.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 2, 270.4 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 19.5, 283 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 12, 278.1 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 12, 278.2 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 12, 278.3 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 12, 278.4 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 12, 278.5 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 12, 278.5 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 12, 278.6 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 12, 278.7 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 12, 278.8 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 12, 278.9 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 12, 278.9 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 12, 279 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 12, 279.1 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 12, 279.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 12, 279.2 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 12, 279.3 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 12, 279.3 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 12.1, 279.4 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 12.1, 279.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 12.1, 279.5 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 12.1, 279.6 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 12.1, 279.6 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 12.1, 279.7 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 12.1, 279.7 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 12.1, 279.8 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 12.1, 279.8 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 12.1, 279.9 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 12.1, 279.9 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 12.1, 280 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 12.1, 280 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 12.1, 280.1 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 12.1, 280.1 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 12.1, 280.2 , 0 );
setMoveKey( spep_0 + 614, 1, 12.1, 280.2 , 0 );

setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 614, 1, 0.08, 0.08 );

setRotateKey( spep_0 + 384 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_0 + 614, 1, -6.1 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 352, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 50 );

--入り
SE003 = playSeVer2( spep_0 + 22, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 58 );

--横向き凄む
SE004 = playSeVer2( spep_0 + 164, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE004, 77 );
SE005 = playSeVer2( spep_0 + 164, 1264, "",spep_0 + 350, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 164, SE005, 58 );
SE006 = playSeVer2( spep_0 + 164, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 164, SE006, 73 );

--衝撃波
SE007 = playSeVer2( spep_0 + 330, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 330, 1153, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 330, 1068, "", 0, 0, 0, -1);

--敵ヒット
SE010 = playSeVer2( spep_0 + 394, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE010, 83 );
SE011 = playSeVer2( spep_0 + 396, 1014, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE012 = playSeVer2( spep_0 + 420, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE012, 65 );
SE013 = playSeVer2( spep_0 + 424, 1027, "", 0, 0, 0, -1);

--気を溜める
SE014 = playSeVer2( spep_0 + 490, 1035, "", 0, 0, 0, -1);

--敵追いかける
SE015 = playSeVer2( spep_0 + 520, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 520, 44, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 528, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE017, 168 );

-- ** ボイス ** --
--「この西の都で戦うのは　まずい……」
playVoice( spep_0 + 3, 663 );
setVoiceVolume( spep_0 + 3, 663, 126 );

--「場所を変えさせてもらうぞ…」
playVoice( spep_0 + 180, 664 );
setVoiceVolume( spep_0 + 180, 664, 126 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);--614

else end