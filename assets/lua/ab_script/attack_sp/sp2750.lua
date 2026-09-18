--1029510:LR_孫悟飯(じいちゃん)_必殺技：亀仙流風林火山
--sp_effect_b1_00298
--sp2750

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方側)
SP_01 = 163202 --正面構え ef_001
SP_02 = 163203	--ダッシュ〜攻撃〜ジャンプキック ef_002
SP_03 = 163204	--背景 ef_002b
SP_04 = 163206	--書き文字 ef_003
SP_05 = 163207	--背景 ef_003b

--エフェクト(敵側)
SP_02r = 163205	--ダッシュ〜攻撃〜ジャンプキック ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 正面構え
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 正面構え ef_001
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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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

-- ** 白フェード ** --
entryFade( spep_0 + 90 - OFFSET_X, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--集中線
SE001 = playSeVer2( spep_0 + 0, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 79 );
SE004 = playSeVer2( spep_0 + 2, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE004, 84 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 96F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--向かっていく
SE006 = playSeVer2( spep_1 + 82, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 82, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE007, 60 );
SE008 = playSeVer2( spep_1 + 82, 1117, "",spep_1 + 166, 0, 32, -1);

-------------------------------------------------
-- ダッシュ〜攻撃〜ジャンプキック
-------------------------------------------------
MAX_FRAME_2 = 426;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ダッシュ〜攻撃〜ジャンプキック ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ダッシュ〜攻撃〜ジャンプキック(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 34 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 192 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 34 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 48 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, 19, -36 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 19, -36 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 25.2, -7.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 25.2, -7.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 25.3, -10.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 25.3, -10.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 27.1, -3.6 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 27.1, -3.6 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 29.2, -7.9 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 29.2, -7.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 31.7, -2.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 31.7, -2.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 34.1, -4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 34.1, -4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 36.6, -0.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 36.6, -0.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 39, -1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 39, -1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 41.5, 0.8 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 41.5, 0.8 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 43.9, 2.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 43.9, 2.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 82.5, -9.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 82.5, -9.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 77.9, -12.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 77.9, -12.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 78.9, -6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 78.9, -6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 81.4, -10.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 81.4, -10.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 84.6, -5.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 84.6, -5.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 87.9, -8.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 87.9, -8.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 91.1, -3.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 91.1, -3.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 94.3, -5.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 94.3, -5.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 97.6, -3.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 97.6, -3.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 100.8, -2.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 100.8, -2.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 105.8, -2.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 105.8, -2.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 105.3, -4.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 105.3, -4.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 106.9, 2.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 106.9, 2.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 109.1, -1.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 109.1, -1.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 111.5, 4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 111.5, 4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 113.9, 0.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 113.9, 0.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 116.3, 6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 116.3, 6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 118.7, 3.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 118.7, 3.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 121.1, 6.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 121.1, 6.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 123.5, 7.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 123.5, 7.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 118, 41.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 118, 41.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 113.7, 40.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 113.7, 40.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 112.6, 50.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 112.6, 50.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 112.5, 48.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 112.5, 48.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 112.7, 57.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 112.7, 57.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 112.9, 57.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 112.9, 57.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 113.2, 65.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 113.2, 65.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 113.4, 65.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 113.4, 65.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 113.7, 73.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 113.7, 73.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 113.9, 74.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 113.9, 74.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 114.1, 80.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 114.1, 80.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 114.4, 84.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 114.4, 84.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 114.6, 88.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 114.6, 88.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 103.6, 221 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 103.6, 221 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 123.8, 221.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 123.8, 221.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 131.7, 237.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 131.7, 237.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 138.3, 233.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 138.3, 233.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 144, 247.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 144, 247.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 148.8, 245 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 148.8, 245 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 152.9, 255.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 152.9, 255.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 156.5, 252.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 156.5, 252.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 159.8, 261.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 159.8, 261.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 162.6, 259.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 162.6, 259.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 165.2, 266.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 165.2, 266.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 167.6, 265.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 167.6, 265.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 169.7, 267.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 169.7, 267.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 171.7, 269.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 171.7, 269.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 173.5, 271.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 173.5, 271.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 175.1, 273.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 175.1, 273.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 176.6, 274.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 176.6, 274.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 178, 275.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 178, 275.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 179.2, 277 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 179.2, 277 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 180.4, 281.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 180.4, 281.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 181.4, 276 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 181.4, 276 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 182.3, 283 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 182.3, 283 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 183.1, 278 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 183.1, 278 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 183.9, 283.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 183.9, 283.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 184.5, 279.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 184.5, 279.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 185.1, 284.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 185.1, 284.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 185.5, 281.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 185.5, 281.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 185.8, 284 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 185.8, 284 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 185.9, 282.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 185.9, 282.1 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -60.7 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -60.7 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -23.1 );

--敵の動き2
setDisp( spep_2 + 366 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 416 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 382 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 366 + OFFSET_X, 1, 52, 37.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 52, 37.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 54.5, 34.9 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 54.5, 34.9 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 57, 32.3 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 57, 32.3 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 59.5, 29.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 59.5, 29.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 62, 27.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 62, 27.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 64.5, 24.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 64.5, 24.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 67, 22.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 67, 22.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 142.1, 34.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 142.1, 34.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 139.3, 19.4 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 139.3, 19.4 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 150.4, 56.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 150.4, 56.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 144.6, 19.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 144.6, 19.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 145.1, 50.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 145.1, 50.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 157.3, 21.1 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 157.3, 21.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 156.4, 44.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 156.4, 44.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 156.1, 26.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 156.1, 26.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 394.2, 69.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 394.2, 69.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 487.3, 74.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 487.3, 74.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 554, 92.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 554, 92.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 605.5, 92 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 605.5, 92 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 646.1, 103.9 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 646.1, 103.9 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 678, 103.8 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 678, 103.8 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 702.2, 112.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 702.2, 112.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 719.4, 111.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 719.4, 111.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 729.8, 115.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 729.8, 115.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 733.3, 114.7 , 0 );

setScaleKey( spep_2 + 366 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 1.65, 1.65 );

setRotateKey( spep_2 + 366 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -6.5 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_2 + 20;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);

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
--連打
SE009 = playSeVer2( spep_2 + 30, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 38, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 38, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 58, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 58, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 58, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 80, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 80, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE016, 83 );
SE017 = playSeVer2( spep_2 + 100, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE017, 78 );
SE018 = playSeVer2( spep_2 + 102, 1010, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 102, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 122, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 122, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 122, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE022, 67 );

--着地
SE023 = playSeVer2( spep_2 + 140, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE023, 166 );
SE024 = playSeVer2( spep_2 + 146, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE024, 135 );
SE025 = playSeVer2( spep_2 + 146, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE025, 168 );

--飛び下がる
SE026 = playSeVer2( spep_2 + 156, 1207, "",spep_2 + 242, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 156, SE026, 54 );
SE027 = playSeVer2( spep_2 + 170, 44, "", 0, 0, 0, -1);

--壁蹴って反転
SE028 = playSeVer2( spep_2 + 210, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE028, 71 );
SE029 = playSeVer2( spep_2 + 224, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE029, 60 );
SE030 = playSeVer2( spep_2 + 224, 1000, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 228, 1117, "", 0, 0, 0, -1);

--飛んでいく
SE032 = playSeVer2( spep_2 + 264, 1264, "",spep_2 + 396, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 264, SE032, 52 );
SE033 = playSeVer2( spep_2 + 264, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE033, 72 );
SE034 = playSeVer2( spep_2 + 264, 1121, "",spep_2 + 392, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 264, SE034, 68 );
SE035 = playSeVer2( spep_2 + 328, 1019, "",spep_2 + 386, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 328, SE035, 74 );

--蹴り
SE036 = playSeVer2( spep_2 + 370, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE037 = playSeVer2( spep_2 + 390, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 390, SE037, 72 );

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;-- 426F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
 
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
--finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
-- setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
-- setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
-- setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
-- setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
-- setEffRotateKey( spep_N + 4, finish_1f, 0 );
-- setEffRotateKey( spep_N + 112, finish_1f, 0 );
-- setEffAlphaKey( spep_N + 4, finish_1f, 255 );
-- setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_05 , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_xxx)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
-- bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
-- setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
-- setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
-- setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
-- setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
-- setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
-- setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
-- setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
-- setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
-- setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
-- setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
-- setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
-- setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
-- setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
 
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
 
setEffScaleKey( spep_N + 14, ctga, 3.7, 3.7 );
setEffScaleKey( spep_N + 112, ctga, 3.7, 3.7 );
 
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
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
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
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 正面構え
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 正面構え ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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

-- ** 白フェード ** --
entryFade( spep_0 + 90 - OFFSET_X, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--集中線
SE001 = playSeVer2( spep_0 + 0, 1233, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 79 );
SE004 = playSeVer2( spep_0 + 2, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE004, 84 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 96F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--向かっていく
SE006 = playSeVer2( spep_1 + 82, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 82, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE007, 60 );
SE008 = playSeVer2( spep_1 + 82, 1117, "",spep_1 + 166, 0, 32, -1);

-------------------------------------------------
-- ダッシュ〜攻撃〜ジャンプキック
-------------------------------------------------
MAX_FRAME_2 = 426;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ダッシュ〜攻撃〜ジャンプキック ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ダッシュ〜攻撃〜ジャンプキック(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 34 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 192 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 34 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 48 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 108 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, 19, -36 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 19, -36 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 25.2, -7.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 25.2, -7.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 25.3, -10.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 25.3, -10.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 27.1, -3.6 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 27.1, -3.6 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 29.2, -7.9 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 29.2, -7.9 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 31.7, -2.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 31.7, -2.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 34.1, -4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 34.1, -4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 36.6, -0.1 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 36.6, -0.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 39, -1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 39, -1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 41.5, 0.8 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 41.5, 0.8 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 43.9, 2.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 43.9, 2.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 82.5, -9.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 82.5, -9.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 77.9, -12.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 77.9, -12.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 78.9, -6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 78.9, -6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 81.4, -10.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 81.4, -10.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 84.6, -5.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 84.6, -5.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 87.9, -8.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 87.9, -8.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 91.1, -3.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 91.1, -3.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 94.3, -5.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 94.3, -5.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 97.6, -3.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 97.6, -3.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 100.8, -2.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 100.8, -2.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 105.8, -2.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 105.8, -2.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 105.3, -4.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 105.3, -4.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 106.9, 2.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 106.9, 2.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 109.1, -1.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 109.1, -1.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 111.5, 4 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 111.5, 4 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 113.9, 0.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 113.9, 0.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 116.3, 6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 116.3, 6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 118.7, 3.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 118.7, 3.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 121.1, 6.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 121.1, 6.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 123.5, 7.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 123.5, 7.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 118, 41.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 118, 41.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 113.7, 40.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 113.7, 40.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 112.6, 50.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 112.6, 50.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 112.5, 48.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 112.5, 48.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 112.7, 57.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 112.7, 57.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 112.9, 57.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 112.9, 57.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 113.2, 65.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 113.2, 65.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 113.4, 65.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 113.4, 65.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 113.7, 73.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 113.7, 73.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 113.9, 74.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 113.9, 74.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 114.1, 80.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 114.1, 80.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 114.4, 84.1 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 114.4, 84.1 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 114.6, 88.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 114.6, 88.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 103.6, 221 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 103.6, 221 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 123.8, 221.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 123.8, 221.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 131.7, 237.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 131.7, 237.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 138.3, 233.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 138.3, 233.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 144, 247.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 144, 247.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 148.8, 245 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 148.8, 245 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 152.9, 255.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 152.9, 255.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 156.5, 252.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 156.5, 252.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 159.8, 261.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 159.8, 261.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 162.6, 259.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 162.6, 259.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 165.2, 266.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 165.2, 266.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 167.6, 265.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 167.6, 265.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 169.7, 267.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 169.7, 267.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 171.7, 269.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 171.7, 269.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 173.5, 271.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 173.5, 271.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 175.1, 273.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 175.1, 273.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 176.6, 274.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 176.6, 274.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 178, 275.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 178, 275.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 179.2, 277 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 179.2, 277 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 180.4, 281.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 180.4, 281.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 181.4, 276 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 181.4, 276 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 182.3, 283 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 182.3, 283 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 183.1, 278 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 183.1, 278 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 183.9, 283.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 183.9, 283.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 184.5, 279.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 184.5, 279.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 185.1, 284.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 185.1, 284.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 185.5, 281.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 185.5, 281.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 185.8, 284 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 185.8, 284 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 185.9, 282.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 185.9, 282.1 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.35, 1.35 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -60.6 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -61.3 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -64.2 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -58.5 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -59.2 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -60 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -60.7 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -60.7 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -61.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -64.5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -23.1 );

--敵の動き2
setDisp( spep_2 + 366 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 416 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 382 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 366 + OFFSET_X, 1, 52, 37.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 52, 37.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 54.5, 34.9 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 54.5, 34.9 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 57, 32.3 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 57, 32.3 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 59.5, 29.8 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 59.5, 29.8 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 62, 27.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 62, 27.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 64.5, 24.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 64.5, 24.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 67, 22.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 67, 22.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 142.1, 34.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 142.1, 34.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 139.3, 19.4 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 139.3, 19.4 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 150.4, 56.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 150.4, 56.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 144.6, 19.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 144.6, 19.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 145.1, 50.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 145.1, 50.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 157.3, 21.1 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 157.3, 21.1 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 156.4, 44.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 156.4, 44.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 156.1, 26.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 156.1, 26.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 394.2, 69.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 394.2, 69.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 487.3, 74.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 487.3, 74.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 554, 92.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 554, 92.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 605.5, 92 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 605.5, 92 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 646.1, 103.9 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 646.1, 103.9 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 678, 103.8 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 678, 103.8 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 702.2, 112.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 702.2, 112.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 719.4, 111.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 719.4, 111.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 729.8, 115.2 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 729.8, 115.2 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 733.3, 114.7 , 0 );

setScaleKey( spep_2 + 366 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 1.65, 1.65 );

setRotateKey( spep_2 + 366 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -47.5 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -45.8 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -6.5 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_2 + 20;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);

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
--連打
SE009 = playSeVer2( spep_2 + 30, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 38, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 38, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 58, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 58, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 58, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 80, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 80, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE016, 83 );
SE017 = playSeVer2( spep_2 + 100, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE017, 78 );
SE018 = playSeVer2( spep_2 + 102, 1010, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 102, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 122, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 122, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 122, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE022, 67 );

--着地
SE023 = playSeVer2( spep_2 + 140, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE023, 166 );
SE024 = playSeVer2( spep_2 + 146, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE024, 135 );
SE025 = playSeVer2( spep_2 + 146, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 146, SE025, 168 );

--飛び下がる
SE026 = playSeVer2( spep_2 + 156, 1207, "",spep_2 + 242, 0, 64, -1);
setSeVolumeByWorkId( spep_2 + 156, SE026, 54 );
SE027 = playSeVer2( spep_2 + 170, 44, "", 0, 0, 0, -1);

--壁蹴って反転
SE028 = playSeVer2( spep_2 + 210, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE028, 71 );
SE029 = playSeVer2( spep_2 + 224, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 224, SE029, 60 );
SE030 = playSeVer2( spep_2 + 224, 1000, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 228, 1117, "", 0, 0, 0, -1);

--飛んでいく
SE032 = playSeVer2( spep_2 + 264, 1264, "",spep_2 + 396, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 264, SE032, 52 );
SE033 = playSeVer2( spep_2 + 264, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE033, 72 );
SE034 = playSeVer2( spep_2 + 264, 1121, "",spep_2 + 392, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 264, SE034, 68 );
SE035 = playSeVer2( spep_2 + 328, 1019, "",spep_2 + 386, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 328, SE035, 74 );

--蹴り
SE036 = playSeVer2( spep_2 + 370, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE037 = playSeVer2( spep_2 + 390, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 390, SE037, 72 );

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;-- 426F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
 
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
--finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
-- setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
-- setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
-- setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
-- setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
-- setEffRotateKey( spep_N + 4, finish_1f, 0 );
-- setEffRotateKey( spep_N + 112, finish_1f, 0 );
-- setEffAlphaKey( spep_N + 4, finish_1f, 255 );
-- setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_05 , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_xxx)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
-- bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
-- setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
-- setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
-- setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
-- setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
-- setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
-- setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
-- setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
-- setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
-- setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
-- setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
-- setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
-- setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
-- setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
 
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
 
setEffScaleKey( spep_N + 14, ctga, 3.7, 3.7 );
setEffScaleKey( spep_N + 112, ctga, 3.7, 3.7 );
 
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
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
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
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end