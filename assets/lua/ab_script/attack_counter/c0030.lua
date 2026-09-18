--1031280:LR_天津飯_気弾カウンター
--sp_effect_a1_00489
--c0030

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163828; --ef_001  迫る気弾～天津飯構え～フィニッシュ
SP_01b = 163829; --ef_001b 迫る気弾～天津飯構え～フィニッシュ

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
-- 迫る気弾～天津飯構え～フィニッシュ
------------------------------------------------------

MAX_FRAME_0 = 460;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 迫る気弾～天津飯構え～フィニッシュ
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
 
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b 迫る気弾～天津飯構え～フィニッシュ
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 298 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 338 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 298 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 298 + OFFSET_X, 1, 187, -71 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 187, -71 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 187, -73 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 187, -73 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 187, -69 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 187, -69 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 189, -73 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 189, -73 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 185, -71 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 185, -71 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 187, -69 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 187, -69 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 189, -73 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 189, -73 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 187, -69 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 187, -69 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 185, -73 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 185, -73 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 189, -69 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 189, -69 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 189, -73 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 189, -73 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 185, -73 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 185, -73 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 187, -67 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 187, -67 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 191, -77 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 191, -77 , 0 );

setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.09, 2.09 );

setRotateKey( spep_0 + 298 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--敵気弾飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1022, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1215, "",spep_0 + 320, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 68 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 318, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 74 );
SE004 = playSeVer2( spep_0 + 0, 1211, "",spep_0 + 318, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 115 );

--腕まわす
SE006 = playSeVer2( spep_0 + 84, 22, "",spep_0 + 138, 8, 28, -1);
setStartTimeMs( SE006,  50 );
SE007 = playSeVer2( spep_0 + 84, 1189, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 84, SE007, 195 ); 
SE008 = playSeVer2( spep_0 + 94, 1189, "", 0, 0, 0, 0.6);
SE009 = playSeVer2( spep_0 + 114, 12, "",spep_0 + 196, 4, 42, -1);
setStartTimeMs( SE009,  367 );
setSeVolumeByWorkId( spep_0 + 114, SE009, 120 );
SE010 = playSeVer2( spep_0 + 112, 1189, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 112, SE010, 138 );

--敵気弾あたる
SE011 = playSeVer2( spep_0 + 156, 1131, "",spep_0 + 226, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 156, SE011, 58 );
SE012 = playSeVer2( spep_0 + 156, 1179, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 158, 1391, "",spep_0 + 324, 12, 36, -1);
setStartTimeMs( SE005,  1633 );

--顔アップ
SE013 = playSeVer2( spep_0 + 184, 1062, "", 0, 0, 0, -1);

--跳ね返す
SE014 = playSeVer2( spep_0 + 234, 1035, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 248, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE015, 50 );
SE016 = playSeVer2( spep_0 + 282, 1146, "",spep_0 + 374, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 282, SE016, 71 );

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 328; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
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


------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 326, SE005, 0 );
    stopSe( spep_0 + 326, SE012, 0 );
    stopSe( spep_0 + 326, SE013, 0 );
    stopSe( spep_0 + 326, SE014, 0 );
    stopSe( spep_0 + 326, SE015, 0 );
    stopSe( spep_0 + 326, SE016, 0 );

    setDisp( spep_0 + 326, 1, 1 );
    endPhase( spep_0 + 328 );

else

------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

-- ** 音 ** --
--爆発
SE017 = playSeVer2( spep_0 + 336, 1024, "", 0, 0, 0, -1);


-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 360 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 460f

end