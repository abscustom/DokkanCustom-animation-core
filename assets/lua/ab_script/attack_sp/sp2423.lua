--1024820:URクウラ(最終形態)_デスブレイカー
--sp_effect_b1_00209

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 160398;  --敵に迫る    ef_001_front
SP_02 = 160400;  --敵に迫る    ef_001_back
SP_03 = 160401;  --膝蹴り→叩き落とし   ef_002_front
SP_04 = 160403;  --膝蹴り→叩き落とし   ef_002_back

--敵側
SP_01r = 160399;  --敵に迫る    ef_001_front_re
SP_03r = 160402;  --膝蹴り→叩き落とし   ef_002_front_re

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵に迫る→膝蹴り(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 84, 0x100, -1, 0, 0, 0 );  --敵に迫る→膝蹴り    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 84, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 84, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 84, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 84 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 84, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 84, 0x80, -1, 0, 0, 0 );  --敵に迫る→膝蹴り ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 84, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 84, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 84, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 84 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 84, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 84, 1, 0 );

setMoveKey( spep_0 + 0, 1, 207.1, 24.5 , 0 );
setMoveKey( spep_0 + 1, 1, 204.29, 19.11 , 0 );
setMoveKey( spep_0 + 2, 1, 201.48, 13.72 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 198.67, 8.33 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 195.86, 2.94 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 193.05, -2.45 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 190.24, -7.84 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 187.43, -13.23 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 184.62, -18.62 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 181.81, -24.01 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 179, -29.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 176.19, -34.79 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 173.38, -40.18 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 170.57, -45.57 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 167.76, -50.96 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 164.95, -56.35 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 162.14, -61.74 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 159.33, -67.13 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 156.52, -72.52 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 153.71, -77.91 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 150.9, -83.3 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 148.09, -88.69 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 145.28, -94.08 , 0 );
--setMoveKey( spep_0 -3 + 54, 1, 152.87, -79.61 , 0 );
--setMoveKey( spep_0 -3 + 56, 1, 151, -83.2 , 0 );
--setMoveKey( spep_0 -3 + 58, 1, 149.13, -86.79 , 0 );
--setMoveKey( spep_0 -3 + 60, 1, 147.26, -90.38 , 0 );
--setMoveKey( spep_0 -3 + 62, 1, 145.28, -94.08 , 0 );
--setMoveKey( spep_0 -3 + 64, 1, 101.1, -82.7 , 0 );
--setMoveKey( spep_0 -3 + 66, 1, 100.5, -83.7 , 0 );
--setMoveKey( spep_0 -3 + 68, 1, 100, -84.7 , 0 );
--setMoveKey( spep_0 -3 + 70, 1, 99.5, -85.6 , 0 );
--setMoveKey( spep_0 -3 + 72, 1, 98.9, -86.6 , 0 );
--setMoveKey( spep_0 -3 + 74, 1, 98.4, -87.5 , 0 );
--setMoveKey( spep_0 -3 + 76, 1, 97.9, -88.5 , 0 );
--setMoveKey( spep_0 -3 + 78, 1, 97.3, -89.5 , 0 );
--setMoveKey( spep_0 -3 + 80, 1, 96.8, -90.4 , 0 );
--setMoveKey( spep_0 -3 + 82, 1, 96.3, -91.4 , 0 );
--setMoveKey( spep_0 -3 + 84, 1, 95.7, -92.3 , 0 );
--setMoveKey( spep_0 -3 + 86, 1, 95.2, -93.3 , 0 );
setMoveKey( spep_0 -3 + 87, 1, 145.28, -94.08 , 0 );

s1 = 0.4;
setScaleKey( spep_0 + 0, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 1, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 2, 1, 2.11, 2.11 );
setScaleKey( spep_0 -3 + 6, 1, 1.99 +0.1, 1.99 +0.1 );
setScaleKey( spep_0 -3 + 7, 1, 1.99 +0.1, 1.99 +0.1 );
setScaleKey( spep_0 -3 + 8, 1, 1.86 +0.2, 1.86 +0.2 );
setScaleKey( spep_0 -3 + 9, 1, 1.86 +0.2, 1.86 +0.2 );
setScaleKey( spep_0 -3 + 10, 1, 1.74 +0.3, 1.74 +0.3 );
setScaleKey( spep_0 -3 + 12, 1, 1.62+0.37, 1.62+0.37 );
setScaleKey( spep_0 -3 + 14, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 -3 + 16, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 -3 + 18, 1, 1.4 +s1, 1.4 +s1 );
setScaleKey( spep_0 -3 + 20, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_0 -3 + 22, 1, 1.34 +s1, 1.34 +s1 );
setScaleKey( spep_0 -3 + 24, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_0 -3 + 26, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_0 -3 + 28, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_0 -3 + 30, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_0 -3 + 32, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_0 -3 + 34, 1, 1.24 +s1, 1.24 +s1 );
setScaleKey( spep_0 -3 + 36, 1, 1.22 +s1, 1.22 +s1 );
setScaleKey( spep_0 -3 + 38, 1, 1.21 +s1, 1.21 +s1 );
setScaleKey( spep_0 -3 + 40, 1, 1.19 +s1, 1.19 +s1 );
setScaleKey( spep_0 -3 + 42, 1, 1.18 +s1, 1.18 +s1 );
setScaleKey( spep_0 -3 + 44, 1, 1.14 +s1, 1.14 +s1 );
setScaleKey( spep_0 -3 + 46, 1, 1.13 +s1, 1.13 +s1 );
setScaleKey( spep_0 -3 + 48, 1, 1.11 +s1, 1.11 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 1.1 +s1, 1.1 +s1 );
setScaleKey( spep_0 -3 + 52, 1, 1.09 +s1, 1.09 +s1 );
setScaleKey( spep_0 -3 + 54, 1, 1.08 +s1, 1.08 +s1 );
setScaleKey( spep_0 -3 + 56, 1, 1.07 +s1, 1.07 +s1 );
setScaleKey( spep_0 -3 + 58, 1, 1.06 +s1, 1.06 +s1 );
setScaleKey( spep_0 -3 + 60, 1, 1.06 +s1, 1.06 +s1 );
setScaleKey( spep_0 -3 + 62, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_0 -3 + 72, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_0 -3 + 74, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_0 -3 + 84, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_0 -3 + 86, 1, 1.03 +s1, 1.03 +s1 );
setScaleKey( spep_0 -3 + 87, 1, 1.03 +s1, 1.03 +s1 );

setRotateKey( spep_0 + 0, 1, -6.2 );
setRotateKey( spep_0 + 1, 1, -6.1 );
setRotateKey( spep_0 + 2, 1, -5.9 );
setRotateKey( spep_0 -3 + 6, 1, -5.8 );
setRotateKey( spep_0 -3 + 7, 1, -5.8 );
setRotateKey( spep_0 -3 + 8, 1, -5.6 );
setRotateKey( spep_0 -3 + 9, 1, -5.6 );
setRotateKey( spep_0 -3 + 10, 1, -5.5 );
setRotateKey( spep_0 -3 + 12, 1, -5.4 );
setRotateKey( spep_0 -3 + 14, 1, -5.2 );
setRotateKey( spep_0 -3 + 60, 1, -5.2 );
--setRotateKey( spep_0 -3 + 62, 1, -5.1 );
--setRotateKey( spep_0 -3 + 64, 1, -5.1 );
--setRotateKey( spep_0 -3 + 66, 1, -5 );
--setRotateKey( spep_0 -3 + 68, 1, -5 );
--setRotateKey( spep_0 -3 + 70, 1, -4.9 );
--setRotateKey( spep_0 -3 + 72, 1, -4.9 );
--setRotateKey( spep_0 -3 + 74, 1, -4.8 );
--setRotateKey( spep_0 -3 + 76, 1, -4.8 );
--setRotateKey( spep_0 -3 + 78, 1, -4.7 );
--setRotateKey( spep_0 -3 + 80, 1, -4.7 );
--setRotateKey( spep_0 -3 + 82, 1, -4.6 );
--setRotateKey( spep_0 -3 + 84, 1, -4.6 );
--setRotateKey( spep_0 -3 + 86, 1, -4.5 );
setRotateKey( spep_0 -3 + 87, 1, -5.2 );

-- ** 音 ** --
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 44, 0, 20, -1);
SE002 = playSeVer2( spep_0 + 2, 1182, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 75 );
setStartTimeMs( SE002,  67 );
SE003 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( spep_0 + 74, 1245, "",spep_0 + 100 -2, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 45 );
SE006 = playSeVer2( spep_0 + 76, 43, "",spep_0 + 100 -2, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 84 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 84;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 膝で押す→湖へ突進(360F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
knees_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --膝で押す→湖へ突進  ef_002_front
setEffMoveKey( spep_2 + 0, knees_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 420, knees_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, knees_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 420, knees_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knees_f, 0 );
setEffRotateKey( spep_2 + 420, knees_f, 0 );
setEffAlphaKey( spep_2 + 0, knees_f, 255 );
setEffAlphaKey( spep_2 + 420, knees_f, 255 );

kneez_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --膝で押す→湖へ突進   ef_002_back
setEffMoveKey( spep_2 + 0, kneez_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 420, kneez_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kneez_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 420, kneez_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kneez_b, 0 );
setEffRotateKey( spep_2 + 420, kneez_b, 0 );
setEffAlphaKey( spep_2 + 0, kneez_b, 255 );
setEffAlphaKey( spep_2 + 420, kneez_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 46, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 -3 + 38, 1, 8 );

setMoveKey( spep_2 + 0, 1, 161.2, 17.2 , 0 );
setMoveKey( spep_2 + 1, 1, 159.3, 17.2 , 0 );
setMoveKey( spep_2 + 2, 1, 157.4, 17.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 155.6, 17.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 153.7, 17.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 151.8, 17.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 149.9, 17.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 148.1, 17.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 146.2, 17.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.85, 1.85 );

setRotateKey( spep_2 + 0, 1, -4.3 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 420 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 146.2, 17.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 144.3, 17.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 142.4, 17.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 140.6, 17.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 138.7, 17.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 136.8, 17.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.85, 1.85 );
    setScaleKey( SP_dodge + 10, 1, 1.85, 1.85 );

    setRotateKey( SP_dodge + 0, 1, -4.3 );
    setRotateKey( SP_dodge + 10, 1, -4.3 );
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

setMoveKey( spep_2 -3 + 18, 1, 144.3, 17.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 142.4, 17.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 140.6, 17.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 138.7, 17.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 136.8, 17.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 134.9, 17.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 133.1, 17.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 131.2, 17.2 , 0 );
setMoveKey( spep_2 -3 + 37, 1, 131.2, 17.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -78.7, -109.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -78.7, -109.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -562.6, -407.7 , 0 );
setMoveKey( spep_2 -3 + 45, 1, -562.6, -407.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -562.6, -407.7 , 0 );

setScaleKey( spep_2 -3 + 37, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 38, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 45, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 46, 1, 2.29, 2.29 );

setRotateKey( spep_2 -3 + 37, 1, -4.3 );
setRotateKey( spep_2 -3 + 38, 1, -39.7 );
setRotateKey( spep_2 -3 + 45, 1, -39.7 );
setRotateKey( spep_2 -3 + 46, 1, -39.7 );

-- ** 敵キャラクター ** --
f1 = 60;
setDisp( spep_2 +f1 -3 + 0, 1, 1 );
setDisp( spep_2 +f1 -3 + 208, 1, 0 );

changeAnime( spep_2 +f1 -3 + 0, 1, 8 );
changeAnime( spep_2 +f1 -3 + 96, 1, 6 );
changeAnime( spep_2 +f1 -3 + 202, 1, 8 );
changeAnime( spep_2 +f1 -3 + 204, 1, 6 );

setMoveKey( spep_2 +f1 -3 + 0, 1, -11.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 2, 1, -15.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 4, 1, -19.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 6, 1, -23.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 8, 1, -27.2, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 10, 1, -31, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 12, 1, -34.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 14, 1, -38.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 16, 1, -42.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 18, 1, -46.2, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 20, 1, -50, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 22, 1, -53.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 24, 1, -57.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 26, 1, -61.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 28, 1, -65.2, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 30, 1, -69, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 32, 1, -72.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 34, 1, -76.7, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 36, 1, -80.5, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 38, 1, -84.3, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 40, 1, -88.1, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 42, 1, -91.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 44, 1, -95.7, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 46, 1, -99.5, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 48, 1, -103.3, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 50, 1, -107.1, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 52, 1, -110.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 54, 1, -114.7, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 56, 1, -118.5, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 58, 1, -122.3, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 60, 1, -126.1, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 62, 1, -130, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 64, 1, -133.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 66, 1, -137.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 68, 1, -141.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 70, 1, -145.2, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 72, 1, -149, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 74, 1, -152.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 76, 1, -156.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 78, 1, -160.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 80, 1, -159.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 83, 1, -161.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 86, 1, -354.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 87, 1, -354.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 88, 1, 42, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 89, 1, 42, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 90, 1, -322.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 91, 1, -322.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 92, 1, 13, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 93, 1, 13, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 94, 1, -272.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 95, 1, -272.9, -29.5 , 0 );--
setMoveKey( spep_2 +f1 -3 + 96, 1, -22.5, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 97, 1, -22.5, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 98, 1, -216.4, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 99, 1, -216.4, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 100, 1, -217.4, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 101, 1, -217.4, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 102, 1, -60.5, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 103, 1, -60.5, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 104, 1, -191.4, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 105, 1, -191.4, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 106, 1, -97.5, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 107, 1, -97.5, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 108, 1, -167.4, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 109, 1, -167.4, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 110, 1, -122.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 111, 1, -122.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 112, 1, -158.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 113, 1, -158.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 114, 1, -136.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 115, 1, -136.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 116, 1, -170.7, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 117, 1, -170.7, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 118, 1, -160.7, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 119, 1, -160.7, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 120, 1, -166.6, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 122, 1, -162.6, -47.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 124, 1, -162.1, -48 , 0 );
setMoveKey( spep_2 +f1 -3 + 126, 1, -161.7, -48.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 128, 1, -161.2, -49.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 130, 1, -160.7, -49.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 132, 1, -160.3, -50.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 134, 1, -159.8, -51 , 0 );
setMoveKey( spep_2 +f1 -3 + 136, 1, -159.3, -51.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 138, 1, -158.8, -52.1 , 0 );
setMoveKey( spep_2 +f1 -3 + 140, 1, -158.4, -52.7 , 0 );
setMoveKey( spep_2 +f1 -3 + 142, 1, -157.9, -53.3 , 0 );
setMoveKey( spep_2 +f1 -3 + 144, 1, -157.4, -53.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 146, 1, -157, -54.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 148, 1, -156.5, -55 , 0 );
setMoveKey( spep_2 +f1 -3 + 150, 1, -156, -55.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 152, 1, -155.5, -56.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 158, 1, -155.5, -56.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 160, 1, -156.7, -61.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 164, 1, -156.7, -61.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 166, 1, -157.9, -64.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 170, 1, -157.9, -64.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 172, 1, -161.1, -70.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 176, 1, -161.1, -70.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 178, 1, -166.5, -73.1 , 0 );
setMoveKey( spep_2 +f1 -3 + 180, 1, -166.5, -73.1 , 0 );
setMoveKey( spep_2 +f1 -3 + 182, 1, -169.6, -76.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 186, 1, -169.6, -76.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 188, 1, -170.4, -85.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 192, 1, -170.4, -85.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 194, 1, -175.4, -88.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 200, 1, -175.4, -88.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 201, 1, -175.4, -88.4 , 0 );--
setMoveKey( spep_2 +f1 -3 + 202, 1, -112.7, -67.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 203, 1, -112.7, -67.2 , 0 );--
setMoveKey( spep_2 +f1 -3 + 204, 1, -7.3, -630 , 0 );
setMoveKey( spep_2 +f1 -3 + 208, 1, -7.3, -630 , 0 );--

s2 = 0.2;
setScaleKey( spep_2 +f1 -3 + 0, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 2, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 4, 1, 1.99 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 10, 1, 1.99 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 12, 1, 1.98 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 18, 1, 1.98 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 20, 1, 1.97 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 26, 1, 1.97 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 28, 1, 1.96 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 34, 1, 1.96 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 36, 1, 1.95 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 42, 1, 1.95 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 44, 1, 1.94 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 50, 1, 1.94 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 52, 1, 1.93 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 58, 1, 1.93 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 60, 1, 1.92 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 66, 1, 1.92 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 68, 1, 1.91 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 74, 1, 1.91 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 76, 1, 1.9 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 78, 1, 1.9 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 80, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 83, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 95, 1, 2 +s2, 2 +s2 );--
setScaleKey( spep_2 +f1 -3 + 96, 1, 1.8 +0.05, 1.8 +0.05 );
setScaleKey( spep_2 +f1 -3 + 200, 1, 1.8 +0.05, 1.8 +0.05 );
setScaleKey( spep_2 +f1 -3 + 201, 1, 1.8 +0.05, 1.8 +0.05 );--
setScaleKey( spep_2 +f1 -3 + 202, 1, 2.02 +s2, 2.02 +s2 );
setScaleKey( spep_2 +f1 -3 + 203, 1, 2.02 +s2, 2.02 +s2 );--
setScaleKey( spep_2 +f1 -3 + 204, 1, 2, 2 );
setScaleKey( spep_2 +f1 -3 + 208, 1, 2, 2 );--

setRotateKey( spep_2 +f1 -3 + 0, 1, 0 );
setRotateKey( spep_2 +f1 -3 + 83, 1, 0 );
setRotateKey( spep_2 +f1 -3 + 85, 1, 0 );
setRotateKey( spep_2 +f1 -3 + 86, 1, -15.8 );
setRotateKey( spep_2 +f1 -3 + 95, 1, -15.8 );
setRotateKey( spep_2 +f1 -3 + 96, 1, 34.8 );
setRotateKey( spep_2 +f1 -3 + 102, 1, 34.8 );
setRotateKey( spep_2 +f1 -3 + 104, 1, 41.6 );
setRotateKey( spep_2 +f1 -3 + 108, 1, 41.6 );
setRotateKey( spep_2 +f1 -3 + 110, 1, 45.6 );
setRotateKey( spep_2 +f1 -3 + 114, 1, 45.6 );
setRotateKey( spep_2 +f1 -3 + 116, 1, 57.4 );
setRotateKey( spep_2 +f1 -3 + 120, 1, 57.4 );
setRotateKey( spep_2 +f1 -3 + 122, 1, 61.9 );
setRotateKey( spep_2 +f1 -3 + 124, 1, 62.4 );
setRotateKey( spep_2 +f1 -3 + 126, 1, 62.8 );
setRotateKey( spep_2 +f1 -3 + 128, 1, 63.3 );
setRotateKey( spep_2 +f1 -3 + 130, 1, 63.8 );
setRotateKey( spep_2 +f1 -3 + 132, 1, 64.2 );
setRotateKey( spep_2 +f1 -3 + 134, 1, 64.7 );
setRotateKey( spep_2 +f1 -3 + 136, 1, 65.2 );
setRotateKey( spep_2 +f1 -3 + 138, 1, 65.6 );
setRotateKey( spep_2 +f1 -3 + 140, 1, 66.1 );
setRotateKey( spep_2 +f1 -3 + 142, 1, 66.6 );
setRotateKey( spep_2 +f1 -3 + 144, 1, 67 );
setRotateKey( spep_2 +f1 -3 + 146, 1, 67.5 );
setRotateKey( spep_2 +f1 -3 + 148, 1, 68 );
setRotateKey( spep_2 +f1 -3 + 150, 1, 68.4 );
setRotateKey( spep_2 +f1 -3 + 152, 1, 68.9 );
setRotateKey( spep_2 +f1 -3 + 158, 1, 68.9 );
setRotateKey( spep_2 +f1 -3 + 160, 1, 71.8 );
setRotateKey( spep_2 +f1 -3 + 164, 1, 71.8 );
setRotateKey( spep_2 +f1 -3 + 166, 1, 74.8 );
setRotateKey( spep_2 +f1 -3 + 170, 1, 74.8 );
setRotateKey( spep_2 +f1 -3 + 172, 1, 77.8 );
setRotateKey( spep_2 +f1 -3 + 176, 1, 77.8 );
setRotateKey( spep_2 +f1 -3 + 178, 1, 81.7 );
setRotateKey( spep_2 +f1 -3 + 180, 1, 81.7 );
setRotateKey( spep_2 +f1 -3 + 182, 1, 84.7 );
setRotateKey( spep_2 +f1 -3 + 186, 1, 84.7 );
setRotateKey( spep_2 +f1 -3 + 188, 1, 87 );
setRotateKey( spep_2 +f1 -3 + 192, 1, 87 );
setRotateKey( spep_2 +f1 -3 + 194, 1, 90.4 );
setRotateKey( spep_2 +f1 -3 + 200, 1, 90.4 );
setRotateKey( spep_2 +f1 -3 + 201, 1, 90.4 );--
setRotateKey( spep_2 +f1 -3 + 202, 1, 83 );
setRotateKey( spep_2 +f1 -3 + 203, 1, 83 );--
setRotateKey( spep_2 +f1 -3 + 204, 1, 231.6 );
setRotateKey( spep_2 +f1 -3 + 208, 1, 231.6 );--

-- ** 敵キャラクター ** --
setDisp( spep_2 +f1 -3 + 220, 1, 1 );
setDisp( spep_2 +f1 -3 + 242, 1, 0 );

changeAnime( spep_2 +f1 -3 + 220, 1, 5 );

setMoveKey( spep_2 +f1 -3 + 220, 1, 78.7, -75 , 0 );
setMoveKey( spep_2 +f1 -3 + 222, 1, 89.3, -87.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 224, 1, 97.5, -97.3 , 0 );
setMoveKey( spep_2 +f1 -3 + 226, 1, 103.8, -104.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 228, 1, 108.5, -110.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 230, 1, 111.8, -114.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 232, 1, 114, -117.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 234, 1, 115.4, -118.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 236, 1, 116, -119.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 238, 1, 116.3, -119.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 240, 1, 116.3, -120 , 0 );
setMoveKey( spep_2 +f1 -3 + 242, 1, 116.3, -120 , 0 );

setScaleKey( spep_2 +f1 -3 + 220, 1, 0.27, 0.27 );
setScaleKey( spep_2 +f1 -3 + 222, 1, 0.22, 0.22 );
setScaleKey( spep_2 +f1 -3 + 224, 1, 0.18, 0.18 );
setScaleKey( spep_2 +f1 -3 + 226, 1, 0.15, 0.15 );
setScaleKey( spep_2 +f1 -3 + 228, 1, 0.13, 0.13 );
setScaleKey( spep_2 +f1 -3 + 230, 1, 0.11, 0.11 );
setScaleKey( spep_2 +f1 -3 + 232, 1, 0.1, 0.1 );
setScaleKey( spep_2 +f1 -3 + 234, 1, 0.09, 0.09 );
setScaleKey( spep_2 +f1 -3 + 242, 1, 0.09, 0.09 );

setRotateKey( spep_2 +f1 -3 + 220, 1, 70.6 );
setRotateKey( spep_2 +f1 -3 + 222, 1, 77.1 );
setRotateKey( spep_2 +f1 -3 + 224, 1, 82.2 );
setRotateKey( spep_2 +f1 -3 + 226, 1, 86.3 );
setRotateKey( spep_2 +f1 -3 + 228, 1, 89.3 );
setRotateKey( spep_2 +f1 -3 + 230, 1, 91.5 );
setRotateKey( spep_2 +f1 -3 + 232, 1, 93 );
setRotateKey( spep_2 +f1 -3 + 234, 1, 93.9 );
setRotateKey( spep_2 +f1 -3 + 236, 1, 94.3 );
setRotateKey( spep_2 +f1 -3 + 238, 1, 94.5 );
setRotateKey( spep_2 +f1 -3 + 242, 1, 94.5 );

-- ** 音 ** --
--飛び膝蹴り
SE008 = playSeVer2( spep_2 + 20, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 26, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE009, 83 );
SE010 = playSeVer2( spep_2 + 26, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE010, 91 );
SE011 = playSeVer2( spep_2 + 26, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE011, 86 );
SE012 = playSeVer2( spep_2 + 30, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE012, 85 );

--高速移動
SE013 = playSeVer2( spep_2 + 50, 1121, "",spep_2 + 138, 0, 10, -1);
SE014 = playSeVer2( spep_2 + 50, 1183, "",spep_2 + 138, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 50, SE014, 65 );

--壁激突
SE015 = playSeVer2( spep_2 + 128, 1159, "",spep_2 + 262, 0, 54, -1);
SE016 = playSeVer2( spep_2 + 128, 1190, "",spep_2 + 210, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 128, SE016, 83 );
SE017 = playSeVer2( spep_2 + 128, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 128, SE017, 79 );

--振りかぶる
SE018 = playSeVer2( spep_2 + 212, 1004, "", 0, 0, 0, -1);

--叩き落とす
SE019 = playSeVer2( spep_2 + 240, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE019, 75 );
SE020 = playSeVer2( spep_2 + 244, 1169, "", 0, 0, 0, -1);

--落ちていく
SE021 = playSeVer2( spep_2 + 270, 1179, "",spep_2 + 314, 0, 14, -1);

--水に落ちる
SE022 = playSeVer2( spep_2 + 290, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE022, 164 );
setStartTimeMs( SE022,  283 );
SE023 = playSeVer2( spep_2 + 292, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 292, SE023, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 300 );
endPhase( spep_2 + 420 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵に迫る→膝蹴り(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 84, 0x100, -1, 0, 0, 0 );  --敵に迫る→膝蹴り    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 84, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 84, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 84, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 84 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 84, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 84, 0x80, -1, 0, 0, 0 );  --敵に迫る→膝蹴り ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 84, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 84, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 84, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 84 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 84, first_b, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 135, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 84, 1, 0 );

setMoveKey( spep_0 + 0, 1, 207.1, 24.5 , 0 );
setMoveKey( spep_0 + 1, 1, 204.29, 19.11 , 0 );
setMoveKey( spep_0 + 2, 1, 201.48, 13.72 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 198.67, 8.33 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 195.86, 2.94 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 193.05, -2.45 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 190.24, -7.84 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 187.43, -13.23 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 184.62, -18.62 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 181.81, -24.01 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 179, -29.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 176.19, -34.79 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 173.38, -40.18 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 170.57, -45.57 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 167.76, -50.96 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 164.95, -56.35 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 162.14, -61.74 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 159.33, -67.13 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 156.52, -72.52 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 153.71, -77.91 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 150.9, -83.3 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 148.09, -88.69 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 145.28, -94.08 , 0 );
--setMoveKey( spep_0 -3 + 54, 1, 152.87, -79.61 , 0 );
--setMoveKey( spep_0 -3 + 56, 1, 151, -83.2 , 0 );
--setMoveKey( spep_0 -3 + 58, 1, 149.13, -86.79 , 0 );
--setMoveKey( spep_0 -3 + 60, 1, 147.26, -90.38 , 0 );
--setMoveKey( spep_0 -3 + 62, 1, 145.28, -94.08 , 0 );
--setMoveKey( spep_0 -3 + 64, 1, 101.1, -82.7 , 0 );
--setMoveKey( spep_0 -3 + 66, 1, 100.5, -83.7 , 0 );
--setMoveKey( spep_0 -3 + 68, 1, 100, -84.7 , 0 );
--setMoveKey( spep_0 -3 + 70, 1, 99.5, -85.6 , 0 );
--setMoveKey( spep_0 -3 + 72, 1, 98.9, -86.6 , 0 );
--setMoveKey( spep_0 -3 + 74, 1, 98.4, -87.5 , 0 );
--setMoveKey( spep_0 -3 + 76, 1, 97.9, -88.5 , 0 );
--setMoveKey( spep_0 -3 + 78, 1, 97.3, -89.5 , 0 );
--setMoveKey( spep_0 -3 + 80, 1, 96.8, -90.4 , 0 );
--setMoveKey( spep_0 -3 + 82, 1, 96.3, -91.4 , 0 );
--setMoveKey( spep_0 -3 + 84, 1, 95.7, -92.3 , 0 );
--setMoveKey( spep_0 -3 + 86, 1, 95.2, -93.3 , 0 );
setMoveKey( spep_0 -3 + 87, 1, 145.28, -94.08 , 0 );

s1 = 0.4;
setScaleKey( spep_0 + 0, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 1, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 2, 1, 2.11, 2.11 );
setScaleKey( spep_0 -3 + 6, 1, 1.99 +0.1, 1.99 +0.1 );
setScaleKey( spep_0 -3 + 7, 1, 1.99 +0.1, 1.99 +0.1 );
setScaleKey( spep_0 -3 + 8, 1, 1.86 +0.2, 1.86 +0.2 );
setScaleKey( spep_0 -3 + 9, 1, 1.86 +0.2, 1.86 +0.2 );
setScaleKey( spep_0 -3 + 10, 1, 1.74 +0.3, 1.74 +0.3 );
setScaleKey( spep_0 -3 + 12, 1, 1.62+0.37, 1.62+0.37 );
setScaleKey( spep_0 -3 + 14, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 -3 + 16, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 -3 + 18, 1, 1.4 +s1, 1.4 +s1 );
setScaleKey( spep_0 -3 + 20, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_0 -3 + 22, 1, 1.34 +s1, 1.34 +s1 );
setScaleKey( spep_0 -3 + 24, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_0 -3 + 26, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_0 -3 + 28, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_0 -3 + 30, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_0 -3 + 32, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_0 -3 + 34, 1, 1.24 +s1, 1.24 +s1 );
setScaleKey( spep_0 -3 + 36, 1, 1.22 +s1, 1.22 +s1 );
setScaleKey( spep_0 -3 + 38, 1, 1.21 +s1, 1.21 +s1 );
setScaleKey( spep_0 -3 + 40, 1, 1.19 +s1, 1.19 +s1 );
setScaleKey( spep_0 -3 + 42, 1, 1.18 +s1, 1.18 +s1 );
setScaleKey( spep_0 -3 + 44, 1, 1.14 +s1, 1.14 +s1 );
setScaleKey( spep_0 -3 + 46, 1, 1.13 +s1, 1.13 +s1 );
setScaleKey( spep_0 -3 + 48, 1, 1.11 +s1, 1.11 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 1.1 +s1, 1.1 +s1 );
setScaleKey( spep_0 -3 + 52, 1, 1.09 +s1, 1.09 +s1 );
setScaleKey( spep_0 -3 + 54, 1, 1.08 +s1, 1.08 +s1 );
setScaleKey( spep_0 -3 + 56, 1, 1.07 +s1, 1.07 +s1 );
setScaleKey( spep_0 -3 + 58, 1, 1.06 +s1, 1.06 +s1 );
setScaleKey( spep_0 -3 + 60, 1, 1.06 +s1, 1.06 +s1 );
setScaleKey( spep_0 -3 + 62, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_0 -3 + 72, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_0 -3 + 74, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_0 -3 + 84, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_0 -3 + 86, 1, 1.03 +s1, 1.03 +s1 );
setScaleKey( spep_0 -3 + 87, 1, 1.03 +s1, 1.03 +s1 );

setRotateKey( spep_0 + 0, 1, -6.2 );
setRotateKey( spep_0 + 1, 1, -6.1 );
setRotateKey( spep_0 + 2, 1, -5.9 );
setRotateKey( spep_0 -3 + 6, 1, -5.8 );
setRotateKey( spep_0 -3 + 7, 1, -5.8 );
setRotateKey( spep_0 -3 + 8, 1, -5.6 );
setRotateKey( spep_0 -3 + 9, 1, -5.6 );
setRotateKey( spep_0 -3 + 10, 1, -5.5 );
setRotateKey( spep_0 -3 + 12, 1, -5.4 );
setRotateKey( spep_0 -3 + 14, 1, -5.2 );
setRotateKey( spep_0 -3 + 60, 1, -5.2 );
--setRotateKey( spep_0 -3 + 62, 1, -5.1 );
--setRotateKey( spep_0 -3 + 64, 1, -5.1 );
--setRotateKey( spep_0 -3 + 66, 1, -5 );
--setRotateKey( spep_0 -3 + 68, 1, -5 );
--setRotateKey( spep_0 -3 + 70, 1, -4.9 );
--setRotateKey( spep_0 -3 + 72, 1, -4.9 );
--setRotateKey( spep_0 -3 + 74, 1, -4.8 );
--setRotateKey( spep_0 -3 + 76, 1, -4.8 );
--setRotateKey( spep_0 -3 + 78, 1, -4.7 );
--setRotateKey( spep_0 -3 + 80, 1, -4.7 );
--setRotateKey( spep_0 -3 + 82, 1, -4.6 );
--setRotateKey( spep_0 -3 + 84, 1, -4.6 );
--setRotateKey( spep_0 -3 + 86, 1, -4.5 );
setRotateKey( spep_0 -3 + 87, 1, -5.2 );

-- ** 音 ** --
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 44, 0, 20, -1);
SE002 = playSeVer2( spep_0 + 2, 1182, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 75 );
setStartTimeMs( SE002,  67 );
SE003 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( spep_0 + 74, 1245, "",spep_0 + 100 -2, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 45 );
SE006 = playSeVer2( spep_0 + 76, 43, "",spep_0 + 100 -2, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 84 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 84;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 膝で押す→湖へ突進(360F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
knees_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --膝で押す→湖へ突進  ef_002_front
setEffMoveKey( spep_2 + 0, knees_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 420, knees_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, knees_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 420, knees_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knees_f, 0 );
setEffRotateKey( spep_2 + 420, knees_f, 0 );
setEffAlphaKey( spep_2 + 0, knees_f, 255 );
setEffAlphaKey( spep_2 + 420, knees_f, 255 );

kneez_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --膝で押す→湖へ突進   ef_002_back
setEffMoveKey( spep_2 + 0, kneez_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 420, kneez_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kneez_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 420, kneez_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kneez_b, 0 );
setEffRotateKey( spep_2 + 420, kneez_b, 0 );
setEffAlphaKey( spep_2 + 0, kneez_b, 255 );
setEffAlphaKey( spep_2 + 420, kneez_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 46, 1, 0 );
changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2 -3 + 38, 1, 8 );

setMoveKey( spep_2 + 0, 1, 161.2, 17.2 , 0 );
setMoveKey( spep_2 + 1, 1, 159.3, 17.2 , 0 );
setMoveKey( spep_2 + 2, 1, 157.4, 17.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 155.6, 17.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 153.7, 17.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 151.8, 17.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 149.9, 17.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 148.1, 17.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 146.2, 17.2 , 0 );

setScaleKey( spep_2 + 0, 1, 1.85, 1.85 );

setRotateKey( spep_2 + 0, 1, -4.3 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 420 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 146.2, 17.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 144.3, 17.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 142.4, 17.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 140.6, 17.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 138.7, 17.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 136.8, 17.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.85, 1.85 );
    setScaleKey( SP_dodge + 10, 1, 1.85, 1.85 );

    setRotateKey( SP_dodge + 0, 1, -4.3 );
    setRotateKey( SP_dodge + 10, 1, -4.3 );
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

setMoveKey( spep_2 -3 + 18, 1, 144.3, 17.2 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 142.4, 17.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 140.6, 17.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 138.7, 17.2 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 136.8, 17.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 134.9, 17.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 133.1, 17.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 131.2, 17.2 , 0 );
setMoveKey( spep_2 -3 + 37, 1, 131.2, 17.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -78.7, -109.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -78.7, -109.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -562.6, -407.7 , 0 );
setMoveKey( spep_2 -3 + 45, 1, -562.6, -407.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -562.6, -407.7 , 0 );

setScaleKey( spep_2 -3 + 37, 1, 1.85, 1.85 );
setScaleKey( spep_2 -3 + 38, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 45, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 46, 1, 2.29, 2.29 );

setRotateKey( spep_2 -3 + 37, 1, -4.3 );
setRotateKey( spep_2 -3 + 38, 1, -39.7 );
setRotateKey( spep_2 -3 + 45, 1, -39.7 );
setRotateKey( spep_2 -3 + 46, 1, -39.7 );

-- ** 敵キャラクター ** --
f1 = 60;
setDisp( spep_2 +f1 -3 + 0, 1, 1 );
setDisp( spep_2 +f1 -3 + 208, 1, 0 );

changeAnime( spep_2 +f1 -3 + 0, 1, 8 );
changeAnime( spep_2 +f1 -3 + 96, 1, 6 );
changeAnime( spep_2 +f1 -3 + 202, 1, 8 );
changeAnime( spep_2 +f1 -3 + 204, 1, 6 );

setMoveKey( spep_2 +f1 -3 + 0, 1, -11.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 2, 1, -15.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 4, 1, -19.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 6, 1, -23.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 8, 1, -27.2, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 10, 1, -31, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 12, 1, -34.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 14, 1, -38.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 16, 1, -42.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 18, 1, -46.2, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 20, 1, -50, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 22, 1, -53.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 24, 1, -57.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 26, 1, -61.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 28, 1, -65.2, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 30, 1, -69, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 32, 1, -72.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 34, 1, -76.7, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 36, 1, -80.5, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 38, 1, -84.3, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 40, 1, -88.1, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 42, 1, -91.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 44, 1, -95.7, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 46, 1, -99.5, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 48, 1, -103.3, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 50, 1, -107.1, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 52, 1, -110.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 54, 1, -114.7, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 56, 1, -118.5, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 58, 1, -122.3, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 60, 1, -126.1, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 62, 1, -130, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 64, 1, -133.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 66, 1, -137.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 68, 1, -141.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 70, 1, -145.2, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 72, 1, -149, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 74, 1, -152.8, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 76, 1, -156.6, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 78, 1, -160.4, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 80, 1, -159.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 83, 1, -161.9, -66 , 0 );
setMoveKey( spep_2 +f1 -3 + 86, 1, -354.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 87, 1, -354.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 88, 1, 42, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 89, 1, 42, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 90, 1, -322.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 91, 1, -322.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 92, 1, 13, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 93, 1, 13, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 94, 1, -272.9, -29.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 95, 1, -272.9, -29.5 , 0 );--
setMoveKey( spep_2 +f1 -3 + 96, 1, -22.5, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 97, 1, -22.5, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 98, 1, -216.4, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 99, 1, -216.4, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 100, 1, -217.4, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 101, 1, -217.4, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 102, 1, -60.5, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 103, 1, -60.5, -36.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 104, 1, -191.4, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 105, 1, -191.4, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 106, 1, -97.5, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 107, 1, -97.5, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 108, 1, -167.4, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 109, 1, -167.4, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 110, 1, -122.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 111, 1, -122.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 112, 1, -158.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 113, 1, -158.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 114, 1, -136.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 115, 1, -136.3, -36.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 116, 1, -170.7, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 117, 1, -170.7, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 118, 1, -160.7, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 119, 1, -160.7, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 120, 1, -166.6, -40 , 0 );
setMoveKey( spep_2 +f1 -3 + 122, 1, -162.6, -47.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 124, 1, -162.1, -48 , 0 );
setMoveKey( spep_2 +f1 -3 + 126, 1, -161.7, -48.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 128, 1, -161.2, -49.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 130, 1, -160.7, -49.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 132, 1, -160.3, -50.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 134, 1, -159.8, -51 , 0 );
setMoveKey( spep_2 +f1 -3 + 136, 1, -159.3, -51.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 138, 1, -158.8, -52.1 , 0 );
setMoveKey( spep_2 +f1 -3 + 140, 1, -158.4, -52.7 , 0 );
setMoveKey( spep_2 +f1 -3 + 142, 1, -157.9, -53.3 , 0 );
setMoveKey( spep_2 +f1 -3 + 144, 1, -157.4, -53.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 146, 1, -157, -54.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 148, 1, -156.5, -55 , 0 );
setMoveKey( spep_2 +f1 -3 + 150, 1, -156, -55.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 152, 1, -155.5, -56.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 158, 1, -155.5, -56.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 160, 1, -156.7, -61.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 164, 1, -156.7, -61.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 166, 1, -157.9, -64.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 170, 1, -157.9, -64.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 172, 1, -161.1, -70.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 176, 1, -161.1, -70.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 178, 1, -166.5, -73.1 , 0 );
setMoveKey( spep_2 +f1 -3 + 180, 1, -166.5, -73.1 , 0 );
setMoveKey( spep_2 +f1 -3 + 182, 1, -169.6, -76.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 186, 1, -169.6, -76.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 188, 1, -170.4, -85.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 192, 1, -170.4, -85.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 194, 1, -175.4, -88.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 200, 1, -175.4, -88.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 201, 1, -175.4, -88.4 , 0 );--
setMoveKey( spep_2 +f1 -3 + 202, 1, -112.7, -67.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 203, 1, -112.7, -67.2 , 0 );--
setMoveKey( spep_2 +f1 -3 + 204, 1, -7.3, -630 , 0 );
setMoveKey( spep_2 +f1 -3 + 208, 1, -7.3, -630 , 0 );--

s2 = 0.2;
setScaleKey( spep_2 +f1 -3 + 0, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 2, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 4, 1, 1.99 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 10, 1, 1.99 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 12, 1, 1.98 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 18, 1, 1.98 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 20, 1, 1.97 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 26, 1, 1.97 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 28, 1, 1.96 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 34, 1, 1.96 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 36, 1, 1.95 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 42, 1, 1.95 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 44, 1, 1.94 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 50, 1, 1.94 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 52, 1, 1.93 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 58, 1, 1.93 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 60, 1, 1.92 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 66, 1, 1.92 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 68, 1, 1.91 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 74, 1, 1.91 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 76, 1, 1.9 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 78, 1, 1.9 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 80, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 83, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_2 +f1 -3 + 95, 1, 2 +s2, 2 +s2 );--
setScaleKey( spep_2 +f1 -3 + 96, 1, 1.8 +0.05, 1.8 +0.05 );
setScaleKey( spep_2 +f1 -3 + 200, 1, 1.8 +0.05, 1.8 +0.05 );
setScaleKey( spep_2 +f1 -3 + 201, 1, 1.8 +0.05, 1.8 +0.05 );--
setScaleKey( spep_2 +f1 -3 + 202, 1, 2.02 +s2, 2.02 +s2 );
setScaleKey( spep_2 +f1 -3 + 203, 1, 2.02 +s2, 2.02 +s2 );--
setScaleKey( spep_2 +f1 -3 + 204, 1, 2, 2 );
setScaleKey( spep_2 +f1 -3 + 208, 1, 2, 2 );--

setRotateKey( spep_2 +f1 -3 + 0, 1, 0 );
setRotateKey( spep_2 +f1 -3 + 83, 1, 0 );
setRotateKey( spep_2 +f1 -3 + 85, 1, 0 );
setRotateKey( spep_2 +f1 -3 + 86, 1, -15.8 );
setRotateKey( spep_2 +f1 -3 + 95, 1, -15.8 );
setRotateKey( spep_2 +f1 -3 + 96, 1, 34.8 );
setRotateKey( spep_2 +f1 -3 + 102, 1, 34.8 );
setRotateKey( spep_2 +f1 -3 + 104, 1, 41.6 );
setRotateKey( spep_2 +f1 -3 + 108, 1, 41.6 );
setRotateKey( spep_2 +f1 -3 + 110, 1, 45.6 );
setRotateKey( spep_2 +f1 -3 + 114, 1, 45.6 );
setRotateKey( spep_2 +f1 -3 + 116, 1, 57.4 );
setRotateKey( spep_2 +f1 -3 + 120, 1, 57.4 );
setRotateKey( spep_2 +f1 -3 + 122, 1, 61.9 );
setRotateKey( spep_2 +f1 -3 + 124, 1, 62.4 );
setRotateKey( spep_2 +f1 -3 + 126, 1, 62.8 );
setRotateKey( spep_2 +f1 -3 + 128, 1, 63.3 );
setRotateKey( spep_2 +f1 -3 + 130, 1, 63.8 );
setRotateKey( spep_2 +f1 -3 + 132, 1, 64.2 );
setRotateKey( spep_2 +f1 -3 + 134, 1, 64.7 );
setRotateKey( spep_2 +f1 -3 + 136, 1, 65.2 );
setRotateKey( spep_2 +f1 -3 + 138, 1, 65.6 );
setRotateKey( spep_2 +f1 -3 + 140, 1, 66.1 );
setRotateKey( spep_2 +f1 -3 + 142, 1, 66.6 );
setRotateKey( spep_2 +f1 -3 + 144, 1, 67 );
setRotateKey( spep_2 +f1 -3 + 146, 1, 67.5 );
setRotateKey( spep_2 +f1 -3 + 148, 1, 68 );
setRotateKey( spep_2 +f1 -3 + 150, 1, 68.4 );
setRotateKey( spep_2 +f1 -3 + 152, 1, 68.9 );
setRotateKey( spep_2 +f1 -3 + 158, 1, 68.9 );
setRotateKey( spep_2 +f1 -3 + 160, 1, 71.8 );
setRotateKey( spep_2 +f1 -3 + 164, 1, 71.8 );
setRotateKey( spep_2 +f1 -3 + 166, 1, 74.8 );
setRotateKey( spep_2 +f1 -3 + 170, 1, 74.8 );
setRotateKey( spep_2 +f1 -3 + 172, 1, 77.8 );
setRotateKey( spep_2 +f1 -3 + 176, 1, 77.8 );
setRotateKey( spep_2 +f1 -3 + 178, 1, 81.7 );
setRotateKey( spep_2 +f1 -3 + 180, 1, 81.7 );
setRotateKey( spep_2 +f1 -3 + 182, 1, 84.7 );
setRotateKey( spep_2 +f1 -3 + 186, 1, 84.7 );
setRotateKey( spep_2 +f1 -3 + 188, 1, 87 );
setRotateKey( spep_2 +f1 -3 + 192, 1, 87 );
setRotateKey( spep_2 +f1 -3 + 194, 1, 90.4 );
setRotateKey( spep_2 +f1 -3 + 200, 1, 90.4 );
setRotateKey( spep_2 +f1 -3 + 201, 1, 90.4 );--
setRotateKey( spep_2 +f1 -3 + 202, 1, 83 );
setRotateKey( spep_2 +f1 -3 + 203, 1, 83 );--
setRotateKey( spep_2 +f1 -3 + 204, 1, 231.6 );
setRotateKey( spep_2 +f1 -3 + 208, 1, 231.6 );--

-- ** 敵キャラクター ** --
setDisp( spep_2 +f1 -3 + 220, 1, 1 );
setDisp( spep_2 +f1 -3 + 242, 1, 0 );

changeAnime( spep_2 +f1 -3 + 220, 1, 5 );

setMoveKey( spep_2 +f1 -3 + 220, 1, 78.7, -75 , 0 );
setMoveKey( spep_2 +f1 -3 + 222, 1, 89.3, -87.4 , 0 );
setMoveKey( spep_2 +f1 -3 + 224, 1, 97.5, -97.3 , 0 );
setMoveKey( spep_2 +f1 -3 + 226, 1, 103.8, -104.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 228, 1, 108.5, -110.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 230, 1, 111.8, -114.5 , 0 );
setMoveKey( spep_2 +f1 -3 + 232, 1, 114, -117.2 , 0 );
setMoveKey( spep_2 +f1 -3 + 234, 1, 115.4, -118.8 , 0 );
setMoveKey( spep_2 +f1 -3 + 236, 1, 116, -119.6 , 0 );
setMoveKey( spep_2 +f1 -3 + 238, 1, 116.3, -119.9 , 0 );
setMoveKey( spep_2 +f1 -3 + 240, 1, 116.3, -120 , 0 );
setMoveKey( spep_2 +f1 -3 + 242, 1, 116.3, -120 , 0 );

setScaleKey( spep_2 +f1 -3 + 220, 1, 0.27, 0.27 );
setScaleKey( spep_2 +f1 -3 + 222, 1, 0.22, 0.22 );
setScaleKey( spep_2 +f1 -3 + 224, 1, 0.18, 0.18 );
setScaleKey( spep_2 +f1 -3 + 226, 1, 0.15, 0.15 );
setScaleKey( spep_2 +f1 -3 + 228, 1, 0.13, 0.13 );
setScaleKey( spep_2 +f1 -3 + 230, 1, 0.11, 0.11 );
setScaleKey( spep_2 +f1 -3 + 232, 1, 0.1, 0.1 );
setScaleKey( spep_2 +f1 -3 + 234, 1, 0.09, 0.09 );
setScaleKey( spep_2 +f1 -3 + 242, 1, 0.09, 0.09 );

setRotateKey( spep_2 +f1 -3 + 220, 1, 70.6 );
setRotateKey( spep_2 +f1 -3 + 222, 1, 77.1 );
setRotateKey( spep_2 +f1 -3 + 224, 1, 82.2 );
setRotateKey( spep_2 +f1 -3 + 226, 1, 86.3 );
setRotateKey( spep_2 +f1 -3 + 228, 1, 89.3 );
setRotateKey( spep_2 +f1 -3 + 230, 1, 91.5 );
setRotateKey( spep_2 +f1 -3 + 232, 1, 93 );
setRotateKey( spep_2 +f1 -3 + 234, 1, 93.9 );
setRotateKey( spep_2 +f1 -3 + 236, 1, 94.3 );
setRotateKey( spep_2 +f1 -3 + 238, 1, 94.5 );
setRotateKey( spep_2 +f1 -3 + 242, 1, 94.5 );

-- ** 音 ** --
--飛び膝蹴り
SE008 = playSeVer2( spep_2 + 20, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 26, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE009, 83 );
SE010 = playSeVer2( spep_2 + 26, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE010, 91 );
SE011 = playSeVer2( spep_2 + 26, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE011, 86 );
SE012 = playSeVer2( spep_2 + 30, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE012, 85 );

--高速移動
SE013 = playSeVer2( spep_2 + 50, 1121, "",spep_2 + 138, 0, 10, -1);
SE014 = playSeVer2( spep_2 + 50, 1183, "",spep_2 + 138, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 50, SE014, 65 );

--壁激突
SE015 = playSeVer2( spep_2 + 128, 1159, "",spep_2 + 262, 0, 54, -1);
SE016 = playSeVer2( spep_2 + 128, 1190, "",spep_2 + 210, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 128, SE016, 83 );
SE017 = playSeVer2( spep_2 + 128, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 128, SE017, 79 );

--振りかぶる
SE018 = playSeVer2( spep_2 + 212, 1004, "", 0, 0, 0, -1);

--叩き落とす
SE019 = playSeVer2( spep_2 + 240, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE019, 75 );
SE020 = playSeVer2( spep_2 + 244, 1169, "", 0, 0, 0, -1);

--落ちていく
SE021 = playSeVer2( spep_2 + 270, 1179, "",spep_2 + 314, 0, 14, -1);

--水に落ちる
SE022 = playSeVer2( spep_2 + 290, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE022, 164 );
setStartTimeMs( SE022,  283 );
SE023 = playSeVer2( spep_2 + 292, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 292, SE023, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 300 );
endPhase( spep_2 + 420 );

end