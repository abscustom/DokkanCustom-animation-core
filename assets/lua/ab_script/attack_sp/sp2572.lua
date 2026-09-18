--1026900：LR_超サイヤ人4孫悟空_必殺技：スピアシュート
--sp_effect_b1_00257
--sp2572

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162000;	--冒頭～セリフカットインまで・手前  ef_001
SP_01b = 162001;	--冒頭～セリフカットインまで・奥  ef_001b
SP_02 = 162002;	--気ダメ突進～ラスト・手前  ef_002
SP_02b = 162003;	--気ダメ突進～ラスト・奥  ef_002b

--エフェクト(てき)
SP_01r = 162004; --冒頭～セリフカットインまで・手前  ef_001r
SP_01br = 162005; --冒頭～セリフカットインまで・奥  ef_001br
SP_02r = 162006; --気ダメ突進～ラスト・手前  ef_002r
SP_02br = 162007; --気ダメ突進～ラスト・奥  ef_002br


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
-- changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
-- setDisp( 0, 1, 0);

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

-- setMoveKey(   0,   1,    0, -5000,   0 );
-- setMoveKey(   1,   1,    0, -5000,   0 );
-- setMoveKey(   2,   1,    0, -5000,   0 );
-- setMoveKey(   3,   1,    0, -5000,   0 );
-- setMoveKey(   4,   1,    0, -5000,   0 );
-- setMoveKey(   5,   1,    0, -5000,   0 );
-- setMoveKey(   6,   1,    0, -5000,   0 );
-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～セリフカットインまで (376F)
-------------------------------------------------


MAX_FRAME_0 = 376;


-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 276;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 + 22 + OFFSET_X, 1, 118 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 64 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 0, 1, 112.5, -13.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 115.1, -13.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 115.1, -13.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 117.7, -13.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 117.7, -13.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 120.3, -14.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 120.3, -14.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 122.8, -14.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 125.4, -14.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 128, -14.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 130.6, -15 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 133.1, -15.2 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 135.7, -15.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 138.3, -15.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 138.3, -15.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 178.4, -8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 180, -7.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 181.6, -7.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 183.2, -7.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 184.8, -7.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 186.4, -6.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 188, -6.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 189.6, -6.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 191.2, -6.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 192.8, -5.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 194.4, -5.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 196, -5.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 197.6, -5.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 199.2, -5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 290.6, 7.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 402.4, 21.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 534.4, 39.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 686.9, 59.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 859.6, 82.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 1052.6, 107.8 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 1266, 135.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 1499.7, 166.7 , 0 );

setScaleKey( spep_0 + 0, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 6.28, 6.28 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 7.23, 7.23 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 8.26, 8.26 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 80 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 146 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 240 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 80 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -382.1, -81.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -382.1, -81.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -764.9, -284.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -764.9, -284.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -786.6, -260.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -786.6, -260.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -379, -72.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -379, -72.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -764.9, -284.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -764.9, -284.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -771.1, -291.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -771.1, -291.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -375.9, -75.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -375.9, -75.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -145.3, 19.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -145.3, 19.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -154.6, 32.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -154.6, 32.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -125.8, 35.4 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -125.8, 35.4 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -132, 29.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -132, 29.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -91.6, 50.8 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -91.6, 50.8 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -97.8, 47.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -97.8, 47.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -86.7, 55.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -86.7, 55.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -92.9, 49.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -92.9, 49.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -70.7, 56.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -70.7, 56.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -62, 64.4 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -62, 64.4 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -53.3, 72.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -53.3, 72.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 13.5, 5.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 13.5, 5.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 14.4, 7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 14.4, 7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 14.9, 7.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 14.9, 7.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 15.1, 8.5 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 15.1, 8.5 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 14.9, 9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 14.9, 9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 14.4, 9.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 14.4, 9.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 13.5, 9.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 13.5, 9.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 12.3, 8.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 12.3, 8.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 10.6, 8.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 10.6, 8.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 2.1, 21.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 2.1, 21.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 10.6, 33.4 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 10.6, 33.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 3.7, 51.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 3.7, 51.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 12.7, 36.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 12.7, 36.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 9.4, 31.2 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 9.4, 31.2 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 12.2, 38.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 12.2, 38.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 5.8, 36.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 5.8, 36.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 11.8, 40.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 11.8, 40.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 11.6, 41 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 11.6, 41 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -0.7, 48.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -0.7, 48.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 0.8, 48.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 0.8, 48.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 14.7, 67.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 14.7, 67.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 1.4, 81.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 1.4, 81.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 19.2, 70.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 19.2, 70.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 12.3, 63.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 12.3, 63.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 23.9, 74.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 23.9, 74.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 20.1, 69.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 20.1, 69.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 28.7, 78 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 28.7, 78 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 41.3, 93.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 41.3, 93.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 59.7, 83.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 59.7, 83.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 50.2, 76 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 50.2, 76 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 71.8, 87.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 71.8, 87.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 61.5, 84.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 61.5, 84.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 69.8, 87.7 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 69.8, 87.7 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 62.7, 78.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 62.7, 78.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 67.9, 88.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 67.9, 88.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 57.7, 94.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 57.7, 94.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 66.1, 88.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 66.1, 88.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 65.1, 88.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 65.1, 88.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 64.2, 88.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 64.2, 88.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 63.3, 88.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 63.3, 88.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 62.4, 89.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 62.4, 89.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 61.4, 89.3 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 61.4, 89.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 60.5, 89.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 60.5, 89.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 38.8, 89.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 38.8, 89.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 21.1, 89.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 21.1, 89.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 7.7, 90.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 7.7, 90.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -1.6, 90.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -1.6, 90.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -2.8, 91.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -2.8, 91.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -4, 92.2 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -4, 92.2 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -5.2, 93 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -5.2, 93 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -6.4, 93.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -6.4, 93.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -7.5, 94.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -7.5, 94.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -8.7, 95.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -8.7, 95.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -9.8, 96.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -9.8, 96.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -10.9, 97.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -10.9, 97.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -12.1, 98 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -12.1, 98 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -112.2, 108 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -112.2, 108 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -107.2, 130 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -107.2, 130 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -145.4, 146.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -145.4, 146.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -216.8, 269.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -216.8, 269.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -340.9, 388.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -340.9, 388.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -431.3, 515.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -431.3, 515.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -537.7, 620.5 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -537.7, 620.5 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -610.4, 721.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -610.4, 721.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -692.8, 796.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -692.8, 796.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -753.9, 886.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -753.9, 886.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -818.5, 947.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -818.5, 947.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -861.8, 1010.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -861.8, 1010.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -914.9, 1067.1 , 0 );

setScaleKey( spep_0 + 80 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 8.22, 8.22 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 8.22, 8.22 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 8.22, 8.22 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 8.22, 8.22 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.13, 2.13 );

setRotateKey( spep_0 + 80 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -75.4 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -75.4 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -76 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -76 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -79 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -79 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -68.6 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -68.6 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -70.3 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -70.3 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -70.7 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -70.7 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -71.5 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -71.5 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -46.3 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -46.3 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -53.9 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -53.9 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 42.3 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );
setTimeStretch( SE002, 1.11, 30, 4 );
SE003 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 8, SE003, 35 );
setTimeStretch( SE003, 1.24, 30, 4 );

--振りかぶる
SE004 = playSeVer2( spep_0 + 56, 1116, "",spep_0 + 92, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 84 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--パンチ
SE005 = playSeVer2( spep_0 + 78, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE005, 85 );
SE006 = playSeVer2( spep_0 + 80, 1010, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 80, 1187, "", 0, 0, 0, -1);

--連打
SE008 = playSeVer2( spep_0 + 138, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 144, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 144, 1153, "",spep_0 + 182, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 144, SE010, 77 );
SE011 = playSeVer2( spep_0 + 144, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 20 );
SE012 = playSeVer2( spep_0 + 162, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 162, 1187, "",spep_0 + 200, 0, 26, -1);
SE014 = playSeVer2( spep_0 + 162, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE014, 77 );
SE015 = playSeVer2( spep_0 + 180, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE015, 89 );
SE016 = playSeVer2( spep_0 + 180, 1190, "",spep_0 + 226, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 180, SE016, 83 );
SE017 = playSeVer2( spep_0 + 180, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_0 + 200, 1109, "", 0, 0, 0, -1);

--空力音
SE019 = playSeVer2( spep_0 + 266, 1175, "",spep_0 + 402, 14, 18, -1);
setSeVolumeByWorkId( spep_0 + 266, SE019, 25 );
setStartTimeMs( SE019,  1100 );
setPitch( spep_0 + 266, SE019, -500 );
setTimeStretch( SE019, 0.67, 30, 4 );

--アッパー
SE020 = playSeVer2( spep_0 + 238, 1120, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 238, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE021, 87 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--気弾ける
SE024 = playSeVer2( spep_c + 84, 1264, "",spep_c + 136, 0, 34, -1);
setSeVolumeByWorkId( spep_c + 84, SE024, 76 );
SE025 = playSeVer2( spep_c + 84, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 84, SE025, 45 );
setPitch( spep_c + 84, SE025, 5 );
setTimeStretch( SE025, 1, 30, 4 );
setBandpassFilter( spep_c + 84, SE025, 24, 6000 );

-------------------------------------------------
-- 気ダメ突進～ラスト(608F)
-------------------------------------------------


MAX_FRAME_1 = 608;


-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 92 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 92 + OFFSET_X, 1, 4 );
changeAnime( spep_1 + 116 + OFFSET_X, 1, 8 );

setMoveKey( spep_1 + 92 + OFFSET_X, 1, 8.9, -18.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 6.9, -17.3 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 4.9, -16.4 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 2.9, -15.5 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 0.9, -14.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -1.1, -13.7 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -3.1, -12.8 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -5.1, -12 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -7.1, -11.1 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -9.1, -10.2 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, -9.1, -10.2 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -121.3, 6.4 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -121.3, 6.4 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -114, 26.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -114, 26.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, -134.5, 49.4 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, -134.5, 49.4 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -117.9, 29 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -117.9, 29 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, -129.2, 24.2 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, -129.2, 24.2 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, -121.9, 31.7 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, -121.9, 31.7 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -127, 26.8 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, -127, 26.8 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, -125.9, 34.4 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, -125.9, 34.4 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, -134.1, 32.6 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, -134.1, 32.6 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, -129.8, 37.1 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, -129.8, 37.1 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -141.1, 29.1 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -141.1, 29.1 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -134, 39.4 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -134, 39.4 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, -139.3, 34.3 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, -139.3, 34.3 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, -138.4, 41.5 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, -138.4, 41.5 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -146.8, 39.5 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -146.8, 39.5 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, -142.8, 43.6 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -142.8, 43.6 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -151.2, 54 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, -151.2, 54 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, -147.2, 45.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, -147.2, 45.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, -152.5, 43.7 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, -152.5, 43.7 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, -151.6, 47.8 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, -151.6, 47.8 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, -156.9, 45.8 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -156.9, 45.8 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -156, 49.9 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -156, 49.9 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -161.3, 50.9 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -161.3, 50.9 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -160.4, 52 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -160.4, 52 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -162.6, 49.9 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -162.6, 49.9 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -164.7, 54.1 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -164.7, 54.1 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -170, 52 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -170, 52 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -169.1, 56.2 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -169.1, 56.2 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -171.3, 57.2 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -171.3, 57.2 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -173.5, 58.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, -173.5, 58.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -175.7, 59.3 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -175.7, 59.3 , 0 );

setScaleKey( spep_1 + 92 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 2.45, 2.45 );

setRotateKey( spep_1 + 92 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_1 + 149 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 151 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 152 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 153 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 157 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 159 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 161 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 162 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 165 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_1 + 167 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_1 + 168 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 169 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 170 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 171 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 173 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 0.3 );

-- 敵の動き2
setDisp( spep_1 + 302 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 496 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 302 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 330 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 392 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 428 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 302 + OFFSET_X, 1, -140.7, -50.4 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, -139.7, -51.2 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, -138.7, -52 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, -137.8, -52.8 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, -136.8, -53.7 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, -135.9, -54.5 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, -134.9, -55.3 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, -134, -56.1 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, -133, -56.9 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, -132.1, -57.8 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, -131.1, -58.6 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, -130.2, -59.4 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, -129.2, -60.2 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -128.3, -61 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, -128.3, -61 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, -62, -363.3 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -59.7, -360 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -57.4, -356.7 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, -55, -353.5 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, -52.7, -350.2 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, -50.4, -346.9 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, -48, -343.7 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, -45.7, -340.4 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, -43.4, -337.2 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, -41, -333.9 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -38.7, -330.6 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, -36.4, -327.4 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, -34.1, -324.1 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, -31.7, -320.8 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, -29.4, -317.6 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, -27.1, -314.3 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, -24.8, -311 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, -22.4, -307.8 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, -20.1, -304.5 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, -17.8, -301.2 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, -15.5, -298 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, -13.1, -294.7 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, -10.8, -291.4 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, -8.5, -288.2 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, -6.2, -284.9 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, -3.8, -281.6 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, -1.5, -278.4 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 0.8, -275.1 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 3.1, -271.8 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, 3.1, -271.8 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 114.7, 30.5 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 115.3, 30.2 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 115.9, 29.9 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 116.4, 29.6 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, 117, 29.4 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, 117.6, 29.1 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, 118.1, 28.8 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, 118.7, 28.5 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, 119.2, 28.2 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, 119.8, 27.9 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, 120.4, 27.6 , 0 );
setMoveKey( spep_1 + 414 + OFFSET_X, 1, 120.9, 27.4 , 0 );
setMoveKey( spep_1 + 416 + OFFSET_X, 1, 121.5, 27.1 , 0 );
setMoveKey( spep_1 + 418 + OFFSET_X, 1, 122.1, 26.8 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, 122.6, 26.5 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, 123.2, 26.2 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, 123.8, 25.9 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, 124.3, 25.6 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, 145.9, 19.1 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, 153.9, 28.9 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, 146.4, 38.7 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, 157.5, 29.9 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, 153.1, 27.4 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 161.1, 31 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 156.6, 28.4 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 164.6, 32 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 163.3, 29.4 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 168.2, 33.1 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 163.8, 36.7 , 0 );
setMoveKey( spep_1 + 450 + OFFSET_X, 1, 171.7, 34.1 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 170.4, 28.4 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 175.3, 35.2 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 174, 32.6 , 0 );
setMoveKey( spep_1 + 458 + OFFSET_X, 1, 178.9, 36.2 , 0 );
setMoveKey( spep_1 + 459 + OFFSET_X, 1, 178.9, 36.2 , 0 );
setMoveKey( spep_1 + 460 + OFFSET_X, 1, -34.4, -194.3 , 0 );
setMoveKey( spep_1 + 462 + OFFSET_X, 1, -21.1, -157.5 , 0 );
setMoveKey( spep_1 + 464 + OFFSET_X, 1, -11.2, -129.8 , 0 );
setMoveKey( spep_1 + 466 + OFFSET_X, 1, -4.6, -111.3 , 0 );
setMoveKey( spep_1 + 468 + OFFSET_X, 1, -4, -113.9 , 0 );
setMoveKey( spep_1 + 470 + OFFSET_X, 1, -3.5, -116.5 , 0 );
setMoveKey( spep_1 + 472 + OFFSET_X, 1, -3, -119.1 , 0 );
setMoveKey( spep_1 + 474 + OFFSET_X, 1, -2.4, -121.7 , 0 );
setMoveKey( spep_1 + 476 + OFFSET_X, 1, -1.9, -124.3 , 0 );
setMoveKey( spep_1 + 478 + OFFSET_X, 1, -1.3, -126.9 , 0 );
setMoveKey( spep_1 + 480 + OFFSET_X, 1, -0.8, -129.4 , 0 );
setMoveKey( spep_1 + 482 + OFFSET_X, 1, -0.3, -132 , 0 );
setMoveKey( spep_1 + 484 + OFFSET_X, 1, 0.2, -134.6 , 0 );
setMoveKey( spep_1 + 486 + OFFSET_X, 1, 0.7, -137.2 , 0 );
setMoveKey( spep_1 + 488 + OFFSET_X, 1, 1.3, -139.8 , 0 );
setMoveKey( spep_1 + 490 + OFFSET_X, 1, 1.8, -142.4 , 0 );
setMoveKey( spep_1 + 492 + OFFSET_X, 1, 2.3, -145 , 0 );
setMoveKey( spep_1 + 494 + OFFSET_X, 1, 2.8, -147.6 , 0 );
setMoveKey( spep_1 + 496 + OFFSET_X, 1, 2.8, -147.6 , 0 );

setScaleKey( spep_1 + 302 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 329 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_1 + 346 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_1 + 350 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 356 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_1 + 358 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_1 + 360 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_1 + 362 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_1 + 364 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_1 + 366 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_1 + 368 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_1 + 370 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_1 + 374 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_1 + 376 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_1 + 378 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 391 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 427 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 428 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 432 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 434 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 440 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 442 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 446 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 448 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 450 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 452 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 454 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 456 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 458 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 459 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 460 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_1 + 462 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_1 + 464 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 466 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 468 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 470 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 472 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 474 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 476 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 478 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 480 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 482 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 484 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 486 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 488 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 490 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 492 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 494 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 496 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_1 + 302 + OFFSET_X, 1, -60 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, -59.7 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, -59 );
setRotateKey( spep_1 + 329 + OFFSET_X, 1, -59 );
setRotateKey( spep_1 + 330 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 354 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 356 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_1 + 360 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_1 + 362 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_1 + 368 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_1 + 370 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_1 + 374 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_1 + 376 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 382 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 384 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 391 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 392 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, -45.3 );
setRotateKey( spep_1 + 400 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 402 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_1 + 404 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_1 + 406 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_1 + 408 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 414 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 416 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_1 + 418 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_1 + 420 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_1 + 422 + OFFSET_X, 1, -43 );
setRotateKey( spep_1 + 424 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 426 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 428 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, 7 );
setRotateKey( spep_1 + 432 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_1 + 434 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_1 + 436 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 440 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_1 + 442 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 446 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_1 + 448 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_1 + 450 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_1 + 452 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_1 + 454 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_1 + 456 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_1 + 458 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_1 + 459 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_1 + 460 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_1 + 462 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_1 + 464 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 466 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 468 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_1 + 470 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_1 + 472 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 474 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 476 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_1 + 478 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 480 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 482 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_1 + 484 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_1 + 486 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_1 + 488 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_1 + 490 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_1 + 492 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_1 + 494 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_1 + 496 + OFFSET_X, 1, 15.1 );

-- ** 音 ** --
--気弾ける
SE026 = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE026, 112 );
SE027 = playSeVer2( spep_1 + 0, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE027, 71 );

--オーラ
SE028 = playSeVer2( spep_1 + 18, 1036, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 42, 1036, "", 0, 0, 0, -1);

--向かってくる
SE030 = playSeVer2( spep_1 + 64, 1017, "",spep_1 + 114, 0, 24, -1);
SE031 = playSeVer2( spep_1 + 64, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE031, 136 );
SE032 = playSeVer2( spep_1 + 64, 9, "",spep_1 + 124, 0, 36, -1);
SE033 = playSeVer2( spep_1 + 64, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE033, 52 );
setTimeStretch( SE033, 0.76, 30, 4 );

--瞬間移動
SE034 = playSeVer2( spep_1 + 90, 1109, "", 0, 0, 0, -1);

--強腹パン
SE035 = playSeVer2( spep_1 + 102, 1359, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 102, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE036, 63 );

--振り返る
SE037 = playSeVer2( spep_1 + 172, 1278, "",spep_1 + 376, 36, 86, -1);
setSeVolumeByWorkId( spep_1 + 172, SE037, 42 );
setStartTimeMs( SE037,  1167 );

----強腹パン
SE038 = playSeVer2( spep_1 + 106, 1187, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 112, 1153, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 116, 1190, "", 0, 0, 0, -1);

----振り返る
SE041 = playSeVer2( spep_1 + 170, 1263, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 170, SE041, 126 );
setStartTimeMs( SE041,  433 );
setPitch( spep_1 + 170, SE041, -500 );
setTimeStretch( SE041, 0.95, 30, 4 );

----強腹パン
SE042 = playSeVer2( spep_1 + 138, 1190, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_1 + 138, SE042, 79 );

----振り返る
SE043 = playSeVer2( spep_1 + 170, 1305, "",spep_1 + 336, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 170, SE043, 71 );
setPitch( spep_1 + 170, SE043, -600 );
setTimeStretch( SE043, 0.6, 30, 4 );
SE044 = playSeVer2( spep_1 + 170, 1116, "",spep_1 + 220, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 170, SE044, 56 );
setTimeStretch( SE044, 2, 30, 4 );

----腕前に出す
SE045 = playSeVer2( spep_1 + 308, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 308, SE045, 85 );
SE046 = playSeVer2( spep_1 + 316, 1003, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 316, SE046, 75 );

----画面遷移
SE047 = playSeVer2( spep_1 + 332, 1072, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 332, SE047, 72 );

----空気弾放つ
SE048 = playSeVer2( spep_1 + 390, 1182, "",spep_1 + 436, 0, 24, -1);
SE049 = playSeVer2( spep_1 + 390, 1188, "",spep_1 + 446, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 390, SE049, 71 );

----敵ヒット
SE050 = playSeVer2( spep_1 + 414, 1258, "",spep_1 + 516, 0, 26, -1);
SE051 = playSeVer2( spep_1 + 418, 1011, "", 0, 0, 0, -1);

----敵飛んでいく
SE052 = playSeVer2( spep_1 + 454, 1121, "",spep_1 + 516, 10, 20, -1);
setStartTimeMs( SE052,  267 );

----敵吹き飛ぶ
SE053 = playSeVer2( spep_1 + 446, 1027, "", 0, 0, 0, -1);

----地面激突
SE054 = playSeVer2( spep_1 + 492, 1023, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 492, 1159, "", 0, 0, 0, -1);

----風力音
SE056 = playSeVer2( spep_1 + 502, 1259, "",spep_1 + 594, 0, 32, -1);
setPitch( spep_1 + 502, SE056, -600 );
setTimeStretch( SE056, 0.65, 30, 4 );


-- ** ダメージ表示 ** --
dealDamage( spep_1 + 502); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -6); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～セリフカットインまで (376F)
-------------------------------------------------


MAX_FRAME_0 = 376;


-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 276;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
changeAnime( spep_0 + 0, 1, 102 );
changeAnime( spep_0 + 22 + OFFSET_X, 1, 118 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 64 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 0, 1, 112.5, -13.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 115.1, -13.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 115.1, -13.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 117.7, -13.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 117.7, -13.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 120.3, -14.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 120.3, -14.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 122.8, -14.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 125.4, -14.6 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 128, -14.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 130.6, -15 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 133.1, -15.2 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 135.7, -15.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 138.3, -15.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 138.3, -15.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 178.4, -8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 180, -7.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 181.6, -7.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 183.2, -7.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 184.8, -7.1 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 186.4, -6.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 188, -6.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 189.6, -6.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 191.2, -6.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 192.8, -5.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 194.4, -5.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 196, -5.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 197.6, -5.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 199.2, -5 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 290.6, 7.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 402.4, 21.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 534.4, 39.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 686.9, 59.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 859.6, 82.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 1052.6, 107.8 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 1266, 135.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 1499.7, 166.7 , 0 );

setScaleKey( spep_0 + 0, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 6.28, 6.28 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 7.23, 7.23 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 8.26, 8.26 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 80 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 146 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 240 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 246 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 80 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -382.1, -81.4 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -382.1, -81.4 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -764.9, -284.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -764.9, -284.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -786.6, -260.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -786.6, -260.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -379, -72.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -379, -72.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -764.9, -284.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -764.9, -284.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -771.1, -291.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -771.1, -291.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -369.7, -65.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -375.9, -75.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -375.9, -75.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -145.3, 19.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -145.3, 19.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -154.6, 32.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -154.6, 32.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -125.8, 35.4 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -125.8, 35.4 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -132, 29.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -132, 29.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -91.6, 50.8 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -91.6, 50.8 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -97.8, 47.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -97.8, 47.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -86.7, 55.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -86.7, 55.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -92.9, 49.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -92.9, 49.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -70.7, 56.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -70.7, 56.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -62, 64.4 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -62, 64.4 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -53.3, 72.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -53.3, 72.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 13.5, 5.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 13.5, 5.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 14.4, 7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 14.4, 7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 14.9, 7.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 14.9, 7.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 15.1, 8.5 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 15.1, 8.5 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 14.9, 9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 14.9, 9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 14.4, 9.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 14.4, 9.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 13.5, 9.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 13.5, 9.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 12.3, 8.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 12.3, 8.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 10.6, 8.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 10.6, 8.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 2.1, 21.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 2.1, 21.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 10.6, 33.4 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 10.6, 33.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 3.7, 51.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 3.7, 51.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 12.7, 36.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 12.7, 36.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 9.4, 31.2 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 9.4, 31.2 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 12.2, 38.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 12.2, 38.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 5.8, 36.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 5.8, 36.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 11.8, 40.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 11.8, 40.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 11.6, 41 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 11.6, 41 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -0.7, 48.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -0.7, 48.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 0.8, 48.4 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 0.8, 48.4 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 14.7, 67.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 14.7, 67.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 1.4, 81.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 1.4, 81.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 19.2, 70.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 19.2, 70.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 12.3, 63.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 12.3, 63.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 23.9, 74.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 23.9, 74.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 20.1, 69.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 20.1, 69.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 28.7, 78 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 28.7, 78 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 41.3, 93.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 41.3, 93.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 59.7, 83.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 59.7, 83.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 50.2, 76 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 50.2, 76 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 71.8, 87.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 71.8, 87.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 61.5, 84.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 61.5, 84.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 69.8, 87.7 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 69.8, 87.7 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 62.7, 78.6 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 62.7, 78.6 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 67.9, 88.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 67.9, 88.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 57.7, 94.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 57.7, 94.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 66.1, 88.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 66.1, 88.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 65.1, 88.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 65.1, 88.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 64.2, 88.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 64.2, 88.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 63.3, 88.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 63.3, 88.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 62.4, 89.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 62.4, 89.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 61.4, 89.3 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 61.4, 89.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 60.5, 89.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 60.5, 89.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 38.8, 89.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 38.8, 89.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 21.1, 89.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 21.1, 89.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 7.7, 90.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 7.7, 90.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -1.6, 90.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -1.6, 90.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -2.8, 91.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -2.8, 91.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -4, 92.2 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -4, 92.2 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -5.2, 93 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -5.2, 93 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -6.4, 93.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -6.4, 93.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -7.5, 94.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -7.5, 94.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -8.7, 95.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -8.7, 95.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -9.8, 96.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -9.8, 96.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -10.9, 97.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -10.9, 97.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -12.1, 98 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -12.1, 98 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -112.2, 108 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -112.2, 108 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -107.2, 130 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -107.2, 130 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -145.4, 146.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -145.4, 146.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -216.8, 269.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -216.8, 269.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -340.9, 388.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -340.9, 388.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -431.3, 515.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -431.3, 515.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -537.7, 620.5 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -537.7, 620.5 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -610.4, 721.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -610.4, 721.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -692.8, 796.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -692.8, 796.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -753.9, 886.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -753.9, 886.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -818.5, 947.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -818.5, 947.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -861.8, 1010.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -861.8, 1010.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -914.9, 1067.1 , 0 );

setScaleKey( spep_0 + 80 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 8.22, 8.22 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 8.22, 8.22 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 8.22, 8.22 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 8.22, 8.22 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.13, 2.13 );

setRotateKey( spep_0 + 80 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -77.7 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -75.4 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -75.4 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -76 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -76 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -77.8 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -79 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -79 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -68.6 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -68.6 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -69.8 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -70.3 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -70.3 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -70.7 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -70.7 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -71 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -71.5 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -71.5 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -46.3 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -46.3 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -53.9 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -53.9 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 42.3 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );
setTimeStretch( SE002, 1.11, 30, 4 );
SE003 = playSeVer2( spep_0 + 8, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 8, SE003, 35 );
setTimeStretch( SE003, 1.24, 30, 4 );

--振りかぶる
SE004 = playSeVer2( spep_0 + 56, 1116, "",spep_0 + 92, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 56, SE004, 84 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--パンチ
SE005 = playSeVer2( spep_0 + 78, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE005, 85 );
SE006 = playSeVer2( spep_0 + 80, 1010, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 80, 1187, "", 0, 0, 0, -1);

--連打
SE008 = playSeVer2( spep_0 + 138, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 144, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 144, 1153, "",spep_0 + 182, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 144, SE010, 77 );
SE011 = playSeVer2( spep_0 + 144, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 20 );
SE012 = playSeVer2( spep_0 + 162, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 162, 1187, "",spep_0 + 200, 0, 26, -1);
SE014 = playSeVer2( spep_0 + 162, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE014, 77 );
SE015 = playSeVer2( spep_0 + 180, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE015, 89 );
SE016 = playSeVer2( spep_0 + 180, 1190, "",spep_0 + 226, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 180, SE016, 83 );
SE017 = playSeVer2( spep_0 + 180, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_0 + 200, 1109, "", 0, 0, 0, -1);

--空力音
SE019 = playSeVer2( spep_0 + 266, 1175, "",spep_0 + 402, 14, 18, -1);
setSeVolumeByWorkId( spep_0 + 266, SE019, 25 );
setStartTimeMs( SE019,  1100 );
setPitch( spep_0 + 266, SE019, -500 );
setTimeStretch( SE019, 0.67, 30, 4 );

--アッパー
SE020 = playSeVer2( spep_0 + 238, 1120, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 238, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE021, 87 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--気弾ける
SE024 = playSeVer2( spep_c + 84, 1264, "",spep_c + 136, 0, 34, -1);
setSeVolumeByWorkId( spep_c + 84, SE024, 76 );
SE025 = playSeVer2( spep_c + 84, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_c + 84, SE025, 45 );
setPitch( spep_c + 84, SE025, 5 );
setTimeStretch( SE025, 1, 30, 4 );
setBandpassFilter( spep_c + 84, SE025, 24, 6000 );

-------------------------------------------------
-- 気ダメ突進～ラスト(608F)
-------------------------------------------------


MAX_FRAME_1 = 608;


-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 92 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 92 + OFFSET_X, 1, 4 );
changeAnime( spep_1 + 116 + OFFSET_X, 1, 8 );

setMoveKey( spep_1 + 92 + OFFSET_X, 1, 8.9, -18.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 6.9, -17.3 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 4.9, -16.4 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 2.9, -15.5 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 0.9, -14.6 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, -1.1, -13.7 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -3.1, -12.8 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -5.1, -12 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -7.1, -11.1 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -9.1, -10.2 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, -9.1, -10.2 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, -121.3, 6.4 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, -121.3, 6.4 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, -114, 26.3 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, -114, 26.3 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, -134.5, 49.4 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, -134.5, 49.4 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -117.9, 29 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -117.9, 29 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, -129.2, 24.2 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, -129.2, 24.2 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, -121.9, 31.7 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, -121.9, 31.7 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -127, 26.8 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, -127, 26.8 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, -125.9, 34.4 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, -125.9, 34.4 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, -134.1, 32.6 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, -134.1, 32.6 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, -129.8, 37.1 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, -129.8, 37.1 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -141.1, 29.1 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -141.1, 29.1 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -134, 39.4 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -134, 39.4 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, -139.3, 34.3 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, -139.3, 34.3 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, -138.4, 41.5 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, -138.4, 41.5 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -146.8, 39.5 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -146.8, 39.5 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, -142.8, 43.6 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, -142.8, 43.6 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, -151.2, 54 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, -151.2, 54 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, -147.2, 45.7 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, -147.2, 45.7 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, -152.5, 43.7 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, -152.5, 43.7 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, -151.6, 47.8 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, -151.6, 47.8 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, -156.9, 45.8 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, -156.9, 45.8 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, -156, 49.9 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, -156, 49.9 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, -161.3, 50.9 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, -161.3, 50.9 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -160.4, 52 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -160.4, 52 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, -162.6, 49.9 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, -162.6, 49.9 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -164.7, 54.1 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -164.7, 54.1 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -170, 52 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -170, 52 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -169.1, 56.2 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, -169.1, 56.2 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -171.3, 57.2 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -171.3, 57.2 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -173.5, 58.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, -173.5, 58.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -175.7, 59.3 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, -175.7, 59.3 , 0 );

setScaleKey( spep_1 + 92 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 2.45, 2.45 );

setRotateKey( spep_1 + 92 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 115 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 116 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, -2 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_1 + 149 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 151 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_1 + 152 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 153 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_1 + 154 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 155 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_1 + 156 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 157 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_1 + 158 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 159 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_1 + 160 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 161 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_1 + 162 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 165 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_1 + 167 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_1 + 168 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 169 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_1 + 170 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 171 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_1 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 173 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_1 + 175 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 0.3 );

-- 敵の動き2
setDisp( spep_1 + 302 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 496 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 302 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 330 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 392 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 428 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 302 + OFFSET_X, 1, -140.7, -50.4 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, -139.7, -51.2 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, -138.7, -52 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, -137.8, -52.8 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, -136.8, -53.7 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, -135.9, -54.5 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, -134.9, -55.3 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, -134, -56.1 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, -133, -56.9 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, -132.1, -57.8 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, -131.1, -58.6 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, -130.2, -59.4 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, -129.2, -60.2 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, -128.3, -61 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, -128.3, -61 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, -62, -363.3 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, -59.7, -360 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, -57.4, -356.7 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, -55, -353.5 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, -52.7, -350.2 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, -50.4, -346.9 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, -48, -343.7 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, -45.7, -340.4 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, -43.4, -337.2 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, -41, -333.9 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, -38.7, -330.6 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, -36.4, -327.4 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, -34.1, -324.1 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, -31.7, -320.8 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, -29.4, -317.6 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, -27.1, -314.3 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, -24.8, -311 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, -22.4, -307.8 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, -20.1, -304.5 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, -17.8, -301.2 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, -15.5, -298 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, -13.1, -294.7 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, -10.8, -291.4 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, -8.5, -288.2 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, -6.2, -284.9 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, -3.8, -281.6 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, -1.5, -278.4 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 0.8, -275.1 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 3.1, -271.8 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, 3.1, -271.8 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 114.7, 30.5 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 115.3, 30.2 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 115.9, 29.9 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 116.4, 29.6 , 0 );
setMoveKey( spep_1 + 400 + OFFSET_X, 1, 117, 29.4 , 0 );
setMoveKey( spep_1 + 402 + OFFSET_X, 1, 117.6, 29.1 , 0 );
setMoveKey( spep_1 + 404 + OFFSET_X, 1, 118.1, 28.8 , 0 );
setMoveKey( spep_1 + 406 + OFFSET_X, 1, 118.7, 28.5 , 0 );
setMoveKey( spep_1 + 408 + OFFSET_X, 1, 119.2, 28.2 , 0 );
setMoveKey( spep_1 + 410 + OFFSET_X, 1, 119.8, 27.9 , 0 );
setMoveKey( spep_1 + 412 + OFFSET_X, 1, 120.4, 27.6 , 0 );
setMoveKey( spep_1 + 414 + OFFSET_X, 1, 120.9, 27.4 , 0 );
setMoveKey( spep_1 + 416 + OFFSET_X, 1, 121.5, 27.1 , 0 );
setMoveKey( spep_1 + 418 + OFFSET_X, 1, 122.1, 26.8 , 0 );
setMoveKey( spep_1 + 420 + OFFSET_X, 1, 122.6, 26.5 , 0 );
setMoveKey( spep_1 + 422 + OFFSET_X, 1, 123.2, 26.2 , 0 );
setMoveKey( spep_1 + 424 + OFFSET_X, 1, 123.8, 25.9 , 0 );
setMoveKey( spep_1 + 426 + OFFSET_X, 1, 124.3, 25.6 , 0 );
setMoveKey( spep_1 + 428 + OFFSET_X, 1, 145.9, 19.1 , 0 );
setMoveKey( spep_1 + 430 + OFFSET_X, 1, 153.9, 28.9 , 0 );
setMoveKey( spep_1 + 432 + OFFSET_X, 1, 146.4, 38.7 , 0 );
setMoveKey( spep_1 + 434 + OFFSET_X, 1, 157.5, 29.9 , 0 );
setMoveKey( spep_1 + 436 + OFFSET_X, 1, 153.1, 27.4 , 0 );
setMoveKey( spep_1 + 438 + OFFSET_X, 1, 161.1, 31 , 0 );
setMoveKey( spep_1 + 440 + OFFSET_X, 1, 156.6, 28.4 , 0 );
setMoveKey( spep_1 + 442 + OFFSET_X, 1, 164.6, 32 , 0 );
setMoveKey( spep_1 + 444 + OFFSET_X, 1, 163.3, 29.4 , 0 );
setMoveKey( spep_1 + 446 + OFFSET_X, 1, 168.2, 33.1 , 0 );
setMoveKey( spep_1 + 448 + OFFSET_X, 1, 163.8, 36.7 , 0 );
setMoveKey( spep_1 + 450 + OFFSET_X, 1, 171.7, 34.1 , 0 );
setMoveKey( spep_1 + 452 + OFFSET_X, 1, 170.4, 28.4 , 0 );
setMoveKey( spep_1 + 454 + OFFSET_X, 1, 175.3, 35.2 , 0 );
setMoveKey( spep_1 + 456 + OFFSET_X, 1, 174, 32.6 , 0 );
setMoveKey( spep_1 + 458 + OFFSET_X, 1, 178.9, 36.2 , 0 );
setMoveKey( spep_1 + 459 + OFFSET_X, 1, 178.9, 36.2 , 0 );
setMoveKey( spep_1 + 460 + OFFSET_X, 1, -34.4, -194.3 , 0 );
setMoveKey( spep_1 + 462 + OFFSET_X, 1, -21.1, -157.5 , 0 );
setMoveKey( spep_1 + 464 + OFFSET_X, 1, -11.2, -129.8 , 0 );
setMoveKey( spep_1 + 466 + OFFSET_X, 1, -4.6, -111.3 , 0 );
setMoveKey( spep_1 + 468 + OFFSET_X, 1, -4, -113.9 , 0 );
setMoveKey( spep_1 + 470 + OFFSET_X, 1, -3.5, -116.5 , 0 );
setMoveKey( spep_1 + 472 + OFFSET_X, 1, -3, -119.1 , 0 );
setMoveKey( spep_1 + 474 + OFFSET_X, 1, -2.4, -121.7 , 0 );
setMoveKey( spep_1 + 476 + OFFSET_X, 1, -1.9, -124.3 , 0 );
setMoveKey( spep_1 + 478 + OFFSET_X, 1, -1.3, -126.9 , 0 );
setMoveKey( spep_1 + 480 + OFFSET_X, 1, -0.8, -129.4 , 0 );
setMoveKey( spep_1 + 482 + OFFSET_X, 1, -0.3, -132 , 0 );
setMoveKey( spep_1 + 484 + OFFSET_X, 1, 0.2, -134.6 , 0 );
setMoveKey( spep_1 + 486 + OFFSET_X, 1, 0.7, -137.2 , 0 );
setMoveKey( spep_1 + 488 + OFFSET_X, 1, 1.3, -139.8 , 0 );
setMoveKey( spep_1 + 490 + OFFSET_X, 1, 1.8, -142.4 , 0 );
setMoveKey( spep_1 + 492 + OFFSET_X, 1, 2.3, -145 , 0 );
setMoveKey( spep_1 + 494 + OFFSET_X, 1, 2.8, -147.6 , 0 );
setMoveKey( spep_1 + 496 + OFFSET_X, 1, 2.8, -147.6 , 0 );

setScaleKey( spep_1 + 302 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 329 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_1 + 330 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_1 + 334 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 5.78, 5.78 );
setScaleKey( spep_1 + 338 + OFFSET_X, 1, 5.75, 5.75 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_1 + 342 + OFFSET_X, 1, 5.69, 5.69 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_1 + 346 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_1 + 350 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_1 + 354 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_1 + 356 + OFFSET_X, 1, 5.46, 5.46 );
setScaleKey( spep_1 + 358 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_1 + 360 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_1 + 362 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_1 + 364 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_1 + 366 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_1 + 368 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_1 + 370 + OFFSET_X, 1, 5.23, 5.23 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_1 + 374 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_1 + 376 + OFFSET_X, 1, 5.13, 5.13 );
setScaleKey( spep_1 + 378 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_1 + 380 + OFFSET_X, 1, 5.07, 5.07 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_1 + 384 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 391 + OFFSET_X, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 427 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 428 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 430 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 432 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 434 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 436 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 438 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 440 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_1 + 442 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 444 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 446 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 448 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 450 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 452 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 454 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 456 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 458 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 459 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 460 + OFFSET_X, 1, 5.86, 5.86 );
setScaleKey( spep_1 + 462 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_1 + 464 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 466 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 468 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 470 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 472 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 474 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 476 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 478 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 480 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 482 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 484 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 486 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 488 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 490 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 492 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 494 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 496 + OFFSET_X, 1, 0.12, 0.12 );

setRotateKey( spep_1 + 302 + OFFSET_X, 1, -60 );
setRotateKey( spep_1 + 304 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_1 + 306 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_1 + 308 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_1 + 310 + OFFSET_X, 1, -59.7 );
setRotateKey( spep_1 + 312 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 314 + OFFSET_X, 1, -59.6 );
setRotateKey( spep_1 + 316 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_1 + 318 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_1 + 320 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_1 + 322 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_1 + 324 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_1 + 326 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_1 + 328 + OFFSET_X, 1, -59 );
setRotateKey( spep_1 + 329 + OFFSET_X, 1, -59 );
setRotateKey( spep_1 + 330 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 332 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_1 + 334 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 340 + OFFSET_X, 1, -32 );
setRotateKey( spep_1 + 342 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_1 + 346 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_1 + 348 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 354 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_1 + 356 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_1 + 360 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_1 + 362 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_1 + 368 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_1 + 370 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_1 + 374 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_1 + 376 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 382 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_1 + 384 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 391 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_1 + 392 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, -45.3 );
setRotateKey( spep_1 + 400 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_1 + 402 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_1 + 404 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_1 + 406 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_1 + 408 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_1 + 410 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_1 + 412 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_1 + 414 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_1 + 416 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_1 + 418 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_1 + 420 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_1 + 422 + OFFSET_X, 1, -43 );
setRotateKey( spep_1 + 424 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_1 + 426 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_1 + 428 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_1 + 430 + OFFSET_X, 1, 7 );
setRotateKey( spep_1 + 432 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_1 + 434 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_1 + 436 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 438 + OFFSET_X, 1, 8 );
setRotateKey( spep_1 + 440 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_1 + 442 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_1 + 444 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 446 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_1 + 448 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_1 + 450 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_1 + 452 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_1 + 454 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_1 + 456 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_1 + 458 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_1 + 459 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_1 + 460 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_1 + 462 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_1 + 464 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 466 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_1 + 468 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_1 + 470 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_1 + 472 + OFFSET_X, 1, 5 );
setRotateKey( spep_1 + 474 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 476 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_1 + 478 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_1 + 480 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_1 + 482 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_1 + 484 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_1 + 486 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_1 + 488 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_1 + 490 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_1 + 492 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_1 + 494 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_1 + 496 + OFFSET_X, 1, 15.1 );

-- ** 音 ** --
--気弾ける
SE026 = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE026, 112 );
SE027 = playSeVer2( spep_1 + 0, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE027, 71 );

--オーラ
SE028 = playSeVer2( spep_1 + 18, 1036, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 42, 1036, "", 0, 0, 0, -1);

--向かってくる
SE030 = playSeVer2( spep_1 + 64, 1017, "",spep_1 + 114, 0, 24, -1);
SE031 = playSeVer2( spep_1 + 64, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE031, 136 );
SE032 = playSeVer2( spep_1 + 64, 9, "",spep_1 + 124, 0, 36, -1);
SE033 = playSeVer2( spep_1 + 64, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE033, 52 );
setTimeStretch( SE033, 0.76, 30, 4 );

--瞬間移動
SE034 = playSeVer2( spep_1 + 90, 1109, "", 0, 0, 0, -1);

--強腹パン
SE035 = playSeVer2( spep_1 + 102, 1359, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_1 + 102, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE036, 63 );

--振り返る
SE037 = playSeVer2( spep_1 + 172, 1278, "",spep_1 + 376, 36, 86, -1);
setSeVolumeByWorkId( spep_1 + 172, SE037, 42 );
setStartTimeMs( SE037,  1167 );

----強腹パン
SE038 = playSeVer2( spep_1 + 106, 1187, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 112, 1153, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 116, 1190, "", 0, 0, 0, -1);

----振り返る
SE041 = playSeVer2( spep_1 + 170, 1263, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 170, SE041, 126 );
setStartTimeMs( SE041,  433 );
setPitch( spep_1 + 170, SE041, -500 );
setTimeStretch( SE041, 0.95, 30, 4 );

----強腹パン
SE042 = playSeVer2( spep_1 + 138, 1190, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_1 + 138, SE042, 79 );

----振り返る
SE043 = playSeVer2( spep_1 + 170, 1305, "",spep_1 + 336, 0, 70, -1);
setSeVolumeByWorkId( spep_1 + 170, SE043, 71 );
setPitch( spep_1 + 170, SE043, -600 );
setTimeStretch( SE043, 0.6, 30, 4 );
SE044 = playSeVer2( spep_1 + 170, 1116, "",spep_1 + 220, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 170, SE044, 56 );
setTimeStretch( SE044, 2, 30, 4 );

----腕前に出す
SE045 = playSeVer2( spep_1 + 308, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 308, SE045, 85 );
SE046 = playSeVer2( spep_1 + 316, 1003, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_1 + 316, SE046, 75 );

----画面遷移
SE047 = playSeVer2( spep_1 + 332, 1072, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 332, SE047, 72 );

----空気弾放つ
SE048 = playSeVer2( spep_1 + 390, 1182, "",spep_1 + 436, 0, 24, -1);
SE049 = playSeVer2( spep_1 + 390, 1188, "",spep_1 + 446, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 390, SE049, 71 );

----敵ヒット
SE050 = playSeVer2( spep_1 + 414, 1258, "",spep_1 + 516, 0, 26, -1);
SE051 = playSeVer2( spep_1 + 418, 1011, "", 0, 0, 0, -1);

----敵飛んでいく
SE052 = playSeVer2( spep_1 + 454, 1121, "",spep_1 + 516, 10, 20, -1);
setStartTimeMs( SE052,  267 );

----敵吹き飛ぶ
SE053 = playSeVer2( spep_1 + 446, 1027, "", 0, 0, 0, -1);

----地面激突
SE054 = playSeVer2( spep_1 + 492, 1023, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 492, 1159, "", 0, 0, 0, -1);

----風力音
SE056 = playSeVer2( spep_1 + 502, 1259, "",spep_1 + 594, 0, 32, -1);
setPitch( spep_1 + 502, SE056, -600 );
setTimeStretch( SE056, 0.65, 30, 4 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 502); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -6); -- 終了フレーム

end
