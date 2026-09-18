-- 9028570:UR_フリーザ(第一形態)_アクティブ必殺：この宇宙で最高のショー
-- sp_effect_a1_00428
-- sp2700

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 162742;--   ef_001  フリーザ　攻撃（一連）表面
SP_01r = 162754;--   ef_001  フリーザ　攻撃（一連）表面


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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;
-- TODO: 敵キャラクターの開始フレームはムービー尺に合わせて手動確認してください。

if (_IS_PLAYER_SIDE_ == 0) then

        setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- フリーザ　攻撃（一連）
------------------------------------------------------
MAX_FRAME_0 = 1750;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- フリーザ　攻撃（一連）表面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 196, 4, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 476, 12, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 648, 10, 4, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 700, 18, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 848, 18, 24, 22, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 1116, 20, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 1226, 18, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 370 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 530 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 370 + OFFSET_X, 1,2 );
changeAnime( spep_0 + 420 + OFFSET_X, 1,18 );
changeAnime( spep_0 + 490 + OFFSET_X, 1,8 );

setMoveKey( spep_0 + 370 + OFFSET_X, 1, -4, 102.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -4, 102.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -4, 102.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -4, 102.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -4, 102.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -4, 102.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -4, 103.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -4, 103.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -4, 103.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -4, 103.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -4, 103.3 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -4, 103.3 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -4, 103.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -4, 103.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -4, 103.6 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -4, 103.6 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -4, 103.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -4, 103.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -4, 103.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -4, 103.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -4, 104 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -4, 104 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -4, 104.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -4, 104.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -4, 104.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -4, 104.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -4, 104.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -4, 104.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -4, 104.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -4, 104.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -4, 104.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -4, 104.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -4, 104.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -4, 104.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -4.1, 104.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -4.1, 104.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -4.1, 105.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -4.1, 105.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -4.1, 105.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -4.1, 105.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -4.1, 105.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -4.1, 105.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -4.1, 105.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -4.1, 105.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -4.1, 105.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -4.1, 105.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -4.1, 105.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -4.1, 105.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -4.1, 105.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -4.1, 105.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -33.1, -154.1 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -33.1, -154.1 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -33.2, -155.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -33.2, -155.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -33.3, -154.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -33.3, -154.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -33.4, -156.3 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -33.4, -156.3 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -33.5, -155.1 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -33.5, -155.1 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -33.6, -157 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -33.6, -157 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -33.7, -155.7 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -33.7, -155.7 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -33.8, -157.7 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -33.8, -157.7 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -33.9, -156.2 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -33.9, -156.2 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -34, -158.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -34, -158.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -34.1, -156.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -34.1, -156.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -34.2, -159.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -34.2, -159.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -34.3, -157.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -34.3, -157.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -34.4, -159.8 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -34.4, -159.8 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -34.5, -157.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -34.5, -157.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -34.6, -160.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -34.6, -160.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -34.7, -158.5 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -34.7, -158.5 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -34.8, -161.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -34.8, -161.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -34.9, -159 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -34.9, -159 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -35, -161.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -35, -161.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -35.2, -159.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -35.2, -159.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -35.3, -162.4 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -35.3, -162.4 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -35.4, -160.3 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -35.4, -160.3 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -35.5, -163.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -35.5, -163.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -35.6, -160.7 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -35.6, -160.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -35.7, -163.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -35.7, -163.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -35.8, -161.4 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -35.8, -161.4 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -35.9, -164.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -35.9, -164.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -36, -161.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -36, -161.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -36.1, -165.1 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -36.1, -165.1 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -36.2, -162.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -36.2, -162.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -36.3, -166.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -36.3, -166.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -36.4, -163.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -36.4, -163.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -36.5, -167.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -36.5, -167.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -36.6, -163.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -36.6, -163.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -25.4, 7.8 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -25.4, 7.8 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -25.6, 5.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -25.6, 5.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -25.7, 9 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -25.7, 9 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -25.9, 5 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -25.9, 5 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -26.1, 11.5 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -26.1, 11.5 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -26.3, 4.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -26.3, 4.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -26.4, 11.4 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -26.4, 11.4 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -26.6, 4 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -26.6, 4 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -26.8, 10.4 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -26.8, 10.4 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -27, 3.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -27, 3.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -27.1, 9.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -27.1, 9.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -27.3, 3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -27.3, 3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -27.5, 8.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -27.5, 8.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -27.7, 2.4 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -27.7, 2.4 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -27.9, 9.9 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -27.9, 9.9 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -28, 0.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -28, 0.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -28.2, 10.1 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -28.2, 10.1 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -28.4, -0.8 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -28.4, -0.8 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -28.6, 10.9 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -28.6, 10.9 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -28.7, -1.2 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -28.7, -1.2 , 0 );

setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 2.73, 2.73 );

setRotateKey( spep_0 + 370 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 600 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 720 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 600 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 660 + OFFSET_X, 1, 105  );

setMoveKey( spep_0 + 600 + OFFSET_X, 1, 12.6, 55 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 12.6, 55 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 11.8, 58.1 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 11.8, 58.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 11, 55.6 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 11, 55.6 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 10.1, 59.3 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 10.1, 59.3 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 9.3, 57.1 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 9.3, 57.1 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 8.5, 60.8 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 8.5, 60.8 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 7.7, 58.3 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 7.7, 58.3 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 6.9, 61.9 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 6.9, 61.9 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 6.1, 59.7 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 6.1, 59.7 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 5.3, 63.4 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 5.3, 63.4 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 4.5, 60.9 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 4.5, 60.9 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 3.7, 64.6 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 3.7, 64.6 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 2.9, 62.4 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 2.9, 62.4 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 2.1, 66.1 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 2.1, 66.1 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 1.3, 63.6 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 1.3, 63.6 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 0.5, 67.4 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 0.5, 67.4 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -0.3, 64.9 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -0.3, 64.9 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -1.2, 68.5 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -1.2, 68.5 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -2, 66.4 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -2, 66.4 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -2.8, 70 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -2.8, 70 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -3.6, 67.6 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -3.6, 67.6 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -4.4, 71.2 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -4.4, 71.2 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -5.2, 69 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -5.2, 69 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -6, 72.7 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -6, 72.7 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -6.8, 70.2 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -6.8, 70.2 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -7.6, 73.8 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -7.6, 73.8 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -8.4, 71.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -8.4, 71.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -9.2, 75.3 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -9.2, 75.3 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -10, 72.9 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -10, 72.9 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -10.8, 76.5 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -10.8, 76.5 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 7.7, -83.6 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 7.7, -83.6 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 6.4, -62.6 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, 6.4, -62.6 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 5.9, -57.7 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, 5.9, -57.7 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 5.4, -48 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 5.4, -48 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 5, -46.2 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 5, -46.2 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 4.7, -38.3 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, 4.7, -38.3 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 4.5, -37.6 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 4.5, -37.6 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 4.2, -30.6 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 4.2, -30.6 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 4, -30.6 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 4, -30.6 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 3.8, -24.1 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 3.8, -24.1 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 3.6, -24.6 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 3.6, -24.6 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 3.4, -18.5 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 3.4, -18.5 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 3.2, -19.2 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 3.2, -19.2 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 3.1, -13.4 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 3.1, -13.4 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 2.9, -14.4 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 2.9, -14.4 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 2.8, -8.7 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 2.8, -8.7 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 2.6, -9.9 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 2.6, -9.9 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 2.5, -4.4 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 2.5, -4.4 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 2.3, -5.8 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 2.3, -5.8 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 2.2, -0.5 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 2.2, -0.5 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 2.1, -2 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 2.1, -2 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 2, 3.3 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 2, 3.3 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 1.8, 1.6 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 1.8, 1.6 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 1.7, 6.8 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 1.7, 6.8 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 1.6, 5.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 1.6, 5.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 1.5, 10.2 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 1.5, 10.2 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 1.4, 8.5 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 1.4, 8.5 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 1.3, 13.6 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 1.3, 13.6 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 1.1, 11.8 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 1.1, 11.8 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 1, 17 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 1, 17 , 0 );

setScaleKey( spep_0 + 600 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 653 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 659 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 661 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 663 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 664 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 665 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 667 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 668 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 669 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 670 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 671 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 673 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 674 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 675 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 676 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 677 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 678 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 683 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 685 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 686 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 691 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 693 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 697 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 698 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 701 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 600 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, 32 );
setRotateKey( spep_0 + 617 + OFFSET_X, 1, 32 );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 619 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 620 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 625 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 626 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 629 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 630 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_0 + 651 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 656 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_0 + 659 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_0 + 660 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 720 + OFFSET_X, 1, -44 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 226, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--気弾溜め
SE002 = playSeVer2( spep_0 + 0, 1199, "",spep_0 + 84, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );
SE003 = playSeVer2( spep_0 + 0, 1281, "",spep_0 + 274, 0, 142, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 46 );
SE005 = playSeVer2( spep_0 + 66, 1199, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE005, 56 );

--入り
SE004 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--気弾膨れ上がる
SE006 = playSeVer2( spep_0 + 120, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE006, 75 );
setPitch( spep_0 + 120, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 128, 1227, "",spep_0 + 422, 0, 86, -1);
SE008 = playSeVer2( spep_0 + 128, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 53 );
setPitch( spep_0 + 128, SE008, 400 );
setTimeStretch( SE008, 1.27, 30, 4 );
SE009 = playSeVer2( spep_0 + 128, 1158, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 128, 1203, "", 0, 0, 0, -1);
setTimeStretch( SE010, 1.24, 30, 4 );

--気弾膨れ上がる２
SE011 = playSeVer2( spep_0 + 196, 1392, "", 0, 0, 0, -1);

--指むける
SE012 = playSeVer2( spep_0 + 314, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE012, 79 );

--気弾飛んでいく
SE013 = playSeVer2( spep_0 + 334, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE013, 69 );
SE014 = playSeVer2( spep_0 + 334, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE014, 58 );
SE015 = playSeVer2( spep_0 + 334, 1193, "",spep_0 + 552, 0, 56, -1);
SE016 = playSeVer2( spep_0 + 334, 1179, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 384; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);


pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--気弾飛んでいく
SE017 = playSeVer2( spep_0 + 386, 1241, "", 0, 0, 0, -1);

--敵ヒット
SE018 = playSeVer2( spep_0 + 484, 1024, "", 0, 0, 0, -1);

--気弾加速する
SE019 = playSeVer2( spep_0 + 538, 1173, "",spep_0 + 608, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 538, SE019, 200 );

--敵飲み込まれる
SE020 = playSeVer2( spep_0 + 590, 1213, "",spep_0 + 784, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 590, SE020, 68 );
SE021 = playSeVer2( spep_0 + 590, 1226, "",spep_0 + 1150, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 590, SE021, 63 );

--敵吹き飛ぶ
SE022 = playSeVer2( spep_0 + 648, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE022, 76 );
SE023 = playSeVer2( spep_0 + 652, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE023, 77 );

--地球激突
SE024 = playSeVer2( spep_0 + 726, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 726, SE024, 77 );
SE025 = playSeVer2( spep_0 + 726, 1305, "",spep_0 + 910, 0, 50, -1);
SE026 = playSeVer2( spep_0 + 738, 1188, "", 0, 0, 0, -1);

--地球割れていく
SE027 = playSeVer2( spep_0 + 874, 1044, "",spep_0 + 1144, 52, 22, -1);
setSeVolumeByWorkId( spep_0 + 874, SE027, 66 );
SE028 = playSeVer2( spep_0 + 884, 1229, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 894, 1250, "",spep_0 + 1134, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 894, SE029, 174 );
setPitch( spep_0 + 894, SE029, -600 );
setTimeStretch( SE029, 0.6, 30, 4 );

--爆発
SE030 = playSeVer2( spep_0 + 1170, 1067, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 1170, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 1170, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1170, SE032, 67 );
SE033 = playSeVer2( spep_0 + 1170, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1170, SE033, 73 );
SE034 = playSeVer2( spep_0 + 1214, 1128, "", 0, 0, 0, 0.62);
setSeVolumeByWorkId( spep_0 + 1214, SE034, 45 );
setPitch( spep_0 + 1214, SE034, -1200 );
setTimeStretch( SE034, 1.2, 30, 4 );

--セリフカットイン
--SE035 = playSeVer2( spep_0 + 1288, 1018, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 1288, SE035, 63 );

-- ** ボイス ** --
--[[
--「ほら、見てご覧なさい。ザーボンさん、ドドリアさん」
playVoice( spep_0 + 1280, 761 );
setVoiceVolume( spep_0 + 1280, 761, 100 );

--「こんな美しい花火ですよ」
playVoice( spep_0 + 1552, 762 );
setVoiceVolume( spep_0 + 1552, 762, 100 );
]]
-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 1286 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1750f

end