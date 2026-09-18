--4030450:LR_超ベジット_超必殺技：かめはめ波
--sp_effect_b4_00372
--sp2841

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163605 --開幕～カットインまで ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
   if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        MAX_FRAME_0 = 564;

        spep_2 = MAX_FRAME_0 + 94;

        skipFrame(0, spep_2 + 162);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 162, SP_01, spep_2 + 162+2, 1);

        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --かめはめ波発射
        SE030 = playSeVer2( spep_2 + 162+3, 1027, "", 0, 0, 0, -1);
        SE031 = playSeVer2( spep_2 + 162+3, 1223, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 162+3, SE031, 141 );
        SE032 = playSeVer2( spep_2 + 162+3, 1284, "", 0, 0, 0, -1);
        SE033 = playSeVer2( spep_2 + 162+3, 1213, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 162+3, SE033, 71 );
    else
        setupMovie(0, SP_01, 2, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カットインまで
-------------------------------------------------
MAX_FRAME_0 = 564;
MAX_FRAME_2 = 638;

MAX_FRAME_ALL = MAX_FRAME_0 + 94 + MAX_FRAME_2;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットインまで ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_ALL, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_ALL, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_ALL, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_ALL, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;
 
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--腕上げる
SE002 = playSeVer2( spep_0 + 58, 1004, "", 0, 0, 0, -1);

--気ダメ
SE003 = playSeVer2( spep_0 + 84, 1024, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 84, 1035, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 84, 1427, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 84, 1256, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える
     
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
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
--画面遷移
SE007 = playSeVer2( spep_0 + 214, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE007, 77 );

--かめはめ波溜め
SE008 = playSeVer2( spep_0 + 256, 1209, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 256, 1210, "",spep_0 + 586, 0, 36, -1);
SE010 = playSeVer2( spep_0 + 256, 1429, "",spep_0 + 584, 0, 36, -1);
SE011 = playSeVer2( spep_0 + 256, 1371, "",spep_0 + 590, 0, 40, -1);

--気玉膨らむ
SE012 = playSeVer2( spep_0 + 288, 1283, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 288, 1354, "", 0, 0, 0, -1);

--遠くでひかる
SE015 = playSeVer2( spep_0 + 490, 1303, "",spep_0 + 580, 0, 32, -1);
SE016 = playSeVer2( spep_0 + 490, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE016, 78 );
SE017 = playSeVer2( spep_0 + 490, 1114, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 564  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE014 = playSeVer2( spep_1 + 82, 1210, "",spep_1 + 268, 8, 18, -1);
setStartTimeMs( SE014,  3900 );
--地響き
SE019 = playSeVer2( spep_1 + 86, 1044, "",spep_1 + 268, 0, 18, -1);
--オーラ
SE020 = playSeVer2( spep_1 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE020, 63 );

-------------------------------------------------
-- 構える～爆発まで
-------------------------------------------------
--MAX_FRAME_2 = 638;

-- finish_f = entryEffect( spep_0 + 1, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットインまで ef_001
-- setEffMoveKey( spep_0 + 1, finish_f, 0, 0 , 0);
-- setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
-- setEffScaleKey( spep_0 + 1, finish_f, 1.0, 1.0);
-- setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
-- setEffRotateKey( spep_0 + 1, finish_f, 0);
-- setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
-- setEffAlphaKey( spep_0 + 1, finish_f, 0);
-- setEffAlphaKey( spep_2 - 1, finish_f, 0);
-- setEffAlphaKey( spep_2 + 0, finish_f, 255);
-- setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 434 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 368 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 368 + OFFSET_X, 1, 228.7, 110.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 228.7, 110.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 229.1, 199.4 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 229.1, 199.4 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 196.1, 124.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 196.1, 124.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 253.9, 131.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 253.9, 131.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 193.6, 178.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 193.6, 178.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 254.7, 158.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 254.7, 158.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 192.9, 171.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 192.9, 171.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 255.4, 171.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 255.4, 171.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 213, 148.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 213, 148.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 224.5, 163.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 224.5, 163.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 219.6, 156.5 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 219.6, 156.5 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 224.5, 161.3 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 224.5, 161.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 217.1, 156.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 217.1, 156.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 226.9, 161.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 226.9, 161.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 217.1, 158.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 217.1, 158.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 226.8, 163.6 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 226.8, 163.6 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 224.3, 156.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 224.3, 156.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 219.4, 156.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 219.4, 156.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 221.8, 160.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 221.8, 160.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 221.8, 158.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 221.8, 158.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 224.2, 153.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 224.2, 153.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 219.2, 163.1 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 219.2, 163.1 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 221.6, 155.6 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 221.6, 155.6 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 224, 155.5 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 224, 155.5 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 216.6, 162.7 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 216.6, 162.7 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 223.8, 155.2 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 223.8, 155.2 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 223.8, 155 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 223.8, 155 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 226.1, 162.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 226.1, 162.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 218.6, 157 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 218.6, 157 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 216, 159.1 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 216, 159.1 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 221.9, 149.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 221.9, 149.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 211.2, 150.4 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 211.2, 150.4 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 212.3, 130.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 212.3, 130.4 , 0 );

setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 2.39, 2.39 );

setRotateKey( spep_2 + 368 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -29.5 );

-- ** 音 ** --
--発射前溜め
SE021 = playSeVer2( spep_2 + 0, 1056, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 56, 1147, "",spep_2 + 184, 0, 24, -1);
SE027 = playSeVer2( spep_2 + 94, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE027, 151 );

--オーラ
SE022 = playSeVer2( spep_2 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE022, 63 );
SE023 = playSeVer2( spep_2 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE023, 63 );
SE025 = playSeVer2( spep_2 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE025, 63 );
SE026 = playSeVer2( spep_2 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE026, 63 );
SE028 = playSeVer2( spep_2 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE028, 63 );
SE029 = playSeVer2( spep_2 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE029, 63 );

--かめはめ波発射
SE030 = playSeVer2( spep_2 + 154, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 154, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE031, 141 );
SE032 = playSeVer2( spep_2 + 154, 1284, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 154, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE033, 71 );
SE034 = playSeVer2( spep_2 + 202, 1423, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 202, 1161, "", 0, 0, 0, -1);

--岩激突
SE036 = playSeVer2( spep_2 + 306, 1258, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 316, 1067, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE038 = playSeVer2( spep_2 + 342, 1304, "",spep_2 + 448, 0, 20, -1);

--閃光走る
SE039 = playSeVer2( spep_2 + 398, 1426, "",spep_2 + 496, 0, 58, -1);
SE040 = playSeVer2( spep_2 + 416, 1465, "", 0, 0, 0, -1);

--爆発
SE041 = playSeVer2( spep_2 + 442, 1067, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 448, 1024, "", 0, 0, 0, -1);

--ラスト爆発
SE043 = playSeVer2( spep_2 + 504, 1159, "", 0, 0, 0, -1);

--風圧
SE044 = playSeVer2( spep_2 + 504, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE044, 74 );

-- ** ダメージ表示 ** --

dealDamage( spep_2 + 522); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 4); -- 638

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カットインまで
-------------------------------------------------
MAX_FRAME_0 = 564;
MAX_FRAME_2 = 638;

MAX_FRAME_ALL = MAX_FRAME_0 + 94 + MAX_FRAME_2;

setupMovie(0, SP_01, 2, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットインまで ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_ALL, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_ALL, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_ALL, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_ALL, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;
 
-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--腕上げる
SE002 = playSeVer2( spep_0 + 58, 1004, "", 0, 0, 0, -1);

--気ダメ
SE003 = playSeVer2( spep_0 + 84, 1024, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 84, 1035, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 84, 1427, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 84, 1256, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える
     
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
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
--画面遷移
SE007 = playSeVer2( spep_0 + 214, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE007, 77 );

--かめはめ波溜め
SE008 = playSeVer2( spep_0 + 256, 1209, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 256, 1210, "",spep_0 + 586, 0, 36, -1);
SE010 = playSeVer2( spep_0 + 256, 1429, "",spep_0 + 584, 0, 36, -1);
SE011 = playSeVer2( spep_0 + 256, 1371, "",spep_0 + 590, 0, 40, -1);

--気玉膨らむ
SE012 = playSeVer2( spep_0 + 288, 1283, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 288, 1354, "", 0, 0, 0, -1);

--遠くでひかる
SE015 = playSeVer2( spep_0 + 490, 1303, "",spep_0 + 580, 0, 32, -1);
SE016 = playSeVer2( spep_0 + 490, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE016, 78 );
SE017 = playSeVer2( spep_0 + 490, 1114, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 564  

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前溜め
SE014 = playSeVer2( spep_1 + 82, 1210, "",spep_1 + 268, 8, 18, -1);
setStartTimeMs( SE014,  3900 );
--地響き
SE019 = playSeVer2( spep_1 + 86, 1044, "",spep_1 + 268, 0, 18, -1);
--オーラ
SE020 = playSeVer2( spep_1 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE020, 63 );

-------------------------------------------------
-- 構える～爆発まで
-------------------------------------------------
--MAX_FRAME_2 = 638;

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 434 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 368 + OFFSET_X, 1, 17 );

setMoveKey( spep_2 + 368 + OFFSET_X, 1, -228.7, 110.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -228.7, 110.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -229.1, 199.4 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -229.1, 199.4 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -196.1, 124.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -196.1, 124.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -253.9, 131.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -253.9, 131.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -193.6, 178.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -193.6, 178.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -254.7, 158.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -254.7, 158.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -192.9, 171.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -192.9, 171.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -255.4, 171.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -255.4, 171.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -213, 148.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -213, 148.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -224.5, 163.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -224.5, 163.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -219.6, 156.5 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -219.6, 156.5 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -224.5, 161.3 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -224.5, 161.3 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -217.1, 156.4 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -217.1, 156.4 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -226.9, 161.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -226.9, 161.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -217.1, 158.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -217.1, 158.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -226.8, 163.6 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -226.8, 163.6 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -224.3, 156.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -224.3, 156.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -219.4, 156.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -219.4, 156.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -221.8, 160.9 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -221.8, 160.9 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -221.8, 158.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -221.8, 158.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -224.2, 153.4 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -224.2, 153.4 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -219.2, 163.1 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -219.2, 163.1 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -221.6, 155.6 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -221.6, 155.6 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -224, 155.5 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -224, 155.5 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -216.6, 162.7 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -216.6, 162.7 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -223.8, 155.2 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -223.8, 155.2 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -223.8, 155 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -223.8, 155 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -226.1, 162.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -226.1, 162.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -218.6, 157 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -218.6, 157 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -216, 159.1 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -216, 159.1 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -221.9, 149.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -221.9, 149.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -211.2, 150.4 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -211.2, 150.4 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -212.3, 130.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -212.3, 130.4 , 0 );

setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 2.39, 2.39 );

setRotateKey( spep_2 + 368 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 29.5 );

-- ** 音 ** --
--発射前溜め
SE021 = playSeVer2( spep_2 + 0, 1056, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 56, 1147, "",spep_2 + 184, 0, 24, -1);
SE027 = playSeVer2( spep_2 + 94, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE027, 151 );

--オーラ
SE022 = playSeVer2( spep_2 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE022, 63 );
SE023 = playSeVer2( spep_2 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE023, 63 );
SE025 = playSeVer2( spep_2 + 64, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE025, 63 );
SE026 = playSeVer2( spep_2 + 88, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE026, 63 );
SE028 = playSeVer2( spep_2 + 112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE028, 63 );
SE029 = playSeVer2( spep_2 + 136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE029, 63 );

--かめはめ波発射
SE030 = playSeVer2( spep_2 + 154, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 154, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE031, 141 );
SE032 = playSeVer2( spep_2 + 154, 1284, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 154, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE033, 71 );
SE034 = playSeVer2( spep_2 + 202, 1423, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 202, 1161, "", 0, 0, 0, -1);

--岩激突
SE036 = playSeVer2( spep_2 + 306, 1258, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 316, 1067, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE038 = playSeVer2( spep_2 + 342, 1304, "",spep_2 + 448, 0, 20, -1);

--閃光走る
SE039 = playSeVer2( spep_2 + 398, 1426, "",spep_2 + 496, 0, 58, -1);
SE040 = playSeVer2( spep_2 + 416, 1465, "", 0, 0, 0, -1);

--爆発
SE041 = playSeVer2( spep_2 + 442, 1067, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 448, 1024, "", 0, 0, 0, -1);

--ラスト爆発
SE043 = playSeVer2( spep_2 + 504, 1159, "", 0, 0, 0, -1);

--風圧
SE044 = playSeVer2( spep_2 + 504, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE044, 74 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 522); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 4); -- 638

end