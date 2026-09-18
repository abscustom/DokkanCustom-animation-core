--1034340:LR_孫悟飯(ビースト)_通常攻撃カウンター
--sp_effect_a9_00179
--c0036

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164524; --攻撃を受ける〜アッパー ef_001

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

------------------------------------------------------------------------------------------------------------
-- カウンター開始まで
------------------------------------------------------------------------------------------------------------

spep_0 = 28; -- 28F固定 (冒頭顔カットインが入るため)

setupMovie(spep_0, SP_01, 0, 1);

-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 348;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 攻撃を受ける〜アッパー(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- ** 敵の動き ** --
setDisp( spep_0 + 294 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 352 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 294 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 310 + OFFSET_X, 1, 106 );

x = 180;
y = 160;

setMoveKey( spep_0 + 294 + OFFSET_X, 1, 157.9, 377.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 157.9, 377.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 133.1, 327.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 133.1, 327.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 92.1, 246.3 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 92.1, 246.3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 77.7, 343.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 77.7, 343.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 41.8, 240.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 41.8, 240.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 23, 330.2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 23, 330.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 94.5, 162.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 94.5, 162.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 92 + x, 74.3 + y , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 92 + x, 74.3 + y , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 109 + x, 110.8 + y , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 109 + x, 110.8 + y , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 128.8 + x, 69.7 + y , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 128.8 + x, 69.7 + y , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 109.3 + x, 130.7 + y , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 109.3 + x, 130.7 + y , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 109.3 + x, 68 + y , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 109.3 + x, 68 + y , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 112.4 + x, 126.9 + y , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 112.4 + x, 126.9 + y , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 103.6 + x, 74.9 + y , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 103.6 + x, 74.9 + y , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 105.5 + x, 89.3 + y , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 105.5 + x, 89.3 + y , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 105.1 + x, 90.9 + y , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 105.1 + x, 90.9 + y , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 106.1 + x, 87.7 + y , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 106.1 + x, 87.7 + y , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 100.9 + x, 82.4 + y , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 100.9 + x, 82.4 + y , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 103.7 + x, 78.8 + y , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 103.7 + x, 78.8 + y , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 103.9 + x, 81 + y , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 103.9 + x, 81 + y , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 101.1 + x, 85.4 + y , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 101.1 + x, 85.4 + y , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 104.7 + x, 83.3 + y , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 104.7 + x, 83.3 + y , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 106.1 + x, 82.6 + y , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 106.1 + x, 82.6 + y , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 105.4 + x, 83.4 + y , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 105.4 + x, 83.4 + y , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 104.3 + x, 81.6 + y , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 104.3 + x, 81.6 + y , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 108 + x, 76.1 + y, 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 108 + x, 76.1 + y, 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 111.1 + x, 72.2 + y, 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 111.1 + x, 72.2 + y, 0 );

setScaleKey( spep_0 + 294 + OFFSET_X, 1, 7.34, 7.36 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 7.34, 7.36 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 6.19, 6.2 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 6.19, 6.2 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.45, 4.46 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 4.45, 4.46 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 4.19, 4.2 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 4.19, 4.2 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 3.82, 3.83 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.82, 3.83 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.43, 3.44 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 3.43, 3.44 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 3.04, 3.05 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 3.04, 3.05 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.93, 2.94 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.93, 2.94 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.9, 2.91 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.9, 2.91 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.87, 2.88 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.87, 2.88 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.84, 2.85 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 2.84, 2.85 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.74, 2.75 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2.74, 2.75 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.71, 2.72 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.71, 2.72 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.7, 2.7 );

setRotateKey( spep_0 + 294 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -79.2 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -79.2 );

setBlendColor( spep_0 + 294 + OFFSET_X, 1, 2, 0, 0, 0, 0.4 );
setBlendColor( spep_0 + 352 + OFFSET_X, 1, 2, 1, 1, 1, 1 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--パンチ受け止める
SE001 = playSeVer2( spep_0 + 0, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 70 );
SE002 = playSeVer2( spep_0 + 0, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 70 );

--環境音
SE003 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );

--パンチ受け止める
SE004 = playSeVer2( spep_0 + 22, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 180 );

--拳にぎる
SE005 = playSeVer2( spep_0 + 119, 1004, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 119, SE005, 50 );
setPitch( spep_0 + 119, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 150, 1233, "", 0, 0, 0, -1);

--踏み出す
SE007 = playSeVer2( spep_0 + 210, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE007, 120 );
SE008 = playSeVer2( spep_0 + 213, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 213, SE008, 120 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 232; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--振りかぶる
SE009 = playSeVer2( spep_0 + 260, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE009, 124 );
setPitch( spep_0 + 260, SE009, -700 );
setTimeStretch( SE009, 0.53, 30, 4 );
SE010 = playSeVer2( spep_0 + 260, 1116, "",spep_0 + 305, 0, 21, -1);
SE011 = playSeVer2( spep_0 + 272, 1004, "", 0, 0, 0, -1);

--反撃
SE012 = playSeVer2( spep_0 + 288, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 288, 1120, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 299, 1491, "", 0, 0, 0, -1);


------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

-- ** SE ** --
stopSe( spep_0 + 306, SE003, 0 );
stopSe( spep_0 + 306, SE007, 0 );
stopSe( spep_0 + 306, SE008, 0 );
stopSe( spep_0 + 306, SE009, 0 );
stopSe( spep_0 + 306, SE010, 0 );
stopSe( spep_0 + 306, SE011, 0 );
stopSe( spep_0 + 306, SE012, 0 );
stopSe( spep_0 + 306, SE013, 0 );
stopSe( spep_0 + 306, SE014, 0 );

stopMovie( spep_0 + 306 );

setEffAlphaKey( spep_0 + 305, start_f, 255);
setEffAlphaKey( spep_0 + 306, start_f, 0);

-- ** 敵の動き ** --
setDisp( spep_0 + 306, 1, 1 );
changeAnime( spep_0 + 306, 1, 106 );
setBlendColor( spep_0 + 306 + OFFSET_X, 1, 2, 1, 1, 1, 1 );

-- ** 終了 ** --
endPhase( spep_0 + 310 );

else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------



-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 296); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 348f

end