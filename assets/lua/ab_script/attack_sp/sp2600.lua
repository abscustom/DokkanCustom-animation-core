--1027400：SSR_トランクス(青年期)_必殺技：シャイニングスラッシュ
--sp_effect_b2_00056
--sp2600

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162134;	--開幕、カットイン～カードカットイン	ef_001
SP_02 = 162136;	--画面に向かって突進～顔アップ、フィニッシュ	ef_002
SP_02b = 162137;	--画面に向かって突進～顔アップ、フィニッシュ	ef_002b

--エフェクト(てき)
SP_01r = 162135; --開幕、カットイン～カードカットイン	ef_001r
SP_02r = 162138; --画面に向かって突進～顔アップ、フィニッシュ	ef_002r
SP_02br = 162139; --画面に向かって突進～顔アップ、フィニッシュ	ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕、カットイン～カードカットイン（88F）
-------------------------------------------------


MAX_FRAME_0 = 88;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 画面に向かって突進～顔アップ、フィニッシュ（506F）
-------------------------------------------------

MAX_FRAME_1 = 506;

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
setDisp( spep_1 + 60 + OFFSET_X, 1, 1);
setDisp( spep_1 + 150 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 60 + OFFSET_X, 1, 118 );
changeAnime( spep_1 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 104 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 60 + OFFSET_X, 1, 595.3, 337.7 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 595.3, 337.7 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 531.8, 300 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 531.8, 300 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 468.4, 262.2 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 468.4, 262.2 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 404.9, 224.5 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 404.9, 224.5 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 341.6, 186.8 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 341.6, 186.8 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 278.1, 149 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 278.1, 149 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 214.7, 111.3 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 214.7, 111.3 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 151.2, 73.6 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 151.2, 73.6 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 87.9, 35.9 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 87.9, 35.9 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 87.6, 35.7 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 87.6, 35.7 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 87.3, 35.6 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 87.3, 35.6 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 87, 35.5 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 87, 35.5 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 86.6, 35.4 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 86.6, 35.4 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 86.3, 35.2 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 86.3, 35.2 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 86, 35.1 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 86, 35.1 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 59.7, 96.6 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 59.7, 96.6 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 107.1, 40.4 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 107.1, 40.4 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 119.6, 105.3 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 119.6, 105.3 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 55.2, 42.1 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 55.2, 42.1 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 86.3, 76.8 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 86.3, 76.8 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 86, 76.5 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 86, 76.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 85.8, 76.2 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 85.8, 76.2 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 22.8, 45.4 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 22.8, 45.4 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -5.3, 63.9 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -5.3, 63.9 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 42.4, 7.8 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 42.4, 7.8 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 55.1, 72.9 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 55.1, 72.9 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, -9, 9.8 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, -9, 9.8 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 22.4, 44.5 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 22.4, 44.5 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 22.3, 44.4 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 22.3, 44.4 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 22.2, 44.2 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 22.2, 44.2 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 22.1, 44.1 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 22.1, 44.1 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 22, 43.9 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 22, 43.9 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 21.9, 43.7 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 21.9, 43.7 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 21.8, 43.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 21.8, 43.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 21.7, 43.4 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 21.7, 43.4 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 21.7, 43.2 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 21.7, 43.2 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 21.6, 43 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 21.6, 43 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 77, 50.1 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 77, 50.1 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 102.7, 51.8 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 102.7, 51.8 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 100.2, 72.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 100.2, 72.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 173.2, 18 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 173.2, 18 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 348.5, 86.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 348.5, 86.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 445.6, 26.7 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 445.6, 26.7 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 688.1, 18.3 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 688.1, 18.3 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 775.5, 128.5 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 775.5, 128.5 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 729.2, 33.9 , 0 );

setScaleKey( spep_1 + 60 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_1 + 61 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_1 + 62 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_1 + 63 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 67 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 68 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 69 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 70 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 71 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 72 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_1 + 73 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_1 + 74 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 83 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 1.63, 1.63 );

setRotateKey( spep_1 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, 14.7 );

-- 敵の動き2
setDisp( spep_1 + 168 + OFFSET_X, 1, 1);
setDisp( spep_1 + 260 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 168 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 168 + OFFSET_X, 1, -50.8, -112.8 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -35, -97.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -20.4, -82.5 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -7.2, -69.5 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 4.2, -58.4 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 13.3, -49.6 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 20, -43.4 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 23.8, -40.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 24.4, -40.4 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 23.2, -42.4 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 22.1, -44.3 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 20.9, -46.2 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 19.8, -48.2 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 18.7, -50.1 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 17.5, -52.1 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 16.4, -54 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 15.3, -55.8 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 14.2, -57.8 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 13, -59.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 12, -61.5 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 10.9, -63.3 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 9.8, -65.2 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 8.8, -66.9 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 7.7, -68.8 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 31, -136.8 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 54.4, -204.7 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 77.9, -272.4 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 101.6, -339.8 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 125.4, -407.1 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 149.5, -474 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 173.6, -540.8 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 170.4, -555.9 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 167.3, -571 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 164.3, -586 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 161.4, -600.7 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 158.6, -615.4 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 155.9, -629.8 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 153.3, -644.1 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 150.8, -658.2 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 148.4, -672 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 146.1, -685.8 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 144, -699.3 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 142, -712.7 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 140.1, -725.7 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 138.3, -738.7 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 140.1, -735.8 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 141.9, -732.9 , 0 );

setScaleKey( spep_1 + 168 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 186 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 5.89, 5.89 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 6.14, 6.14 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 6.06, 6.06 );

setRotateKey( spep_1 + 168 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 260 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_1 + 384 + OFFSET_X, 1, 1);
setDisp( spep_1 + 398 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 384 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 384 + OFFSET_X, 1, 37, -226.3 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 75.3, -360.3 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 108.3, -475.7 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 135.7, -572 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 157.4, -648.8 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 173.4, -705.7 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 183.5, -742.1 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 187.6, -757.8 , 0 );

setScaleKey( spep_1 + 384 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 2.81, 2.81 );

setRotateKey( spep_1 + 384 + OFFSET_X, 1, 30.3 );
setRotateKey( spep_1 + 386 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_1 + 388 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_1 + 392 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 43.1 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--飛び込んでくる
SE003 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);

--振りかぶる
SE005 = playSeVer2( spep_1 + 34, 1072, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 62, 1003, "", 0, 0, 0, -1);

--パンチ
SE007 = playSeVer2( spep_1 + 92, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 92, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 106, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 106, 1110, "", 0, 0, 0, -1);

--キック
SE011 = playSeVer2( spep_1 + 136, 1120, "", 0, 0, 0, -1);

--向かっていく
SE012 = playSeVer2( spep_1 + 156, 1121, "",spep_1 + 284, 0, 54, -1);
setSeVolumeByWorkId( spep_1 + 156, SE012, 46 );
SE013 = playSeVer2( spep_1 + 160, 1278, "",spep_1 + 390, 0, 120, -1);
setSeVolumeByWorkId( spep_1 + 160, SE013, 32 );
SE014 = playSeVer2( spep_1 + 170, 44, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 170, 1116, "",spep_1 + 222, 0, 32, -1);

--剣抜く
SE016 = playSeVer2( spep_1 + 218, 1061, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 224, 1042, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 224, 1307, "",spep_1 + 320, 0, 52, -1);
setSeVolumeByWorkId( spep_1 + 224, SE018, 155 );

--振りかぶる
SE019 = playSeVer2( spep_1 + 278, 1117, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 278, 1004, "", 0, 0, 0, -1);

--斬りつける
SE021 = playSeVer2( spep_1 + 370, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 370, SE021, 102 );
SE022 = playSeVer2( spep_1 + 370, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 370, SE022, 73 );
SE023 = playSeVer2( spep_1 + 370, 1318, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 370, SE023, 72 );
SE024 = playSeVer2( spep_1 + 370, 1319, "",spep_1 + 530, 0, 62, 0.6);
setSeVolumeByWorkId( spep_1 + 370, SE024, 45 );
setTimeStretch( SE024, 0.83, 30, 4 );
SE025 = playSeVer2( spep_1 + 376, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 376, SE025, 117 );
SE026 = playSeVer2( spep_1 + 376, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 376, SE026, 80 );

--髪なびく
SE027 = playSeVer2( spep_1 + 426, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 426, SE027, 76 );

SE028 = playSeVer2( spep_1 + 446, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 446, SE028, 67 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 400); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕、カットイン～カードカットイン（88F）
-------------------------------------------------


MAX_FRAME_0 = 88;


-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ef_001r
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 画面に向かって突進～顔アップ、フィニッシュ（506F）
-------------------------------------------------

MAX_FRAME_1 = 506;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002br
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
setDisp( spep_1 + 60 + OFFSET_X, 1, 1);
setDisp( spep_1 + 150 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 60 + OFFSET_X, 1, 118 );
changeAnime( spep_1 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_1 + 104 + OFFSET_X, 1, 107 );
changeAnime( spep_1 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 60 + OFFSET_X, 1, 595.3, 337.7 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 595.3, 337.7 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 531.8, 300 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 531.8, 300 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 468.4, 262.2 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 468.4, 262.2 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 404.9, 224.5 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 404.9, 224.5 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 341.6, 186.8 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 341.6, 186.8 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 278.1, 149 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 278.1, 149 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 214.7, 111.3 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 214.7, 111.3 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 151.2, 73.6 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 151.2, 73.6 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 87.9, 35.9 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 87.9, 35.9 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 87.6, 35.7 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 87.6, 35.7 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 87.3, 35.6 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 87.3, 35.6 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 87, 35.5 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 87, 35.5 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 86.6, 35.4 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 86.6, 35.4 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 86.3, 35.2 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 86.3, 35.2 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 86, 35.1 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 86, 35.1 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 59.7, 96.6 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 59.7, 96.6 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 107.1, 40.4 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 107.1, 40.4 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 119.6, 105.3 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 119.6, 105.3 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 55.2, 42.1 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 55.2, 42.1 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 86.3, 76.8 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 86.3, 76.8 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 86, 76.5 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 86, 76.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 85.8, 76.2 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 85.8, 76.2 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 22.8, 45.4 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 22.8, 45.4 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, -5.3, 63.9 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, -5.3, 63.9 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 42.4, 7.8 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 42.4, 7.8 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 55.1, 72.9 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 55.1, 72.9 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, -9, 9.8 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, -9, 9.8 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 22.4, 44.5 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 22.4, 44.5 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 22.3, 44.4 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 22.3, 44.4 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 22.2, 44.2 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 22.2, 44.2 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 22.1, 44.1 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 22.1, 44.1 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 22, 43.9 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 22, 43.9 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 21.9, 43.7 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 21.9, 43.7 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 21.8, 43.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 21.8, 43.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 21.7, 43.4 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 21.7, 43.4 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 21.7, 43.2 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 21.7, 43.2 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 21.6, 43 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 21.6, 43 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 77, 50.1 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 77, 50.1 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 102.7, 51.8 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 102.7, 51.8 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 100.2, 72.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 100.2, 72.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 173.2, 18 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 173.2, 18 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 348.5, 86.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 348.5, 86.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 445.6, 26.7 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 445.6, 26.7 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 688.1, 18.3 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 688.1, 18.3 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 775.5, 128.5 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 775.5, 128.5 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 729.2, 33.9 , 0 );

setScaleKey( spep_1 + 60 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_1 + 61 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_1 + 62 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_1 + 63 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 67 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 68 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 69 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_1 + 70 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 71 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_1 + 72 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_1 + 73 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_1 + 74 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 83 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 127 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 128 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 137 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_1 + 138 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 139 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_1 + 140 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 143 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_1 + 144 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 145 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 149 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_1 + 150 + OFFSET_X, 1, 1.63, 1.63 );

setRotateKey( spep_1 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 135 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 136 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 137 + OFFSET_X, 1, 1 );
setRotateKey( spep_1 + 138 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 139 + OFFSET_X, 1, 2 );
setRotateKey( spep_1 + 140 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 141 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 142 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 143 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_1 + 144 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 145 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 146 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_1 + 147 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_1 + 148 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_1 + 150 + OFFSET_X, 1, 14.7 );

-- 敵の動き2
setDisp( spep_1 + 168 + OFFSET_X, 1, 1);
setDisp( spep_1 + 260 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 168 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 168 + OFFSET_X, 1, -50.8, -112.8 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, -35, -97.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -20.4, -82.5 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, -7.2, -69.5 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 4.2, -58.4 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 13.3, -49.6 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 20, -43.4 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 23.8, -40.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 24.4, -40.4 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 23.2, -42.4 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 22.1, -44.3 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 20.9, -46.2 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 19.8, -48.2 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 18.7, -50.1 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 17.5, -52.1 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 16.4, -54 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 15.3, -55.8 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 14.2, -57.8 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 13, -59.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 12, -61.5 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 10.9, -63.3 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 9.8, -65.2 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 8.8, -66.9 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 7.7, -68.8 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 31, -136.8 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 54.4, -204.7 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 77.9, -272.4 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 101.6, -339.8 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 125.4, -407.1 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 149.5, -474 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 173.6, -540.8 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 170.4, -555.9 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 167.3, -571 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 164.3, -586 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 161.4, -600.7 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 158.6, -615.4 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 155.9, -629.8 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 153.3, -644.1 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 150.8, -658.2 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 148.4, -672 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 146.1, -685.8 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 144, -699.3 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 142, -712.7 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 140.1, -725.7 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 138.3, -738.7 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 140.1, -735.8 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 141.9, -732.9 , 0 );

setScaleKey( spep_1 + 168 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 186 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 5.18, 5.18 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 5.31, 5.31 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 5.89, 5.89 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 6.06, 6.06 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 6.14, 6.14 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 6.2, 6.2 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 6.06, 6.06 );

setRotateKey( spep_1 + 168 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 260 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_1 + 384 + OFFSET_X, 1, 1);
setDisp( spep_1 + 398 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 384 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 384 + OFFSET_X, 1, 37, -226.3 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 75.3, -360.3 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 108.3, -475.7 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 135.7, -572 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 157.4, -648.8 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 173.4, -705.7 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 183.5, -742.1 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 187.6, -757.8 , 0 );

setScaleKey( spep_1 + 384 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 386 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 388 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_1 + 390 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_1 + 392 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_1 + 394 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_1 + 396 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 2.81, 2.81 );

setRotateKey( spep_1 + 384 + OFFSET_X, 1, 30.3 );
setRotateKey( spep_1 + 386 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_1 + 388 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_1 + 390 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_1 + 392 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_1 + 394 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_1 + 396 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 43.1 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--飛び込んでくる
SE003 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);

--振りかぶる
SE005 = playSeVer2( spep_1 + 34, 1072, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_1 + 62, 1003, "", 0, 0, 0, -1);

--パンチ
SE007 = playSeVer2( spep_1 + 92, 1009, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 92, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 106, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 106, 1110, "", 0, 0, 0, -1);

--キック
SE011 = playSeVer2( spep_1 + 136, 1120, "", 0, 0, 0, -1);

--向かっていく
SE012 = playSeVer2( spep_1 + 156, 1121, "",spep_1 + 284, 0, 54, -1);
setSeVolumeByWorkId( spep_1 + 156, SE012, 46 );
SE013 = playSeVer2( spep_1 + 160, 1278, "",spep_1 + 390, 0, 120, -1);
setSeVolumeByWorkId( spep_1 + 160, SE013, 32 );
SE014 = playSeVer2( spep_1 + 170, 44, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 170, 1116, "",spep_1 + 222, 0, 32, -1);

--剣抜く
SE016 = playSeVer2( spep_1 + 218, 1061, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 224, 1042, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 224, 1307, "",spep_1 + 320, 0, 52, -1);
setSeVolumeByWorkId( spep_1 + 224, SE018, 155 );

--振りかぶる
SE019 = playSeVer2( spep_1 + 278, 1117, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 278, 1004, "", 0, 0, 0, -1);

--斬りつける
SE021 = playSeVer2( spep_1 + 370, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 370, SE021, 102 );
SE022 = playSeVer2( spep_1 + 370, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 370, SE022, 73 );
SE023 = playSeVer2( spep_1 + 370, 1318, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 370, SE023, 72 );
SE024 = playSeVer2( spep_1 + 370, 1319, "",spep_1 + 530, 0, 62, 0.6);
setSeVolumeByWorkId( spep_1 + 370, SE024, 45 );
setTimeStretch( SE024, 0.83, 30, 4 );
SE025 = playSeVer2( spep_1 + 376, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 376, SE025, 117 );
SE026 = playSeVer2( spep_1 + 376, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 376, SE026, 80 );

--髪なびく
SE027 = playSeVer2( spep_1 + 426, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 426, SE027, 76 );

SE028 = playSeVer2( spep_1 + 446, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 446, SE028, 67 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 400); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

end
