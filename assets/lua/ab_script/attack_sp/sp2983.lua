--1032710:LR_ルード_超必殺技：ルード・ボディプレス
--sp_effect_b1_00357
--sp2983

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164349;  -- キャラ登場→カードカットイン ef_001
SP_02 = 164351;  -- カードカットイン→フィニッシュ ef_002
SP_02b = 164352;  -- カードカットイン→フィニッシュ ef_002b


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

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- キャラ登場→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 146;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- キャラ登場→カードカットイン(ef_001)
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
spep_x = spep_0 + 000;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 178, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--踏み出す
SE003 = playSeVer2( spep_0 + 4, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE003, 67 );
SE004 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 56, 0, 28, -1);
SE005 = playSeVer2( spep_0 + 52, 1395, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 52, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE006, 120 );
setPitch( spep_0 + 52, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --146F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 426;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 76 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );
changeAnime( spep_2 + 60 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0, 1, 268, 49 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 238.1, 47 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 238.1, 47 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 211.9, 45.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 211.9, 45.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 189, 43.6 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 189, 43.6 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 169.1, 42.3 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 169.1, 42.3 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 152, 41.1 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 152, 41.1 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 137.4, 40.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 137.4, 40.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 125.1, 39.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 125.1, 39.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 114.7, 38.6 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 114.7, 38.6 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 106.1, 38 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 106.1, 38 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 99.1, 37.5 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 99.1, 37.5 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 93.4, 37.1 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 93.4, 37.1 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 88.9, 36.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 88.9, 36.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 85.4, 36.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 85.4, 36.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 82.8, 36.4 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 82.8, 36.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 80.8, 36.3 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 80.8, 36.3 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 79.4, 36.2 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 79.4, 36.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 78.4, 36.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 78.4, 36.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 77.7, 36.1 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 77.7, 36.1 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 77.4, 36 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 77.4, 36 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 77.1, 36 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 77.1, 36 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 77, 36 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 77, 36 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 76.6, 36 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 76.6, 36 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 76.2, 36 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 76.2, 36 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 75.8, 36 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 75.8, 36 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 75.4, 36 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 75.4, 36 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 75, 36 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 75, 36 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 36.8, -29.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 36.8, -29.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -26.4, -145.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -26.4, -145.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -81.4, -227.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -81.4, -227.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -169.1, -222.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -169.1, -222.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.04, 1.02 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.04, 1.02 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.07, 1.04 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.07, 1.04 );

setRotateKey( spep_2 + 0, 1, -16.7 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -101.4 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -101.4 );

--敵の動き2

setDisp( spep_2 + 288 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 316 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 288 + OFFSET_X, 1, 50, -218.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 50, -218.6 , 0 );

setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.77, 0.77 );

setRotateKey( spep_2 + 288 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -0.4 );

-- ** 音 ** --

--振りかぶる
SE008 = playSeVer2( spep_2 + 6, 9, "", 0, 32, 0, -1);
setStartTimeMs( SE008, 100 );
SE009 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 126, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 53 );
SE010 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 66, 0, 34, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--振りかぶる
SE011 = playSeVer2( spep_2 + 34, 1117, "",spep_2 + 84, 0, 20, -1);

--パンチ
SE012 = playSeVer2( spep_2 + 68, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 68, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 68, 1159, "",spep_2 + 220, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 68, SE014, 71 );

--両手あげる
SE015 = playSeVer2( spep_2 + 184, 1319, "",spep_2 + 268, 4, 30, -1);
setSeVolumeByWorkId( spep_2 + 184, SE015, 141 );
setStartTimeMs( SE015, 1167 );
SE016 = playSeVer2( spep_2 + 184, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE016, 71 );
SE017 = playSeVer2( spep_2 + 184, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 184, 1190, "", 0, 24, 0, -1);

--倒れ込む
SE019 = playSeVer2( spep_2 + 278, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 278, SE019, 141 );
setPitch( spep_2 + 278, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );
SE020 = playSeVer2( spep_2 + 278, 1116, "", 0, 0, 0, -1);

--地面ヒット
SE021 = playSeVer2( spep_2 + 316, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 316, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 316); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 426F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- キャラ登場→カードカットイン
-------------------------------------------------
MAX_FRAME_0 = 146;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- キャラ登場→カードカットイン(ef_001)
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
spep_x = spep_0 + 000;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 178, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--踏み出す
SE003 = playSeVer2( spep_0 + 4, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE003, 67 );
SE004 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 56, 0, 28, -1);
SE005 = playSeVer2( spep_0 + 52, 1395, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 52, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE006, 120 );
setPitch( spep_0 + 52, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --146F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カードカットイン→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 426;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン→フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 76 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 4 );
changeAnime( spep_2 + 60 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 0, 1, -268, 49 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -238.1, 47 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -238.1, 47 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -211.9, 45.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -211.9, 45.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -189, 43.6 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -189, 43.6 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -169.1, 42.3 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -169.1, 42.3 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -152, 41.1 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -152, 41.1 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -137.4, 40.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -137.4, 40.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -125.1, 39.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -125.1, 39.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -114.7, 38.6 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -114.7, 38.6 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -106.1, 38 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -106.1, 38 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -99.1, 37.5 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -99.1, 37.5 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -93.4, 37.1 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -93.4, 37.1 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -88.9, 36.8 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -88.9, 36.8 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -85.4, 36.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -85.4, 36.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -82.8, 36.4 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -82.8, 36.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -80.8, 36.3 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -80.8, 36.3 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -79.4, 36.2 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -79.4, 36.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -78.4, 36.1 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -78.4, 36.1 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -77.7, 36.1 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -77.7, 36.1 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -77.4, 36 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -77.4, 36 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -77.1, 36 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -77.1, 36 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -77, 36 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -77, 36 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -76.6, 36 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -76.6, 36 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -76.2, 36 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -76.2, 36 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -75.8, 36 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -75.8, 36 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -75.4, 36 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -75.4, 36 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -75, 36 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -75, 36 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -36.8, -29.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -36.8, -29.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 26.4, -145.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 26.4, -145.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 81.4, -227.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 81.4, -227.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 169.1, -222.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 169.1, -222.1 , 0 );

setScaleKey( spep_2 + 0, 1, 1, 1 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.04, 1.02 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.04, 1.02 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.07, 1.04 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.07, 1.04 );

setRotateKey( spep_2 + 0, 1, 16.7 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 101.4 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 101.4 );

--敵の動き2

setDisp( spep_2 + 288 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 316 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 288 + OFFSET_X, 1, -50, -218.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -50, -218.6 , 0 );

setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.77, 0.77 );

setRotateKey( spep_2 + 288 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 0.4 );

-- ** 音 ** --

--振りかぶる
SE008 = playSeVer2( spep_2 + 6, 9, "", 0, 32, 0, -1);
setStartTimeMs( SE008, 100 );
SE009 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 126, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 0, SE009, 53 );
SE010 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 66, 0, 34, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--振りかぶる
SE011 = playSeVer2( spep_2 + 34, 1117, "",spep_2 + 84, 0, 20, -1);

--パンチ
SE012 = playSeVer2( spep_2 + 68, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 68, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 68, 1159, "",spep_2 + 220, 0, 68, -1);
setSeVolumeByWorkId( spep_2 + 68, SE014, 71 );

--両手あげる
SE015 = playSeVer2( spep_2 + 184, 1319, "",spep_2 + 268, 4, 30, -1);
setSeVolumeByWorkId( spep_2 + 184, SE015, 141 );
setStartTimeMs( SE015, 1167 );
SE016 = playSeVer2( spep_2 + 184, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 184, SE016, 71 );
SE017 = playSeVer2( spep_2 + 184, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 184, 1190, "", 0, 24, 0, -1);

--倒れ込む
SE019 = playSeVer2( spep_2 + 278, 1438, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 278, SE019, 141 );
setPitch( spep_2 + 278, SE019, -600 );
setTimeStretch( SE019, 0.6, 30, 4 );
SE020 = playSeVer2( spep_2 + 278, 1116, "", 0, 0, 0, -1);

--地面ヒット
SE021 = playSeVer2( spep_2 + 316, 1159, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 316, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 316); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 426F


end
