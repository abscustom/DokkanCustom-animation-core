--4028380:LR_ガンマ1号&ガンマ2号/ガンマ1号_フィニッシュ：決死の全エネルギー放出
--sp_effect_a9_00121
--fi0011

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162677; -- ef_001

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

           skipFrame(0, spep_0 + 500 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 500 -13, SP_01, spep_0 + 500 -13 + 2, 1); -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           skipFrame(0, spep_0 + 1100 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1100 , SP_01, spep_0 + 1100 -1 + 2, 1); -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       end

    else 

     setupMovie(0, SP_01, 0, 1); -- 通常再生時のsetupMovie

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- フィニッシュ演出
------------------------------------------------------

MAX_FRAME_0 = 1258;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --敵よりも前面 (ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景
 
-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 346 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 394 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 346 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 346 + OFFSET_X, 1, 151.9, 105.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 151.9, 105.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 151.4, 105.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 151.4, 105.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 150.9, 105.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 150.9, 105.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 150.4, 105.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 150.4, 105.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 149.9, 105.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 149.9, 105.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 149.5, 105.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 149.5, 105.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 149, 105.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 149, 105.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 148.5, 105.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 148.5, 105.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 148, 105.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 148, 105.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 147.5, 105.8 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 147.5, 105.8 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 147.1, 105.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 147.1, 105.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 146.6, 105.8 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 146.6, 105.8 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 146.1, 105.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 146.1, 105.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 145.6, 105.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 145.6, 105.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 145.2, 105.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 145.2, 105.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 144.7, 105.8 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 144.7, 105.8 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 144.2, 105.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 144.2, 105.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 143.7, 105.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 143.7, 105.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 143.2, 105.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 143.2, 105.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 142.8, 105.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 142.8, 105.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 142.3, 105.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 142.3, 105.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 141.8, 105.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 141.8, 105.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 141.3, 105.8 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 141.3, 105.8 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 140.9, 105.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 140.9, 105.8 , 0 );

setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_0 + 346 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -9.3 );

-- 敵の動き2
setDisp( spep_0 + 526 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 560 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 526 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 526 + OFFSET_X, 1, 14, -23.8, 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 14, -23.8, 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 18, -19.8 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 18, -19.8 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 22, -15.8 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 22, -15.8 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 17, -20.8 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 17, -20.8 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 12, -25.9 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 12, -25.9 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 16, -22.8 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 16, -22.8 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 20, -19.8 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 20, -19.8 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 16, -15.8 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 16, -15.8 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 12, -11.8 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 12, -11.8 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 13, -17.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 13, -17.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 14, -23.8 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 14, -23.8 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 18, -19.8 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 18, -19.8 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 22, -15.8 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 22, -15.8 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 17, -20.8 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 17, -20.8 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 12, -25.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 12, -25.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 16, -22.8 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 16, -22.8 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 20, -19.8 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 20, -19.8 , 0 );

setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.21, 1.21 );

setRotateKey( spep_0 + 526 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, -9.3 );

-- 敵の動き3
setDisp( spep_0 + 620 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 624 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 620 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 620 + OFFSET_X, 1, 145.9, -51.8 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 145.9, -51.8 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 145.9, -48.8 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 145.9, -48.8 , 0 );

setScaleKey( spep_0 + 620 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 620 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 624 + OFFSET_X, 1, 26.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 292, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 294, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 290, 0, 24, -1);
SE004 = playSeVer2( spep_0 + 0, 1444, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 158 );

--気が弾ける
SE005 = playSeVer2( spep_0 + 34, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE005, 81 );
SE006 = playSeVer2( spep_0 + 34, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE006, 83 );
SE007 = playSeVer2( spep_0 + 34, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 75 );

--オーラ
SE008 = playSeVer2( spep_0 + 66, 1412, "",spep_0 + 278, 0, 24, -1);
setPitch( spep_0 + 66, SE008, 400 );
setTimeStretch( SE008, 1.27, 30, 4 );

--セリフカットイン
SE009 = playSeVer2( spep_0 + 84, 1018, "", 0, 0, 0, -1);

--気が弾ける２
SE010 = playSeVer2( spep_0 + 90, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE010, 58 );
SE011 = playSeVer2( spep_0 + 94, 1026, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 102, 1052, "", 0, 0, 0, -1);

--画面遷移
SE013 = playSeVer2( spep_0 + 160, 1072, "", 0, 0, 0, -1);

--飛び込む
SE014 = playSeVer2( spep_0 + 238, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE014, 94 );
SE015 = playSeVer2( spep_0 + 244, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE015, 115 );
SE016 = playSeVer2( spep_0 + 244, 1360, "",spep_0 + 308, 0, 28, -1);
SE017 = playSeVer2( spep_0 + 248, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE017, 145 );

--画面遷移
SE018 = playSeVer2( spep_0 + 290, 1232, "", 0, 0, 0, -1);

--雲の隙間から光あふれる
SE019 = playSeVer2( spep_0 + 290, 1350, "",spep_0 + 466, 0, 58, -1);
SE020 = playSeVer2( spep_0 + 320, 1307, "",spep_0 + 464, 0, 52, -1);
setPitch( spep_0 + 320, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_0 + 348, 1229, "",spep_0 + 466, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 348, SE021, 133 );

--落ちてくる
SE022 = playSeVer2( spep_0 + 408, 1356, "",spep_0 + 660, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 408, SE022, 70 );
SE023 = playSeVer2( spep_0 + 408, 1227, "",spep_0 + 658, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 408, SE023, 70 );
SE024 = playSeVer2( spep_0 + 408, 1215, "",spep_0 + 658, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 408, SE024, 70 );
setSeVolumeByWorkId( spep_0 + 536, SE024, 65 );
setSeVolumeByWorkId( spep_0 + 540, SE024, 60 );
setSeVolumeByWorkId( spep_0 + 542, SE024, 55 );
setSeVolumeByWorkId( spep_0 + 544, SE024, 50 );
SE025 = playSeVer2( spep_0 + 408, 1210, "",spep_0 + 652, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 408, SE025, 76 );
setSeVolumeByWorkId( spep_0 + 538, SE025, 65 );
setSeVolumeByWorkId( spep_0 + 540, SE025, 60 );
setSeVolumeByWorkId( spep_0 + 542, SE025, 55 );
setSeVolumeByWorkId( spep_0 + 544, SE025, 50 );
setPitch( spep_0 + 408, SE025, 400 );
setTimeStretch( SE025, 1.27, 30, 4 );
SE026 = playSeVer2( spep_0 + 410, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE026, 70 );
SE027 = playSeVer2( spep_0 + 474, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE027, 70 );

-- ** ボイス ** --
--「残りのエネルギー全てを込める！！」
playVoice( spep_0 + 84, 754 );
setVoiceVolume( spep_0 + 84, 754, 100 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_0 + 500 ; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE027, 0);

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
--落ちてくる
SE028 = playSeVer2( spep_0 + 538, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE028, 70 );

--加速する
SE029 = playSeVer2( spep_0 + 546, 1326, "",spep_0 + 640, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 546, SE029, 70 );

--更に加速する
SE030 = playSeVer2( spep_0 + 654, 1215, "",spep_0 + 842, 10, 50, -1);
setSeVolumeByWorkId( spep_0 + 654, SE030, 70 );
setStartTimeMs( SE030,  1400 );

--爆発
SE031 = playSeVer2( spep_0 + 612, 1069, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 612, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 612, SE032, 65 );
setBandpassFilter  ( spep_0 + 612, SE032, 200, 2000 );
SE033 = playSeVer2( spep_0 + 632, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE033, 65 );
setBandpassFilter  ( spep_0 + 632, SE033, 200, 2000 );

--更に加速する
SE034 = playSeVer2( spep_0 + 664, 1356, "",spep_0 + 840, 12, 50, -1);
setSeVolumeByWorkId( spep_0 + 664, SE034, 70 );
setStartTimeMs( SE034,  433 );
SE035 = playSeVer2( spep_0 + 646, 1227, "",spep_0 + 842, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 646, SE035, 70 );

--更に更に加速する
SE036 = playSeVer2( spep_0 + 900, 1210, "",spep_0 + 1084, 8, 76, -1);
setSeVolumeByWorkId( spep_0 + 900, SE036, 60 );
setStartTimeMs( SE036,  3967 );
setPitch( spep_0 + 900, SE036, 400 );
setTimeStretch( SE036, 1.27, 30, 4 );

--地面揺れる
SE037 = playSeVer2( spep_0 + 728, 1044, "",spep_0 + 834, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 728, SE037, 50 );
SE038 = playSeVer2( spep_0 + 728, 1226, "",spep_0 + 826, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 728, SE038, 50 );

--爆発する
SE039 = playSeVer2( spep_0 + 788, 1159, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 788, 1258, "", 0, 0, 0, -1);

--更に更に加速する
SE041 = playSeVer2( spep_0 + 888, 1215, "",spep_0 + 1066, 10, 68, -1);
setSeVolumeByWorkId( spep_0 + 888, SE041, 60 );
setStartTimeMs( SE041,  1400 );
setPitch( spep_0 + 888, SE041, 400 );
setTimeStretch( SE041, 1.27, 30, 4 );

--爆発する２
SE042 = playSeVer2( spep_0 + 856, 1067, "", 0, 0, 0, -1);

--更に更に加速する
SE043 = playSeVer2( spep_0 + 888, 1356, "",spep_0 + 1070, 12, 76, -1);
setSeVolumeByWorkId( spep_0 + 888, SE043, 60 );
setStartTimeMs( SE043,  400 );
setPitch( spep_0 + 888, SE043, 400 );
setTimeStretch( SE043, 1.27, 30, 4 );
SE044 = playSeVer2( spep_0 + 880, 1227, "",spep_0 + 1068, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 880, SE044, 60 );
setPitch( spep_0 + 880, SE044, 400 );
setTimeStretch( SE044, 1.27, 30, 4 );

--ラスト連続爆発
SE045 = playSeVer2( spep_0 + 996, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 996, SE045, 77 );
SE046 = playSeVer2( spep_0 + 996, 1068, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 1012, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1012, SE047, 91 );
SE048 = playSeVer2( spep_0 + 1048, 1120, "", 0, 0, 0, -1);
setPitch( spep_0 + 1048, SE048, 400 );
setTimeStretch( SE048, 1.27, 30, 4 );
SE049 = playSeVer2( spep_0 + 1048, 1188, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 1050, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1050, SE050, 115 );

--環境音
SE051 = playSeVer2( spep_0 + 1110, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1110, SE051, 184 );

-- ** ボイス ** --
--「はああああっ！！！！」
playVoice( spep_0 + 540, 755 );
setVoiceVolume( spep_0 + 540, 755, 90 );

--「うぐああぁぁっ！！！！」
playVoice( spep_0 + 898, 756 );
setVoiceVolume( spep_0 + 898, 756, 95 );

-- ** ダメージ表示 ** --
-- hideKoScreen();
dealDamage( spep_0 + 1158 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 1258

end