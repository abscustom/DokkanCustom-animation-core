--1034220:UR_ビルス_アクティブ必殺：破壊神の裁き
--sp_effect_a2_00277
--ut0126

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164494; -- 最初から最後まで ef_001

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

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 280 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 280 - 13, SP_01, spep_0 + 280 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           skipFrame(0, spep_0 + 796 );  -- スキップ先フレーム指定
           setupMovie(spep_0 + 796, SP_01, spep_0 + 796 -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 敵キャラクター ** --

           -- ** 音 ** --
        --指弾飛んでいく
        SE026 = playSeVer2( spep_0 + 799, 1021, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_0 + 799, SE026, 82 );
           -- ** ボイス ** --

       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;
 
 
-------------------------------------------------
-- 最初から最後まで
-------------------------------------------------

MAX_FRAME_0 = 986;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初から最後まで(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_0 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 432 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 130 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_0 + 266 + OFFSET_X, 1, 118 );
changeAnimeBySide( spep_0 + 360 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_0 + 372 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 130 + OFFSET_X, 1, 486.7, -452.8 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 486.7, -452.8 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 436.4, -409.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 436.4, -409.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 393.8, -373.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 393.8, -373.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 361.7, -345.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 361.7, -345.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 337.7, -325.1 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 337.7, -325.1 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 319.8, -309.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 319.8, -309.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 306.1, -298 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 306.1, -298 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 295.8, -289.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 295.8, -289.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 288.2, -282.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 288.2, -282.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 282.9, -278.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 282.9, -278.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 279.3, -275 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 279.3, -275 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 277.4, -273.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 277.4, -273.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 276.7, -272.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 276.7, -272.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 84.5, 5.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 84.5, 5.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -65, -146.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -65, -146.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -65, -140.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -65, -140.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -65, -161.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -65, -161.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -61, -171.6 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -61, -171.6 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -59.7, -171.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -59.7, -171.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -57.3, -161.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -57.3, -161.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -55.8, -162.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -55.8, -162.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -54.2, -162.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -54.2, -162.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -48.6, -177 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -48.6, -177 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -47, -177.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -47, -177.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -42.5, -149.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -42.5, -149.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -40.9, -149.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -40.9, -149.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -36.4, -170.4 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -36.4, -170.4 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -32.7, -186.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -32.7, -186.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -29.3, -186.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -29.3, -186.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -25.8, -173.7 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -25.8, -173.7 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -22.4, -176.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -22.4, -176.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -21, -177.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -21, -177.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -18.6, -173.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -18.6, -173.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -17.3, -174 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -17.3, -174 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -16.1, -183 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -16.1, -183 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -11.9, -174 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -11.9, -174 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -9.7, -174.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -9.7, -174.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -7.6, -181.1 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -7.6, -181.1 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -5.6, -184.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -5.6, -184.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -4.6, -184.3 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -4.6, -184.3 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -1.8, -183.4 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -1.8, -183.4 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -0.1, -182.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -0.1, -182.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 4.7, -184.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 4.7, -184.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 6.2, -186.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 6.2, -186.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 8.6, -188.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 8.6, -188.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 6.9, -188.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 6.9, -188.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 12.1, -190.5 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 12.1, -190.5 , 0 );

setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 130 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -20 );

setGaussBlurKey( spep_0 + 130 + OFFSET_X, 1, 0.01 );
setGaussBlurKey( spep_0 + 143 + OFFSET_X, 1, 0.01 );
setGaussBlurKey( spep_0 + 144 + OFFSET_X, 1, 0.005 );
setGaussBlurKey( spep_0 + 149 + OFFSET_X, 1, 0.005 );
setGaussBlurKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 432 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 130 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 266 + OFFSET_X, 1, 5, 0.843, 0.572, 0.145, 0.6 );
setBlendColor( spep_0 + 360 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾溜めはじめ
SE001 = playSeVer2( spep_0 + 0, 1240, "",spep_0 + 98, 0, 24, -1);
setPitch( spep_0 + 0, SE001, 500 );
setTimeStretch( SE001, 1.33, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1265, "",spep_0 + 278, 0, 154, -1);

--セリフカットイン
SE003 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 63 );

--気弾大きくなる
SE004 = playSeVer2( spep_0 + 68, 1507, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 68, 1224, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 86, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 170 );
SE007 = playSeVer2( spep_0 + 86, 1226, "",spep_0 + 270, 0, 19, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 48 );

--気弾投げる
SE008 = playSeVer2( spep_0 + 267, 1119, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 267, SE008, 122 );
setStartTimeMs( SE008,  567 );
setSeVolumeByWorkId( spep_0 + 248, SE009, 80 );
SE009 = playSeVer2( spep_0 + 248, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE009, 58 );
setTimeStretch( SE009, 1.58, 30, 4 );
SE010 = playSeVer2( spep_0 + 250, 1193, "",spep_0 + 462, 0, 49, -1);
SE011 = playSeVer2( spep_0 + 250, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE011, 77 );
SE012 = playSeVer2( spep_0 + 250, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE012, 70 );
SE013 = playSeVer2( spep_0 + 262, 1430, "",spep_0 + 422, 0, 33, -1);
setSeVolumeByWorkId( spep_0 + 262, SE013, 68 );

-- ** ボイス ** --

--「おもしろい展開を期待してたんだけどねえ…」
playVoice( spep_0 + 20, 1210 );
setVoiceVolume( spep_0 + 20, 1210, 108 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 300; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); 

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
SE014 = playSeVer2( spep_0 + 362, 1188, "", 0, 0, 0, -1);

--気弾飛んでいく
SE015 = playSeVer2( spep_0 + 376, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE015, 54 );

--敵ヒット
SE016 = playSeVer2( spep_0 + 376, 1024, "", 0, 0, 0, -1);

--カメラ引く
SE017 = playSeVer2( spep_0 + 478, 44, "", 0, 0, 0, -1);

--指弾溜め
SE018 = playSeVer2( spep_0 + 518, 1296, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 518, SE018, 130 );
SE019 = playSeVer2( spep_0 + 518, 1449, "",spep_0 + 776, 119, 51, -1);
setSeVolumeByWorkId( spep_0 + 518, SE019, 177 );
SE020 = playSeVer2( spep_0 + 532, 1413, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 532, SE020, 180 );
SE021 = playSeVer2( spep_0 + 532, 1158, "",spep_0 + 746, 0, 30, -1);

--指弾発射
SE022 = playSeVer2( spep_0 + 706, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 706, SE022, 65 );
SE023 = playSeVer2( spep_0 + 710, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 710, SE023, 123 );
SE024 = playSeVer2( spep_0 + 710, 1423, "",spep_0 + 864, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 710, SE024, 126 );
SE025 = playSeVer2( spep_0 + 710, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 710, SE025, 130 );

--指弾飛んでいく
SE026 = playSeVer2( spep_0 + 770, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 770, SE026, 82 );

--爆発
SE027 = playSeVer2( spep_0 + 824, 1159, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 880, 1067, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「あきらめて降参しろ！」
playVoice( spep_0 + 478, 1211 );
setVoiceVolume( spep_0 + 478, 1211, 108 );

--終わり
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_0 + 862);
endPhase( spep_0 + MAX_FRAME_0); -- 986F

else end