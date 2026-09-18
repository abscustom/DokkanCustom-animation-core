-- 1028830: UR_ゴテンクス_必殺技：ビクトリーキャノン
-- sp_effect_b4_00321
-- sp2710

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(共通)
SP_01 = 162866; --開幕からカードカットインまで ef_001
SP_03 = 162870; --かめはめ波発射 ef_002

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
ENABLE_AUTO_TIME_STRETCH(0.9);
 
OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕からカードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 622;

setupMovie(0, SP_01, 0, 1);
 
-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --開幕からカードカットインまで ef_001
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 34;

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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 317.2, 18.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 316.2, 18.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 316.2, 18.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 315.2, 18.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 315.2, 18.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 314.2, 18.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 314.2, 18.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 313.2, 18.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 313.2, 18.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 312.2, 18.8 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 312.2, 18.8 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 311.2, 18.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 311.2, 18.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 310.2, 18.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 310.2, 18.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 309.3, 18.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 309.3, 18.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 308.3, 18.8 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 308.3, 18.8 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 307.3, 18.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 307.3, 18.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 306.3, 18.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 306.3, 18.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 305.3, 18.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 305.3, 18.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 304.3, 18.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 304.3, 18.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 303.3, 18.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 303.3, 18.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 302.3, 18.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 302.3, 18.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 301.4, 18.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 301.4, 18.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 300.4, 18.8 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 300.4, 18.8 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 299.4, 18.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 299.4, 18.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 313.5, 19.3 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 313.5, 19.3 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 357.8, 20.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 357.8, 20.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 432.1, 23.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 432.1, 23.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 536.2, 26.5 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 536.2, 26.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 670.1, 30.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 670.1, 30.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 833.4, 36.2 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 833.4, 36.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 1018.7, 42.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 1018.7, 42.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 1180.9, 47.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 1180.9, 47.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 1312.7, 51.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 1312.7, 51.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 1414.3, 55.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 1414.3, 55.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 1485.7, 57.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 1485.7, 57.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 1527.2, 59.2 , 0 );

setScaleKey( spep_0 + 0, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 7.82, 7.82 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 7.82, 7.82 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 10.29, 10.29 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 10.29, 10.29 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 11.23, 11.23 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 11.23, 11.23 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 11.97, 11.97 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 11.97, 11.97 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 12.49, 12.49 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 12.49, 12.49 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 12.8, 12.8 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 172 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 172 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 172 + OFFSET_X, 1, 183.3, -262.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 183.3, -262.4 , 0 );

setScaleKey( spep_0 + 172 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 5.02, 5.02 );

setRotateKey( spep_0 + 172 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -0.5 );

--敵の動き3
setDisp( spep_0 + 256 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 396 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 256 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 324 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 256 + OFFSET_X, 1, 191.5, 69.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 191.5, 69.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 197.1, 64.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 197.1, 64.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 202.7, 58.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 202.7, 58.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 208.2, 53 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 208.2, 53 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 213.7, 47.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 213.7, 47.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 214.4, 47.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 214.4, 47.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 215.1, 47.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 215.1, 47.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 215.8, 47.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 215.8, 47.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 216.5, 47.2 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 216.5, 47.2 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 217.2, 47.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 217.2, 47.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 217.9, 47 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 217.9, 47 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 218.6, 46.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 218.6, 46.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 219.2, 46.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 219.2, 46.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 219.9, 46.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 219.9, 46.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 220.6, 46.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 220.6, 46.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 221.3, 46.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 221.3, 46.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 222, 46.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 222, 46.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 222.7, 46.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 222.7, 46.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 223.4, 46.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 223.4, 46.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 224.1, 46 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 224.1, 46 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 224.8, 45.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 224.8, 45.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 225.4, 45.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 225.4, 45.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 226.1, 45.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 226.1, 45.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 226.8, 45.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 226.8, 45.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 227.5, 45.4 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 227.5, 45.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 228.2, 45.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 228.2, 45.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 228.9, 45.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 228.9, 45.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 229.6, 45.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 229.6, 45.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 230.3, 45 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 230.3, 45 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 230.9, 44.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 230.9, 44.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 231.6, 44.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 231.6, 44.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 232.3, 44.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 232.3, 44.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 233, 44.6 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 233, 44.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 233.7, 44.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 233.7, 44.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -75.6, 44 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -75.6, 44 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -72.9, 48.3 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -72.9, 48.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -70.1, 52.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -70.1, 52.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -67.3, 56.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -67.3, 56.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -64.5, 61.2 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -64.5, 61.2 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -61.8, 65.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -61.8, 65.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -59, 69.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -59, 69.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -56.2, 74.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -56.2, 74.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -53.4, 78.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -53.4, 78.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -50.7, 82.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -50.7, 82.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -47.9, 87 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -47.9, 87 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -45.1, 91.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -45.1, 91.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -42.3, 95.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -42.3, 95.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -39.6, 99.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -39.6, 99.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -36.8, 104.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -36.8, 104.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -34, 108.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -34, 108.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -31.2, 112.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -31.2, 112.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -28.5, 117.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -28.5, 117.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -25.7, 121.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -25.7, 121.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -22.9, 125.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -22.9, 125.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -20.1, 130.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -20.1, 130.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -17.4, 134.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -17.4, 134.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -14.6, 138.7 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -14.6, 138.7 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -11.8, 143 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -11.8, 143 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -9, 147.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -9, 147.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -6.3, 151.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -6.3, 151.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -3.5, 155.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -3.5, 155.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -0.7, 160.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -0.7, 160.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 2.1, 164.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 2.1, 164.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 4.8, 168.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 4.8, 168.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 7.6, 173.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 7.6, 173.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 10.4, 177.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 10.4, 177.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 13.2, 181.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 13.2, 181.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 15.9, 186.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 15.9, 186.1 , 0 );

setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_0 + 256 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -28 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -28 );

--敵の動き4
setDisp( spep_0 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 444 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 438 + OFFSET_X, 1, 350.9, -489.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 350.9, -489.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 533.6, -669 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 533.6, -669 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 716.3, -848.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 716.3, -848.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 899.2, -1028.1 , 0 );

setScaleKey( spep_0 + 438 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 4.35, 4.35 );

setRotateKey( spep_0 + 438 + OFFSET_X, 1, 95 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 95 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 61.6 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 61.6 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 45 );

--敵の動き5
setDisp( spep_0 + 456 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 512 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 456 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 456 + OFFSET_X, 1, -781.3, -106.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -781.3, -106.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -663.2, -153.4 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -663.2, -153.4 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -552.5, -130 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -552.5, -130 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -449.2, -129.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -449.2, -129.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -353.4, -128.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -353.4, -128.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -265, -126.7 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -265, -126.7 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -184.1, -124.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -184.1, -124.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -110.7, -121.5 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -110.7, -121.5 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -44.9, -118 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -44.9, -118 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 23.4, -113.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 23.4, -113.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 54.1, -108.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 54.1, -108.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 113.3, -101.2 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 113.3, -101.2 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 138.8, -124.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 138.8, -124.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 134.8, -108.8 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 134.8, -108.8 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 142.8, -113.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 142.8, -113.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 142.8, -111.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 142.8, -111.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 142.8, -110 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 142.8, -110 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 142.8, -108.5 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 142.8, -108.5 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 142.8, -107.1 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 142.8, -107.1 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 142.8, -105.7 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 142.8, -105.7 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 142.8, -104.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 142.8, -104.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 142.8, -103.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 142.8, -103.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 142.8, -102 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 142.8, -102 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 142.8, -100.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 142.8, -100.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 142.9, -99.8 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 142.9, -99.8 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 142.9, -98.8 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 142.9, -98.8 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 142.9, -97.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 142.9, -97.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 142.8, -97 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 142.8, -97 , 0 );

setScaleKey( spep_0 + 456 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 456 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, 61.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 166, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 110, 1013, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 124, 1109, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 166, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

  pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
  pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
  stopMovie( SP_dodge + 9 );   -- 停止

  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE00X, 0);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
  stopSe( SP_dodge - 12, SE005, 0);

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
--振りかぶる
SE006 = playSeVer2( spep_0 + 204, 1116, "",spep_0 + 246, 0, 18, -1);
SE007 = playSeVer2( spep_0 + 206, 9, "",spep_0 + 264, 16, 22, -1);
setSeVolumeByWorkId( spep_0 + 206, SE007, 70 );
setStartTimeMs( SE007,  33 );
SE008 = playSeVer2( spep_0 + 220, 1004, "", 0, 0, 0, -1);

--蹴る
SE009 = playSeVer2( spep_0 + 236, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE010 = playSeVer2( spep_0 + 252, 1121, "",spep_0 + 534, 0, 106, -1);
setSeVolumeByWorkId( spep_0 + 252, SE010, 56 );
setPitch( spep_0 + 252, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );

--瞬間移動
SE011 = playSeVer2( spep_0 + 280, 1109, "", 0, 0, 0, -1);

--近づく
SE012 = playSeVer2( spep_0 + 320, 63, "",spep_0 + 418, 0, 24, -1);
SE013 = playSeVer2( spep_0 + 320, 1019, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 384, 1019, "",spep_0 + 440, 0, 40, -1);

--アップ
SE015 = playSeVer2( spep_0 + 386, 1006, "", 0, 0, 0, -1);

--投げ飛ばす
SE016 = playSeVer2( spep_0 + 414, 1258, "",spep_0 + 472, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 414, SE016, 63 );
SE017 = playSeVer2( spep_0 + 420, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 420, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE018, 89 );
SE019 = playSeVer2( spep_0 + 442, 1027, "", 0, 0, 0, -1);

--敵飛んでいく２
SE020 = playSeVer2( spep_0 + 448, 1121, "",spep_0 + 534, 0, 22, -1);
setPitch( spep_0 + 448, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );

--水面落ちる
SE021 = playSeVer2( spep_0 + 480, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE021, 178 );
SE022 = playSeVer2( spep_0 + 496, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE022, 77 );
SE023 = playSeVer2( spep_0 + 502, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE023, 79 );

--気弾溜める
SE024 = playSeVer2( spep_0 + 554, 1154, "",spep_0 + 632, 0, 16, -1);
SE025 = playSeVer2( spep_0 + 554, 1296, "",spep_0 + 634, 0, 18, -1);
SE026 = playSeVer2( spep_0 + 554, 1396, "",spep_0 + 638, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 554, SE026, 65 );


-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --622F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

SE028 = playSeVer2( spep_c + 86, 1296, "",spep_1 + 110, 6, 18, -1);
setStartTimeMs( SE028,  433 );
SE029 = playSeVer2( spep_c + 86, 1396, "",spep_1 + 110, 0, 18, -1);
setSeVolumeByWorkId( spep_c + 86, SE029, 65 );

-------------------------------------------------
-- かめはめ波発射
-------------------------------------------------
MAX_FRAME_1 = 300;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0); --かめはめ波発射 ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

-- ** 音 ** --
--腕前に出す
SE030 = playSeVer2( spep_1 + 20, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 20, 1012, "", 0, 0, 0, -1);

--発射前溜め
SE032 = playSeVer2( spep_1 + 42, 1282, "",spep_1 + 122, 0, 30, -1);

--気弾発射
SE033 = playSeVer2( spep_1 + 86, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE033, 119 );
SE034 = playSeVer2( spep_1 + 86, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE034, 69 );
SE035 = playSeVer2( spep_1 + 86, 1177, "",spep_1 + 188, 0, 20, -1);
SE036 = playSeVer2( spep_1 + 92, 1145, "",spep_1 + 186, 0, 18, -1);

--気弾飛んでいく
SE037 = playSeVer2( spep_1 + 108, 1202, "",spep_1 + 180, 0, 20, -1);

--爆発
SE038 = playSeVer2( spep_1 + 172, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE038, 82 );
SE039 = playSeVer2( spep_1 + 172, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE039, 81 );
SE040 = playSeVer2( spep_1 + 180, 1428, "", 0, 32, 0, -1);
setSeVolumeByWorkId( spep_1 + 180, SE040, 193 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 180); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 300F

else
 
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕からカードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 622;

setupMovie(0, SP_01, 0, 1);
 
-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --開幕からカードカットインまで ef_001
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 34;

--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
]]

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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0, 1, -317.2, 18.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -316.2, 18.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -316.2, 18.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -315.2, 18.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -315.2, 18.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -314.2, 18.8 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -314.2, 18.8 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -313.2, 18.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -313.2, 18.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -312.2, 18.8 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -312.2, 18.8 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -311.2, 18.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -311.2, 18.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -310.2, 18.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -310.2, 18.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -309.3, 18.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -309.3, 18.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -308.3, 18.8 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -308.3, 18.8 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -307.3, 18.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -307.3, 18.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -306.3, 18.8 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -306.3, 18.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -305.3, 18.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -305.3, 18.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -304.3, 18.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -304.3, 18.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -303.3, 18.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -303.3, 18.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -302.3, 18.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -302.3, 18.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -301.4, 18.8 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -301.4, 18.8 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -300.4, 18.8 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -300.4, 18.8 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -299.4, 18.8 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -299.4, 18.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -313.5, 19.3 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -313.5, 19.3 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -357.8, 20.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -357.8, 20.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -432.1, 23.1 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -432.1, 23.1 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -536.2, 26.5 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -536.2, 26.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -670.1, 30.9 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -670.1, 30.9 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -833.4, 36.2 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -833.4, 36.2 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -1018.7, 42.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -1018.7, 42.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -1180.9, 47.6 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -1180.9, 47.6 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -1312.7, 51.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -1312.7, 51.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -1414.3, 55.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -1414.3, 55.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -1485.7, 57.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -1485.7, 57.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -1527.2, 59.2 , 0 );

setScaleKey( spep_0 + 0, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 4.46, 4.46 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 7.82, 7.82 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 7.82, 7.82 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 10.29, 10.29 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 10.29, 10.29 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 11.23, 11.23 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 11.23, 11.23 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 11.97, 11.97 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 11.97, 11.97 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 12.49, 12.49 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 12.49, 12.49 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 12.8, 12.8 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 172 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 172 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 172 + OFFSET_X, 1, -183.3, -262.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -183.3, -262.4 , 0 );

setScaleKey( spep_0 + 172 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 5.02, 5.02 );

setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 0.5 );

--敵の動き3
setDisp( spep_0 + 256 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 396 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 256 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 324 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 256 + OFFSET_X, 1, -191.5, 69.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -191.5, 69.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -197.1, 64.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -197.1, 64.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -202.7, 58.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -202.7, 58.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -208.2, 53 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -208.2, 53 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -213.7, 47.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -213.7, 47.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -214.4, 47.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -214.4, 47.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -215.1, 47.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -215.1, 47.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -215.8, 47.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -215.8, 47.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -216.5, 47.2 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -216.5, 47.2 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -217.2, 47.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -217.2, 47.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -217.9, 47 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -217.9, 47 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -218.6, 46.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -218.6, 46.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -219.2, 46.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -219.2, 46.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -219.9, 46.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -219.9, 46.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -220.6, 46.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -220.6, 46.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -221.3, 46.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -221.3, 46.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -222, 46.3 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -222, 46.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -222.7, 46.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -222.7, 46.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -223.4, 46.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -223.4, 46.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -224.1, 46 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -224.1, 46 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -224.8, 45.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -224.8, 45.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -225.4, 45.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -225.4, 45.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -226.1, 45.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -226.1, 45.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -226.8, 45.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -226.8, 45.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -227.5, 45.4 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -227.5, 45.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -228.2, 45.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -228.2, 45.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -228.9, 45.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -228.9, 45.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -229.6, 45.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -229.6, 45.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -230.3, 45 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -230.3, 45 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -230.9, 44.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -230.9, 44.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -231.6, 44.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -231.6, 44.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -232.3, 44.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -232.3, 44.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -233, 44.6 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -233, 44.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -233.7, 44.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -233.7, 44.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 75.6, 44 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 75.6, 44 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 72.9, 48.3 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 72.9, 48.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 70.1, 52.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 70.1, 52.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 67.3, 56.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 67.3, 56.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 64.5, 61.2 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 64.5, 61.2 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 61.8, 65.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 61.8, 65.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 59, 69.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 59, 69.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 56.2, 74.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 56.2, 74.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 53.4, 78.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 53.4, 78.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 50.7, 82.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 50.7, 82.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 47.9, 87 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 47.9, 87 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 45.1, 91.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 45.1, 91.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 42.3, 95.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 42.3, 95.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 39.6, 99.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 39.6, 99.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 36.8, 104.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 36.8, 104.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 34, 108.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 34, 108.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 31.2, 112.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 31.2, 112.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 28.5, 117.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 28.5, 117.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 25.7, 121.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 25.7, 121.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 22.9, 125.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 22.9, 125.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 20.1, 130.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 20.1, 130.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 17.4, 134.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 17.4, 134.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 14.6, 138.7 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 14.6, 138.7 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 11.8, 143 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 11.8, 143 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 9, 147.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 9, 147.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 6.3, 151.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 6.3, 151.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 3.5, 155.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 3.5, 155.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 0.7, 160.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 0.7, 160.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -2.1, 164.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -2.1, 164.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -4.8, 168.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -4.8, 168.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -7.6, 173.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -7.6, 173.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -10.4, 177.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -10.4, 177.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -13.2, 181.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -13.2, 181.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -15.9, 186.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -15.9, 186.1 , 0 );

setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.23, 1.23 );

setRotateKey( spep_0 + 256 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 28 );

--敵の動き4
setDisp( spep_0 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 444 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 438 + OFFSET_X, 1, -350.9, -489.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -350.9, -489.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -533.6, -669 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -533.6, -669 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -716.3, -848.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -716.3, -848.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -899.2, -1028.1 , 0 );

setScaleKey( spep_0 + 438 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 4.35, 4.35 );

setRotateKey( spep_0 + 438 + OFFSET_X, 1, -95 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -95 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -78.3 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -78.3 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -61.6 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -61.6 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -45 );

--敵の動き5
setDisp( spep_0 + 456 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 512 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 456 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 456 + OFFSET_X, 1, 781.3, -106.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 781.3, -106.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 663.2, -153.4 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 663.2, -153.4 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 552.5, -130 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 552.5, -130 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 449.2, -129.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 449.2, -129.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 353.4, -128.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 353.4, -128.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 265, -126.7 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 265, -126.7 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 184.1, -124.4 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 184.1, -124.4 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 110.7, -121.5 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 110.7, -121.5 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 44.9, -118 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 44.9, -118 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -23.4, -113.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -23.4, -113.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -54.1, -108.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -54.1, -108.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -113.3, -101.2 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -113.3, -101.2 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -138.8, -124.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -138.8, -124.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -134.8, -108.8 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -134.8, -108.8 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -142.8, -113.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -142.8, -113.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -142.8, -111.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -142.8, -111.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -142.8, -110 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -142.8, -110 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -142.8, -108.5 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -142.8, -108.5 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -142.8, -107.1 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -142.8, -107.1 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -142.8, -105.7 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -142.8, -105.7 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -142.8, -104.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -142.8, -104.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -142.8, -103.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -142.8, -103.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -142.8, -102 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -142.8, -102 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -142.8, -100.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -142.8, -100.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -142.9, -99.8 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -142.9, -99.8 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -142.9, -98.8 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -142.9, -98.8 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -142.9, -97.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -142.9, -97.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -142.8, -97 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -142.8, -97 , 0 );

setScaleKey( spep_0 + 456 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 456 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -61.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 166, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--構える
SE003 = playSeVer2( spep_0 + 110, 1013, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 124, 1109, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 166, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える

  pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
  pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
  stopMovie( SP_dodge + 9 );   -- 停止

  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE00X, 0);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
  stopSe( SP_dodge - 12, SE005, 0);

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
--振りかぶる
SE006 = playSeVer2( spep_0 + 204, 1116, "",spep_0 + 246, 0, 18, -1);
SE007 = playSeVer2( spep_0 + 206, 9, "",spep_0 + 264, 16, 22, -1);
setSeVolumeByWorkId( spep_0 + 206, SE007, 70 );
setStartTimeMs( SE007,  33 );
SE008 = playSeVer2( spep_0 + 220, 1004, "", 0, 0, 0, -1);

--蹴る
SE009 = playSeVer2( spep_0 + 236, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE010 = playSeVer2( spep_0 + 252, 1121, "",spep_0 + 534, 0, 106, -1);
setSeVolumeByWorkId( spep_0 + 252, SE010, 56 );
setPitch( spep_0 + 252, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );

--瞬間移動
SE011 = playSeVer2( spep_0 + 280, 1109, "", 0, 0, 0, -1);

--近づく
SE012 = playSeVer2( spep_0 + 320, 63, "",spep_0 + 418, 0, 24, -1);
SE013 = playSeVer2( spep_0 + 320, 1019, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 384, 1019, "",spep_0 + 440, 0, 40, -1);

--アップ
SE015 = playSeVer2( spep_0 + 386, 1006, "", 0, 0, 0, -1);

--投げ飛ばす
SE016 = playSeVer2( spep_0 + 414, 1258, "",spep_0 + 472, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 414, SE016, 63 );
SE017 = playSeVer2( spep_0 + 420, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 420, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE018, 89 );
SE019 = playSeVer2( spep_0 + 442, 1027, "", 0, 0, 0, -1);

--敵飛んでいく２
SE020 = playSeVer2( spep_0 + 448, 1121, "",spep_0 + 534, 0, 22, -1);
setPitch( spep_0 + 448, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );

--水面落ちる
SE021 = playSeVer2( spep_0 + 480, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE021, 178 );
SE022 = playSeVer2( spep_0 + 496, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE022, 77 );
SE023 = playSeVer2( spep_0 + 502, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE023, 79 );

--気弾溜める
SE024 = playSeVer2( spep_0 + 554, 1154, "",spep_0 + 632, 0, 16, -1);
SE025 = playSeVer2( spep_0 + 554, 1296, "",spep_0 + 634, 0, 18, -1);
SE026 = playSeVer2( spep_0 + 554, 1396, "",spep_0 + 638, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 554, SE026, 65 );


-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --622F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

SE028 = playSeVer2( spep_c + 86, 1296, "",spep_1 + 110, 6, 18, -1);
setStartTimeMs( SE028,  433 );
SE029 = playSeVer2( spep_c + 86, 1396, "",spep_1 + 110, 0, 18, -1);
setSeVolumeByWorkId( spep_c + 86, SE029, 65 );

-------------------------------------------------
-- かめはめ波発射
-------------------------------------------------
MAX_FRAME_1 = 300;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0); --かめはめ波発射 ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

-- ** 音 ** --
--腕前に出す
SE030 = playSeVer2( spep_1 + 20, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 20, 1012, "", 0, 0, 0, -1);

--発射前溜め
SE032 = playSeVer2( spep_1 + 42, 1282, "",spep_1 + 122, 0, 30, -1);

--気弾発射
SE033 = playSeVer2( spep_1 + 86, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE033, 119 );
SE034 = playSeVer2( spep_1 + 86, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE034, 69 );
SE035 = playSeVer2( spep_1 + 86, 1177, "",spep_1 + 188, 0, 20, -1);
SE036 = playSeVer2( spep_1 + 92, 1145, "",spep_1 + 186, 0, 18, -1);

--気弾飛んでいく
SE037 = playSeVer2( spep_1 + 108, 1202, "",spep_1 + 180, 0, 20, -1);

--爆発
SE038 = playSeVer2( spep_1 + 172, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE038, 82 );
SE039 = playSeVer2( spep_1 + 172, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE039, 81 );
SE040 = playSeVer2( spep_1 + 180, 1428, "", 0, 32, 0, -1);
setSeVolumeByWorkId( spep_1 + 180, SE040, 193 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 180); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 300F

end