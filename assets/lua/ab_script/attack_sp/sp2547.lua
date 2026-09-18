--1026620:SSR_超サイヤ人孫悟空_龍閃撃
--sp_effect_a7_00061
--sp2547

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
SP_01 = 161729; --セリフカットイン
SP_02 = 161731; --蹴り～木の前に瞬間移動　前面
SP_03 = 161733; --蹴り～木の前に瞬間移動　背面
SP_04 = 161735; --フィニッシュ　前面
SP_05 = 161737; --フィニッシュ　背面

--敵側
SP_01r = 161730; --セリフカットイン　敵側
SP_02r = 161732; --蹴り～木の前に瞬間移動　前面　敵側
SP_03r = 161734; --蹴り～木の前に瞬間移動　背面　敵側
SP_04r = 161736; --フィニッシュ　前面　敵側

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- 冒頭〜セリフカットイン(138F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffectLife(  spep_0,   SP_01, 138, 0x80,  -1,  0,  0,  0); --セリフカットイン ef_001

setEffMoveKey( spep_0, first, 0, 0, 0);
setEffMoveKey( spep_0 + 138, first, 0, 0, 0);

setEffScaleKey( spep_0, first, 1.0, 1.0);
setEffScaleKey( spep_0 + 138, first, 1.0, 1.0);

setEffRotateKey( spep_0, first, 0);
setEffRotateKey( spep_0 + 138, first, 0);

setEffAlphaKey( spep_0, first, 255);
setEffAlphaKey( spep_0 + 138 -2, first, 255);
setEffAlphaKey( spep_0 + 138 -1, first, 255);
setEffAlphaKey( spep_0 + 138, first, 0);

spep_x = spep_0 + 17;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 128, 525.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 128, 525.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 128, 525.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 196, -194.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 196, -194.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 205.7, -194.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 205.7, -194.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 232, -194.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 232, -194.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 283.1, -194.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 283.1, -194.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 367.3, -194.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 367.3, -194.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 493.1, -194.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 493.1, -194.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 655, -194.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 655, -194.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 780.8, -194.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 780.8, -194.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 865, -194.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 865, -194.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 916.1, -194.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 916.1, -194.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 942.4, -194.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 942.4, -194.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 952.1, -194.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 952.1, -194.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 953.5, -194.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 953.5, -194.1 , 0 );

setScaleKey( spep_0 + 0, 1, 3, 3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 5.95, 5.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--顔カットイン
SE001 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);

--カメラズーム
SE002 = playSeVer2( spep_0 + 26, 1232, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 124, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0, 0, 138 + 2, 0, 0, 0, 0, 255); 


-- ** 次の準備 ** --
spep_1 = spep_0 + 138;


------------------------------------------------------
-- 蹴り～木の前に瞬間移動(138F)
------------------------------------------------------

-- ** エフェクト等 ** --
keri_f = entryEffectLife(  spep_1, SP_02, 138, 0x100,  -1,  0,  0,  0); --蹴り～木の前に瞬間移動　前面 ef_002

setEffMoveKey( spep_1, keri_f, 0, 0, 0);
setEffMoveKey( spep_1 + 138, keri_f, 0, 0, 0);

setEffScaleKey( spep_1, keri_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 138, keri_f, 1.0, 1.0);

setEffRotateKey( spep_1, keri_f, 0);
setEffRotateKey( spep_1 + 138, keri_f, 0);

setEffAlphaKey( spep_1, keri_f, 255);
setEffAlphaKey( spep_1 + 138 - 2, keri_f, 255);
setEffAlphaKey( spep_1 + 138 - 1, keri_f, 255);
setEffAlphaKey( spep_1 + 138, keri_f, 0);

keri_b = entryEffectLife(  spep_1, SP_03, 138, 0x80,  -1,  0,  0,  0); --蹴り～木の前に瞬間移動　前面 ef_003

setEffMoveKey( spep_1, keri_b, 0, 0, 0);
setEffMoveKey( spep_1 + 138, keri_b, 0, 0, 0);

setEffScaleKey( spep_1, keri_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 138, keri_b, 1.0, 1.0);

setEffRotateKey( spep_1, keri_b, 0);
setEffRotateKey( spep_1 + 138, keri_b, 0);

setEffAlphaKey( spep_1, keri_b, 255);
setEffAlphaKey( spep_1 + 138 -2, keri_b, 255);
setEffAlphaKey( spep_1 + 138 -1, keri_b, 255);
setEffAlphaKey( spep_1 + 138, keri_b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1, 0, 138 + 2, 0, 0, 0, 0, 255); 

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 + 14 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 26 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 50 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 86 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 0, 1, 136, -54.4 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 136, -54.4 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 76.5, 9.6 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 76.5, 9.6 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 259.3, -287 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 259.3, -287 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 362.5, -448.7 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 362.5, -448.7 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 433.4, -586.3 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 433.4, -586.3 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 502.4, -677 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 502.4, -677 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 545.4, -759.3 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 545.4, -759.3 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 583.8, -822.3 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 583.8, -822.3 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 614.4, -872.4 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 614.4, -872.4 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 638.4, -911.7 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 638.4, -911.7 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 656.7, -941.8 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 656.7, -941.8 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 670.2, -963.8 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 670.2, -963.8 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 679.2, -978.7 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 679.2, -978.7 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, -241.6, -43.1 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, -241.6, -43.1 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, -241.5, -43.1 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, -241.5, -43.1 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, -240.7, -43.2 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, -240.7, -43.2 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, -238.6, -43.7 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, -238.6, -43.7 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, -234.5, -44.6 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, -234.5, -44.6 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, -227.7, -46.1 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, -227.7, -46.1 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, -217.5, -48.3 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, -217.5, -48.3 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, -203.3, -51.4 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, -203.3, -51.4 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, -184.5, -55.5 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, -184.5, -55.5 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, -160.2, -60.8 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, -160.2, -60.8 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -129.9, -67.5 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, -129.9, -67.5 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, -92.8, -75.5 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, -92.8, -75.5 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, -48.3, -85.2 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, -48.3, -85.2 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 4.3, -96.7 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 4.3, -96.7 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 65.9, -110 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 65.9, -110 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, -87.2, 79.1 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, -87.2, 79.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, -32.6, 62.7 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, -32.6, 62.7 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 34.5, 42.5 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 34.5, 42.5 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 31.2, 38.7 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 31.2, 38.7 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 42.6, 15 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 42.6, 15 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 48.2, 37 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 48.2, 37 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 30.5, 14.9 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 30.5, 14.9 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 38, 31.9 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 38, 31.9 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 35.8, 26.9 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 35.8, 26.9 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 38.3, 23.8 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 38.3, 23.8 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 37, 24.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 13 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 14 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 25 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 1.39, 1.38 );
setScaleKey( spep_1 + 27 + OFFSET_X, 1, 1.39, 1.38 );
setScaleKey( spep_1 + 28 + OFFSET_X, 1, 2, 1.99 );
setScaleKey( spep_1 + 29 + OFFSET_X, 1, 2, 1.99 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 2.37, 2.36 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 2.37, 2.36 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_1 + 33 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 2.88, 2.87 );
setScaleKey( spep_1 + 35 + OFFSET_X, 1, 2.88, 2.87 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 3.05, 3.04 );
setScaleKey( spep_1 + 37 + OFFSET_X, 1, 3.05, 3.04 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 3.19, 3.18 );
setScaleKey( spep_1 + 39 + OFFSET_X, 1, 3.19, 3.18 );
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 3.31, 3.3 );
setScaleKey( spep_1 + 41 + OFFSET_X, 1, 3.31, 3.3 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 3.39, 3.38 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 3.39, 3.38 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 3.46, 3.45 );
setScaleKey( spep_1 + 45 + OFFSET_X, 1, 3.46, 3.45 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_1 + 47 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 3.54, 3.53 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 3.54, 3.53 );
setScaleKey( spep_1 + 49 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_1 + 53 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 55 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 57 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 59 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 60 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 61 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 62 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_1 + 63 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_1 + 67 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_1 + 68 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 69 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 70 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 71 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 72 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 73 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 74 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1, 1 );


setRotateKey( spep_1 + 0, 1, 24.4 );
setRotateKey( spep_1 + 25 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_1 + 26 + OFFSET_X, 1, 37 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, 37 );
setRotateKey( spep_1 + 49 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -54.4 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 12; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);

    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 1, 1, 104 );
    setMoveKey( SP_dodge + 0, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 136, -54.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.03, 2.03 );
    setScaleKey( SP_dodge + 1, 1, 2.28, 2.28 );
    setScaleKey( SP_dodge + 10, 1, 2.28, 2.28 );

    setRotateKey( SP_dodge + 0, 1, 24.4 );
    setRotateKey( SP_dodge + 10, 1, 24.4 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--蹴り飛ばす
SE005 = playSeVer2( spep_1 + 20 -4, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 28 -4, 1187, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 30 -4, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE008 = playSeVer2( spep_1 + 50 -4, 1121, "",spep_0 + 256, 0, 24, -1);
SE009 = playSeVer2( spep_1 + 50 -4, 1183, "",spep_0 + 256, 0, 24, -1);

--木に激突する
SE010 = playSeVer2( spep_1 + 86 -4, 1023, "",spep_0 + 290, 0, 10, -1);
SE011 = playSeVer2( spep_1 + 88 -4, 1011, "",spep_0 + 290, 0, 10, -1);

--瞬間移動
SE012 = playSeVer2( spep_1 + 114 -4, 1109, "",spep_0 + 290, 0, 10, -1);

-- ** 白フェード ** --
entryFade( spep_1 + 136, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 138;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_c = spep_2

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );
 
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_3 = spep_c + 94;

------------------------------------------------------
-- フィニッシュ(370F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect(  spep_3, SP_04, 0x100,  -1,  0,  0,  0); --フィニッシュ　前面 ef_004

setEffMoveKey( spep_3, finish_f, 0, 0, 0);
setEffMoveKey( spep_3 + 370, finish_f, 0, 0, 0);

setEffScaleKey( spep_3, finish_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 370, finish_f, 1.0, 1.0);

setEffRotateKey( spep_3, finish_f, 0);
setEffRotateKey( spep_3 + 370, finish_f, 0);

setEffAlphaKey( spep_3, finish_f, 255);
setEffAlphaKey( spep_3 + 370, finish_f, 255);

finish_b = entryEffect(  spep_3, SP_05, 0x80,  -1,  0,  0,  0); --フィニッシュ　背面 ef_005

setEffMoveKey( spep_3, finish_b, 0, 0, 0);
setEffMoveKey( spep_3 + 370, finish_b, 0, 0, 0);

setEffScaleKey( spep_3, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 370, finish_b, 1.0, 1.0);

setEffRotateKey( spep_3, finish_b, 0);
setEffRotateKey( spep_3 + 370, finish_b, 0);

setEffAlphaKey( spep_3, finish_b, 255);
setEffAlphaKey( spep_3 + 370, finish_b, 255);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_3 + 66 + OFFSET_X, 1, 1);
setDisp( spep_3 + 110 + OFFSET_X, 1, 0);

changeAnime( spep_3 + 66 + OFFSET_X, 1, 106);

setMoveKey( spep_3 + 66 + OFFSET_X, 1, 151.8, -102 , 0 );
setMoveKey( spep_3 + 110 + OFFSET_X, 1, 151.8, -102 , 0 );

setScaleKey( spep_3 + 66 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_3 + 110 + OFFSET_X, 1, 9.98, 9.98 );

setRotateKey( spep_3 + 66 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_3 + 110 + OFFSET_X, 1, -50.4 );


--敵の動き2
setDisp( spep_3 + 220 + OFFSET_X, 1, 1);
setDisp( spep_3 + 370 + OFFSET_X, 1, 0);

setMoveKey( spep_3 + 220 + OFFSET_X, 1, 135.4, -23.4 , 0 );
setMoveKey( spep_3 + 221 + OFFSET_X, 1, 135.4, -23.4 , 0 );
setMoveKey( spep_3 + 222 + OFFSET_X, 1, 134.9, -23.3 , 0 );
setMoveKey( spep_3 + 223 + OFFSET_X, 1, 134.9, -23.3 , 0 );
setMoveKey( spep_3 + 224 + OFFSET_X, 1, 133.4, -23.1 , 0 );
setMoveKey( spep_3 + 225 + OFFSET_X, 1, 133.4, -23.1 , 0 );
setMoveKey( spep_3 + 226 + OFFSET_X, 1, 131.1, -22.7 , 0 );
setMoveKey( spep_3 + 227 + OFFSET_X, 1, 131.1, -22.7 , 0 );
setMoveKey( spep_3 + 228 + OFFSET_X, 1, 128.4, -22.2 , 0 );
setMoveKey( spep_3 + 229 + OFFSET_X, 1, 128.4, -22.2 , 0 );
setMoveKey( spep_3 + 230 + OFFSET_X, 1, 125.3, -21.7 , 0 );
setMoveKey( spep_3 + 231 + OFFSET_X, 1, 125.3, -21.7 , 0 );
setMoveKey( spep_3 + 232 + OFFSET_X, 1, 122.1, -21.1 , 0 );
setMoveKey( spep_3 + 233 + OFFSET_X, 1, 122.1, -21.1 , 0 );
setMoveKey( spep_3 + 234 + OFFSET_X, 1, 118.8, -20.6 , 0 );
setMoveKey( spep_3 + 235 + OFFSET_X, 1, 118.8, -20.6 , 0 );
setMoveKey( spep_3 + 236 + OFFSET_X, 1, 115.6, -20 , 0 );
setMoveKey( spep_3 + 237 + OFFSET_X, 1, 115.6, -20 , 0 );
setMoveKey( spep_3 + 238 + OFFSET_X, 1, 112.6, -19.5 , 0 );
setMoveKey( spep_3 + 239 + OFFSET_X, 1, 112.6, -19.5 , 0 );
setMoveKey( spep_3 + 240 + OFFSET_X, 1, 109.9, -19 , 0 );
setMoveKey( spep_3 + 241 + OFFSET_X, 1, 109.9, -19 , 0 );
setMoveKey( spep_3 + 242 + OFFSET_X, 1, 107.6, -18.6 , 0 );
setMoveKey( spep_3 + 243 + OFFSET_X, 1, 107.6, -18.6 , 0 );
setMoveKey( spep_3 + 244 + OFFSET_X, 1, 105.8, -18.3 , 0 );
setMoveKey( spep_3 + 245 + OFFSET_X, 1, 105.8, -18.3 , 0 );
setMoveKey( spep_3 + 246 + OFFSET_X, 1, 104.6, -18.1 , 0 );
setMoveKey( spep_3 + 247 + OFFSET_X, 1, 104.6, -18.1 , 0 );
setMoveKey( spep_3 + 370 + OFFSET_X, 1, 104.2, -18 , 0 );

setScaleKey( spep_3 + 220 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 221 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 222 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 223 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 224 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 225 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 226 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 227 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 228 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 229 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 230 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 231 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 232 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 233 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 234 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 235 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 236 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 237 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 238 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 239 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 240 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 241 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 242 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 243 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 244 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 245 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 246 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 370 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 220 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_3 + 370 + OFFSET_X, 1, -46.9 );

-- ** 音 ** --
--手に気まとう
SE014 = playSeVer2( spep_3 + 20, 1287, "",spep_3 + 108, 10, 24, -1);
setSeVolumeByWorkId( spep_3 + 20 , SE014, 120 );
setStartTimeMs( SE014,  1000 );		
SE015 = playSeVer2( spep_3 - 4, 1265, "",spep_3 + 120, 24, 10, 0.6);
setSeVolumeByWorkId( spep_3 - 4, SE015, 72 );
setStartTimeMs( SE015,  233 );		
SE016 = playSeVer2( spep_3 - 10, 1305, "",spep_3 + 120, 0, 10, -1);
SE017 = playSeVer2( spep_3 + 2, 1287, "",spep_3 + 80, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 2 , SE017, 120 );

--拳つきだす
SE018 = playSeVer2( spep_3 + 42, 1320, "",spep_3 + 120, 8, 10, 0.6);
setSeVolumeByWorkId( spep_3 + 42, SE018, 63 );
setStartTimeMs( SE018,  433 );
setPitch( spep_3 + 42, SE018, 600 );
setTimeStretch( SE018, 1.4, 30, 4 );
SE020 = playSeVer2( spep_3 + 38, 1221, "",spep_3 + 120, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 38, SE020, 174 );
setPitch( spep_3 + 38, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_3 + 40, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE021, 69 );

--木にヒット
SE019 = playSeVer2( spep_3 + 106 -4, 1278, "",spep_3 + 220, 6, 64, -1);
setSeVolumeByWorkId( spep_3 + 106 -4 , SE019, 90 );
setStartTimeMs( SE019,  1367 );
SE022 = playSeVer2( spep_3 + 106 -4, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 106 -4, SE022, 75 );
SE023 = playSeVer2( spep_3 + 106 -4, 1296, "",spep_3 + 240, 0, 92, -1);
SE024 = playSeVer2( spep_3 + 106 -4, 1312, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 106 -4, 1116, "",spep_3 + 150, 0, 16, -1);

--木ゆれる
SE026 = playSeVer2( spep_3 + 158, 1226, "",spep_3 + 270, 0, 42, -1);
setSeVolumeByWorkId( spep_3 + 158 , SE026, 70 );

--画面遷移
SE027 = playSeVer2( spep_3 + 196, 8, "", 0, 0, 0, -1);

--りんご落ちる
SE028 = playSeVer2( spep_3 + 260 -4, 1118, "",spep_3 + 308, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 260 -4, SE028, 72 );

--りんごキャッチ
SE029 = playSeVer2( spep_3 + 290 -4, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 290 -4, SE029, 174 );
SE030 = playSeVer2( spep_3 + 292 -4, 1013, "",spep_3 + 306, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 292 -4, SE030, 50 );

--りんご床に落ちる
SE031 = playSeVer2( spep_3 +  306 -4, 1111, "",spep_3 + 358, 0, 6, 0.5);
setSeVolumeByWorkId( spep_3 + 306 -4, SE031, 69 );

-- ** 黒背景 ** --
entryFadeBg( spep_3, 0, 370 + 2, 0, 0, 0, 0, 255);


-- ダメージ表示
dealDamage(spep_3 + 250);
endPhase(spep_3 + 370 - 4);


else
------------------------------------------------------
-- 敵側
------------------------------------------------------

------------------------------------------------------
-- 冒頭〜セリフカットイン(138F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first = entryEffectLife(  spep_0,   SP_01r, 138, 0x80,  -1,  0,  0,  0); --セリフカットイン ef_001

setEffMoveKey( spep_0, first, 0, 0, 0);
setEffMoveKey( spep_0 + 138, first, 0, 0, 0);

setEffScaleKey( spep_0, first, 1.0, 1.0);
setEffScaleKey( spep_0 + 138, first, 1.0, 1.0);

setEffRotateKey( spep_0, first, 0);
setEffRotateKey( spep_0 + 138, first, 0);

setEffAlphaKey( spep_0, first, 255);
setEffAlphaKey( spep_0 + 138 -2, first, 255);
setEffAlphaKey( spep_0 + 138 -1, first, 255);
setEffAlphaKey( spep_0 + 138, first, 0);

spep_x = spep_0 + 17;
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 128, 525.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 128, 525.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 128, 525.5 , 0 );
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
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 194.7, -194.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 196, -194.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 196, -194.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 205.7, -194.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 205.7, -194.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 232, -194.1 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 232, -194.1 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 283.1, -194.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 283.1, -194.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 367.3, -194.1 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 367.3, -194.1 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 493.1, -194.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 493.1, -194.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 655, -194.1 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 655, -194.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 780.8, -194.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 780.8, -194.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 865, -194.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 865, -194.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 916.1, -194.1 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 916.1, -194.1 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 942.4, -194.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 942.4, -194.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 952.1, -194.1 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 952.1, -194.1 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 953.5, -194.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 953.5, -194.1 , 0 );

setScaleKey( spep_0 + 0, 1, 3, 3 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 5.95, 5.95 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 5.95, 5.95 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--顔カットイン
SE001 = playSeVer2( spep_0 + 26, 1018, "", 0, 0, 0, -1);

--カメラズーム
SE002 = playSeVer2( spep_0 + 26, 1232, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 124, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0, 0, 138 + 2, 0, 0, 0, 0, 255); 


-- ** 次の準備 ** --
spep_1 = spep_0 + 138;


------------------------------------------------------
-- 蹴り～木の前に瞬間移動(138F)
------------------------------------------------------

-- ** エフェクト等 ** --
keri_f = entryEffectLife(  spep_1, SP_02r, 138, 0x100,  -1,  0,  0,  0); --蹴り～木の前に瞬間移動　前面 ef_002

setEffMoveKey( spep_1, keri_f, 0, 0, 0);
setEffMoveKey( spep_1 + 138, keri_f, 0, 0, 0);

setEffScaleKey( spep_1, keri_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 138, keri_f, 1.0, 1.0);

setEffRotateKey( spep_1, keri_f, 0);
setEffRotateKey( spep_1 + 138, keri_f, 0);

setEffAlphaKey( spep_1, keri_f, 255);
setEffAlphaKey( spep_1 + 138 - 2, keri_f, 255);
setEffAlphaKey( spep_1 + 138 - 1, keri_f, 255);
setEffAlphaKey( spep_1 + 138, keri_f, 0);

keri_b = entryEffectLife(  spep_1, SP_03r, 138, 0x80,  -1,  0,  0,  0); --蹴り～木の前に瞬間移動　前面 ef_003

setEffMoveKey( spep_1, keri_b, 0, 0, 0);
setEffMoveKey( spep_1 + 138, keri_b, 0, 0, 0);

setEffScaleKey( spep_1, keri_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 138, keri_b, 1.0, 1.0);

setEffRotateKey( spep_1, keri_b, 0);
setEffRotateKey( spep_1 + 138, keri_b, 0);

setEffAlphaKey( spep_1, keri_b, 255);
setEffAlphaKey( spep_1 + 138 -2, keri_b, 255);
setEffAlphaKey( spep_1 + 138 -1, keri_b, 255);
setEffAlphaKey( spep_1 + 138, keri_b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1, 0, 138 + 2, 0, 0, 0, 0, 255); 

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 138 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 + 14 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 26 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 50 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 86 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 0, 1, 136, -54.4 , 0 );
setMoveKey( spep_1 + 25 + OFFSET_X, 1, 136, -54.4 , 0 );
setMoveKey( spep_1 + 26 + OFFSET_X, 1, 76.5, 9.6 , 0 );
setMoveKey( spep_1 + 27 + OFFSET_X, 1, 76.5, 9.6 , 0 );
setMoveKey( spep_1 + 28 + OFFSET_X, 1, 259.3, -287 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 259.3, -287 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 362.5, -448.7 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 362.5, -448.7 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 433.4, -586.3 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 433.4, -586.3 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 502.4, -677 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 502.4, -677 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 545.4, -759.3 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 545.4, -759.3 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 583.8, -822.3 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 583.8, -822.3 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 614.4, -872.4 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 614.4, -872.4 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 638.4, -911.7 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 638.4, -911.7 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 656.7, -941.8 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 656.7, -941.8 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 670.2, -963.8 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 670.2, -963.8 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 679.2, -978.7 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 679.2, -978.7 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, -241.6, -43.1 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, -241.6, -43.1 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, -241.5, -43.1 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, -241.5, -43.1 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, -240.7, -43.2 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, -240.7, -43.2 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, -238.6, -43.7 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, -238.6, -43.7 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, -234.5, -44.6 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, -234.5, -44.6 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, -227.7, -46.1 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, -227.7, -46.1 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, -217.5, -48.3 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, -217.5, -48.3 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, -203.3, -51.4 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, -203.3, -51.4 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, -184.5, -55.5 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, -184.5, -55.5 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, -160.2, -60.8 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, -160.2, -60.8 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -129.9, -67.5 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, -129.9, -67.5 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, -92.8, -75.5 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, -92.8, -75.5 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, -48.3, -85.2 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, -48.3, -85.2 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 4.3, -96.7 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 4.3, -96.7 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 65.9, -110 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 65.9, -110 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, -87.2, 79.1 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, -87.2, 79.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, -32.6, 62.7 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, -32.6, 62.7 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 34.5, 42.5 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 34.5, 42.5 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 31.2, 38.7 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 31.2, 38.7 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 42.6, 15 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 42.6, 15 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 48.2, 37 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 48.2, 37 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 30.5, 14.9 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 30.5, 14.9 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 38, 31.9 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 38, 31.9 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 35.8, 26.9 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 35.8, 26.9 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 38.3, 23.8 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 38.3, 23.8 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 37, 29.8 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 39, 23.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 39, 29.8 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 37, 24.8 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 37, 24.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 13 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 14 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 25 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 1.39, 1.38 );
setScaleKey( spep_1 + 27 + OFFSET_X, 1, 1.39, 1.38 );
setScaleKey( spep_1 + 28 + OFFSET_X, 1, 2, 1.99 );
setScaleKey( spep_1 + 29 + OFFSET_X, 1, 2, 1.99 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 2.37, 2.36 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 2.37, 2.36 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_1 + 33 + OFFSET_X, 1, 2.66, 2.65 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 2.88, 2.87 );
setScaleKey( spep_1 + 35 + OFFSET_X, 1, 2.88, 2.87 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 3.05, 3.04 );
setScaleKey( spep_1 + 37 + OFFSET_X, 1, 3.05, 3.04 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 3.19, 3.18 );
setScaleKey( spep_1 + 39 + OFFSET_X, 1, 3.19, 3.18 );
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 3.31, 3.3 );
setScaleKey( spep_1 + 41 + OFFSET_X, 1, 3.31, 3.3 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 3.39, 3.38 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 3.39, 3.38 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 3.46, 3.45 );
setScaleKey( spep_1 + 45 + OFFSET_X, 1, 3.46, 3.45 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_1 + 47 + OFFSET_X, 1, 3.51, 3.5 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 3.54, 3.53 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 3.54, 3.53 );
setScaleKey( spep_1 + 49 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_1 + 53 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 55 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 57 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 59 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 60 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 61 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 62 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_1 + 63 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_1 + 67 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_1 + 68 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 69 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 70 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 71 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 72 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 73 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 74 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 24.4 );
setRotateKey( spep_1 + 25 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_1 + 26 + OFFSET_X, 1, 37 );
setRotateKey( spep_1 + 48 + OFFSET_X, 1, 37 );
setRotateKey( spep_1 + 49 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -54.4 );

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 12; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);

    -- ** 敵キャラクター ** --
    changeAnime( SP_dodge + 1, 1, 104 );
    setMoveKey( SP_dodge + 0, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 2, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 6, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 8, 1, 136, -54.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, 136, -54.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.03, 2.03 );
    setScaleKey( SP_dodge + 1, 1, 2.28, 2.28 );
    setScaleKey( SP_dodge + 10, 1, 2.28, 2.28 );

    setRotateKey( SP_dodge + 0, 1, 24.4 );
    setRotateKey( SP_dodge + 10, 1, 24.4 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--蹴り飛ばす
SE005 = playSeVer2( spep_1 + 20 -4, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 28 -4, 1187, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 30 -4, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE008 = playSeVer2( spep_1 + 50 -4, 1121, "",spep_0 + 256, 0, 24, -1);
SE009 = playSeVer2( spep_1 + 50 -4, 1183, "",spep_0 + 256, 0, 24, -1);

--木に激突する
SE010 = playSeVer2( spep_1 + 86 -4, 1023, "",spep_0 + 290, 0, 10, -1);
SE011 = playSeVer2( spep_1 + 88 -4, 1011, "",spep_0 + 290, 0, 10, -1);

--瞬間移動
SE012 = playSeVer2( spep_1 + 114 -4, 1109, "",spep_0 + 290, 0, 10, -1);

-- ** 白フェード ** --
entryFade( spep_1 + 136, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 138;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- フィニッシュ(370F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect(  spep_3, SP_04r, 0x100,  -1,  0,  0,  0); --フィニッシュ　前面 ef_004

setEffMoveKey( spep_3, finish_f, 0, 0, 0);
setEffMoveKey( spep_3 + 370, finish_f, 0, 0, 0);

setEffScaleKey( spep_3, finish_f, -1.0, 1.0);
setEffScaleKey( spep_3 + 370, finish_f, -1.0, 1.0);

setEffRotateKey( spep_3, finish_f, 0);
setEffRotateKey( spep_3 + 370, finish_f, 0);

setEffAlphaKey( spep_3, finish_f, 255);
setEffAlphaKey( spep_3 + 370, finish_f, 255);

finish_b = entryEffect(  spep_3, SP_05, 0x80,  -1,  0,  0,  0); --フィニッシュ　背面 ef_005

setEffMoveKey( spep_3, finish_b, 0, 0, 0);
setEffMoveKey( spep_3 + 370, finish_b, 0, 0, 0);

setEffScaleKey( spep_3, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 370, finish_b, 1.0, 1.0);

setEffRotateKey( spep_3, finish_b, 0);
setEffRotateKey( spep_3 + 370, finish_b, 0);

setEffAlphaKey( spep_3, finish_b, 255);
setEffAlphaKey( spep_3 + 370, finish_b, 255);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_3 + 66 + OFFSET_X, 1, 1);
setDisp( spep_3 + 110 + OFFSET_X, 1, 0);

changeAnime( spep_3 + 66 + OFFSET_X, 1, 106);

setMoveKey( spep_3 + 66 + OFFSET_X, 1, 151.8, -102 , 0 );
setMoveKey( spep_3 + 110 + OFFSET_X, 1, 151.8, -102 , 0 );

setScaleKey( spep_3 + 66 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_3 + 110 + OFFSET_X, 1, 9.98, 9.98 );

setRotateKey( spep_3 + 66 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_3 + 110 + OFFSET_X, 1, -50.4 );


--敵の動き2
setDisp( spep_3 + 220 + OFFSET_X, 1, 1);
setDisp( spep_3 + 370 + OFFSET_X, 1, 0);

setMoveKey( spep_3 + 220 + OFFSET_X, 1, 135.4, -23.4 , 0 );
setMoveKey( spep_3 + 221 + OFFSET_X, 1, 135.4, -23.4 , 0 );
setMoveKey( spep_3 + 222 + OFFSET_X, 1, 134.9, -23.3 , 0 );
setMoveKey( spep_3 + 223 + OFFSET_X, 1, 134.9, -23.3 , 0 );
setMoveKey( spep_3 + 224 + OFFSET_X, 1, 133.4, -23.1 , 0 );
setMoveKey( spep_3 + 225 + OFFSET_X, 1, 133.4, -23.1 , 0 );
setMoveKey( spep_3 + 226 + OFFSET_X, 1, 131.1, -22.7 , 0 );
setMoveKey( spep_3 + 227 + OFFSET_X, 1, 131.1, -22.7 , 0 );
setMoveKey( spep_3 + 228 + OFFSET_X, 1, 128.4, -22.2 , 0 );
setMoveKey( spep_3 + 229 + OFFSET_X, 1, 128.4, -22.2 , 0 );
setMoveKey( spep_3 + 230 + OFFSET_X, 1, 125.3, -21.7 , 0 );
setMoveKey( spep_3 + 231 + OFFSET_X, 1, 125.3, -21.7 , 0 );
setMoveKey( spep_3 + 232 + OFFSET_X, 1, 122.1, -21.1 , 0 );
setMoveKey( spep_3 + 233 + OFFSET_X, 1, 122.1, -21.1 , 0 );
setMoveKey( spep_3 + 234 + OFFSET_X, 1, 118.8, -20.6 , 0 );
setMoveKey( spep_3 + 235 + OFFSET_X, 1, 118.8, -20.6 , 0 );
setMoveKey( spep_3 + 236 + OFFSET_X, 1, 115.6, -20 , 0 );
setMoveKey( spep_3 + 237 + OFFSET_X, 1, 115.6, -20 , 0 );
setMoveKey( spep_3 + 238 + OFFSET_X, 1, 112.6, -19.5 , 0 );
setMoveKey( spep_3 + 239 + OFFSET_X, 1, 112.6, -19.5 , 0 );
setMoveKey( spep_3 + 240 + OFFSET_X, 1, 109.9, -19 , 0 );
setMoveKey( spep_3 + 241 + OFFSET_X, 1, 109.9, -19 , 0 );
setMoveKey( spep_3 + 242 + OFFSET_X, 1, 107.6, -18.6 , 0 );
setMoveKey( spep_3 + 243 + OFFSET_X, 1, 107.6, -18.6 , 0 );
setMoveKey( spep_3 + 244 + OFFSET_X, 1, 105.8, -18.3 , 0 );
setMoveKey( spep_3 + 245 + OFFSET_X, 1, 105.8, -18.3 , 0 );
setMoveKey( spep_3 + 246 + OFFSET_X, 1, 104.6, -18.1 , 0 );
setMoveKey( spep_3 + 247 + OFFSET_X, 1, 104.6, -18.1 , 0 );
setMoveKey( spep_3 + 370 + OFFSET_X, 1, 104.2, -18 , 0 );

setScaleKey( spep_3 + 220 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 221 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 222 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 223 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 224 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 225 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 226 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 227 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_3 + 228 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 229 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 230 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 231 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 232 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 233 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 234 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 235 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 236 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 237 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 238 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 239 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 240 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 241 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 242 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 243 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 244 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 245 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 246 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 370 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 220 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_3 + 370 + OFFSET_X, 1, -46.9 );

-- ** 音 ** --
--手に気まとう
SE014 = playSeVer2( spep_3 + 20, 1287, "",spep_3 + 108, 10, 24, -1);
setSeVolumeByWorkId( spep_3 + 20 , SE014, 120 );
setStartTimeMs( SE014,  1000 );		
SE015 = playSeVer2( spep_3 - 4, 1265, "",spep_3 + 120, 24, 10, 0.6);
setSeVolumeByWorkId( spep_3 - 4, SE015, 72 );
setStartTimeMs( SE015,  233 );		
SE016 = playSeVer2( spep_3 - 10, 1305, "",spep_3 + 120, 0, 10, -1);
SE017 = playSeVer2( spep_3 + 2, 1287, "",spep_3 + 80, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 2 , SE017, 120 );

--拳つきだす
SE018 = playSeVer2( spep_3 + 42, 1320, "",spep_3 + 120, 8, 10, 0.6);
setSeVolumeByWorkId( spep_3 + 42, SE018, 63 );
setStartTimeMs( SE018,  433 );
setPitch( spep_3 + 42, SE018, 600 );
setTimeStretch( SE018, 1.4, 30, 4 );
SE020 = playSeVer2( spep_3 + 38, 1221, "",spep_3 + 120, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 38, SE020, 174 );
setPitch( spep_3 + 38, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_3 + 40, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 40, SE021, 69 );

--木にヒット
SE019 = playSeVer2( spep_3 + 106 -4, 1278, "",spep_3 + 220, 6, 64, -1);
setSeVolumeByWorkId( spep_3 + 106 -4 , SE019, 90 );
setStartTimeMs( SE019,  1367 );
SE022 = playSeVer2( spep_3 + 106 -4, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 106 -4, SE022, 75 );
SE023 = playSeVer2( spep_3 + 106 -4, 1296, "",spep_3 + 240, 0, 92, -1);
SE024 = playSeVer2( spep_3 + 106 -4, 1312, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 106 -4, 1116, "",spep_3 + 150, 0, 16, -1);

--木ゆれる
SE026 = playSeVer2( spep_3 + 158, 1226, "",spep_3 + 270, 0, 42, -1);
setSeVolumeByWorkId( spep_3 + 158 , SE026, 70 );

--画面遷移
SE027 = playSeVer2( spep_3 + 196, 8, "", 0, 0, 0, -1);

--りんご落ちる
SE028 = playSeVer2( spep_3 + 260 -4, 1118, "",spep_3 + 308, 0, 18, -1);
setSeVolumeByWorkId( spep_3 + 260 -4, SE028, 72 );

--りんごキャッチ
SE029 = playSeVer2( spep_3 + 290 -4, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 290 -4, SE029, 174 );
SE030 = playSeVer2( spep_3 + 292 -4, 1013, "",spep_3 + 306, 0, 6, -1);
setSeVolumeByWorkId( spep_3 + 292 -4, SE030, 50 );

--りんご床に落ちる
SE031 = playSeVer2( spep_3 +  306 -4, 1111, "",spep_3 + 358, 0, 6, 0.5);
setSeVolumeByWorkId( spep_3 + 306 -4, SE031, 69 );

-- ** 黒背景 ** --
entryFadeBg( spep_3, 0, 370 + 2, 0, 0, 0, 0, 255);


-- ダメージ表示
dealDamage(spep_3 + 250);
endPhase(spep_3 + 370 - 4);



end