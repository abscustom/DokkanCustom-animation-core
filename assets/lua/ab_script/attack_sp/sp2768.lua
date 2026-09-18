-- 4029710: LR_ピッコロ_必殺技：魔空猛墜
-- sp_effect_b1_00300
-- sp2768

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163319;  -- 冒頭・手前 ef_001
SP_001b = 163320;  -- 冒頭・奥 ef_001b
SP_002 = 163321;  -- アップ～ラスト・手前 ef_002
SP_002b = 163322;  -- アップ～ラスト・奥 ef_002b

-- 敵側
SP_002r = 163323;  -- 敵用：アップ～ラスト・手前 ef_002r
SP_002br = 163324;  -- 敵用：アップ～ラスト・奥 ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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
]]

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭・手前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 冒頭・手前 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 冒頭・奥 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 102 );

setMoveKey( spep_0 + 0 , 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 263.9, 273.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 263.9, 273.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 263.9, 288.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 263.9, 288.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 265.8, 279.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 265.8, 279.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 267.8, 285 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 267.8, 285 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 265.8, 286.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 265.8, 286.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 267.8, 285 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 267.8, 285 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 267.8, 281 , 0 );

setScaleKey( spep_0 + 0 , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気が立ち昇る
SE001 = playSeVer2( spep_0 + 0, 1024, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 128, 0, 22, -1);
SE003 = playSeVer2( spep_0 + 0, 1222, "",spep_0 + 84, 0, 32, -1);
SE005 = playSeVer2( spep_0 + 6, 1241, "",spep_0 + 124, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 28, 1467, "",spep_0 + 128, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 28, SE006, 182 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 96

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--背景音
SE008 = playSeVer2( spep_1 + 90, 1226, "",spep_2 + 94, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 90, SE008, 56 );
SE009 = playSeVer2( spep_1 + 90, 1176, "",spep_2 + 106, 0, 20, -1);

------------------------------------------------------
-- アップ～ラスト・手前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 854;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- アップ～ラスト・手前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- アップ～ラスト・奥 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 128 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, -11.5, -14.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -11.5, -14.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 14.3, 16.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 14.3, 16.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 161.8, -18.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 161.8, -18.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 265.1, -45.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 265.1, -45.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 420.4, -130.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 420.4, -130.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 539.3, -191.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 539.3, -191.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 680.7, -242.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 680.7, -242.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 806.4, -309.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 806.4, -309.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 942.6, -355.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 942.6, -355.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 1065.7, -406.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 1065.7, -406.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 1204.5, -468 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 1204.5, -468 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 1330.2, -529.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 1330.2, -529.6 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.08, 2.08 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 28.7 );

-- 敵の動き2
setDisp( spep_2 + 164 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 210 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 164 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 164 + OFFSET_X, 1, -503.2, -221.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -503.2, -221.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -396.7, -173.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -396.7, -173.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -290.2, -125.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -290.2, -125.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -183.7, -77.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -183.7, -77.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -77.2, -29.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -77.2, -29.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -73, -27 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -73, -27 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -68.8, -24.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -68.8, -24.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -64.6, -22.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -64.6, -22.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -59.8, -19.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -59.8, -19.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -55, -17.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -55, -17.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -50.2, -14.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -50.2, -14.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -45.4, -12.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -45.4, -12.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -40.6, -9.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -40.6, -9.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -35.8, -7.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -35.8, -7.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -31, -4.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -31, -4.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -26.2, -2.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -26.2, -2.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -21.4, 0.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -21.4, 0.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -16.6, 2.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -16.6, 2.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -11.8, 5.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -11.8, 5.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -7, 7.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -7, 7.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -2.2, 10.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -2.2, 10.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 2.6, 12.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 2.6, 12.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 7.4, 15.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 7.4, 15.2 , 0 );

setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.39, 1.39 );

setRotateKey( spep_2 + 164 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 4.2 );

-- 敵の動き3
setDisp( spep_2 + 322 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 376 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 322 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 322 + OFFSET_X, 1, -122.2, 193.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -122.2, 193.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -111.9, 191.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -111.9, 191.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -114.7, 175.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -114.7, 175.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -101.8, 170 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -101.8, 170 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -101.9, 154.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -101.9, 154.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -91.6, 148.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -91.6, 148.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -89.1, 130.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -89.1, 130.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -81.4, 127.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -81.4, 127.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -87.5, 122.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -87.5, 122.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -78, 121.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -78, 121.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -81.5, 123.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -81.5, 123.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -74.6, 115.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -74.6, 115.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -78.1, 104.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -78.1, 104.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -71.1, 109.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -71.1, 109.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -79.8, 100.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -79.8, 100.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -67.7, 102.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -67.7, 102.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -79, 81.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -79, 81.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -64.3, 96.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -64.3, 96.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -75.6, 83.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -75.6, 83.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -60.9, 90.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -60.9, 90.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -64.4, 76.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -64.4, 76.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -57.5, 84.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -57.5, 84.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -63.6, 86.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -63.6, 86.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -54.1, 77.8 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -54.1, 77.8 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -60.2, 66.9 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -60.2, 66.9 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -50.7, 71.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -50.7, 71.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -62, 58.1 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -62, 58.1 , 0 );

setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_2 + 322 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 60.1 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 60.1 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 68.4 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 68.4 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 69.8 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 69.8 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 71.1 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 71.1 );

-- 敵の動き4
setDisp( spep_2 + 440 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 598 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 440 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 440 + OFFSET_X, 1, -88.4, 71 - 30 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -88.4, 71 - 30 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -88.4, 67.6 - 30 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -88.4, 67.6 - 30 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -88.4, 64.2 - 30 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -88.4, 64.2 - 30 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -88.3, 60.8 - 30 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -88.3, 60.8 - 30 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -88.3, 57.4 - 30 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -88.3, 57.4 - 30 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -88.2, 54 - 30 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -88.2, 54 - 30 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -88.2, 50.6 - 30 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -88.2, 50.6 - 30 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -88.1, 47.2 - 30 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -88.1, 47.2 - 30 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -88.1, 43.8 - 30 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -88.1, 43.8 - 30 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -88.1, 40.4 - 30 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -88.1, 40.4 - 30 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -88, 37 - 30 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -88, 37 - 30 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -88, 33.6 - 30 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -88, 33.6 - 30 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -87.9, 30.2 - 30 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -87.9, 30.2 - 30 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -87.9, 26.8 - 30 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -87.9, 26.8 - 30 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -87.9, 23.4 - 30 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -87.9, 23.4 - 30 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -87.8, 20 - 30 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -87.8, 20 - 30 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -87.8, 16.6 - 30 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -87.8, 16.6 - 30 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -87.7, 13.2 - 30 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -87.7, 13.2 - 30 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -87.7, 9.8 - 30 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -87.7, 9.8 - 30 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -87.6, 6.4 - 30 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -87.6, 6.4 - 30 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -87.6, 3 - 30 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -87.6, 3 - 30 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -87.6, -0.4 - 30 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -87.6, -0.4 - 30 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -87.5, -3.8 - 30 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -87.5, -3.8 - 30 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -87.5, -7.2 - 30 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -87.5, -7.2 - 30 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -87.4, -10.6 - 30 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -87.4, -10.6 - 30 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -75.6, -4.4 - 30 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -75.6, -4.4 - 30 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -78.2, 13.8 - 30 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -78.2, 13.8 - 30 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -73, 0.8 - 30 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -73, 0.8 - 30 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -80.8, 0.8 - 30 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -80.8, 0.8 - 30 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -193.8, 539.9 - 110, 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -193.8, 539.9 - 110 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -90.8, 380.5 - 70 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -90.8, 380.5 - 70 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -55.5, 205.7 - 50 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -55.5, 205.7 - 50 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -42.1, 155.3 - 50 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -42.1, 155.3 - 50 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -26.8, 180.5 - 30 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -26.8, 180.5 - 30 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -26.8, 176.8 - 30 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -26.8, 176.8 - 30 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -26.8, 173 - 30, 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -26.8, 173 - 30 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -26.8, 169.3 - 30 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -26.8, 169.3 - 30 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -20.9, 148.6 - 30 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -20.9, 148.6 - 30 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -21.2, 144.9 - 30 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -21.2, 144.9 - 30 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -21.5, 141.3 - 30 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -21.5, 141.3 - 30 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -21.9, 137.6 - 30 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -21.9, 137.6 - 30 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -11.6, 129.6 - 30 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -11.6, 129.6 - 30 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -11.8, 126.4 - 30 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -11.8, 126.4 - 30 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -12.1, 123.2 - 30 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -12.1, 123.2 - 30 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -12.3, 119.4 - 30 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -12.3, 119.4 - 30 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -12.3, 116 - 30 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -12.3, 116 - 30 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -12.3, 112.6 - 30 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -12.3, 112.6 - 30 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -12.3, 109.2 - 30 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -12.3, 109.2 - 30 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -12.3, 105.8 - 30 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -12.3, 105.8 - 30 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -12.3, 102.4 - 30 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -12.3, 102.4 - 30 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -12.3, 99 - 30 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -12.3, 99 - 30 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -12.3, 95.6 - 30 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -12.3, 95.6 - 30 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -12.3, 92.2 - 30 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -12.3, 92.2 - 30 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -12.3, 88.8 - 30 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -12.3, 88.8 - 30 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -12.3, 85.4 - 30 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -12.3, 85.4 - 30 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -12.3, 82 - 30 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -12.3, 82 - 30 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -12.3, 78.6 - 30 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -12.3, 78.6 - 30 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -12.3, 75.2 - 30 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -12.3, 75.2 - 30 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -12.3, 71.8 - 30 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -12.3, 71.8 - 30 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -12.3, 68.4 - 30 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -12.3, 68.4 - 30 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -12.3, 65 - 30 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -12.3, 65 - 30 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -12.3, 61.6 - 30 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -12.3, 61.6 - 30 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -12.3, 58.2 - 30 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -12.3, 58.2 - 30 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -12.3, 54.8 - 30 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -12.3, 54.8 - 30 , 0 );

setScaleKey( spep_2 + 440 + OFFSET_X, 1, 1.64 * 0.75, 1.64 * 0.75 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 1.64 * 0.75, 1.64 * 0.75 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 1.59 * 0.75, 1.59 * 0.75 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 1.59 * 0.75, 1.59 * 0.75 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 7.67 * 0.7, 7.67 * 0.7 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 7.67 * 0.7, 7.67 * 0.7 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 5.09 * 0.75, 5.09 * 0.75 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 5.09 * 0.75, 5.09 * 0.75 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 2.86 * 0.75, 2.86 * 0.75 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 2.86 * 0.75, 2.86 * 0.75 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 2.02 * 0.75, 2.02 * 0.75 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 2.02 * 0.75, 2.02 * 0.75 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 1.38 * 0.75, 1.38 * 0.75 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 1.38 * 0.75, 1.38 * 0.75 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 1.25 * 0.75, 1.25 * 0.75 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 1.25 * 0.75, 1.25 * 0.75 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1.09 * 0.75, 1.09 * 0.75 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 1.09 * 0.75, 1.09 * 0.75 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 1.06 * 0.75, 1.06 * 0.75 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 1.06 * 0.75, 1.06 * 0.75 );

setRotateKey( spep_2 + 440 + OFFSET_X, 1, -120 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, -120 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, -120.8 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, -120.8 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, -120.8 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, -120.8 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, -120.7 );

-- 敵の動き5
setDisp( spep_2 + 658 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 700 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 658 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 658 + OFFSET_X, 1, -35.9, -22.6 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -35.9, -22.6 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -25.4, -67.2 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -25.4, -67.2 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, -25.4, -65.8 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -25.4, -65.8 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, -25.4, -64.3 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -25.4, -64.3 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -19, -109.8 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, -19, -109.8 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, -19, -107.8 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, -19, -107.8 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, -19.1, -105.9 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, -19.1, -105.9 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, -15.2, -151.6 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, -15.2, -151.6 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, -15.2, -149.6 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, -15.2, -149.6 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, -25.8, -190.9 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, -25.8, -190.9 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -25.8, -189.6 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, -25.8, -189.6 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, -25.8, -188.4 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, -25.8, -188.4 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, -19.2, -216.5 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, -19.2, -216.5 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, -19.2, -215.7 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, -19.2, -215.7 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, -19.2, -214.8 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, -19.2, -214.8 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, -16, -234.5 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, -16, -234.5 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, -16, -233.5 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, -16, -233.5 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, -16, -232.5 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, -16, -232.5 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, -18.9, -242 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, -18.9, -242 , 0 );

setScaleKey( spep_2 + 658 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 666 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 675 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 676 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 677 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 678 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 679 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 680 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 687 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 688 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 689 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 690 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 693 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 695 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 696 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 700 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 658 + OFFSET_X, 1, 179 );
setRotateKey( spep_2 + 700 + OFFSET_X, 1, 179 );

-- ** 音 ** --
--叫ぶ
SE010 = playSeVer2( spep_2 + 42, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE010, 78 );
SE011 = playSeVer2( spep_2 + 42, 9, "",spep_2 + 108, 0, 40, -1);
SE012 = playSeVer2( spep_2 + 44, 1235, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 56, 1117, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 80;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--高速タックル
SE014 = playSeVer2( spep_2 + 92, 1277, "",spep_2 + 144, 0, 26, -1);
SE015 = playSeVer2( spep_2 + 100, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_2 + 120, 1183, "",spep_2 + 258, 0, 40, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 178, 1109, "", 0, 0, 0, -1);

--画面遷移
SE018 = playSeVer2( spep_2 + 208, 1232, "", 0, 0, 0, -1);

--目が光る
SE019 = playSeVer2( spep_2 + 214, 1330, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 214, 1328, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 214, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE021, 68 );
setPitch( spep_2 + 214, SE021, 400 );
setTimeStretch( SE021, 1.27, 30, 4 );
SE022 = playSeVer2( spep_2 + 214, 1445, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 214, 1305, "",spep_2 + 344, 0, 26, -1);

--爆発
SE024 = playSeVer2( spep_2 + 314, 1024, "", 0, 0, 0, -1);

--ピッコロおりてくる
SE025 = playSeVer2( spep_2 + 378, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 378, SE025, 141 );
SE026 = playSeVer2( spep_2 + 378, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 378, SE026, 50 );
setTimeStretch( SE026, 2, 30, 4 );
SE027 = playSeVer2( spep_2 + 442, 1019, "",spep_2 + 508, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 442, SE027, 141 );

--敵つかむ
SE028 = playSeVer2( spep_2 + 470, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 488, 1153, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 488, 1006, "", 0, 0, 0, -1);

--加速して落下
SE031 = playSeVer2( spep_2 + 506, 1027, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 506, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 506, SE032, 68 );
SE033 = playSeVer2( spep_2 + 506, 1019, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 510, 1014, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 510, 1121, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 510, SE035, 400 );
setTimeStretch( SE035, 1.8, 30, 4 );
SE036 = playSeVer2( spep_2 + 570, 1019, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 634, 1019, "", 0, 0, 0, -1);

--ピッコロ離脱
SE038 = playSeVer2( spep_2 + 710, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 710, SE038, 78 );
SE039 = playSeVer2( spep_2 + 710, 1035, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 710, 44, "", 0, 0, 0, -1);

--地面激突
SE041 = playSeVer2( spep_2 + 740, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 750, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 750 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 854

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭・手前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 冒頭・手前 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 冒頭・奥 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -75, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -75, 515.5 , 0 );
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
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 98 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 102 );

setMoveKey( spep_0 + 0 , 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 263.9, 273.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 263.9, 273.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 263.9, 288.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 263.9, 288.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 265.8, 279.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 265.8, 279.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 267.8, 285 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 267.8, 285 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 265.8, 286.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 265.8, 286.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 267.8, 285 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 267.8, 285 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 267.8, 279.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 267.8, 281 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 265.8, 281 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 269.7, 283 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 267.8, 281 , 0 );

setScaleKey( spep_0 + 0 , 1, 2.14, 2.14 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気が立ち昇る
SE001 = playSeVer2( spep_0 + 0, 1024, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 128, 0, 22, -1);
SE003 = playSeVer2( spep_0 + 0, 1222, "",spep_0 + 84, 0, 32, -1);
SE005 = playSeVer2( spep_0 + 6, 1241, "",spep_0 + 124, 0, 16, -1);
SE006 = playSeVer2( spep_0 + 28, 1467, "",spep_0 + 128, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 28, SE006, 182 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 96

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--背景音
SE008 = playSeVer2( spep_1 + 90, 1226, "",spep_2 + 94, 0, 42, -1);
setSeVolumeByWorkId( spep_1 + 90, SE008, 56 );
SE009 = playSeVer2( spep_1 + 90, 1176, "",spep_2 + 106, 0, 20, -1);

------------------------------------------------------
-- 敵用：アップ～ラスト・手前 ef_002r
------------------------------------------------------
MAX_FRAME_2 = 854;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- 敵用：アップ～ラスト・手前 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- 敵用：アップ～ラスト・奥 ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 128 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, -11.5, -14.9 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -11.5, -14.9 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 14.3, 16.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 14.3, 16.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 161.8, -18.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 161.8, -18.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 265.1, -45.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 265.1, -45.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 420.4, -130.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 420.4, -130.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 539.3, -191.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 539.3, -191.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 680.7, -242.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 680.7, -242.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 806.4, -309.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 806.4, -309.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 942.6, -355.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 942.6, -355.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 1065.7, -406.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 1065.7, -406.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 1204.5, -468 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 1204.5, -468 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 1330.2, -529.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 1330.2, -529.6 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.08, 2.08 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 28.7 );

-- 敵の動き2
setDisp( spep_2 + 164 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 210 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 164 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 164 + OFFSET_X, 1, -503.2, -221.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -503.2, -221.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -396.7, -173.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -396.7, -173.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -290.2, -125.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -290.2, -125.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -183.7, -77.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -183.7, -77.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -77.2, -29.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -77.2, -29.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -73, -27 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -73, -27 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -68.8, -24.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -68.8, -24.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -64.6, -22.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -64.6, -22.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -59.8, -19.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -59.8, -19.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -55, -17.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -55, -17.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -50.2, -14.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -50.2, -14.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -45.4, -12.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -45.4, -12.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -40.6, -9.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -40.6, -9.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -35.8, -7.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -35.8, -7.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -31, -4.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -31, -4.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -26.2, -2.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -26.2, -2.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -21.4, 0.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -21.4, 0.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -16.6, 2.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -16.6, 2.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -11.8, 5.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -11.8, 5.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -7, 7.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -7, 7.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -2.2, 10.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -2.2, 10.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 2.6, 12.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 2.6, 12.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 7.4, 15.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 7.4, 15.2 , 0 );

setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.39, 1.39 );

setRotateKey( spep_2 + 164 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 4.2 );

-- 敵の動き3
setDisp( spep_2 + 322 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 376 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 322 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 322 + OFFSET_X, 1, -122.2, 193.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -122.2, 193.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -111.9, 191.1 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -111.9, 191.1 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -114.7, 175.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -114.7, 175.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -101.8, 170 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -101.8, 170 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -101.9, 154.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -101.9, 154.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -91.6, 148.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -91.6, 148.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -89.1, 130.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -89.1, 130.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -81.4, 127.9 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -81.4, 127.9 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -87.5, 122.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -87.5, 122.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -78, 121.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -78, 121.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -81.5, 123.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -81.5, 123.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -74.6, 115.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -74.6, 115.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -78.1, 104.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -78.1, 104.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -71.1, 109.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -71.1, 109.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -79.8, 100.8 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -79.8, 100.8 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -67.7, 102.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -67.7, 102.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -79, 81.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -79, 81.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -64.3, 96.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -64.3, 96.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -75.6, 83.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -75.6, 83.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -60.9, 90.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -60.9, 90.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -64.4, 76.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -64.4, 76.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -57.5, 84.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -57.5, 84.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -63.6, 86.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -63.6, 86.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -54.1, 77.8 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -54.1, 77.8 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -60.2, 66.9 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -60.2, 66.9 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -50.7, 71.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -50.7, 71.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -62, 58.1 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -62, 58.1 , 0 );

setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_2 + 322 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 44.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 46.2 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 47.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 60.1 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 60.1 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 62.8 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 64.2 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 67 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 68.4 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 68.4 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 69.8 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 69.8 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 71.1 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 71.1 );

-- 敵の動き4
setDisp( spep_2 + 440 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 598 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 440 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 440 + OFFSET_X, 1, 88.4, 71 - 30 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 88.4, 71 - 30 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 88.4, 67.6 - 30 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 88.4, 67.6 - 30 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 88.4, 64.2 - 30 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 88.4, 64.2 - 30 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 88.3, 60.8 - 30 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 88.3, 60.8 - 30 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 88.3, 57.4 - 30 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 88.3, 57.4 - 30 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 88.2, 54 - 30 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 88.2, 54 - 30 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 88.2, 50.6 - 30 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 88.2, 50.6 - 30 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 88.1, 47.2 - 30 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 88.1, 47.2 - 30 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 88.1, 43.8 - 30 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 88.1, 43.8 - 30 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 88.1, 40.4 - 30 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 88.1, 40.4 - 30 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 88, 37 - 30 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 88, 37 - 30 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 88, 33.6 - 30 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 88, 33.6 - 30 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 87.9, 30.2 - 30 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 87.9, 30.2 - 30 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 87.9, 26.8 - 30 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 87.9, 26.8 - 30 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 87.9, 23.4 - 30 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 87.9, 23.4 - 30 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 87.8, 20 - 30 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 87.8, 20 - 30 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 87.8, 16.6 - 30 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 87.8, 16.6 - 30 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 87.7, 13.2 - 30 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 87.7, 13.2 - 30 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 87.7, 9.8 - 30 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 87.7, 9.8 - 30 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 87.6, 6.4 - 30 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 87.6, 6.4 - 30 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 87.6, 3 - 30 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 87.6, 3 - 30 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 87.6, -0.4 - 30 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 87.6, -0.4 - 30 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 87.5, -3.8 - 30 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 87.5, -3.8 - 30 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 87.5, -7.2 - 30 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 87.5, -7.2 - 30 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 87.4, -10.6 - 30 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 87.4, -10.6 - 30 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 75.6, -4.4 - 30 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 75.6, -4.4 - 30 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 78.2, 13.8 - 30 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 78.2, 13.8 - 30 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 73, 0.8 - 30 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 73, 0.8 - 30 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 80.8, 0.8 - 30 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 80.8, 0.8 - 30 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 67.8, 8.6 - 30 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 193.8, 539.9 - 110, 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 193.8, 539.9 - 110 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 90.8, 380.5 - 70 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 90.8, 380.5 - 70 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 55.5, 205.7 - 50 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 55.5, 205.7 - 50 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 42.1, 155.3 - 50 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 42.1, 155.3 - 50 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 26.8, 180.5 - 30 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 26.8, 180.5 - 30 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 26.8, 176.8 - 30 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 26.8, 176.8 - 30 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 26.8, 173 - 30, 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 26.8, 173 - 30 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 26.8, 169.3 - 30 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 26.8, 169.3 - 30 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 20.9, 148.6 - 30 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 20.9, 148.6 - 30 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 21.2, 144.9 - 30 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 21.2, 144.9 - 30 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 21.5, 141.3 - 30 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 21.5, 141.3 - 30 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 21.9, 137.6 - 30 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 21.9, 137.6 - 30 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 11.6, 129.6 - 30 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 11.6, 129.6 - 30 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 11.8, 126.4 - 30 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 11.8, 126.4 - 30 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 12.1, 123.2 - 30 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 12.1, 123.2 - 30 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 12.3, 119.4 - 30 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 12.3, 119.4 - 30 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 12.3, 116 - 30 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 12.3, 116 - 30 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 12.3, 112.6 - 30 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 12.3, 112.6 - 30 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 12.3, 109.2 - 30 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 12.3, 109.2 - 30 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 12.3, 105.8 - 30 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 12.3, 105.8 - 30 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 12.3, 102.4 - 30 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 12.3, 102.4 - 30 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 12.3, 99 - 30 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 12.3, 99 - 30 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 12.3, 95.6 - 30 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 12.3, 95.6 - 30 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 12.3, 92.2 - 30 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 12.3, 92.2 - 30 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 12.3, 88.8 - 30 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 12.3, 88.8 - 30 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 12.3, 85.4 - 30 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 12.3, 85.4 - 30 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 12.3, 82 - 30 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 12.3, 82 - 30 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 12.3, 78.6 - 30 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 12.3, 78.6 - 30 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 12.3, 75.2 - 30 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 12.3, 75.2 - 30 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 12.3, 71.8 - 30 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 12.3, 71.8 - 30 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 12.3, 68.4 - 30 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 12.3, 68.4 - 30 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 12.3, 65 - 30 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 12.3, 65 - 30 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 12.3, 61.6 - 30 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 12.3, 61.6 - 30 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 12.3, 58.2 - 30 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 12.3, 58.2 - 30 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 12.3, 54.8 - 30 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 12.3, 54.8 - 30 , 0 );

setScaleKey( spep_2 + 440 + OFFSET_X, 1, 1.64 * 0.75, 1.64 * 0.75 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 1.64 * 0.75, 1.64 * 0.75 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 1.59 * 0.75, 1.59 * 0.75 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 1.59 * 0.75, 1.59 * 0.75 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 7.67 * 0.7, 7.67 * 0.7 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 7.67 * 0.7, 7.67 * 0.7 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 5.09 * 0.75, 5.09 * 0.75 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 5.09 * 0.75, 5.09 * 0.75 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 2.86 * 0.75, 2.86 * 0.75 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 2.86 * 0.75, 2.86 * 0.75 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 2.02 * 0.75, 2.02 * 0.75 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 2.02 * 0.75, 2.02 * 0.75 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 1.38 * 0.75, 1.38 * 0.75 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 1.38 * 0.75, 1.38 * 0.75 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 1.25 * 0.75, 1.25 * 0.75 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 1.25 * 0.75, 1.25 * 0.75 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 1.09 * 0.75, 1.09 * 0.75 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 1.09 * 0.75, 1.09 * 0.75 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 1.06 * 0.75, 1.06 * 0.75 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 1.06 * 0.75, 1.06 * 0.75 );

setRotateKey( spep_2 + 440 + OFFSET_X, 1, 120 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, 120 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, 120.8 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, 120.8 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, 120.8 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, 120.8 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, 120.7 );

-- 敵の動き5
setDisp( spep_2 + 658 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 700 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 658 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 658 + OFFSET_X, 1, 35.9, -22.6 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 35.9, -22.6 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 25.4, -67.2 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 25.4, -67.2 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 25.4, -65.8 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 25.4, -65.8 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 25.4, -64.3 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 25.4, -64.3 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 19, -109.8 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 19, -109.8 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 19, -107.8 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 19, -107.8 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 19.1, -105.9 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, 19.1, -105.9 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, 15.2, -151.6 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, 15.2, -151.6 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, 15.2, -149.6 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, 15.2, -149.6 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, 25.8, -190.9 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, 25.8, -190.9 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, 25.8, -189.6 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, 25.8, -189.6 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, 25.8, -188.4 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, 25.8, -188.4 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, 19.2, -216.5 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, 19.2, -216.5 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, 19.2, -215.7 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, 19.2, -215.7 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, 19.2, -214.8 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, 19.2, -214.8 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, 16, -234.5 , 0 );
setMoveKey( spep_2 + 691 + OFFSET_X, 1, 16, -234.5 , 0 );
setMoveKey( spep_2 + 692 + OFFSET_X, 1, 16, -233.5 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 16, -233.5 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 16, -232.5 , 0 );
setMoveKey( spep_2 + 695 + OFFSET_X, 1, 16, -232.5 , 0 );
setMoveKey( spep_2 + 696 + OFFSET_X, 1, 18.9, -242 , 0 );
setMoveKey( spep_2 + 700 + OFFSET_X, 1, 18.9, -242 , 0 );

setScaleKey( spep_2 + 658 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 665 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 666 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 673 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 674 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 675 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 676 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 677 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 678 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 679 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 680 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 687 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 688 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 689 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 690 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 693 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 695 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 696 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 700 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_2 + 658 + OFFSET_X, 1, -179 );
setRotateKey( spep_2 + 700 + OFFSET_X, 1, -179 );

-- ** 音 ** --
--叫ぶ
SE010 = playSeVer2( spep_2 + 42, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE010, 78 );
SE011 = playSeVer2( spep_2 + 42, 9, "",spep_2 + 108, 0, 40, -1);
SE012 = playSeVer2( spep_2 + 44, 1235, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 56, 1117, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    
SP_dodge = spep_2 + 80;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--高速タックル
SE014 = playSeVer2( spep_2 + 92, 1277, "",spep_2 + 144, 0, 26, -1);
SE015 = playSeVer2( spep_2 + 100, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_2 + 120, 1183, "",spep_2 + 258, 0, 40, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 178, 1109, "", 0, 0, 0, -1);

--画面遷移
SE018 = playSeVer2( spep_2 + 208, 1232, "", 0, 0, 0, -1);

--目が光る
SE019 = playSeVer2( spep_2 + 214, 1330, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 214, 1328, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 214, 1289, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE021, 68 );
setPitch( spep_2 + 214, SE021, 400 );
setTimeStretch( SE021, 1.27, 30, 4 );
SE022 = playSeVer2( spep_2 + 214, 1445, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 214, 1305, "",spep_2 + 344, 0, 26, -1);

--爆発
SE024 = playSeVer2( spep_2 + 314, 1024, "", 0, 0, 0, -1);

--ピッコロおりてくる
SE025 = playSeVer2( spep_2 + 378, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 378, SE025, 141 );
SE026 = playSeVer2( spep_2 + 378, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 378, SE026, 50 );
setTimeStretch( SE026, 2, 30, 4 );
SE027 = playSeVer2( spep_2 + 442, 1019, "",spep_2 + 508, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 442, SE027, 141 );

--敵つかむ
SE028 = playSeVer2( spep_2 + 470, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 488, 1153, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 488, 1006, "", 0, 0, 0, -1);

--加速して落下
SE031 = playSeVer2( spep_2 + 506, 1027, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 506, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 506, SE032, 68 );
SE033 = playSeVer2( spep_2 + 506, 1019, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 510, 1014, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 510, 1121, "", 0, 0, 0, 0.6);
setPitch( spep_2 + 510, SE035, 400 );
setTimeStretch( SE035, 1.8, 30, 4 );
SE036 = playSeVer2( spep_2 + 570, 1019, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 634, 1019, "", 0, 0, 0, -1);

--ピッコロ離脱
SE038 = playSeVer2( spep_2 + 710, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 710, SE038, 78 );
SE039 = playSeVer2( spep_2 + 710, 1035, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 710, 44, "", 0, 0, 0, -1);

--地面激突
SE041 = playSeVer2( spep_2 + 740, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 750, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 750 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 854

end
