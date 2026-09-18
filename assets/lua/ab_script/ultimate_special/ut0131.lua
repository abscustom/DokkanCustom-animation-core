--1034380:LR_セルマックス_アクティブ必殺：エネルギーフィールド
--sp_effect_a9_00173
--ut0131

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164513; --セリフカットイン〜フィニッシュまで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 320 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 320 - 13, SP_01, spep_0 + 320 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           timing_skip = 428;

           skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
           setupMovie(spep_0 + timing_skip, SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 音 ** --
        --気弾ヒット
        SE019 = playSeVer2( spep_0 + 431, 1067, "", 0, 0, 0, -1);

        --爆発
        SE020 = playSeVer2( spep_0 + 431, 1159, "", 0, 0, 0, -1);

        --気弾収縮する
        SE024 = playSeVer2( spep_0 + 431, 1467, "", 0, 0, 0, -1);
        
           -- ** ボイス ** --

       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end

else end
------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで ef_001
-------------------------------------------------
MAX_FRAME_0 = 698;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜フィニッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き

setDisp( spep_0 + 306 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 386 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 306 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 360 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 374 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 306 + OFFSET_X, 1, 129.4, 89.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 129.4, 89.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 133.8, 90.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 133.8, 90.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 129.4, 91 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 129.4, 91 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 131.4, 88.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 131.4, 88.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 131.5, 94 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 131.5, 94 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 129.5, 91.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 129.5, 91.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 134.2, 92.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 134.2, 92.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 129.8, 91.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 129.8, 91.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 131.9, 94.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 131.9, 94.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 130.4, 90.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 130.4, 90.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 135, 92.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 135, 92.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 131, 91 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 131, 91 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 136.5, 91.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 136.5, 91.7 , 0 );

setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_0 + 306 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 34 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 34 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -29 );

setAlphaKey( spep_0 + 306 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 361 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 362 + OFFSET_X, 1, 230 );
setAlphaKey( spep_0 + 363 + OFFSET_X, 1, 230 );
setAlphaKey( spep_0 + 364 + OFFSET_X, 1, 204 );
setAlphaKey( spep_0 + 365 + OFFSET_X, 1, 204 );
setAlphaKey( spep_0 + 366 + OFFSET_X, 1, 179 );
setAlphaKey( spep_0 + 367 + OFFSET_X, 1, 179 );
setAlphaKey( spep_0 + 368 + OFFSET_X, 1, 153 );
setAlphaKey( spep_0 + 369 + OFFSET_X, 1, 153 );
setAlphaKey( spep_0 + 370 + OFFSET_X, 1, 128 );
setAlphaKey( spep_0 + 371 + OFFSET_X, 1, 128 );
setAlphaKey( spep_0 + 372 + OFFSET_X, 1, 102 );
setAlphaKey( spep_0 + 373 + OFFSET_X, 1, 102 );
setAlphaKey( spep_0 + 374 + OFFSET_X, 1, 77 );
setAlphaKey( spep_0 + 375 + OFFSET_X, 1, 77 );
setAlphaKey( spep_0 + 376 + OFFSET_X, 1, 61 );
setAlphaKey( spep_0 + 377 + OFFSET_X, 1, 61 );
setAlphaKey( spep_0 + 378 + OFFSET_X, 1, 46 );
setAlphaKey( spep_0 + 379 + OFFSET_X, 1, 46 );
setAlphaKey( spep_0 + 380 + OFFSET_X, 1, 31 );
setAlphaKey( spep_0 + 381 + OFFSET_X, 1, 31 );
setAlphaKey( spep_0 + 382 + OFFSET_X, 1, 15 );
setAlphaKey( spep_0 + 383 + OFFSET_X, 1, 15 );
setAlphaKey( spep_0 + 384 + OFFSET_X, 1, 0 );
setAlphaKey( spep_0 + 385 + OFFSET_X, 1, 0 );
setAlphaKey( spep_0 + 386 + OFFSET_X, 1, 255 );

setBlendColor( spep_0 + 364 + OFFSET_X, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_0 + 368 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 370 + OFFSET_X, 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_0 + 372 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_0 + 374 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 386 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 11, 0, -1);

--気弾膨れ上がるベース
SE003 = playSeVer2( spep_0 + 103, 1371, "",spep_0 + 339, 22, 31, -1);
setStartTimeMs( SE003,  1517 );

--気が爆発する
SE004 = playSeVer2( spep_0 + 66, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE004, 146 );
SE005 = playSeVer2( spep_0 + 66, 1274, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 66, 1024, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 76, 1313, "", 0, 0, 0, -1);

--気弾膨れ上がるベース
SE008 = playSeVer2( spep_0 + 104, 1269, "",spep_0 + 468, 0, 62, -1);

--気弾膨れ上がる１
SE009 = playSeVer2( spep_0 + 158, 1465, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 158, 1049, "", 0, 0, 0, -1);

--気弾膨れ上がる２
SE011 = playSeVer2( spep_0 + 246, 1465, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 246, 1395, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 246, 1049, "", 0, 0, 0, -1);

--気弾発射
SE014 = playSeVer2( spep_0 + 294, 1226, "",spep_0 + 646, 0, 230, -1);
setSeVolumeByWorkId( spep_0 + 294, SE014, 48 );
SE015 = playSeVer2( spep_0 + 294, 1193, "",spep_0 + 453, 0, 35, -1);
SE016 = playSeVer2( spep_0 + 294, 1027, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 294, 1145, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 294, 1068, "", 0, 0, 0, -1);

-- ** ボイス ** --

--「グオオオォォォ！！！！」
playVoice( spep_0 + 0, 1222 );
setVoiceVolume( spep_0 + 0, 1222, 108 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 320; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
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

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --

--気弾ヒット
SE019 = playSeVer2( spep_0 + 347, 1067, "", 0, 0, 0, -1);

--爆発
SE020 = playSeVer2( spep_0 + 420, 1159, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 430, 1024, "", 0, 0, 0, -1);

--気弾収縮する
SE022 = playSeVer2( spep_0 + 537, 1466, "",spep_0 + 662, 0, 84, -1);
SE023 = playSeVer2( spep_0 + 537, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 537, SE023, 52 );
SE024 = playSeVer2( spep_0 + 559, 1467, "", 0, 0, 0, -1);

-----------------------------
-- 終了
-----------------------------
-- hideKoScreen();
dealDamage( spep_0 + 450); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 698F