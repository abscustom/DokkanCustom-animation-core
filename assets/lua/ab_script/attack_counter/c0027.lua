--1030020:LR_超サイヤ人3ゴテンクス_必殺技カウンター
--sp_effect_a1_00463
--c0027

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163381; --ef_001
SP_01b = 163382; --ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
 
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
 
ENABLE_AUTO_TIME_STRETCH(0.84);
 
OFFSET_X = -1;
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- カウンター
------------------------------------------------------
 
MAX_FRAME_0 = 450;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
 
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 314 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 338 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 314 + OFFSET_X, 1, 11.4, -45.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 11.4, -45.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 11.4, -44.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 11.4, -44.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 11.4, -46.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 11.4, -46.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 11.4, -44.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 11.4, -44.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 11.4, -46.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 11.4, -46.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 11.4, -44.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 11.4, -44.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 11.4, -46.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 11.4, -46.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 11.4, -43.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 11.4, -43.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 11.4, -47.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 11.4, -47.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 11.4, -43.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 11.4, -43.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 65.3, 12.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 65.3, 12.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 6.3, -25.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 6.3, -25.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 65.6, -34.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 65.6, -34.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 56.8, -14 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 56.8, -14 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 69.8, -37.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 69.8, -37.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 60.7, -15.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 60.7, -15.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 54.5, -40.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 54.5, -40.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 72.2, -10 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 72.2, -10 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 72.8, -16.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 72.8, -16.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 63.3, -24.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 63.3, -24.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 72.7, -26.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 72.7, -26.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 65.1, -13.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 65.1, -13.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 75.4, -15.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 75.4, -15.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 64.7, -23.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 64.7, -23.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 75.9, -24.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 75.9, -24.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 66.1, -15.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 66.1, -15.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 70.2, -19.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 70.2, -19.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 70.3, -19.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 70.3, -19.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 70.4, -19.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 70.4, -19.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 670.5, -19 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 670.6, -19 , 0 );

setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.07, 1.07 );

setRotateKey( spep_0 + 314 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -35.1 );

setAlphaKey( spep_0 + 314 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 341 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 342 + OFFSET_X, 1, 140 );
setAlphaKey( spep_0 + 343 + OFFSET_X, 1, 140 );
setAlphaKey( spep_0 + 344 + OFFSET_X, 1, 90 );
setAlphaKey( spep_0 + 345 + OFFSET_X, 1, 90 );
setAlphaKey( spep_0 + 346 + OFFSET_X, 1, 80 );
setAlphaKey( spep_0 + 347 + OFFSET_X, 1, 80 );
setAlphaKey( spep_0 + 348 + OFFSET_X, 1, 70 );
setAlphaKey( spep_0 + 349 + OFFSET_X, 1, 70 );
setAlphaKey( spep_0 + 350 + OFFSET_X, 1, 60 );
setAlphaKey( spep_0 + 351 + OFFSET_X, 1, 60 );
setAlphaKey( spep_0 + 352 + OFFSET_X, 1, 40 );
setAlphaKey( spep_0 + 353 + OFFSET_X, 1, 40 );
setAlphaKey( spep_0 + 354 + OFFSET_X, 1, 30 );
setAlphaKey( spep_0 + 355 + OFFSET_X, 1, 30 );
setAlphaKey( spep_0 + 356 + OFFSET_X, 1, 20 );
setAlphaKey( spep_0 + 357 + OFFSET_X, 1, 20 );
setAlphaKey( spep_0 + 358 + OFFSET_X, 1, 15 );
setAlphaKey( spep_0 + 359 + OFFSET_X, 1, 15 );
setAlphaKey( spep_0 + 360 + OFFSET_X, 1, 10 );
setAlphaKey( spep_0 + 361 + OFFSET_X, 1, 10 );
setAlphaKey( spep_0 + 362 + OFFSET_X, 1, 8 );
setAlphaKey( spep_0 + 363 + OFFSET_X, 1, 8 );
setAlphaKey( spep_0 + 364 + OFFSET_X, 1, 6 );
setAlphaKey( spep_0 + 365 + OFFSET_X, 1, 6 );
setAlphaKey( spep_0 + 366 + OFFSET_X, 1, 4 );
setAlphaKey( spep_0 + 367 + OFFSET_X, 1, 4 );
setAlphaKey( spep_0 + 368 + OFFSET_X, 1, 0 );
setAlphaKey( spep_0 + 383 + OFFSET_X, 1, 0 );
setAlphaKey( spep_0 + 384 + OFFSET_X, 1, 255 );

setBlendColor( spep_0 + 338 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 340 + OFFSET_X, 1, 3, 0.76, 0.607, 0.384, 0.95 );
setBlendColor( spep_0 + 384 + OFFSET_X, 1, 3, 0, 0, 0, 1 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 1168, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 54 );
setStartTimeMs( SE001,  667 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE003 = playSeVer2( spep_0 + 16, 1219, "", 0, 0, 0, -1);

--画面遷移
SE004 = playSeVer2( spep_0 + 170, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE004, 69 );

--気弾溜め
SE005 = playSeVer2( spep_0 + 226, 1262, "",spep_0 + 286, 0, 18, -1);
SE006 = playSeVer2( spep_0 + 226, 1276, "",spep_0 + 282, 0, 18, -1);

--気弾発射
SE007 = playSeVer2( spep_0 + 260, 1145, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 260, 1213, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 260, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE009, 153 );

--敵飲まれる
SE010 = playSeVer2( spep_0 + 320, 1021, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 320, 1258, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 324; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    pauseAll( SP_dodge, 67 );
 
    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
     
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示
 
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

 
do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --

--敵飲まれる
SE010 = playSeVer2( spep_0 + 324, 1021, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 324, 1258, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 438, SE008, 0 );
    stopSe( spep_0 + 438, SE009, 0 );
    stopSe( spep_0 + 438, SE010, 0 );
    stopSe( spep_0 + 438, SE011, 0 );

    setDisp( spep_0 + 438, 1, 1 );
    endPhase( spep_0 + 440 );

    setAlphaKey( spep_0 + 438 + OFFSET_X, 1, 255 );
    
    setBlendColor( spep_0 + 438 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
     
else

------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 380 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 450

end