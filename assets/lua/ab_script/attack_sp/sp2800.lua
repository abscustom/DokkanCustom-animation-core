-- 1030430: LR_超サイヤ人孫悟空+超サイヤ人ベジータ(天使)_超必殺技：決死の超サイヤ人３
-- sp_effect_a2_00254
-- sp2800

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163488;  -- 正面構え_迫る敵 ef_001
SP_002 = 163489;  -- 後宙でかわし突進殴り→構え直して両手気弾 ef_002
SP_002b = 163490;  -- 後宙でかわし突進殴り→構え直して両手気弾 ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 正面構え_迫る敵 ef_001
------------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 正面構え_迫る敵 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 50 + OFFSET_X, 1, 116 );

setMoveKey( spep_0 + 50 + OFFSET_X, 1, 31.2, -17.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 31.2, -17.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 31.4, -17.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 31.4, -17.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 31.6, -17.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 31.6, -17.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 31.8, -17.1 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 31.8, -17.1 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 32, -17 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 32, -17 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 32.1, -17 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 32.1, -17 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 32.3, -17 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 32.3, -17 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 32.4, -17 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 32.4, -17 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 32.6, -16.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 32.6, -16.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 32.8, -16.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 32.8, -16.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 32.9, -16.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 32.9, -16.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 33.1, -17 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 33.1, -17 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 33, -16.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 33, -16.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 31.8, -17.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 31.8, -17.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 32.8, -16.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 32.8, -16.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 31.9, -17.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 31.9, -17.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 32.5, -16.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 32.5, -16.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 32, -17.4 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 32, -17.4 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 30.8, -14.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 30.8, -14.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 31.9, -21.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 31.9, -21.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 33.1, -20.7 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 33.1, -20.7 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 31.8, -21.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 31.8, -21.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 30.9, -18.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 30.9, -18.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 32.2, -25.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 32.2, -25.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 32.9, -24.5 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 32.9, -24.5 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 32.2, -25.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 32.2, -25.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 33.1, -24.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 33.1, -24.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 30.8, -24.4 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 30.8, -24.4 , 0 );

setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_0 + 50 + OFFSET_X, 1, -63.2 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -63.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 80 );
SE003 = playSeVer2( spep_0 + 4, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 59 );

--敵突っ込んでくる
SE004 = playSeVer2( spep_0 + 46, 1182, "",spep_0 + 126, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 46, 1117, "",spep_0 + 124, 0, 12, -1);
SE006 = playSeVer2( spep_0 + 54, 1019, "",spep_0 + 122, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 104

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--環境音
SE008 = playSeVer2( spep_1 + 82, 1269, "",spep_2 + 368, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 82, SE008, 25 );

--力む音
SE009 = playSeVer2( spep_1 + 82, 1344, "",spep_2 + 86, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 72 );

------------------------------------------------------
-- 後宙でかわし突進殴り→構え直して両手気弾 ef_002
------------------------------------------------------
MAX_FRAME_2 = 896;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 後宙でかわし突進殴り→構え直して両手気弾 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 後宙でかわし突進殴り→構え直して両手気弾 ef_002b
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 145, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 145, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 145, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 118 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 260 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 118 + OFFSET_X, 1, 103 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 111 );
changeAnime( spep_2 + 123 + OFFSET_X, 1, 111 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 111 );
changeAnime( spep_2 + 125 + OFFSET_X, 1, 111 );
changeAnime( spep_2 + 126 + OFFSET_X, 1, 109 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 17 );

setMoveKey( spep_2 + 118 + OFFSET_X, 1, 486.9, -53.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 486.9, -53.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 407, -53.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 407, -53.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 279.5, -50.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 279.5, -50.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 149.6, -50.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 149.6, -50.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -28.7, -50.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -28.7, -50.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -28.7, -50.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -28.7, -50.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -45.7, -50.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -45.7, -50.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -67.8, -50.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -67.8, -50.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -83.1, -50.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -83.1, -50.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -100.1, -50.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -100.1, -50.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -120.5, -50.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -120.5, -50.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -142.6, -50.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -142.6, -50.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -185.1, -50.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -185.1, -50.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -217.4, -50.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -217.4, -50.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -251.4, -50.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -251.4, -50.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -87.7, -332.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -87.7, -332.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -87.7, -302.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -87.7, -302.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -87.7, -272.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -87.7, -272.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -87.7, -242.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -87.7, -242.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -87.7, -212.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -87.7, -212.8 , 0 );

setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_2 + 118 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_2 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 456 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 368 + OFFSET_X, 1, 17 );
changeAnime( spep_2 + 404 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 368 + OFFSET_X, 1, -360, -25.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -360, -25.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -346.7, -25.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -346.7, -25.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -333.3, -26.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -333.3, -26.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -319.9, -26.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -319.9, -26.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -306.5, -27.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -306.5, -27.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -293.1, -27.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -293.1, -27.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -279.7, -28.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -279.7, -28.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -266.4, -28.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -266.4, -28.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -253, -29.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -253, -29.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -239.6, -29.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -239.6, -29.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -226.2, -30.1 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -226.2, -30.1 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -212.8, -30.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -212.8, -30.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -199.5, -31.1 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -199.5, -31.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -186.1, -31.6 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -186.1, -31.6 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -172.7, -32.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -172.7, -32.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -132.1, -21.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -132.1, -21.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -138.4, -34.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -138.4, -34.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -125.8, -32.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -125.8, -32.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -141.6, -39.6 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -141.6, -39.6 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -138.4, -28.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -138.4, -28.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -138.4, 3.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -138.4, 3.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -138.4, -59.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -138.4, -59.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -138.4, -21.8 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -138.4, -21.8 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -138.4, -24.9 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -138.4, -24.9 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -132.1, -31.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -132.1, -31.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -138.4, -24.9 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -138.4, -24.9 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -141.6, -34.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -141.6, -34.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -129, -34.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -129, -34.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -138.4, -37.5 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -138.4, -37.5 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -138.4, -24.9 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -138.4, -24.9 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -141.6, -34.4 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -141.6, -34.4 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -129, -34.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -129, -34.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -138.4, -37.5 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -138.4, -37.5 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -138.4, -21.8 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -138.4, -21.8 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -138.4, -32.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -138.4, -32.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -132.1, -29.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -132.1, -29.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -138.4, -35.4 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -138.4, -35.4 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -138.4, -25.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -138.4, -25.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -138.4, -26.9 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -138.4, -26.9 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -132.1, -30.1 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -132.1, -30.1 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -138.4, -30.1 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -138.4, -30.1 , 0 );

setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 368 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_2 + 460 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 492 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 460 + OFFSET_X, 1, 102.8, -134.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 102.8, -134.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 102.8, -185.9 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 102.8, -185.9 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 88.8, -117 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 88.8, -117 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 16.8, -170.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 16.8, -170.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -24.7, 160.5 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -24.7, 160.5 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -73.7, 123 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -73.7, 123 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -84, 222.4 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -84, 222.4 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -94, 187 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -94, 187 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -108.1, 235.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -108.1, 235.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -144.1, 189.9 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -144.1, 189.9 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -157, 284.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -157, 284.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -180, 226.7 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -180, 226.7 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -178.4, 256.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -178.4, 256.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -178.4, 221.7 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -178.4, 221.7 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -191.3, 233 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -191.3, 233 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -187.3, 213.5 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -187.3, 213.5 , 0 );

setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 460 + OFFSET_X, 1, 57.7 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, 57.7 );

-- ** 音 ** --
--３に変身する
SE011 = playSeVer2( spep_2 + 46, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE011, 145 );
SE012 = playSeVer2( spep_2 + 46, 1043, "", 0, 0, 0, -1);

--イナヅマ
SE013 = playSeVer2( spep_2 + 60, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE013, 52 );

--オーラ
SE014 = playSeVer2( spep_2 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE014, 71 );
SE015 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE015, 71 );
SE020 = playSeVer2( spep_2 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE020, 71 );
SE021 = playSeVer2( spep_2 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE021, 71 );
SE022 = playSeVer2( spep_2 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE022, 71 );
SE023 = playSeVer2( spep_2 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE023, 71 );
SE025 = playSeVer2( spep_2 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE025, 71 );

--翻る
SE016 = playSeVer2( spep_2 + 112, 1012, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 112, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE017, 73 );
SE018 = playSeVer2( spep_2 + 112, 63, "",spep_2 + 200, 0, 28, -1);
SE019 = playSeVer2( spep_2 + 112, 1338, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE019, 193 );

--手つく
SE024 = playSeVer2( spep_2 + 198, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE024, 158 );

--着地
SE026 = playSeVer2( spep_2 + 218, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 232, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE027, 162 );

--オーラ
SE028 = playSeVer2( spep_2 + 234, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE028, 71 );
SE029 = playSeVer2( spep_2 + 258, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE029, 71 );
SE033 = playSeVer2( spep_2 + 282, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 282, SE033, 71 );
SE035 = playSeVer2( spep_2 + 306, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE035, 71 );

--イナヅマ
SE030 = playSeVer2( spep_2 + 266, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE030, 58 );

--構える
SE031 = playSeVer2( spep_2 + 274, 1004, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 280, 1233, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 292, 1006, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 322;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);

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
--オーラ
SE036 = playSeVer2( spep_2 + 330, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 330, SE036, 71 );
SE040 = playSeVer2( spep_2 + 354, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE040, 71 );

--向かってくる
SE037 = playSeVer2( spep_2 + 330, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 330, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 330, SE038, 82 );
SE039 = playSeVer2( spep_2 + 330, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 330, SE039, 84 );

--パンチヒット
SE041 = playSeVer2( spep_2 + 382, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE041, 150 );
SE042 = playSeVer2( spep_2 + 392, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 392, 1359, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 392, 1049, "", 0, 0, 0, -1);

--敵飛んでいく
SE045 = playSeVer2( spep_2 + 446, 1121, "",spep_2 + 560, 0, 68, -1);

--岩激突１
SE046 = playSeVer2( spep_2 + 456, 1061, "",spep_2 + 486, 0, 10, -1);
SE047 = playSeVer2( spep_2 + 460, 1023, "", 0, 0, 0, -1);

--岩激突２
SE048 = playSeVer2( spep_2 + 474, 1061, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 476, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE049, 81 );

--岩激突３
SE050 = playSeVer2( spep_2 + 522, 1159, "", 0, 0, 0, -1);

--オーラ
--SE051 = playSeVer2( spep_2 + 552, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 552, SE051, 63 );
--SE053 = playSeVer2( spep_2 + 576, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 576, SE053, 63 );
SE059 = playSeVer2( spep_2 + 596, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 596, SE059, 63 );
stopSeIfDoubleSpeed( spep_2 + 596, SE059 );
SE060 = playSeVer2( spep_2 + 620, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 620, SE060, 63 );
stopSeIfDoubleSpeed( spep_2 + 620, SE060 );
--SE061 = playSeVer2( spep_2 + 648, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 648, SE061, 63 );

--イナヅマ
SE052 = playSeVer2( spep_2 + 548, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 548, SE052, 60 );

--気弾溜め
SE054 = playSeVer2( spep_2 + 572, 1116, "",spep_2 + 620, 0, 22, -1);
SE055 = playSeVer2( spep_2 + 580, 1004, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 580, 1296, "",spep_2 + 680, 0, 40, -1);
SE057 = playSeVer2( spep_2 + 580, 1449, "",spep_2 + 682, 0, 40, -1);
SE058 = playSeVer2( spep_2 + 580, 1273, "", 0, 0, 0, -1);

--連続気弾発射
SE062 = playSeVer2( spep_2 + 648, 1409, "",spep_2 + 882, 0, 30, -1);
SE063 = playSeVer2( spep_2 + 648, 1357, "", 0, 0, 0, -1);
setTimeStretch( SE063, 1.11, 30, 4 );
SE064 = playSeVer2( spep_2 + 648, 1213, "",spep_2 + 882, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 648, SE064, 46 );
SE065 = playSeVer2( spep_2 + 648, 1403, "",spep_2 + 884, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 648, SE065, 164 );
SE066 = playSeVer2( spep_2 + 758, 1406, "",spep_2 + 882, 0, 32, -1);

--爆発
SE067 = playSeVer2( spep_2 + 766, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 766, SE067, 67 );

--ラスト爆発
SE068 = playSeVer2( spep_2 + 844, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 844, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 792 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 896

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 正面構え_迫る敵 ef_001
------------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 正面構え_迫る敵 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 110 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 50 + OFFSET_X, 1, 16 );

setMoveKey( spep_0 + 50 + OFFSET_X, 1, -31.2, -17.1 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -31.2, -17.1 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -31.4, -17.1 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -31.4, -17.1 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -31.6, -17.1 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -31.6, -17.1 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -31.8, -17.1 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -31.8, -17.1 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -32, -17 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -32, -17 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -32.1, -17 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -32.1, -17 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -32.3, -17 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -32.3, -17 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -32.4, -17 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -32.4, -17 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -32.6, -16.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -32.6, -16.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -32.8, -16.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -32.8, -16.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -32.9, -16.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -32.9, -16.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -33.1, -17 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -33.1, -17 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -33, -16.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -33, -16.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -31.8, -17.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -31.8, -17.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -32.8, -16.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -32.8, -16.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -31.9, -17.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -31.9, -17.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -32.5, -16.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -32.5, -16.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -32, -17.4 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -32, -17.4 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -30.8, -14.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -30.8, -14.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -31.9, -21.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -31.9, -21.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -33.1, -20.7 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -33.1, -20.7 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -31.8, -21.2 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -31.8, -21.2 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -30.9, -18.6 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -30.9, -18.6 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -32.2, -25.3 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -32.2, -25.3 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -32.9, -24.5 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -32.9, -24.5 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -32.2, -25.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -32.2, -25.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -33.1, -24.6 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -33.1, -24.6 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -30.8, -24.4 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -30.8, -24.4 , 0 );

setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_0 + 50 + OFFSET_X, 1, 63.2 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, 63.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 80 );
SE003 = playSeVer2( spep_0 + 4, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 59 );

--敵突っ込んでくる
SE004 = playSeVer2( spep_0 + 46, 1182, "",spep_0 + 126, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 46, 1117, "",spep_0 + 124, 0, 12, -1);
SE006 = playSeVer2( spep_0 + 54, 1019, "",spep_0 + 122, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 104

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--環境音
SE008 = playSeVer2( spep_1 + 82, 1269, "",spep_2 + 368, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 82, SE008, 25 );

--力む音
SE009 = playSeVer2( spep_1 + 82, 1344, "",spep_2 + 86, 0, 46, -1);
setSeVolumeByWorkId( spep_1 + 82, SE009, 72 );

------------------------------------------------------
-- 後宙でかわし突進殴り→構え直して両手気弾 ef_002
------------------------------------------------------
MAX_FRAME_2 = 896;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 後宙でかわし突進殴り→構え直して両手気弾 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 後宙でかわし突進殴り→構え直して両手気弾 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 145, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 145, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 145, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 118 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 260 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 118 + OFFSET_X, 1, 3 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 11 );
changeAnime( spep_2 + 123 + OFFSET_X, 1, 11 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 11 );
changeAnime( spep_2 + 125 + OFFSET_X, 1, 11 );
changeAnime( spep_2 + 126 + OFFSET_X, 1, 9 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 118 + OFFSET_X, 1, -486.9, -53.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -486.9, -53.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -407, -53.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -407, -53.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -279.5, -50.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -279.5, -50.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -149.6, -50.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -149.6, -50.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 28.7, -50.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 28.7, -50.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 28.7, -50.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 28.7, -50.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 45.7, -50.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 45.7, -50.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 67.8, -50.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 67.8, -50.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 83.1, -50.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 83.1, -50.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 100.1, -50.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 100.1, -50.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 120.5, -50.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 120.5, -50.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 142.6, -50.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 142.6, -50.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 185.1, -50.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 185.1, -50.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 217.4, -50.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 217.4, -50.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 251.4, -50.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 251.4, -50.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 87.7, -332.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 87.7, -332.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 87.7, -302.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 87.7, -302.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 87.7, -272.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 87.7, -272.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 87.7, -242.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 87.7, -242.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 87.7, -212.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 87.7, -212.8 , 0 );

setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_2 + 118 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_2 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 456 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 368 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 404 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 368 + OFFSET_X, 1, 360, -25.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 360, -25.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 346.7, -25.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 346.7, -25.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 333.3, -26.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 333.3, -26.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 319.9, -26.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 319.9, -26.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 306.5, -27.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 306.5, -27.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 293.1, -27.6 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 293.1, -27.6 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 279.7, -28.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 279.7, -28.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 266.4, -28.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 266.4, -28.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 253, -29.1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 253, -29.1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 239.6, -29.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 239.6, -29.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 226.2, -30.1 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 226.2, -30.1 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 212.8, -30.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 212.8, -30.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 199.5, -31.1 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 199.5, -31.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 186.1, -31.6 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 186.1, -31.6 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 172.7, -32.1 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 172.7, -32.1 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 132.1, -21.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 132.1, -21.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 138.4, -34.4 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 138.4, -34.4 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 125.8, -32.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 125.8, -32.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 141.6, -39.6 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 141.6, -39.6 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 138.4, -28.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 138.4, -28.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 138.4, 3.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 138.4, 3.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 138.4, -59.6 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 138.4, -59.6 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 138.4, -21.8 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 138.4, -21.8 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 138.4, -24.9 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 138.4, -24.9 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 132.1, -31.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 132.1, -31.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 138.4, -24.9 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 138.4, -24.9 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 141.6, -34.4 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 141.6, -34.4 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 129, -34.4 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 129, -34.4 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 138.4, -37.5 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 138.4, -37.5 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 138.4, -24.9 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 138.4, -24.9 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 141.6, -34.4 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 141.6, -34.4 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 129, -34.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 129, -34.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 138.4, -37.5 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 138.4, -37.5 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 138.4, -21.8 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 138.4, -21.8 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 138.4, -32.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 138.4, -32.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 132.1, -29.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 132.1, -29.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 138.4, -35.4 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 138.4, -35.4 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 138.4, -25.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 138.4, -25.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 138.4, -26.9 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 138.4, -26.9 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 132.1, -30.1 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 132.1, -30.1 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 138.4, -30.1 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 138.4, -30.1 , 0 );

setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 368 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_2 + 460 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 492 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 460 + OFFSET_X, 1, -102.8, -134.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -102.8, -134.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -102.8, -185.9 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -102.8, -185.9 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -88.8, -117 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -88.8, -117 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -16.8, -170.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -16.8, -170.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 24.7, 160.5 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 24.7, 160.5 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 73.7, 123 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 73.7, 123 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 84, 222.4 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 84, 222.4 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 94, 187 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 94, 187 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 108.1, 235.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 108.1, 235.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 144.1, 189.9 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 144.1, 189.9 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 157, 284.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 157, 284.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 180, 226.7 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 180, 226.7 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 178.4, 256.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 178.4, 256.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 178.4, 221.7 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 178.4, 221.7 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 191.3, 233 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 191.3, 233 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 187.3, 213.5 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 187.3, 213.5 , 0 );

setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 460 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, -57.7 );

-- ** 音 ** --
--３に変身する
SE011 = playSeVer2( spep_2 + 46, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE011, 145 );
SE012 = playSeVer2( spep_2 + 46, 1043, "", 0, 0, 0, -1);

--イナヅマ
SE013 = playSeVer2( spep_2 + 60, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE013, 52 );

--オーラ
SE014 = playSeVer2( spep_2 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE014, 71 );
SE015 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE015, 71 );
SE020 = playSeVer2( spep_2 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE020, 71 );
SE021 = playSeVer2( spep_2 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE021, 71 );
SE022 = playSeVer2( spep_2 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE022, 71 );
SE023 = playSeVer2( spep_2 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE023, 71 );
SE025 = playSeVer2( spep_2 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE025, 71 );

--翻る
SE016 = playSeVer2( spep_2 + 112, 1012, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 112, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE017, 73 );
SE018 = playSeVer2( spep_2 + 112, 63, "",spep_2 + 200, 0, 28, -1);
SE019 = playSeVer2( spep_2 + 112, 1338, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 112, SE019, 193 );

--手つく
SE024 = playSeVer2( spep_2 + 198, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 198, SE024, 158 );

--着地
SE026 = playSeVer2( spep_2 + 218, 1003, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 232, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 232, SE027, 162 );

--オーラ
SE028 = playSeVer2( spep_2 + 234, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE028, 71 );
SE029 = playSeVer2( spep_2 + 258, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 258, SE029, 71 );
SE033 = playSeVer2( spep_2 + 282, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 282, SE033, 71 );
SE035 = playSeVer2( spep_2 + 306, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 306, SE035, 71 );

--イナヅマ
SE030 = playSeVer2( spep_2 + 266, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE030, 58 );

--構える
SE031 = playSeVer2( spep_2 + 274, 1004, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 280, 1233, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 292, 1006, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 322;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE035, 0);

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
--オーラ
SE036 = playSeVer2( spep_2 + 330, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 330, SE036, 71 );
SE040 = playSeVer2( spep_2 + 354, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 354, SE040, 71 );

--向かってくる
SE037 = playSeVer2( spep_2 + 330, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 330, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 330, SE038, 82 );
SE039 = playSeVer2( spep_2 + 330, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 330, SE039, 84 );

--パンチヒット
SE041 = playSeVer2( spep_2 + 382, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 382, SE041, 150 );
SE042 = playSeVer2( spep_2 + 392, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 392, 1359, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 392, 1049, "", 0, 0, 0, -1);

--敵飛んでいく
SE045 = playSeVer2( spep_2 + 446, 1121, "",spep_2 + 560, 0, 68, -1);

--岩激突１
SE046 = playSeVer2( spep_2 + 456, 1061, "",spep_2 + 486, 0, 10, -1);
SE047 = playSeVer2( spep_2 + 460, 1023, "", 0, 0, 0, -1);

--岩激突２
SE048 = playSeVer2( spep_2 + 474, 1061, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 476, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE049, 81 );

--岩激突３
SE050 = playSeVer2( spep_2 + 522, 1159, "", 0, 0, 0, -1);

--オーラ
--SE051 = playSeVer2( spep_2 + 552, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 552, SE051, 63 );
--SE053 = playSeVer2( spep_2 + 576, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 576, SE053, 63 );
SE059 = playSeVer2( spep_2 + 596, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 596, SE059, 63 );
stopSeIfDoubleSpeed( spep_2 + 596, SE059 );
SE060 = playSeVer2( spep_2 + 620, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 620, SE060, 63 );
stopSeIfDoubleSpeed( spep_2 + 620, SE060 );
--SE061 = playSeVer2( spep_2 + 648, 1036, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_2 + 648, SE061, 63 );

--イナヅマ
SE052 = playSeVer2( spep_2 + 548, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 548, SE052, 60 );

--気弾溜め
SE054 = playSeVer2( spep_2 + 572, 1116, "",spep_2 + 620, 0, 22, -1);
SE055 = playSeVer2( spep_2 + 580, 1004, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 580, 1296, "",spep_2 + 680, 0, 40, -1);
SE057 = playSeVer2( spep_2 + 580, 1449, "",spep_2 + 682, 0, 40, -1);
SE058 = playSeVer2( spep_2 + 580, 1273, "", 0, 0, 0, -1);

--連続気弾発射
SE062 = playSeVer2( spep_2 + 648, 1409, "",spep_2 + 882, 0, 30, -1);
SE063 = playSeVer2( spep_2 + 648, 1357, "", 0, 0, 0, -1);
setTimeStretch( SE063, 1.11, 30, 4 );
SE064 = playSeVer2( spep_2 + 648, 1213, "",spep_2 + 882, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 648, SE064, 46 );
SE065 = playSeVer2( spep_2 + 648, 1403, "",spep_2 + 884, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 648, SE065, 164 );
SE066 = playSeVer2( spep_2 + 758, 1406, "",spep_2 + 882, 0, 32, -1);

--爆発
SE067 = playSeVer2( spep_2 + 766, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 766, SE067, 67 );

--ラスト爆発
SE068 = playSeVer2( spep_2 + 844, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 844, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 792 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 896

end
