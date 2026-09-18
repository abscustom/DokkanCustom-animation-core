--1026430：魔人ブウ(悪)_リベンジデスボンバー(アクティブ)
--sp_effect_b4_00279
--ut0051

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 161756;  -- 開幕〜フィニッシュ ef_001
SP_02 = 161757;  -- 開幕〜フィニッシュ(背景) ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);

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
changeAnime( 0, 1, 0);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 431 -12);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 878);  -- スキップ先フレーム指定
       end
    else end

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 全編 (1208F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
ef_001 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 開幕〜フィニッシュ ef_001
setEffMoveKey( spep_0 + 0, ef_001, 0, 0, 0 );
setEffMoveKey( spep_0 + 1208, ef_001, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ef_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1208, ef_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ef_001, 0 );
setEffRotateKey( spep_0 + 1208, ef_001, 0 );
setEffAlphaKey( spep_0 + 0, ef_001, 255 );
setEffAlphaKey( spep_0 + 1208, ef_001, 255 );

ef_002 = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0);  -- 開幕〜フィニッシュ(背景) ef_002
setEffMoveKey( spep_0 + 0, ef_002, 0, 0, 0 );
setEffMoveKey( spep_0 + 1208, ef_002, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ef_002, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1208, ef_002, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ef_002, 0 );
setEffRotateKey( spep_0 + 1208, ef_002, 0 );
setEffAlphaKey( spep_0 + 0, ef_002, 255 );
setEffAlphaKey( spep_0 + 1208, ef_002, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1208 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
offset = -1;

setDisp( spep_0 + 340 + offset, 1, 1 );

changeAnime( spep_0 + 340 + offset, 1, 102 );

setMoveKey( spep_0 + 340 + offset, 1, 185.9, -271 , 0 );
setMoveKey( spep_0 + 341 + offset, 1, 185.9, -271 , 0 );
setMoveKey( spep_0 + 342 + offset, 1, 188, -269 , 0 );
setMoveKey( spep_0 + 343 + offset, 1, 188, -269 , 0 );
setMoveKey( spep_0 + 344 + offset, 1, 184.1, -273.1 , 0 );
setMoveKey( spep_0 + 345 + offset, 1, 184.1, -273.1 , 0 );
setMoveKey( spep_0 + 346 + offset, 1, 184.3, -269.2 , 0 );
setMoveKey( spep_0 + 347 + offset, 1, 184.3, -269.2 , 0 );
setMoveKey( spep_0 + 348 + offset, 1, 188.6, -273.4 , 0 );
setMoveKey( spep_0 + 349 + offset, 1, 188.6, -273.4 , 0 );
setMoveKey( spep_0 + 350 + offset, 1, 189, -269.7 , 0 );
setMoveKey( spep_0 + 351 + offset, 1, 189, -269.7 , 0 );
setMoveKey( spep_0 + 352 + offset, 1, 185.5, -274 , 0 );
setMoveKey( spep_0 + 353 + offset, 1, 185.5, -274 , 0 );
setMoveKey( spep_0 + 354 + offset, 1, 186.1, -270.4 , 0 );
setMoveKey( spep_0 + 355 + offset, 1, 186.1, -270.4 , 0 );
setMoveKey( spep_0 + 356 + offset, 1, 190.8, -274.9 , 0 );
setMoveKey( spep_0 + 357 + offset, 1, 190.8, -274.9 , 0 );
setMoveKey( spep_0 + 358 + offset, 1, 191.5, -271.5 , 0 );
setMoveKey( spep_0 + 359 + offset, 1, 191.5, -271.5 , 0 );
setMoveKey( spep_0 + 360 + offset, 1, 188.4, -276 , 0 );
setMoveKey( spep_0 + 361 + offset, 1, 188.4, -276 , 0 );
setMoveKey( spep_0 + 362 + offset, 1, 189.5, -272.6 , 0 );
setMoveKey( spep_0 + 363 + offset, 1, 189.5, -272.6 , 0 );
setMoveKey( spep_0 + 364 + offset, 1, 194.5, -277.4 , 0 );
setMoveKey( spep_0 + 365 + offset, 1, 194.5, -277.4 , 0 );
setMoveKey( spep_0 + 366 + offset, 1, 195.7, -274.2 , 0 );
setMoveKey( spep_0 + 367 + offset, 1, 195.7, -274.2 , 0 );
setMoveKey( spep_0 + 368 + offset, 1, 193, -279 , 0 );
setMoveKey( spep_0 + 369 + offset, 1, 193, -279 , 0 );
setMoveKey( spep_0 + 370 + offset, 1, 193.7, -275.6 , 0 );
setMoveKey( spep_0 + 371 + offset, 1, 193.7, -275.6 , 0 );
setMoveKey( spep_0 + 372 + offset, 1, 199.6, -281.5 , 0 );
setMoveKey( spep_0 + 373 + offset, 1, 199.6, -281.5 , 0 );
setMoveKey( spep_0 + 374 + offset, 1, 202.9, -280.6 , 0 );
setMoveKey( spep_0 + 375 + offset, 1, 202.9, -280.6 , 0 );
setMoveKey( spep_0 + 376 + offset, 1, 203.5, -289 , 0 );
setMoveKey( spep_0 + 377 + offset, 1, 203.5, -289 , 0 );
setMoveKey( spep_0 + 378 + offset, 1, 209.4, -290.6 , 0 );
setMoveKey( spep_0 + 379 + offset, 1, 209.4, -290.6 , 0 );
setMoveKey( spep_0 + 380 + offset, 1, 220.6, -301.5 , 0 );
setMoveKey( spep_0 + 381 + offset, 1, 220.6, -301.5 , 0 );
setMoveKey( spep_0 + 382 + offset, 1, 232.9, -309.9 , 0 );
setMoveKey( spep_0 + 383 + offset, 1, 232.9, -309.9 , 0 );
setMoveKey( spep_0 + 384 + offset, 1, 242.8, -309.2 , 0 );
setMoveKey( spep_0 + 385 + offset, 1, 242.8, -309.2 , 0 );
setMoveKey( spep_0 + 386 + offset, 1, 246, -329.8 , 0 );
setMoveKey( spep_0 + 387 + offset, 1, 246, -329.8 , 0 );
setMoveKey( spep_0 + 388 + offset, 1, 258.3, -333.8 , 0 );
setMoveKey( spep_0 + 389 + offset, 1, 258.3, -333.8 , 0 );
setMoveKey( spep_0 + 390 + offset, 1, 280, -355 , 0 );
setMoveKey( spep_0 + 391 + offset, 1, 280, -355 , 0 );
setMoveKey( spep_0 + 392 + offset, 1, 298.8, -359.3 , 0 );
setMoveKey( spep_0 + 393 + offset, 1, 298.8, -359.3 , 0 );
setMoveKey( spep_0 + 394 + offset, 1, 306.9, -392.8 , 0 );
setMoveKey( spep_0 + 395 + offset, 1, 306.9, -392.8 , 0 );
setMoveKey( spep_0 + 396 + offset, 1, 326.3, -391.7 , 0 );
setMoveKey( spep_0 + 397 + offset, 1, 326.3, -391.7 , 0 );
setMoveKey( spep_0 + 398 + offset, 1, 351, -425.7 , 0 );
setMoveKey( spep_0 + 399 + offset, 1, 351, -425.7 , 0 );
setMoveKey( spep_0 + 400 + offset, 1, 372.1, -429.5 , 0 );
setMoveKey( spep_0 + 401 + offset, 1, 372.1, -429.5 , 0 );
setMoveKey( spep_0 + 402 + offset, 1, 384.1, -466.8 , 0 );
setMoveKey( spep_0 + 403 + offset, 1, 384.1, -466.8 , 0 );
setMoveKey( spep_0 + 404 + offset, 1, 404.9, -466.9 , 0 );
setMoveKey( spep_0 + 405 + offset, 1, 404.9, -466.9 , 0 );
setMoveKey( spep_0 + 406 + offset, 1, 428.3, -499.7 , 0 );
setMoveKey( spep_0 + 407 + offset, 1, 428.3, -499.7 , 0 );
setMoveKey( spep_0 + 408 + offset, 1, 445.4, -499.7 , 0 );
setMoveKey( spep_0 + 409 + offset, 1, 445.4, -499.7 , 0 );
setMoveKey( spep_0 + 410 + offset, 1, 452.2, -531.9 , 0 );
setMoveKey( spep_0 + 411 + offset, 1, 452.2, -531.9 , 0 );
setMoveKey( spep_0 + 412 + offset, 1, 467.7, -527 , 0 );
setMoveKey( spep_0 + 413 + offset, 1, 467.7, -527 , 0 );
setMoveKey( spep_0 + 414 + offset, 1, 485.9, -554.8 , 0 );
setMoveKey( spep_0 + 415 + offset, 1, 485.9, -554.8 , 0 );
setMoveKey( spep_0 + 416 + offset, 1, 497.8, -549.8 , 0 );
setMoveKey( spep_0 + 417 + offset, 1, 497.8, -549.8 , 0 );
setMoveKey( spep_0 + 418 + offset, 1, 499.3, -577 , 0 );
setMoveKey( spep_0 + 419 + offset, 1, 499.3, -577 , 0 );
setMoveKey( spep_0 + 420 + offset, 1, 509.6, -567.1 , 0 );
setMoveKey( spep_0 + 421 + offset, 1, 509.6, -567.1 , 0 );
setMoveKey( spep_0 + 422 + offset, 1, 522.5, -589.9 , 0 );
setMoveKey( spep_0 + 423 + offset, 1, 522.5, -589.9 , 0 );
setMoveKey( spep_0 + 424 + offset, 1, 529.2, -579.9 , 0 );
setMoveKey( spep_0 + 425 + offset, 1, 529.2, -579.9 , 0 );
setMoveKey( spep_0 + 426 + offset, 1, 525.5, -602.1 , 0 );
setMoveKey( spep_0 + 427 + offset, 1, 525.5, -602.1 , 0 );
setMoveKey( spep_0 + 428 + offset, 1, 530.5, -587.2 , 0 );
setMoveKey( spep_0 + 429 + offset, 1, 530.5, -587.2 , 0 );
setMoveKey( spep_0 + 430 + offset, 1, 538.2, -604.9 , 0 );
setMoveKey( spep_0 + 431 + offset, 1, 538.2, -604.9 , 0 );
setMoveKey( spep_0 + 432 + offset, 1, 539.7, -589.9 , 0 );

setScaleKey( spep_0 + 340 + offset, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 352 + offset, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 353 + offset, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 354 + offset, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 362 + offset, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 363 + offset, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 364 + offset, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 370 + offset, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 371 + offset, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 372 + offset, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 373 + offset, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 374 + offset, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 375 + offset, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 376 + offset, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 377 + offset, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 378 + offset, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 379 + offset, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 380 + offset, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 381 + offset, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 382 + offset, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 383 + offset, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 384 + offset, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 385 + offset, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 386 + offset, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 387 + offset, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 388 + offset, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 389 + offset, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 390 + offset, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 391 + offset, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 392 + offset, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 393 + offset, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 394 + offset, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 395 + offset, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 396 + offset, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 397 + offset, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 398 + offset, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 399 + offset, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 400 + offset, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 401 + offset, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 402 + offset, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 403 + offset, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 404 + offset, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 405 + offset, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 406 + offset, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 407 + offset, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 408 + offset, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 409 + offset, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 410 + offset, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 411 + offset, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 412 + offset, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 413 + offset, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 414 + offset, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 415 + offset, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 416 + offset, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 417 + offset, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 418 + offset, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 419 + offset, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 420 + offset, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 421 + offset, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 422 + offset, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 423 + offset, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 424 + offset, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 425 + offset, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 426 + offset, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 427 + offset, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 428 + offset, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 432 + offset, 1, 1.72, 1.72 );

setRotateKey( spep_0 + 340 + offset, 1, 0 );
setRotateKey( spep_0 + 432 + offset, 1, 0 );

setAlphaKey( spep_0 + 340 + offset, 1, 255 );
setAlphaKey( spep_0 + 432 + offset, 1, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 20, 1018, "", 0, 0, 0, -1);

--集中線
SE003 = playSeVer2( spep_0 + 136, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE003, 56 );
SE004 = playSeVer2( spep_0 + 136, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE004, 59 );

--画面遷移
SE005 = playSeVer2( spep_0 + 200, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE005, 66 );

--地響き
SE006 = playSeVer2( spep_0 + 326, 1226, "",spep_0 + 780, 0, 22, -1);

--気を高める
SE007 = playSeVer2( spep_0 + 326, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE007, 77 );
SE008 = playSeVer2( spep_0 + 358, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE008, 68 );
SE009 = playSeVer2( spep_0 + 358, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358, SE009, 73 );
SE010 = playSeVer2( spep_0 + 360, 1278, "", 0, 0, 0, -1);

--集中線２
SE011 = playSeVer2( spep_0 + 282, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE011, 56 );
SE012 = playSeVer2( spep_0 + 282, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE012, 45 );

--ボイス
----「おまえだけはゆるさない…!!!」
playVoice( spep_0 + 10, 621 );
setVoiceVolume( spep_0 + 10, 621, 100 );

----「ぜったいぜったいぜーったいだ!!!」
playVoice( spep_0 + 130, 622 );
setVoiceVolume( spep_0 + 130, 622, 100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 431; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 + 434 + offset, 1, 0 );
setDisp( spep_0 + 589 + offset, 1, 1 );
setDisp( spep_0 + 644 + offset, 1, 0 );
setDisp( spep_0 + 782 + offset, 1, 1 );
setDisp( spep_0 + 967 + offset, 1, 0 );

changeAnime( spep_0 + 782 + offset, 1, 104 );
changeAnime( spep_0 + 878 + offset, 1, 106 );

setMoveKey( spep_0 + 589 + offset, 1, 539.7, -589.9 , 0 );
setMoveKey( spep_0 + 590 + offset, 1, 236.5, -29.4 , 0 );
setMoveKey( spep_0 + 591 + offset, 1, 236.5, -29.4 , 0 );
setMoveKey( spep_0 + 592 + offset, 1, 246, -34.3 , 0 );
setMoveKey( spep_0 + 593 + offset, 1, 246, -34.3 , 0 );
setMoveKey( spep_0 + 594 + offset, 1, 247.2, -45.3 , 0 );
setMoveKey( spep_0 + 595 + offset, 1, 247.2, -45.3 , 0 );
setMoveKey( spep_0 + 596 + offset, 1, 252.4, -50.5 , 0 );
setMoveKey( spep_0 + 597 + offset, 1, 252.4, -50.5 , 0 );
setMoveKey( spep_0 + 598 + offset, 1, 255.9, -59.7 , 0 );
setMoveKey( spep_0 + 599 + offset, 1, 255.9, -59.7 , 0 );
setMoveKey( spep_0 + 600 + offset, 1, 256, -63 , 0 );
setMoveKey( spep_0 + 601 + offset, 1, 256, -63 , 0 );
setMoveKey( spep_0 + 602 + offset, 1, 250.7, -74.2 , 0 );
setMoveKey( spep_0 + 603 + offset, 1, 250.7, -74.2 , 0 );
setMoveKey( spep_0 + 604 + offset, 1, 250.3, -79.4 , 0 );
setMoveKey( spep_0 + 605 + offset, 1, 250.3, -79.4 , 0 );
setMoveKey( spep_0 + 606 + offset, 1, 247.1, -86.4 , 0 );
setMoveKey( spep_0 + 607 + offset, 1, 247.1, -86.4 , 0 );
setMoveKey( spep_0 + 608 + offset, 1, 245.1, -91.2 , 0 );
setMoveKey( spep_0 + 609 + offset, 1, 245.1, -91.2 , 0 );
setMoveKey( spep_0 + 610 + offset, 1, 236.6, -101.8 , 0 );
setMoveKey( spep_0 + 611 + offset, 1, 236.6, -101.8 , 0 );
setMoveKey( spep_0 + 612 + offset, 1, 233.8, -106.1 , 0 );
setMoveKey( spep_0 + 613 + offset, 1, 233.8, -106.1 , 0 );
setMoveKey( spep_0 + 614 + offset, 1, 230.8, -114.1 , 0 );
setMoveKey( spep_0 + 615 + offset, 1, 230.8, -114.1 , 0 );
setMoveKey( spep_0 + 616 + offset, 1, 225.7, -115.7 , 0 );
setMoveKey( spep_0 + 617 + offset, 1, 225.7, -115.7 , 0 );
setMoveKey( spep_0 + 618 + offset, 1, 216.6, -124.9 , 0 );
setMoveKey( spep_0 + 619 + offset, 1, 216.6, -124.9 , 0 );
setMoveKey( spep_0 + 620 + offset, 1, 213.8, -127.8 , 0 );
setMoveKey( spep_0 + 621 + offset, 1, 213.8, -127.8 , 0 );
setMoveKey( spep_0 + 622 + offset, 1, 209.3, -132.1 , 0 );
setMoveKey( spep_0 + 623 + offset, 1, 209.3, -132.1 , 0 );
setMoveKey( spep_0 + 624 + offset, 1, 207.2, -134 , 0 );
setMoveKey( spep_0 + 625 + offset, 1, 207.2, -134 , 0 );
setMoveKey( spep_0 + 626 + offset, 1, 199.5, -141.4 , 0 );
setMoveKey( spep_0 + 627 + offset, 1, 199.5, -141.4 , 0 );
setMoveKey( spep_0 + 628 + offset, 1, 198.5, -142.2 , 0 );
setMoveKey( spep_0 + 629 + offset, 1, 198.5, -142.2 , 0 );
setMoveKey( spep_0 + 630 + offset, 1, 198.1, -146.5 , 0 );
setMoveKey( spep_0 + 631 + offset, 1, 198.1, -146.5 , 0 );
setMoveKey( spep_0 + 632 + offset, 1, 196.4, -144.3 , 0 );
setMoveKey( spep_0 + 633 + offset, 1, 196.4, -144.3 , 0 );
setMoveKey( spep_0 + 634 + offset, 1, 191.4, -149.5 , 0 );
setMoveKey( spep_0 + 635 + offset, 1, 191.4, -149.5 , 0 );
setMoveKey( spep_0 + 636 + offset, 1, 193.2, -148.1 , 0 );
setMoveKey( spep_0 + 637 + offset, 1, 193.2, -148.1 , 0 );
setMoveKey( spep_0 + 638 + offset, 1, 193.9, -148.1 , 0 );
setMoveKey( spep_0 + 639 + offset, 1, 193.9, -148.1 , 0 );
setMoveKey( spep_0 + 640 + offset, 1, 196.7, -145.9 , 0 );
setMoveKey( spep_0 + 641 + offset, 1, 196.7, -145.9 , 0 );
setMoveKey( spep_0 + 642 + offset, 1, 192.9, -149.8 , 0 );
setMoveKey( spep_0 + 693 + offset, 1, 192.9, -149.8 , 0 );
setMoveKey( spep_0 + 694 + offset, 1, 1389.1, 145.2 , 0 );
setMoveKey( spep_0 + 781 + offset, 1, 1389.1, 145.2 , 0 );
setMoveKey( spep_0 + 782 + offset, 1, 70.7, -143.4 , 0 );
setMoveKey( spep_0 + 783 + offset, 1, 70.7, -143.4 , 0 );
setMoveKey( spep_0 + 784 + offset, 1, 65.1, -133.4 , 0 );
setMoveKey( spep_0 + 785 + offset, 1, 65.1, -133.4 , 0 );
setMoveKey( spep_0 + 786 + offset, 1, 71.4, -125.5 , 0 );
setMoveKey( spep_0 + 787 + offset, 1, 71.4, -125.5 , 0 );
setMoveKey( spep_0 + 788 + offset, 1, 63.9, -135.5 , 0 );
setMoveKey( spep_0 + 789 + offset, 1, 63.9, -135.5 , 0 );
setMoveKey( spep_0 + 790 + offset, 1, 64.2, -127.6 , 0 );
setMoveKey( spep_0 + 791 + offset, 1, 64.2, -127.6 , 0 );
setMoveKey( spep_0 + 792 + offset, 1, 72.6, -135.6 , 0 );
setMoveKey( spep_0 + 793 + offset, 1, 72.6, -135.6 , 0 );
setMoveKey( spep_0 + 794 + offset, 1, 73.1, -125.5 , 0 );
setMoveKey( spep_0 + 795 + offset, 1, 73.1, -125.5 , 0 );
setMoveKey( spep_0 + 796 + offset, 1, 65.6, -135.5 , 0 );
setMoveKey( spep_0 + 797 + offset, 1, 65.6, -135.5 , 0 );
setMoveKey( spep_0 + 798 + offset, 1, 65.9, -127.6 , 0 );
setMoveKey( spep_0 + 799 + offset, 1, 65.9, -127.6 , 0 );
setMoveKey( spep_0 + 800 + offset, 1, 74.3, -135.6 , 0 );
setMoveKey( spep_0 + 801 + offset, 1, 74.3, -135.6 , 0 );
setMoveKey( spep_0 + 802 + offset, 1, 74.8, -125.5 , 0 );
setMoveKey( spep_0 + 803 + offset, 1, 74.8, -125.5 , 0 );
setMoveKey( spep_0 + 804 + offset, 1, 67.3, -135.5 , 0 );
setMoveKey( spep_0 + 805 + offset, 1, 67.3, -135.5 , 0 );
setMoveKey( spep_0 + 806 + offset, 1, 67.6, -127.6 , 0 );
setMoveKey( spep_0 + 807 + offset, 1, 67.6, -127.6 , 0 );
setMoveKey( spep_0 + 808 + offset, 1, 76, -135.6 , 0 );
setMoveKey( spep_0 + 809 + offset, 1, 76, -135.6 , 0 );
setMoveKey( spep_0 + 810 + offset, 1, 80.1, -125.5 , 0 );
setMoveKey( spep_0 + 811 + offset, 1, 80.1, -125.5 , 0 );
setMoveKey( spep_0 + 812 + offset, 1, 72.3, -143.4 , 0 );
setMoveKey( spep_0 + 813 + offset, 1, 72.3, -143.4 , 0 );
setMoveKey( spep_0 + 814 + offset, 1, 69.3, -127.6 , 0 );
setMoveKey( spep_0 + 815 + offset, 1, 69.3, -127.6 , 0 );
setMoveKey( spep_0 + 816 + offset, 1, 77.7, -135.6 , 0 );
setMoveKey( spep_0 + 817 + offset, 1, 77.7, -135.6 , 0 );
setMoveKey( spep_0 + 818 + offset, 1, 81.8, -125.5 , 0 );
setMoveKey( spep_0 + 819 + offset, 1, 81.8, -125.5 , 0 );
setMoveKey( spep_0 + 820 + offset, 1, 74, -143.4 , 0 );
setMoveKey( spep_0 + 821 + offset, 1, 74, -143.4 , 0 );
setMoveKey( spep_0 + 822 + offset, 1, 71, -127.6 , 0 );
setMoveKey( spep_0 + 823 + offset, 1, 71, -127.6 , 0 );
setMoveKey( spep_0 + 824 + offset, 1, 79.4, -135.6 , 0 );
setMoveKey( spep_0 + 825 + offset, 1, 79.4, -135.6 , 0 );
setMoveKey( spep_0 + 826 + offset, 1, 78, -113.4 , 0 );
setMoveKey( spep_0 + 827 + offset, 1, 78, -113.4 , 0 );
setMoveKey( spep_0 + 828 + offset, 1, 72.5, -141.4 , 0 );
setMoveKey( spep_0 + 829 + offset, 1, 72.5, -141.4 , 0 );
setMoveKey( spep_0 + 830 + offset, 1, 74.9, -123.4 , 0 );
setMoveKey( spep_0 + 831 + offset, 1, 74.9, -123.4 , 0 );
setMoveKey( spep_0 + 832 + offset, 1, 79.3, -151.4 , 0 );
setMoveKey( spep_0 + 833 + offset, 1, 79.3, -151.4 , 0 );
setMoveKey( spep_0 + 834 + offset, 1, 79.7, -113.4 , 0 );
setMoveKey( spep_0 + 835 + offset, 1, 79.7, -113.4 , 0 );
setMoveKey( spep_0 + 836 + offset, 1, 74.2, -141.4 , 0 );
setMoveKey( spep_0 + 837 + offset, 1, 74.2, -141.4 , 0 );
setMoveKey( spep_0 + 838 + offset, 1, 76.6, -123.4 , 0 );
setMoveKey( spep_0 + 839 + offset, 1, 76.6, -123.4 , 0 );
setMoveKey( spep_0 + 840 + offset, 1, 81, -151.4 , 0 );
setMoveKey( spep_0 + 841 + offset, 1, 81, -151.4 , 0 );
setMoveKey( spep_0 + 842 + offset, 1, 81.5, -113.4 , 0 );
setMoveKey( spep_0 + 843 + offset, 1, 81.5, -113.4 , 0 );
setMoveKey( spep_0 + 844 + offset, 1, 75.9, -141.4 , 0 );
setMoveKey( spep_0 + 845 + offset, 1, 75.9, -141.4 , 0 );
setMoveKey( spep_0 + 846 + offset, 1, 78.3, -123.4 , 0 );
setMoveKey( spep_0 + 847 + offset, 1, 78.3, -123.4 , 0 );
setMoveKey( spep_0 + 848 + offset, 1, 82.7, -151.4 , 0 );
setMoveKey( spep_0 + 849 + offset, 1, 82.7, -151.4 , 0 );
setMoveKey( spep_0 + 850 + offset, 1, 83.2, -113.4 , 0 );
setMoveKey( spep_0 + 851 + offset, 1, 83.2, -113.4 , 0 );
setMoveKey( spep_0 + 852 + offset, 1, 77.6, -141.4 , 0 );
setMoveKey( spep_0 + 853 + offset, 1, 77.6, -141.4 , 0 );
setMoveKey( spep_0 + 854 + offset, 1, 80, -123.4 , 0 );
setMoveKey( spep_0 + 855 + offset, 1, 80, -123.4 , 0 );
setMoveKey( spep_0 + 856 + offset, 1, 84.4, -151.4 , 0 );
setMoveKey( spep_0 + 857 + offset, 1, 84.4, -151.4 , 0 );
setMoveKey( spep_0 + 858 + offset, 1, 84.9, -113.4 , 0 );
setMoveKey( spep_0 + 859 + offset, 1, 84.9, -113.4 , 0 );
setMoveKey( spep_0 + 860 + offset, 1, 79.3, -141.4 , 0 );
setMoveKey( spep_0 + 861 + offset, 1, 79.3, -141.4 , 0 );
setMoveKey( spep_0 + 862 + offset, 1, 81.7, -123.4 , 0 );
setMoveKey( spep_0 + 863 + offset, 1, 81.7, -123.4 , 0 );
setMoveKey( spep_0 + 864 + offset, 1, 86.1, -151.4 , 0 );
setMoveKey( spep_0 + 865 + offset, 1, 86.1, -151.4 , 0 );
setMoveKey( spep_0 + 866 + offset, 1, 86.6, -113.4 , 0 );
setMoveKey( spep_0 + 867 + offset, 1, 86.6, -113.4 , 0 );
setMoveKey( spep_0 + 868 + offset, 1, 81, -141.4 , 0 );
setMoveKey( spep_0 + 869 + offset, 1, 81, -141.4 , 0 );
setMoveKey( spep_0 + 870 + offset, 1, 83.4, -123.4 , 0 );
setMoveKey( spep_0 + 871 + offset, 1, 83.4, -123.4 , 0 );
setMoveKey( spep_0 + 872 + offset, 1, 87.8, -151.4 , 0 );
setMoveKey( spep_0 + 873 + offset, 1, 87.8, -151.4 , 0 );
setMoveKey( spep_0 + 874 + offset, 1, 85.5, -143.4 , 0 );
setMoveKey( spep_0 + 875 + offset, 1, 85.5, -143.4 , 0 );
setMoveKey( spep_0 + 876 + offset, 1, 82.5, -127.6 , 0 );
setMoveKey( spep_0 + 877 + offset, 1, 82.5, -127.6 , 0 );
setMoveKey( spep_0 + 878 + offset, 1, 102.4, -114.2 , 0 );
setMoveKey( spep_0 + 879 + offset, 1, 102.4, -114.2 , 0 );
setMoveKey( spep_0 + 880 + offset, 1, 90.5, -152.1 , 0 );
setMoveKey( spep_0 + 881 + offset, 1, 90.5, -152.1 , 0 );
setMoveKey( spep_0 + 882 + offset, 1, 88.6, -127.8 , 0 );
setMoveKey( spep_0 + 883 + offset, 1, 88.6, -127.8 , 0 );
setMoveKey( spep_0 + 884 + offset, 1, 102.8, -143.3 , 0 );
setMoveKey( spep_0 + 885 + offset, 1, 102.8, -143.3 , 0 );
setMoveKey( spep_0 + 886 + offset, 1, 103, -112.5 , 0 );
setMoveKey( spep_0 + 887 + offset, 1, 103, -112.5 , 0 );
setMoveKey( spep_0 + 888 + offset, 1, 91.3, -149.6 , 0 );
setMoveKey( spep_0 + 889 + offset, 1, 91.3, -149.6 , 0 );
setMoveKey( spep_0 + 890 + offset, 1, 89.7, -124.5 , 0 );
setMoveKey( spep_0 + 891 + offset, 1, 89.7, -124.5 , 0 );
setMoveKey( spep_0 + 892 + offset, 1, 104.2, -139.1 , 0 );
setMoveKey( spep_0 + 893 + offset, 1, 104.2, -139.1 , 0 );
setMoveKey( spep_0 + 894 + offset, 1, 104.7, -107.6 , 0 );
setMoveKey( spep_0 + 895 + offset, 1, 104.7, -107.6 , 0 );
setMoveKey( spep_0 + 896 + offset, 1, 93.3, -143.8 , 0 );
setMoveKey( spep_0 + 897 + offset, 1, 93.3, -143.8 , 0 );
setMoveKey( spep_0 + 898 + offset, 1, 92, -117.9 , 0 );
setMoveKey( spep_0 + 899 + offset, 1, 92, -117.9 , 0 );
setMoveKey( spep_0 + 900 + offset, 1, 106.7, -131.7 , 0 );
setMoveKey( spep_0 + 901 + offset, 1, 106.7, -131.7 , 0 );
setMoveKey( spep_0 + 902 + offset, 1, 107.5, -99.3 , 0 );
setMoveKey( spep_0 + 903 + offset, 1, 107.5, -99.3 , 0 );
setMoveKey( spep_0 + 904 + offset, 1, 96.4, -134.7 , 0 );
setMoveKey( spep_0 + 905 + offset, 1, 96.4, -134.7 , 0 );
setMoveKey( spep_0 + 906 + offset, 1, 95.3, -107.9 , 0 );
setMoveKey( spep_0 + 907 + offset, 1, 95.3, -107.9 , 0 );
setMoveKey( spep_0 + 908 + offset, 1, 110.4, -120.9 , 0 );
setMoveKey( spep_0 + 909 + offset, 1, 110.4, -120.9 , 0 );
setMoveKey( spep_0 + 910 + offset, 1, 111.4, -87.7 , 0 );
setMoveKey( spep_0 + 911 + offset, 1, 111.4, -87.7 , 0 );
setMoveKey( spep_0 + 912 + offset, 1, 100.6, -122.3 , 0 );
setMoveKey( spep_0 + 913 + offset, 1, 100.6, -122.3 , 0 );
setMoveKey( spep_0 + 914 + offset, 1, 99.8, -94.7 , 0 );
setMoveKey( spep_0 + 915 + offset, 1, 99.8, -94.7 , 0 );
setMoveKey( spep_0 + 916 + offset, 1, 115.1, -106.9 , 0 );
setMoveKey( spep_0 + 917 + offset, 1, 115.1, -106.9 , 0 );
setMoveKey( spep_0 + 918 + offset, 1, 116.5, -72.9 , 0 );
setMoveKey( spep_0 + 919 + offset, 1, 116.5, -72.9 , 0 );
setMoveKey( spep_0 + 920 + offset, 1, 105.9, -106.6 , 0 );
setMoveKey( spep_0 + 921 + offset, 1, 105.9, -106.6 , 0 );
setMoveKey( spep_0 + 922 + offset, 1, 105.4, -78.2 , 0 );
setMoveKey( spep_0 + 923 + offset, 1, 105.4, -78.2 , 0 );
setMoveKey( spep_0 + 924 + offset, 1, 121, -89.7 , 0 );
setMoveKey( spep_0 + 925 + offset, 1, 121, -89.7 , 0 );
setMoveKey( spep_0 + 926 + offset, 1, 122.4, -55.5 , 0 );
setMoveKey( spep_0 + 927 + offset, 1, 122.4, -55.5 , 0 );
setMoveKey( spep_0 + 928 + offset, 1, 111.8, -89.5 , 0 );
setMoveKey( spep_0 + 929 + offset, 1, 111.8, -89.5 , 0 );
setMoveKey( spep_0 + 930 + offset, 1, 111.1, -61.7 , 0 );
setMoveKey( spep_0 + 931 + offset, 1, 111.1, -61.7 , 0 );
setMoveKey( spep_0 + 932 + offset, 1, 126.3, -74 , 0 );
setMoveKey( spep_0 + 933 + offset, 1, 126.3, -74 , 0 );
setMoveKey( spep_0 + 934 + offset, 1, 127.5, -40.6 , 0 );
setMoveKey( spep_0 + 935 + offset, 1, 127.5, -40.6 , 0 );
setMoveKey( spep_0 + 936 + offset, 1, 116.5, -75.4 , 0 );
setMoveKey( spep_0 + 937 + offset, 1, 116.5, -75.4 , 0 );
setMoveKey( spep_0 + 938 + offset, 1, 115.6, -48.4 , 0 );
setMoveKey( spep_0 + 939 + offset, 1, 115.6, -48.4 , 0 );
setMoveKey( spep_0 + 940 + offset, 1, 130.5, -61.6 , 0 );
setMoveKey( spep_0 + 941 + offset, 1, 130.5, -61.6 , 0 );
setMoveKey( spep_0 + 942 + offset, 1, 131.4, -29.1 , 0 );
setMoveKey( spep_0 + 943 + offset, 1, 131.4, -29.1 , 0 );
setMoveKey( spep_0 + 944 + offset, 1, 120.2, -64.7 , 0 );
setMoveKey( spep_0 + 945 + offset, 1, 120.2, -64.7 , 0 );
setMoveKey( spep_0 + 946 + offset, 1, 118.9, -38.5 , 0 );
setMoveKey( spep_0 + 947 + offset, 1, 118.9, -38.5 , 0 );
setMoveKey( spep_0 + 948 + offset, 1, 133.6, -52.5 , 0 );
setMoveKey( spep_0 + 949 + offset, 1, 133.6, -52.5 , 0 );
setMoveKey( spep_0 + 950 + offset, 1, 134.2, -20.8 , 0 );
setMoveKey( spep_0 + 951 + offset, 1, 134.2, -20.8 , 0 );
setMoveKey( spep_0 + 952 + offset, 1, 122.7, -57.2 , 0 );
setMoveKey( spep_0 + 953 + offset, 1, 122.7, -57.2 , 0 );
setMoveKey( spep_0 + 954 + offset, 1, 121.2, -31.9 , 0 );
setMoveKey( spep_0 + 955 + offset, 1, 121.2, -31.9 , 0 );
setMoveKey( spep_0 + 956 + offset, 1, 135.6, -46.8 , 0 );
setMoveKey( spep_0 + 957 + offset, 1, 135.6, -46.8 , 0 );
setMoveKey( spep_0 + 958 + offset, 1, 135.9, -15.8 , 0 );
setMoveKey( spep_0 + 959 + offset, 1, 135.9, -15.8 , 0 );
setMoveKey( spep_0 + 960 + offset, 1, 124.1, -53.1 , 0 );
setMoveKey( spep_0 + 961 + offset, 1, 124.1, -53.1 , 0 );
setMoveKey( spep_0 + 962 + offset, 1, 122.3, -28.6 , 0 );
setMoveKey( spep_0 + 963 + offset, 1, 122.3, -28.6 , 0 );
setMoveKey( spep_0 + 964 + offset, 1, 136.4, -44.3 , 0 );
setMoveKey( spep_0 + 965 + offset, 1, 136.4, -44.3 , 0 );
setMoveKey( spep_0 + 966 + offset, 1, 136.4, -14.2 , 0 );

setScaleKey( spep_0 + 589 + offset, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 590 + offset, 1, 5.18, 5.18 );
setScaleKey( spep_0 + 591 + offset, 1, 5.18, 5.18 );
setScaleKey( spep_0 + 592 + offset, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 593 + offset, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 594 + offset, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 595 + offset, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 596 + offset, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 597 + offset, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 598 + offset, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 599 + offset, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 600 + offset, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 601 + offset, 1, 4.52, 4.52 );
setScaleKey( spep_0 + 602 + offset, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 603 + offset, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 604 + offset, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 605 + offset, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 606 + offset, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 607 + offset, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 608 + offset, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 609 + offset, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 610 + offset, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 611 + offset, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 612 + offset, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 613 + offset, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 614 + offset, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 615 + offset, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 616 + offset, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 617 + offset, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 618 + offset, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 619 + offset, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 620 + offset, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 621 + offset, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 622 + offset, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 623 + offset, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 624 + offset, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 625 + offset, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 626 + offset, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 627 + offset, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 628 + offset, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 629 + offset, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 630 + offset, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 631 + offset, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 632 + offset, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 633 + offset, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 634 + offset, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 635 + offset, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 636 + offset, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 642 + offset, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 693 + offset, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 694 + offset, 1, 14.66, 14.66 );
setScaleKey( spep_0 + 781 + offset, 1, 14.66, 14.66 );
setScaleKey( spep_0 + 782 + offset, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 878 + offset, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 966 + offset, 1, 1.56, 1.56 );

setRotateKey( spep_0 + 590 + offset, 1, 0 );
setRotateKey( spep_0 + 642 + offset, 1, 0 );
setRotateKey( spep_0 + 694 + offset, 1, 0 );
setRotateKey( spep_0 + 782 + offset, 1, 0 );
setRotateKey( spep_0 + 877 + offset, 1, 0 );
setRotateKey( spep_0 + 878 + offset, 1, -43.8 );
setRotateKey( spep_0 + 966 + offset, 1, -43.8 );

setAlphaKey( spep_0 + 590 + offset, 1, 255 );
setAlphaKey( spep_0 + 642 + offset, 1, 255 );
setAlphaKey( spep_0 + 693 + offset, 1, 255 );
setAlphaKey( spep_0 + 694 + offset, 1, 0 );
setAlphaKey( spep_0 + 781 + offset, 1, 0 );
setAlphaKey( spep_0 + 782 + offset, 1, 255 );
setAlphaKey( spep_0 + 878 + offset, 1, 255 );
setAlphaKey( spep_0 + 966 + offset, 1, 255 );

-- ** 音 ** --
--竜巻巻き起こる
SE013 = playSeVer2( spep_0 + 428, 1161, "",spep_0 + 600, 0, 72, -1);
SE014 = playSeVer2( spep_0 + 428, 1258, "", 0, 0, 0, -1);

--風力音
SE015 = playSeVer2( spep_0 + 468, 1259, "",spep_0 + 570, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 468, SE015, 91 );

--オーラ
SE016 = playSeVer2( spep_0 + 534, 1176, "",spep_0 + 786, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 534, SE016, 76 );
SE017 = playSeVer2( spep_0 + 534, 1227, "",spep_0 + 786, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 534, SE017, 80 );
SE006_02 = playSeVer2( spep_0 + 534, 1226, "",spep_0 + 780, 0, 22, -1);

--イナヅマ
SE018 = playSeVer2( spep_0 + 570, 1148, "", 0, 0, 0, -1);

--画面遷移
SE019 = playSeVer2( spep_0 + 668, 1072, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 688, 1116, "",spep_0 + 748, 0, 38, -1);

--爆発
SE021 = playSeVer2( spep_0 + 734, 1069, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 752, 1067, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 754, 1213, "",spep_0 + 918, 0, 32, -1);

--気弾迫る
SE024 = playSeVer2( spep_0 + 796, 1161, "",spep_0 + 918, 0, 32, -1);

--気弾ヒット
SE025 = playSeVer2( spep_0 + 836, 1011, "", 0, 0, 0, -1);

--ラスト爆発
SE026 = playSeVer2( spep_0 + 912, 1168, "", 0, 14, 0, -1);
setStartTimeMs( SE026,  850 );
SE027 = playSeVer2( spep_0 + 884, 1067, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 884, 1159, "", 0, 0, 0, -1);

--画面遷移
SE029 = playSeVer2( spep_0 + 990, 44, "", 0, 0, 0, -1);

--雲になる
SE030 = playSeVer2( spep_0 + 1010, 1398, "",spep_0 + 1100, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 1010, SE030, 316 );

--復活
SE031 = playSeVer2( spep_0 + 1080, 20, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 1080, 1062, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_0 + 1075 );
endPhase( spep_0 + 1208 );

else end
