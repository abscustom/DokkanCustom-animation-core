--1030080:UR_ヤムチャ_必殺技：
--sp_effect_b4_00353
--sp2786

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163167;  --開幕〜敵と気弾が画面アウト ef_001
SP_01b = 163168;  --開幕〜敵と気弾が画面アウト ef_001b
SP_02 = 163169;  --ヤムチャのアップ〜フィニッシュまで ef_002
SP_02b = 163170;  --ヤムチャのアップ〜フィニッシュま でef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜敵と気弾が画面アウト
-------------------------------------------------
MAX_FRAME_0 = 420;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜敵と気弾が画面アウト(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜敵と気弾が画面アウト(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 36;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

setDisp( spep_0 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 396 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 332 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 370 + OFFSET_X, 1, 103 );

setMoveKey( spep_0 + 332 + OFFSET_X, 1, 102.6, -352.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 102.6, -352.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 84.2, -302.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 84.2, -302.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 63.5, -245.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 63.5, -245.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 55.2, -215.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 55.2, -215.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 39.1, -171.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 39.1, -171.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 35, -154.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 35, -154.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 22.8, -122.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 22.8, -122.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 22.1, -115.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 22.1, -115.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 12.8, -98 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 12.8, -98 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 9.8, -83.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 9.8, -83.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 7.8, -77.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 7.8, -77.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 6.5, -74 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 6.5, -74 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 5.9, -72 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 5.9, -72 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 5.6, -71.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 5.6, -71.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 5.6, -71.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 5.6, -71.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 5.6, -71.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 5.6, -71.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 5.5, -71.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 5.5, -71.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 5.4, -71.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 5.4, -71.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -43.9, 209.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -43.9, 209.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -73.3, 353.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -73.3, 353.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -100.4, 485.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -100.4, 485.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -125.2, 606.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -125.2, 606.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -147.7, 715.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -147.7, 715.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -167.8, 813.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -167.8, 813.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -185.6, 899.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -185.6, 899.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -201.1, 974.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -201.1, 974.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -214.3, 1037.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -214.3, 1037.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -225.1, 1089.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -225.1, 1089.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -233.6, 1129.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -233.6, 1129.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -239.8, 1157.6 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -239.8, 1157.6 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -243.7, 1174.6 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -243.7, 1174.6 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -245.2, 1180 , 0 );

setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.67, 1.67 );

setRotateKey( spep_0 + 332 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, 55.7 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 55.7 );

-- ** 音 ** --

--構える
SE001 = playSeVer2( spep_0 + 8, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 66 );

--電撃
SE003 = playSeVer2( spep_0 + 60, 1147, "",spep_0 + 232, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 60, SE003, 63 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 82, 1201, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 82, 1128, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 82, SE005, 53 );
setPitch( spep_0 + 82, SE005, 1200 );
setTimeStretch( SE005, 0.6, 30, 4 );
SE006 = playSeVer2( spep_0 + 82, 1200, "",spep_0 + 308, 0, 112, -1);
setSeVolumeByWorkId( spep_0 + 82, SE006, 141 );

--気弾飛んでいく
SE007 = playSeVer2( spep_0 + 184, 1184, "",spep_0 + 352, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 184, SE007, 63 );

--腕の動き
SE008 = playSeVer2( spep_0 + 202, 1116, "",spep_0 + 262, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 202, SE008, 72 );
SE009 = playSeVer2( spep_0 + 216, 1003, "", 0, 0, 0, -1);
setPitch( spep_0 + 216, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 242, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE010, 75 );
SE011 = playSeVer2( spep_0 + 272, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE011, 162 );

--気弾飛ばす
SE012 = playSeVer2( spep_0 + 278, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE012, 75 );
SE013 = playSeVer2( spep_0 + 278, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 278, 1022, "", 0, 0, 0, -1);

--気弾上昇
SE015 = playSeVer2( spep_0 + 340, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 340, SE015, 186 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 364; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 420F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--背景音
SE017 = playSeVer2( spep_1 + 82, 1264, "",spep_1 + 258, 0, 84, -1);
setSeVolumeByWorkId( spep_1 + 82, SE017, 79 );

-------------------------------------------------
-- ヤムチャのアップ〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 410;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ヤムチャのアップ〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ヤムチャのアップ〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 82 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 262 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 82 + OFFSET_X, 1, 103 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 82 + OFFSET_X, 1, 322.9, -626.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 322.9, -626.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 322.7, -626.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 322.7, -626.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 321.8, -624.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 321.8, -624.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 320.5, -622.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 320.5, -622.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 318.5, -618.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 318.5, -618.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 316.1, -613.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 316.1, -613.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 313, -607.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 313, -607.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 309.4, -601.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 309.4, -601.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 305.3, -593.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 305.3, -593.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 300.6, -584.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 300.6, -584.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 295.4, -574.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 295.4, -574.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 289.6, -563.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 289.6, -563.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 283.2, -551.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 283.2, -551.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 280.3, -549.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 280.3, -549.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 272.9, -527.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 272.9, -527.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 272.9, -520.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 272.9, -520.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 264.3, -496.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 264.3, -496.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 247.2, -486.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 247.2, -486.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 237.6, -460.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 237.6, -460.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 235.4, -448.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 235.4, -448.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 224.6, -420.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 224.6, -420.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 205.3, -398.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 205.3, -398.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 201.4, -384.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 201.4, -384.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 189, -352.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 189, -352.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 168, -335.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 168, -335.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 168, -327.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 168, -327.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 9.6, 465.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 9.6, 465.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 9.4, 465.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 9.4, 465.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 9.3, 465.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 9.3, 465.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 9.2, 464.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 9.2, 464.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 9.1, 463.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 9.1, 463.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 8.9, 461.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 8.9, 461.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 8.8, 459.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 8.8, 459.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 8.7, 455.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 8.7, 455.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 8.5, 450.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 8.5, 450.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 8.4, 443.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 8.4, 443.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 8.3, 435.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 8.3, 435.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 8.2, 425 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 8.2, 425 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 8, 412.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 8, 412.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 7.9, 398.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 7.9, 398.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 7.8, 381.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 7.8, 381.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 7.6, 361.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 7.6, 361.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 7.5, 339.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 7.5, 339.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 7.4, 313.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 7.4, 313.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 7.2, 285.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 7.2, 285.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 7.1, 253.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 7.1, 253.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 7, 217.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 7, 217.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 6.9, 178.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 6.9, 178.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 6.7, 135.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 6.7, 135.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 6.6, 87.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 6.6, 87.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 6.5, 36.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 6.5, 36.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 6.3, -19.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 6.3, -19.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 6.2, -80.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 6.2, -80.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 6.1, -146.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 6.1, -146.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 6, -217.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 6, -217.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 5.8, -293.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 5.8, -293.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 0.6, 454.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 0.6, 454.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 4.6, 440.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 4.6, 440.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 4.6, 446.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 4.6, 446.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 12.6, 437.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 12.6, 437.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 0.6, 449.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 0.6, 449.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 4.6, 436.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 4.6, 436.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 4.5, 444.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 4.5, 444.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 12.5, 435.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 12.5, 435.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 0.5, 446.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 0.5, 446.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 4.5, 434 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 4.5, 434 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 4.4, 440.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 4.4, 440.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 12.4, 431 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 12.4, 431 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 0.4, 440.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 0.4, 440.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 4.3, 426 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 4.3, 426 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 4.3, 430.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 4.3, 430.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 12.3, 418.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 12.3, 418.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 0.2, 425.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 0.2, 425.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 4.2, 407.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 4.2, 407.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 4.2, 408.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 4.2, 408.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 12.1, 392.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 12.1, 392.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 12.1, 382.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 12.1, 382.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 12, 380 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 12, 380 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 4, 359.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 4, 359.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 4, 352.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 4, 352.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 11.9, 327.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 11.9, 327.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 11.9, 315.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 11.9, 315.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 3.8, 284.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 3.8, 284.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 3.7, 263.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 3.7, 263.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 11.7, 221.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 11.7, 221.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 11.6, 186.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 11.6, 186.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 3.7, 123.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 3.7, 123.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 3.6, 56.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 3.6, 56.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 11.6, -61.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 11.6, -61.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 11.7, -269.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 11.7, -269.2 , 0 );

setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_2 + 82 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 39.7 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 74.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 74.8 );

-- ** 音 ** --

--指下に向ける
SE018 = playSeVer2( spep_2 + 38, 1004, "", 0, 0, 0, -1);

--気弾落ちてくる
SE019 = playSeVer2( spep_2 + 56, 1146, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE019, 86 );
setStartTimeMs( SE019,  33 );
SE020 = playSeVer2( spep_2 + 70, 1177, "",spep_2 + 152, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 70, SE020, 74 );

--敵ヒット
SE021 = playSeVer2( spep_2 + 126, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE021, 76 );
SE022 = playSeVer2( spep_2 + 126, 1023, "", 0, 0, 0, -1);

--落ちてくる
SE023 = playSeVer2( spep_2 + 126, 1019, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 140, 1304, "",spep_2 + 278, 0, 24, -1);
SE025 = playSeVer2( spep_2 + 190, 1019, "", 0, 0, 0, -1);

--爆発
SE026 = playSeVer2( spep_2 + 250, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE026, 82 );
SE027 = playSeVer2( spep_2 + 250, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE027, 60 );
SE028 = playSeVer2( spep_2 + 258, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE028, 51 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 284); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 410F -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜敵と気弾が画面アウト
-------------------------------------------------
MAX_FRAME_0 = 420;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜敵と気弾が画面アウト(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜敵と気弾が画面アウト(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 36;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

setDisp( spep_0 + 332 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 396 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 332 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 370 + OFFSET_X, 1, 3 );

setMoveKey( spep_0 + 332 + OFFSET_X, 1, -102.6, -352.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -102.6, -352.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -84.2, -302.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -84.2, -302.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -63.5, -245.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -63.5, -245.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -55.2, -215.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -55.2, -215.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -39.1, -171.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -39.1, -171.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -35, -154.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -35, -154.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -22.8, -122.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -22.8, -122.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -22.1, -115.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -22.1, -115.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -12.8, -98 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -12.8, -98 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -9.8, -83.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -9.8, -83.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -7.8, -77.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -7.8, -77.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -6.5, -74 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -6.5, -74 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -5.9, -72 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -5.9, -72 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -5.6, -71.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -5.6, -71.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -5.6, -71.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -5.6, -71.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -5.6, -71.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -5.6, -71.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -5.5, -71.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -5.5, -71.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -5.4, -71.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -5.4, -71.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 43.9, 209.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 43.9, 209.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 73.3, 353.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 73.3, 353.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 100.4, 485.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 100.4, 485.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 125.2, 606.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 125.2, 606.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 147.7, 715.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 147.7, 715.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 167.8, 813.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 167.8, 813.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 185.6, 899.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 185.6, 899.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 201.1, 974.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 201.1, 974.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 214.3, 1037.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 214.3, 1037.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 225.1, 1089.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 225.1, 1089.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 233.6, 1129.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 233.6, 1129.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 239.8, 1157.6 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 239.8, 1157.6 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 243.7, 1174.6 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 243.7, 1174.6 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 245.2, 1180 , 0 );

setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.67, 1.67 );

setRotateKey( spep_0 + 332 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -55.7 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -55.7 );

-- ** 音 ** --

--構える
SE001 = playSeVer2( spep_0 + 8, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 66 );

--電撃
SE003 = playSeVer2( spep_0 + 60, 1147, "",spep_0 + 232, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 60, SE003, 63 );

--気弾溜め
SE004 = playSeVer2( spep_0 + 82, 1201, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 82, 1128, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 82, SE005, 53 );
setPitch( spep_0 + 82, SE005, 1200 );
setTimeStretch( SE005, 0.6, 30, 4 );
SE006 = playSeVer2( spep_0 + 82, 1200, "",spep_0 + 308, 0, 112, -1);
setSeVolumeByWorkId( spep_0 + 82, SE006, 141 );

--気弾飛んでいく
SE007 = playSeVer2( spep_0 + 184, 1184, "",spep_0 + 352, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 184, SE007, 63 );

--腕の動き
SE008 = playSeVer2( spep_0 + 202, 1116, "",spep_0 + 262, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 202, SE008, 72 );
SE009 = playSeVer2( spep_0 + 216, 1003, "", 0, 0, 0, -1);
setPitch( spep_0 + 216, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );
SE010 = playSeVer2( spep_0 + 242, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE010, 75 );
SE011 = playSeVer2( spep_0 + 272, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE011, 162 );

--気弾飛ばす
SE012 = playSeVer2( spep_0 + 278, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE012, 75 );
SE013 = playSeVer2( spep_0 + 278, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 278, 1022, "", 0, 0, 0, -1);

--気弾上昇
SE015 = playSeVer2( spep_0 + 340, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 340, SE015, 186 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 364; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 420F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--背景音
SE017 = playSeVer2( spep_1 + 82, 1264, "",spep_1 + 258, 0, 84, -1);
setSeVolumeByWorkId( spep_1 + 82, SE017, 79 );

-------------------------------------------------
-- ヤムチャのアップ〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 410;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ヤムチャのアップ〜フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ヤムチャのアップ〜フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 82 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 262 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 82 + OFFSET_X, 1, 3 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 82 + OFFSET_X, 1, -322.9, -626.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -322.9, -626.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -322.7, -626.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -322.7, -626.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -321.8, -624.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -321.8, -624.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -320.5, -622.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -320.5, -622.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -318.5, -618.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -318.5, -618.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -316.1, -613.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -316.1, -613.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -313, -607.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -313, -607.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -309.4, -601.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -309.4, -601.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -305.3, -593.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -305.3, -593.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -300.6, -584.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -300.6, -584.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -295.4, -574.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -295.4, -574.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -289.6, -563.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -289.6, -563.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -283.2, -551.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -283.2, -551.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -280.3, -549.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -280.3, -549.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -272.9, -527.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -272.9, -527.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -272.9, -520.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -272.9, -520.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -264.3, -496.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -264.3, -496.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -247.2, -486.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -247.2, -486.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -237.6, -460.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -237.6, -460.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -235.4, -448.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -235.4, -448.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -224.6, -420.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -224.6, -420.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -205.3, -398.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -205.3, -398.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -201.4, -384.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -201.4, -384.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -189, -352.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -189, -352.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -168, -335.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -168, -335.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -168, -327.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -168, -327.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -9.6, 465.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -9.6, 465.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -9.4, 465.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -9.4, 465.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -9.3, 465.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -9.3, 465.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -9.2, 464.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -9.2, 464.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -9.1, 463.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -9.1, 463.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -8.9, 461.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -8.9, 461.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -8.8, 459.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -8.8, 459.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -8.7, 455.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -8.7, 455.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -8.5, 450.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -8.5, 450.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -8.4, 443.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -8.4, 443.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -8.3, 435.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -8.3, 435.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -8.2, 425 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -8.2, 425 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -8, 412.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -8, 412.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -7.9, 398.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -7.9, 398.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -7.8, 381.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -7.8, 381.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -7.6, 361.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -7.6, 361.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -7.5, 339.2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -7.5, 339.2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -7.4, 313.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -7.4, 313.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -7.2, 285.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -7.2, 285.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -7.1, 253.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -7.1, 253.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -7, 217.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -7, 217.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -6.9, 178.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -6.9, 178.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -6.7, 135.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -6.7, 135.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -6.6, 87.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -6.6, 87.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -6.5, 36.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -6.5, 36.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -6.3, -19.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -6.3, -19.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -6.2, -80.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -6.2, -80.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -6.1, -146.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -6.1, -146.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -6, -217.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -6, -217.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -5.8, -293.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -5.8, -293.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -0.6, 454.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -0.6, 454.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -4.6, 440.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -4.6, 440.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -4.6, 446.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -4.6, 446.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -12.6, 437.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -12.6, 437.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -0.6, 449.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -0.6, 449.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -4.6, 436.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -4.6, 436.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -4.5, 444.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -4.5, 444.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -12.5, 435.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -12.5, 435.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -0.5, 446.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -0.5, 446.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -4.5, 434 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -4.5, 434 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -4.4, 440.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -4.4, 440.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -12.4, 431 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -12.4, 431 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -0.4, 440.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -0.4, 440.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -4.3, 426 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -4.3, 426 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -4.3, 430.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -4.3, 430.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -12.3, 418.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -12.3, 418.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -0.2, 425.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -0.2, 425.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -4.2, 407.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -4.2, 407.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -4.2, 408.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -4.2, 408.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -12.1, 392.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -12.1, 392.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -12.1, 382.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -12.1, 382.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -12, 380 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -12, 380 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -4, 359.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -4, 359.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -4, 352.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -4, 352.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -11.9, 327.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -11.9, 327.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -11.9, 315.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -11.9, 315.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -3.8, 284.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -3.8, 284.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -3.7, 263.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -3.7, 263.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -11.7, 221.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -11.7, 221.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -11.6, 186.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -11.6, 186.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -3.7, 123.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -3.7, 123.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -3.6, 56.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -3.6, 56.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -11.6, -61.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -11.6, -61.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -11.7, -269.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -11.7, -269.2 , 0 );

setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_2 + 82 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -40.2 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -40.2 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -74.8 );

-- ** 音 ** --

--指下に向ける
SE018 = playSeVer2( spep_2 + 38, 1004, "", 0, 0, 0, -1);

--気弾落ちてくる
SE019 = playSeVer2( spep_2 + 56, 1146, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE019, 86 );
setStartTimeMs( SE019,  33 );
SE020 = playSeVer2( spep_2 + 70, 1177, "",spep_2 + 152, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 70, SE020, 74 );

--敵ヒット
SE021 = playSeVer2( spep_2 + 126, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE021, 76 );
SE022 = playSeVer2( spep_2 + 126, 1023, "", 0, 0, 0, -1);

--落ちてくる
SE023 = playSeVer2( spep_2 + 126, 1019, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 140, 1304, "",spep_2 + 278, 0, 24, -1);
SE025 = playSeVer2( spep_2 + 190, 1019, "", 0, 0, 0, -1);

--爆発
SE026 = playSeVer2( spep_2 + 250, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE026, 82 );
SE027 = playSeVer2( spep_2 + 250, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE027, 60 );
SE028 = playSeVer2( spep_2 + 258, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE028, 51 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 284); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 410F -4

end