--1032310:LR_サードアイゴマー_超必殺技：インペリアルレイン
--sp_effect_a2_00270
--sp2940

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164251;  -- 開幕→セリフカットイン～カードカットイン ef_001
SP_01b = 164252;  -- 開幕→セリフカットイン～カードカットイン ef_001b
SP_02 = 164255;  -- カードカットイン→フィニッシュ ef_002
SP_02b = 164256;  -- カードカットイン→フィニッシュ ef_002b
SP_03 = 164259;  -- 全体攻撃 ef_003
SP_03b = 164260;  -- 全体攻撃 ef_003b

--エフェクト(敵)
SP_01r = 164253;  -- 開幕→セリフカットイン～カードカットイン ef_001r
SP_01br = 164254;  -- 開幕→セリフカットイン～カードカットイン ef_001br
SP_02r = 164257;  -- カードカットイン→フィニッシュ ef_002r
SP_02br = 164258;  -- カードカットイン→フィニッシュ ef_002br
SP_03r = 164261;  -- 全体攻撃 ef_003r
SP_03br = 164262;  -- 全体攻撃 ef_003br


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

--「1体目（初回時）の演出」で冒頭に敵表示なし、
--「2体目以降の演出」では冒頭に敵が表示されている場合は
--こちらの敵側の動きはコメントアウトする

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
ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文(敵の初期化)
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕→セリフカットイン～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 288;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕→セリフカットイン～カードカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕→セリフカットイン～カードカットイン(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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

setDisp( spep_0 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 206 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 206 + OFFSET_X, 1, 171, -62 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 171, -62 , 0 );

setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 312, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--目玉にズームアップ
SE004 = playSeVer2( spep_0 + 94, 63, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE004, 65 );
SE005 = playSeVer2( spep_0 + 106, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 79 );
setPitch( spep_0 + 112, SE005, -900 );
setTimeStretch( SE005, 0.4, 30, 4 );
SE006 = playSeVer2( spep_0 + 120, 1116, "",spep_0 + 204, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 120, SE006, 79 );
SE007 = playSeVer2( spep_0 + 128, 1072, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 162, 1500, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE008, 115 );

--エネルギー溜める
SE009 = playSeVer2( spep_0 + 192, 1271, "",spep_0 + 300, 18, 18, -1);
setStartTimeMs( SE009, 167 );
SE010 = playSeVer2( spep_0 + 194, 1227, "",spep_0 + 304, 16, 22, -1);
setStartTimeMs( SE010, 200 );
SE011 = playSeVer2( spep_0 + 188, 1176, "",spep_0 + 298, 24, 16, -1);
setSeVolumeByWorkId( spep_0 + 188, SE011, 78 );
setPitch( spep_0 + 188, SE011, -600 );
setTimeStretch( SE011, 0.6, 30, 4 );
SE012 = playSeVer2( spep_0 + 196, 1513, "",spep_0 + 308, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 196, SE012, 70 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --288F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--エネルギー溜める２
SE014 = playSeVer2( spep_1 + 84, 1271, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE014,128 );
setStartTimeMs( SE014, 167 );
SE015 = playSeVer2( spep_1 + 86, 1227, "",spep_1 + 488, 4, 72, -1);
setSeVolumeByWorkId( spep_1 + 86, SE015, 71 );
setStartTimeMs( SE015, 200 );
SE016 = playSeVer2( spep_1 + 80, 1176, "",spep_1 + 492, 12, 76, -1);
setSeVolumeByWorkId( spep_1 + 80, SE016, 79 );
setPitch( spep_1 + 80, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
SE017 = playSeVer2( spep_1 + 88, 1513, "",spep_1 + 486, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 88, SE017, 71 );

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 500;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 354 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 498 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 354 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 386 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 354 + OFFSET_X, 1, 67, 32 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 67, 32 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 72.8, 27.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 72.8, 27.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 64.5, 37.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 64.5, 37.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 68.9, 36.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 68.9, 36.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 62.3, 28.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 62.3, 28.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 70.8, 28.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 70.8, 28.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 59.8, 39.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 59.8, 39.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 69.4, 34.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 69.4, 34.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 65.6, 28.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 65.6, 28.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 65.6, 35.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 65.6, 35.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 70, 30.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 70, 30.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -18.3, 113.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -18.3, 113.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 150.2, 36.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 150.2, 36.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 27.4, -20.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 27.4, -20.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 145, 76.3 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 145, 76.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 41.5, 89.5 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 41.5, 89.5 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 61.2, 5.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 61.2, 5.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 29.8, 85.9 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 29.8, 85.9 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 108.6, -19.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 108.6, -19.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 78.6, 107.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 78.6, 107.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 65.9, 33.6 , 0 );

setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 354 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, -32 );

-- ** 音 ** --

--力溜めながらズームアウト
SE018 = playSeVer2( spep_2 + 66, 1413, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE018, 263 );
SE019 = playSeVer2( spep_2 + 76, 1175, "",spep_2 + 372, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 76, SE019, 50 );
SE020 = playSeVer2( spep_2 + 194, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE020, 86 );
SE021 = playSeVer2( spep_2 + 196, 1072, "", 0, 0, 0, -1);

--発射前溜め
SE022 = playSeVer2( spep_2 + 248, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 254, 1190, "", 0, 14, 0, -1);
SE024 = playSeVer2( spep_2 + 254, 1248, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE024, 73 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 300; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
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

--レイン発射
SE025 = playSeVer2( spep_2 + 316, 1027, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 316, 1409, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE026, 153 );
SE027 = playSeVer2( spep_2 + 316, 1463, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 316, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE028, 63 );
SE031 = playSeVer2( spep_2 + 402, 1463, "",spep_2 + 492, 0, 10, -1);

--連続爆発
SE029 = playSeVer2( spep_2 + 368, 1188, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 392, 1067, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 402, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 380); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 500F-2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕→セリフカットイン～カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 288;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕→セリフカットイン～カードカットイン(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開幕→セリフカットイン～カードカットイン(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 206 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 206 + OFFSET_X, 1, 171, -62 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 171, -62 , 0 );

setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 312, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--目玉にズームアップ
SE004 = playSeVer2( spep_0 + 94, 63, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE004, 65 );
SE005 = playSeVer2( spep_0 + 106, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 79 );
setPitch( spep_0 + 112, SE005, -900 );
setTimeStretch( SE005, 0.4, 30, 4 );
SE006 = playSeVer2( spep_0 + 120, 1116, "",spep_0 + 204, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 120, SE006, 79 );
SE007 = playSeVer2( spep_0 + 128, 1072, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 162, 1500, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE008, 115 );

--エネルギー溜める
SE009 = playSeVer2( spep_0 + 192, 1271, "",spep_0 + 300, 18, 18, -1);
setStartTimeMs( SE009, 167 );
SE010 = playSeVer2( spep_0 + 194, 1227, "",spep_0 + 304, 16, 22, -1);
setStartTimeMs( SE010, 200 );
SE011 = playSeVer2( spep_0 + 188, 1176, "",spep_0 + 298, 24, 16, -1);
setSeVolumeByWorkId( spep_0 + 188, SE011, 78 );
setPitch( spep_0 + 188, SE011, -600 );
setTimeStretch( SE011, 0.6, 30, 4 );
SE012 = playSeVer2( spep_0 + 196, 1513, "",spep_0 + 308, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 196, SE012, 70 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --288F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--エネルギー溜める２
SE014 = playSeVer2( spep_1 + 84, 1271, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE014,128 );
setStartTimeMs( SE014, 167 );
SE015 = playSeVer2( spep_1 + 86, 1227, "",spep_1 + 488, 4, 72, -1);
setSeVolumeByWorkId( spep_1 + 86, SE015, 71 );
setStartTimeMs( SE015, 200 );
SE016 = playSeVer2( spep_1 + 80, 1176, "",spep_1 + 492, 12, 76, -1);
setSeVolumeByWorkId( spep_1 + 80, SE016, 79 );
setPitch( spep_1 + 80, SE016, -600 );
setTimeStretch( SE016, 0.6, 30, 4 );
SE017 = playSeVer2( spep_1 + 88, 1513, "",spep_1 + 486, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 88, SE017, 71 );

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 500;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 354 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 498 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 354 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 386 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 354 + OFFSET_X, 1, 67, 32 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 67, 32 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 72.8, 27.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 72.8, 27.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 64.5, 37.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 64.5, 37.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 68.9, 36.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 68.9, 36.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 62.3, 28.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 62.3, 28.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 70.8, 28.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 70.8, 28.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 59.8, 39.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 59.8, 39.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 69.4, 34.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 69.4, 34.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 65.6, 28.4 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 65.6, 28.4 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 65.6, 35.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 65.6, 35.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 70, 30.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 70, 30.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -18.3, 113.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -18.3, 113.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 150.2, 36.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 150.2, 36.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 27.4, -20.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 27.4, -20.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 145, 76.3 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 145, 76.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 41.5, 89.5 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 41.5, 89.5 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 61.2, 5.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 61.2, 5.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 29.8, 85.9 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 29.8, 85.9 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 108.6, -19.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 108.6, -19.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 78.6, 107.3 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 78.6, 107.3 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 76.2, 35 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 56.1, 37.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 74.3, 25.1 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 71.5, 41.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 65.6, 30.3 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 71.2, 32 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 68.7, 30 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 65.9, 33.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 68.1, 30.9 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 68.1, 34.5 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 66.5, 30.3 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 66.5, 34.2 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 65.9, 33.6 , 0 );

setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_2 + 354 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, -32 );

-- ** 音 ** --

--力溜めながらズームアウト
SE018 = playSeVer2( spep_2 + 66, 1413, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE018, 263 );
SE019 = playSeVer2( spep_2 + 76, 1175, "",spep_2 + 372, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 76, SE019, 50 );
SE020 = playSeVer2( spep_2 + 194, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE020, 86 );
SE021 = playSeVer2( spep_2 + 196, 1072, "", 0, 0, 0, -1);

--発射前溜め
SE022 = playSeVer2( spep_2 + 248, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 254, 1190, "", 0, 14, 0, -1);
SE024 = playSeVer2( spep_2 + 254, 1248, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE024, 73 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 300; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
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

--レイン発射
SE025 = playSeVer2( spep_2 + 316, 1027, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 316, 1409, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE026, 153 );
SE027 = playSeVer2( spep_2 + 316, 1463, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 316, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE028, 63 );
SE031 = playSeVer2( spep_2 + 402, 1463, "",spep_2 + 492, 0, 10, -1);

--連続爆発
SE029 = playSeVer2( spep_2 + 368, 1188, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 392, 1067, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 402, 1023, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 380); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 500F-2

end
end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------
 
if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 全体攻撃
------------------------------------------------------
 
spep_z = 0;
 
setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);
 
------------------------------------------------------
-- 回避  2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------
 
    if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える
 
    playSe( SP_dodge-12, 1042);
    -- stopSe( SP_dodge - 12, SE001, 0);
    -- stopSe( SP_dodge - 12, SE002, 0);
    -- stopSe( SP_dodge - 12, SE003, 0);
    pauseAll( SP_dodge, 67);
 
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
 
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
 
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
 
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 72;

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- 全体攻撃(ef_003)
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

base_bZ = entryEffect( spep_z + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 全体攻撃(ef_003b)
setEffMoveKey( spep_z + 0, base_bZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_bZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_bZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_bZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_bZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_bZ, 0);
setEffAlphaKey( spep_z + 0, base_bZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_bZ, 255);
 
-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒 背景
 
-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 102 );
changeAnime( spep_z + 8 + OFFSET_X, 1, 106 );

setMoveKey( spep_z + 0, 1, 66.8, 32.2 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 66.8, 32.2 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 66.8, 32.2 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, -24.6, 115.7 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, -24.6, 115.7 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 157.2, -7.1 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 157.2, -7.1 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 148.4, 117.4 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 148.4, 117.4 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, -16.2, -56.5 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, -16.2, -56.5 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 59.6, 108 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 59.6, 108 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 62.5, -12.8 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 62.5, -12.8 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 121.1, 41.4 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 121.1, 41.4 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 78.6, 57 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 78.6, 57 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 59.5, 39.2 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 59.5, 39.2 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 88.1, 34.4 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 88.1, 34.4 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 78.6, 57 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 78.6, 57 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 59.5, 39.2 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 59.5, 39.2 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 88.1, 34.4 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 88.1, 34.4 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 68.4, 30.1 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 68.4, 30.1 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 65.3, 30.4 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 65.3, 30.4 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 70.9, 32.1 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 70.9, 32.1 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 65.6, 33.7 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 65.6, 33.7 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 67.8, 31 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 67.8, 31 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 67.8, 34.6 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 67.8, 34.6 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 66.2, 30.4 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 66.2, 30.4 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 68.4, 30.1 , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, 68.4, 30.1 , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, 65.3, 30.4 , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, 65.3, 30.4 , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, 70.9, 32.1 , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, 70.9, 32.1 , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, 65.6, 33.7 , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, 65.6, 33.7 , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, 67.8, 31 , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, 67.8, 31 , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, 67.8, 34.6 , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, 67.8, 34.6 , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, 66.2, 30.4 , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, 66.2, 30.4 , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, 66.7, 32 , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, 66.7, 32 , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, 66.8, 31.2 , 0 );

setScaleKey( spep_z + 0, 1, 0.8, 0.8 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 72 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_z + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 8 + OFFSET_X, 1, -38 );
setRotateKey( spep_z + 71 + OFFSET_X, 1, -38 );
setRotateKey( spep_z + 72 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--【全体】レイン発射
SE033 = playSeVer2( spep_z + 0, 1409, "",spep_z + 60, 0, 10, -1);
setSeVolumeByWorkId( spep_z + 0, SE033, 146 );
SE034 = playSeVer2( spep_z + 0, 1463, "",spep_z + 60, 0, 10, -1);
SE035 = playSeVer2( spep_z + 0, 1406, "",spep_z + 64, 0, 12, -1);
setSeVolumeByWorkId( spep_z + 0, SE035, 58 );

--【全体】連続爆発
SE036 = playSeVer2( spep_z + 0, 1188, "",spep_z + 80, 0, 18, -1);
SE037 = playSeVer2( spep_z + 24, 1067, "",spep_z + 88, 0, 24, -1);
SE038 = playSeVer2( spep_z + 36, 1023, "",spep_z + 84, 0, 22, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 0 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -0); -- 72F

else

------------------------------------------------------
-- 敵側
------------------------------------------------------



------------------------------------------------------
-- 全体攻撃
------------------------------------------------------

spep_z = 0;
 
setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);
 
------------------------------------------------------
-- 回避  2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------
 
    if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える
 
    playSe( SP_dodge-12, 1042);
    -- stopSe( SP_dodge - 12, SE001, 0);
    -- stopSe( SP_dodge - 12, SE002, 0);
    -- stopSe( SP_dodge - 12, SE003, 0);
    pauseAll( SP_dodge, 67);
 
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
 
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
 
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
 
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 72;

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_03r, 0x100, -1, 0, 0, 0); -- 全体攻撃(ef_003r)
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

base_bZ = entryEffect( spep_z + 0, SP_03br, 0x80, -1, 0, 0, 0); -- 全体攻撃(ef_003br)
setEffMoveKey( spep_z + 0, base_bZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_bZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_bZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_bZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_bZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_bZ, 0);
setEffAlphaKey( spep_z + 0, base_bZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_bZ, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 72 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 102 );
changeAnime( spep_z + 8 + OFFSET_X, 1, 106 );

setMoveKey( spep_z + 0, 1, 66.8, 32.2 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 66.8, 32.2 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 66.8, 32.2 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, -24.6, 115.7 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, -24.6, 115.7 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 157.2, -7.1 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 157.2, -7.1 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 148.4, 117.4 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 148.4, 117.4 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, -16.2, -56.5 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, -16.2, -56.5 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 59.6, 108 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 59.6, 108 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 62.5, -12.8 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 62.5, -12.8 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 121.1, 41.4 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 121.1, 41.4 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 78.6, 57 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 78.6, 57 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 59.5, 39.2 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 59.5, 39.2 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 88.1, 34.4 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 88.1, 34.4 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 78.6, 57 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 78.6, 57 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 59.5, 39.2 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 59.5, 39.2 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 88.1, 34.4 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 88.1, 34.4 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 89.3, -2.1 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 68.4, 30.1 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 68.4, 30.1 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 65.3, 30.4 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 65.3, 30.4 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 70.9, 32.1 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 70.9, 32.1 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 65.6, 33.7 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 65.6, 33.7 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 67.8, 31 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 67.8, 31 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 67.8, 34.6 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 67.8, 34.6 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 66.2, 30.4 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 66.2, 30.4 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 68.4, 30.1 , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, 68.4, 30.1 , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, 65.3, 30.4 , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, 65.3, 30.4 , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, 70.9, 32.1 , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, 70.9, 32.1 , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, 65.6, 33.7 , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, 65.6, 33.7 , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, 67.8, 31 , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, 67.8, 31 , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, 67.8, 34.6 , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, 67.8, 34.6 , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, 66.2, 30.4 , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, 66.2, 30.4 , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, 66.2, 34.3 , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, 66.7, 32 , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, 66.7, 32 , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, 66.8, 31.2 , 0 );

setScaleKey( spep_z + 0, 1, 0.8, 0.8 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_z + 72 + OFFSET_X, 1, 0.8, 0.8 );

setRotateKey( spep_z + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 8 + OFFSET_X, 1, -38 );
setRotateKey( spep_z + 71 + OFFSET_X, 1, -38 );
setRotateKey( spep_z + 72 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--【全体】レイン発射
SE033 = playSeVer2( spep_z + 0, 1409, "",spep_z + 60, 0, 10, -1);
setSeVolumeByWorkId( spep_z + 0, SE033, 146 );
SE034 = playSeVer2( spep_z + 0, 1463, "",spep_z + 60, 0, 10, -1);
SE035 = playSeVer2( spep_z + 0, 1406, "",spep_z + 64, 0, 12, -1);
setSeVolumeByWorkId( spep_z + 0, SE035, 58 );

--【全体】連続爆発
SE036 = playSeVer2( spep_z + 0, 1188, "",spep_z + 80, 0, 18, -1);
SE037 = playSeVer2( spep_z + 24, 1067, "",spep_z + 88, 0, 24, -1);
SE038 = playSeVer2( spep_z + 36, 1023, "",spep_z + 84, 0, 22, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 0 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -0); -- 72F

end

end