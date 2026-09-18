--1031820:LR_四星龍_必殺技：フレイムショット
--sp_effect_b4_00389
--sp2890

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163945;  --ef_001  開幕～カットイン
SP_01b = 163946;  --ef_001b 開幕～カットイン
SP_02  = 163948;  --ef_002  必殺技発射～爆発フィニッシュまで
SP_02b = 163949;  --ef_002b 必殺技発射～爆発フィニッシュまで

--エフェクト(敵)
SP_01r = 163947;  --ef_001r 開幕～カットイン
SP_02r = 163950;  --ef_002r 必殺技発射～爆発フィニッシュまで


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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 266;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～カットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～カットイン(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 180;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 90 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, 105.8, -66.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 105.8, -66.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 103.4, -65.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 103.4, -65.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 101, -65.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 101, -65.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 98.7, -65 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 98.7, -65 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 96.3, -64.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 96.3, -64.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 93.9, -64 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 93.9, -64 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 91.5, -63.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 91.5, -63.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 89.1, -63.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 89.1, -63.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 86.7, -62.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 86.7, -62.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 84.4, -62.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 84.4, -62.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 82, -61.7 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 82, -61.7 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 79.6, -61.2 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 79.6, -61.2 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 77.2, -60.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 77.2, -60.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 74.8, -60.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 74.8, -60.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 72.4, -59.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 72.4, -59.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 29.2, -64.5 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 29.2, -64.5 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 44.7, -44.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 44.7, -44.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 56.3, -59.5 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 56.3, -59.5 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 71, -55.5 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 71, -55.5 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 85.7, -51.5 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 85.7, -51.5 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 77.3, -46 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 77.3, -46 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 68.8, -40.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 68.8, -40.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 75.3, -43.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 75.3, -43.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 81.6, -46.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 81.6, -46.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 82.5, -46.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 82.5, -46.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 83.4, -46.4 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 83.4, -46.4 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 84.2, -46.2 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 84.2, -46.2 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 85.1, -46 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 85.1, -46 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 85.9, -45.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 85.9, -45.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 86.8, -45.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 86.8, -45.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 87.7, -45.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 87.7, -45.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 88.5, -45.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 88.5, -45.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 89.4, -45.1 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 89.4, -45.1 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 90.2, -44.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 90.2, -44.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 91.1, -44.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 91.1, -44.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 92, -44.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 92, -44.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 92.8, -44.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 92.8, -44.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 93.7, -44.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 93.7, -44.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 94.5, -44 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 94.5, -44 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 95.4, -43.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 95.4, -43.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 91.3, 119.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 91.3, 119.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 77.1, 119 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 77.1, 119 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 186.5, 136.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 186.5, 136.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 279, 132.5 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 279, 132.5 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 371.5, 128.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 371.5, 128.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 453.3, 137.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 453.3, 137.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 535, 146.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 535, 146.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 663.9, 135.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 663.9, 135.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 792.7, 125.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 792.7, 125.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 914.6, 115.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 914.6, 115.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -352.7, -101.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -352.7, -101.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -256.8, -70.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -256.8, -70.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -185.1, -47 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -185.1, -47 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -130.5, -29.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -130.5, -29.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -88.2, -15.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -88.2, -15.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -55, -4.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -55, -4.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -28.8, 3.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -28.8, 3.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -8, 10.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -8, 10.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 8.6, 15.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 8.6, 15.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 21.8, 19.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 21.8, 19.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 32.3, 23.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 32.3, 23.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 40.6, 25.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 40.6, 25.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 47.1, 28.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 47.1, 28.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 52, 29.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 52, 29.7 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 62.5 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE001, 1.24, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
--向かってくる
SE004 = playSeVer2( spep_0 + 60, 1019, "",spep_0 + 86, 0, 16, -1);

--パンチ
SE005 = playSeVer2( spep_0 + 80, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE005, 164 );
SE006 = playSeVer2( spep_0 + 88, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 88, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE008 = playSeVer2( spep_0 + 128, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 132, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE010 = playSeVer2( spep_0 + 138, 1183, "", 0, 0, 0, -1);

--気弾溜め
SE012 = playSeVer2( spep_0 + 190, 1505, "",spep_0 + 272, 0, 20, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --266f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前気弾溜め
SE014 = playSeVer2( spep_1 + 76, 1505, "",spep_1 + 136, 2, 22, -1);
setStartTimeMs( SE014,  1200 );

-------------------------------------------------
-- 必殺技発射～爆発フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 196;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 必殺技発射～爆発フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 必殺技発射～爆発フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 68 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 68 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 68 + OFFSET_X, 1, 148.9, 79.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 148.9, 79.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 154.4, 83.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 154.4, 83.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 159.4, 87.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 159.4, 87.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 163.9, 90.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 163.9, 90.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 168.1, 93.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 168.1, 93.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 171.8, 95.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 171.8, 95.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 175.1, 98.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 175.1, 98.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 177.9, 100.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 177.9, 100.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 180.4, 101.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 180.4, 101.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 182.3, 103.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 182.3, 103.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 183.9, 104.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 183.9, 104.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 185, 105 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 185, 105 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 197.6, 111.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 197.6, 111.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 179.6, 93.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 179.6, 93.6 , 0 );

setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 68 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -3 );

-- ** 音 ** --
--気弾発射
SE015 = playSeVer2( spep_2 + 8, 1145, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 8, 1110, "", 0, 0, 0, -1);

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 20, 1128, "",spep_2 + 176, 0, 100, 0.5);
setPitch( spep_2 + 20, SE017, 300 );
setTimeStretch( SE017, 0.79, 30, 4 );

--爆発
SE018 = playSeVer2( spep_2 + 70, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 72, 1160, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 92 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  196f -2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕～カットイン
-------------------------------------------------
MAX_FRAME_0 = 266;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕～カットイン(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～カットイン(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 180;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 90 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, 105.8, -66.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 105.8, -66.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 103.4, -65.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 103.4, -65.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 101, -65.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 101, -65.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 98.7, -65 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 98.7, -65 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 96.3, -64.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 96.3, -64.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 93.9, -64 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 93.9, -64 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 91.5, -63.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 91.5, -63.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 89.1, -63.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 89.1, -63.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 86.7, -62.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 86.7, -62.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 84.4, -62.2 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 84.4, -62.2 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 82, -61.7 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 82, -61.7 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 79.6, -61.2 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 79.6, -61.2 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 77.2, -60.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 77.2, -60.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 74.8, -60.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 74.8, -60.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 72.4, -59.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 72.4, -59.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 29.2, -64.5 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 29.2, -64.5 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 44.7, -44.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 44.7, -44.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 56.3, -59.5 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 56.3, -59.5 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 71, -55.5 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 71, -55.5 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 85.7, -51.5 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 85.7, -51.5 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 77.3, -46 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 77.3, -46 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 68.8, -40.4 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 68.8, -40.4 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 75.3, -43.6 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 75.3, -43.6 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 81.6, -46.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 81.6, -46.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 82.5, -46.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 82.5, -46.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 83.4, -46.4 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 83.4, -46.4 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 84.2, -46.2 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 84.2, -46.2 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 85.1, -46 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 85.1, -46 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 85.9, -45.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 85.9, -45.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 86.8, -45.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 86.8, -45.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 87.7, -45.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 87.7, -45.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 88.5, -45.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 88.5, -45.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 89.4, -45.1 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 89.4, -45.1 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 90.2, -44.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 90.2, -44.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 91.1, -44.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 91.1, -44.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 92, -44.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 92, -44.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 92.8, -44.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 92.8, -44.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 93.7, -44.2 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 93.7, -44.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 94.5, -44 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 94.5, -44 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 95.4, -43.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 95.4, -43.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 91.3, 119.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 91.3, 119.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 77.1, 119 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 77.1, 119 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 186.5, 136.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 186.5, 136.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 279, 132.5 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 279, 132.5 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 371.5, 128.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 371.5, 128.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 453.3, 137.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 453.3, 137.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 535, 146.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 535, 146.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 663.9, 135.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 663.9, 135.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 792.7, 125.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 792.7, 125.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 914.6, 115.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 914.6, 115.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -352.7, -101.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -352.7, -101.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -256.8, -70.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -256.8, -70.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -185.1, -47 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -185.1, -47 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -130.5, -29.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -130.5, -29.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -88.2, -15.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -88.2, -15.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -55, -4.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -55, -4.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -28.8, 3.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -28.8, 3.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -8, 10.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -8, 10.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 8.6, 15.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 8.6, 15.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 21.8, 19.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 21.8, 19.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 32.3, 23.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 32.3, 23.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 40.6, 25.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 40.6, 25.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 47.1, 28.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 47.1, 28.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 52, 29.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 52, 29.7 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.57, 0.57 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, -45.1 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, -44.8 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -44.5 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -44.3 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, -44.2 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 62.5 );

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE001, 1.24, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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
--向かってくる
SE004 = playSeVer2( spep_0 + 60, 1019, "",spep_0 + 86, 0, 16, -1);

--パンチ
SE005 = playSeVer2( spep_0 + 80, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE005, 164 );
SE006 = playSeVer2( spep_0 + 88, 1110, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 88, 1153, "", 0, 0, 0, -1);

--殴り飛ばす
SE008 = playSeVer2( spep_0 + 128, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 132, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE010 = playSeVer2( spep_0 + 138, 1183, "", 0, 0, 0, -1);

--気弾溜め
SE012 = playSeVer2( spep_0 + 190, 1505, "",spep_0 + 272, 0, 20, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --266f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前気弾溜め
SE014 = playSeVer2( spep_1 + 76, 1505, "",spep_1 + 136, 2, 22, -1);
setStartTimeMs( SE014,  1200 );

-------------------------------------------------
-- 必殺技発射～爆発フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 196;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 必殺技発射～爆発フィニッシュまで(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 必殺技発射～爆発フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 68 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 68 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 68 + OFFSET_X, 1, 148.9, 79.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 148.9, 79.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 154.4, 83.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 154.4, 83.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 159.4, 87.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 159.4, 87.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 163.9, 90.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 163.9, 90.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 168.1, 93.3 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 168.1, 93.3 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 171.8, 95.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 171.8, 95.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 175.1, 98.2 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 175.1, 98.2 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 177.9, 100.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 177.9, 100.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 180.4, 101.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 180.4, 101.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 182.3, 103.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 182.3, 103.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 183.9, 104.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 183.9, 104.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 185, 105 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 185, 105 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 197.6, 111.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 197.6, 111.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 179.6, 93.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 179.6, 93.6 , 0 );

setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 68 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -3 );

-- ** 音 ** --
--気弾発射
SE015 = playSeVer2( spep_2 + 8, 1145, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 8, 1110, "", 0, 0, 0, -1);

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 20, 1128, "",spep_2 + 176, 0, 100, 0.5);
setPitch( spep_2 + 20, SE017, 300 );
setTimeStretch( SE017, 0.79, 30, 4 );

--爆発
SE018 = playSeVer2( spep_2 + 70, 1024, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 72, 1160, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 92 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  196f -2


end
