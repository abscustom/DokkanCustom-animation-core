--1029700:LR_孫悟飯(幼年期)/ピッコロ_必殺技：爆裂乱魔
--sp_effect_a1_00455
--sp2766

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163264;  --ef_001  開幕～悟飯飛び出し
SP_01b = 163265;  --ef_001b 開幕～悟飯飛び出し
SP_02  = 163268;  --ef_002  開幕～悟飯飛び出し
SP_02b = 163269;  --ef_002b 開幕～悟飯飛び出し

--エフェクト(敵)
SP_01r  = 163266;  --ef_001r  正面キック～フィニッシュ
SP_01br = 163267;  --ef_001br 正面キック～フィニッシュ
SP_02r  = 163270;  --ef_002r  正面キック～フィニッシュ
SP_02br = 163271;  --ef_002br 正面キック～フィニッシュ

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
]]
ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～悟飯飛び出し
-------------------------------------------------
MAX_FRAME_0 = 140;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～悟飯飛び出し(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～悟飯飛び出し(ef_001b)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1 , 116.8, 80.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 116.8, 80.2, 0 );

setScaleKey( spep_0 + 0, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 160, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE003 = playSeVer2( spep_0 + 10, 1344, "",spep_0 + 104, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );

--飛んでいく
SE004 = playSeVer2( spep_0 + 90, 1022, "",spep_0 + 164, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 90, SE004, 65 );
SE005 = playSeVer2( spep_0 + 90, 1182, "",spep_0 + 164, 0, 20, -1);
SE006 = playSeVer2( spep_0 + 90, 1117, "",spep_0 + 160, 0, 16, -1);
SE007 = playSeVer2( spep_0 + 90, 44, "",spep_0 + 158, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --140f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE009 = playSeVer2( spep_1 + 82, 1117, "",spep_1 + 144, 0, 18, -1);

-------------------------------------------------
-- 正面キック～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 780;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 正面キック～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 正面キック～フィニッシュ(ef_002b)
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
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 232 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 22 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 62 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 202 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 206 + OFFSET_X, 1, 106 );

a = -400;  --敵位置調整用
b = -100;  --敵位置調整用

setMoveKey( spep_2 + 0, 1, 334.1, -321.7 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 333.9, -321.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 333.9, -321.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 332.7, -321 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 332.7, -321 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 329.2, -319.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 329.2, -319.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 322.4, -316.6 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 322.4, -316.6 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 311.3, -311.8 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 311.3, -311.8 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 294.7, -304.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 294.7, -304.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 271.5, -294.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 271.5, -294.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 240.6, -281.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 240.6, -281.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 201, -264.4 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 201, -264.4 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 6.4, -277.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 6.4, -277.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 51.2, -205 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 51.2, -205 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 167, -104.7 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 167, -104.7 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 145, -89.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 145, -89.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 166.2, -109.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 166.2, -109.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 148.6, -103.1 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 148.6, -103.1 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 173.8, -88.8 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 173.8, -88.8 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 161.3, -95.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 161.3, -95.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 177.4, -107.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 177.4, -107.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 168, -95.9 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 168, -95.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 179.9, -93.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 179.9, -93.8 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 174.6, -101 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 174.6, -101 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 187.6, -96.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 187.6, -96.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 178.1, -93.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 178.1, -93.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 185.8, -97.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 185.8, -97.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 189.9, -97.8 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 189.9, -97.8 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 194.1, -98.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 194.1, -98.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 198.2, -99.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 198.2, -99.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 201, -99.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 201, -99.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 203.8, -99.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 203.8, -99.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 243.6, -38 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 243.6, -38 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 284.9, -84.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 284.9, -84.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 321.4, -73.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 321.4, -73.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 339.4, -107.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 339.4, -107.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 333.7, -100.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 333.7, -100.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 351.3, -124.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 351.3, -124.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 369, -113.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 369, -113.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 381.3, -132.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 381.3, -132.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 361.7, -122.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 361.7, -122.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 361.5, -139.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 361.5, -139.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 374.9, -119.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 374.9, -119.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 362.4, -127.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 362.4, -127.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 372.1, -129.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 372.1, -129.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 362.5, -124.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 362.5, -124.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 327.6, -320.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 327.6, -320.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 329.6, -321 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 329.6, -321 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 330.5, -320.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 330.5, -320.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 512.9, -69.4 + a , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 512.9, -69.4 + a , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 519.2, -51.9 + a , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 519.2, -51.9 + a , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 525.4, -34.4 + a , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 525.4, -34.4 + a , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 519.2, -50.7 + a , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 519.2, -50.7 + a , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 495, -84.9 + a , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 495, -84.9 + a , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 495, -79.9 + a , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 495, -79.9 + a , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 495, -74.9 + a , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 495, -74.9 + a , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 497.5, -83.7 + a , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 497.5, -83.7 + a , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 517.9, -74.4 + a , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 517.9, -74.4 + a , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 510.4, -63.2 + a , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 510.4, -63.2 + a , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 502.9, -51.9 + a , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 502.9, -51.9 + a , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 502.9, -70.6 + a , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 502.9, -70.6 + a , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 485, -107.4 + a , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 485, -107.4 + a , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 493.8, -103.6 + a , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 493.8, -103.6 + a , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 502.5, -99.9 + a , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 502.5, -99.9 + a , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 502.5, -87.4 + a , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 502.5, -87.4 + a , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 520.4, -57 + a , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 520.4, -57 + a , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 511.7, -71.9 + a , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 511.7, -71.9 + a , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 502.9, -86.9 + a , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 502.9, -86.9 + a , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 510.4, -89.4 + a , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 510.4, -89.4 + a , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 500, -109.9 + a , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 500, -109.9 + a , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 491.3, -108.7 + a , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 491.3, -108.7 + a , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 482.5, -107.4 + a , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 482.5, -107.4 + a , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 492.5, -88.7 + a , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 492.5, -88.7 + a , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 520.4, -52 + a , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 520.4, -52 + a , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 514.2, -55.7 + a , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 514.2, -55.7 + a , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 507.9, -59.5 + a , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 507.9, -59.5 + a , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 514.2, -70.7 + a , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 514.2, -70.7 + a , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 502.5, -100 + a , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 502.5, -100 + a , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 492.5, -101.2 + a , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 492.5, -101.2 + a , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 482.5, -102.5 + a , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 482.5, -102.5 + a , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 495, -85 + a , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 495, -85 + a , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 525.4, -49.5 + a , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 525.4, -49.5 + a , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 515.4, -55.7 + a , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 515.4, -55.7 + a , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 505.4, -62 + a , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 505.4, -62 + a , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 506.7, -69.5 + a , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 506.7, -69.5 + a , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 490, -95 + a , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 490, -95 + a , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 497.5, -100 + a , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 497.5, -100 + a , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 505, -105 + a , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 505, -105 + a , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 493.8, -90 + a , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 493.8, -90 + a , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 500.4, -57 + a , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 500.4, -57 + a , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 499.2, -68.2 + a , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 499.2, -68.2 + a , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 497.9, -79.5 + a , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 497.9, -79.5 + a , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 506.7, -79.5 + a , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 506.7, -79.5 + a , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 515.4, -79.5 + a , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 515.4, -79.5 + a , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 24.2, -12.7 + b , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 24.2, -12.7 + b , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 34.5, -14.7 + b , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 34.5, -14.7 + b , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 30.9, -17.9 + b , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 30.9, -17.9 + b , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 27.4, -21.2 + b , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 27.4, -21.2 + b , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 30.1, -17 + b , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 30.1, -17 + b , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 32.9, -12.8 + b , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 32.9, -12.8 + b , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 39.3, -11 + b , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 39.3, -11 + b , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 45.8, -9.3 + b , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 45.8, -9.3 + b , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 30.2, -3.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 30.2, -3.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -38, -103.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -38, -103.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 21.8, -87.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 21.8, -87.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 217.7, -255.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 217.7, -255.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 341.9, -450.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 341.9, -450.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 449.2, -587.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 449.2, -587.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 544.8, -709 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 544.8, -709 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 634.8, -833.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 634.8, -833.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 712.9, -943.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 712.9, -943.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 773, -1020.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 773, -1020.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 821.2, -1082.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 821.2, -1082.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 866.4, -1132 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 866.4, -1132 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 899.7, -1165.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 899.7, -1165.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 912.4, -1188.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 912.4, -1188.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 917, -1195.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 917, -1195.8 , 0 );

setScaleKey( spep_2 + 0, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 13.05, 13.05 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 13.05, 13.05 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.38, 2.38 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -57.3 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -57.3 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 68.1 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 68.1 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 72.1 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 72.1 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 75.5 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 75.5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 82 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 82 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 83.2 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 83.2 );

--敵の動き2
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 246 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 272 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, -284.9, 553.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -284.9, 553.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -282, 552.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -282, 552.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -279.1, 550.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -279.1, 550.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -275.9, 548 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -275.9, 548 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -271.9, 543.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -271.9, 543.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -266.3, 535.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -266.3, 535.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -257.3, 519.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -257.3, 519.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -246.4, 491.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -246.4, 491.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -226.4, 441.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -226.4, 441.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -193, 359.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -193, 359.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -140.7, 232 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -140.7, 232 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -62.5, 41.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -62.5, 41.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 49.9, -231.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 49.9, -231.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 84.4, -411.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 84.4, -411.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -35.8, -539.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -35.8, -539.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 92.8, -590.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 92.8, -590.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 32.1, -587.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 32.1, -587.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -24.9, -496.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -24.9, -496.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 33.6, -478.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 33.6, -478.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 91.1, -483 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 91.1, -483 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 53.9, -456.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 53.9, -456.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 16.9, -429.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 16.9, -429.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 59, -457.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 59, -457.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 101.2, -485.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 101.2, -485.6 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.71, 2.71 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, 74 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 74 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 102.7 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 102.7 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 94.3 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 94.3 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 89.3 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 89.3 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 87.6 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 87.6 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 89 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 89 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 89.5 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 89.5 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 89.6 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 89.6 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 88.6 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 88.6 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 87.6 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 87.6 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 86.6 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 86.6 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 85.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 85.7 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 10; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);

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
--キック
SE010 = playSeVer2( spep_2 + 4, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 16, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 16, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE012, 79 );

--パンチ
SE013 = playSeVer2( spep_2 + 44, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE013, 148 );
SE014 = playSeVer2( spep_2 + 52, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 52, 1110, "", 0, 0, 0, -1);

--連打
SE016 = playSeVer2( spep_2 + 84, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 84, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE017, 65 );
SE018 = playSeVer2( spep_2 + 98, 1010, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 98, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 112, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 112, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 128, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 128, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 128, SE023, 65 );
SE024 = playSeVer2( spep_2 + 144, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 162, 1010, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 162, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE028 = playSeVer2( spep_2 + 182, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 190, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_2 + 218, 1121, "",spep_2 + 302, 0, 34, -1);

--地面激突
SE031 = playSeVer2( spep_2 + 258, 1159, "",spep_2 + 392, 0, 72, -1);

--気ダメ
SE032 = playSeVer2( spep_2 + 316, 1035, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 316, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE033, 61 );

--連続気弾発射
SE034 = playSeVer2( spep_2 + 364, 1406, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 364, SE034, 138 );
SE035 = playSeVer2( spep_2 + 372, 1402, "", 0, 0, 0, 0.5);
SE036 = playSeVer2( spep_2 + 390, 1401, "", 0, 0, 0, 0.5);
SE037 = playSeVer2( spep_2 + 412, 1402, "", 0, 0, 0, 0.5);
SE039 = playSeVer2( spep_2 + 430, 1401, "", 0, 0, 0, 0.5);
SE041 = playSeVer2( spep_2 + 486, 1406, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 486, SE041, 136 );
SE042 = playSeVer2( spep_2 + 520, 1402, "", 0, 0, 0, 0.5);
SE043 = playSeVer2( spep_2 + 538, 1401, "", 0, 0, 0, 0.5);
SE044 = playSeVer2( spep_2 + 560, 1402, "", 0, 0, 0, 0.5);
SE045 = playSeVer2( spep_2 + 578, 1401, "", 0, 0, 0, 0.5);
SE047 = playSeVer2( spep_2 + 614, 1406, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 614, SE047, 133 );
SE049 = playSeVer2( spep_2 + 636, 1402, "", 0, 0, 0, 0.5);
SE050 = playSeVer2( spep_2 + 654, 1401, "", 0, 0, 0, 0.5);
SE051 = playSeVer2( spep_2 + 676, 1402, "", 0, 0, 0, 0.5);
SE052 = playSeVer2( spep_2 + 694, 1401, "", 0, 0, 0, 0.5);

--連続爆発
SE038 = playSeVer2( spep_2 + 412, 1023, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 440, 1024, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 594, 1024, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 622, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 622, SE048, 69 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 662); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  780f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕～悟飯飛び出し
-------------------------------------------------
MAX_FRAME_0 = 140;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕～悟飯飛び出し(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開幕～悟飯飛び出し(ef_001br)
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
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo,105, 515.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1 , 116.8, 80.2 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 116.8, 80.2, 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 116.8, 80.2, 0 );

setScaleKey( spep_0 + 0, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 160, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE003 = playSeVer2( spep_0 + 10, 1344, "",spep_0 + 104, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );

--飛んでいく
SE004 = playSeVer2( spep_0 + 90, 1022, "",spep_0 + 164, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 90, SE004, 65 );
SE005 = playSeVer2( spep_0 + 90, 1182, "",spep_0 + 164, 0, 20, -1);
SE006 = playSeVer2( spep_0 + 90, 1117, "",spep_0 + 160, 0, 16, -1);
SE007 = playSeVer2( spep_0 + 90, 44, "",spep_0 + 158, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --140f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE009 = playSeVer2( spep_1 + 82, 1117, "",spep_1 + 144, 0, 18, -1);

-------------------------------------------------
-- 正面キック～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 780;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 正面キック～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 正面キック～フィニッシュ(ef_002br)
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
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 232 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );
changeAnime( spep_2 + 22 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 62 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 96 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 202 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 206 + OFFSET_X, 1, 106 );

a = -400;  --敵位置調整用
b = -100;  --敵位置調整用

setMoveKey( spep_2 + 0, 1, 334.1, -321.7 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 333.9, -321.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 333.9, -321.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 332.7, -321 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 332.7, -321 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 329.2, -319.5 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 329.2, -319.5 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 322.4, -316.6 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 322.4, -316.6 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 311.3, -311.8 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 311.3, -311.8 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 294.7, -304.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 294.7, -304.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 271.5, -294.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 271.5, -294.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 240.6, -281.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 240.6, -281.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 201, -264.4 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 201, -264.4 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 6.4, -277.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 6.4, -277.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 51.2, -205 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 51.2, -205 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 167, -104.7 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 167, -104.7 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 145, -89.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 145, -89.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 166.2, -109.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 166.2, -109.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 148.6, -103.1 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 148.6, -103.1 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 173.8, -88.8 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 173.8, -88.8 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 161.3, -95.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 161.3, -95.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 177.4, -107.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 177.4, -107.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 168, -95.9 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 168, -95.9 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 179.9, -93.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 179.9, -93.8 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 174.6, -101 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 174.6, -101 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 187.6, -96.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 187.6, -96.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 178.1, -93.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 178.1, -93.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 185.8, -97.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 185.8, -97.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 189.9, -97.8 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 189.9, -97.8 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 194.1, -98.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 194.1, -98.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 198.2, -99.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 198.2, -99.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 201, -99.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 201, -99.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 203.8, -99.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 203.8, -99.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 243.6, -38 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 243.6, -38 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 284.9, -84.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 284.9, -84.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 321.4, -73.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 321.4, -73.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 339.4, -107.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 339.4, -107.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 333.7, -100.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 333.7, -100.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 351.3, -124.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 351.3, -124.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 369, -113.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 369, -113.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 381.3, -132.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 381.3, -132.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 361.7, -122.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 361.7, -122.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 361.5, -139.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 361.5, -139.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 374.9, -119.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 374.9, -119.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 362.4, -127.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 362.4, -127.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 372.1, -129.1 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 372.1, -129.1 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 362.5, -124.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 362.5, -124.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 327.6, -320.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 327.6, -320.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 329.6, -321 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 329.6, -321 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 330.5, -320.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 330.5, -320.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 512.9, -69.4 + a , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 512.9, -69.4 + a , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 519.2, -51.9 + a , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 519.2, -51.9 + a , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 525.4, -34.4 + a , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 525.4, -34.4 + a , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 519.2, -50.7 + a , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 519.2, -50.7 + a , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 495, -84.9 + a , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 495, -84.9 + a , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 495, -79.9 + a , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 495, -79.9 + a , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 495, -74.9 + a , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 495, -74.9 + a , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 497.5, -83.7 + a , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 497.5, -83.7 + a , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 517.9, -74.4 + a , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 517.9, -74.4 + a , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 510.4, -63.2 + a , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 510.4, -63.2 + a , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 502.9, -51.9 + a , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 502.9, -51.9 + a , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 502.9, -70.6 + a , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 502.9, -70.6 + a , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 485, -107.4 + a , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 485, -107.4 + a , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 493.8, -103.6 + a , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 493.8, -103.6 + a , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 502.5, -99.9 + a , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 502.5, -99.9 + a , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 502.5, -87.4 + a , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 502.5, -87.4 + a , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 520.4, -57 + a , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 520.4, -57 + a , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 511.7, -71.9 + a , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 511.7, -71.9 + a , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 502.9, -86.9 + a , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 502.9, -86.9 + a , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 510.4, -89.4 + a , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 510.4, -89.4 + a , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 500, -109.9 + a , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 500, -109.9 + a , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 491.3, -108.7 + a , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 491.3, -108.7 + a , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 482.5, -107.4 + a , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 482.5, -107.4 + a , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 492.5, -88.7 + a , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 492.5, -88.7 + a , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 520.4, -52 + a , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 520.4, -52 + a , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 514.2, -55.7 + a , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 514.2, -55.7 + a , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 507.9, -59.5 + a , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 507.9, -59.5 + a , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 514.2, -70.7 + a , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 514.2, -70.7 + a , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 502.5, -100 + a , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 502.5, -100 + a , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 492.5, -101.2 + a , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 492.5, -101.2 + a , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 482.5, -102.5 + a , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 482.5, -102.5 + a , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 495, -85 + a , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 495, -85 + a , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 525.4, -49.5 + a , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 525.4, -49.5 + a , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 515.4, -55.7 + a , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 515.4, -55.7 + a , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 505.4, -62 + a , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 505.4, -62 + a , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 506.7, -69.5 + a , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 506.7, -69.5 + a , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 490, -95 + a , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 490, -95 + a , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 497.5, -100 + a , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 497.5, -100 + a , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 505, -105 + a , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 505, -105 + a , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 493.8, -90 + a , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 493.8, -90 + a , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 500.4, -57 + a , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 500.4, -57 + a , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 499.2, -68.2 + a , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 499.2, -68.2 + a , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 497.9, -79.5 + a , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 497.9, -79.5 + a , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 506.7, -79.5 + a , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 506.7, -79.5 + a , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 515.4, -79.5 + a , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 515.4, -79.5 + a , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 24.2, -12.7 + b , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 24.2, -12.7 + b , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 34.5, -14.7 + b , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 34.5, -14.7 + b , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 30.9, -17.9 + b , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 30.9, -17.9 + b , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 27.4, -21.2 + b , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 27.4, -21.2 + b , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 30.1, -17 + b , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 30.1, -17 + b , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 32.9, -12.8 + b , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 32.9, -12.8 + b , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 39.3, -11 + b , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 39.3, -11 + b , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 45.8, -9.3 + b , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 45.8, -9.3 + b , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 30.2, -3.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 30.2, -3.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -38, -103.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -38, -103.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 21.8, -87.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 21.8, -87.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 217.7, -255.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 217.7, -255.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 341.9, -450.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 341.9, -450.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 449.2, -587.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 449.2, -587.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 544.8, -709 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 544.8, -709 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 634.8, -833.8 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 634.8, -833.8 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 712.9, -943.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 712.9, -943.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 773, -1020.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 773, -1020.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 821.2, -1082.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 821.2, -1082.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 866.4, -1132 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 866.4, -1132 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 899.7, -1165.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 899.7, -1165.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 912.4, -1188.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 912.4, -1188.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 917, -1195.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 917, -1195.8 , 0 );

setScaleKey( spep_2 + 0, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 13.05, 13.05 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 13.05, 13.05 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.38, 2.38 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -57.3 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -57.3 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 45.8 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 63.4 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 68.1 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 68.1 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 72.1 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 72.1 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 75.5 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 75.5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 82 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 82 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 83.2 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 83.2 );

--敵の動き2
setDisp( spep_2 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 294 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 246 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 272 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 246 + OFFSET_X, 1, -284.9, 553.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -284.9, 553.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -282, 552.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -282, 552.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -279.1, 550.3 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -279.1, 550.3 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -275.9, 548 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -275.9, 548 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -271.9, 543.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -271.9, 543.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -266.3, 535.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -266.3, 535.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -257.3, 519.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -257.3, 519.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -246.4, 491.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -246.4, 491.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -226.4, 441.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -226.4, 441.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -193, 359.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -193, 359.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -140.7, 232 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -140.7, 232 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -62.5, 41.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -62.5, 41.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 49.9, -231.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 49.9, -231.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 84.4, -411.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 84.4, -411.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -35.8, -539.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -35.8, -539.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 92.8, -590.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 92.8, -590.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 32.1, -587.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 32.1, -587.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -24.9, -496.7 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -24.9, -496.7 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 33.6, -478.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 33.6, -478.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 91.1, -483 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 91.1, -483 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 53.9, -456.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 53.9, -456.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 16.9, -429.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 16.9, -429.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 59, -457.7 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 59, -457.7 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 101.2, -485.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 101.2, -485.6 , 0 );

setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 2.71, 2.71 );

setRotateKey( spep_2 + 246 + OFFSET_X, 1, 74 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, 74 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, 102.7 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 102.7 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 94.3 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 94.3 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 89.3 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, 89.3 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, 87.6 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, 87.6 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, 89 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 89 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 89.5 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 89.5 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 89.6 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, 89.6 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, 88.6 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 88.6 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 87.6 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, 87.6 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 86.6 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, 86.6 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, 85.7 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 85.7 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 10; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE009, 0);

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
--キック
SE010 = playSeVer2( spep_2 + 4, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 16, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 16, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE012, 79 );

--パンチ
SE013 = playSeVer2( spep_2 + 44, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE013, 148 );
SE014 = playSeVer2( spep_2 + 52, 1009, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 52, 1110, "", 0, 0, 0, -1);

--連打
SE016 = playSeVer2( spep_2 + 84, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 84, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE017, 65 );
SE018 = playSeVer2( spep_2 + 98, 1010, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 98, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 112, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 112, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 128, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 128, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 128, SE023, 65 );
SE024 = playSeVer2( spep_2 + 144, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 162, 1010, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 162, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE028 = playSeVer2( spep_2 + 182, 1004, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 190, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE030 = playSeVer2( spep_2 + 218, 1121, "",spep_2 + 302, 0, 34, -1);

--地面激突
SE031 = playSeVer2( spep_2 + 258, 1159, "",spep_2 + 392, 0, 72, -1);

--気ダメ
SE032 = playSeVer2( spep_2 + 316, 1035, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 316, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 316, SE033, 61 );

--連続気弾発射
SE034 = playSeVer2( spep_2 + 364, 1406, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 364, SE034, 138 );
SE035 = playSeVer2( spep_2 + 372, 1402, "", 0, 0, 0, 0.5);
SE036 = playSeVer2( spep_2 + 390, 1401, "", 0, 0, 0, 0.5);
SE037 = playSeVer2( spep_2 + 412, 1402, "", 0, 0, 0, 0.5);
SE039 = playSeVer2( spep_2 + 430, 1401, "", 0, 0, 0, 0.5);
SE041 = playSeVer2( spep_2 + 486, 1406, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 486, SE041, 136 );
SE042 = playSeVer2( spep_2 + 520, 1402, "", 0, 0, 0, 0.5);
SE043 = playSeVer2( spep_2 + 538, 1401, "", 0, 0, 0, 0.5);
SE044 = playSeVer2( spep_2 + 560, 1402, "", 0, 0, 0, 0.5);
SE045 = playSeVer2( spep_2 + 578, 1401, "", 0, 0, 0, 0.5);
SE047 = playSeVer2( spep_2 + 614, 1406, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 614, SE047, 133 );
SE049 = playSeVer2( spep_2 + 636, 1402, "", 0, 0, 0, 0.5);
SE050 = playSeVer2( spep_2 + 654, 1401, "", 0, 0, 0, 0.5);
SE051 = playSeVer2( spep_2 + 676, 1402, "", 0, 0, 0, 0.5);
SE052 = playSeVer2( spep_2 + 694, 1401, "", 0, 0, 0, 0.5);

--連続爆発
SE038 = playSeVer2( spep_2 + 412, 1023, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 440, 1024, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 594, 1024, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 622, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 622, SE048, 69 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 662); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  780f -4


end
