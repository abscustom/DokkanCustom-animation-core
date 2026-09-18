-- 4032370:UR_ガンマ1号+アルティメット孫悟飯_アクティブ必殺：ヒロイックコンビネーション
-- sp_effect_b1_00355
-- ut00113

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 164332;  --   ef_001 スタート〜KO


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
           skipFrame(0, spep_0 + 340 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 340 -13, SP_01, spep_0 + 340 -13 + 2, 1);

       else
           skipFrame(0, spep_0 + 904 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 904 , SP_01, spep_0 + 904 - 1 + 2, 1);
        
           --二人で向かっていく
           SE025 = playSeVer2( spep_0 + 904, 1182, "", 0, 0, 0, -1);
           SE026 = playSeVer2( spep_0 + 904, 1258, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 904, SE026, 74 );
           --加速する
           SE036 = playSeVer2( spep_0 + 904, 1356, "",spep_0 + 1026, 0, 38, -1);
           setPitch( spep_0 + 904, SE036, 400 );
           setTimeStretch( SE036, 1.27, 30, 4 );

       end
    else
        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- スタート〜KO
------------------------------------------------------
MAX_FRAME_0 = 1152;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜KO(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 392 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 314 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 354 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 374 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 314 + OFFSET_X, 1, 11.8, 40.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 11.8, 40.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 11.8, 40.3 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 11.8, 40.3 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 11.7, 40.5 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 11.7, 40.5 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 11.7, 40.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 11.7, 40.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 11.6, 40.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 11.6, 40.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 11.6, 40.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 11.6, 40.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 11.5, 41 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 11.5, 41 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -237.6, -68.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -237.6, -68.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -207.5, -79.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -207.5, -79.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -170.9, -79.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -170.9, -79.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -119.6, -40.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -119.6, -40.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 15.9, 120.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 15.9, 120.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 5.4, 123.8 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 5.4, 123.8 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 135, 194.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 135, 194.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 241.3, 268 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 241.3, 268 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 339, 344.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 339, 344.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 441.1, 392.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 441.1, 392.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 533.8, 412.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 533.8, 412.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 576.8, 454.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 576.8, 454.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 609, 465 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 609, 465 , 0 );

setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 314 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 34 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 34 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 40 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 40 );

setBlendColor( spep_0 + 314 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_0 + 392 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );

--敵の動き2
setDisp( spep_0 + 402 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 446 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 402 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 414 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 402 + OFFSET_X, 1, -334, -359.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -334, -359.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -151.3, -198.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -151.3, -198.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 5.6, -80.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 5.6, -80.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 117.5, -41.3 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 117.5, -41.3 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 78.7, 1.6 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 78.7, 1.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 14.1, -32.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 14.1, -32.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 37.7, 3.6 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 37.7, 3.6 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 27.7, -14.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 27.7, -14.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 158.1, 164.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 158.1, 164.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 168.7, 195.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 168.7, 195.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 168.7, 195.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 168.7, 195.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 247.3, 314.7 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 247.3, 314.7 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 317.5, 472 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 317.5, 472 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 317.5, 471.9 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 317.5, 471.9 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 331.9, 473.7 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 331.9, 473.7 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 493, 794 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 493, 794 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 483.1, 803 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 483.1, 803 , 0 );

setScaleKey( spep_0 + 402 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 402 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -30 );

setBlendColor( spep_0 + 402 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_0 + 446 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );

--敵の動き3
setDisp( spep_0 + 646 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 702 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 646 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 646 + OFFSET_X, 1, 0.6, 811.7 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 0.6, 811.7 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 1.2, 803 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 1.2, 803 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 1.8, 792.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 1.8, 792.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 0.9, 786.2 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 0.9, 786.2 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 3, 777.1 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 3, 777.1 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 1, 763.9 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, 1, 763.9 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 4.1, 759 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 4.1, 759 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 4.8, 747 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, 4.8, 747 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 3.7, 728.7 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, 3.7, 728.7 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 2.1, 722.8 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 2.1, 722.8 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 1.3, 702.3 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 1.3, 702.3 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -1.1, 687.9 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, -1.1, 687.9 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -3.5, 673.2 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, -3.5, 673.2 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 1.5, 663.4 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 1.5, 663.4 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 12.7, 649.6 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 12.7, 649.6 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, -7.8, 638 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, -7.8, 638 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 14, 604 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 14, 604 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 7, 603 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 7, 603 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 4.7, 573.7 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 4.7, 573.7 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 8.5, 546.6 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 8.5, 546.6 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 5.2, 507 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 5.2, 507 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 5.7, 475.8 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 5.7, 475.8 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 12.2, 440.5 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 12.2, 440.5 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 2.8, 396 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 2.8, 396 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 9.7, 356.8 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 9.7, 356.8 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 5.7, 284.4 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 5.7, 284.4 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 6.4, 213 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 6.4, 213 , 0 );

setScaleKey( spep_0 + 646 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_0 + 646 + OFFSET_X, 1, -90 );
setRotateKey( spep_0 + 702 + OFFSET_X, 1, -90 );

setBlendColor( spep_0 + 646 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_0 + 702 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );

--敵の動き4
setDisp( spep_0 + 822 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 962 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 822 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 902 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 822 + OFFSET_X, 1, 167, 160.1 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 167, 160.1 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 163, 164.1 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 163, 164.1 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 163, 486.6 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 163, 486.6 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 163, 490.6 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 163, 490.6 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 167, 321.4 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 167, 321.4 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 135.4, 353.5 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, 135.4, 353.5 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 141.5, 333.3 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 141.5, 333.3 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 138.6, 353.5 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 138.6, 353.5 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 134.9, 352.7 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 134.9, 352.7 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 135.8, 350 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, 135.8, 350 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, 165.8, 353.5 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 165.8, 353.5 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, 139.3, 346.7 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 139.3, 346.7 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 157.6, 335 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 157.6, 335 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 158.5, 353.5 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, 158.5, 353.5 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, 174.4, 322.9 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, 174.4, 322.9 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, 174.5, 322.9 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, 174.5, 322.9 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, 165.6, 315.2 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, 165.6, 315.2 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 165.5, 315.1 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, 165.5, 315.1 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, 152.3, 353.5 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 152.3, 353.5 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 155.3, 301.8 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 155.3, 301.8 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 190.2, 323.4 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 190.2, 323.4 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 164.7, 304.2 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 164.7, 304.2 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 164.7, 304.1 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 164.7, 304.1 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 9.1, 114.5 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 9.1, 114.5 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, -3.9, 136.2 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, -3.9, 136.2 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 8.7, 151.1 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 8.7, 151.1 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, -6.6, 138.2 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, -6.6, 138.2 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 9, 148.5 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 9, 148.5 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 2.1, 141.3 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 2.1, 141.3 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 19.4, 155.2 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 19.4, 155.2 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 7.2, 164.8 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, 7.2, 164.8 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 22.5, 159.9 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 22.5, 159.9 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, -4.5, 170.6 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, -4.5, 170.6 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 2.6, 152.3 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 2.6, 152.3 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 9.3, 170.8 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 9.3, 170.8 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 1.8, 157.6 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 1.8, 157.6 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, -3.3, 157.6 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, -3.3, 157.6 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 8.6, 167 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 8.6, 167 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 8.1, 161.4 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 8.1, 161.4 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, -8.2, 173.8 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, -8.2, 173.8 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, -1.5, 180.8 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, -1.5, 180.8 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 2.6, 192.4 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 2.6, 192.4 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 19.9, 189.8 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 19.9, 189.8 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, -7.4, 191.1 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, -7.4, 191.1 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 10.5, 192 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 10.5, 192 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 5.8, 193.5 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 5.8, 193.5 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 15.9, 199.5 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 15.9, 199.5 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 5.7, 203.2 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 5.7, 203.2 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 0.1, 209.9 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 0.1, 209.9 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 9.4, 232.7 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 9.4, 232.7 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, -3.1, 217.6 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, -3.1, 217.6 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, -4, 244.3 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, -4, 244.3 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, -15.2, 310.4 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, -15.2, 310.4 , 0 );

setScaleKey( spep_0 + 822 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 901 + OFFSET_X, 1, 15, 15 );
setScaleKey( spep_0 + 902 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 962 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_0 + 822 + OFFSET_X, 1, -135 );
setRotateKey( spep_0 + 901 + OFFSET_X, 1, -135 );
setRotateKey( spep_0 + 902 + OFFSET_X, 1, -90 );
setRotateKey( spep_0 + 962 + OFFSET_X, 1, -90 );

setBlendColor( spep_0 + 822 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_0 + 902 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_0 + 962 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

--敵の動き5
setDisp( spep_0 + 1004 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1010 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1004 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1004 + OFFSET_X, 1, -0.2, -158.7 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, -0.2, -158.7 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, -2.4, 82.1 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, -2.4, 82.1 , 0 );

setScaleKey( spep_0 + 1004 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 1007 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 1008 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 1010 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 1004 + OFFSET_X, 1, -80 );
setRotateKey( spep_0 + 1007 + OFFSET_X, 1, -80 );
setRotateKey( spep_0 + 1008 + OFFSET_X, 1, -80.2 );
setRotateKey( spep_0 + 1010 + OFFSET_X, 1, -80.2 );

setBlendColor( spep_0 + 1004 + OFFSET_X, 1, 3, 0.25, 0.745, 0.917, 0.5 );
setBlendColor( spep_0 + 1008 + OFFSET_X, 1, 3, 0.5, 0.745, 0.917, 0.7 );
setBlendColor( spep_0 + 1010 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 288, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 63 );

--二人向かっていく
SE003 = playSeVer2( spep_0 + 232, 8, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 248, 1452, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 274, 1019, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 288, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE006, 50 );
setTimeStretch( SE006, 1.4, 30, 4 );


-- ** ボイス ** --
--「もっと強い攻撃じゃないと…！」
playVoice( spep_0 + 0, 1129 );
setVoiceVolume( spep_0 + 0, 1129, 124 );

--「ふたり同時に仕掛けよう！」
playVoice( spep_0 + 126, 1130 );
setVoiceVolume( spep_0 + 126, 1130, 124 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 340; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--二人向かっていく
SE007 = playSeVer2( spep_0 + 338, 1019, "", 0, 0, 0, -1);

--悟飯パンチ
SE008 = playSeVer2( spep_0 + 360, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 370, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE009, 79 );
SE010 = playSeVer2( spep_0 + 370, 1110, "", 0, 0, 0, -1);

--ガンマ向かっていく
SE011 = playSeVer2( spep_0 + 386, 1277, "", 0, 0, 0, -1);

--ガンマ殴り飛ばす
SE012 = playSeVer2( spep_0 + 416, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 416, 1120, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 416, 1387, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 416, SE014, 69 );

--悟飯合流
SE015 = playSeVer2( spep_0 + 456, 1117, "",spep_0 + 552, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 456, SE015, 136 );
SE016 = playSeVer2( spep_0 + 456, 63, "",spep_0 + 536, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 456, SE016, 77 );

--悟飯気ダメ
SE017 = playSeVer2( spep_0 + 506, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE017, 136 );
SE018 = playSeVer2( spep_0 + 510, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE018, 77 );
SE019 = playSeVer2( spep_0 + 524, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE019, 72 );
SE020 = playSeVer2( spep_0 + 524, 1513, "",spep_0 + 648, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 524, SE020, 67 );

--オーラ
SE021 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE021, 50 );
SE022 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 548, SE022, 50 );
SE023 = playSeVer2( spep_0 + 572, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE023, 50 );
SE024 = playSeVer2( spep_0 + 596, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE024, 50 );
SE027 = playSeVer2( spep_0 + 620, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 620, SE027, 50 );

--二人で向かっていく
SE025 = playSeVer2( spep_0 + 618, 1182, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 618, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE026, 74 );
SE028 = playSeVer2( spep_0 + 644, 1314, "",spep_0 + 1030, 0, 46, -1);
SE029 = playSeVer2( spep_0 + 672, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE029, 83 );
SE030 = playSeVer2( spep_0 + 672, 1116, "",spep_0 + 754, 0, 46, -1);
SE031 = playSeVer2( spep_0 + 724, 1513, "",spep_0 + 894, 0, 48, -1);
SE032 = playSeVer2( spep_0 + 764, 1304, "", 0, 0, 0, -1);

--パンチヒット
SE033 = playSeVer2( spep_0 + 826, 1068, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 826, 1049, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 826, 1187, "", 0, 0, 0, -1);

--加速する
SE036 = playSeVer2( spep_0 + 888, 1356, "",spep_0 + 1026, 0, 38, -1);
setPitch( spep_0 + 888, SE036, 400 );
setTimeStretch( SE036, 1.27, 30, 4 );

--弾ける
SE037 = playSeVer2( spep_0 + 968, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 968, SE037, 79 );
SE038 = playSeVer2( spep_0 + 968, 1126, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 968, 1067, "", 0, 0, 0, -1);

--敵飛んでいく
SE040 = playSeVer2( spep_0 + 1008, 1145, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 1008, 1258, "",spep_0 + 1114, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 1008, SE041, 72 );
SE042 = playSeVer2( spep_0 + 1008, 1511, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1008, SE042, 71 );

--オーラ
SE043 = playSeVer2( spep_0 + 1060, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1060, SE043, 40 );
SE044 = playSeVer2( spep_0 + 1084, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1084, SE044, 40 );
SE045 = playSeVer2( spep_0 + 1108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1108, SE045, 40 );
SE046 = playSeVer2( spep_0 + 1132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1132, SE046, 40 );


-- ** ボイス ** --
--「いくぞ！！！！」
playVoice( spep_0 + 552, 1131 );
setVoiceVolume( spep_0 + 552, 1131, 128 );

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_0 + 1012 );
fadeKoLabel(1,0.5)
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1152F

else end
