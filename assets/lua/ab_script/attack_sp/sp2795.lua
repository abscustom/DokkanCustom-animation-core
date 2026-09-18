-- 1030260: SSR_ベジータ(DAIMA)(ミニ)_必殺技：ギャリック砲
-- sp_effect_b4_00362
-- sp2795

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163389;  -- ギャリック砲〜溜め ef_001
SP_002 = 163391;  -- ギャリック砲〜発射 ef_002
SP_003 = 163393;  -- ギャリック砲〜弾道・着弾 ef_003
SP_004 = 163394;  -- ギャリック砲〜弾道・着弾 ef_004

-- 敵側
SP_001r = 163390;  -- ギャリック砲〜溜め ef_001r
SP_002r = 163392;  -- ギャリック砲〜発射 ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ギャリック砲〜溜め ef_001
------------------------------------------------------
MAX_FRAME_0 = 148;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- ギャリック砲〜溜め ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 18,  906, 132, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 18, shuchusen1, 132, 25 );

setEffMoveKey( spep_0 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 18, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 18, shuchusen1, 0 );
setEffRotateKey( spep_0 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 50;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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

ctzuzun = entryEffectLife( spep_0 + 20,  10013, 44, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffShake( spep_0 + 32, ctzuzun, 30, 10 );

setEffMoveKey( spep_0 + 20, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 22, ctzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 60, ctzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 + 20, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 22, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 24, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 26, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 60, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 20, ctzuzun, 0 );
setEffRotateKey( spep_0 + 60, ctzuzun, 0 );

setEffAlphaKey( spep_0 + 20, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 38, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 212 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 172 );
setEffAlphaKey( spep_0 + 44, ctzuzun, 136 );
setEffAlphaKey( spep_0 + 46, ctzuzun, 104 );
setEffAlphaKey( spep_0 + 48, ctzuzun, 77 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 53 );
setEffAlphaKey( spep_0 + 52, ctzuzun, 34 );
setEffAlphaKey( spep_0 + 54, ctzuzun, 19 );
setEffAlphaKey( spep_0 + 56, ctzuzun, 9 );
setEffAlphaKey( spep_0 + 58, ctzuzun, 2 );
setEffAlphaKey( spep_0 + 60, ctzuzun, 0 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 18, 1035, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 28, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE002, 71 );
SE003 = playSeVer2( spep_0 + 52, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE003, 71 );

--構える
SE004 = playSeVer2( spep_0 + 54, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE005 = playSeVer2( spep_0 + 54, 1296, "",spep_0 + 162, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 54, 1282, "",spep_0 + 162, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 54, SE006, 54 );

--オーラ
SE008 = playSeVer2( spep_0 + 76, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 71 );
SE009 = playSeVer2( spep_0 + 100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE009, 71 );
SE010 = playSeVer2( spep_0 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE010, 71 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 170 );  -- white fade
entryFade( spep_0 + 16, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 138, 8, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 148

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- ギャリック砲〜発射 ef_002
------------------------------------------------------
MAX_FRAME_2 = 84;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );  -- ギャリック砲〜発射 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 18, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 18, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 18, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 + 18,  10012, 64, 0x100, -1, 0, 9.7, 282.4 );  --ズオッ
setEffShake( spep_2 + 18, ctzuo, 64, 20 );

setEffMoveKey( spep_2 + 18, ctzuo, 9.7, 282.4 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 33, 331.8 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2 + 68, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, 50.8, 397.2 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, 90.5, 375.7 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, 79.1, 405.2 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, 128.3, 373.9 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, 147.3, 373.1 , 0 );

setEffScaleKey( spep_2 + 18, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 20, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 22, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 68, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 70, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 72, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 74, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 76, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 78, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 18, ctzuo, 9.6 );
setEffRotateKey( spep_2 + 20, ctzuo, 18.3 );
setEffRotateKey( spep_2 + 22, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 78, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 18, ctzuo, 255 );
setEffAlphaKey( spep_2 + 68, ctzuo, 255 );
setEffAlphaKey( spep_2 + 70, ctzuo, 204 );
setEffAlphaKey( spep_2 + 72, ctzuo, 153 );
setEffAlphaKey( spep_2 + 74, ctzuo, 102 );
setEffAlphaKey( spep_2 + 76, ctzuo, 51 );
setEffAlphaKey( spep_2 + 78, ctzuo, 0 );

-- ** 音 ** --
--気弾発射
SE012 = playSeVer2( spep_2 + 10, 1022, "", 0, 0, 0, 0.6);
SE013 = playSeVer2( spep_2 + 10, 1177, "", 0, 0, 0, 0.6);

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 100 );  -- white fade
entryFade( spep_2 + 14, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 80, 6, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2 + 2;  -- 84 + 2

------------------------------------------------------
-- ギャリック砲〜弾道・着弾  ef_003
------------------------------------------------------
MAX_FRAME_3 = 96;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_3 + 0, SP_003, 0x100, -1, 0, 0, 0 );  -- ギャリック砲〜弾道・着弾 ef_003
setEffMoveKey( spep_3 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_03, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_03, 0 );
setEffAlphaKey( spep_3 + 0, SP_03, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_03, 255 );
SP_04 = entryEffect( spep_3 + 0, SP_004, 0x80, -1, 0, 0, 0 );  -- ギャリック砲〜弾道・着弾 ef_004
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_3 + 28,  10012, 24, 0x100, -1, 0, -17.7, 313 );  --ズオッ
setEffShake( spep_3 + 28, ctzuo1, 24, 20 );

setEffMoveKey( spep_3 + 28, ctzuo1, -17.7, 313 , 0 );
setEffMoveKey( spep_3 + 30, ctzuo1, -35.7, 356 , 0 );
setEffMoveKey( spep_3 + 32, ctzuo1, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzuo1, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3 + 36, ctzuo1, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3 + 38, ctzuo1, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3 + 40, ctzuo1, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3 + 42, ctzuo1, -87, 406.6 , 0 );
setEffMoveKey( spep_3 + 44, ctzuo1, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3 + 46, ctzuo1, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzuo1, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3 + 28, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_3 + 30, ctzuo1, 1.54, 1.54 );
setEffScaleKey( spep_3 + 32, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_3 + 42, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_3 + 44, ctzuo1, 4.09, 4.09 );
setEffScaleKey( spep_3 + 46, ctzuo1, 5.46, 5.46 );
setEffScaleKey( spep_3 + 48, ctzuo1, 6.82, 6.82 );

setEffRotateKey( spep_3 + 38, ctzuo1, -3.4 );
setEffRotateKey( spep_3 + 30, ctzuo1, -13.5 );
setEffRotateKey( spep_3 + 32, ctzuo1, -13.8 );
setEffRotateKey( spep_3 + 34, ctzuo1, -14.1 );
setEffRotateKey( spep_3 + 36, ctzuo1, -14.4 );
setEffRotateKey( spep_3 + 38, ctzuo1, -14.7 );
setEffRotateKey( spep_3 + 40, ctzuo1, -15 );
setEffRotateKey( spep_3 + 42, ctzuo1, -11.8 );
setEffRotateKey( spep_3 + 44, ctzuo1, -8.5 );
setEffRotateKey( spep_3 + 46, ctzuo1, -5.2 );
setEffRotateKey( spep_3 + 48, ctzuo1, -5.2 );

setEffAlphaKey( spep_3 + 28, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 42, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 44, ctzuo1, 170 );
setEffAlphaKey( spep_3 + 46, ctzuo1, 85 );
setEffAlphaKey( spep_3 + 48, ctzuo1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 ); 
changeAnime( spep_3 + 28 + OFFSET_X, 1, 108 ); 

setMoveKey( spep_3 + 0, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_X, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_X, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_X, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, 44.4, 18.4 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_X, 1, 44.4, 18.4 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_X, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, 69.9, 70.3 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, 69.9, 70.3 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 86.8, 89.1 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, 86.8, 89.1 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3 + 19 + OFFSET_X, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, 100.5, 117.9 , 0 );
setMoveKey( spep_3 + 21 + OFFSET_X, 1, 100.5, 117.9 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 + 23 + OFFSET_X, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, 110.8, 140.7 , 0 );
setMoveKey( spep_3 + 25 + OFFSET_X, 1, 110.8, 140.7 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3 + 27 + OFFSET_X, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, 161.4, 202.5 , 0 );
setMoveKey( spep_3 + 29 + OFFSET_X, 1, 161.4, 202.5 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 + 31 + OFFSET_X, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, 117.7, 177.9 , 0 );
setMoveKey( spep_3 + 33 + OFFSET_X, 1, 117.7, 177.9 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_X, 1, 145, 211 , 0 );
setMoveKey( spep_3 + 35 + OFFSET_X, 1, 145, 211 , 0 );
setMoveKey( spep_3 + 36 + OFFSET_X, 1, 140.8, 213 , 0 );
setMoveKey( spep_3 + 37 + OFFSET_X, 1, 140.8, 213 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_X, 1, 146.1, 215.8 , 0 );
setMoveKey( spep_3 + 40 + OFFSET_X, 1, 146.1, 215.8 , 0 );

setScaleKey( spep_3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 3 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_3 + 5 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 7 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 9 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 11 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 13 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 15 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 17 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 19 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 21 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 23 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 25 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 27 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 29 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 31 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 33 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 35 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 36 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 37 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 38 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 40 + OFFSET_X, 1, 0.28, 0.28 );

setRotateKey( spep_3 + 0, 1, -2 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_3 + 3 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_3 + 5 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_3 + 7 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_3 + 9 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_3 + 11 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_3 + 13 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, -3 );
setRotateKey( spep_3 + 15 + OFFSET_X, 1, -3 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_3 + 17 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_3 + 19 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_3 + 20 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_3 + 21 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_3 + 22 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_3 + 23 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_3 + 24 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_3 + 25 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_3 + 26 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_3 + 27 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_3 + 28 + OFFSET_X, 1, 21 );
setRotateKey( spep_3 + 29 + OFFSET_X, 1, 21 );
setRotateKey( spep_3 + 30 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_3 + 31 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_3 + 32 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_3 + 33 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_3 + 34 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_3 + 35 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_3 + 36 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_3 + 37 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_3 + 38 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_3 + 40 + OFFSET_X, 1, 11.4 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 16;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

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
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--気弾飛んでいく
SE014 = playSeVer2( spep_3 + 20, 1021, "", 0, 0, 0, -1);

--爆発
SE015 = playSeVer2( spep_3 + 82, 1023, "", 0, 0, 0, -1);

-- ** ホワイトフェード ** --
entryFade( spep_3 + 28, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_3 + 90, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade

-- ** 次の準備 ** --
spep_N = spep_3 + MAX_FRAME_3;  -- 96

------------------------------------------------------
-- 「ガッ」 
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
--[[
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_003b , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
]]

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
 
-- ** 集中線 ** --
--[[
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
]]

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
--entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 6, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 6, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ギャリック砲〜溜め ef_001
------------------------------------------------------
MAX_FRAME_0 = 148;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x80, -1, 0, 0, 0 );  -- ギャリック砲〜溜め ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 18,  906, 132, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 18, shuchusen1, 132, 25 );

setEffMoveKey( spep_0 + 18, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 18, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 18, shuchusen1, 0 );
setEffRotateKey( spep_0 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen1, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 50;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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

ctzuzun = entryEffectLife( spep_0 + 20,  10013, 44, 0x100, -1, 0, 20.1, 249.8 ); --ズズズンッ
setEffShake( spep_0 + 32, ctzuzun, 30, 10 );

setEffMoveKey( spep_0 + 20, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 + 22, ctzuzun, 29.3, 317.5 , 0 );
setEffMoveKey( spep_0 + 24, ctzuzun, 51.3, 394.7 , 0 );
setEffMoveKey( spep_0 + 26, ctzuzun, 38.4, 377.7 , 0 );
setEffMoveKey( spep_0 + 28, ctzuzun, 43.5, 372 , 0 );
setEffMoveKey( spep_0 + 30, ctzuzun, 31.1, 354.5 , 0 );
setEffMoveKey( spep_0 + 60, ctzuzun, 31.1, 354.5 , 0 );

setEffScaleKey( spep_0 + 20, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 + 22, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_0 + 24, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 + 26, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 + 60, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 + 20, ctzuzun, 0 );
setEffRotateKey( spep_0 + 60, ctzuzun, 0 );

setEffAlphaKey( spep_0 + 20, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 38, ctzuzun, 255 );
setEffAlphaKey( spep_0 + 40, ctzuzun, 212 );
setEffAlphaKey( spep_0 + 42, ctzuzun, 172 );
setEffAlphaKey( spep_0 + 44, ctzuzun, 136 );
setEffAlphaKey( spep_0 + 46, ctzuzun, 104 );
setEffAlphaKey( spep_0 + 48, ctzuzun, 77 );
setEffAlphaKey( spep_0 + 50, ctzuzun, 53 );
setEffAlphaKey( spep_0 + 52, ctzuzun, 34 );
setEffAlphaKey( spep_0 + 54, ctzuzun, 19 );
setEffAlphaKey( spep_0 + 56, ctzuzun, 9 );
setEffAlphaKey( spep_0 + 58, ctzuzun, 2 );
setEffAlphaKey( spep_0 + 60, ctzuzun, 0 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 18, 1035, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 28, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE002, 71 );
SE003 = playSeVer2( spep_0 + 52, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE003, 71 );

--構える
SE004 = playSeVer2( spep_0 + 54, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE005 = playSeVer2( spep_0 + 54, 1296, "",spep_0 + 162, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 54, 1282, "",spep_0 + 162, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 54, SE006, 54 );

--オーラ
SE008 = playSeVer2( spep_0 + 76, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 71 );
SE009 = playSeVer2( spep_0 + 100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE009, 71 );
SE010 = playSeVer2( spep_0 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE010, 71 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 170 );  -- white fade
entryFade( spep_0 + 16, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 138, 8, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 148

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- ギャリック砲〜発射 ef_002
------------------------------------------------------
MAX_FRAME_2 = 84;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x80, -1, 0, 0, 0 );  -- ギャリック砲〜発射 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 18, 25 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 18, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 18, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 + 18,  10012, 64, 0x100, -1, 0, 9.7, 282.4 );  --ズオッ
setEffShake( spep_2 + 18, ctzuo, 64, 20 );

setEffMoveKey( spep_2 + 18, ctzuo, 9.7, 282.4 , 0 );
setEffMoveKey( spep_2 + 20, ctzuo, 33, 331.8 , 0 );
setEffMoveKey( spep_2 + 22, ctzuo, 36.6, 393.3 , 0 );
setEffMoveKey( spep_2 + 24, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2 + 68, ctzuo, 52.6, 377.3 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, 50.8, 397.2 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, 90.5, 375.7 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, 79.1, 405.2 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, 128.3, 373.9 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, 147.3, 373.1 , 0 );

setEffScaleKey( spep_2 + 18, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2 + 20, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_2 + 22, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 68, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 + 70, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_2 + 72, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_2 + 74, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_2 + 76, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_2 + 78, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 + 18, ctzuo, 9.6 );
setEffRotateKey( spep_2 + 20, ctzuo, 18.3 );
setEffRotateKey( spep_2 + 22, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 78, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 18, ctzuo, 255 );
setEffAlphaKey( spep_2 + 68, ctzuo, 255 );
setEffAlphaKey( spep_2 + 70, ctzuo, 204 );
setEffAlphaKey( spep_2 + 72, ctzuo, 153 );
setEffAlphaKey( spep_2 + 74, ctzuo, 102 );
setEffAlphaKey( spep_2 + 76, ctzuo, 51 );
setEffAlphaKey( spep_2 + 78, ctzuo, 0 );

-- ** 音 ** --
--気弾発射
SE012 = playSeVer2( spep_2 + 10, 1022, "", 0, 0, 0, 0.6);
SE013 = playSeVer2( spep_2 + 10, 1177, "", 0, 0, 0, 0.6);

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 100 );  -- white fade
entryFade( spep_2 + 14, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 80, 6, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2 + 2;  -- 84 + 2

------------------------------------------------------
-- ギャリック砲〜弾道・着弾  ef_003
------------------------------------------------------
MAX_FRAME_3 = 96;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_3 + 0, SP_003, 0x100, -1, 0, 0, 0 );  -- ギャリック砲〜弾道・着弾 ef_003
setEffMoveKey( spep_3 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_03, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_03, 0 );
setEffAlphaKey( spep_3 + 0, SP_03, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_03, 255 );
SP_04 = entryEffect( spep_3 + 0, SP_004, 0x80, -1, 0, 0, 0 );  -- ギャリック砲〜弾道・着弾 ef_004
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 書き文字エントリー ** --
ctzuo1 = entryEffectLife( spep_3 + 28,  10012, 24, 0x100, -1, 0, -17.7, 313 );  --ズオッ
setEffShake( spep_3 + 28, ctzuo1, 24, 20 );

setEffMoveKey( spep_3 + 28, ctzuo1, -17.7, 313 , 0 );
setEffMoveKey( spep_3 + 30, ctzuo1, -35.7, 356 , 0 );
setEffMoveKey( spep_3 + 32, ctzuo1, -81.2, 407.4 , 0 );
setEffMoveKey( spep_3 + 34, ctzuo1, -64.3, 405.9 , 0 );
setEffMoveKey( spep_3 + 36, ctzuo1, -92.6, 407.5 , 0 );
setEffMoveKey( spep_3 + 38, ctzuo1, -75.6, 406.3 , 0 );
setEffMoveKey( spep_3 + 40, ctzuo1, -103.9, 407.7 , 0 );
setEffMoveKey( spep_3 + 42, ctzuo1, -87, 406.6 , 0 );
setEffMoveKey( spep_3 + 44, ctzuo1, -118.9, 421.2 , 0 );
setEffMoveKey( spep_3 + 46, ctzuo1, -82.5, 426.4 , 0 );
setEffMoveKey( spep_3 + 48, ctzuo1, -79.3, 433.2 , 0 );

setEffScaleKey( spep_3 + 28, ctzuo1, 0.34, 0.34 );
setEffScaleKey( spep_3 + 30, ctzuo1, 1.54, 1.54 );
setEffScaleKey( spep_3 + 32, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_3 + 42, ctzuo1, 2.73, 2.73 );
setEffScaleKey( spep_3 + 44, ctzuo1, 4.09, 4.09 );
setEffScaleKey( spep_3 + 46, ctzuo1, 5.46, 5.46 );
setEffScaleKey( spep_3 + 48, ctzuo1, 6.82, 6.82 );

setEffRotateKey( spep_3 + 38, ctzuo1, -3.4 );
setEffRotateKey( spep_3 + 30, ctzuo1, -13.5 );
setEffRotateKey( spep_3 + 32, ctzuo1, -13.8 );
setEffRotateKey( spep_3 + 34, ctzuo1, -14.1 );
setEffRotateKey( spep_3 + 36, ctzuo1, -14.4 );
setEffRotateKey( spep_3 + 38, ctzuo1, -14.7 );
setEffRotateKey( spep_3 + 40, ctzuo1, -15 );
setEffRotateKey( spep_3 + 42, ctzuo1, -11.8 );
setEffRotateKey( spep_3 + 44, ctzuo1, -8.5 );
setEffRotateKey( spep_3 + 46, ctzuo1, -5.2 );
setEffRotateKey( spep_3 + 48, ctzuo1, -5.2 );

setEffAlphaKey( spep_3 + 28, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 42, ctzuo1, 255 );
setEffAlphaKey( spep_3 + 44, ctzuo1, 170 );
setEffAlphaKey( spep_3 + 46, ctzuo1, 85 );
setEffAlphaKey( spep_3 + 48, ctzuo1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 40 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 ); 
changeAnime( spep_3 + 28 + OFFSET_X, 1, 108 ); 

setMoveKey( spep_3 + 0, 1, -6.7, -67.8 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_X, 1, 9.1, -44.4 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_X, 1, 17.6, -31.6 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_X, 1, 34.7, -1.3 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, 44.4, 18.4 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_X, 1, 44.4, 18.4 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_X, 1, 62.9, 47.6 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, 69.9, 70.3 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, 69.9, 70.3 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, 84.3, 85.4 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 86.8, 89.1 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, 86.8, 89.1 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3 + 19 + OFFSET_X, 1, 97.6, 109.2 , 0 );
setMoveKey( spep_3 + 20 + OFFSET_X, 1, 100.5, 117.9 , 0 );
setMoveKey( spep_3 + 21 + OFFSET_X, 1, 100.5, 117.9 , 0 );
setMoveKey( spep_3 + 22 + OFFSET_X, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 + 23 + OFFSET_X, 1, 111.6, 135.1 , 0 );
setMoveKey( spep_3 + 24 + OFFSET_X, 1, 110.8, 140.7 , 0 );
setMoveKey( spep_3 + 25 + OFFSET_X, 1, 110.8, 140.7 , 0 );
setMoveKey( spep_3 + 26 + OFFSET_X, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3 + 27 + OFFSET_X, 1, 126.2, 162.9 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_X, 1, 161.4, 202.5 , 0 );
setMoveKey( spep_3 + 29 + OFFSET_X, 1, 161.4, 202.5 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_X, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 + 31 + OFFSET_X, 1, 159.2, 191.9 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_X, 1, 117.7, 177.9 , 0 );
setMoveKey( spep_3 + 33 + OFFSET_X, 1, 117.7, 177.9 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_X, 1, 145, 211 , 0 );
setMoveKey( spep_3 + 35 + OFFSET_X, 1, 145, 211 , 0 );
setMoveKey( spep_3 + 36 + OFFSET_X, 1, 140.8, 213 , 0 );
setMoveKey( spep_3 + 37 + OFFSET_X, 1, 140.8, 213 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_X, 1, 146.1, 215.8 , 0 );
setMoveKey( spep_3 + 40 + OFFSET_X, 1, 146.1, 215.8 , 0 );

setScaleKey( spep_3 + 0, 1, 3.09, 3.09 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 3 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_3 + 5 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 7 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 9 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 11 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 13 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 15 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 17 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 19 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 21 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 23 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 25 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 27 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 29 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 31 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 33 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 35 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_3 + 36 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 37 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_3 + 38 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_3 + 40 + OFFSET_X, 1, 0.28, 0.28 );

setRotateKey( spep_3 + 0, 1, -2 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_3 + 3 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_3 + 5 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_3 + 7 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_3 + 9 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_3 + 11 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_3 + 13 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, -3 );
setRotateKey( spep_3 + 15 + OFFSET_X, 1, -3 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_3 + 17 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_3 + 19 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_3 + 20 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_3 + 21 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_3 + 22 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_3 + 23 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_3 + 24 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_3 + 25 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_3 + 26 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_3 + 27 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_3 + 28 + OFFSET_X, 1, 21 );
setRotateKey( spep_3 + 29 + OFFSET_X, 1, 21 );
setRotateKey( spep_3 + 30 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_3 + 31 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_3 + 32 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_3 + 33 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_3 + 34 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_3 + 35 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_3 + 36 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_3 + 37 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_3 + 38 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_3 + 40 + OFFSET_X, 1, 11.4 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 16;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

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
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--気弾飛んでいく
SE014 = playSeVer2( spep_3 + 20, 1021, "", 0, 0, 0, -1);

--爆発
SE015 = playSeVer2( spep_3 + 82, 1023, "", 0, 0, 0, -1);

-- ** ホワイトフェード ** --
entryFade( spep_3 + 28, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade
entryFade( spep_3 + 90, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- white fade

-- ** 次の準備 ** --
spep_N = spep_3 + MAX_FRAME_3;  -- 96

------------------------------------------------------
-- 「ガッ」 
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
--[[
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_003b , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
]]

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
 
-- ** 集中線 ** --
--[[
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
]]

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
--entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 6, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 6, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end
