--1030940:UR_セル(完全体)_必殺技：かめはめ波
--sp_effect_a1_00483
--sp2839

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163689; --開幕 ef_001
SP_02  = 163691; --腕先～フィニッシュ ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕
-------------------------------------------------
MAX_FRAME_0 = 556;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 20;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 376 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 484 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 376 + OFFSET_X , 1, 117 );

setMoveKey( spep_0 + 376 + OFFSET_X , 1, 216.9, 277.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X , 1, 216.9, 277.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X , 1, 221.7, 285.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X , 1, 221.7, 285.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X , 1, 225.9, 292.3 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X , 1, 225.9, 292.3 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X , 1, 229.5, 298.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X , 1, 229.5, 298.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X , 1, 232.6, 303.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X , 1, 232.6, 303.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X , 1, 235.1, 307.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X , 1, 235.1, 307.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X , 1, 237.1, 311 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X , 1, 237.1, 311 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X , 1, 238.5, 313.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X , 1, 238.5, 313.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X , 1, 239.3, 314.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X , 1, 239.3, 314.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X , 1, 239.6, 315.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X , 1, 239.6, 315.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X , 1, 239.9, 315.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X , 1, 239.9, 315.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X , 1, 240.3, 315.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X , 1, 240.3, 315.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X , 1, 240.6, 315.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X , 1, 240.6, 315.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X , 1, 240.9, 316 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X , 1, 240.9, 316 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X , 1, 241.2, 316.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X , 1, 241.2, 316.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X , 1, 241.5, 316.3 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X , 1, 241.5, 316.3 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X , 1, 241.8, 316.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X , 1, 241.8, 316.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X , 1, 242.2, 316.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X , 1, 242.2, 316.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X , 1, 242.5, 316.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X , 1, 242.5, 316.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X , 1, 242.8, 317 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X , 1, 242.8, 317 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X , 1, 243.1, 317.2 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X , 1, 243.1, 317.2 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X , 1, 243.4, 317.4 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X , 1, 243.4, 317.4 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X , 1, 243.8, 317.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X , 1, 243.8, 317.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X , 1, 243.9, 317.6 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X , 1, 243.9, 317.6 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X , 1, 244, 317.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X , 1, 244, 317.7 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X , 1, 244.1, 317.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X , 1, 244.1, 317.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X , 1, 244.1, 317.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X , 1, 244.1, 317.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X , 1, 244.2, 317.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X , 1, 244.2, 317.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X , 1, 244.3, 317.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X , 1, 244.3, 317.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X , 1, 244.3, 317.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X , 1, 244.3, 317.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X , 1, 244.4, 317.9 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X , 1, 244.4, 317.9 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X , 1, 244.5, 318 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X , 1, 244.5, 318 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X , 1, 244.6, 318 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, 244.6, 318 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, 244.7, 318.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X , 1, 244.7, 318.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, 244.8, 318.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X , 1, 244.8, 318.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X , 1, 244.9, 318.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X , 1, 244.9, 318.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X , 1, 245, 318.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X , 1, 245, 318.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X , 1, 245, 318.3 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X , 1, 245, 318.3 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X , 1, 245.1, 318.3 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X , 1, 245.1, 318.3 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X , 1, 245.2, 318.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X , 1, 245.2, 318.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X , 1, 245.3, 318.4 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X , 1, 245.3, 318.4 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X , 1, 245.4, 318.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X , 1, 245.4, 318.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X , 1, 245.4, 318.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X , 1, 245.4, 318.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X , 1, 245.5, 318.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X , 1, 245.5, 318.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X , 1, 245.6, 318.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X , 1, 245.6, 318.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X , 1, 245.6, 318.6 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X , 1, 245.6, 318.6 , 0 );

setScaleKey( spep_0 + 376 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_0 + 377 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_0 + 378 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 379 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 380 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_0 + 381 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_0 + 382 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 383 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 384 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 385 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 386 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 387 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 388 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 389 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 390 + OFFSET_X , 1, 0.37, 0.37 );
setScaleKey( spep_0 + 391 + OFFSET_X , 1, 0.37, 0.37 );
setScaleKey( spep_0 + 392 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 393 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 394 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 399 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 400 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_0 + 411 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_0 + 412 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_0 + 443 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_0 + 444 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_0 + 484 + OFFSET_X , 1, 0.3, 0.3 );

setRotateKey( spep_0 + 376 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 484 + OFFSET_X , 1, 0 );

setBlendColor( spep_0 + 376 + OFFSET_X , 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 426 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.63 );
setBlendColor( spep_0 + 484 + OFFSET_X , 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 18, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 60 );

--オーラ
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );

--腕クロスに
SE005 = playSeVer2( spep_0 + 36, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 77 );

--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 79 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 79 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 79 );
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE009, 79 );

--腕あわせる
SE010 = playSeVer2( spep_0 + 128, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE010, 65 );

--オーラ
SE011 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 79 );

--腕あわせる
SE012 = playSeVer2( spep_0 + 160, 1006, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 162, 1135, "", 0, 0, 0, -1);

--オーラ
SE014 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE014, 79 );
SE015 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 79 );

--構える
SE016 = playSeVer2( spep_0 + 210, 1116, "",spep_0 + 266, 0, 28, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE017, 79 );
SE018 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE018, 79 );
SE019 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE019, 79 );

--踏み込む
SE020 = playSeVer2( spep_0 + 278, 8, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE021, 79 );

--かめはめ波溜める
SE022 = playSeVer2( spep_0 + 412, 1210, "",spep_0 + 582, 12, 22, -1);
setStartTimeMs( SE022,  1733 );

--オーラ
SE023 = playSeVer2( spep_0 + 312, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE023, 79 );

--踏み込む
SE024 = playSeVer2( spep_0 + 310, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE024, 193 );

--オーラ
SE025 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE025, 79 );
SE026 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE026, 79 );
SE027 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE027, 79 );

--かめはめ波溜める
SE028 = playSeVer2( spep_0 + 396, 1209, "",spep_0 + 588, 0, 28, -1);

--オーラ
SE029 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE029, 79 );

--かめはめ波溜める
SE030 = playSeVer2( spep_0 + 406, 1239, "",spep_0 + 590, 0, 28, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE031, 79 );
SE032 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE032, 79 );
SE033 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE033, 79 );

--画面遷移
SE034 = playSeVer2( spep_0 + 476, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE034, 79 );

--オーラ
SE035 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE035, 79 );
SE036 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE036, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 556f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--かめはめ波発射
SE038 = playSeVer2( spep_1 + 90, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE038, 76 );
setPitch( spep_1 + 90, SE038, -100 );
setTimeStretch( SE038, 0.93, 30, 4 );
SE039 = playSeVer2( spep_1 + 90, 1146, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 90, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE040, 74 );


-------------------------------------------------
-- 腕先～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 408;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 腕先～フィニッシュ(ef_002)
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
setDisp( spep_2 + 116 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 180 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 116 + OFFSET_X , 1, 118 );
changeAnime( spep_2 + 170 + OFFSET_X , 1, 107 );

setMoveKey( spep_2 + 116 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X , 1, 8.8, 15.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X , 1, 8.8, 15.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X , 1, 4.5, 15.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X , 1, 4.5, 15.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X , 1, 6.7, 16.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X , 1, 6.7, 16.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X , 1, 3.7, 13.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X , 1, 3.7, 13.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X , 1, 9.5, 16.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X , 1, 9.5, 16.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X , 1, 6.7, 8.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X , 1, 6.7, 8.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X , 1, 6.7, 13.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X , 1, 6.7, 13.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X , 1, 3.5, 16.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X , 1, 3.5, 16.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X , 1, 29.1, 35.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X , 1, 29.1, 35.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X , 1, 25.8, -5.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X , 1, 25.8, -5.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X , 1, -7.8, 28 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X , 1, -7.8, 28 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X , 1, 17.3, 24.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X , 1, 17.3, 24.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X , 1, 0.1, 6.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X , 1, 0.1, 6.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X , 1, 9.8, 13.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X , 1, 9.8, 13.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X , 1, 4, 16.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X , 1, 4, 16.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X , 1, 6.7, 13.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X , 1, 6.7, 13.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X , 1, 6.7, 13.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X , 1, 109.8, -43.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X , 1, 109.8, -43.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X , 1, 214.1, -100.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X , 1, 214.1, -100.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X , 1, 318.1, -158 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X , 1, 318.1, -158 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X , 1, 422.1, -215.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X , 1, 422.1, -215.3 , 0 );

setScaleKey( spep_2 + 116 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 169 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 170 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_2 + 171 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_2 + 172 + OFFSET_X , 1, 2.83, 2.83 );
setScaleKey( spep_2 + 173 + OFFSET_X , 1, 2.83, 2.83 );
setScaleKey( spep_2 + 174 + OFFSET_X , 1, 5.01, 5.01 );
setScaleKey( spep_2 + 175 + OFFSET_X , 1, 5.01, 5.01 );
setScaleKey( spep_2 + 176 + OFFSET_X , 1, 7.19, 7.19 );
setScaleKey( spep_2 + 177 + OFFSET_X , 1, 7.19, 7.19 );
setScaleKey( spep_2 + 178 + OFFSET_X , 1, 9.37, 9.37 );
setScaleKey( spep_2 + 180 + OFFSET_X , 1, 9.37, 9.37 );

setRotateKey( spep_2 + 116 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 180 + OFFSET_X , 1, 0 );

setBlendColor( spep_2 + 115 + OFFSET_X , 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 116 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.18 );
setBlendColor( spep_2 + 130 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.24 );
setBlendColor( spep_2 + 136 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.33 );
setBlendColor( spep_2 + 146 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.37 );
setBlendColor( spep_2 + 148 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 150 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.46 );
setBlendColor( spep_2 + 166 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.57 );
setBlendColor( spep_2 + 170 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.63 );
setBlendColor( spep_2 + 182 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

--敵の動き2
setDisp( spep_2 + 194 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 194 + OFFSET_X , 1, 106 );

setMoveKey( spep_2 + 194 + OFFSET_X , 1, 22, 59.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, 22, 59.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, 26.4, 65 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, 26.4, 65 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, 30.8, 70.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, 30.8, 70.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, 35.2, 75.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, 35.2, 75.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, 145.9, 211.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, 145.9, 211.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, 210.3, 334 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, 210.3, 334 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, 262.9, 434.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, 262.9, 434.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, 303.9, 512.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, 303.9, 512.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, 333.2, 568.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, 333.2, 568.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, 350.8, 602 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, 350.8, 602 , 0 );

setScaleKey( spep_2 + 194 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 195 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 196 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 199 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 200 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 203 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 204 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 205 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 206 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_2 + 207 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_2 + 208 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 209 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 211 + OFFSET_X , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 212 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_2 + 214 + OFFSET_X , 1, 0.9, 0.9 );

setRotateKey( spep_2 + 194 + OFFSET_X , 1, -42.5 );
setRotateKey( spep_2 + 214 + OFFSET_X , 1, -42.5 );

setBlendColor( spep_2 + 192 + OFFSET_X , 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 194 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.2 );
setBlendColor( spep_2 + 202 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.25 );
setBlendColor( spep_2 + 214 + OFFSET_X , 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--かめはめ波中
SE041 = playSeVer2( spep_2 + 26, 1161, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 42, 1215, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 140; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE038, 0);
    stopSe( SP_dodge - 12, SE039, 0);
    stopSe( SP_dodge - 12, SE040, 0);
    stopSe( SP_dodge - 12, SE041, 0);
    stopSe( SP_dodge - 12, SE042, 0);
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0 );

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
--敵ヒット
SE043 = playSeVer2( spep_2 + 142, 1193, "",spep_2 + 352, 0, 78, -1);
SE044 = playSeVer2( spep_2 + 150, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE044, 84 );
SE045 = playSeVer2( spep_2 + 158, 1159, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE046 = playSeVer2( spep_2 + 208, 1027, "", 0, 0, 0, -1);

--宇宙へ
SE047 = playSeVer2( spep_2 + 264, 1296, "",spep_2 + 374, 0, 84, -1);
SE048 = playSeVer2( spep_2 + 264, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE048, 69 );
SE049 = playSeVer2( spep_2 + 264, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE049, 61 );
setTimeStretch( SE049, 0.66, 30, 4 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 408f -2f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕
-------------------------------------------------
MAX_FRAME_0 = 556;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 376 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 484 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 376 + OFFSET_X , 1, 17 );

setMoveKey( spep_0 + 376 + OFFSET_X , 1, -216.9, 277.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X , 1, -216.9, 277.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X , 1, -221.7, 285.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X , 1, -221.7, 285.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X , 1, -225.9, 292.3 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X , 1, -225.9, 292.3 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X , 1, -229.5, 298.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X , 1, -229.5, 298.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X , 1, -232.6, 303.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X , 1, -232.6, 303.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X , 1, -235.1, 307.7 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X , 1, -235.1, 307.7 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X , 1, -237.1, 311 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X , 1, -237.1, 311 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X , 1, -238.5, 313.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X , 1, -238.5, 313.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X , 1, -239.3, 314.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X , 1, -239.3, 314.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X , 1, -239.6, 315.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X , 1, -239.6, 315.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X , 1, -239.9, 315.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X , 1, -239.9, 315.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X , 1, -240.3, 315.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X , 1, -240.3, 315.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X , 1, -240.6, 315.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X , 1, -240.6, 315.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X , 1, -240.9, 316 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X , 1, -240.9, 316 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X , 1, -241.2, 316.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X , 1, -241.2, 316.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X , 1, -241.5, 316.3 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X , 1, -241.5, 316.3 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X , 1, -241.8, 316.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X , 1, -241.8, 316.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X , 1, -242.2, 316.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X , 1, -242.2, 316.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X , 1, -242.5, 316.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X , 1, -242.5, 316.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X , 1, -242.8, 317 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X , 1, -242.8, 317 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X , 1, -243.1, 317.2 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X , 1, -243.1, 317.2 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X , 1, -243.4, 317.4 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X , 1, -243.4, 317.4 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X , 1, -243.8, 317.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X , 1, -243.8, 317.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X , 1, -243.9, 317.6 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X , 1, -243.9, 317.6 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X , 1, -244, 317.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X , 1, -244, 317.7 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X , 1, -244.1, 317.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X , 1, -244.1, 317.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X , 1, -244.1, 317.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X , 1, -244.1, 317.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X , 1, -244.2, 317.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X , 1, -244.2, 317.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X , 1, -244.3, 317.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X , 1, -244.3, 317.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X , 1, -244.3, 317.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X , 1, -244.3, 317.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X , 1, -244.4, 317.9 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X , 1, -244.4, 317.9 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X , 1, -244.5, 318 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X , 1, -244.5, 318 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X , 1, -244.6, 318 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, -244.6, 318 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, -244.7, 318.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X , 1, -244.7, 318.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, -244.8, 318.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X , 1, -244.8, 318.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X , 1, -244.9, 318.2 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X , 1, -244.9, 318.2 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X , 1, -245, 318.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X , 1, -245, 318.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X , 1, -245, 318.3 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X , 1, -245, 318.3 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X , 1, -245.1, 318.3 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X , 1, -245.1, 318.3 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X , 1, -245.2, 318.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X , 1, -245.2, 318.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X , 1, -245.3, 318.4 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X , 1, -245.3, 318.4 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X , 1, -245.4, 318.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X , 1, -245.4, 318.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X , 1, -245.4, 318.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X , 1, -245.4, 318.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X , 1, -245.5, 318.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X , 1, -245.5, 318.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X , 1, -245.6, 318.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X , 1, -245.6, 318.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X , 1, -245.6, 318.6 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X , 1, -245.6, 318.6 , 0 );

setScaleKey( spep_0 + 376 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_0 + 377 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_0 + 378 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 379 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 380 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_0 + 381 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_0 + 382 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 383 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 384 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 385 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 386 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 387 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 388 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 389 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 390 + OFFSET_X , 1, 0.37, 0.37 );
setScaleKey( spep_0 + 391 + OFFSET_X , 1, 0.37, 0.37 );
setScaleKey( spep_0 + 392 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 393 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 394 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 399 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 400 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_0 + 411 + OFFSET_X , 1, 0.32, 0.32 );
setScaleKey( spep_0 + 412 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_0 + 443 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_0 + 444 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_0 + 484 + OFFSET_X , 1, 0.3, 0.3 );

setRotateKey( spep_0 + 376 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 484 + OFFSET_X , 1, 0 );

setBlendColor( spep_0 + 376 + OFFSET_X , 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 426 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.63 );
setBlendColor( spep_0 + 484 + OFFSET_X , 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 18, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE003, 60 );

--オーラ
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );

--腕クロスに
SE005 = playSeVer2( spep_0 + 36, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 77 );

--オーラ
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 79 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 79 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 79 );
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE009, 79 );

--腕あわせる
SE010 = playSeVer2( spep_0 + 128, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE010, 65 );

--オーラ
SE011 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 79 );

--腕あわせる
SE012 = playSeVer2( spep_0 + 160, 1006, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 162, 1135, "", 0, 0, 0, -1);

--オーラ
SE014 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE014, 79 );
SE015 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 79 );

--構える
SE016 = playSeVer2( spep_0 + 210, 1116, "",spep_0 + 266, 0, 28, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE017, 79 );
SE018 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE018, 79 );
SE019 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE019, 79 );

--踏み込む
SE020 = playSeVer2( spep_0 + 278, 8, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE021, 79 );

--かめはめ波溜める
SE022 = playSeVer2( spep_0 + 412, 1210, "",spep_0 + 582, 12, 22, -1);
setStartTimeMs( SE022,  1733 );

--オーラ
SE023 = playSeVer2( spep_0 + 312, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 312, SE023, 79 );

--踏み込む
SE024 = playSeVer2( spep_0 + 310, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE024, 193 );

--オーラ
SE025 = playSeVer2( spep_0 + 336, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE025, 79 );
SE026 = playSeVer2( spep_0 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE026, 79 );
SE027 = playSeVer2( spep_0 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE027, 79 );

--かめはめ波溜める
SE028 = playSeVer2( spep_0 + 396, 1209, "",spep_0 + 588, 0, 28, -1);

--オーラ
SE029 = playSeVer2( spep_0 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 408, SE029, 79 );

--かめはめ波溜める
SE030 = playSeVer2( spep_0 + 406, 1239, "",spep_0 + 590, 0, 28, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE031, 79 );
SE032 = playSeVer2( spep_0 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE032, 79 );
SE033 = playSeVer2( spep_0 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE033, 79 );

--画面遷移
SE034 = playSeVer2( spep_0 + 476, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE034, 79 );

--オーラ
SE035 = playSeVer2( spep_0 + 504, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE035, 79 );
SE036 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE036, 79 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 556f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--かめはめ波発射
SE038 = playSeVer2( spep_1 + 90, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE038, 76 );
setPitch( spep_1 + 90, SE038, -100 );
setTimeStretch( SE038, 0.93, 30, 4 );
SE039 = playSeVer2( spep_1 + 90, 1146, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 90, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE040, 74 );


-------------------------------------------------
-- 腕先～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 408;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 腕先～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 116 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 180 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 116 + OFFSET_X , 1, 18 );
changeAnime( spep_2 + 170 + OFFSET_X , 1, 7 );

setMoveKey( spep_2 + 116 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X , 1, -8.8, 15.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X , 1, -8.8, 15.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X , 1, -4.5, 15.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X , 1, -4.5, 15.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X , 1, -6.7, 16.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X , 1, -6.7, 16.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X , 1, -3.7, 13.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X , 1, -3.7, 13.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X , 1, -9.5, 16.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X , 1, -9.5, 16.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X , 1, -6.7, 8.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X , 1, -6.7, 8.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X , 1, -6.7, 13.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X , 1, -6.7, 13.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X , 1, -3.5, 16.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X , 1, -3.5, 16.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X , 1, -29.1, 35.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X , 1, -29.1, 35.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X , 1, -25.8, -5.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X , 1, -25.8, -5.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X , 1, 7.8, 28 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X , 1, 7.8, 28 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X , 1, -17.3, 24.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X , 1, -17.3, 24.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X , 1, -0.1, 6.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X , 1, -0.1, 6.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X , 1, -9.8, 13.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X , 1, -9.8, 13.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X , 1, -4, 16.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X , 1, -4, 16.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X , 1, -6.7, 13.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X , 1, -6.7, 13.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X , 1, -6.7, 13.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X , 1, -109.8, -43.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X , 1, -109.8, -43.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X , 1, -214.1, -100.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X , 1, -214.1, -100.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X , 1, -318.1, -158 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X , 1, -318.1, -158 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X , 1, -422.1, -215.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X , 1, -422.1, -215.3 , 0 );

setScaleKey( spep_2 + 116 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 169 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 170 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_2 + 171 + OFFSET_X , 1, 0.67, 0.67 );
setScaleKey( spep_2 + 172 + OFFSET_X , 1, 2.83, 2.83 );
setScaleKey( spep_2 + 173 + OFFSET_X , 1, 2.83, 2.83 );
setScaleKey( spep_2 + 174 + OFFSET_X , 1, 5.01, 5.01 );
setScaleKey( spep_2 + 175 + OFFSET_X , 1, 5.01, 5.01 );
setScaleKey( spep_2 + 176 + OFFSET_X , 1, 7.19, 7.19 );
setScaleKey( spep_2 + 177 + OFFSET_X , 1, 7.19, 7.19 );
setScaleKey( spep_2 + 178 + OFFSET_X , 1, 9.37, 9.37 );
setScaleKey( spep_2 + 180 + OFFSET_X , 1, 9.37, 9.37 );

setRotateKey( spep_2 + 116 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 180 + OFFSET_X , 1, 0 );

setBlendColor( spep_2 + 115 + OFFSET_X , 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 116 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.18 );
setBlendColor( spep_2 + 130 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.24 );
setBlendColor( spep_2 + 136 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.33 );
setBlendColor( spep_2 + 146 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.37 );
setBlendColor( spep_2 + 148 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.4 );
setBlendColor( spep_2 + 150 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.46 );
setBlendColor( spep_2 + 166 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.57 );
setBlendColor( spep_2 + 170 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.63 );
setBlendColor( spep_2 + 182 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

--敵の動き2
setDisp( spep_2 + 194 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 194 + OFFSET_X , 1, 6 );

setMoveKey( spep_2 + 194 + OFFSET_X , 1, -22, 59.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, -22, 59.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, -26.4, 65 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, -26.4, 65 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, -30.8, 70.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, -30.8, 70.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, -35.2, 75.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, -35.2, 75.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, -145.9, 211.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, -145.9, 211.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, -210.3, 334 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, -210.3, 334 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, -262.9, 434.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, -262.9, 434.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, -303.9, 512.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, -303.9, 512.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, -333.2, 568.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, -333.2, 568.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, -350.8, 602 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, -350.8, 602 , 0 );

setScaleKey( spep_2 + 194 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 195 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 196 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 199 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 200 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 203 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 204 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 205 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 206 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_2 + 207 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_2 + 208 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 209 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 211 + OFFSET_X , 1, 0.91, 0.91 );
setScaleKey( spep_2 + 212 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_2 + 214 + OFFSET_X , 1, 0.9, 0.9 );

setRotateKey( spep_2 + 194 + OFFSET_X , 1, 42.5 );
setRotateKey( spep_2 + 214 + OFFSET_X , 1, 42.5 );

setBlendColor( spep_2 + 192 + OFFSET_X , 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 194 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.2 );
setBlendColor( spep_2 + 202 + OFFSET_X , 1, 3, 1.0, 1.0, 1.0, 0.25 );
setBlendColor( spep_2 + 214 + OFFSET_X , 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--かめはめ波中
SE041 = playSeVer2( spep_2 + 26, 1161, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 42, 1215, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 140; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE038, 0);
    stopSe( SP_dodge - 12, SE039, 0);
    stopSe( SP_dodge - 12, SE040, 0);
    stopSe( SP_dodge - 12, SE041, 0);
    stopSe( SP_dodge - 12, SE042, 0);
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0 );

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
--敵ヒット
SE043 = playSeVer2( spep_2 + 142, 1193, "",spep_2 + 352, 0, 78, -1);
SE044 = playSeVer2( spep_2 + 150, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE044, 84 );
SE045 = playSeVer2( spep_2 + 158, 1159, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE046 = playSeVer2( spep_2 + 208, 1027, "", 0, 0, 0, -1);

--宇宙へ
SE047 = playSeVer2( spep_2 + 264, 1296, "",spep_2 + 374, 0, 84, -1);
SE048 = playSeVer2( spep_2 + 264, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE048, 69 );
SE049 = playSeVer2( spep_2 + 264, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE049, 61 );
setTimeStretch( SE049, 0.66, 30, 4 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 216); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 408f -2f


end