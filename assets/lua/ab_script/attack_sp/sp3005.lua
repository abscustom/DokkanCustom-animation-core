--4033070:LR_超サイヤ人2孫悟空(天使)+魔人ベジータ_超必殺技：超かめはめ波
--sp_effect_a1_00532
--sp3005

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164458;  -- 正面突進〜回し蹴り ef_001
SP_02 = 164459;  -- オーラ出し〜爆発 ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 正面突進〜回し蹴り
-------------------------------------------------
MAX_FRAME_0 = 276;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面突進〜回し蹴り(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 0 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_0 + 96 + OFFSET_X, 1, 1 );
setDisp(spep_0 + 192 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 96 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 118 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 128 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 158 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 162 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 180 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 96 + OFFSET_X, 1, 79.1, -36.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 79.1, -36.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 125, 4.4 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 125, 4.4 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 138, -14.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 138, -14.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 125, 10.4 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 125, 10.4 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 123, 11.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 123, 11.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 157, 2.4 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 157, 2.4 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 123.4, 9.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 123.4, 9.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 155.4, -12.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 155.4, -12.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 148.4, -18.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 148.4, -18.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 159, -3.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 159, -3.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 169, -9.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 169, -9.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 149, -3.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 149, -3.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 174, -2.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 174, -2.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 149, -3.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 149, -3.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 161.4, 6.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 161.4, 6.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 142.4, -18.5 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 142.4, -18.5 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 113.4, 2.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 113.4, 2.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 119.4, -6.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 119.4, -6.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 160, 27.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 160, 27.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 160, -4.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 160, -4.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 170, 8.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 170, 8.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 151.4, -12.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 151.4, -12.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 119.4, -10.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 119.4, -10.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 179, 4.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 179, 4.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 188, 30.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 188, 30.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 203, -8.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 203, -8.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 187, 14.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 187, 14.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 201, 3.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 201, 3.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 195, 1.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 195, 1.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 201, 11.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 201, 11.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 108.3, -16.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 108.3, -16.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 107.3, 47.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 107.3, 47.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 292.3, 71.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 292.3, 71.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 466.3, 223.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 466.3, 223.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 640, 263 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 640, 263 , 0 );

setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.51, 2.51 );

setRotateKey( spep_0 + 96 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -11 );

setAlphaKey( spep_0 + 96 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 192 + OFFSET_X, 1, 255 );

--敵の動き2
setDisp(spep_0 + 224 + OFFSET_X, 1, 1 );
setDisp(spep_0 + 250 + OFFSET_X, 1, 0 );

y = -100

setMoveKey( spep_0 + 224 + OFFSET_X, 1, -610.4, -503.3+y, 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -610.4, -503.3+y , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -211.9, -249.1+y , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -211.9, -249.1+y , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -201.9, -241.1+y , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -201.9, -241.1+y , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -193.9, -233.1+y , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -193.9, -233.1+y , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -177.9, -227.1+y , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -177.9, -227.1+y , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -167.9, -221.1+y , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -167.9, -221.1+y , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -155.9, -215.1+y , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -155.9, -215.1+y , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -145.9, -207.1+y , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -145.9, -207.1+y , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -131.9, -199.1+y , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -131.9, -199.1+y , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -117.9, -193.1+y , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -117.9, -193.1+y , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -103.9, -185.1+y , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -103.9, -185.1+y , 0 );

sc = 1.5

setScaleKey( spep_0 + 224 + OFFSET_X, 1, 4.53+sc, 4.53+sc );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 4.53+sc, 4.53+sc );

setRotateKey( spep_0 + 224 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -6 );

setAlphaKey( spep_0 + 224 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 250 + OFFSET_X, 1, 255 );

--敵の動き3
setDisp(spep_0 + 254 + OFFSET_X, 1, 1 );
setDisp(spep_0 + 268 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 254 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 254 + OFFSET_X, 1, -191.6, -133.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -191.6, -133.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -170, -93.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -170, -93.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -287.5, -278.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -287.5, -278.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -304.8, -238.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -304.8, -238.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -611.4, -405.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -611.4, -405.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -847.2, -582.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -847.2, -582.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -1100.5, -818.7 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -1100.5, -818.7 , 0 );

setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.54, 3.54 );

setRotateKey( spep_0 + 254 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -34 );

setAlphaKey( spep_0 + 254 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 268 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);	
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);	
SE005 = playSeVer2( spep_0 + 2, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 20, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE007, 45 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
SE006 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE006, 50 );
SE008 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE008, 50 );
SE009 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE009, 50 );
SE010 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE010, 50 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--ラッシュ
SE011 = playSeVer2( spep_0 + 112, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 124, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 124, 1414, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 138, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 138, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 148, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 148, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 170, 1187, "",spep_0 + 270, 0, 14, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_0 + 176, 1121, "",spep_0 + 270, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 176, SE020, 84 );

--瞬間移動
SE021 = playSeVer2( spep_0 + 196, 1109, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 226, 1109, "",spep_0 + 282, 0, 8, -1);

--叩きつける
SE023 = playSeVer2( spep_0 + 244, 1120, "",spep_0 + 290, 0, 10, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --276F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--気ダメ
SE026 = playSeVer2( spep_1 + 92, 1035, "", 0, 0, 0, -1);

-------------------------------------------------
-- オーラ出し〜爆発
-------------------------------------------------
MAX_FRAME_2 = 542;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- オーラ出し〜爆発(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- --敵の動き1
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 324 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, 404.7, -208.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 404.7, -208.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 340, -190.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 340, -190.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 308.9, -177.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 308.9, -177.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 286, -163.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 286, -163.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 264, -160.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 264, -160.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 257.2, -163.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 257.2, -163.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 242.3, -159.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 242.3, -159.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 235.6, -149.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 235.6, -149.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 231.4, -149.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 231.4, -149.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 236.8, -151 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 236.8, -151 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 230.1, -149.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 230.1, -149.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 231.4, -155 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 231.4, -155 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 238.1, -153.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 238.1, -153.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 234.1, -149.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 234.1, -149.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 226, -142.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 226, -142.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 223.3, -144.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 223.3, -144.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 220.5, -141.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 220.5, -141.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 219.2, -149.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 219.2, -149.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 219.2, -144.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 219.2, -144.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 224.8, -138.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 224.8, -138.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 223.7, -136.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 223.7, -136.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 217.1, -144.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 217.1, -144.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 221.3, -144.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 221.3, -144.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 216.2, -140 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 216.2, -140 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 217.7, -145.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 217.7, -145.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 215.3, -150.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 215.3, -150.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 215.4, -147.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 215.4, -147.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 217, -136.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 217, -136.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 209, -139.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 209, -139.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 203.8, -140.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 203.8, -140.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 193.1, -140.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 193.1, -140.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 197.4, -132.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 197.4, -132.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 200.2, -134.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 200.2, -134.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 190.7, -138.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 190.7, -138.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 181.8, -163.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 181.8, -163.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 168.9, -145.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 168.9, -145.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 160.8, -137.2 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 160.8, -137.2 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 149.9, -128.8 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 149.9, -128.8 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 139.8, -121.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 139.8, -121.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 160.7, -138.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 160.7, -138.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 111.9, -129.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 111.9, -129.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 93.8, -75.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 93.8, -75.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 90.1, -103.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 90.1, -103.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 51.2, -52.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 51.2, -52.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 70.3, -89.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 70.3, -89.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 102.3, -62.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 102.3, -62.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 76.8, -79.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 76.8, -79.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 33, -91.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 33, -91.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 58.2, -41.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 58.2, -41.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 14, -49.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 14, -49.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 45.3, -47.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 45.3, -47.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 59, -66.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 59, -66.5 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 2.12, 2.12 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 79.2 );

setAlphaKey( spep_2 + 210 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 283 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 284 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 285 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 286 + OFFSET_X, 1, 10 );
setAlphaKey( spep_2 + 287 + OFFSET_X, 1, 10 );
setAlphaKey( spep_2 + 288 + OFFSET_X, 1, 23 );
setAlphaKey( spep_2 + 289 + OFFSET_X, 1, 23 );
setAlphaKey( spep_2 + 290 + OFFSET_X, 1, 36 );
setAlphaKey( spep_2 + 291 + OFFSET_X, 1, 36 );
setAlphaKey( spep_2 + 292 + OFFSET_X, 1, 51 );
setAlphaKey( spep_2 + 293 + OFFSET_X, 1, 51 );
setAlphaKey( spep_2 + 294 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 295 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 296 + OFFSET_X, 1, 77 );
setAlphaKey( spep_2 + 297 + OFFSET_X, 1, 77 );
setAlphaKey( spep_2 + 298 + OFFSET_X, 1, 92 );
setAlphaKey( spep_2 + 299 + OFFSET_X, 1, 92 );
setAlphaKey( spep_2 + 300 + OFFSET_X, 1, 105 );
setAlphaKey( spep_2 + 301 + OFFSET_X, 1, 105 );
setAlphaKey( spep_2 + 302 + OFFSET_X, 1, 118 );
setAlphaKey( spep_2 + 303 + OFFSET_X, 1, 118 );
setAlphaKey( spep_2 + 304 + OFFSET_X, 1, 132 );
setAlphaKey( spep_2 + 305 + OFFSET_X, 1, 132 );
setAlphaKey( spep_2 + 306 + OFFSET_X, 1, 145 );
setAlphaKey( spep_2 + 307 + OFFSET_X, 1, 145 );
setAlphaKey( spep_2 + 308 + OFFSET_X, 1, 160 );
setAlphaKey( spep_2 + 309 + OFFSET_X, 1, 160 );
setAlphaKey( spep_2 + 310 + OFFSET_X, 1, 173 );
setAlphaKey( spep_2 + 311 + OFFSET_X, 1, 173 );
setAlphaKey( spep_2 + 312 + OFFSET_X, 1, 186 );
setAlphaKey( spep_2 + 313 + OFFSET_X, 1, 186 );
setAlphaKey( spep_2 + 314 + OFFSET_X, 1, 201 );
setAlphaKey( spep_2 + 315 + OFFSET_X, 1, 201 );
setAlphaKey( spep_2 + 316 + OFFSET_X, 1, 214 );
setAlphaKey( spep_2 + 317 + OFFSET_X, 1, 214 );
setAlphaKey( spep_2 + 318 + OFFSET_X, 1, 227 );
setAlphaKey( spep_2 + 319 + OFFSET_X, 1, 227 );
setAlphaKey( spep_2 + 320 + OFFSET_X, 1, 242 );
setAlphaKey( spep_2 + 321 + OFFSET_X, 1, 242 );
setAlphaKey( spep_2 + 322 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 324 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--気ダメ
SE027 = playSeVer2( spep_2 + 2, 1503, "", 0, 0, 0, -1);

--オーラ
SE028 = playSeVer2( spep_2 + 14, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE028, 68 );
SE029 = playSeVer2( spep_2 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE029, 63 );

--かめはめ波溜め
SE025 = playSeVer2( spep_2 + 42, 1210, "",spep_2 + 134, 10, 16, -1);
setStartTimeMs( SE025,  1733 );
SE030 = playSeVer2( spep_2 + 42, 1209, "",spep_2 + 138, 0, 18, -1);

--オーラ
SE031 = playSeVer2( spep_2 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE031, 63 );
SE032 = playSeVer2( spep_2 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE032, 63 );
SE033 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE033, 63 );

--かめはめ波発射
SE034 = playSeVer2( spep_2 + 116, 1133, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 116, 1284, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 116, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE036, 69 );
SE037 = playSeVer2( spep_2 + 126, 1193, "",spep_2 + 360, 0, 56, -1);
SE038 = playSeVer2( spep_2 + 162, 1211, "",spep_2 + 418, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 162, SE038, 245 );
SE039 = playSeVer2( spep_2 + 162, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE039, 146 );

--気弾飛んでいく
SE040 = playSeVer2( spep_2 + 296, 1024, "",spep_2 + 386, 0, 46, -1);
SE041 = playSeVer2( spep_2 + 324, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 324, SE041, 200 );

--爆発
SE042 = playSeVer2( spep_2 + 400, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 400, 1023, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 460, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 410); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 終了フレーム 542F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 正面突進〜回し蹴り
-------------------------------------------------
MAX_FRAME_0 = 276;

setupMovie( 0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面突進〜回し蹴り(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 0 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_0 + 96 + OFFSET_X, 1, 1 );
setDisp(spep_0 + 192 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 96 + OFFSET_X, 1,4 );
changeAnime( spep_0 + 118 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 128 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 134 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 144 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 152 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 158 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 162 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 180 + OFFSET_X, 1,6 );

setMoveKey( spep_0 + 96 + OFFSET_X, 1, -79.1, -36.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -79.1, -36.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -125, 4.4 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -125, 4.4 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -138, -14.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -138, -14.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -125, 10.4 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -125, 10.4 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -123, 11.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -123, 11.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -157, 2.4 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -157, 2.4 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -123.4, 9.5 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -123.4, 9.5 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -155.4, -12.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -155.4, -12.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -148.4, -18.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -148.4, -18.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -159, -3.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -159, -3.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -169, -9.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -169, -9.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -149, -3.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -149, -3.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -174, -2.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -174, -2.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -149, -3.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -149, -3.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -161.4, 6.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -161.4, 6.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -142.4, -18.5 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -142.4, -18.5 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -113.4, 2.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -113.4, 2.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -119.4, -6.5 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -119.4, -6.5 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -160, 27.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -160, 27.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -160, -4.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -160, -4.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -170, 8.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -170, 8.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -151.4, -12.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -151.4, -12.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -119.4, -10.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -119.4, -10.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -179, 4.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -179, 4.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -188, 30.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -188, 30.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -203, -8.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -203, -8.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -187, 14.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -187, 14.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -201, 3.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -201, 3.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -195, 1.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -195, 1.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -201, 11.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -201, 11.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -108.3, -16.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -108.3, -16.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -107.3, 47.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -107.3, 47.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -292.3, 71.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -292.3, 71.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -466.3, 223.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -466.3, 223.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -640, 263 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -640, 263 , 0 );

setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.51, 2.51 );

setRotateKey( spep_0 + 96 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 11 );

setAlphaKey( spep_0 + 96 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 192 + OFFSET_X, 1, 255 );

--敵の動き2
setDisp(spep_0 + 224 + OFFSET_X, 1, 1 );
setDisp(spep_0 + 250 + OFFSET_X, 1, 0 );

y = -100

setMoveKey( spep_0 + 224 + OFFSET_X, 1, 610.4, -503.3+y, 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 610.4, -503.3+y, 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 211.9, -249.1+y, 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 211.9, -249.1+y, 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 201.9, -241.1+y, 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 201.9, -241.1+y, 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 193.9, -233.1+y, 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 193.9, -233.1+y, 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 177.9, -227.1+y, 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 177.9, -227.1+y, 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 167.9, -221.1+y, 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 167.9, -221.1+y, 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 155.9, -215.1+y, 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 155.9, -215.1+y, 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 145.9, -207.1+y, 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 145.9, -207.1+y, 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 131.9, -199.1+y, 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 131.9, -199.1+y, 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 117.9, -193.1+y, 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 117.9, -193.1+y, 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 103.9, -185.1+y, 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 103.9, -185.1+y, 0 );

sc = 1.5

setScaleKey( spep_0 + 224 + OFFSET_X, 1, 4.53+sc, 4.53+sc );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 4.53+sc, 4.53+sc );

setRotateKey( spep_0 + 224 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 6 );

setAlphaKey( spep_0 + 224 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 250 + OFFSET_X, 1, 255 );

--敵の動き3
setDisp(spep_0 + 254 + OFFSET_X, 1, 1 );
setDisp(spep_0 + 268 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 254 + OFFSET_X, 1, 107  );

setMoveKey( spep_0 + 254 + OFFSET_X, 1, 191.6, -133.7 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 191.6, -133.7 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 170, -93.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 170, -93.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 287.5, -278.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 287.5, -278.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 304.8, -238.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 304.8, -238.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 611.4, -405.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 611.4, -405.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 847.2, -582.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 847.2, -582.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 1100.5, -818.7 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 1100.5, -818.7 , 0 );

setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.54, 3.54 );

setRotateKey( spep_0 + 254 + OFFSET_X, 1, 34 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 34 );

setAlphaKey( spep_0 + 254 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 268 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);	
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);	
SE005 = playSeVer2( spep_0 + 2, 1117, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 20, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE007, 45 );

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
SE006 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE006, 50 );
SE008 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE008, 50 );
SE009 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE009, 50 );
SE010 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE010, 50 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--ラッシュ
SE011 = playSeVer2( spep_0 + 112, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 124, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 124, 1414, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 138, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 138, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 148, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 148, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 170, 1187, "",spep_0 + 270, 0, 14, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_0 + 176, 1121, "",spep_0 + 270, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 176, SE020, 84 );

--瞬間移動
SE021 = playSeVer2( spep_0 + 196, 1109, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 226, 1109, "",spep_0 + 282, 0, 8, -1);

--叩きつける
SE023 = playSeVer2( spep_0 + 244, 1120, "",spep_0 + 290, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --276F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--気ダメ
SE026 = playSeVer2( spep_1 + 92, 1035, "", 0, 0, 0, -1);

-------------------------------------------------
-- オーラ出し〜爆発
-------------------------------------------------
MAX_FRAME_2 = 542;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- オーラ出し〜爆発(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- --敵の動き1
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 324 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, -404.7, -208.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -404.7, -208.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -340, -190.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -340, -190.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -308.9, -177.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -308.9, -177.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -286, -163.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -286, -163.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -264, -160.7 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -264, -160.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -257.2, -163.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -257.2, -163.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -242.3, -159.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -242.3, -159.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -235.6, -149.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -235.6, -149.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -231.4, -149.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -231.4, -149.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -236.8, -151 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -236.8, -151 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -230.1, -149.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -230.1, -149.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -231.4, -155 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -231.4, -155 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -238.1, -153.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -238.1, -153.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -234.1, -149.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -234.1, -149.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -226, -142.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -226, -142.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -223.3, -144.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -223.3, -144.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -220.5, -141.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -220.5, -141.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -219.2, -149.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -219.2, -149.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -219.2, -144.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -219.2, -144.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -224.8, -138.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -224.8, -138.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -223.7, -136.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -223.7, -136.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -217.1, -144.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -217.1, -144.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -221.3, -144.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -221.3, -144.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -216.2, -140 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -216.2, -140 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -217.7, -145.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -217.7, -145.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -215.3, -150.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -215.3, -150.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -215.4, -147.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -215.4, -147.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -217, -136.1 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -217, -136.1 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -209, -139.8 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -209, -139.8 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -203.8, -140.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -203.8, -140.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -193.1, -140.6 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -193.1, -140.6 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -197.4, -132.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -197.4, -132.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -200.2, -134.4 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -200.2, -134.4 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -190.7, -138.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -190.7, -138.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -181.8, -163.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -181.8, -163.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -168.9, -145.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -168.9, -145.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -160.8, -137.2 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -160.8, -137.2 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -149.9, -128.8 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -149.9, -128.8 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -139.8, -121.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -139.8, -121.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -160.7, -138.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -160.7, -138.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -111.9, -129.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -111.9, -129.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -93.8, -75.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -93.8, -75.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -90.1, -103.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -90.1, -103.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -51.2, -52.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -51.2, -52.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -70.3, -89.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -70.3, -89.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -102.3, -62.5 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -102.3, -62.5 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -76.8, -79.3 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -76.8, -79.3 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -33, -91.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -33, -91.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -58.2, -41.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -58.2, -41.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -14, -49.3 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -14, -49.3 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -45.3, -47.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -45.3, -47.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -59, -66.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -59, -66.5 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 2.12, 2.12 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, -79.2 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -79.2 );

setAlphaKey( spep_2 + 210 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 283 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 284 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 285 + OFFSET_X, 1, 0 );
setAlphaKey( spep_2 + 286 + OFFSET_X, 1, 10 );
setAlphaKey( spep_2 + 287 + OFFSET_X, 1, 10 );
setAlphaKey( spep_2 + 288 + OFFSET_X, 1, 23 );
setAlphaKey( spep_2 + 289 + OFFSET_X, 1, 23 );
setAlphaKey( spep_2 + 290 + OFFSET_X, 1, 36 );
setAlphaKey( spep_2 + 291 + OFFSET_X, 1, 36 );
setAlphaKey( spep_2 + 292 + OFFSET_X, 1, 51 );
setAlphaKey( spep_2 + 293 + OFFSET_X, 1, 51 );
setAlphaKey( spep_2 + 294 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 295 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 296 + OFFSET_X, 1, 77 );
setAlphaKey( spep_2 + 297 + OFFSET_X, 1, 77 );
setAlphaKey( spep_2 + 298 + OFFSET_X, 1, 92 );
setAlphaKey( spep_2 + 299 + OFFSET_X, 1, 92 );
setAlphaKey( spep_2 + 300 + OFFSET_X, 1, 105 );
setAlphaKey( spep_2 + 301 + OFFSET_X, 1, 105 );
setAlphaKey( spep_2 + 302 + OFFSET_X, 1, 118 );
setAlphaKey( spep_2 + 303 + OFFSET_X, 1, 118 );
setAlphaKey( spep_2 + 304 + OFFSET_X, 1, 132 );
setAlphaKey( spep_2 + 305 + OFFSET_X, 1, 132 );
setAlphaKey( spep_2 + 306 + OFFSET_X, 1, 145 );
setAlphaKey( spep_2 + 307 + OFFSET_X, 1, 145 );
setAlphaKey( spep_2 + 308 + OFFSET_X, 1, 160 );
setAlphaKey( spep_2 + 309 + OFFSET_X, 1, 160 );
setAlphaKey( spep_2 + 310 + OFFSET_X, 1, 173 );
setAlphaKey( spep_2 + 311 + OFFSET_X, 1, 173 );
setAlphaKey( spep_2 + 312 + OFFSET_X, 1, 186 );
setAlphaKey( spep_2 + 313 + OFFSET_X, 1, 186 );
setAlphaKey( spep_2 + 314 + OFFSET_X, 1, 201 );
setAlphaKey( spep_2 + 315 + OFFSET_X, 1, 201 );
setAlphaKey( spep_2 + 316 + OFFSET_X, 1, 214 );
setAlphaKey( spep_2 + 317 + OFFSET_X, 1, 214 );
setAlphaKey( spep_2 + 318 + OFFSET_X, 1, 227 );
setAlphaKey( spep_2 + 319 + OFFSET_X, 1, 227 );
setAlphaKey( spep_2 + 320 + OFFSET_X, 1, 242 );
setAlphaKey( spep_2 + 321 + OFFSET_X, 1, 242 );
setAlphaKey( spep_2 + 322 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 324 + OFFSET_X, 1, 255 );

-- ** 音 ** --
--気ダメ
SE027 = playSeVer2( spep_2 + 2, 1503, "", 0, 0, 0, -1);

--オーラ
SE028 = playSeVer2( spep_2 + 14, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE028, 68 );
SE029 = playSeVer2( spep_2 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE029, 63 );

--かめはめ波溜め
SE025 = playSeVer2( spep_2 + 42, 1210, "",spep_2 + 134, 10, 16, -1);
setStartTimeMs( SE025,  1733 );
SE030 = playSeVer2( spep_2 + 42, 1209, "",spep_2 + 138, 0, 18, -1);

--オーラ
SE031 = playSeVer2( spep_2 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE031, 63 );
SE032 = playSeVer2( spep_2 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE032, 63 );
SE033 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE033, 63 );

--かめはめ波発射
SE034 = playSeVer2( spep_2 + 116, 1133, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 116, 1284, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 116, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE036, 69 );
SE037 = playSeVer2( spep_2 + 126, 1193, "",spep_2 + 360, 0, 56, -1);
SE038 = playSeVer2( spep_2 + 162, 1211, "",spep_2 + 418, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 162, SE038, 245 );
SE039 = playSeVer2( spep_2 + 162, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE039, 146 );

--気弾飛んでいく
SE040 = playSeVer2( spep_2 + 296, 1024, "",spep_2 + 386, 0, 46, -1);
SE041 = playSeVer2( spep_2 + 324, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 324, SE041, 200 );

--爆発
SE042 = playSeVer2( spep_2 + 400, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 400, 1023, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 460, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 410); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 終了フレーム 542F

end
