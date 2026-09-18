-- 1029550:LR_アニラーザ_アクティブ必殺技：マジェスティックハレーション
-- sp_effect_a5_00020
-- ut0077

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 163402;  --   ef_001 アニラーザ登場～フィニッシュまで
SP_01b = 163403;  --   ef_001b アニラーザ登場～フィニッシュまで


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
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 400 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 414 -1);  -- スキップ先フレーム指定

            --気弾投げる
            SE019 = playSeVer2( spep_0 + 414, 1226, "",spep_0 + 608, 0, 38, -1);
            SE020 = playSeVer2( spep_0 + 414, 1193, "",spep_0 + 600, 0, 26, -1);
            SE021 = playSeVer2( spep_0 + 414, 1027, "", 0, 0, 0, -1);

       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- アニラーザ登場～フィニッシュまで
------------------------------------------------------
MAX_FRAME_0 = 796;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- アニラーザ登場～フィニッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- アニラーザ登場～フィニッシュまで(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 414 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 540 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 414 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 422 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 414 + OFFSET_X, 1, 323.5, -203.5 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 323.5, -203.5 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 263.6, -156.2 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 263.6, -156.2 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 203.7, -109 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 203.7, -109 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 143.9, -61.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 143.9, -61.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 107.9, -33.2 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 107.9, -33.2 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 134.6, -13.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 134.6, -13.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 140.4, -77 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 140.4, -77 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 59, 2.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 59, 2.7 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 80.1, -77.5 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 80.1, -77.5 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 118.4, -45.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 118.4, -45.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 97, -25.3 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 97, -25.3 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 96.1, -47.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 96.1, -47.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 107.9, -33.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 107.9, -33.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 117.9, -26.5 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 117.9, -26.5 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 118.4, -45.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 118.4, -45.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 97, -25.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 97, -25.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 146.4, 27 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 146.4, 27 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 146.2, -71.5 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 146.2, -71.5 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 57.5, 34 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 57.5, 34 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 118.6, -45.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 118.6, -45.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 124.6, -26.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 124.6, -26.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 98.4, -49.1 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 98.4, -49.1 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 112, -36.1 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 112, -36.1 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 124.2, -30.9 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 124.2, -30.9 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 127.4, -51.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 127.4, -51.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 109.1, -34 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 109.1, -34 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 111.8, -58.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 111.8, -58.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 127.7, -47.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 127.7, -47.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 142.3, -44.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 142.3, -44.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 147.9, -66.4 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 147.9, -66.4 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 132, -50.7 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 132, -50.7 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 137.1, -77.3 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 137.1, -77.3 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 155.4, -67.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 155.4, -67.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 165.6, -61.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 165.6, -61.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 166.4, -79.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 166.4, -79.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 145.2, -60.3 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 145.2, -60.3 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 144.6, -82.7 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 144.6, -82.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 156.9, -68.8 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 156.9, -68.8 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 167.3, -62.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 167.3, -62.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 157.7, -69.5 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 157.7, -69.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 147.3, -62.1 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 147.3, -62.1 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 147, -84.7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 147, -84.7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 159.5, -71 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 159.5, -71 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 170.1, -64.9 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 170.1, -64.9 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 160.9, -72.3 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 160.9, -72.3 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 150.7, -65.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 150.7, -65.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 150.7, -88.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 150.7, -88.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 173.5, -64.7 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 173.5, -64.7 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 174.5, -68.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 174.5, -68.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 174, -85.2 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 174, -85.2 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 166.4, -77.7 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 166.4, -77.7 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 167.4, -61.4 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 167.4, -61.4 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 168.5, -79.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 168.5, -79.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 184.7, -66 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 184.7, -66 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 171, -82.4 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 171, -82.4 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 157.4, -68.9 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 157.4, -68.9 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 174.1, -85.7 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 174.1, -85.7 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 195.7, -67.9 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 195.7, -67.9 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 180.2, -90 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 180.2, -90 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 148.4, -60.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 148.4, -60.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 143.5, -119.7 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 143.5, -119.7 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 221.5, -66.6 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 221.5, -66.6 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 198.3, -111.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 198.3, -111.4 , 0 );

setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_0 + 414 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 26.7 );

--422~538まで白っぽくする
setBlendColor( spep_0 + 422 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.6 );
setBlendColor( spep_0 + 539 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 0.6 );
setBlendColor( spep_0 + 540 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気が立ち昇る
SE001 = playSeVer2( spep_0 + 0, 1371, "",spep_0 + 112, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 67 );
SE002 = playSeVer2( spep_0 + 0, 1024, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1423, "",spep_0 + 118, 0, 44, -1);
SE004 = playSeVer2( spep_0 + 0, 1430, "",spep_0 + 118, 0, 44, -1);

--羽広げる
SE005 = playSeVer2( spep_0 + 42, 1437, "",spep_0 + 130, 6, 70, -1);
setStartTimeMs( SE005,  2200 );
SE006 = playSeVer2( spep_0 + 46, 1373, "", 0, 0, 0, -1);

--集中線
SE007 = playSeVer2( spep_0 + 110, 20, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 110, 1291, "", 0, 0, 0, -1);

--セリフカットイン
SE009 = playSeVer2( spep_0 + 168, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE009, 63 );

--腕広げる
SE010 = playSeVer2( spep_0 + 176, 1116, "",spep_0 + 224, 0, 20, -1);
SE011 = playSeVer2( spep_0 + 184, 1004, "", 0, 0, 0, -1);

--気弾膨れ上がる
SE012 = playSeVer2( spep_0 + 276, 1212, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE012, 68 );
setStartTimeMs( SE012,  700 );
SE013 = playSeVer2( spep_0 + 262, 1443, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE013, 168 );
setStartTimeMs( SE013,  700 );
SE014 = playSeVer2( spep_0 + 258, 1440, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 258, 1453, "",spep_0 + 342, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 258, SE015, 72 ); 
SE016 = playSeVer2( spep_0 + 266, 63, "", 0, 0, 0, -1);

--顔アップ
SE017 = playSeVer2( spep_0 + 320, 1122, "",spep_0 + 416, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 320, SE017, 80 );
SE018 = playSeVer2( spep_0 + 320, 1060, "",spep_0 + 418, 0, 52, -1);

--気弾投げる
SE019 = playSeVer2( spep_0 + 356, 1226, "",spep_0 + 608, 0, 38, -1);
SE020 = playSeVer2( spep_0 + 356, 1193, "",spep_0 + 600, 0, 26, -1);
SE021 = playSeVer2( spep_0 + 356, 1027, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「グオオォォォ！」
playVoice( spep_0 + 158, 883 );
setVoiceVolume( spep_0 + 158, 883, 124 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 400; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
--setVoiceVolume( SP_dodge - 12, 719, 0 );

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
--敵ヒット
SE022 = playSeVer2( spep_0 + 432, 1068, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 440, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE023, 59 );

--爆発予兆
SE024 = playSeVer2( spep_0 + 540, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 540, SE024, 56 );

--爆発
SE025 = playSeVer2( spep_0 + 562, 1069, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 584, 1159, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 598, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 678 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 796f

else end
