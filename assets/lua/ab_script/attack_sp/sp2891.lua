--1031820:LR_四星龍_超必殺技：バーストアタック
--sp_effect_a9_00146
--sp2891

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163966;  -- 開始 ～ カードまで ef_001
SP_02 = 163967;  -- カード ～ フィニッシュまで ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始 ～ カードまで
-------------------------------------------------
MAX_FRAME_0 = 138;

setupMovie(0, SP_01, 0, 0);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始 ～ カードまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

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

-- ** 音 ** --

--気弾溜め
SE002 = playSeVer2( spep_0 + 40, 1224, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 28, 1400, "",spep_0 +  162, 12, 28, -1);
setSeVolumeByWorkId( spep_0 + 28, SE003, 120 );
setStartTimeMs( SE003,  2100 );
SE004 = playSeVer2( spep_0 + 40, 1396, "",spep_0 + 176, 36, 28, -1);
SE005 = playSeVer2( spep_0 + 646, 1225, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 76, 1409, "",spep_0 + 176, 0, 26, -1);

--気弾大きくなる
SE007 = playSeVer2( spep_0 + 106, 1182, "",spep_0 + 158, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 108, 1274, "", 0, 0, 0, -1);
setTimeStretch( SE008, 0.49, 30, 4 );
SE009 = playSeVer2( spep_0 + 108, 1499, "",spep_0 + 154, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0+2;--138F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE011 = playSeVer2( spep_1 + 84, 1400, "",spep_1 + 366, 12, 38, -1);
setSeVolumeByWorkId( spep_1 + 84, SE011, 184 );
setStartTimeMs( SE011,  2100 );
SE012 = playSeVer2( spep_1 + 88, 1409, "",spep_1 + 278, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 88, SE012, 123 );
SE013 = playSeVer2( spep_1 + 88, 1396, "",spep_1 + 272, 0, 40, -1);

-------------------------------------------------
-- カード ～ フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 432;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード ～ フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

setDisp( spep_2 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 234 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 206 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 206 + OFFSET_X, 1, 100.2, -54 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 100.2, -54 , 0 );

setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.09, 2.09 );

setRotateKey( spep_2 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--構える
SE014 = playSeVer2( spep_2 + 34, 1116, "",spep_2 + 110, 0, 44, -1);
SE015 = playSeVer2( spep_2 + 34, 1449, "",spep_2 + 164, 0, 24, -1);

--アップ
SE016 = playSeVer2( spep_2 + 84, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 84, 1004, "", 0, 0, 0, -1);

--気弾発射
SE018 = playSeVer2( spep_2 + 134, 1193, "",spep_2 + 268, 0, 30, -1);
SE019 = playSeVer2( spep_2 + 134, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 134, 1146, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE011, 0);
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

--ヒット
SE021 = playSeVer2( spep_2 + 228, 1024, "", 0, 0, 0, -1);

--炎立ち上がる
SE022 = playSeVer2( spep_2 + 302, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE022, 182 );
SE023 = playSeVer2( spep_2 + 302, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE023, 78 );
SE024 = playSeVer2( spep_2 + 304, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 304, SE024, 130 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 314); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 432F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始 ～ カードまで
-------------------------------------------------
MAX_FRAME_0 = 138;

setupMovie(0, SP_01, 0, 0);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始 ～ カードまで(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--気弾溜め
SE002 = playSeVer2( spep_0 + 40, 1224, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 28, 1400, "",spep_0 +  162, 12, 28, -1);
setSeVolumeByWorkId( spep_0 + 28, SE003, 120 );
setStartTimeMs( SE003,  2100 );
SE004 = playSeVer2( spep_0 + 40, 1396, "",spep_0 + 176, 36, 28, -1);
SE005 = playSeVer2( spep_0 + 646, 1225, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 76, 1409, "",spep_0 + 176, 0, 26, -1);

--気弾大きくなる
SE007 = playSeVer2( spep_0 + 106, 1182, "",spep_0 + 158, 0, 16, -1);
SE008 = playSeVer2( spep_0 + 108, 1274, "", 0, 0, 0, -1);
setTimeStretch( SE008, 0.49, 30, 4 );
SE009 = playSeVer2( spep_0 + 108, 1499, "",spep_0 + 154, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0+2;--138F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE011 = playSeVer2( spep_1 + 84, 1400, "",spep_1 + 366, 12, 38, -1);
setSeVolumeByWorkId( spep_1 + 84, SE011, 184 );
setStartTimeMs( SE011,  2100 );
SE012 = playSeVer2( spep_1 + 88, 1409, "",spep_1 + 278, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 88, SE012, 123 );
SE013 = playSeVer2( spep_1 + 88, 1396, "",spep_1 + 272, 0, 40, -1);

-------------------------------------------------
-- カード ～ フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 432;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カード ～ フィニッシュまで(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 234 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 206 + OFFSET_X, 1, 4 );

setMoveKey( spep_2 + 206 + OFFSET_X, 1, -100.2, -54 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -100.2, -54 , 0 );

setScaleKey( spep_2 + 206 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.09, 2.09 );

setRotateKey( spep_2 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--構える
SE014 = playSeVer2( spep_2 + 34, 1116, "",spep_2 + 110, 0, 44, -1);
SE015 = playSeVer2( spep_2 + 34, 1449, "",spep_2 + 164, 0, 24, -1);

--アップ
SE016 = playSeVer2( spep_2 + 84, 1182, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 84, 1004, "", 0, 0, 0, -1);

--気弾発射
SE018 = playSeVer2( spep_2 + 134, 1193, "",spep_2 + 268, 0, 30, -1);
SE019 = playSeVer2( spep_2 + 134, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 134, 1146, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 200; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE011, 0);
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

--ヒット
SE021 = playSeVer2( spep_2 + 228, 1024, "", 0, 0, 0, -1);

--炎立ち上がる
SE022 = playSeVer2( spep_2 + 302, 1268, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE022, 182 );
SE023 = playSeVer2( spep_2 + 302, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE023, 78 );
SE024 = playSeVer2( spep_2 + 304, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 304, SE024, 130 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 314); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 432F

end
