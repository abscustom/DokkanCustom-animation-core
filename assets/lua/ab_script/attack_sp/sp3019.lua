--1033760:LR_ピッコロ_超必殺技：超激烈魔口砲
--sp_effect_a1_00533
--sp3019

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共有)
SP_01  = 164449; --登場から連続攻撃 ef_001
SP_02  = 164450; --エネルギー発射から爆発 ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場から連続攻撃
-------------------------------------------------
MAX_FRAME_0 = 448;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場から連続攻撃(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 291.5, -105.7 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 291.5, -105.7 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 290.2, -103.1 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 290.2, -103.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 288.9, -100.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 288.9, -100.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 287.6, -97.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 287.6, -97.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 286.2, -95.2 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 286.2, -95.2 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 284.9, -92.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 284.9, -92.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 283.6, -90 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 283.6, -90 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 282.3, -87.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 282.3, -87.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 280.9, -84.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 280.9, -84.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 279.6, -82.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 279.6, -82.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 278.3, -79.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 278.3, -79.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 276.9, -76.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 276.9, -76.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 275.6, -74.2 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 275.6, -74.2 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 274.3, -71.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 274.3, -71.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 272.9, -68.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 272.9, -68.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 271.6, -66.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 271.6, -66.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 270.2, -63.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 270.2, -63.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 268.9, -61 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 268.9, -61 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 267.6, -58.4 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 267.6, -58.4 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 266.2, -55.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 266.2, -55.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 264.9, -53.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 264.9, -53.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 263.5, -50.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 263.5, -50.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 262.2, -47.8 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 262.2, -47.8 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 260.8, -45.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 260.8, -45.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 259.5, -42.6 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 259.5, -42.6 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 210 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 210 + OFFSET_X, 1, 935.7, -157.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 935.7, -157.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 936.7, -161.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 936.7, -161.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 938.5, -165.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 938.5, -165.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 942, -169.8 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 942, -169.8 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 947.1, -173.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 947.1, -173.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 953.8, -177.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 953.8, -177.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 962.1, -181.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 962.1, -181.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 971.7, -174.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 971.7, -174.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 982.9, -168.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 982.9, -168.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 994.1, -161.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 994.1, -161.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 1003.6, -155.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 1003.6, -155.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 1011.6, -149.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 1011.6, -149.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 1017.9, -143.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 1017.9, -143.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 1022.5, -137.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 1022.5, -137.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 1020.9, -138.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 1020.9, -138.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 1017.6, -140.8 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 1017.6, -140.8 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 1013.5, -142.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 1013.5, -142.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 606.3, -217.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 606.3, -217.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 441.1, -190.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 441.1, -190.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 313.8, -169.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 313.8, -169.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 218.4, -152.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 218.4, -152.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 154.6, -137.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 154.6, -137.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 110.3, -123.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 110.3, -123.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 80.2, -111.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 80.2, -111.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 64.2, -102.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 64.2, -102.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 57, -97.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 57, -97.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 53.4, -93.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 53.4, -93.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 52, -91.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 52, -91.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -49, -74.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -49, -74.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -47.8, -73.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -47.8, -73.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -46, -73.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -46, -73.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -23, -63.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -23, -63.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -17, -64.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -17, -64.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 0.7, -77.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 0.7, -77.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -20, -54.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -20, -54.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 15, -53.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 15, -53.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -2.4, -82.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -2.4, -82.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 21.9, -79.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 21.9, -79.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 15.9, -54.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 15.9, -54.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 13.7, -81 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 13.7, -81 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 3.2, -67.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 3.2, -67.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 28.4, -82.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 28.4, -82.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 37.4, -84.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 37.4, -84.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 14.2, -61.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 14.2, -61.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 46.8, -60 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 46.8, -60 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 27.2, -88.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 27.2, -88.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 49.4, -84.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 49.4, -84.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 41.5, -59.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 41.5, -59.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 37.5, -85.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 37.5, -85.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 25.4, -72.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 25.4, -72.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 49.1, -86.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 49.1, -86.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 56.8, -88.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 56.8, -88.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 32.4, -65 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 32.4, -65 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 63.9, -63.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 63.9, -63.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 43.4, -91.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 43.4, -91.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 65, -87.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 65, -87.9 , 0 );

setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 3.5 );

setBlendColor( spep_0 + 268 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 270 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_0 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 434 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 368 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 396 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 414 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 368 + OFFSET_X, 1, 5.8, -30 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 5.8, -30 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 3.8, -27.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 3.8, -27.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 1.9, -25.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 1.9, -25.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -0.1, -23.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -0.1, -23.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 0.7, -35.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 0.7, -35.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 1.4, -47.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 1.4, -47.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 28.2, -92.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 28.2, -92.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -15.1, -45.1 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -15.1, -45.1 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 31.6, -79.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 31.6, -79.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 11.6, -170.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 11.6, -170.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 58, -272.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 58, -272.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 60, -258.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 60, -258.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 54, -264.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 54, -264.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 60, -313.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 60, -313.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 93.6, -164.3 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 93.6, -164.3 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 121.3, -197.8 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 121.3, -197.8 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 132.1, -79.4 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 132.1, -79.4 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 150.2, -92.1 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 150.2, -92.1 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 174.6, -36.8 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 174.6, -36.8 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 176.2, -31.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 176.2, -31.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 173.1, -8.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 173.1, -8.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 181.2, -3.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 181.2, -3.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 182.6, -0.3 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 182.6, -0.3 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 228.3, 53.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 228.3, 53.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 202.3, 17.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 202.3, 17.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 321.3, 153.6 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 321.3, 153.6 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 448.7, 191.5 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 448.7, 191.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 522.8, 279.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 522.8, 279.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 547.8, 280.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 547.8, 280.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 595.8, 313.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 595.8, 313.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 589.4, 331.4 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 589.4, 331.4 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 598.2, 345.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 598.2, 345.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 601.8, 320.3 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 601.8, 320.3 , 0 );

setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_0 + 368 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 50.1 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 50.1 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 75 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 75 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -27.2 );


-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 242, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );

--加速
SE004 = playSeVer2( spep_0 + 18, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 18, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 63 );

--飛んでくる
SE006 = playSeVer2( spep_0 + 24, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE006, 54 );
setTimeStretch( SE006, 1.4, 30, 4 );
SE007 = playSeVer2( spep_0 + 56, 1019, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 84, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 84, 1277, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--飛んでくる
SE010 = playSeVer2( spep_0 + 120, 1019, "", 0, 0, 0, -1);

--気弾ため
SE011 = playSeVer2( spep_0 + 164, 1282, "",spep_0 + 230, 0, 20, -1);
SE012 = playSeVer2( spep_0 + 164, 1296, "",spep_0 + 230, 0, 20, -1);
setPitch( spep_0 + 164, SE012, 200 );
setTimeStretch( SE012, 1.13, 30, 4 );

--飛んでくる
SE013 = playSeVer2( spep_0 + 184, 1019, "",spep_0 + 244, 0, 14, -1);

--気弾発射
SE014 = playSeVer2( spep_0 + 194, 1130, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 194, 1145, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 194, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE017 = playSeVer2( spep_0 + 214, 1021, "", 0, 0, 0, -1);

--爆発
SE018 = playSeVer2( spep_0 + 262, 1024, "", 0, 0, 0, -1);

--おりてくる
SE019 = playSeVer2( spep_0 + 320, 1452, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 332, 1508, "",spep_0 + 404, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 332, SE020, 65 );

--キックヒット
SE021 = playSeVer2( spep_0 + 366, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 376, 1153, "", 0, 0, 0, -1);

--蹴り上げ
SE023 = playSeVer2( spep_0 + 406, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 406, 1187, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 448f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--踏みとどまる
SE026 = playSeVer2( spep_1 + 82, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE026, 50 );
setStartTimeMs( SE026,  367 );
SE027 = playSeVer2( spep_1 + 84, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE027, 79 );
SE028 = playSeVer2( spep_1 + 84, 1476, "",spep_2 + 36, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 84, SE028, 75 );
setPitch( spep_1 + 84, SE028, -1000 );
setTimeStretch( SE028, 0.33, 30, 4 );
SE029 = playSeVer2( spep_1 + 88, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE029, 148 );


-------------------------------------------------
-- エネルギー発射から爆発
-------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- エネルギー発射から爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, -1.1, 16.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -1.1, 16.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 12.9, 40.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 12.9, 40.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 23.4, 58.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 23.4, 58.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 32.2, 73.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 32.2, 73.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 39.9, 87.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 39.9, 87.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 46.8, 99.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 46.8, 99.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 52.9, 109.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 52.9, 109.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 58.5, 119.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 58.5, 119.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 63.5, 128 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 63.5, 128 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 68.1, 135.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 68.1, 135.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 72.2, 143 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 72.2, 143 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 76, 149.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 76, 149.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 79.3, 155.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 79.3, 155.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 82.4, 160.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 82.4, 160.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 85.2, 165.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 85.2, 165.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 87.6, 169.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 87.6, 169.6 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.82, 0.82 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 55.7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 55.7 );


-- ** 音 ** --
--口から光線出す
SE030 = playSeVer2( spep_2 + 46, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 56, 1109, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 56, 1423, "",spep_2 + 162, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 56, SE032, 72 );
SE033 = playSeVer2( spep_2 + 56, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE033, 135 );
SE034 = playSeVer2( spep_2 + 56, 1145, "", 0, 0, 0, -1);

--爆発
SE035 = playSeVer2( spep_2 + 130, 1067, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 130, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 178); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 298f -0f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場から連続攻撃
-------------------------------------------------
MAX_FRAME_0 = 448;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場から連続攻撃(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, -291.5, -105.7 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -291.5, -105.7 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -290.2, -103.1 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -290.2, -103.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -288.9, -100.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -288.9, -100.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -287.6, -97.9 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -287.6, -97.9 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -286.2, -95.2 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -286.2, -95.2 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -284.9, -92.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -284.9, -92.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -283.6, -90 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -283.6, -90 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -282.3, -87.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -282.3, -87.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -280.9, -84.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -280.9, -84.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -279.6, -82.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -279.6, -82.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -278.3, -79.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -278.3, -79.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -276.9, -76.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -276.9, -76.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -275.6, -74.2 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -275.6, -74.2 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -274.3, -71.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -274.3, -71.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -272.9, -68.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -272.9, -68.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -271.6, -66.3 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -271.6, -66.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -270.2, -63.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -270.2, -63.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -268.9, -61 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -268.9, -61 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -267.6, -58.4 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -267.6, -58.4 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -266.2, -55.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -266.2, -55.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -264.9, -53.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -264.9, -53.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -263.5, -50.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -263.5, -50.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -262.2, -47.8 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -262.2, -47.8 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -260.8, -45.2 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -260.8, -45.2 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -259.5, -42.6 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -259.5, -42.6 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 210 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 210 + OFFSET_X, 1, -935.7, -157.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -935.7, -157.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -936.7, -161.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -936.7, -161.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -938.5, -165.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -938.5, -165.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -942, -169.8 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -942, -169.8 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -947.1, -173.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -947.1, -173.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -953.8, -177.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -953.8, -177.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -962.1, -181.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -962.1, -181.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -971.7, -174.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -971.7, -174.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -982.9, -168.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -982.9, -168.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -994.1, -161.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -994.1, -161.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -1003.6, -155.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -1003.6, -155.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -1011.6, -149.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -1011.6, -149.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -1017.9, -143.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -1017.9, -143.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -1022.5, -137.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -1022.5, -137.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -1020.9, -138.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -1020.9, -138.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -1017.6, -140.8 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -1017.6, -140.8 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -1013.5, -142.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -1013.5, -142.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -606.3, -217.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -606.3, -217.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -441.1, -190.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -441.1, -190.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -313.8, -169.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -313.8, -169.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -218.4, -152.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -218.4, -152.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -154.6, -137.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -154.6, -137.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -110.3, -123.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -110.3, -123.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -80.2, -111.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -80.2, -111.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -64.2, -102.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -64.2, -102.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -57, -97.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -57, -97.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -53.4, -93.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -53.4, -93.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -52, -91.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -52, -91.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 49, -74.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 49, -74.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 47.8, -73.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 47.8, -73.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 46, -73.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 46, -73.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 23, -63.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 23, -63.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 17, -64.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 17, -64.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -0.7, -77.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -0.7, -77.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 20, -54.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 20, -54.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -15, -53.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -15, -53.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 2.4, -82.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 2.4, -82.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -21.9, -79.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -21.9, -79.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -15.9, -54.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -15.9, -54.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -13.7, -81 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -13.7, -81 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -3.2, -67.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -3.2, -67.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -28.4, -82.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -28.4, -82.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -37.4, -84.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -37.4, -84.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -14.2, -61.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -14.2, -61.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -46.8, -60 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -46.8, -60 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -27.2, -88.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -27.2, -88.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -49.4, -84.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -49.4, -84.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -41.5, -59.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -41.5, -59.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -37.5, -85.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -37.5, -85.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -25.4, -72.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -25.4, -72.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -49.1, -86.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -49.1, -86.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -56.8, -88.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -56.8, -88.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -32.4, -65 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -32.4, -65 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -63.9, -63.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -63.9, -63.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -43.4, -91.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -43.4, -91.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -65, -87.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -65, -87.9 , 0 );

setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -3.5 );

setBlendColor( spep_0 + 268 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 270 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--敵の動き3
setDisp( spep_0 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 434 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 368 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 396 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 414 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 368 + OFFSET_X, 1, -5.8, -30 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -5.8, -30 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -3.8, -27.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -3.8, -27.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -1.9, -25.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -1.9, -25.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 0.1, -23.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 0.1, -23.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -0.7, -35.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -0.7, -35.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -1.4, -47.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -1.4, -47.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -28.2, -92.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -28.2, -92.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 15.1, -45.1 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 15.1, -45.1 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -31.6, -79.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -31.6, -79.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -11.6, -170.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -11.6, -170.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -58, -272.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -58, -272.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -60, -258.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -60, -258.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -54, -264.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -54, -264.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -60, -313.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -60, -313.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -93.6, -164.3 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -93.6, -164.3 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -121.3, -197.8 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -121.3, -197.8 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -132.1, -79.4 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -132.1, -79.4 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -150.2, -92.1 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -150.2, -92.1 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -174.6, -36.8 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -174.6, -36.8 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -176.2, -31.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -176.2, -31.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -173.1, -8.4 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -173.1, -8.4 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -181.2, -3.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -181.2, -3.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -182.6, -0.3 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -182.6, -0.3 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -228.3, 53.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -228.3, 53.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -202.3, 17.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -202.3, 17.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -321.3, 153.6 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -321.3, 153.6 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -448.7, 191.5 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -448.7, 191.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -522.8, 279.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -522.8, 279.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -547.8, 280.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -547.8, 280.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -595.8, 313.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -595.8, 313.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -589.4, 331.4 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -589.4, 331.4 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -598.2, 345.7 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -598.2, 345.7 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -601.8, 320.3 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -601.8, 320.3 , 0 );

setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_0 + 368 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -75 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -75 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 27.2 );


-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 242, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );

--加速
SE004 = playSeVer2( spep_0 + 18, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 18, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 63 );

--飛んでくる
SE006 = playSeVer2( spep_0 + 24, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE006, 54 );
setTimeStretch( SE006, 1.4, 30, 4 );
SE007 = playSeVer2( spep_0 + 56, 1019, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 84, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 84, 1277, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
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
--飛んでくる
SE010 = playSeVer2( spep_0 + 120, 1019, "", 0, 0, 0, -1);

--気弾ため
SE011 = playSeVer2( spep_0 + 164, 1282, "",spep_0 + 230, 0, 20, -1);
SE012 = playSeVer2( spep_0 + 164, 1296, "",spep_0 + 230, 0, 20, -1);
setPitch( spep_0 + 164, SE012, 200 );
setTimeStretch( SE012, 1.13, 30, 4 );

--飛んでくる
SE013 = playSeVer2( spep_0 + 184, 1019, "",spep_0 + 244, 0, 14, -1);

--気弾発射
SE014 = playSeVer2( spep_0 + 194, 1130, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 194, 1145, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 194, 1027, "", 0, 0, 0, -1);

--気弾飛んでいく
SE017 = playSeVer2( spep_0 + 214, 1021, "", 0, 0, 0, -1);

--爆発
SE018 = playSeVer2( spep_0 + 262, 1024, "", 0, 0, 0, -1);

--おりてくる
SE019 = playSeVer2( spep_0 + 320, 1452, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 332, 1508, "",spep_0 + 404, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 332, SE020, 65 );

--キックヒット
SE021 = playSeVer2( spep_0 + 366, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 376, 1153, "", 0, 0, 0, -1);

--蹴り上げ
SE023 = playSeVer2( spep_0 + 406, 1120, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 406, 1187, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 448f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--踏みとどまる
SE026 = playSeVer2( spep_1 + 82, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE026, 50 );
setStartTimeMs( SE026,  367 );
SE027 = playSeVer2( spep_1 + 84, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE027, 79 );
SE028 = playSeVer2( spep_1 + 84, 1476, "",spep_2 + 36, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 84, SE028, 75 );
setPitch( spep_1 + 84, SE028, -1000 );
setTimeStretch( SE028, 0.33, 30, 4 );
SE029 = playSeVer2( spep_1 + 88, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE029, 148 );


-------------------------------------------------
-- エネルギー発射から爆発
-------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- エネルギー発射から爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 100 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 1.1, 16.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 1.1, 16.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -12.9, 40.7 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -12.9, 40.7 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -23.4, 58.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -23.4, 58.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -32.2, 73.9 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -32.2, 73.9 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -39.9, 87.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -39.9, 87.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -46.8, 99.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -46.8, 99.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -52.9, 109.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -52.9, 109.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -58.5, 119.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -58.5, 119.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -63.5, 128 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -63.5, 128 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -68.1, 135.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -68.1, 135.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -72.2, 143 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -72.2, 143 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -76, 149.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -76, 149.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -79.3, 155.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -79.3, 155.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -82.4, 160.6 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -82.4, 160.6 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -85.2, 165.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -85.2, 165.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -87.6, 169.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -87.6, 169.6 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.82, 0.82 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, -55.7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -55.7 );


-- ** 音 ** --
--口から光線出す
SE030 = playSeVer2( spep_2 + 46, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 56, 1109, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 56, 1423, "",spep_2 + 162, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 56, SE032, 72 );
SE033 = playSeVer2( spep_2 + 56, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE033, 135 );
SE034 = playSeVer2( spep_2 + 56, 1145, "", 0, 0, 0, -1);

--爆発
SE035 = playSeVer2( spep_2 + 130, 1067, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 130, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 178); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 298f -0f

end