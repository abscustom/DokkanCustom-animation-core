--1027370：UR_マイ(未来)_必殺技：未来を賭けた攻戦
--sp_effect_b3_00007
--sp2599

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162140;	--マイが双眼鏡で索敵～マイが爆発のスイッチを押す	ef_001
SP_01b = 162141;	--マイが双眼鏡で索敵～マイが爆発のスイッチを押す	ef_001b
SP_02 = 162143;	--街中で銃撃～街を爆発	ef_002
SP_02b = 162144;	--街中で銃撃～街を爆発	ef_002b

--エフェクト(てき)
SP_01r = 162142;	--マイが双眼鏡で索敵～マイが爆発のスイッチを押す	ef_001r
SP_01br = 162158;	--マイが双眼鏡で索敵～マイが爆発のスイッチを押す	ef_001br
SP_02r = 162145;	--街中で銃撃～街を爆発	ef_002r


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
-- マイが双眼鏡で索敵～マイが爆発のスイッチを押す（426F）
-------------------------------------------------

MAX_FRAME_0 = 426;

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

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 59, 906, 39, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 59, shuchusen_0, 40, 20 );
setEffMoveKey( spep_0 + 59, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 98, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 59, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 98, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 59, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 98, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 59, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen_0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 340;

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

-- ** 白フェード ** --
entryFade( spep_0 + 422, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 58 + OFFSET_X, 1, 1);
setDisp( spep_0 + 102 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 58 + OFFSET_X, 1, 116 );

setMoveKey( spep_0 + 58 + OFFSET_X, 1, 0, -7 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 0, -7 , 0 );

setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.14, 0.15 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.14, 0.15 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 0.38, 0.39 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.59, 0.6 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 0.79, 0.8 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 0.97, 0.98 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.14, 1.15 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.05, 2.06 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 2.26, 2.26 );

setRotateKey( spep_0 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 76 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 84 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -10 );

-- 敵の動き2
setDisp( spep_0 + 250 + OFFSET_X, 1, 1);
setDisp( spep_0 + 342 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 250 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 310 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 250 + OFFSET_X, 1, 40.7, -0.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 40.7, -0.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 24.7, 7 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 24.7, 7 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 53.4, -11 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 53.4, -11 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 38.5, 19.1 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 38.5, 19.1 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 29.6, -14 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 29.6, -14 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 41, 5.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 41, 5.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 7.9, -8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 7.9, -8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 32.5, 19.2 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 32.5, 19.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 26.6, 0.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 26.6, 0.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 10.6, 7.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 10.6, 7.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 39.3, -10.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 39.3, -10.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 24, 17.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 24, 17.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 16.1, -15.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 16.1, -15.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 28.6, 3.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 28.6, 3.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -3.5, -9.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -3.5, -9.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 22.2, 18 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 22.2, 18 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 17.4, -0.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 17.4, -0.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 14.2, 1.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 14.2, 1.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 19.2, -4.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 19.2, -4.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 13.3, 5.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 13.3, 5.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 13.4, -5.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 13.4, -5.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 16.3, 2.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 16.3, 2.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 10.4, -2.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 10.4, -2.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 14.1, 1.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 14.1, 1.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 11.8, -0.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 11.8, -0.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 11.1, -0.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 11.1, -0.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 10.4, -0.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 10.4, -0.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 9.6, -0.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 9.6, -0.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 8.9, -0.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 8.9, -0.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 8.2, -0.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 8.2, -0.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 8.1, 0 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 7.7, 0.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 7.4, 0.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 7, 0.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 7, 0.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 6.9, 0.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 6.9, 0.1 , 0 );

setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.69, 0.69 );

setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.6);
setTimeStretch( SE001, 0.89, 30, 4 );

--敵向かってくる
SE002 = playSeVer2( spep_0 + 54, 1167, "",spep_0 + 114, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 54, SE002, 40 );
setBandpassFilter	( spep_0 + 54, SE002, 24, 1050 );

--双眼鏡のぞく
SE003 = playSeVer2( spep_0 + 56, 53, "",spep_0 + 120, 0, 16, -1);

--指揮をとる
SE004 = playSeVer2( spep_0 + 102, 1333, "", 0, 4, 0, -1);
setStartTimeMs( SE004,  400 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--指揮をとる
SE005 = playSeVer2( spep_0 + 110, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 73 );
SE006 = playSeVer2( spep_0 + 110, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE006, 123 );

--銃撃つ
SE007 = playSeVer2( spep_0 + 164, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE007,  367 );

--弾飛んでいく
SE008 = playSeVer2( spep_0 + 186, 1219, "",spep_0 + 282, 8, 30, -1);
setSeVolumeByWorkId( spep_0 + 186, SE008, 178 );
setStartTimeMs( SE008,  733 );

--銃撃つ
SE009 = playSeVer2( spep_0 + 166, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE009, 71 );
SE010 = playSeVer2( spep_0 + 166, 1030, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 1389, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 174, 1028, "", 0, 0, 0, -1);

--弾飛んでいく
SE013 = playSeVer2( spep_0 + 182, 1121, "",spep_0 + 284, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 182, SE013, 69 );

--弾ヒット
SE014 = playSeVer2( spep_0 + 248, 1024, "",spep_0 + 352, 0, 42, -1);
SE015 = playSeVer2( spep_0 + 256, 1017, "",spep_0 + 284, 0, 8, -1);
SE016 = playSeVer2( spep_0 + 266, 1025, "",spep_0 + 306, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 266, SE016, 60 );
SE017 = playSeVer2( spep_0 + 278, 1014, "",spep_0 + 316, 0, 16, -1);

--敵起き上がる
SE018 = playSeVer2( spep_0 + 304, 1012, "",spep_0 + 366, 0, 10, -1);

--スイッチ置く
SE020 = playSeVer2( spep_0 + 402, 27, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE020, 178 );
SE021 = playSeVer2( spep_0 + 402, 21, "",spep_0 + 422, 0, 8, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 街中で銃撃～街を爆発（318F）
-------------------------------------------------

MAX_FRAME_1 = 318;

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
setDisp( spep_1 + 90 + OFFSET_X, 1, 1);
setDisp( spep_1 + 178 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 90 + OFFSET_X, 1, 117 );
changeAnime( spep_1 + 120 + OFFSET_X, 1, 104 );

setMoveKey( spep_1 + 90 + OFFSET_X, 1, -14.5, 20 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, -14.5, 20 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 38.4, -15 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 38.4, -15 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, -8.6, 4.5 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, -8.6, 4.5 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 30.1, -42.3 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 30.1, -42.3 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 16.7, 17.7 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 16.7, 17.7 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -14.7, -31.8 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -14.7, -31.8 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 23.9, 15 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 23.9, 15 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -3.4, 3.2 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -3.4, 3.2 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 33.1, -30.3 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 33.1, -30.3 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -9.2, 8.7 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -9.2, 8.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -14.3, -30.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, -14.3, -30.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 18.5, 8.7 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 18.5, 8.7 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 4.2, -18.3 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 4.2, -18.3 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 18.1, 2.1 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 18.1, 2.1 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 1.9, 3.7 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 1.9, 3.7 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 20.1, 13.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 20.1, 13.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -8.5, 29.1 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -8.5, 29.1 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 30.1, -17.6 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 30.1, -17.6 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 16.8, 42.4 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 16.8, 42.4 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -14.6, -7.1 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, -14.6, -7.1 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 23.9, 39.7 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 23.9, 39.7 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, -3.3, 27.8 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, -3.3, 27.8 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 33.1, -5.6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 33.1, -5.6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -9.1, 33.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -9.1, 33.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -14.3, -5.6 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -14.3, -5.6 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 18.6, 49 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 18.6, 49 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 24.7, 14.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 24.7, 14.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -6.6, 1.9 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -6.6, 1.9 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 13.1, 30.3 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 13.1, 30.3 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 7.4, 18.1 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 7.4, 18.1 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 12.9, 12.9 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 12.9, 12.9 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 3.4, 16.1 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 3.4, 16.1 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 15.9, 15.8 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 15.9, 15.8 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 20, 5.9 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 20, 5.9 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 1.1, 25.6 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 1.1, 25.6 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 46.2, 25.3 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 46.2, 25.3 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -20.9, -6.1 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -20.9, -6.1 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 10, 47.5 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 10, 47.5 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -28, -8.1 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -28, -8.1 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -10.4, 48.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -10.4, 48.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 40.1, -4.1 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 40.1, -4.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -17.8, 44.3 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -17.8, 44.3 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 20.8, -17.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 20.8, -17.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -2.5, 57.3 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, -2.5, 57.3 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 37.4, -21.5 , 0 );

setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_1 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--土煙
SE023 = playSeVer2( spep_1 + 0, 1226, "", 0, 0, 0, -1);

--銃撃音
SE024 = playSeVer2( spep_1 + 16, 1028, "",spep_1 + 54, 0, 20, -1);
SE025 = playSeVer2( spep_1 + 26, 1028, "",spep_1 + 62, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 26, SE025, 79 );
SE026 = playSeVer2( spep_1 + 26, 1030, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 46, 1028, "",spep_1 + 84, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 46, SE027, 69 );
SE028 = playSeVer2( spep_1 + 54, 1030, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 66, 1028, "",spep_1 + 104, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 66, SE029, 82 );
SE030 = playSeVer2( spep_1 + 76, 1030, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 86, 1030, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 96, 1028, "",spep_1 + 134, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 96, SE032, 80 );
SE033 = playSeVer2( spep_1 + 106, 1030, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE033, 85 );
SE034 = playSeVer2( spep_1 + 116, 1028, "",spep_1 + 152, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 116, SE034, 93 );
SE035 = playSeVer2( spep_1 + 122, 1028, "",spep_1 + 160, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 122, SE035, 79 );
SE036 = playSeVer2( spep_1 + 128, 1030, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 128, SE036, 79 );

--ビル倒れる
SE037 = playSeVer2( spep_1 + 130, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 130, SE037, 68 );
SE038 = playSeVer2( spep_1 + 130, 1033, "", 0, 0, 0, -1);

--地響き音
SE039 = playSeVer2( spep_1 + 146, 1044, "", 0, 0, 0, -1);

--ビル倒れる
SE040 = playSeVer2( spep_1 + 148, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 148, SE040, 75 );
SE041 = playSeVer2( spep_1 + 160, 1024, "", 0, 0, 0, -1);

--爆発
SE042 = playSeVer2( spep_1 + 224, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 238, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 212); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- マイが双眼鏡で索敵～マイが爆発のスイッチを押す（426F）
-------------------------------------------------

MAX_FRAME_0 = 426;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001r
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001br
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 集中線 ** --
shuchusen_0 = entryEffectLife( spep_0 + 59, 906, 39, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 59, shuchusen_0, 40, 20 );
setEffMoveKey( spep_0 + 59, shuchusen_0, 0, 0, 0 );
setEffMoveKey( spep_0 + 98, shuchusen_0, 0, 0, 0 );
setEffScaleKey( spep_0 + 59, shuchusen_0, 1.6, 1.6 );
setEffScaleKey( spep_0 + 98, shuchusen_0, 1.6, 1.6 );
setEffRotateKey( spep_0 + 59, shuchusen_0, 0 );
setEffRotateKey( spep_0 + 98, shuchusen_0, 0 );
setEffAlphaKey( spep_0 + 59, shuchusen_0, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen_0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 340;

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

-- ** 白フェード ** --
entryFade( spep_0 + 422, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 58 + OFFSET_X, 1, 1);
setDisp( spep_0 + 102 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 58 + OFFSET_X, 1, 16 );

setMoveKey( spep_0 + 58 + OFFSET_X, 1, 0, -7 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 0, -7 , 0 );

setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.14, 0.15 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.14, 0.15 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 0.38, 0.39 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 0.59, 0.6 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 0.79, 0.8 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 0.97, 0.98 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.14, 1.15 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.05, 2.06 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 2.26, 2.26 );

setRotateKey( spep_0 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, 2.7 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 76 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 84 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 10 );

-- 敵の動き2
setDisp( spep_0 + 250 + OFFSET_X, 1, 1);
setDisp( spep_0 + 342 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 250 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 310 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 250 + OFFSET_X, 1, 40.7, -0.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 40.7, -0.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 24.7, 7 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 24.7, 7 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 53.4, -11 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 53.4, -11 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 38.5, 19.1 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 38.5, 19.1 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 29.6, -14 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 29.6, -14 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 41, 5.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 41, 5.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 7.9, -8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 7.9, -8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 32.5, 19.2 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 32.5, 19.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 26.6, 0.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 26.6, 0.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 10.6, 7.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 10.6, 7.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 39.3, -10.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 39.3, -10.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 24, 17.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 24, 17.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 16.1, -15.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 16.1, -15.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 28.6, 3.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 28.6, 3.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -3.5, -9.1 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -3.5, -9.1 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 22.2, 18 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 22.2, 18 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 17.4, -0.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 17.4, -0.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 14.2, 1.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 14.2, 1.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 19.2, -4.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 19.2, -4.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 13.3, 5.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 13.3, 5.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 13.4, -5.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 13.4, -5.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 16.3, 2.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 16.3, 2.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 10.4, -2.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 10.4, -2.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 14.1, 1.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 14.1, 1.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 11.8, -0.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 11.8, -0.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 11.1, -0.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 11.1, -0.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 10.4, -0.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 10.4, -0.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 9.6, -0.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 9.6, -0.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 8.9, -0.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 8.9, -0.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 8.2, -0.2 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 8.2, -0.2 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 8.1, 0 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 7.7, 0.1 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 7.4, 0.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 7, 0.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 7, 0.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 6.9, 0.1 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 6.9, 0.1 , 0 );

setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.69, 0.69 );

setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.6);
setTimeStretch( SE001, 0.89, 30, 4 );

--敵向かってくる
SE002 = playSeVer2( spep_0 + 54, 1167, "",spep_0 + 114, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 54, SE002, 40 );
setBandpassFilter	( spep_0 + 54, SE002, 24, 1050 );

--双眼鏡のぞく
SE003 = playSeVer2( spep_0 + 56, 53, "",spep_0 + 120, 0, 16, -1);

--指揮をとる
SE004 = playSeVer2( spep_0 + 102, 1333, "", 0, 4, 0, -1);
setStartTimeMs( SE004,  400 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--指揮をとる
SE005 = playSeVer2( spep_0 + 110, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE005, 73 );
SE006 = playSeVer2( spep_0 + 110, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE006, 123 );

--銃撃つ
SE007 = playSeVer2( spep_0 + 164, 1150, "", 0, 2, 0, -1);
setStartTimeMs( SE007,  367 );

--弾飛んでいく
SE008 = playSeVer2( spep_0 + 186, 1219, "",spep_0 + 282, 8, 30, -1);
setSeVolumeByWorkId( spep_0 + 186, SE008, 178 );
setStartTimeMs( SE008,  733 );

--銃撃つ
SE009 = playSeVer2( spep_0 + 166, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE009, 71 );
SE010 = playSeVer2( spep_0 + 166, 1030, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 166, 1389, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 174, 1028, "", 0, 0, 0, -1);

--弾飛んでいく
SE013 = playSeVer2( spep_0 + 182, 1121, "",spep_0 + 284, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 182, SE013, 69 );

--弾ヒット
SE014 = playSeVer2( spep_0 + 248, 1024, "",spep_0 + 352, 0, 42, -1);
SE015 = playSeVer2( spep_0 + 256, 1017, "",spep_0 + 284, 0, 8, -1);
SE016 = playSeVer2( spep_0 + 266, 1025, "",spep_0 + 306, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 266, SE016, 60 );
SE017 = playSeVer2( spep_0 + 278, 1014, "",spep_0 + 316, 0, 16, -1);

--敵起き上がる
SE018 = playSeVer2( spep_0 + 304, 1012, "",spep_0 + 366, 0, 10, -1);

--スイッチ置く
SE020 = playSeVer2( spep_0 + 402, 27, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE020, 178 );
SE021 = playSeVer2( spep_0 + 402, 21, "",spep_0 + 422, 0, 8, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);


-------------------------------------------------
-- 街中で銃撃～街を爆発（318F）
-------------------------------------------------

MAX_FRAME_1 = 318;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, -1.0, 1.0);
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

-- ** 敵キャラクター ** -- (敵側エフェクト：あり)
setDisp( spep_1 + 90 + OFFSET_X, 1, 1);
setDisp( spep_1 + 178 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 90 + OFFSET_X, 1, 117 );
changeAnime( spep_1 + 120 + OFFSET_X, 1, 104 );

setMoveKey( spep_1 + 90 + OFFSET_X, 1, -14.5, 20 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, -14.5, 20 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 38.4, -15 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 38.4, -15 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, -8.6, 4.5 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, -8.6, 4.5 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 30.1, -42.3 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 30.1, -42.3 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 16.7, 17.7 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 16.7, 17.7 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, -14.7, -31.8 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, -14.7, -31.8 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 23.9, 15 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 23.9, 15 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, -3.4, 3.2 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, -3.4, 3.2 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 33.1, -30.3 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 33.1, -30.3 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, -9.2, 8.7 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, -9.2, 8.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, -14.3, -30.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, -14.3, -30.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 18.5, 8.7 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 18.5, 8.7 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 4.2, -18.3 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 4.2, -18.3 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 18.1, 2.1 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 18.1, 2.1 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 1.9, 3.7 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 1.9, 3.7 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 20.1, 13.6 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 20.1, 13.6 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, -8.5, 29.1 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, -8.5, 29.1 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 30.1, -17.6 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 30.1, -17.6 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 16.8, 42.4 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 16.8, 42.4 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, -14.6, -7.1 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, -14.6, -7.1 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 23.9, 39.7 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 23.9, 39.7 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, -3.3, 27.8 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, -3.3, 27.8 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 33.1, -5.6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 33.1, -5.6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, -9.1, 33.4 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, -9.1, 33.4 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, -14.3, -5.6 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, -14.3, -5.6 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 18.6, 49 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 18.6, 49 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 24.7, 14.1 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 24.7, 14.1 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, -6.6, 1.9 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, -6.6, 1.9 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 13.1, 30.3 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 13.1, 30.3 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 7.4, 18.1 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 7.4, 18.1 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 12.9, 12.9 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 12.9, 12.9 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 3.4, 16.1 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 3.4, 16.1 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 15.9, 15.8 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 15.9, 15.8 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 20, 5.9 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 20, 5.9 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 1.1, 25.6 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 1.1, 25.6 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 46.2, 25.3 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 46.2, 25.3 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, -20.9, -6.1 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, -20.9, -6.1 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 10, 47.5 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_X, 1, 10, 47.5 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, -28, -8.1 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, -28, -8.1 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, -10.4, 48.5 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_X, 1, -10.4, 48.5 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 40.1, -4.1 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 40.1, -4.1 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, -17.8, 44.3 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_X, 1, -17.8, 44.3 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 20.8, -17.3 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_X, 1, 20.8, -17.3 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, -2.5, 57.3 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_X, 1, -2.5, 57.3 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 37.4, -21.5 , 0 );

setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_1 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--土煙
SE023 = playSeVer2( spep_1 + 0, 1226, "", 0, 0, 0, -1);

--銃撃音
SE024 = playSeVer2( spep_1 + 16, 1028, "",spep_1 + 54, 0, 20, -1);
SE025 = playSeVer2( spep_1 + 26, 1028, "",spep_1 + 62, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 26, SE025, 79 );
SE026 = playSeVer2( spep_1 + 26, 1030, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 46, 1028, "",spep_1 + 84, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 46, SE027, 69 );
SE028 = playSeVer2( spep_1 + 54, 1030, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 66, 1028, "",spep_1 + 104, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 66, SE029, 82 );
SE030 = playSeVer2( spep_1 + 76, 1030, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 86, 1030, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_1 + 96, 1028, "",spep_1 + 134, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 96, SE032, 80 );
SE033 = playSeVer2( spep_1 + 106, 1030, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 106, SE033, 85 );
SE034 = playSeVer2( spep_1 + 116, 1028, "",spep_1 + 152, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 116, SE034, 93 );
SE035 = playSeVer2( spep_1 + 122, 1028, "",spep_1 + 160, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 122, SE035, 79 );
SE036 = playSeVer2( spep_1 + 128, 1030, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 128, SE036, 79 );

--ビル倒れる
SE037 = playSeVer2( spep_1 + 130, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 130, SE037, 68 );
SE038 = playSeVer2( spep_1 + 130, 1033, "", 0, 0, 0, -1);

----地響き音
SE039 = playSeVer2( spep_1 + 146, 1044, "", 0, 0, 0, -1);

----ビル倒れる
SE040 = playSeVer2( spep_1 + 148, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 148, SE040, 75 );
SE041 = playSeVer2( spep_1 + 160, 1024, "", 0, 0, 0, -1);

----爆発
SE042 = playSeVer2( spep_1 + 224, 1159, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 238, 1068, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 212); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム

end
