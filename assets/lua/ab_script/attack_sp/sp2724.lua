-- 1029120: UR_ヒット_必殺技：時とばし
-- sp_effect_b1_00283
-- sp2724

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162946;  -- 冒頭 ef_001
SP_002 = 162947;  -- 横移動ラッシュ→フィニッシュ：前 ef_002
SP_002b = 162948;  -- 横移動ラッシュ→フィニッシュ：裏 ef_002b

-- 敵側
SP_002r = 162949;  -- 横移動ラッシュ→フィニッシュ：前：反転 ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001
------------------------------------------------------
MAX_FRAME_0 = 98;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );    -- 冒頭 ef_001
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

-- ** 白フェード ** --
entryFade( spep_0 + 88, 10, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

---------------------------------------------------------------------------------------------------
-- 集中線
---------------------------------------------------------------------------------------------------
-- ** 集中線 ** --
shuchusen_N = entryEffectLife( spep_0 + 17, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 17, shuchusen_N, 0, 20 );
setEffMoveKey( spep_0 + 17, shuchusen_N, 0, 0, 0 );
setEffMoveKey( spep_0 + 98, shuchusen_N, 0, 0, 0 );
setEffScaleKey( spep_0 + 17, shuchusen_N, 1.6, 1.6 );
setEffScaleKey( spep_0 + 98, shuchusen_N, 1.6, 1.6 );
setEffRotateKey( spep_0 + 17, shuchusen_N, 0 );
setEffRotateKey( spep_0 + 98, shuchusen_N, 0 );
setEffAlphaKey( spep_0 + 17, shuchusen_N, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen_N, 255 );

-- ** 音 ** --
--気ダメ
SE002 = playSeVer2( spep_0 + 10, 20, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 10, 1176, "",spep_0 + 122, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );
SE004 = playSeVer2( spep_0 + 10, 1227, "",spep_0 + 120, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 98

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--異空間音
SE006 = playSeVer2( spep_1 + 86, 1214, "",spep_2 + 112, 6, 36, -1);
setSeVolumeByWorkId( spep_1 + 86, SE006, 122 );
setStartTimeMs( SE006,  700 );
SE007 = playSeVer2( spep_1 + 86, 1263, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE007, 126 );
setStartTimeMs( SE007,  367 );

--向かっていく
SE008 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 75 );

------------------------------------------------------
-- 横移動ラッシュ→フィニッシュ：前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 横移動ラッシュ→フィニッシュ：前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 横移動ラッシュ→フィニッシュ：裏 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 12 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 12 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 28 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 50 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 58 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 62 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 74 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 78 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 82 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 114 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 164 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 12 + OFFSET_X, 1, 508.6, 32.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 508.6, 32.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 433.5, 32.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 433.5, 32.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 358.3, 32.7 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 358.3, 32.7 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 283.2, 32.7 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 283.2, 32.7 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 208.1, 32.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 208.1, 32.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 133, 32.6 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 133, 32.6 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 57.9, 32.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 57.9, 32.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -17.2, 32.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -17.2, 32.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 74, 32.6 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 74, 32.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 177.8, 49.4 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 177.8, 49.4 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 106.2, 12.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 106.2, 12.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 107, 32.6 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 107, 32.6 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 130.7, -5.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 130.7, -5.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 107.7, 50.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 107.7, 50.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 98.4, 32.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 98.4, 32.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 95.6, 32.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 95.6, 32.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 92.7, 32.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 92.7, 32.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 89.8, 32.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 89.8, 32.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 87, 32.6 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 87, 32.6 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 58, 37.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 58, 37.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 47.7, 43.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 47.7, 43.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 147.3, 32.6 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 147.3, 32.6 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 137, 38.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 137, 38.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 139.6, 32.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 139.6, 32.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 129.3, 38.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 129.3, 38.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 110.7, 39.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 110.7, 39.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 100.4, 45 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 100.4, 45 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 147.4, 32.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 147.4, 32.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 137.1, 38.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 137.1, 38.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 108, 37.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 108, 37.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 97.7, 43.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 97.7, 43.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 94.3, 37.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 94.3, 37.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 84, 43.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 84, 43.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 152.3, 53.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 152.3, 53.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 142, 59.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 142, 59.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 98.7, 37.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 98.7, 37.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 88.4, 43.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 88.4, 43.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 78, 37.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 78, 37.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 67.7, 43.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 67.7, 43.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -243.1, -40.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -243.1, -40.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -177.7, -1.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -177.7, -1.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -45.5, -44.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -45.5, -44.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 5.5, -12.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 5.5, -12.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 5.5, -12.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 5.5, -12.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 5.8, -12.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 5.8, -12.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 7.3, -12.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 7.3, -12.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 11.4, -11.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 11.4, -11.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 19.9, -11.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 19.9, -11.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -3.6, 23.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -3.6, 23.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 50.8, -42.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 50.8, -42.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -13.4, -15 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -13.4, -15 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 2.5, 18.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 2.5, 18.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 51.8, -33.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 51.8, -33.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 17.9, -2.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 17.9, -2.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 21.9, -12.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 21.9, -12.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 21.9, -12.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 21.9, -12.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 23.9, -13.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 23.9, -13.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 26.7, -12.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 26.7, -12.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 24.7, -8.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 24.7, -8.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 25.7, -10.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 25.7, -10.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 25.7, -10.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 25.7, -10.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 24.7, -11.2 , 0 );

setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 12 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -28 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);

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
--パンチ
SE010 = playSeVer2( spep_2 + 22, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 22, 1110, "", 0, 0, 0, -1);

--連続パンチ
SE012 = playSeVer2( spep_2 + 42, 1425, "", 0, 2, 0, 0.54);
setSeVolumeByWorkId( spep_2 + 42, SE012, 100 );
setStartTimeMs( SE012,  267 );

--振りかぶる
SE013 = playSeVer2( spep_2 + 122, 1116, "",spep_2 + 156, 0, 16, -1);
SE014 = playSeVer2( spep_2 + 128, 1004, "", 0, 0, 0, -1);

--ラストパンチ
SE015 = playSeVer2( spep_2 + 154, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE015, 78 );
SE016 = playSeVer2( spep_2 + 154, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 170, 1171, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE017, 75 );
SE018 = playSeVer2( spep_2 + 174, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE018, 71 );

-- ** おわり ** --
dealDamage( spep_2 + 190 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 298

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭 ef_001
------------------------------------------------------
MAX_FRAME_0 = 98;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );    -- 冒頭 ef_001
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

-- ** 白フェード ** --
entryFade( spep_0 + 88, 10, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

---------------------------------------------------------------------------------------------------
-- 集中線
---------------------------------------------------------------------------------------------------
-- ** 集中線 ** --
shuchusen_N = entryEffectLife( spep_0 + 17, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 17, shuchusen_N, 0, 20 );
setEffMoveKey( spep_0 + 17, shuchusen_N, 0, 0, 0 );
setEffMoveKey( spep_0 + 98, shuchusen_N, 0, 0, 0 );
setEffScaleKey( spep_0 + 17, shuchusen_N, 1.6, 1.6 );
setEffScaleKey( spep_0 + 98, shuchusen_N, 1.6, 1.6 );
setEffRotateKey( spep_0 + 17, shuchusen_N, 0 );
setEffRotateKey( spep_0 + 98, shuchusen_N, 0 );
setEffAlphaKey( spep_0 + 17, shuchusen_N, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen_N, 255 );

-- ** 音 ** --
--気ダメ
SE002 = playSeVer2( spep_0 + 10, 20, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 10, 1176, "",spep_0 + 122, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );
SE004 = playSeVer2( spep_0 + 10, 1227, "",spep_0 + 120, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 98

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--異空間音
SE006 = playSeVer2( spep_1 + 86, 1214, "",spep_2 + 112, 6, 36, -1);
setSeVolumeByWorkId( spep_1 + 86, SE006, 122 );
setStartTimeMs( SE006,  700 );
SE007 = playSeVer2( spep_1 + 86, 1263, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE007, 126 );
setStartTimeMs( SE007,  367 );

--向かっていく
SE008 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 75 );

------------------------------------------------------
-- 横移動ラッシュ→フィニッシュ：前 ef_002r
------------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- 横移動ラッシュ→フィニッシュ：前：反転 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 横移動ラッシュ→フィニッシュ：裏 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 12 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 12 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 28 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 50 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 58 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 62 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 66 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 70 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 74 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 78 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 82 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 98 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 114 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 164 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 12 + OFFSET_X, 1, 508.6, 32.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 508.6, 32.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 433.5, 32.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 433.5, 32.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 358.3, 32.7 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 358.3, 32.7 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 283.2, 32.7 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 283.2, 32.7 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 208.1, 32.6 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 208.1, 32.6 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 133, 32.6 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 133, 32.6 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 57.9, 32.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 57.9, 32.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -17.2, 32.6 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -17.2, 32.6 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 74, 32.6 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 74, 32.6 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 177.8, 49.4 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 177.8, 49.4 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 106.2, 12.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 106.2, 12.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 107, 32.6 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 107, 32.6 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 130.7, -5.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 130.7, -5.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 107.7, 50.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 107.7, 50.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 98.4, 32.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 98.4, 32.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 95.6, 32.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 95.6, 32.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 92.7, 32.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 92.7, 32.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 89.8, 32.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 89.8, 32.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 87, 32.6 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 87, 32.6 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 58, 37.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 58, 37.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 47.7, 43.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 47.7, 43.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 147.3, 32.6 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 147.3, 32.6 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 137, 38.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 137, 38.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 139.6, 32.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 139.6, 32.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 129.3, 38.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 129.3, 38.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 110.7, 39.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 110.7, 39.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 100.4, 45 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 100.4, 45 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 147.4, 32.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 147.4, 32.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 137.1, 38.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 137.1, 38.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 108, 37.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 108, 37.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 97.7, 43.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 97.7, 43.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 94.3, 37.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 94.3, 37.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 84, 43.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 84, 43.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 152.3, 53.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 152.3, 53.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 142, 59.4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 142, 59.4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 98.7, 37.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 98.7, 37.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 88.4, 43.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 88.4, 43.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 78, 37.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 78, 37.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 67.7, 43.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 67.7, 43.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 120, 32.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 109.7, 38.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 94.4, 37.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 84.1, 43.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -243.1, -40.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -243.1, -40.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -177.7, -1.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -177.7, -1.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -45.5, -44.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -45.5, -44.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 5.5, -12.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 5.5, -12.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 5.5, -12.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 5.5, -12.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 5.8, -12.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 5.8, -12.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 7.3, -12.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 7.3, -12.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 11.4, -11.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 11.4, -11.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 19.9, -11.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 19.9, -11.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -3.6, 23.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -3.6, 23.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 50.8, -42.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 50.8, -42.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -13.4, -15 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -13.4, -15 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 2.5, 18.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 2.5, 18.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 51.8, -33.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 51.8, -33.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 17.9, -2.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 17.9, -2.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 21.9, -12.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 21.9, -12.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 26.1, -11.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 21.9, -12.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 21.9, -12.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 23.9, -13.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 23.9, -13.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 26.7, -12.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 26.7, -12.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 24.7, -8.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 24.7, -8.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 25.7, -9.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 25.7, -10.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 25.7, -10.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 25.7, -10.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 25.7, -10.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 24.7, -10.1 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 24.7, -11.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 24.7, -11.2 , 0 );

setScaleKey( spep_2 + 12 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_2 + 12 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -48 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -58.9 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -28 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);

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
--パンチ
SE010 = playSeVer2( spep_2 + 22, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 22, 1110, "", 0, 0, 0, -1);

--連続パンチ
SE012 = playSeVer2( spep_2 + 42, 1425, "", 0, 2, 0, 0.54);
setSeVolumeByWorkId( spep_2 + 42, SE012, 100 );
setStartTimeMs( SE012,  267 );

--振りかぶる
SE013 = playSeVer2( spep_2 + 122, 1116, "",spep_2 + 156, 0, 16, -1);
SE014 = playSeVer2( spep_2 + 128, 1004, "", 0, 0, 0, -1);

--ラストパンチ
SE015 = playSeVer2( spep_2 + 154, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE015, 78 );
SE016 = playSeVer2( spep_2 + 154, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 170, 1171, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE017, 75 );
SE018 = playSeVer2( spep_2 + 174, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 174, SE018, 71 );

-- ** おわり ** --
dealDamage( spep_2 + 190 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 298

end
