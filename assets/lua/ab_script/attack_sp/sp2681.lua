--1028590:UR_ドドリア_必殺技：命令の遂行
--sp_effect_a1_00425
--sp2681
 
fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(共通)
SP_01 = 162765; --冒頭からドドリア殴りまで：手前(ef_001)
SP_02 = 162766; --冒頭からドドリア殴りまで：奥(ef_001b)
SP_03 = 162767; --ビーム発射からラスト：手前(ef_002)
SP_04 = 162768; --ビーム発射からラスト：奥(ef_002b)

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
 
ENABLE_AUTO_TIME_STRETCH(0.9);
 
OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;


-------------------------------------------------
-- 冒頭からドドリア殴りまで
-------------------------------------------------
MAX_FRAME_0 = 600;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭からドドリア殴りまで：手前(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 冒頭からドドリア殴りまで：奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;
 
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景
  
-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 224 + OFFSET_X, 1, 1)
setDisp( spep_0 + 250 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 224 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 224 + OFFSET_X, 1, -83.4, 132.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -83.4, 132.1 , 0 );

setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 224 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 404 + OFFSET_X, 1, 1)
setDisp( spep_0 + 434 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 404 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 404 + OFFSET_X, 1, -85.7, 81.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -85.7, 81.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 15.8, 159.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 15.8, 159.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 56.3, 53.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 56.3, 53.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 61.2, 91.4 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 61.2, 91.4 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 46.3, 81.1 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 46.3, 81.1 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 44.7, 119.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 44.7, 119.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 67.4, 85.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 67.4, 85.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 59.1, 108 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 59.1, 108 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 75.1, 85.6 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 75.1, 85.6 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 66.8, 108 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 66.8, 108 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 250.4, -119.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 250.4, -119.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 315.2, -220.1 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 315.2, -220.1 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 380.1, -321.1 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 380.1, -321.1 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 444.9, -422 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 444.9, -422 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 509.9, -523.2 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 509.9, -523.2 , 0 );

setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 2.49, 2.5 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 2.49, 2.5 );

setRotateKey( spep_0 + 404 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 34.7 );

--敵の動き3
setDisp( spep_0 + 446 + OFFSET_X, 1, 1)
setDisp( spep_0 + 484 + OFFSET_X, 1, 0)

setMoveKey( spep_0 + 446 + OFFSET_X, 1, -226.3, 114 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -226.3, 114 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -226.2, 114 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -226.2, 114 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -226, 114 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -226, 114 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -225.5, 114 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -225.5, 114 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -224.6, 114 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -224.6, 114 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -223.2, 114 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -223.2, 114 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -221, 114 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -221, 114 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -217.8, 114 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -217.8, 114 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -213.4, 113.9 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -213.4, 113.9 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -207.4, 113.9 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -207.4, 113.9 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -199.6, 113.9 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -199.6, 113.9 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -189.5, 113.8 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -189.5, 113.8 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -176.7, 113.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -176.7, 113.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -161, 113.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -161, 113.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -141.8, 113.6 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -141.8, 113.6 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -118.6, 113.6 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -118.6, 113.6 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -90.9, 113.5 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -90.9, 113.5 , 0 );

setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_0 + 446 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 26.5 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 26.5 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 20 );

--敵の動き4
setDisp( spep_0 + 566 + OFFSET_X, 1, 1)
setDisp( spep_0 + 602 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 566 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 566 + OFFSET_X, 1, -164.7, -270.3 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -164.7, -270.3 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -137.6, -233.8 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -137.6, -233.8 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -119.6, -182.4 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -119.6, -182.4 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -92.5, -145.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -92.5, -145.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -74.4, -94.4 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -74.4, -94.4 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -47.4, -57.9 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -47.4, -57.9 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -29.3, -6.4 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -29.3, -6.4 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -2.1, 30.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -2.1, 30.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 16, 81.8 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 16, 81.8 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 43.1, 118.4 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 43.1, 118.4 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 61.3, 170 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 61.3, 170 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 88.4, 206.6 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 88.4, 206.6 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 106.6, 258.2 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 106.6, 258.2 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 133.8, 294.9 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 133.8, 294.9 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 152, 346.5 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 152, 346.5 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 179.2, 383.2 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 179.2, 383.2 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 197.5, 434.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 197.5, 434.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 224.7, 471.6 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 224.7, 471.6 , 0 );

setScaleKey( spep_0 + 566 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 566 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 12.3 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--飛び上がる
SE003 = playSeVer2( spep_0 + 86, 1207, "",spep_0 + 170, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 86, SE003, 82 );
SE004 = playSeVer2( spep_0 + 86, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 71 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 106, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 122 );

--空中画面遷移
SE006 = playSeVer2( spep_0 + 132, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE006, 78 );
SE007 = playSeVer2( spep_0 + 132, 44, "",spep_0 + 194, 0, 36, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 188; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
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
--気弾撃つ
SE008 = playSeVer2( spep_0 + 190, 1177, "",spep_0 + 270, 0, 18, -1);
SE009 = playSeVer2( spep_0 + 190, 1155, "", 0, 0, 0, -1);

--爆発
SE010 = playSeVer2( spep_0 + 242, 1024, "", 0, 0, 0, -1);

--向かってくる
SE011 = playSeVer2( spep_0 + 312, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 312, 9, "", 0, 0, 0, -1);

--振りかぶる
SE013 = playSeVer2( spep_0 + 334, 1116, "",spep_0 + 380, 0, 20, -1);
SE014 = playSeVer2( spep_0 + 334, 1004, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_0 + 384, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 384, 1153, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE017 = playSeVer2( spep_0 + 412, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 418, 1121, "",spep_0 + 564, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 418, SE018, 62 );

--瞬間移動
SE019 = playSeVer2( spep_0 + 454, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE019, 116 );

--振りかぶる
SE020 = playSeVer2( spep_0 + 482, 1116, "",spep_0 + 528, 0, 22, -1);
SE021 = playSeVer2( spep_0 + 482, 1072, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 486, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 516, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE024 = playSeVer2( spep_0 + 544, 1187, "",spep_0 + 606, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 544, SE024, 72 );
SE025 = playSeVer2( spep_0 + 544, 1120, "",spep_0 + 608, 0, 16, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --600         

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--力む
SE027 = playSeVer2( spep_c + 88, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 88, SE027, 162 );
SE028 = playSeVer2( spep_c + 88, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 88, SE028, 68 );
SE029 = playSeVer2( spep_c + 88, 1226, "",spep_1 + 120, 0, 36, -1);
setSeVolumeByWorkId( spep_c + 88, SE029, 61 );

-------------------------------------------------
-- ビーム発射からラスト
-------------------------------------------------
MAX_FRAME_1 = 358;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ビーム発射からラスト：手前(ef_002)
setEffMoveKey( spep_1 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0f, 0);
setEffAlphaKey( spep_1 + 0, finish_0f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0f, 255);

finish_0b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ビーム発射からラスト：奥(ef_002b)
setEffMoveKey( spep_1 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0b, 0);
setEffAlphaKey( spep_1 + 0, finish_0b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp(spep_1 + 210 + OFFSET_X, 1, 1)
setDisp(spep_1 + 304 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 210 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 210 + OFFSET_X, 1, -5.3, -24.5 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, -5.3, -24.5 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, -4.7, -21.4 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, -4.7, -21.4 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, -4.2, -18.8 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, -4.2, -18.8 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, -3.7, -16.5 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, -3.7, -16.5 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, -3.4, -14.5 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, -3.4, -14.5 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, -3, -12.8 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, -3, -12.8 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, -2.7, -11.2 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, -2.7, -11.2 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, -2.4, -9.9 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, -2.4, -9.9 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, -2.1, -8.6 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, -2.1, -8.6 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, -1.9, -7.6 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, -1.9, -7.6 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, -1.7, -6.7 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, -1.7, -6.7 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, -1.5, -5.8 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, -1.5, -5.8 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, -1.4, -5.2 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, -1.4, -5.2 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -1.3, -4.5 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -1.3, -4.5 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -1.2, -3.9 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -1.2, -3.9 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 30.3, 11.8 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 30.3, 11.8 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 15.8, 26 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 15.8, 26 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -0.9, -2.5 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -0.9, -2.5 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, -0.8, -2.2 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, -0.8, -2.2 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 30.6, 13.3 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 30.6, 13.3 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 16, 27.2 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 16, 27.2 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, -17.2, -10.2 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, -17.2, -10.2 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 20.2, -1.7 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 20.2, -1.7 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, -6.5, 21.7 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, -6.5, 21.7 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 30.8, 14.4 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 30.8, 14.4 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 5.7, -0.6 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 5.7, -0.6 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, -6.4, 22.2 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, -6.4, 22.2 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 30.9, 14.8 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 30.9, 14.8 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 5.8, -0.2 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 5.8, -0.2 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, -0.4, -0.1 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, -0.4, -0.1 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 12.2, -5.3 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 12.2, -5.3 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 7.8, 2.2 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 7.8, 2.2 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 12.2, -5.1 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 12.2, -5.1 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 7.8, 2.4 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 7.8, 2.4 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 12.2, -4.9 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 12.2, -4.9 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 7.8, 2.5 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 7.8, 2.5 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 12.3, -4.8 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 12.3, -4.8 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 7.8, 2.5 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 7.8, 2.5 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 12.3, -4.8 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 12.3, -4.8 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 7.9, 2.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 7.9, 2.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 12.3, -4.8 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 12.3, -4.8 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 7.8, 2.6 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 7.8, 2.6 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 12.3, -4.7 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 12.3, -4.7 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 7.8, 2.7 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 7.8, 2.7 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 12.3, -4.7 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 12.3, -4.7 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 7.9, 2.7 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 7.9, 2.7 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 12.4, -4.6 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 12.4, -4.6 , 0 );

setScaleKey( spep_1 + 210 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 0.6, 0.59 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 0.6, 0.59 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 265 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 271 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 295 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 296 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 210 + OFFSET_X, 1, -16 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, -16 );

setBlendColor( spep_1 + 242 + OFFSET_X, 1, 3, 0.74, 0.79, 0.56, 0.9);
setBlendColor( spep_1 + 304 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--息を吸う
SE030 = playSeVer2( spep_1 + 58, 1004, "", 0, 0, 0, -1);
setPitch( spep_1 + 58, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );
SE031 = playSeVer2( spep_1 + 58, 63, "",spep_1 + 116, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 58, SE031, 79 );

--気弾発射
SE032 = playSeVer2( spep_1 + 144, 1146, "",spep_1 + 262, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 144, SE032, 63 );
SE033 = playSeVer2( spep_1 + 144, 1000, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 144, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 148, 1109, "", 0, 0, 0, -1);

--爆発
SE036 = playSeVer2( spep_1 + 222, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 226, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 242); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 358
 
else
 
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 0;
 

-------------------------------------------------
-- 冒頭からドドリア殴りまで
-------------------------------------------------
MAX_FRAME_0 = 600;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭からドドリア殴りまで：手前(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 冒頭からドドリア殴りまで：奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;
 
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景
  
-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 224 + OFFSET_X, 1, 1)
setDisp( spep_0 + 250 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 224 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 224 + OFFSET_X, 1, 83.4, 132.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 83.4, 132.1 , 0 );

setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_0 + 224 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 404 + OFFSET_X, 1, 1)
setDisp( spep_0 + 434 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 404 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 404 + OFFSET_X, 1, 85.7, 81.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 85.7, 81.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -15.8, 159.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -15.8, 159.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -56.3, 53.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -56.3, 53.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -61.2, 91.4 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -61.2, 91.4 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -46.3, 81.1 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -46.3, 81.1 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -44.7, 119.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -44.7, 119.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -67.4, 85.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -67.4, 85.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -59.1, 108 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -59.1, 108 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -75.1, 85.6 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -75.1, 85.6 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -66.8, 108 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -66.8, 108 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -250.4, -119.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -250.4, -119.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -315.2, -220.1 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -315.2, -220.1 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -380.1, -321.1 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -380.1, -321.1 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -444.9, -422 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -444.9, -422 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -509.9, -523.2 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -509.9, -523.2 , 0 );

setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 2.49, 2.5 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 2.49, 2.5 );

setRotateKey( spep_0 + 404 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -34.7 );

--敵の動き3
setDisp( spep_0 + 446 + OFFSET_X, 1, 1)
setDisp( spep_0 + 484 + OFFSET_X, 1, 0)

setMoveKey( spep_0 + 446 + OFFSET_X, 1, 226.3, 114 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 226.3, 114 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 226.2, 114 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 226.2, 114 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 226, 114 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 226, 114 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 225.5, 114 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 225.5, 114 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 224.6, 114 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 224.6, 114 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 223.2, 114 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 223.2, 114 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 221, 114 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 221, 114 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 217.8, 114 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 217.8, 114 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 213.4, 113.9 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 213.4, 113.9 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 207.4, 113.9 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 207.4, 113.9 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 199.6, 113.9 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 199.6, 113.9 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 189.5, 113.8 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 189.5, 113.8 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 176.7, 113.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 176.7, 113.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 161, 113.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 161, 113.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 141.8, 113.6 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 141.8, 113.6 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 118.6, 113.6 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 118.6, 113.6 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 90.9, 113.5 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 90.9, 113.5 , 0 );

setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_0 + 446 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -32.5 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -32.5 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -20 );

--敵の動き4
setDisp( spep_0 + 566 + OFFSET_X, 1, 1)
setDisp( spep_0 + 602 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 566 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 566 + OFFSET_X, 1, 164.7, -270.3 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 164.7, -270.3 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 137.6, -233.8 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 137.6, -233.8 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 119.6, -182.4 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 119.6, -182.4 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 92.5, -145.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 92.5, -145.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 74.4, -94.4 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 74.4, -94.4 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 47.4, -57.9 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 47.4, -57.9 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 29.3, -6.4 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 29.3, -6.4 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 2.1, 30.2 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 2.1, 30.2 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -16, 81.8 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -16, 81.8 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -43.1, 118.4 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -43.1, 118.4 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -61.3, 170 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -61.3, 170 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -88.4, 206.6 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -88.4, 206.6 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -106.6, 258.2 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -106.6, 258.2 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -133.8, 294.9 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -133.8, 294.9 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -152, 346.5 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -152, 346.5 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -179.2, 383.2 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -179.2, 383.2 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -197.5, 434.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -197.5, 434.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -224.7, 471.6 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -224.7, 471.6 , 0 );

setScaleKey( spep_0 + 566 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 577 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 578 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 581 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 582 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 585 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 586 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 566 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, -12.3 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--飛び上がる
SE003 = playSeVer2( spep_0 + 86, 1207, "",spep_0 + 170, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 86, SE003, 82 );
SE004 = playSeVer2( spep_0 + 86, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 71 );

--瞬間移動
SE005 = playSeVer2( spep_0 + 106, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 122 );

--空中画面遷移
SE006 = playSeVer2( spep_0 + 132, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE006, 78 );
SE007 = playSeVer2( spep_0 + 132, 44, "",spep_0 + 194, 0, 36, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 188; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
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
--気弾撃つ
SE008 = playSeVer2( spep_0 + 190, 1177, "",spep_0 + 270, 0, 18, -1);
SE009 = playSeVer2( spep_0 + 190, 1155, "", 0, 0, 0, -1);

--爆発
SE010 = playSeVer2( spep_0 + 242, 1024, "", 0, 0, 0, -1);

--向かってくる
SE011 = playSeVer2( spep_0 + 312, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 312, 9, "", 0, 0, 0, -1);

--振りかぶる
SE013 = playSeVer2( spep_0 + 334, 1116, "",spep_0 + 380, 0, 20, -1);
SE014 = playSeVer2( spep_0 + 334, 1004, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_0 + 384, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 384, 1153, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE017 = playSeVer2( spep_0 + 412, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 418, 1121, "",spep_0 + 564, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 418, SE018, 62 );

--瞬間移動
SE019 = playSeVer2( spep_0 + 454, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE019, 116 );

--振りかぶる
SE020 = playSeVer2( spep_0 + 482, 1116, "",spep_0 + 528, 0, 22, -1);
SE021 = playSeVer2( spep_0 + 482, 1072, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 486, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 516, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE024 = playSeVer2( spep_0 + 544, 1187, "",spep_0 + 606, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 544, SE024, 72 );
SE025 = playSeVer2( spep_0 + 544, 1120, "",spep_0 + 608, 0, 16, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --600         

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--力む
SE027 = playSeVer2( spep_c + 88, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 88, SE027, 162 );
SE028 = playSeVer2( spep_c + 88, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 88, SE028, 68 );
SE029 = playSeVer2( spep_c + 88, 1226, "",spep_1 + 120, 0, 36, -1);
setSeVolumeByWorkId( spep_c + 88, SE029, 61 );

-------------------------------------------------
-- ビーム発射からラスト
-------------------------------------------------
MAX_FRAME_1 = 358;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ビーム発射からラスト：手前(ef_002)
setEffMoveKey( spep_1 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0f, 0);
setEffAlphaKey( spep_1 + 0, finish_0f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0f, 255);

finish_0b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0); -- ビーム発射からラスト：奥(ef_002b)
setEffMoveKey( spep_1 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0b, 0);
setEffAlphaKey( spep_1 + 0, finish_0b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp(spep_1 + 210 + OFFSET_X, 1, 1)
setDisp(spep_1 + 304 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 210 + OFFSET_X, 1, 5 );

setMoveKey( spep_1 + 210 + OFFSET_X, 1, 5.3, -24.5 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 5.3, -24.5 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 4.7, -21.4 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 4.7, -21.4 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 4.2, -18.8 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 4.2, -18.8 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 3.7, -16.5 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 3.7, -16.5 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 3.4, -14.5 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 3.4, -14.5 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 3, -12.8 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 3, -12.8 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 2.7, -11.2 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 2.7, -11.2 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 2.4, -9.9 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 2.4, -9.9 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 2.1, -8.6 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 2.1, -8.6 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 1.9, -7.6 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 1.9, -7.6 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 1.7, -6.7 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 1.7, -6.7 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 1.5, -5.8 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 1.5, -5.8 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 1.4, -5.2 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 1.4, -5.2 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 1.3, -4.5 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 1.3, -4.5 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 1.2, -3.9 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 1.2, -3.9 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -30.3, 11.8 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -30.3, 11.8 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, -15.8, 26 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, -15.8, 26 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 0.9, -2.5 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 0.9, -2.5 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 0.8, -2.2 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 0.8, -2.2 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, -30.6, 13.3 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, -30.6, 13.3 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, -16, 27.2 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, -16, 27.2 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 17.2, -10.2 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 17.2, -10.2 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, -20.2, -1.7 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, -20.2, -1.7 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 6.5, 21.7 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 6.5, 21.7 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, -30.8, 14.4 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, -30.8, 14.4 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, -5.7, -0.6 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, -5.7, -0.6 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 6.4, 22.2 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 6.4, 22.2 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, -30.9, 14.8 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, -30.9, 14.8 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, -5.8, -0.2 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, -5.8, -0.2 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 0.4, -0.1 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 0.4, -0.1 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, -12.2, -5.3 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, -12.2, -5.3 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, -7.8, 2.2 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, -7.8, 2.2 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, -12.2, -5.1 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, -12.2, -5.1 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, -7.8, 2.4 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, -7.8, 2.4 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, -12.2, -4.9 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, -12.2, -4.9 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, -7.8, 2.5 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, -7.8, 2.5 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, -12.3, -4.8 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, -12.3, -4.8 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, -7.8, 2.5 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, -7.8, 2.5 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, -12.3, -4.8 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, -12.3, -4.8 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, -7.9, 2.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, -7.9, 2.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, -12.3, -4.8 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, -12.3, -4.8 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, -7.8, 2.6 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, -7.8, 2.6 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, -12.3, -4.7 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, -12.3, -4.7 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, -7.8, 2.7 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, -7.8, 2.7 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, -12.3, -4.7 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, -12.3, -4.7 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, -7.9, 2.7 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, -7.9, 2.7 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, -12.4, -4.6 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, -12.4, -4.6 , 0 );

setScaleKey( spep_1 + 210 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 0.6, 0.59 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 0.6, 0.59 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 265 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 271 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 272 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 295 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 296 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 210 + OFFSET_X, 1, 16 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, 16 );

setBlendColor( spep_1 + 242 + OFFSET_X, 1, 3, 0.74, 0.79, 0.56, 0.9);
setBlendColor( spep_1 + 304 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--息を吸う
SE030 = playSeVer2( spep_1 + 58, 1004, "", 0, 0, 0, -1);
setPitch( spep_1 + 58, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );
SE031 = playSeVer2( spep_1 + 58, 63, "",spep_1 + 116, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 58, SE031, 79 );

--気弾発射
SE032 = playSeVer2( spep_1 + 144, 1146, "",spep_1 + 262, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 144, SE032, 63 );
SE033 = playSeVer2( spep_1 + 144, 1000, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_1 + 144, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 148, 1109, "", 0, 0, 0, -1);

--爆発
SE036 = playSeVer2( spep_1 + 222, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 226, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 242); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 358

end