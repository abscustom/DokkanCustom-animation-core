--1031500:LR_超一星龍_格闘カウンター
--sp_effect_b1_00335
--c0032

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163924; -- 前面 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
 
setVisibleUI( 0, 0);
 
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
 
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
 
ENABLE_AUTO_TIME_STRETCH(0.84);
 
OFFSET_X = -1;
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- カウンター
------------------------------------------------------
 
MAX_FRAME_0 = 716;

setupMovie(spep_0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵より前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 12 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 12 + OFFSET_X, 1, 110 );

setMoveKey( spep_0 + 12 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 238.9, 34.9 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 238.9, 34.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 229.5, 34.9 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 229.5, 34.9 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 231.1, 34.9 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 231.1, 34.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 237.4, 34.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 237.4, 34.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 257.7, 34.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 258, 34.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 258, 34.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 259, 34.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 259, 34.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 260.5, 34.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 260.5, 34.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 262.6, 34.9 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 262.6, 34.9 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 265.4, 34.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 265.4, 34.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 268.7, 34.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 268.7, 34.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 272.7, 34.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 272.7, 34.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 277.2, 34.9 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 277.2, 34.9 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 282.4, 34.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 282.4, 34.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 288.2, 34.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 288.2, 34.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 294.6, 34.9 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 294.6, 34.9 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 301.6, 34.9 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 301.6, 34.9 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 309.2, 34.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 309.2, 34.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 317.5, 34.9 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 317.5, 34.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 326.3, 34.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 326.3, 34.9 , 0 );

x = 0.5;
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.45 + x, 3.45 + x );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 3.45 + x, 3.45 + x );

setRotateKey( spep_0 + 12 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 4 );

--敵の動き2

setDisp( spep_0 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 256 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 194 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 194 + OFFSET_X, 1, 132.2, -212.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 132.2, -212.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 134.3, -213.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 134.3, -213.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 136.4, -214.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 136.4, -214.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 138.3, -215.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 138.3, -215.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 140.2, -217.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 140.2, -217.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 142, -218.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 142, -218.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 143.7, -219.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 143.7, -219.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 145.4, -220.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 145.4, -220.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 147, -221.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 147, -221.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 148.5, -222.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 148.5, -222.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 149.9, -223.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 149.9, -223.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 151.3, -224.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 151.3, -224.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 152.6, -224.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 152.6, -224.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 153.9, -225.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 153.9, -225.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 155, -226.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 155, -226.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 156.1, -227.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 156.1, -227.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 157.2, -227.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 157.2, -227.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 158.1, -228.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 158.1, -228.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 159, -228.9 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 159, -228.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 159.8, -229.4 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 159.8, -229.4 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 160.6, -229.9 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 160.6, -229.9 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 161.2, -230.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 161.2, -230.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 161.8, -230.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 161.8, -230.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 162.4, -231 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 162.4, -231 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 162.8, -231.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 162.8, -231.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 163.2, -231.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 163.2, -231.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 163.5, -231.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 163.5, -231.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 163.8, -231.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 163.8, -231.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 164, -232 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 164, -232 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 164.1, -232.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 164.1, -232.1 , 0 );

setScaleKey( spep_0 + 194 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 5.6, 5.6 );

setRotateKey( spep_0 + 194 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -42.4 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -40.2 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -40.2 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -39.3 );

--敵の動き3

setDisp( spep_0 + 464 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 556 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 472 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 532 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 464 + OFFSET_X, 1, -10.8, 139.3 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -10.8, 139.3 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 131.2, 217.9 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 131.2, 217.9 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 146.2, 235.4 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 146.2, 235.4 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 117.4, 198.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 117.4, 198.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 146.4, 240 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 146.4, 240 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 119.5, 208 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 119.5, 208 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 140.3, 235 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 140.3, 235 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 124.2, 215.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 124.2, 215.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 133.1, 225.2 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 133.1, 225.2 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 129.1, 229.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 129.1, 229.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 139, 228.6 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 139, 228.6 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 131, 228.6 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 131, 228.6 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 131, 236.6 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 131, 236.6 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 131.2, 236.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 131.2, 236.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 133.4, 243.5 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 133.4, 243.5 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 133.6, 243.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 133.6, 243.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 133.8, 243.1 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 133.8, 243.1 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 134.4, 244.3 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 134.4, 244.3 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 134.6, 244.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 134.6, 244.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 134.8, 243.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 134.8, 243.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 135, 243.7 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 135, 243.7 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 105.2, 203.7 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 105.2, 203.7 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 105.4, 203.5 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 105.4, 203.5 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 105.6, 203.3 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 105.6, 203.3 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 75.9, 163.4 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 75.9, 163.4 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 76.1, 163.2 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 76.1, 163.2 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 76.3, 163 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 76.3, 163 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 69, 152.9 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 69, 152.9 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 69.2, 152.7 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 69.2, 152.7 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 69.4, 152.5 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 69.4, 152.5 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 69.6, 152.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 69.6, 152.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 44.9, 18.5 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 44.9, 18.5 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 45.1, 18.3 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 45.1, 18.3 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 45.1, -6.7 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 45.1, -6.7 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 45.7, -119.6 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 45.7, -119.6 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 45.7, -168.2 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 45.7, -168.2 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 45.7, -118 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 45.7, -118 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 45.7, -149.5 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 45.7, -149.5 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 45.7, -369.7 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 45.7, -369.7 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 45.7, -398.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 45.7, -398.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 41.7, -394.7 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 41.7, -394.7 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 49.7, -896.8 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 49.7, -896.8 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 41.7, -896.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 41.7, -896.8 , 0 );

setScaleKey( spep_0 + 464 + OFFSET_X, 1, 1.9 + x, 1.9 + x );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 1.9 + x, 1.9 + x );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 2.21 + x, 2.21 + x );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 2.21 + x, 2.21 + x );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 1.58 + x, 1.58 + x );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 1.58 + x, 1.58 + x );

setRotateKey( spep_0 + 464 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -78.4 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -70.6 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -70.6 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -93.6 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, -93.6 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -99.4 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -99.4 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, -137 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, -137 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, -199.2 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, -199.2 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -214.7 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -214.7 );

--敵の動き4

setDisp( spep_0 + 574 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 592 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 574 + OFFSET_X, 1, 56.5, 778.7 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 56.5, 778.7 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 42.1, 367.1 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 42.1, 367.1 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 24.2, -147.6 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 24.2, -147.6 , 0 );

setScaleKey( spep_0 + 574 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 574 + OFFSET_X, 1, 128.8 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 128.8 );

-- ** 音 ** --

--敵攻撃
SE001 = playSeVer2( spep_0 + 0, 1047, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1110, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 71 );

--画面遷移
SE004 = playSeVer2( spep_0 + 46, 8, "", 0, 0, 0, -1);

--身体赤くなる
SE005 = playSeVer2( spep_0 + 112, 1495, "",spep_0 + 450, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 112, SE005, 83 );
setPitch( spep_0 + 112, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 140, 1271, "",spep_0 + 440, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 140, SE006, 82 );

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 188; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    pauseAll( SP_dodge, 67 );
 
    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
     
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示
 
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

 
do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --

--身体赤くなる
SE007 = playSeVer2( spep_0 + 186, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE007, 74 );
SE008 = playSeVer2( spep_0 + 186, 1418, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 198, 1219, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 422, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE010, 94 );

--瞬間移動
SE011 = playSeVer2( spep_0 + 422, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE011, 86 );

--パンチ
SE012 = playSeVer2( spep_0 + 454, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE012, 155 );
SE013 = playSeVer2( spep_0 + 466, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 466, 1153, "", 0, 0, 0, -1);

--叩き落とす
SE015 = playSeVer2( spep_0 + 518, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 528, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE016, 76 );
SE017 = playSeVer2( spep_0 + 528, 1120, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 528, 1359, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 578, SE015, 0 );
    stopSe( spep_0 + 578, SE016, 0 );
    stopSe( spep_0 + 578, SE017, 0 );
    stopSe( spep_0 + 578, SE018, 0 );

    stopMovie( spep_0 + 559 );   -- 停止
    setDisp( spep_0 + 558, 1, 1 );
    setMoveKey( spep_0 + 558, 1, 3000, 0, 0 );
    setScaleKey( spep_0 + 558, 1, 2.08, 2.08 );
    setRotateKey( spep_0 + 558, 1, -214.7 );

    endPhase( spep_0 + 560 );

else

------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

-- ** 音 ** --

--落ちていく
SE019 = playSeVer2( spep_0 + 536, 1121, "",spep_0 + 628, 0, 42, -1);

--地面激突
SE020 = playSeVer2( spep_0 + 590, 1159, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 596 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 716F

end