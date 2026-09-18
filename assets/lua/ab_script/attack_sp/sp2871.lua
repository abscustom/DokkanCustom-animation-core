--4031400:LR_超サイヤ人ゴッドSSベジータ+超サイヤ人ゴッドSS孫悟空_超必殺技：ファイナルフラッシュ
--sp_effect_a1_00493
--sp2871

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 163883; --構えからの攻撃〜フィニッシュ_前 ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 見上げるベジータ
-------------------------------------------------
MAX_FRAME_0 = 126;

setupMovie(0, SP_02, 0, 1);

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

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135, 515.5 , 0 );
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 22 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 334, 126 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 334, 126 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 334, 126 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 334, 126 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 334, 126 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 334, 126 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 334, 126 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 334, 126 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 355.2, 127.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 355.2, 127.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 418.8, 131.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 418.8, 131.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 525, 138.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 525, 138.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 673.5, 148.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 673.5, 148.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 864.5, 160.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 864.5, 160.7 , 0 );

setScaleKey( spep_0 + 0, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 6.14, 6.14 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 6.14, 6.14 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 7.41, 7.41 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 7.41, 7.41 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 8.52, 8.52 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 8.52, 8.52 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 9.95, 9.95 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 9.95, 9.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 22 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 154, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--126f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--環境音
SE005 = playSeVer2( spep_1 + 84, 1269, "",spep_2 + 146, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 84, SE005, 25 );


-------------------------------------------------
-- 構えからの攻撃〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 670;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 構えからの攻撃〜フィニッシュ_前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 404 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 332 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 332 + OFFSET_X, 1, 241.9, 329.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 241.9, 329.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 242.4, 329.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 242.4, 329.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 242.4, 329.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 242.4, 329.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 236.9, 326.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 236.9, 326.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 239.6, 330.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 239.6, 330.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 243, 327.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 243, 327.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 238.1, 325.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 238.1, 325.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 232.4, 324 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 232.4, 324 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 235.7, 327.6 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 235.7, 327.6 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 237.3, 323.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 237.3, 323.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 232.6, 317.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 232.6, 317.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 231.5, 319.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 231.5, 319.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 232.7, 313.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 232.7, 313.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 227.4, 313.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 227.4, 313.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 215.8, 311.5 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 215.8, 311.5 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 215.5, 302.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 215.5, 302.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 211.7, 302 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 211.7, 302 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 211.4, 303.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 211.4, 303.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 209.7, 300.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 209.7, 300.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 207.8, 297.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 207.8, 297.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 207.1, 296.9 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 207.1, 296.9 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 206.6, 296.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 206.6, 296.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 206.3, 322.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 206.3, 322.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 206.1, 260.1 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 206.1, 260.1 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 197.9, 266.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 197.9, 266.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 198.6, 309.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 198.6, 309.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 219.2, 308 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 219.2, 308 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 209.9, 298.8 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 209.9, 298.8 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 219.5, 290.5 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 219.5, 290.5 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 209.8, 285.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 209.8, 285.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 215.2, 280.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 215.2, 280.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 211.7, 295.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 211.7, 295.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 198.6, 290.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 198.6, 290.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 201.4, 301.4 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 201.4, 301.4 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 202.9, 299.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 202.9, 299.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 204.4, 297.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 204.4, 297.7 , 0 );

setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_2 + 550 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 636 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 550 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 602 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 550 + OFFSET_X, 1, -133.8, -48.1 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -133.8, -48.1 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -130.9, -47 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -130.9, -47 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -127.9, -46 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -127.9, -46 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -125.6, -46.4 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -125.6, -46.4 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -117.4, -37.5 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -117.4, -37.5 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -115.6, -43.8 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -115.6, -43.8 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -117.5, -44.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -117.5, -44.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -116.8, -40.5 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -116.8, -40.5 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -111.1, -43.8 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -111.1, -43.8 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -107.6, -35 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -107.6, -35 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -102.7, -37.7 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -102.7, -37.7 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -99.8, -36.9 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -99.8, -36.9 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -99, -35 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -99, -35 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -95.6, -34.7 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -95.6, -34.7 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -93.9, -26.4 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -93.9, -26.4 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -87.2, -27.8 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -87.2, -27.8 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -83.8, -33.5 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -83.8, -33.5 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -85.5, -36.2 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -85.5, -36.2 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -80.6, -29 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -80.6, -29 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -76.9, -29.1 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -76.9, -29.1 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -77.5, -30.5 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -77.5, -30.5 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -73.4, -31.2 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -73.4, -31.2 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -67.7, -22.9 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -67.7, -22.9 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -61.9, -20.2 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -61.9, -20.2 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -62.7, -22.9 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -62.7, -22.9 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -56.2, -25.1 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -56.2, -25.1 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 9.6, 3.8 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 9.6, 3.8 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 16.8, 6.9 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 16.8, 6.9 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 22.9, 5.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 22.9, 5.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 31, 6.3 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 31, 6.3 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 42.5, 21.6 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 42.5, 21.6 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 49.9, 14.5 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 49.9, 14.5 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 54.2, 29.7 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 54.2, 29.7 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 65.3, 30.2 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 65.3, 30.2 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 68.5, 28.2 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 68.5, 28.2 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 58.2, 26.8 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 58.2, 26.8 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 72.1, 34.3 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 72.1, 34.3 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 87.9, 46.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 87.9, 46.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 115.6, 62.9 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 115.6, 62.9 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 154.8, 87.6 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 154.8, 87.6 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 211.6, 119.5 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 211.6, 119.5 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 286.3, 163.6 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 286.3, 163.6 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 275.5, 164.8 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 275.5, 164.8 , 0 );

setScaleKey( spep_2 + 550 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 619 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 621 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 622 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 625 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 626 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 629 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 3.93, 3.93 );

setRotateKey( spep_2 + 550 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 601 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 621 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, -28 );

setBlendColor( spep_2 + 548 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 550 + OFFSET_X, 1, 2, 0.65, 1, 0.3, 1 );
setBlendColor( spep_2 + 606 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 608 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_2 + 610 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 612 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 614 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 616 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 636 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--構える
SE006 = playSeVer2( spep_2 + 36, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 40, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE007, 79 );

--前に腕を出す
SE008 = playSeVer2( spep_2 + 74, 1233, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 78, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE010 = playSeVer2( spep_2 + 92, 1445, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 92, 1328, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 92, 1343, "",spep_2 + 318, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 92, SE012, 112 );
SE013 = playSeVer2( spep_2 + 102, 1490, "",spep_2 + 308, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 102, SE013, 133 );
SE014 = playSeVer2( spep_2 + 102, 1393, "",spep_2 + 314, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 102, SE014, 117 );
SE015 = playSeVer2( spep_2 + 128, 1148, "", 0, 0, 0, -1);

--気弾発射
SE016 = playSeVer2( spep_2 + 256, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE016, 75 );
SE017 = playSeVer2( spep_2 + 256, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE017, 67 );
SE018 = playSeVer2( spep_2 + 256, 1284, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 262, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 262, SE019, 82 );
SE020 = playSeVer2( spep_2 + 268, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE020, 77 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 300; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
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
--敵ヒット
SE021 = playSeVer2( spep_2 + 362, 1011, "", 0, 0, 0, -1);

--気弾中
SE022 = playSeVer2( spep_2 + 362, 1423, "", 0, 0, 0, -1);
setTimeStretch( SE022, 1.11, 30, 4 );
SE023 = playSeVer2( spep_2 + 382, 1161, "", 0, 0, 0, -1);
setTimeStretch( SE023, 1.11, 30, 4 );

--画面遷移
SE024 = playSeVer2( spep_2 + 400, 8, "", 0, 0, 0, -1);

--気弾威力増す
SE025 = playSeVer2( spep_2 + 484, 1258, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 496, 1145, "", 0, 0, 0, -1);

--飲まれる
SE027 = playSeVer2( spep_2 + 568, 1258, "",spep_2 + 670, 36, 40, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 550); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 670f -4f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 見上げるベジータ
-------------------------------------------------
MAX_FRAME_0 = 126;

setupMovie(0, SP_02, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -135, 515.5 , 0 );
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
]]

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 22 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -334, 126 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -334, 126 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -334, 126 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -334, 126 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -334, 126 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -334, 126 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -334, 126 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -334, 126 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -355.2, 127.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -355.2, 127.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -418.8, 131.5 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -418.8, 131.5 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -525, 138.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -525, 138.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -673.5, 148.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -673.5, 148.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -864.5, 160.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -864.5, 160.7 , 0 );

setScaleKey( spep_0 + 0, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 6.14, 6.14 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 6.14, 6.14 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 7.41, 7.41 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 7.41, 7.41 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 8.52, 8.52 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 8.52, 8.52 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 9.95, 9.95 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 9.95, 9.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 22 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 154, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--126f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--環境音
SE005 = playSeVer2( spep_1 + 84, 1269, "",spep_2 + 146, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 84, SE005, 25 );


-------------------------------------------------
-- 構えからの攻撃〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 670;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 構えからの攻撃〜フィニッシュ_前(ef_002)
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
setDisp( spep_2 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 404 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 332 + OFFSET_X, 1, 4 );

setMoveKey( spep_2 + 332 + OFFSET_X, 1, -241.9, 329.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -241.9, 329.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -242.4, 329.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -242.4, 329.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -242.4, 329.1 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -242.4, 329.1 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -236.9, 326.9 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -236.9, 326.9 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -239.6, 330.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -239.6, 330.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -243, 327.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -243, 327.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -238.1, 325.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -238.1, 325.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -232.4, 324 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -232.4, 324 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -235.7, 327.6 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -235.7, 327.6 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -237.3, 323.4 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -237.3, 323.4 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -232.6, 317.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -232.6, 317.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -231.5, 319.8 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -231.5, 319.8 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -232.7, 313.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -232.7, 313.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -227.4, 313.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -227.4, 313.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -215.8, 311.5 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -215.8, 311.5 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -215.5, 302.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -215.5, 302.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -211.7, 302 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -211.7, 302 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -211.4, 303.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -211.4, 303.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -209.7, 300.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -209.7, 300.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -207.8, 297.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -207.8, 297.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -207.1, 296.9 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -207.1, 296.9 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -206.6, 296.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -206.6, 296.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -206.3, 322.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -206.3, 322.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -206.1, 260.1 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -206.1, 260.1 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -197.9, 266.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -197.9, 266.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -198.6, 309.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -198.6, 309.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -219.2, 308 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -219.2, 308 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -209.9, 298.8 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -209.9, 298.8 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -219.5, 290.5 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -219.5, 290.5 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -209.8, 285.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -209.8, 285.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -215.2, 280.7 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -215.2, 280.7 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -211.7, 295.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -211.7, 295.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -198.6, 290.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -198.6, 290.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -201.4, 301.4 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -201.4, 301.4 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -202.9, 299.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -202.9, 299.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -204.4, 297.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -204.4, 297.7 , 0 );

setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_2 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_2 + 550 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 636 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 550 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 602 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 550 + OFFSET_X, 1, 133.8, -48.1 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 133.8, -48.1 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 130.9, -47 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 130.9, -47 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 127.9, -46 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 127.9, -46 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 125.6, -46.4 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 125.6, -46.4 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 117.4, -37.5 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 117.4, -37.5 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 115.6, -43.8 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 115.6, -43.8 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 117.5, -44.7 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 117.5, -44.7 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 116.8, -40.5 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 116.8, -40.5 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 111.1, -43.8 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 111.1, -43.8 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 107.6, -35 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 107.6, -35 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 102.7, -37.7 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 102.7, -37.7 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 99.8, -36.9 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 99.8, -36.9 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 99, -35 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 99, -35 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 95.6, -34.7 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 95.6, -34.7 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 93.9, -26.4 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 93.9, -26.4 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 87.2, -27.8 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 87.2, -27.8 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 83.8, -33.5 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 83.8, -33.5 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 85.5, -36.2 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 85.5, -36.2 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 80.6, -29 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 80.6, -29 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 76.9, -29.1 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 76.9, -29.1 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 77.5, -30.5 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 77.5, -30.5 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 73.4, -31.2 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 73.4, -31.2 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 67.7, -22.9 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 67.7, -22.9 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 61.9, -20.2 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 61.9, -20.2 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 62.7, -22.9 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 62.7, -22.9 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 56.2, -25.1 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 56.2, -25.1 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -9.6, 3.8 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -9.6, 3.8 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -16.8, 6.9 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -16.8, 6.9 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -22.9, 5.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -22.9, 5.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -31, 6.3 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -31, 6.3 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -42.5, 21.6 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -42.5, 21.6 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -49.9, 14.5 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -49.9, 14.5 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -54.2, 29.7 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -54.2, 29.7 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -65.3, 30.2 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -65.3, 30.2 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -68.5, 28.2 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -68.5, 28.2 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -58.2, 26.8 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -58.2, 26.8 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -72.1, 34.3 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -72.1, 34.3 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -87.9, 46.7 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -87.9, 46.7 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -115.6, 62.9 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -115.6, 62.9 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -154.8, 87.6 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -154.8, 87.6 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -211.6, 119.5 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -211.6, 119.5 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -286.3, 163.6 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -286.3, 163.6 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -275.5, 164.8 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -275.5, 164.8 , 0 );

setScaleKey( spep_2 + 550 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 619 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 621 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 622 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 625 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 626 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 629 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 631 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 632 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 3.93, 3.93 );

setRotateKey( spep_2 + 550 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 601 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 621 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, 28 );

setBlendColor( spep_2 + 548 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 550 + OFFSET_X, 1, 2, 0.65, 1, 0.3, 1 );
setBlendColor( spep_2 + 606 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 608 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_2 + 610 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 612 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 614 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 616 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 636 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--構える
SE006 = playSeVer2( spep_2 + 36, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 40, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE007, 79 );

--前に腕を出す
SE008 = playSeVer2( spep_2 + 74, 1233, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 78, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE010 = playSeVer2( spep_2 + 92, 1445, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 92, 1328, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 92, 1343, "",spep_2 + 318, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 92, SE012, 112 );
SE013 = playSeVer2( spep_2 + 102, 1490, "",spep_2 + 308, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 102, SE013, 133 );
SE014 = playSeVer2( spep_2 + 102, 1393, "",spep_2 + 314, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 102, SE014, 117 );
SE015 = playSeVer2( spep_2 + 128, 1148, "", 0, 0, 0, -1);

--気弾発射
SE016 = playSeVer2( spep_2 + 256, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE016, 75 );
SE017 = playSeVer2( spep_2 + 256, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 256, SE017, 67 );
SE018 = playSeVer2( spep_2 + 256, 1284, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 262, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 262, SE019, 82 );
SE020 = playSeVer2( spep_2 + 268, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE020, 77 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 300; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
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
--敵ヒット
SE021 = playSeVer2( spep_2 + 362, 1011, "", 0, 0, 0, -1);

--気弾中
SE022 = playSeVer2( spep_2 + 362, 1423, "", 0, 0, 0, -1);
setTimeStretch( SE022, 1.11, 30, 4 );
SE023 = playSeVer2( spep_2 + 382, 1161, "", 0, 0, 0, -1);
setTimeStretch( SE023, 1.11, 30, 4 );

--画面遷移
SE024 = playSeVer2( spep_2 + 400, 8, "", 0, 0, 0, -1);

--気弾威力増す
SE025 = playSeVer2( spep_2 + 484, 1258, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 496, 1145, "", 0, 0, 0, -1);

--飲まれる
SE027 = playSeVer2( spep_2 + 568, 1258, "",spep_2 + 670, 36, 40, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 550); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 670f -4f

end