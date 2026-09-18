-- 1029620: UR_ビーデル_必殺技：ムーンサルトキック
-- sp_effect_b4_00349
-- sp2737

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163115;  -- 開幕〜水晶が敵に当たる ef_001
SP_001b = 163116;  -- 開幕〜水晶が敵に当たる ef_001b
SP_002 = 163117;  -- 気弾を構える〜気弾が敵に迫りヒットする ef_002
SP_002b = 163118;  -- 気弾を構える〜気弾が敵に迫りヒットする ef_002b
SP_003 = 163119;  -- 「が・・・」フィニッシュ ef_003

-- 敵側

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕〜水晶が敵に当たる ef_001
------------------------------------------------------
MAX_FRAME_0 = 418;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕〜水晶が敵に当たる ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開幕〜水晶が敵に当たる ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 84;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 418 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 332 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 332 + OFFSET_X, 1, -1.1, -64.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -1.1, -64.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 17.9, -40.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 17.9, -40.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -21.1, -91.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -21.1, -91.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -21.1, -33.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -21.1, -33.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 28.8, -78.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 28.8, -78.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -0.2, -68 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -0.2, -68 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -2.2, -70.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -2.2, -70.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -3.2, -68.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -3.2, -68.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 0.8, -72.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 0.8, -72.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -1.2, -71.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -1.2, -71.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -1.2, -71.6 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -1.2, -71.6 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -1.2, -71.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -1.2, -71.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -1.2, -72.2 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -1.2, -72.2 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -1.2, -72.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -1.2, -72.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -1.2, -72.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -1.2, -72.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -1.2, -72.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -1.2, -72.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -1.2, -73.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -1.2, -73.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -1.2, -73.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -1.2, -73.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -1.2, -73.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -1.2, -73.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -1.2, -73.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -1.2, -73.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 6.2, -44.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 6.2, -44.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 14.3, -36.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 14.3, -36.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 0.3, -52.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 0.3, -52.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -3.7, -40.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -3.7, -40.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 16.3, -52.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 16.3, -52.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 14.3, -36.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 14.3, -36.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 0.3, -52.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 0.3, -52.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -3.7, -40.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -3.7, -40.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 16.3, -52.5 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 16.3, -52.5 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 8.3, -40.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 8.3, -40.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 0.3, -48.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 0.3, -48.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 4.3, -38.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 4.3, -38.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 12.3, -46.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 12.3, -46.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 8.3, -40.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 8.3, -40.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 0.3, -48.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 0.3, -48.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 4.3, -38.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 4.3, -38.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 12.3, -46.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 12.3, -46.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 6.3, -44.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 6.3, -44.6 , 0 );

setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_0 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--髪なびく
SE003 = playSeVer2( spep_0 + 0, 1331, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 42, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE004, 63 );

--拳にぎる
SE005 = playSeVer2( spep_0 + 46, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE005, 69 );

--ガラス取り出す
SE007 = playSeVer2( spep_0 + 126, 1218, "",spep_0 + 156, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 126, SE007, 158 );
SE008 = playSeVer2( spep_0 + 134, 1042, "",spep_0 + 180, 4, 18, -1);
setStartTimeMs( SE008,  133 );
SE009 = playSeVer2( spep_0 + 130, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE009, 129 );

--ガラス投げる
SE010 = playSeVer2( spep_0 + 216, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE010, 145 );
SE012 = playSeVer2( spep_0 + 222, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE012, 50 );
SE013 = playSeVer2( spep_0 + 222, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 222, 1119, "", 0, 0, 0, -1);

--ガラス飛んでいく
SE011 = playSeVer2( spep_0 + 266, 1442, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE011, 282 );
setStartTimeMs( SE011,  833 );

--ガラス飛んでいく
SE016 = playSeVer2( spep_0 + 270, 1118, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 270, 1370, "",spep_0 + 366, 0, 30, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 300;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--ガラス飛んでいく
SE018 = playSeVer2( spep_0 + 310, 1116, "",spep_0 + 390, 0, 18, -1);
SE019 = playSeVer2( spep_0 + 320, 63, "",spep_0 + 384, 0, 16, -1);

--敵ヒット
SE015 = playSeVer2( spep_0 + 358, 1384, "",spep_0 + 418, 8, 24, -1);
setStartTimeMs( SE015,  1900 );
setSeVolumeByWorkId( spep_0 + 358, SE015, 112 );
SE020 = playSeVer2( spep_0 + 360, 1025, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 364, 1054, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 418

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--翻る
SE023 = playSeVer2( spep_1 + 86, 1117, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 86, 1207, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 86, 1000, "", 0, 0, 0, -1);

------------------------------------------------------
-- 気弾を構える〜気弾が敵に迫りヒットする ef_002
------------------------------------------------------
MAX_FRAME_2 = 188;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 気弾を構える〜気弾が敵に迫りヒットする ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
--setEffAlphaKey( spep_2 + 0, SP_02, 255 );
--setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2-1, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 0 );

SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 気弾を構える〜気弾が敵に迫りヒットする ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 108 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, -0.3, -78.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -0.3, -78.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -0.2, -78.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -0.2, -78.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -0.2, -79 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -0.2, -79 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -0.1, -79.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -0.1, -79.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 0, -79.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 0, -79.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 17.4, -117.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 17.4, -117.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 2.8, -211 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 2.8, -211 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 4.9, -101.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 4.9, -101.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 21.4, -189.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 21.4, -189.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 26.6, -74 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 26.6, -74 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 14.3, -156.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 14.3, -156.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 18.7, -35.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 18.7, -35.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 37.5, -106.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 37.5, -106.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 45, 1.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 45, 1.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 34.4, -48.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 34.4, -48.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 41.3, 29.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 41.3, 29.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 55.6, 19.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 55.6, 19.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 59.3, 63.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 59.3, 63.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 54.5, 54.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 54.5, 54.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 57.1, 89.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 57.1, 89.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 67.1, 78.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 67.1, 78.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 68.5, 105.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 68.5, 105.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 61.4, 89.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 61.4, 89.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 61.6, 107.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 61.6, 107.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 73.2, 100.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 73.2, 100.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 74.5, 113.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 74.5, 113.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 73.4, 112.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 73.4, 112.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 76, 124.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 76, 124.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 84.3, 119.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 84.3, 119.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 82.4, 126.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 82.4, 126.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 84.1, 129.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 84.1, 129.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 85.5, 131.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 85.5, 131.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 86.5, 133.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 86.5, 133.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 87.3, 134.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 87.3, 134.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 87.8, 135.2 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 10.1 );

-- ** 音 ** --
--翻る
SE026 = playSeVer2( spep_2 + 32, 1118, "",spep_2 + 104, 0, 26, -1);
SE027 = playSeVer2( spep_2 + 32, 44, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 32, 1116, "",spep_2 + 130, 0, 20, -1);

--蹴り飛ばす
SE029 = playSeVer2( spep_2 + 106, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 120, 1120, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 120, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE032 = playSeVer2( spep_2 + 128, 1183, "",spep_2 + 210, 0, 12, -1);
SE033 = playSeVer2( spep_2 + 166, 1121, "",spep_2 + 224, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 166, SE033, 67 );

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  -- 188

------------------------------------------------------
-- 「ガッ」 ef_003
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_003 , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]
 
-- ** 集中線 ** --
--[[
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
]]

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕〜水晶が敵に当たる ef_001
------------------------------------------------------
MAX_FRAME_0 = 418;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕〜水晶が敵に当たる ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開幕〜水晶が敵に当たる ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 84;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 418 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 332 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 332 + OFFSET_X, 1, 1.1, -64.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 1.1, -64.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -17.9, -40.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -17.9, -40.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 21.1, -91.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 21.1, -91.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 21.1, -33.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 21.1, -33.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 28.8, -78.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 28.8, -78.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 0.2, -68 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 0.2, -68 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 2.2, -70.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 2.2, -70.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 3.2, -68.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 3.2, -68.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -0.8, -72.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -0.8, -72.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 1.2, -71.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 1.2, -71.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 1.2, -71.6 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 1.2, -71.6 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 1.2, -71.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 1.2, -71.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 1.2, -72.2 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 1.2, -72.2 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 1.2, -72.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 1.2, -72.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 1.2, -72.7 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 1.2, -72.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 1.2, -72.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 1.2, -72.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 1.2, -73.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 1.2, -73.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 1.2, -73.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 1.2, -73.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 1.2, -73.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 1.2, -73.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 1.2, -73.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 1.2, -73.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -6.2, -44.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -6.2, -44.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -14.3, -36.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -14.3, -36.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -0.3, -52.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -0.3, -52.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 3.7, -40.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 3.7, -40.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -16.3, -52.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -16.3, -52.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -14.3, -36.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -14.3, -36.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -0.3, -52.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -0.3, -52.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 3.7, -40.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 3.7, -40.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -16.3, -52.5 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -16.3, -52.5 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -8.3, -40.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -8.3, -40.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -0.3, -48.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -0.3, -48.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -4.3, -38.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -4.3, -38.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -12.3, -46.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -12.3, -46.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -8.3, -40.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -8.3, -40.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -0.3, -48.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -0.3, -48.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -4.3, -38.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -4.3, -38.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -12.3, -46.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -12.3, -46.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -6.3, -44.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -6.3, -44.6 , 0 );

setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_0 + 332 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--髪なびく
SE003 = playSeVer2( spep_0 + 0, 1331, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 42, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE004, 63 );

--拳にぎる
SE005 = playSeVer2( spep_0 + 46, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE005, 69 );

--ガラス取り出す
SE007 = playSeVer2( spep_0 + 126, 1218, "",spep_0 + 156, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 126, SE007, 158 );
SE008 = playSeVer2( spep_0 + 134, 1042, "",spep_0 + 180, 4, 18, -1);
setStartTimeMs( SE008,  133 );
SE009 = playSeVer2( spep_0 + 130, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE009, 129 );

--ガラス投げる
SE010 = playSeVer2( spep_0 + 216, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE010, 145 );
SE012 = playSeVer2( spep_0 + 222, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE012, 50 );
SE013 = playSeVer2( spep_0 + 222, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 222, 1119, "", 0, 0, 0, -1);

--ガラス飛んでいく
SE011 = playSeVer2( spep_0 + 266, 1442, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE011, 282 );
setStartTimeMs( SE011,  833 );

--ガラス飛んでいく
SE016 = playSeVer2( spep_0 + 270, 1118, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 270, 1370, "",spep_0 + 366, 0, 30, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 300;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--ガラス飛んでいく
SE018 = playSeVer2( spep_0 + 310, 1116, "",spep_0 + 390, 0, 18, -1);
SE019 = playSeVer2( spep_0 + 320, 63, "",spep_0 + 384, 0, 16, -1);

--敵ヒット
SE015 = playSeVer2( spep_0 + 358, 1384, "",spep_0 + 418, 8, 24, -1);
setStartTimeMs( SE015,  1900 );
setSeVolumeByWorkId( spep_0 + 358, SE015, 112 );
SE020 = playSeVer2( spep_0 + 360, 1025, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 364, 1054, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 418

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--翻る
SE023 = playSeVer2( spep_1 + 86, 1117, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 86, 1207, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 86, 1000, "", 0, 0, 0, -1);

------------------------------------------------------
-- 気弾を構える〜気弾が敵に迫りヒットする ef_002
------------------------------------------------------
MAX_FRAME_2 = 188;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 気弾を構える〜気弾が敵に迫りヒットする ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
--setEffAlphaKey( spep_2 + 0, SP_02, 255 );
--setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2-1, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 0 );

SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 気弾を構える〜気弾が敵に迫りヒットする ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 108 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 108 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 108 + OFFSET_X, 1, 0.3, -78.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 0.3, -78.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 0.2, -78.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 0.2, -78.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 0.2, -79 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 0.2, -79 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 0.1, -79.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 0.1, -79.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 0, -79.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 0, -79.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -17.4, -117.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -17.4, -117.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -2.8, -211 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -2.8, -211 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -4.9, -101.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -4.9, -101.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -21.4, -189.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -21.4, -189.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -26.6, -74 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -26.6, -74 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -14.3, -156.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -14.3, -156.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -18.7, -35.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -18.7, -35.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -37.5, -106.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -37.5, -106.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -45, 1.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -45, 1.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -34.4, -48.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -34.4, -48.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -41.3, 29.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -41.3, 29.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -55.6, 19.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -55.6, 19.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -59.3, 63.7 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -59.3, 63.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -54.5, 54.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -54.5, 54.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -57.1, 89.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -57.1, 89.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -67.1, 78.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -67.1, 78.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -68.5, 105.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -68.5, 105.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -61.4, 89.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -61.4, 89.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -61.6, 107.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -61.6, 107.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -73.2, 100.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -73.2, 100.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -74.5, 113.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -74.5, 113.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -73.4, 112.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -73.4, 112.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -76, 124.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -76, 124.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -84.3, 119.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -84.3, 119.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -82.4, 126.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -82.4, 126.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -84.1, 129.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -84.1, 129.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -85.5, 131.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -85.5, 131.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -86.5, 133.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -86.5, 133.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -87.3, 134.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -87.3, 134.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -87.8, 135.2 , 0 );

setScaleKey( spep_2 + 108 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 108 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -10.1 );

-- ** 音 ** --
--翻る
SE026 = playSeVer2( spep_2 + 32, 1118, "",spep_2 + 104, 0, 26, -1);
SE027 = playSeVer2( spep_2 + 32, 44, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 32, 1116, "",spep_2 + 130, 0, 20, -1);

--蹴り飛ばす
SE029 = playSeVer2( spep_2 + 106, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 120, 1120, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 120, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE032 = playSeVer2( spep_2 + 128, 1183, "",spep_2 + 210, 0, 12, -1);
SE033 = playSeVer2( spep_2 + 166, 1121, "",spep_2 + 224, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 166, SE033, 67 );

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  -- 188

------------------------------------------------------
-- 「ガッ」 ef_003
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_003 , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, -1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, -1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]
 
-- ** 集中線 ** --
--[[
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
]]

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 7 );
 
setMoveKey( spep_N + 0, 1, -21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end
