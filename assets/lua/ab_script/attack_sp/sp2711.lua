-- 1028820: SSR_ゴテンクス_必殺技：ビクトリーキャノン(簡易版)
-- sp_effect_b4_00322
-- sp2711

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162872; --開幕からカードカットインまで ef_001
SP_02 = 162873; --開幕からカードカットインまで(背景) ef_001b
SP_03 = 162876; --かめはめ波発射 ef_002

--エフェクト(てき)
SP_01r = 162874; --開幕からカードカットインまで ef_001r
SP_02r = 162875; --開幕からカードカットインまで(背景) ef_001br
SP_03r = 162877; --かめはめ波発射 ef_002r

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
MAX_FRAME_0 = 408;

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
base_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --開幕からカードカットインまで(背景) ef_001b
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255); 

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -125, 518.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -125, 518.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -125, 518.5 , 0 );
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
setDisp( spep_0 + 296 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 256 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 256 + OFFSET_X, 1, 112, -28.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 112, -28.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 121, -47.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 121, -47.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 128.6, -63.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 128.6, -63.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 134.7, -76.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 134.7, -76.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 139.5, -85.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 139.5, -85.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 142.8, -92.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 142.8, -92.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 142.8, -91.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 142.8, -91.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 142.8, -90.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 142.8, -90.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 142.8, -89.2 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 142.8, -89.2 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 142.8, -88.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 142.8, -88.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 142.8, -87.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 142.8, -87.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 142.8, -86.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 142.8, -86.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 142.8, -85.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 142.8, -85.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 142.8, -84.4 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 142.8, -84.4 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 142.8, -83.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 142.8, -83.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 142.8, -82.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 142.8, -82.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 142.8, -81.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 142.8, -81.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 142.8, -80.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 142.8, -80.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 142.8, -79.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 142.8, -79.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 142.8, -78.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 142.8, -78.6 , 0 );

setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 256 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 61.2 );

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
SE010 = playSeVer2( spep_0 + 252, 1121, "",spep_0 + 310, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 252, SE010, 56 );
setPitch( spep_0 + 252, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );

--水面落ちる
SE011 = playSeVer2( spep_0 + 264, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE011, 178 );
SE012 = playSeVer2( spep_0 + 280, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE012, 77 );
SE013 = playSeVer2( spep_0 + 284, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE013, 79 );

--気弾溜める
SE014 = playSeVer2( spep_0 + 352, 1154, "",spep_0 + 430, 0, 14, 0.6);
SE015 = playSeVer2( spep_0 + 352, 1296, "",spep_0 + 434, 0, 20, 0.6);
SE016 = playSeVer2( spep_0 + 352, 1396, "",spep_0 + 436, 0, 18, 0.6);
setSeVolumeByWorkId( spep_0 + 352, SE016, 65 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --408F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

--発射前溜め
SE018 = playSeVer2( spep_c + 86, 1296, "",spep_1 + 110, 6, 18, -1);
setStartTimeMs( SE018,  433 );
SE019 = playSeVer2( spep_c + 86, 1396, "",spep_1 + 110, 0, 18, -1);
setSeVolumeByWorkId( spep_c + 86, SE019, 65 );

-------------------------------------------------
-- かめはめ波発射
-------------------------------------------------
MAX_FRAME_1 = 298;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); --かめはめ波発射 ef_002
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
SE020 = playSeVer2( spep_1 + 20, 1003, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 20, 1012, "", 0, 0, 0, -1);

--発射前溜め
SE022 = playSeVer2( spep_1 + 42, 1282, "",spep_1 + 122, 0, 30, -1);

--気弾発射
SE023 = playSeVer2( spep_1 + 86, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE023, 119 );
SE024 = playSeVer2( spep_1 + 86, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE024, 69 );
SE025 = playSeVer2( spep_1 + 86, 1177, "",spep_1 + 188, 0, 20, -1);
SE026 = playSeVer2( spep_1 + 92, 1145, "",spep_1 + 186, 0, 18, -1);

--気弾飛んでいく
SE027 = playSeVer2( spep_1 + 108, 1202, "",spep_1 + 180, 0, 20, -1);

--爆発
SE028 = playSeVer2( spep_1 + 172, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE028, 82 );
SE029 = playSeVer2( spep_1 + 172, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE029, 81 );
SE030 = playSeVer2( spep_1 + 180, 1428, "", 0, 32, 0, -1);
setSeVolumeByWorkId( spep_1 + 180, SE030, 193 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 180); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 298F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕からカードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 408;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); --開幕からカードカットインまで(敵側) ef_001r
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);
base_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0); --開幕からカードカットインまで(背景)(敵側) ef_001br
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255); 

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -125, 518.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -125, 518.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -125, 518.5 , 0 );
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
setDisp( spep_0 + 296 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 256 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 256 + OFFSET_X, 1, 112, -28.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 112, -28.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 121, -47.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 121, -47.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 128.6, -63.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 128.6, -63.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 134.7, -76.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 134.7, -76.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 139.5, -85.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 139.5, -85.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 142.8, -92.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 142.8, -92.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 142.8, -91.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 142.8, -91.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 142.8, -90.2 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 142.8, -90.2 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 142.8, -89.2 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 142.8, -89.2 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 142.8, -88.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 142.8, -88.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 142.8, -87.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 142.8, -87.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 142.8, -86.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 142.8, -86.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 142.8, -85.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 142.8, -85.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 142.8, -84.4 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 142.8, -84.4 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 142.8, -83.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 142.8, -83.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 142.8, -82.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 142.8, -82.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 142.8, -81.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 142.8, -81.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 142.8, -80.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 142.8, -80.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 142.8, -79.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 142.8, -79.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 142.8, -78.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 142.8, -78.6 , 0 );

setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 256 + OFFSET_X, 1, 61.2 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 61.2 );

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
SE010 = playSeVer2( spep_0 + 252, 1121, "",spep_0 + 310, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 252, SE010, 56 );
setPitch( spep_0 + 252, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );

--水面落ちる
SE011 = playSeVer2( spep_0 + 264, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE011, 178 );
SE012 = playSeVer2( spep_0 + 280, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE012, 77 );
SE013 = playSeVer2( spep_0 + 284, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE013, 79 );

--気弾溜める
SE014 = playSeVer2( spep_0 + 352, 1154, "",spep_0 + 430, 0, 14, 0.6);
SE015 = playSeVer2( spep_0 + 352, 1296, "",spep_0 + 434, 0, 20, 0.6);
SE016 = playSeVer2( spep_0 + 352, 1396, "",spep_0 + 436, 0, 18, 0.6);
setSeVolumeByWorkId( spep_0 + 352, SE016, 65 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --408F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

--発射前溜め
SE018 = playSeVer2( spep_c + 86, 1296, "",spep_1 + 110, 6, 18, -1);
setStartTimeMs( SE018,  433 );
SE019 = playSeVer2( spep_c + 86, 1396, "",spep_1 + 110, 0, 18, -1);
setSeVolumeByWorkId( spep_c + 86, SE019, 65 );

-------------------------------------------------
-- かめはめ波発射
-------------------------------------------------
MAX_FRAME_1 = 298;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0); --かめはめ波発射(敵側) ef_002r
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
SE020 = playSeVer2( spep_1 + 20, 1003, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 20, 1012, "", 0, 0, 0, -1);

--発射前溜め
SE022 = playSeVer2( spep_1 + 42, 1282, "",spep_1 + 122, 0, 30, -1);

--気弾発射
SE023 = playSeVer2( spep_1 + 86, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE023, 119 );
SE024 = playSeVer2( spep_1 + 86, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE024, 69 );
SE025 = playSeVer2( spep_1 + 86, 1177, "",spep_1 + 188, 0, 20, -1);
SE026 = playSeVer2( spep_1 + 92, 1145, "",spep_1 + 186, 0, 18, -1);

--気弾飛んでいく
SE027 = playSeVer2( spep_1 + 108, 1202, "",spep_1 + 180, 0, 20, -1);

--爆発
SE028 = playSeVer2( spep_1 + 172, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE028, 82 );
SE029 = playSeVer2( spep_1 + 172, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE029, 81 );
SE030 = playSeVer2( spep_1 + 180, 1428, "", 0, 32, 0, -1);
setSeVolumeByWorkId( spep_1 + 180, SE030, 193 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 180); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 298F

end