--1031340:UR_ブルー将軍_必殺技：超能力
--sp_effect_b1_00327
--sp2863

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163814; --気だめ〜目光る〜敵拘束〜近づく ef_001

--エフェクト(味方)
SP_01b = 163815; --気だめ〜目光る〜敵拘束〜近づく ef_001b
SP_02  = 163817; --蹴り〜パンチ〜高笑い ef_002
SP_02b = 163818; --蹴り〜パンチ〜高笑い ef_002b

--エフェクト(敵)
SP_01br = 163816; --気だめ〜目光る〜敵拘束〜近づく ef_001br
SP_02r  = 163819; --蹴り〜パンチ〜高笑い ef_002r
SP_02br = 163820; --蹴り〜パンチ〜高笑い ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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
]]--

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 気だめ〜目光る〜敵拘束〜近づく
-------------------------------------------------
MAX_FRAME_0 = 484;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気だめ〜目光る〜敵拘束〜近づく(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 気だめ〜目光る〜敵拘束〜近づく(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 100;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 227.5, -27.6 , 0 );

setScaleKey( spep_0 + 0, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 2.67, 2.67 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 336 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 400 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 336 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 336 + OFFSET_X, 1, -5, 0 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -5, 0 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 5.2, -13.8 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 5.2, -13.8 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -15, 10.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -15, 10.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 5.2, -12.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 5.2, -12.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 7.8, 4.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 7.8, 4.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -14.3, -6.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -14.3, -6.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 5.2, -13.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 5.2, -13.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -15, 10.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -15, 10.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -5, 0 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -5, 0 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 5.2, -13.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 5.2, -13.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -15, 10.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -15, 10.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 5.2, -12.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 5.2, -12.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 7.8, 4.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 7.8, 4.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -14.3, -6.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -14.3, -6.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 5.2, -13.8 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 5.2, -13.8 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -15, 10.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -15, 10.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -5, 0 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -5, 0 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -0.1, -5.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -0.1, -5.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -8.7, 5.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -8.7, 5.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -5, 0 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -5, 0 , 0 );

setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 336 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -43.9 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1382, "",spep_0 + 80, 6, 50, -1);
setStartTimeMs( SE001,  2267 );

--気が溢れる
SE002 = playSeVer2( spep_0 + 96, 1295, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 96, 1391, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 96, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE004, 82 );

--筋肉膨れ上がる
SE006 = playSeVer2( spep_0 + 184, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE006, 61 );
SE007 = playSeVer2( spep_0 + 184, 1457, "",spep_0 + 278, 0, 40, -1);

--目光る
SE008 = playSeVer2( spep_0 + 256, 1265, "",spep_0 + 446, 0, 88, -1);
setSeVolumeByWorkId( spep_0 + 256, SE008, 86 );
setPitch( spep_0 + 256, SE008, 300 );
setTimeStretch( SE008, 1.2, 30, 4 );
SE009 = playSeVer2( spep_0 + 266, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE009, 68 );
setPitch( spep_0 + 266, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );
SE010 = playSeVer2( spep_0 + 266, 1184, "",spep_0 + 462, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 266, SE010, 32 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 286; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--金縛り
SE011 = playSeVer2( spep_0 + 298, 1179, "",spep_0 + 374, 0, 40, -1);
SE012 = playSeVer2( spep_0 + 302, 90, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 + 312, SE012, 195 );
SE013 = playSeVer2( spep_0 + 332, 1261, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 332, 1011, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 332, 1298, "",spep_0 + 410, 0, 40, -1);
SE016 = playSeVer2( spep_0 + 336, 1054, "", 0, 0, 0, -1);

--歩いてくる
SE017 = playSeVer2( spep_0 + 424, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE017, 172 );
SE018 = playSeVer2( spep_0 + 476, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE018, 162 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --484f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--蹴り飛ばす
SE020 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE020, 71 );


-------------------------------------------------
-- 蹴り〜パンチ〜高笑い
-------------------------------------------------
MAX_FRAME_2 = 374;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 蹴り〜パンチ〜高笑い(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 蹴り〜パンチ〜高笑い(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 36 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 + 18 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, 127.4, -66.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 127.4, -66.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 108.5, -41.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 108.5, -41.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 234, -6.3 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 234, -6.3 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 322.8, 175.1 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 322.8, 175.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 386.9, 170.5 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 386.9, 170.5 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 429.9, 167.9 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 429.9, 167.9 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 577, 143.3 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 577, 143.3 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 603.9, 107.6 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 603.9, 107.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 759.4, 31.5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 759.4, 31.5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 773.4, 30.5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 773.4, 30.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 768.8, 21.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 768.8, 21.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.39, 2.39 );

setRotateKey( spep_2 + 0, 1, -52 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, 17 );


--敵の動き2
setDisp( spep_2 + 142 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 226 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 142 + OFFSET_X, 1, 357.2, -105.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 357.2, -105.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 339.9, -85.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 339.9, -85.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 371.6, -122.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 371.6, -122.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 375, -86.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 375, -86.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 344.8, -120.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 344.8, -120.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 373.4, -121.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 373.4, -121.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 340.6, -87.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 340.6, -87.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 372.4, -124.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 372.4, -124.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 375.7, -87.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 375.7, -87.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 345.6, -122.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 345.6, -122.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 365.3, -114.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 365.3, -114.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 350.1, -98.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 350.1, -98.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 366.9, -115.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 366.9, -115.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 366.7, -101.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 366.7, -101.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 359.2, -109.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 359.2, -109.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 356.3, -107.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 356.3, -107.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 356.5, -107.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 356.5, -107.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 356.6, -107.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 356.6, -107.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 356.2, -107.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 356.2, -107.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 356.3, -107.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 356.3, -107.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 356.5, -108.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 356.5, -108.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 356, -107.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 356, -107.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 356.2, -108.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 356.2, -108.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 356.3, -108.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 356.3, -108.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 356, -109.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 356, -109.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 356.2, -109.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 356.2, -109.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 356.3, -110.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 356.3, -110.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 356, -111 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 356, -111 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 356.2, -111.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 356.2, -111.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 356.3, -111.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 356.3, -111.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 356, -112.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 356, -112.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 356.1, -112.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 356.1, -112.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 356.3, -113.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 356.3, -113.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 356, -114.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 356, -114.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 356.1, -114.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 356.1, -114.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 356.3, -114.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 356.3, -114.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 355.9, -115.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 355.9, -115.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 356.1, -116 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 356.1, -116 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 356.2, -116.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 356.2, -116.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 355.9, -117.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 355.9, -117.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 356.1, -117.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 356.1, -117.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 356.2, -117.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 356.2, -117.8 , 0 );

setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.84, 2.84 );

setRotateKey( spep_2 + 142 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 34 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 34 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 34.2 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 34.2 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 36 );


-- ** 音 ** --
--蹴り飛ばす
SE021 = playSeVer2( spep_2 + 10, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE021, 91 );
SE022 = playSeVer2( spep_2 + 14, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE022, 85 );
SE023 = playSeVer2( spep_2 + 42, 1116, "",spep_2 + 124, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 42, SE023, 83 );

--殴る
SE024 = playSeVer2( spep_2 + 82, 1189, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 98, 1120, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 98, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE026, 62 );

--画面遷移
SE027 = playSeVer2( spep_2 + 214, 1232, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 226); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); --374f -4f


else


------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 気だめ〜目光る〜敵拘束〜近づく
-------------------------------------------------
MAX_FRAME_0 = 484;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気だめ〜目光る〜敵拘束〜近づく(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 気だめ〜目光る〜敵拘束〜近づく(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 100;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -30, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -30, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 227.5, -27.6 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 227.5, -27.6 , 0 );

setScaleKey( spep_0 + 0, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 2.67, 2.67 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 336 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 400 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 336 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 372 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 336 + OFFSET_X, 1, 5, 0 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 5, 0 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -5.2, -13.8 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -5.2, -13.8 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 15, 10.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 15, 10.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -5.2, -12.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -5.2, -12.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -7.8, 4.8 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -7.8, 4.8 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 14.3, -6.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 14.3, -6.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -5.2, -13.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -5.2, -13.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 15, 10.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 15, 10.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 5, 0 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 5, 0 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -5.2, -13.8 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -5.2, -13.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 15, 10.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 15, 10.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -5.2, -12.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -5.2, -12.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -7.8, 4.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -7.8, 4.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 14.3, -6.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 14.3, -6.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -5.2, -13.8 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -5.2, -13.8 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 15, 10.6 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 15, 10.6 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 5, 0 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 5, 0 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 0.1, -5.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 0.1, -5.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 8.7, 5.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 8.7, 5.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 5, 0 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 5, 0 , 0 );

setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 336 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 43.9 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 43.9 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1382, "",spep_0 + 80, 6, 50, -1);
setStartTimeMs( SE001,  2267 );

--気が溢れる
SE002 = playSeVer2( spep_0 + 96, 1295, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 96, 1391, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 96, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE004, 82 );

--筋肉膨れ上がる
SE006 = playSeVer2( spep_0 + 184, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE006, 61 );
SE007 = playSeVer2( spep_0 + 184, 1457, "",spep_0 + 278, 0, 40, -1);

--目光る
SE008 = playSeVer2( spep_0 + 256, 1265, "",spep_0 + 446, 0, 88, -1);
setSeVolumeByWorkId( spep_0 + 256, SE008, 86 );
setPitch( spep_0 + 256, SE008, 300 );
setTimeStretch( SE008, 1.2, 30, 4 );
SE009 = playSeVer2( spep_0 + 266, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE009, 68 );
setPitch( spep_0 + 266, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );
SE010 = playSeVer2( spep_0 + 266, 1184, "",spep_0 + 462, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 266, SE010, 32 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 286; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
--金縛り
SE011 = playSeVer2( spep_0 + 298, 1179, "",spep_0 + 374, 0, 40, -1);
SE012 = playSeVer2( spep_0 + 302, 90, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_0 + 312, SE012, 195 );
SE013 = playSeVer2( spep_0 + 332, 1261, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 332, 1011, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 332, 1298, "",spep_0 + 410, 0, 40, -1);
SE016 = playSeVer2( spep_0 + 336, 1054, "", 0, 0, 0, -1);

--歩いてくる
SE017 = playSeVer2( spep_0 + 424, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE017, 172 );
SE018 = playSeVer2( spep_0 + 476, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE018, 162 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --484f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--蹴り飛ばす
SE020 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE020, 71 );


-------------------------------------------------
-- 蹴り〜パンチ〜高笑い
-------------------------------------------------
MAX_FRAME_2 = 374;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 蹴り〜パンチ〜高笑い(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 蹴り〜パンチ〜高笑い(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 36 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 + 18 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 0, 1, 127.4, -66.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 127.4, -66.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 108.5, -41.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 108.5, -41.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 234, -6.3 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 234, -6.3 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 322.8, 175.1 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 322.8, 175.1 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 386.9, 170.5 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 386.9, 170.5 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 429.9, 167.9 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 429.9, 167.9 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 577, 143.3 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 577, 143.3 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 603.9, 107.6 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 603.9, 107.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 759.4, 31.5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 759.4, 31.5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 773.4, 30.5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 773.4, 30.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 768.8, 21.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 768.8, 21.1 , 0 );

setScaleKey( spep_2 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.39, 2.39 );

setRotateKey( spep_2 + 0, 1, -52 );
setRotateKey( spep_2 + 17 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 18 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, 17 );


--敵の動き2
setDisp( spep_2 + 142 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 226 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 142 + OFFSET_X, 1, 357.2, -105.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 357.2, -105.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 339.9, -85.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 339.9, -85.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 371.6, -122.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 371.6, -122.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 375, -86.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 375, -86.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 344.8, -120.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 344.8, -120.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 373.4, -121.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 373.4, -121.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 340.6, -87.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 340.6, -87.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 372.4, -124.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 372.4, -124.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 375.7, -87.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 375.7, -87.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 345.6, -122.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 345.6, -122.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 365.3, -114.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 365.3, -114.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 350.1, -98.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 350.1, -98.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 366.9, -115.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 366.9, -115.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 366.7, -101.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 366.7, -101.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 359.2, -109.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 359.2, -109.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 356.3, -107.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 356.3, -107.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 356.5, -107.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 356.5, -107.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 356.6, -107.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 356.6, -107.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 356.2, -107.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 356.2, -107.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 356.3, -107.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 356.3, -107.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 356.5, -108.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 356.5, -108.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 356, -107.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 356, -107.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 356.2, -108.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 356.2, -108.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 356.3, -108.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 356.3, -108.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 356, -109.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 356, -109.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 356.2, -109.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 356.2, -109.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 356.3, -110.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 356.3, -110.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 356, -111 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 356, -111 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 356.2, -111.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 356.2, -111.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 356.3, -111.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 356.3, -111.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 356, -112.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 356, -112.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 356.1, -112.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 356.1, -112.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 356.3, -113.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 356.3, -113.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 356, -114.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 356, -114.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 356.1, -114.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 356.1, -114.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 356.3, -114.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 356.3, -114.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 355.9, -115.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 355.9, -115.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 356.1, -116 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 356.1, -116 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 356.2, -116.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 356.2, -116.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 355.9, -117.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 355.9, -117.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 356.1, -117.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 356.1, -117.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 356.2, -117.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 356.2, -117.8 , 0 );

setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.84, 2.84 );

setRotateKey( spep_2 + 142 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 31 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 34 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 34 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 34.2 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 34.2 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 36 );


-- ** 音 ** --
--蹴り飛ばす
SE021 = playSeVer2( spep_2 + 10, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE021, 91 );
SE022 = playSeVer2( spep_2 + 14, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE022, 85 );
SE023 = playSeVer2( spep_2 + 42, 1116, "",spep_2 + 124, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 42, SE023, 83 );

--殴る
SE024 = playSeVer2( spep_2 + 82, 1189, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 98, 1120, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 98, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE026, 62 );

--画面遷移
SE027 = playSeVer2( spep_2 + 214, 1232, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 226); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); --374f -4f


end