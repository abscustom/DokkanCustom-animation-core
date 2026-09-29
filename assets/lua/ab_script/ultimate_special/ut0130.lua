--1034200:LR_超サイヤ人3孫悟空_アクティブ必殺：超元気玉
--sp_effect_a2_00284
--ut0130

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164581; --前面 ef_001
SP_02  = 164582; --背面 ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);

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

--[[
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

--setAlphaKey( 0, 1, 255 );
]]


ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 356 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 356 - 13, SP_01, spep_0 + 356 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           timing_skip = 1940;

           skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
           setupMovie(spep_0 + timing_skip, SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 敵キャラクター ** --
           --敵の動き
           setMoveKey( spep_0 + 1940, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載

           -- ** 音 ** --
           --元気玉溜め音
           SE025 = playSeVer2( spep_0 + 1940 + 1, 1396, "",spep_0 + 2284, 0, 23, -1);
           setSeVolumeByWorkId( spep_0 + 1940 + 1, SE025, 63 )

           --オーラ
           SE048 = playSeVer2( spep_0 + 1940 + 1, 1036, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1940 + 1, SE048, 63 );

           --顔アップ
           SE049 = playSeVer2( spep_0 + 1940 + 1, 1307, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1940 + 1, SE049, 143 );
           SE050 = playSeVer2( spep_0 + 1940 + 1, 1263, "",spep_0 + 2075, 0, 52, -1);

           -- ** ボイス ** --

       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 2384;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 背面(ef_002)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 68 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -222, -90 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -222.9, -90 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -222.9, -90 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -223.8, -90 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -223.8, -90 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -224.7, -90 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -224.7, -90 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -225.6, -90 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -225.6, -90 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -226.5, -90 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -226.5, -90 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -227.5, -90 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -227.5, -90 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -228.4, -90 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -228.4, -90 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -229.3, -90 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -229.3, -90 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -230.2, -90 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -230.2, -90 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -231.1, -90 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -231.1, -90 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -232, -90 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -232, -90 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -232.9, -90 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -232.9, -90 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -233.8, -90 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -233.8, -90 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -234.7, -90 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -234.7, -90 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -235.6, -90 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -235.6, -90 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -236.5, -90 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -236.5, -90 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -237.5, -90 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -237.5, -90 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -238.4, -90 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -238.4, -90 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -239.3, -90 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -239.3, -90 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -240.2, -90 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -240.2, -90 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -241.1, -90 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -241.1, -90 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -242, -90 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -242, -90 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -242.9, -90 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -242.9, -90 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -243.8, -90 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -243.8, -90 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -244.7, -90 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -244.7, -90 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -245.6, -90 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -245.6, -90 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -246.5, -90 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -246.5, -90 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -247.5, -90 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -247.5, -90 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -248.4, -90 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -248.4, -90 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -249.3, -90 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -249.3, -90 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -250.2, -90 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -250.2, -90 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -251.1, -90 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -251.1, -90 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -252, -90 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -252, -90 , 0 );

setScaleKey( spep_0 + 0, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 2.17, 2.17 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 0 );


-- 敵の動き2
setDisp( spep_0 + 348 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 418 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 348 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 370 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 348 + OFFSET_X, 1, 17.5, -90.6 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 17.5, -90.6 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 28.4, -52.9 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 28.4, -52.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 109.5, 2.8 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 109.5, 2.8 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 59.4, -42 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 59.4, -42 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 101.6, -13.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 101.6, -13.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 119.3, -5.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 119.3, -5.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 140.1, 6 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 140.1, 6 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 122.7, -15.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 122.7, -15.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 165.8, 3.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 165.8, 3.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 146.3, -8.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 146.3, -8.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 150.9, 7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 150.9, 7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 159.5, -2.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 159.5, -2.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 171, 8.8 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 171, 8.8 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 164.1, 3.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 164.1, 3.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 173.4, 11 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 173.4, 11 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 170.2, 4.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 170.2, 4.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 173.4, 6.7 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 173.4, 6.7 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 172.6, 4.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 172.6, 4.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 174.5, 8.8 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 174.5, 8.8 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 173.8, 4.4 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 173.8, 4.4 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 175.6, 7.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 175.6, 7.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 175.3, 6.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 175.3, 6.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 173.7, 8.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 173.7, 8.4 , 0 );

setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 348 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 0 );


-- 敵の動き3
setDisp( spep_0 + 1674 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1682 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1674 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 1674 + OFFSET_X, 1, 10.1, -116.1 , 0 );
setMoveKey( spep_0 + 1682 + OFFSET_X, 1, 10.1, -116.1 , 0 );

setScaleKey( spep_0 + 1674 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 1682 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 1674 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 1682 + OFFSET_X, 1, -11.3 );

setBlendColor( spep_0 + 1674 + OFFSET_X, 1, 3, 0, 0.6, 1.0, 0.37 );
setBlendColor( spep_0 + 1682 + OFFSET_X, 1, 0, 0, 0, 0, 0 );


-- 敵の動き4
setDisp( spep_0 + 2070 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 2136 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 2070 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 2070 + OFFSET_X, 1, 50, -56.1 , 0 );
setMoveKey( spep_0 + 2071 + OFFSET_X, 1, 50, -56.1 , 0 );
setMoveKey( spep_0 + 2072 + OFFSET_X, 1, 47.2, -56.4 , 0 );
setMoveKey( spep_0 + 2073 + OFFSET_X, 1, 47.2, -56.4 , 0 );
setMoveKey( spep_0 + 2074 + OFFSET_X, 1, 44.4, -56.6 , 0 );
setMoveKey( spep_0 + 2075 + OFFSET_X, 1, 44.4, -56.6 , 0 );
setMoveKey( spep_0 + 2076 + OFFSET_X, 1, 41.5, -56.8 , 0 );
setMoveKey( spep_0 + 2077 + OFFSET_X, 1, 41.5, -56.8 , 0 );
setMoveKey( spep_0 + 2078 + OFFSET_X, 1, 38.7, -56.9 , 0 );
setMoveKey( spep_0 + 2079 + OFFSET_X, 1, 38.7, -56.9 , 0 );
setMoveKey( spep_0 + 2080 + OFFSET_X, 1, 35.8, -57.1 , 0 );
setMoveKey( spep_0 + 2081 + OFFSET_X, 1, 35.8, -57.1 , 0 );
setMoveKey( spep_0 + 2082 + OFFSET_X, 1, 33, -57.3 , 0 );
setMoveKey( spep_0 + 2083 + OFFSET_X, 1, 33, -57.3 , 0 );
setMoveKey( spep_0 + 2084 + OFFSET_X, 1, 30.1, -57.4 , 0 );
setMoveKey( spep_0 + 2085 + OFFSET_X, 1, 30.1, -57.4 , 0 );
setMoveKey( spep_0 + 2086 + OFFSET_X, 1, 27.2, -57.7 , 0 );
setMoveKey( spep_0 + 2087 + OFFSET_X, 1, 27.2, -57.7 , 0 );
setMoveKey( spep_0 + 2088 + OFFSET_X, 1, 24.4, -57.8 , 0 );
setMoveKey( spep_0 + 2089 + OFFSET_X, 1, 24.4, -57.8 , 0 );
setMoveKey( spep_0 + 2090 + OFFSET_X, 1, 21.5, -58 , 0 );
setMoveKey( spep_0 + 2091 + OFFSET_X, 1, 21.5, -58 , 0 );
setMoveKey( spep_0 + 2092 + OFFSET_X, 1, 18.7, -58.2 , 0 );
setMoveKey( spep_0 + 2093 + OFFSET_X, 1, 18.7, -58.2 , 0 );
setMoveKey( spep_0 + 2094 + OFFSET_X, 1, 15.8, -58.3 , 0 );
setMoveKey( spep_0 + 2095 + OFFSET_X, 1, 15.8, -58.3 , 0 );
setMoveKey( spep_0 + 2096 + OFFSET_X, 1, 13, -58.6 , 0 );
setMoveKey( spep_0 + 2097 + OFFSET_X, 1, 13, -58.6 , 0 );
setMoveKey( spep_0 + 2098 + OFFSET_X, 1, 10.2, -58.7 , 0 );
setMoveKey( spep_0 + 2099 + OFFSET_X, 1, 10.2, -58.7 , 0 );
setMoveKey( spep_0 + 2100 + OFFSET_X, 1, 7.3, -58.9 , 0 );
setMoveKey( spep_0 + 2101 + OFFSET_X, 1, 7.3, -58.9 , 0 );
setMoveKey( spep_0 + 2102 + OFFSET_X, 1, 4.5, -59.1 , 0 );
setMoveKey( spep_0 + 2103 + OFFSET_X, 1, 4.5, -59.1 , 0 );
setMoveKey( spep_0 + 2104 + OFFSET_X, 1, 1.6, -59.2 , 0 );
setMoveKey( spep_0 + 2105 + OFFSET_X, 1, 1.6, -59.2 , 0 );
setMoveKey( spep_0 + 2106 + OFFSET_X, 1, -1.2, -59.5 , 0 );
setMoveKey( spep_0 + 2107 + OFFSET_X, 1, -1.2, -59.5 , 0 );
setMoveKey( spep_0 + 2108 + OFFSET_X, 1, -4, -59.6 , 0 );
setMoveKey( spep_0 + 2109 + OFFSET_X, 1, -4, -59.6 , 0 );
setMoveKey( spep_0 + 2110 + OFFSET_X, 1, -6.9, -59.8 , 0 );
setMoveKey( spep_0 + 2111 + OFFSET_X, 1, -6.9, -59.8 , 0 );
setMoveKey( spep_0 + 2112 + OFFSET_X, 1, -9.7, -60 , 0 );
setMoveKey( spep_0 + 2113 + OFFSET_X, 1, -9.7, -60 , 0 );
setMoveKey( spep_0 + 2114 + OFFSET_X, 1, -12.5, -60.1 , 0 );
setMoveKey( spep_0 + 2115 + OFFSET_X, 1, -12.5, -60.1 , 0 );
setMoveKey( spep_0 + 2116 + OFFSET_X, 1, -15.4, -60.4 , 0 );
setMoveKey( spep_0 + 2117 + OFFSET_X, 1, -15.4, -60.4 , 0 );
setMoveKey( spep_0 + 2118 + OFFSET_X, 1, -18.2, -60.6 , 0 );
setMoveKey( spep_0 + 2119 + OFFSET_X, 1, -18.2, -60.6 , 0 );
setMoveKey( spep_0 + 2120 + OFFSET_X, 1, -21.1, -60.7 , 0 );
setMoveKey( spep_0 + 2121 + OFFSET_X, 1, -21.1, -60.7 , 0 );
setMoveKey( spep_0 + 2122 + OFFSET_X, 1, -23.9, -60.9 , 0 );
setMoveKey( spep_0 + 2123 + OFFSET_X, 1, -23.9, -60.9 , 0 );
setMoveKey( spep_0 + 2124 + OFFSET_X, 1, -26.8, -61.1 , 0 );
setMoveKey( spep_0 + 2125 + OFFSET_X, 1, -26.8, -61.1 , 0 );
setMoveKey( spep_0 + 2126 + OFFSET_X, 1, -29.6, -61.3 , 0 );
setMoveKey( spep_0 + 2127 + OFFSET_X, 1, -29.6, -61.3 , 0 );
setMoveKey( spep_0 + 2128 + OFFSET_X, 1, -32.5, -61.4 , 0 );
setMoveKey( spep_0 + 2129 + OFFSET_X, 1, -32.5, -61.4 , 0 );
setMoveKey( spep_0 + 2130 + OFFSET_X, 1, -35.3, -61.6 , 0 );
setMoveKey( spep_0 + 2131 + OFFSET_X, 1, -35.3, -61.6 , 0 );
setMoveKey( spep_0 + 2132 + OFFSET_X, 1, -38.1, -61.8 , 0 );
setMoveKey( spep_0 + 2133 + OFFSET_X, 1, -38.1, -61.8 , 0 );
setMoveKey( spep_0 + 2134 + OFFSET_X, 1, -41, -62 , 0 );
setMoveKey( spep_0 + 2136 + OFFSET_X, 1, -41, -62 , 0 );

setScaleKey( spep_0 + 2070 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 2071 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 2072 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 2075 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 2076 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 2081 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 2082 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 2085 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 2086 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 2091 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 2092 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 2095 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 2096 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 2101 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 2102 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 2105 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 2106 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 2111 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 2112 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 2117 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 2118 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 2121 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 2122 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 2127 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 2128 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 2131 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 2132 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 2136 + OFFSET_X, 1, 2.65, 2.65 );

setRotateKey( spep_0 + 2070 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_0 + 2136 + OFFSET_X, 1, 29.6 );

setBlendColor( spep_0 + 2070 + OFFSET_X, 1, 3, 0, 0.2, 0.6, 0.52 );
setBlendColor( spep_0 + 2136 + OFFSET_X, 1, 0, 0, 0, 0, 0 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--元気玉溜め
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 349, 0, 35, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 21 );
SE002 = playSeVer2( spep_0 + 0, 1396, "",spep_0 + 350, 0, 36, -1);

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 67 );

--ブウ突っ込んでくる
SE004 = playSeVer2( spep_0 + 285, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 285, SE004, 140 );
SE005 = playSeVer2( spep_0 + 314, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 314, 1121, "",spep_0 + 445, 0, 19, -1);
setPitch( spep_0 + 314, SE006, 400 );
setTimeStretch( SE006, 1.27, 30, 4 );
SE007 = playSeVer2( spep_0 + 314, 1117, "", 0, 0, 0, -1);

--敵ヒット
SE008 = playSeVer2( spep_0 + 370, 1011, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 370, 1120, "", 0, 0, 0, -1);

--岩激突
SE010 = playSeVer2( spep_0 + 422, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE010, 84 );

--爆発
SE011 = playSeVer2( spep_0 + 465, 1024, "", 0, 0, 0, -1);

--環境音
SE012 = playSeVer2( spep_0 + 472, 1269, "",spep_0 + 1168, 0, 113, -1);
setSeVolumeByWorkId( spep_0 + 472, SE012, 25 );

--画面遷移
SE013 = playSeVer2( spep_0 + 777, 44, "", 0, 0, 0, -1);

--サタン走って行く
SE014 = playSeVer2( spep_0 + 798, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 798, SE014, 158 );
SE015 = playSeVer2( spep_0 + 821, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 821, SE015, 158 );
SE016 = playSeVer2( spep_0 + 851, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 851, SE016, 158 );
SE017 = playSeVer2( spep_0 + 873, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 873, SE017, 158 );
SE018 = playSeVer2( spep_0 + 902, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 902, SE018, 158 );
SE019 = playSeVer2( spep_0 + 926, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 926, SE019, 158 );
SE020 = playSeVer2( spep_0 + 959, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 959, SE020, 158 );
SE021 = playSeVer2( spep_0 + 983, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 983, SE021, 158 );

--元気玉溜め
SE022 = playSeVer2( spep_0 + 1001, 1176, "",spep_0 + 1560, 22, 58, -1);
setSeVolumeByWorkId( spep_0 + 1001, SE022, 21 );
setStartTimeMs( SE022,  50 );
SE023 = playSeVer2( spep_0 + 1003, 1396, "",spep_0 + 1568, 24, 68, -1);
setStartTimeMs( SE023,  83 );

--画面遷移
SE024 = playSeVer2( spep_0 + 1002, 1232, "", 0, 0, 0, -1);

--元気玉溜め音
SE025 = playSeVer2( spep_0 + 1482, 1396, "",spep_0 + 2284, 0, 23, -1);
setSeVolumeByWorkId( spep_0 + 1482, SE025, 63 );

--元気玉投げる
SE026 = playSeVer2( spep_0 + 1496, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1496, SE026, 68 );
SE027 = playSeVer2( spep_0 + 1530, 1193, "",spep_0 + 1726, 21, 28, -1);
setSeVolumeByWorkId( spep_0 + 1530, SE027, 57 );
setStartTimeMs( SE027,  567 );
SE028 = playSeVer2( spep_0 + 1496, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1496, SE028, 60 );
SE029 = playSeVer2( spep_0 + 1496, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1496, SE029, 60 );
SE030 = playSeVer2( spep_0 + 1504, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1504, SE030, 73 );
SE031 = playSeVer2( spep_0 + 1527, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1527, SE031, 54 );

--セリフカットイン
SE032 = playSeVer2( spep_0 + 1597, 1018, "", 0, 0, 0, -1);

--地面激突
SE033 = playSeVer2( spep_0 + 1676, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1676, SE033, 81 );
SE034 = playSeVer2( spep_0 + 1676, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1676, SE034, 76 );
SE035 = playSeVer2( spep_0 + 1677, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1677, SE035, 72 );
SE036 = playSeVer2( spep_0 + 1681, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1681, SE036, 89 );

--オーラ音
SE037 = playSeVer2( spep_0 + 1737, 1314, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1737, SE037, 22 );

--気ダメ
SE038 = playSeVer2( spep_0 + 1737, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1737, SE038, 126 );
SE039 = playSeVer2( spep_0 + 1737, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1737, SE039, 71 );

--オーラ
SE040 = playSeVer2( spep_0 + 1765, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1765, SE040, 63 );
SE041 = playSeVer2( spep_0 + 1789, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1789, SE041, 63 );
SE042 = playSeVer2( spep_0 + 1813, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1813, SE042, 63 );
SE044 = playSeVer2( spep_0 + 1839, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1839, SE044, 63 );
SE045 = playSeVer2( spep_0 + 1863, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1863, SE045, 63 );
SE046 = playSeVer2( spep_0 + 1887, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1887, SE046, 63 );
SE047 = playSeVer2( spep_0 + 1911, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1911, SE047, 63 );
SE048 = playSeVer2( spep_0 + 1935, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1935, SE048, 63 );
SE051 = playSeVer2( spep_0 + 1959, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1959, SE051, 63 );
SE052 = playSeVer2( spep_0 + 1983, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1983, SE052, 63 );
SE054 = playSeVer2( spep_0 + 2007, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2007, SE054, 63 );
SE058 = playSeVer2( spep_0 + 2031, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2031, SE058, 63 );

--構える
SE043 = playSeVer2( spep_0 + 1836, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1836, SE043, 70 );

--顔アップ
SE049 = playSeVer2( spep_0 + 1939, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1939, SE049, 143 );
SE050 = playSeVer2( spep_0 + 1939, 1263, "",spep_0 + 2075, 0, 52, -1);

--爆発
SE053 = playSeVer2( spep_0 + 1998, 1069, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_0 + 2013, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 2023, 1067, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_0 + 2057, 1128, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 2057, SE057, 58 );
setStartTimeMs( SE057,  617 );
setPitch( spep_0 + 2059, SE057, -1200 );
setTimeStretch( SE057, 0.2, 30, 4 );

--元気玉飛んでくる
SE059 = playSeVer2( spep_0 + 2132, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2132, SE059, 38 );
SE060 = playSeVer2( spep_0 + 2132, 1226, "",spep_0 + 2395, 0, 57, -1);
setSeVolumeByWorkId( spep_0 + 2132, SE060, 70 );
SE061 = playSeVer2( spep_0 + 2132, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2132, SE061, 63 );
SE062 = playSeVer2( spep_0 + 2132, 1227, "",spep_0 + 2388, 0, 43, -1);
setSeVolumeByWorkId( spep_0 + 2132, SE062, 136 );
SE063 = playSeVer2( spep_0 + 2183, 1044, "",spep_0 + 2367, 60, 39, -1);
setSeVolumeByWorkId( spep_0 + 2183, SE063, 178 );
SE064 = playSeVer2( spep_0 + 2195, 1258, "", 0, 63, 0, -1);
setSeVolumeByWorkId( spep_0 + 2195, SE064, 63 );
setStartTimeMs( SE064,  33 );
SE065 = playSeVer2( spep_0 + 2199, 1188, "", 0, 0, 0, -1);

--爆発
SE066 = playSeVer2( spep_0 + 2322, 1023, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_0 + 2330, 1024, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_0 + 2337, 1067, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「くっ…もうダメだ…」
playVoice( spep_0 + 71, 1253 );
setVoiceVolume( spep_0 + 71, 1253, 122 );

--「ベジータ…すまねえ！！」
playVoice( spep_0 + 182, 1254 );
setVoiceVolume( spep_0 + 182, 1254, 122 );

--「サターーン！！！」
playVoice( spep_0 + 546, 1255 );
setVoiceVolume( spep_0 + 546, 1255, 122 );

--「お！？」
playVoice( spep_0 + 734, 1256 );
setVoiceVolume( spep_0 + 734, 1256, 122 );

--「やれーーーーーっ！！！」
playVoice( spep_0 + 832, 1257 );
setVoiceVolume( spep_0 + 832, 1257, 122 );

--「さっさとかたづけちまえーーーーっ！！！」
playVoice( spep_0 + 895, 1258 );
setVoiceVolume( spep_0 + 895, 1258, 122 );

--「やるじゃねえかサタン！！！」
playVoice( spep_0 + 1043, 1259 );
setVoiceVolume( spep_0 + 1043, 1259, 122 );

--「おめえはホントに世界の…」
playVoice( spep_0 + 1165, 1260 );
setVoiceVolume( spep_0 + 1165, 1260, 122 );

--「救世主かもな！！！！」
playVoice( spep_0 + 1345, 1261 );
setVoiceVolume( spep_0 + 1345, 1261, 122 );

--「くたばっちまえーっ！！！！」
playVoice( spep_0 + 1469, 1262 );
setVoiceVolume( spep_0 + 1469, 1262, 122 );

--「いっけーっ!!」
playVoice( spep_0 + 1600, 1263 );
setVoiceVolume( spep_0 + 1600, 1263, 122 );

--「またな！」
playVoice( spep_0 + 1868, 1264 );
setVoiceVolume( spep_0 + 1868, 1264, 122 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 356; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

stopAndCancelAllSe( SP_dodge - 12 ); --再生中と再生予定のSEを止める
stopAndCancelAllVoice( SP_dodge - 12 ); --再生中と再生予定のVoiceを止める
playSeNotStoppable( SP_dodge - 12, 1042); --止めないSE

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------



-----------------------------
-- 終了
-----------------------------
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_0 + 2266); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 2384f

else end