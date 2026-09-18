--4031190:UR_超サイヤ人ゴッドSS孫悟空(界王拳)_復活カウンター：気迫の界王拳アタック
--sp_effect_b1_00324
--fi0021

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163748; --開幕〜フィニッシュまで ef_001
SP_01b = 163749; --開幕〜フィニッシュまで ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 420 -13 );        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 480 -1 );      -- スキップ先フレーム指定

            --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
            --オーラ
            SE011 = playSeVer2( spep_0 + 480, 1176, "",spep_0 + 578, 0, 16, -1);
            setSeVolumeByWorkId( spep_0 + 480, SE011, 72 );
            SE012 = playSeVer2( spep_0 + 480, 1181, "",spep_0 + 580, 0, 18, -1);
            setSeVolumeByWorkId( spep_0 + 480, SE012, 138 );


            --ボイス名
            --playVoice( spep_0 + 000, XXX );
            --setVoiceVolume( spep_0 + 000, XXX, 100 );

        end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- 開幕〜フィニッシュまで
------------------------------------------------------
MAX_FRAME_0 = 716;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

base_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0 );
setEffAlphaKey( spep_0 + 0, base_b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_0 + 430 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 598 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 430 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 438 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 480 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 498 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 430 + OFFSET_X, 1, 176.8, -35.2 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 176.8, -35.2 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 209.2, 0.7 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 209.2, 0.7 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 174.3, 0.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 174.3, 0.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 120.1, 7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 120.1, 7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 174.3, -31.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 174.3, -31.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 147.5, 8.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 147.5, 8.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 131.5, -7.5 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 131.5, -7.5 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 147.5, -7.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 147.5, -7.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 131.5, 8.5 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 131.5, 8.5 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 145.9, 6.9 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 145.9, 6.9 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 133.1, -5.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 133.1, -5.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 145.9, -5.9 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 145.9, -5.9 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 133.1, 6.9 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 133.1, 6.9 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 144.3, 5.3 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 144.3, 5.3 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 134.7, -4.3 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 134.7, -4.3 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 144.3, -4.3 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 144.3, -4.3 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 139.5, 0.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 117.6, -18.1 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 117.6, -18.1 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 118.2, 23.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 118.2, 23.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 57.4, -33.8 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 57.4, -33.8 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 89.4, -5.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 89.4, -5.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 120.9, 23.3 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 120.9, 23.3 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 66.4, -56.6 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 66.4, -56.6 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 122.6, 23.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 122.6, 23.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 80.7, -74.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 80.7, -74.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 124.4, 23.4 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 124.4, 23.4 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 127.3, 25.4 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 127.3, 25.4 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 124.2, 21.4 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 124.2, 21.4 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 129, 21.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 129, 21.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 128, 23.5 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 128, 23.5 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 128.9, 23.5 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 128.9, 23.5 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 129.7, 23.5 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 129.7, 23.5 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 130.6, 23.5 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 130.6, 23.5 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 131.5, 23.6 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 131.5, 23.6 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 132.4, 23.6 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 132.4, 23.6 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 230.2, -61 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 230.2, -61 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 258.2, 31.8 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 258.2, 31.8 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 300.1, -35 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 300.1, -35 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 304.7, 26.9 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 304.7, 26.9 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 288.7, -28.9 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 288.7, -28.9 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 272.4, 26.9 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 272.4, 26.9 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 273.1, 27 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 273.1, 27 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 273.8, 27 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 273.8, 27 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 274.4, 27 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 274.4, 27 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 274.9, 27.1 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 274.9, 27.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 275.4, 27.1 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 275.4, 27.1 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 275.9, 27.1 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 275.9, 27.1 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 276.2, 27.1 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 276.2, 27.1 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 276.5, 27.1 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 276.5, 27.1 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -101.9, -166.1 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -101.9, -166.1 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -81.5, -137.1 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -81.5, -137.1 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -61.2, -108 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -61.2, -108 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -40.9, -79 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -40.9, -79 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -20.7, -50 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -20.7, -50 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -20.2, -58.3 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -20.2, -58.3 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -19.7, -58.5 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -19.7, -58.5 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -19.2, -58.7 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -19.2, -58.7 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -18.7, -58.9 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -18.7, -58.9 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -18.2, -59.1 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -18.2, -59.1 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -17.8, -59.3 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -17.8, -59.3 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -17.3, -59.5 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -17.3, -59.5 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -16.8, -59.8 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -16.8, -59.8 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -16.3, -60 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -16.3, -60 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -15.9, -60.2 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -15.9, -60.2 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -15.4, -60.4 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -15.4, -60.4 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -14.9, -60.6 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -14.9, -60.6 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -14.5, -60.9 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -14.5, -60.9 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -14, -61.1 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -14, -61.1 , 0 );

setScaleKey( spep_0 + 430 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 430 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 32 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, 32 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 27 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 27 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 8 );


-- ** 音 ** --
--悟空落ちてくる
SE001 = playSeVer2( spep_0 + 0, 1266, "",spep_0 + 366, 4, 192, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
setStartTimeMs( SE001,  1300 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );

--悟空落ちてくる
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 288, 0, 98, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 60 );
SE004 = playSeVer2( spep_0 + 0, 1315, "",spep_0 + 236, 2, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 141 );

--力む
SE006 = playSeVer2( spep_0 + 216, 1330, "",spep_0 + 278, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 216, SE006, 63 );

--セリフカットイン
SE007 = playSeVer2( spep_0 + 256, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE007, 63 );

--気ダメ
SE005 = playSeVer2( spep_0 + 278, 1437, "",spep_0 + 426, 6, 86, -1);
setStartTimeMs( SE005,  2267 );
SE008 = playSeVer2( spep_0 + 282, 1035, "", 0, 0, 0, -1);

--構える
SE009 = playSeVer2( spep_0 + 278, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE009, 178 );
SE010 = playSeVer2( spep_0 + 286, 1006, "", 0, 0, 0, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 290, 1176, "",spep_0 + 578, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 290, SE011, 72 );
SE012 = playSeVer2( spep_0 + 290, 1181, "",spep_0 + 580, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 290, SE012, 138 );

--振りかぶる
SE013 = playSeVer2( spep_0 + 372, 1116, "",spep_0 + 418, 0, 14, -1);
SE014 = playSeVer2( spep_0 + 378, 1004, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「どりゃあああっ！！」
playVoice( spep_0 + 260, 982 );
setVoiceVolume( spep_0 + 260, 982, 132 );


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 420 ; --エンドフェイズのフレーム数を置き換える

  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE005, 0);
  stopSe( SP_dodge - 12, SE011, 0);
  stopSe( SP_dodge - 12, SE012, 0);
  --setVoiceVolume( SP_dodge - 12, SE_0_000, 0 );

  pauseAll( SP_dodge, 67);

  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);

do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------
-- ** 音 ** --
--殴る
SE015 = playSeVer2( spep_0 + 424, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE015, 178 );
SE016 = playSeVer2( spep_0 + 430, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 430, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 430, SE017, 89 );

--殴る2
SE018 = playSeVer2( spep_0 + 492, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 492, 1153, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 492, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE020, 79 );

--敵飛ぶ
SE021 = playSeVer2( spep_0 + 518, 1120, "", 0, 0, 0, -1);

--飛んでいく
SE022 = playSeVer2( spep_0 + 526, 1121, "",spep_0 + 682, 0, 98, -1);

--爆発
SE023 = playSeVer2( spep_0 + 592, 1061, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 594, 1159, "", 0, 0, 0, -1);

--風圧音
SE025 = playSeVer2( spep_0 + 594, 1427, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
-- hideKoScreen();
dealDamage( spep_0 + 598 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 716f

end