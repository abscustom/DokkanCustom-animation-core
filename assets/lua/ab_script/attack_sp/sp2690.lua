-- 1028570: UR_フリーザ(第一形態)_必殺技：デスビーム
-- sp_effect_a1_00424
-- sp2690

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162773;  -- 迫る雑兵→雑兵ラッシュ→ビーム溜め	ef_001
SP_002 = 162774;  -- 迫る雑兵→雑兵ラッシュ→ビーム溜め	ef_001b
SP_003 = 162777;  -- ビーム発射→爆発	ef_002
SP_004 = 162778;  -- ビーム発射→爆発	ef_002b

-- 敵側
SP_001r = 162775;  -- 迫る雑兵→雑兵ラッシュ→ビーム溜め	ef_001r
SP_002r = 162776;  -- 迫る雑兵→雑兵ラッシュ→ビーム溜め	ef_001br
SP_003r = 162779;  -- ビーム発射→爆発	ef_002r
SP_004r = 162780;  -- ビーム発射→爆発	ef_002br


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

--[[
--setDisp( 0, 1, 0);
--changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
]]--

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 迫る雑兵→雑兵ラッシュ→ビーム溜め　	ef_001
------------------------------------------------------
MAX_FRAME_0 = 526;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );-- 迫る雑兵→雑兵ラッシュ→ビーム溜め ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002, 0x80, -1, 0, 0, 0 );-- 迫る雑兵→雑兵ラッシュ→ビーム溜め ef_001b
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 70;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,230, 515, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 230, 515 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 230, 515 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.68, 0.68 );
setEffScaleKey( spep_x + 76, ctgogo, 0.68, 0.68 );
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

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 78 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 102 );

setMoveKey( spep_0, 1, 177.9, -240.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 187.9, -270.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 187.9, -270.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 197.8, -299.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 197.8, -299.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 207.5, -328.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 207.5, -328.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 217, -356.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 217, -356.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 226.4, -384.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 226.4, -384.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 235.6, -411.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 235.6, -411.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 244.6, -437.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 244.6, -437.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 253.4, -463.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 253.4, -463.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 262, -488.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 262, -488.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 270.4, -512.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 270.4, -512.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 278.6, -536.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 278.6, -536.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 286.6, -559.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 286.6, -559.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 294.4, -582 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 294.4, -582 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 302, -603.7 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 302, -603.7 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 309.4, -624.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 309.4, -624.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 316.6, -645 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 316.6, -645 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 323.6, -664.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 323.6, -664.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 330.3, -683.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 330.3, -683.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 336.8, -701.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 336.8, -701.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 343.1, -719.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 343.1, -719.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 349.2, -736 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 349.2, -736 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 355, -752.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 355, -752.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 360.6, -767.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 360.6, -767.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 366, -781.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 366, -781.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 371.1, -795.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 371.1, -795.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 376, -808.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 376, -808.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 380.6, -821 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 380.6, -821 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 384.9, -832.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 384.9, -832.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 389.1, -843.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 389.1, -843.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 392.9, -853.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 392.9, -853.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 396.5, -862.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 396.5, -862.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 399.8, -870.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 399.8, -870.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 402.9, -878.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 402.9, -878.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 405.7, -885.1 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 405.7, -885.1 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 408.2, -891.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 408.2, -891.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 410.4, -896.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 410.4, -896.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 412.4, -900.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 412.4, -900.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 414.1, -904 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 414.1, -904 , 0 );

setScaleKey( spep_0, 1, 3, 3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 6, 6 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 0 );


-- 敵の動き2
OFFSET_Y = 0.1; --敵調整用
OFFSET_Y2 = 0.2; --敵調整用

setDisp( spep_0 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 420 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 304 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 332 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 392 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 266 + OFFSET_X, 1, -6.9, 36 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -6.9, 36 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 21.1, 96 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 21.1, 96 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 25.1, 31.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 25.1, 31.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 57.1, 39.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 57.1, 39.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -18.9, -0.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -18.9, -0.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 9.1, 39.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 9.1, 39.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 10.1, 47.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 10.1, 47.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 11.1, 55.9 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 11.1, 55.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 10.1, 47.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 10.1, 47.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 9.1, 39.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 9.1, 39.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -39, 55.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -39, 55.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -83, 7.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -83, 7.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -22.9, 63.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -22.9, 63.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 9.1, -4.2 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 9.1, -4.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 9.1, 19.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 9.1, 19.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 9.1, 3.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 9.1, 3.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 13.1, 16.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 13.1, 16.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 17.1, 28.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 17.1, 28.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 15.8, 27.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 15.8, 27.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 14.4, 25.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 14.4, 25.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 13.1, 24.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 13.1, 24.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 11.8, 22.8 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 11.8, 22.8 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 10.4, 21.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 10.4, 21.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 9.1, 19.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 9.1, 19.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -22.9, 7.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -22.9, 7.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 25.1, 39.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 25.1, 39.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -26.9, 83.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -26.9, 83.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 29.1, 19.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 29.1, 19.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 25.1, 51.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 25.1, 51.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 25.1, 27.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 25.1, 27.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 61.1, 39.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 61.1, 39.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 45.1, 20.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 45.1, 20.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 29.1, 1.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 29.1, 1.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 34.6, 11.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 34.6, 11.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 40.1, 21.5 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 40.1, 21.5 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 32.3, 16.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 32.3, 16.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 24.4, 11.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 24.4, 11.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 30.5, 17.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 30.5, 17.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 36.7, 22.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 36.7, 22.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 34.2, 24.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 34.2, 24.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 31.8, 25.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 31.8, 25.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 29.3, 27 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 29.3, 27 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 26.8, 28.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 26.8, 28.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 24.4, 29.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 24.4, 29.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 22, 31.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 22, 31.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 19.5, 32.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 19.5, 32.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 17.1, 33.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 17.1, 33.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 14.6, 35.3 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 14.6, 35.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 12.1, 36.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 12.1, 36.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 9.7, 38 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 9.7, 38 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 7.2, 39.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 7.2, 39.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 4.8, 40.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 4.8, 40.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 2.3, 42.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 2.3, 42.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 7.6, 55.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 7.6, 55.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 40.2, 66.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 40.2, 66.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 41.2, 71.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 41.8, 71.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 40.1, 66.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 40.1, 66.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 40.8, 70.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 40.8, 70.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 40.3, 68.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 40.3, 68.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 40.5, 69.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 40.5, 69.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 40.8, 70.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 40.8, 70.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 40.7, 70.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 40.7, 70.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 41.6, 69.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 41.6, 69.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 42.5, 68.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 42.5, 68.3 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.5 + OFFSET_Y2, 1.5 + OFFSET_Y2 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.5 + OFFSET_Y2, 1.5 + OFFSET_Y2 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.44 + OFFSET_Y2, 1.44 + OFFSET_Y2 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.44 + OFFSET_Y2, 1.44 + OFFSET_Y2 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.31 + OFFSET_Y2, 1.31 + OFFSET_Y2 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.31 + OFFSET_Y2, 1.31 + OFFSET_Y2 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.37 + OFFSET_Y2, 1.37 + OFFSET_Y2 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.37 + OFFSET_Y2, 1.37 + OFFSET_Y2 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.44 + OFFSET_Y2, 1.44 + OFFSET_Y2 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.44 + OFFSET_Y2, 1.44 + OFFSET_Y2 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.42 + OFFSET_Y2, 1.42 + OFFSET_Y2 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.42 + OFFSET_Y2, 1.42 + OFFSET_Y2 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.4 + OFFSET_Y2, 1.4 + OFFSET_Y2 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.4 + OFFSET_Y2, 1.4 + OFFSET_Y2 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.37 + OFFSET_Y2, 1.37 + OFFSET_Y2 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.37 + OFFSET_Y2, 1.37 + OFFSET_Y2 );

setRotateKey( spep_0 + 266 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 336, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 100 );
setPitch( spep_0 + 18, SE003, -300 );
setTimeStretch( SE003, 0.8, 30, 4 );
--軍向かってくる
SE005 = playSeVer2( spep_0 + 156, 1278, "",spep_0 + 346, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 156, SE005, 63 );
SE006 = playSeVer2( spep_0 + 198, 1452, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 198, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE007, 68 );
SE008 = playSeVer2( spep_0 + 198, 1314, "",spep_0 + 316, 0, 30, -1);
SE009 = playSeVer2( spep_0 + 208, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE009, 77 );
SE010 = playSeVer2( spep_0 + 232, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE010, 79 );

-------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 250;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--軍連続攻撃
SE011 = playSeVer2( spep_0 + 270, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 270, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 286, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 286, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 310, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 314, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE016, 80 );
SE017 = playSeVer2( spep_0 + 344, 63, "",spep_0 + 410, 0, 18, -1);
SE018 = playSeVer2( spep_0 + 376, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE018, 71 );
SE019 = playSeVer2( spep_0 + 380, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE019, 76 );
SE020 = playSeVer2( spep_0 + 384, 1110, "", 0, 0, 0, -1);
--画面遷移
SE021 = playSeVer2( spep_0 + 406, 1232, "", 0, 0, 0, -1);
--環境音
SE022 = playSeVer2( spep_0 + 406, 1269, "",spep_0 + 530, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 406, SE022, 25 );
--気弾溜め
SE023 = playSeVer2( spep_0 + 456, 1295, "",spep_0 + 538, 0, 18, -1);
SE024 = playSeVer2( spep_0 + 456, 1262, "",spep_0 + 538, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 456, SE024, 127 );
setPitch( spep_0 + 456, SE024, 100 );
setTimeStretch( SE024, 1.07, 30, 4 );
SE025 = playSeVer2( spep_0 + 456, 1227, "",spep_0 + 538, 0, 22, -1);
SE026 = playSeVer2( spep_0 + 456, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE026, 76 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 526

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--画面遷移
SE028 = playSeVer2( spep_1 + 86, 8, "", 0, 0, 0, -1);
--発射前気弾溜め
SE029 = playSeVer2( spep_1 + 86, 1295, "",spep_2 + 72, 0, 14, -1);
SE030 = playSeVer2( spep_1 + 86, 1262, "",spep_2 + 74, 0, 16, -1);
SE031 = playSeVer2( spep_1 + 86, 1227, "",spep_2 + 76, 0, 16, -1);

------------------------------------------------------
-- ビーム発射→爆発 ef_002
------------------------------------------------------
MAX_FRAME_2 = 204;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x100, -1, 0, 0, 0 );-- ビーム発射→爆発	 ef_002
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
SP_04 = entryEffect( spep_2 + 0, SP_004, 0x80, -1, 0, 0, 0 );-- ビーム発射→爆発 ef_002b
setEffMoveKey( spep_2 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_04, 0 );
setEffAlphaKey( spep_2 + 0, SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_04, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
OFFSET_Y3 = -30; --敵調整用

setDisp( spep_2 + 72 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 72 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 72 + OFFSET_X, 1, 114 + OFFSET_Y3, -22.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 114 + OFFSET_Y3, -22.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 96.4 + OFFSET_Y3, -33.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 96.4 + OFFSET_Y3, -33.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 81.2 + OFFSET_Y3, -43.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 81.2 + OFFSET_Y3, -43.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 68.3 + OFFSET_Y3, -52.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 68.3 + OFFSET_Y3, -52.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 57.8 + OFFSET_Y3, -59.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 57.8 + OFFSET_Y3, -59.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 49.6 + OFFSET_Y3, -64.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 49.6 + OFFSET_Y3, -64.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 43.8 + OFFSET_Y3, -68.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 43.8 + OFFSET_Y3, -68.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 40.3 + OFFSET_Y3, -70.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 40.3 + OFFSET_Y3, -70.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 39.1 + OFFSET_Y3, -71.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 39.1 + OFFSET_Y3, -71.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 26 + OFFSET_Y3, -74.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 26 + OFFSET_Y3, -74.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 40 + OFFSET_Y3, -71.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 40 + OFFSET_Y3, -71.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 54.5 + OFFSET_Y3, -68.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 54.5 + OFFSET_Y3, -68.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 69.4 + OFFSET_Y3, -65.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 69.4 + OFFSET_Y3, -65.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 61.5 + OFFSET_Y3, -64.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 61.5 + OFFSET_Y3, -64.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 54.2 + OFFSET_Y3, -62.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 54.2 + OFFSET_Y3, -62.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 36.2 + OFFSET_Y3, -62.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 36.2 + OFFSET_Y3, -62.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 18.2 + OFFSET_Y3, -62.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 18.2 + OFFSET_Y3, -62.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 22.3 + OFFSET_Y3, -68.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 22.3 + OFFSET_Y3, -68.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 26.3 + OFFSET_Y3, -74 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 26.3 + OFFSET_Y3, -74 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 26.4 + OFFSET_Y3, -74 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 26.4 + OFFSET_Y3, -74 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 26.5 + OFFSET_Y3, -73.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 26.5 + OFFSET_Y3, -73.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 26.6 + OFFSET_Y3, -73.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 26.6 + OFFSET_Y3, -73.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 26.7 + OFFSET_Y3, -73.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 26.7 + OFFSET_Y3, -73.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 26.8 + OFFSET_Y3, -73.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 26.8 + OFFSET_Y3, -73.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 26.9 + OFFSET_Y3, -73.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 26.9 + OFFSET_Y3, -73.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 27 + OFFSET_Y3, -73.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 27 + OFFSET_Y3, -73.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 27.1 + OFFSET_Y3, -73.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 27.1 + OFFSET_Y3, -73.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 27.2 + OFFSET_Y3, -73.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 27.2 + OFFSET_Y3, -73.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 27.3 + OFFSET_Y3, -73.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 27.3 + OFFSET_Y3, -73.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 27.5 + OFFSET_Y3, -73.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 27.5 + OFFSET_Y3, -73.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 27.6 + OFFSET_Y3, -73.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 27.6 + OFFSET_Y3, -73.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 27.7 + OFFSET_Y3, -73.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 27.7 + OFFSET_Y3, -73.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 27.9 + OFFSET_Y3, -73 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 27.9 + OFFSET_Y3, -73 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 28.1 + OFFSET_Y3, -72.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 28.1 + OFFSET_Y3, -72.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 28.2 + OFFSET_Y3, -72.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 28.2 + OFFSET_Y3, -72.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 28.4 + OFFSET_Y3, -72.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 28.4 + OFFSET_Y3, -72.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 28.6 + OFFSET_Y3, -72.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 28.6 + OFFSET_Y3, -72.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 28.8 + OFFSET_Y3, -72.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 28.8 + OFFSET_Y3, -72.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 29 + OFFSET_Y3, -72.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 29 + OFFSET_Y3, -72.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 29.3 + OFFSET_Y3, -72.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 29.3 + OFFSET_Y3, -72.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 29.5 + OFFSET_Y3, -71.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 29.5 + OFFSET_Y3, -71.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 29.8 + OFFSET_Y3, -71.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 29.8 + OFFSET_Y3, -71.7 , 0 );

setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 72 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾発射
SE032 = playSeVer2( spep_2 + 44, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE032, 117 );
SE033 = playSeVer2( spep_2 + 46, 1177, "",spep_2 + 142, 0, 40, -1);
SE034 = playSeVer2( spep_2 + 46, 1021, "", 0, 0, 0, -1);
--気弾貫く
SE035 = playSeVer2( spep_2 + 80, 1145, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 82, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE036, 85 );

-- ** おわり ** --
dealDamage( spep_2 + 100 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 204 - 4

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

------------------------------------------------------
-- 迫る雑兵→雑兵ラッシュ→ビーム溜め　	ef_001r
------------------------------------------------------
MAX_FRAME_0 = 526;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );-- 迫る雑兵→雑兵ラッシュ→ビーム溜め ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002r, 0x80, -1, 0, 0, 0 );-- 迫る雑兵→雑兵ラッシュ→ビーム溜め ef_001rb
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 70;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-180, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -180, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -180, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 78 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 102 );

setMoveKey( spep_0, 1, 177.9, -240.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 187.9, -270.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 187.9, -270.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 197.8, -299.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 197.8, -299.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 207.5, -328.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 207.5, -328.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 217, -356.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 217, -356.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 226.4, -384.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 226.4, -384.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 235.6, -411.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 235.6, -411.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 244.6, -437.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 244.6, -437.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 253.4, -463.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 253.4, -463.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 262, -488.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 262, -488.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 270.4, -512.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 270.4, -512.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 278.6, -536.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 278.6, -536.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 286.6, -559.6 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 286.6, -559.6 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 294.4, -582 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 294.4, -582 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 302, -603.7 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 302, -603.7 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 309.4, -624.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 309.4, -624.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 316.6, -645 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 316.6, -645 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 323.6, -664.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 323.6, -664.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 330.3, -683.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 330.3, -683.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 336.8, -701.8 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 336.8, -701.8 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 343.1, -719.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 343.1, -719.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 349.2, -736 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 349.2, -736 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 355, -752.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 355, -752.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 360.6, -767.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 360.6, -767.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 366, -781.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 366, -781.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 371.1, -795.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 371.1, -795.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 376, -808.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 376, -808.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 380.6, -821 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 380.6, -821 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 384.9, -832.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 384.9, -832.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 389.1, -843.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 389.1, -843.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 392.9, -853.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 392.9, -853.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 396.5, -862.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 396.5, -862.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 399.8, -870.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 399.8, -870.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 402.9, -878.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 402.9, -878.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 405.7, -885.1 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 405.7, -885.1 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 408.2, -891.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 408.2, -891.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 410.4, -896.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 410.4, -896.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 412.4, -900.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 412.4, -900.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 414.1, -904 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 414.1, -904 , 0 );

setScaleKey( spep_0 , 1, 3, 3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 5.4, 5.4 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 5.9, 5.9 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 6, 6 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 0 );


-- 敵の動き2
OFFSET_Y = 0.1; --敵調整用
OFFSET_Y2 = 0.2; --敵調整用

setDisp( spep_0 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 420 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 304 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 312 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 332 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 392 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 266 + OFFSET_X, 1, -6.9, 36 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -6.9, 36 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 21.1, 96 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 21.1, 96 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 25.1, 31.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 25.1, 31.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 57.1, 39.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 57.1, 39.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -18.9, -0.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -18.9, -0.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 9.1, 39.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 9.1, 39.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 10.1, 47.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 10.1, 47.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 11.1, 55.9 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 11.1, 55.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 10.1, 47.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 10.1, 47.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 9.1, 39.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 9.1, 39.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -39, 55.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -39, 55.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -83, 7.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -83, 7.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -22.9, 63.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -22.9, 63.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 9.1, -4.2 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 9.1, -4.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 9.1, 19.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 9.1, 19.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 9.1, 3.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 9.1, 3.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 13.1, 16.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 13.1, 16.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 17.1, 28.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 17.1, 28.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 15.8, 27.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 15.8, 27.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 14.4, 25.7 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 14.4, 25.7 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 13.1, 24.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 13.1, 24.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 11.8, 22.8 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 11.8, 22.8 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 10.4, 21.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 10.4, 21.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 9.1, 19.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 9.1, 19.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -22.9, 7.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -22.9, 7.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 25.1, 39.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 25.1, 39.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -26.9, 83.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -26.9, 83.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 29.1, 19.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 29.1, 19.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 25.1, 51.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 25.1, 51.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 25.1, 27.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 25.1, 27.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 61.1, 39.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 61.1, 39.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 45.1, 20.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 45.1, 20.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 29.1, 1.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 29.1, 1.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 34.6, 11.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 34.6, 11.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 40.1, 21.5 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 40.1, 21.5 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 32.3, 16.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 32.3, 16.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 24.4, 11.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 24.4, 11.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 30.5, 17.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 30.5, 17.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 36.7, 22.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 36.7, 22.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 34.2, 24.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 34.2, 24.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 31.8, 25.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 31.8, 25.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 29.3, 27 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 29.3, 27 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 26.8, 28.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 26.8, 28.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 24.4, 29.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 24.4, 29.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 22, 31.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 22, 31.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 19.5, 32.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 19.5, 32.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 17.1, 33.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 17.1, 33.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 14.6, 35.3 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 14.6, 35.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 12.1, 36.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 12.1, 36.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 9.7, 38 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 9.7, 38 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 7.2, 39.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 7.2, 39.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 4.8, 40.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 4.8, 40.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 2.3, 42.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 2.3, 42.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 7.6, 55.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 7.6, 55.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 40.2, 66.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 40.2, 66.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 41.2, 71.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 41.8, 71.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 40.1, 66.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 40.1, 66.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 40.8, 70.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 40.8, 70.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 40.3, 68.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 40.3, 68.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 40.5, 69.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 40.5, 69.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 40.8, 70.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 40.8, 70.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 40.7, 70.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 40.7, 70.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 41.6, 69.9 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 41.6, 69.9 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 42.5, 68.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 42.5, 68.3 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.25 + OFFSET_Y, 1.25 + OFFSET_Y );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.5 + OFFSET_Y2, 1.5 + OFFSET_Y2 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.5 + OFFSET_Y2, 1.5 + OFFSET_Y2 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.25 + OFFSET_Y2, 1.25 + OFFSET_Y2 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.44 + OFFSET_Y2, 1.44 + OFFSET_Y2 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.44 + OFFSET_Y2, 1.44 + OFFSET_Y2 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.31 + OFFSET_Y2, 1.31 + OFFSET_Y2 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.31 + OFFSET_Y2, 1.31 + OFFSET_Y2 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.37 + OFFSET_Y2, 1.37 + OFFSET_Y2 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.37 + OFFSET_Y2, 1.37 + OFFSET_Y2 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.44 + OFFSET_Y2, 1.44 + OFFSET_Y2 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.44 + OFFSET_Y2, 1.44 + OFFSET_Y2 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.42 + OFFSET_Y2, 1.42 + OFFSET_Y2 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.42 + OFFSET_Y2, 1.42 + OFFSET_Y2 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.4 + OFFSET_Y2, 1.4 + OFFSET_Y2 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.4 + OFFSET_Y2, 1.4 + OFFSET_Y2 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.37 + OFFSET_Y2, 1.37 + OFFSET_Y2 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.37 + OFFSET_Y2, 1.37 + OFFSET_Y2 );

setRotateKey( spep_0 + 266 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 336, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--入り
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 18, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 100 );
setPitch( spep_0 + 18, SE003, -300 );
setTimeStretch( SE003, 0.8, 30, 4 );
--軍向かってくる
SE005 = playSeVer2( spep_0 + 156, 1278, "",spep_0 + 346, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 156, SE005, 63 );
SE006 = playSeVer2( spep_0 + 198, 1452, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 198, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE007, 68 );
SE008 = playSeVer2( spep_0 + 198, 1314, "",spep_0 + 316, 0, 30, -1);
SE009 = playSeVer2( spep_0 + 208, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE009, 77 );
SE010 = playSeVer2( spep_0 + 232, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE010, 79 );

-------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 250;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--軍連続攻撃
SE011 = playSeVer2( spep_0 + 270, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 270, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 286, 1010, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 286, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 310, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 314, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE016, 80 );
SE017 = playSeVer2( spep_0 + 344, 63, "",spep_0 + 410, 0, 18, -1);
SE018 = playSeVer2( spep_0 + 376, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE018, 71 );
SE019 = playSeVer2( spep_0 + 380, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE019, 76 );
SE020 = playSeVer2( spep_0 + 384, 1110, "", 0, 0, 0, -1);
--画面遷移
SE021 = playSeVer2( spep_0 + 406, 1232, "", 0, 0, 0, -1);
--環境音
SE022 = playSeVer2( spep_0 + 406, 1269, "",spep_0 + 530, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 406, SE022, 25 );
--気弾溜め
SE023 = playSeVer2( spep_0 + 456, 1295, "",spep_0 + 538, 0, 18, -1);
SE024 = playSeVer2( spep_0 + 456, 1262, "",spep_0 + 538, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 456, SE024, 127 );
setPitch( spep_0 + 456, SE024, 100 );
setTimeStretch( SE024, 1.07, 30, 4 );
SE025 = playSeVer2( spep_0 + 456, 1227, "",spep_0 + 538, 0, 22, -1);
SE026 = playSeVer2( spep_0 + 456, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE026, 76 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 526

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--画面遷移
SE028 = playSeVer2( spep_1 + 86, 8, "", 0, 0, 0, -1);
--発射前気弾溜め
SE029 = playSeVer2( spep_1 + 86, 1295, "",spep_2 + 72, 0, 14, -1);
SE030 = playSeVer2( spep_1 + 86, 1262, "",spep_2 + 74, 0, 16, -1);
SE031 = playSeVer2( spep_1 + 86, 1227, "",spep_2 + 76, 0, 16, -1);

------------------------------------------------------
-- ビーム発射→爆発 ef_002r
------------------------------------------------------
MAX_FRAME_2 = 204;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003r, 0x100, -1, 0, 0, 0 );-- ビーム発射→爆発	 ef_002r
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
SP_04 = entryEffect( spep_2 + 0, SP_004r, 0x80, -1, 0, 0, 0 );-- ビーム発射→爆発 ef_002rb
setEffMoveKey( spep_2 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_04, 0 );
setEffAlphaKey( spep_2 + 0, SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_04, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
OFFSET_Y3 = -30; --敵調整用

setDisp( spep_2 + 72 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 72 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 72 + OFFSET_X, 1, 114 + OFFSET_Y3, -22.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 114 + OFFSET_Y3, -22.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 96.4 + OFFSET_Y3, -33.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 96.4 + OFFSET_Y3, -33.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 81.2 + OFFSET_Y3, -43.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 81.2 + OFFSET_Y3, -43.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 68.3 + OFFSET_Y3, -52.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 68.3 + OFFSET_Y3, -52.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 57.8 + OFFSET_Y3, -59.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 57.8 + OFFSET_Y3, -59.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 49.6 + OFFSET_Y3, -64.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 49.6 + OFFSET_Y3, -64.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 43.8 + OFFSET_Y3, -68.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 43.8 + OFFSET_Y3, -68.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 40.3 + OFFSET_Y3, -70.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 40.3 + OFFSET_Y3, -70.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 39.1 + OFFSET_Y3, -71.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 39.1 + OFFSET_Y3, -71.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 26 + OFFSET_Y3, -74.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 26 + OFFSET_Y3, -74.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 40 + OFFSET_Y3, -71.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 40 + OFFSET_Y3, -71.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 54.5 + OFFSET_Y3, -68.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 54.5 + OFFSET_Y3, -68.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 69.4 + OFFSET_Y3, -65.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 69.4 + OFFSET_Y3, -65.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 61.5 + OFFSET_Y3, -64.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 61.5 + OFFSET_Y3, -64.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 54.2 + OFFSET_Y3, -62.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 54.2 + OFFSET_Y3, -62.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 36.2 + OFFSET_Y3, -62.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 36.2 + OFFSET_Y3, -62.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 18.2 + OFFSET_Y3, -62.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 18.2 + OFFSET_Y3, -62.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 22.3 + OFFSET_Y3, -68.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 22.3 + OFFSET_Y3, -68.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 26.3 + OFFSET_Y3, -74 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 26.3 + OFFSET_Y3, -74 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 26.4 + OFFSET_Y3, -74 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 26.4 + OFFSET_Y3, -74 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 26.5 + OFFSET_Y3, -73.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 26.5 + OFFSET_Y3, -73.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 26.6 + OFFSET_Y3, -73.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 26.6 + OFFSET_Y3, -73.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 26.7 + OFFSET_Y3, -73.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 26.7 + OFFSET_Y3, -73.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 26.8 + OFFSET_Y3, -73.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 26.8 + OFFSET_Y3, -73.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 26.9 + OFFSET_Y3, -73.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 26.9 + OFFSET_Y3, -73.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 27 + OFFSET_Y3, -73.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 27 + OFFSET_Y3, -73.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 27.1 + OFFSET_Y3, -73.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 27.1 + OFFSET_Y3, -73.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 27.2 + OFFSET_Y3, -73.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 27.2 + OFFSET_Y3, -73.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 27.3 + OFFSET_Y3, -73.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 27.3 + OFFSET_Y3, -73.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 27.5 + OFFSET_Y3, -73.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 27.5 + OFFSET_Y3, -73.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 27.6 + OFFSET_Y3, -73.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 27.6 + OFFSET_Y3, -73.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 27.7 + OFFSET_Y3, -73.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 27.7 + OFFSET_Y3, -73.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 27.9 + OFFSET_Y3, -73 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 27.9 + OFFSET_Y3, -73 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 28.1 + OFFSET_Y3, -72.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 28.1 + OFFSET_Y3, -72.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 28.2 + OFFSET_Y3, -72.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 28.2 + OFFSET_Y3, -72.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 28.4 + OFFSET_Y3, -72.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 28.4 + OFFSET_Y3, -72.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 28.6 + OFFSET_Y3, -72.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 28.6 + OFFSET_Y3, -72.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 28.8 + OFFSET_Y3, -72.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 28.8 + OFFSET_Y3, -72.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 29 + OFFSET_Y3, -72.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 29 + OFFSET_Y3, -72.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 29.3 + OFFSET_Y3, -72.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 29.3 + OFFSET_Y3, -72.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 29.5 + OFFSET_Y3, -71.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 29.5 + OFFSET_Y3, -71.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 29.8 + OFFSET_Y3, -71.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 29.8 + OFFSET_Y3, -71.7 , 0 );

setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 72 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾発射
SE032 = playSeVer2( spep_2 + 44, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE032, 117 );
SE033 = playSeVer2( spep_2 + 46, 1177, "",spep_2 + 142, 0, 40, -1);
SE034 = playSeVer2( spep_2 + 46, 1021, "", 0, 0, 0, -1);
--気弾貫く
SE035 = playSeVer2( spep_2 + 80, 1145, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 82, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE036, 85 );

-- ** おわり ** --
dealDamage( spep_2 + 100 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 204 - 4

end
