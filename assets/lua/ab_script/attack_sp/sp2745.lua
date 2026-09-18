--1029140:UR_亀仙人_ユニット必殺技2：MAXパワーかめはめ波
--sp_effect_a1_00448
--sp2745

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(共通)
SP_01 = 163063 --パフパフ～カードカットイン前 ef_001
SP_03 = 163065 --かめはめ波の構え～フィニッシュ ef_002

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
 
ENABLE_AUTO_TIME_STRETCH(0.84);
 
OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- パフパフ～カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 516;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- パフパフ～カードカットイン前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵の動き ** --
setDisp( spep_0 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 240 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, 217.7, 47.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 217.7, 47.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 222, 48.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 222, 48.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 235.1, 50.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 235.1, 50.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 256.8, 55.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 256.8, 55.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 287.3, 61.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 287.3, 61.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 326.5, 69.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 326.5, 69.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 374.4, 79.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 374.4, 79.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 431, 90.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 431, 90.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 496.2, 104.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 496.2, 104.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 570.3, 119.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 570.3, 119.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 807.5, 199.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 807.5, 199.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 1044.8, 278.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 1044.8, 278.8 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 8.29, 8.29 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 8.29, 8.29 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 11.03, 11.03 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 11.03, 11.03 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 13.77, 13.77 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 13.77, 13.77 );

setRotateKey( spep_0 + 240 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--ぱふぱふ
SE002 = playSeVer2( spep_0 + 20, 1112, "", 0, 0, 0, 0.6);
SE003 = playSeVer2( spep_0 + 40, 1112, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 40, SE003, 77 );
SE004 = playSeVer2( spep_0 + 60, 1112, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 60, SE004, 79 );

--画面遷移
SE005 = playSeVer2( spep_0 + 94, 1232, "", 0, 0, 0, -1);

--ブルマ震える
SE006 = playSeVer2( spep_0 + 100, 1333, "", 0, 0, 0, -1);

--目を開く
SE007 = playSeVer2( spep_0 + 132, 4, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 132, 1003, "", 0, 0, 0, -1);

--握手
SE009 = playSeVer2( spep_0 + 156, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE009, 109 );
setStartTimeMs( SE009, 167 );
SE010 = playSeVer2( spep_0 + 156, 57, "",spep_0 + 314, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 156, SE010, 106 );
SE011 = playSeVer2( spep_0 + 186, 1004, "",spep_0 + 210, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 186, SE011, 82 );
setBandpassFilter( spep_0 + 186, SE011, 600, 24000 );
SE012 = playSeVer2( spep_0 + 218, 1004, "",spep_0 + 238, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 79 );
setBandpassFilter( spep_0 + 218, SE012, 600, 24000 );


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 246;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

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
--ズーム
SE013 = playSeVer2( spep_0 + 248, 1072, "", 0, 0, 0, -1);

--力む
SE014 = playSeVer2( spep_0 + 318, 1330, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 318, 1226, "",spep_0 + 536, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 318, SE015, 45 );

--画面遷移
SE016 = playSeVer2( spep_0 + 394, 1232, "", 0, 0, 0, -1);

--力む
SE017 = playSeVer2( spep_0 + 396, 1330, "", 0, 0, 0, -1);
setPitch( spep_0 + 396, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--体大きくなる
SE019 = playSeVer2( spep_0 + 420, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE019, 63 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 516


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -80 ); -- 第8引数のY軸オフセット値は適宜調整してください。（このコメントはコンフル用説明なので実装時は削除ください）
--setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_c + 82, 1227, "",spep_c + 316, 6, 14, -1);
setSeVolumeByWorkId( spep_c + 82, SE021, 72 );
setStartTimeMs( SE021, 367 );
SE022 = playSeVer2( spep_c + 84, 1181, "",spep_c + 316, 0, 12, -1);
setSeVolumeByWorkId( spep_c + 84, SE022, 133 );

--構える
SE023 = playSeVer2( spep_c + 92, 1116, "",spep_c + 136, 0, 22, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-------------------------------------------------
-- かめはめ波の構え～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 574;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- かめはめ波の構え～フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景
 

-- ** 敵キャラクター ** --
setDisp( spep_2 + 360 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 360 + OFFSET_X, 1, 100 );

setMoveKey( spep_2 + 360 + OFFSET_X, 1, 0.8, -2.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 0.8, -2.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 27.2, -39.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 27.2, -39.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 27.2, -11.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 27.2, -11.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 3, -33.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 3, -33.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 0.8, -2.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 0.8, -2.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 27.2, -39.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 27.2, -39.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 27.2, -11.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 27.2, -11.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 3, -33.2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 3, -33.2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 0.8, -2.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 0.8, -2.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 27.2, -39.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 27.2, -39.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 27.2, -11.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 27.2, -11.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 3, -33.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 3, -33.2 , 0 );

setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 360 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--構える
SE024 = playSeVer2( spep_2 + 36, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE024, 60 );

--かめはめ波溜める
SE018 = playSeVer2( spep_2 + 62, 1228, "",spep_2 + 210, 6, 20, -1);
setStartTimeMs( SE018, 4533 );
setPitch( spep_2 + 62, SE018, -700 );
setTimeStretch( SE018, 0.53, 30, 4 );
SE025 = playSeVer2( spep_2 + 64, 1209, "",spep_2 + 212, 0, 14, -1);
SE026 = playSeVer2( spep_2 + 64, 1265, "",spep_2 + 212, 0, 22, -1);

--顔アップ
SE027 = playSeVer2( spep_2 + 134, 1114, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 140, 1303, "",spep_2 + 220, 0, 20, -1);
SE029 = playSeVer2( spep_2 + 160, 1153, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 160, 1264, "",spep_2 + 214, 0, 18, -1);

--かめはめ波発射
SE031 = playSeVer2( spep_2 + 196, 1146, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 196, 1213, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 196, 1223, "", 0, 0, 0, -1);

--かめはめ波中
SE034 = playSeVer2( spep_2 + 236, 1211, "",spep_2 + 444, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 236, SE034, 251 );

--かめはめ波飛んでいく
SE035 = playSeVer2( spep_2 + 318, 1161, "",spep_2 + 444, 0, 46, -1);
SE036 = playSeVer2( spep_2 + 318, 1021, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 360, 1202, "",spep_2 + 436, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 360, SE037, 170 );

--爆発
SE038 = playSeVer2( spep_2 + 374, 1024, "", 0, 0, 0, 0.56);
SE039 = playSeVer2( spep_2 + 374, 1068, "", 0, 0, 0, 0.56);

--環境音
SE040 = playSeVer2( spep_2 + 396, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 396, SE040, 25 );

--亀仙人振り返る
SE041 = playSeVer2( spep_2 + 484, 37, "", 0, 0, 0, -1);

--ブルマ驚く
SE042 = playSeVer2( spep_2 + 504, 36, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE042, 53 );
SE043 = playSeVer2( spep_2 + 510, 27, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 510, 34, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
fadeKoLabel(1,0.5)
hideKoScreen();
dealDamage( spep_2 + 474); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 574F


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- パフパフ～カードカットイン前
-------------------------------------------------
MAX_FRAME_0 = 516;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- パフパフ～カードカットイン前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 2;
 
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵の動き ** --
setDisp( spep_0 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 240 + OFFSET_X, 1, 2 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, -217.7, 47.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -217.7, 47.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -222, 48.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -222, 48.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -235.1, 50.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -235.1, 50.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -256.8, 55.3 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -256.8, 55.3 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -287.3, 61.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -287.3, 61.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -326.5, 69.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -326.5, 69.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -374.4, 79.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -374.4, 79.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -431, 90.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -431, 90.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -496.2, 104.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -496.2, 104.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -570.3, 119.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -570.3, 119.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -807.5, 199.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -807.5, 199.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -1044.8, 278.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -1044.8, 278.8 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 4.88, 4.88 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 5.41, 5.41 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 7.54, 7.54 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 8.29, 8.29 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 8.29, 8.29 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 11.03, 11.03 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 11.03, 11.03 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 13.77, 13.77 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 13.77, 13.77 );

setRotateKey( spep_0 + 240 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--ぱふぱふ
SE002 = playSeVer2( spep_0 + 20, 1112, "", 0, 0, 0, 0.6);
SE003 = playSeVer2( spep_0 + 40, 1112, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 40, SE003, 77 );
SE004 = playSeVer2( spep_0 + 60, 1112, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 60, SE004, 79 );

--画面遷移
SE005 = playSeVer2( spep_0 + 94, 1232, "", 0, 0, 0, -1);

--ブルマ震える
SE006 = playSeVer2( spep_0 + 100, 1333, "", 0, 0, 0, -1);

--目を開く
SE007 = playSeVer2( spep_0 + 132, 4, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 132, 1003, "", 0, 0, 0, -1);

--握手
SE009 = playSeVer2( spep_0 + 156, 1237, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE009, 109 );
setStartTimeMs( SE009, 167 );
SE010 = playSeVer2( spep_0 + 156, 57, "",spep_0 + 314, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 156, SE010, 106 );
SE011 = playSeVer2( spep_0 + 186, 1004, "",spep_0 + 210, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 186, SE011, 82 );
setBandpassFilter( spep_0 + 186, SE011, 600, 24000 );
SE012 = playSeVer2( spep_0 + 218, 1004, "",spep_0 + 238, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 79 );
setBandpassFilter( spep_0 + 218, SE012, 600, 24000 );


--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 246;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

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
--ズーム
SE013 = playSeVer2( spep_0 + 248, 1072, "", 0, 0, 0, -1);

--力む
SE014 = playSeVer2( spep_0 + 318, 1330, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 318, 1226, "",spep_0 + 536, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 318, SE015, 45 );

--画面遷移
SE016 = playSeVer2( spep_0 + 394, 1232, "", 0, 0, 0, -1);

--力む
SE017 = playSeVer2( spep_0 + 396, 1330, "", 0, 0, 0, -1);
setPitch( spep_0 + 396, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--体大きくなる
SE019 = playSeVer2( spep_0 + 420, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE019, 63 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 516


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -80 ); -- 第8引数のY軸オフセット値は適宜調整してください。（このコメントはコンフル用説明なので実装時は削除ください）
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_c + 82, 1227, "",spep_c + 316, 6, 14, -1);
setSeVolumeByWorkId( spep_c + 82, SE021, 72 );
setStartTimeMs( SE021, 367 );
SE022 = playSeVer2( spep_c + 84, 1181, "",spep_c + 316, 0, 12, -1);
setSeVolumeByWorkId( spep_c + 84, SE022, 133 );

--構える
SE023 = playSeVer2( spep_c + 92, 1116, "",spep_c + 136, 0, 22, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-------------------------------------------------
-- かめはめ波の構え～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 574;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- かめはめ波の構え～フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景
 

-- ** 敵キャラクター ** --
setDisp( spep_2 + 360 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 360 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 360 + OFFSET_X, 1, -0.8, -2.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -0.8, -2.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -27.2, -39.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -27.2, -39.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -27.2, -11.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -27.2, -11.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -3, -33.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -3, -33.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -0.8, -2.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -0.8, -2.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -27.2, -39.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -27.2, -39.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -27.2, -11.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -27.2, -11.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -3, -33.2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -3, -33.2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -0.8, -2.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -0.8, -2.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -27.2, -39.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -27.2, -39.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -27.2, -11.2 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -27.2, -11.2 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -3, -33.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -3, -33.2 , 0 );

setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 360 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--構える
SE024 = playSeVer2( spep_2 + 36, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE024, 60 );

--かめはめ波溜める
SE018 = playSeVer2( spep_2 + 62, 1228, "",spep_2 + 210, 6, 20, -1);
setStartTimeMs( SE018, 4533 );
setPitch( spep_2 + 62, SE018, -700 );
setTimeStretch( SE018, 0.53, 30, 4 );
SE025 = playSeVer2( spep_2 + 64, 1209, "",spep_2 + 212, 0, 14, -1);
SE026 = playSeVer2( spep_2 + 64, 1265, "",spep_2 + 212, 0, 22, -1);

--顔アップ
SE027 = playSeVer2( spep_2 + 134, 1114, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 140, 1303, "",spep_2 + 220, 0, 20, -1);
SE029 = playSeVer2( spep_2 + 160, 1153, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 160, 1264, "",spep_2 + 214, 0, 18, -1);

--かめはめ波発射
SE031 = playSeVer2( spep_2 + 196, 1146, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 196, 1213, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 196, 1223, "", 0, 0, 0, -1);

--かめはめ波中
SE034 = playSeVer2( spep_2 + 236, 1211, "",spep_2 + 444, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 236, SE034, 251 );

--かめはめ波飛んでいく
SE035 = playSeVer2( spep_2 + 318, 1161, "",spep_2 + 444, 0, 46, -1);
SE036 = playSeVer2( spep_2 + 318, 1021, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 360, 1202, "",spep_2 + 436, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 360, SE037, 170 );

--爆発
SE038 = playSeVer2( spep_2 + 374, 1024, "", 0, 0, 0, 0.56);
SE039 = playSeVer2( spep_2 + 374, 1068, "", 0, 0, 0, 0.56);

--環境音
SE040 = playSeVer2( spep_2 + 396, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 396, SE040, 25 );

--亀仙人振り返る
SE041 = playSeVer2( spep_2 + 484, 37, "", 0, 0, 0, -1);

--ブルマ驚く
SE042 = playSeVer2( spep_2 + 504, 36, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE042, 53 );
SE043 = playSeVer2( spep_2 + 510, 27, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 510, 34, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
fadeKoLabel(1,0.5)
hideKoScreen();
dealDamage( spep_2 + 474); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 574F


end