-- 4028030: LR_超サイヤ人ブロリー(フルパワー)_超必殺技：ギガンティックカタストロフィ
-- sp_effect_a1_00418
-- sp2658

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- エフェクト(共通)
SP_001 = 162576; -- ef_001 ef_001bとセット。敵の手前に配置。
SP_003 = 162578; -- ef_002 ef_002bとセット。敵の手前に配置。

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ブロリー気溜め〜敵を殴り飛ばす ef_001
------------------------------------------------------
MAX_FRAME_0 = 696;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -80, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 246 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 266 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 246 + OFFSET_X , 1, 100 );

setMoveKey( spep_0 + 246 + OFFSET_X , 1, 389.4, -133.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, 389.4, -133.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, 384.2, -106.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, 384.2, -106.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, 378.6, -106.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, 378.6, -106.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, 367.5, -88.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X , 1, 367.5, -88.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X , 1, 310.6, -59.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X , 1, 310.6, -59.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X , 1, 290.2, -69.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X , 1, 290.2, -69.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X , 1, 260.7, -73.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X , 1, 260.7, -73.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X , 1, 250, -74.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X , 1, 250, -74.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X , 1, 245.4, -75.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X , 1, 245.4, -75.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X , 1, 243.4, -74.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X , 1, 243.4, -74.2 , 0 );

setScaleKey( spep_0 + 246 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 247 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 248 + OFFSET_X , 1, 0.26, 0.26 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 0.26, 0.26 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 251 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 253 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 254 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 255 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 256 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 257 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 258 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 259 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 260 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 261 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 262 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_0 + 263 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_0 + 264 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 266 + OFFSET_X , 1, 0.75, 0.75 );

setRotateKey( spep_0 + 246 + OFFSET_X , 1, -20 );
setRotateKey( spep_0 + 247 + OFFSET_X , 1, -20 );
setRotateKey( spep_0 + 248 + OFFSET_X , 1, -19.8 );
setRotateKey( spep_0 + 249 + OFFSET_X , 1, -19.8 );
setRotateKey( spep_0 + 250 + OFFSET_X , 1, -19.3 );
setRotateKey( spep_0 + 251 + OFFSET_X , 1, -19.3 );
setRotateKey( spep_0 + 252 + OFFSET_X , 1, -18.3 );
setRotateKey( spep_0 + 253 + OFFSET_X , 1, -18.3 );
setRotateKey( spep_0 + 254 + OFFSET_X , 1, -16.3 );
setRotateKey( spep_0 + 255 + OFFSET_X , 1, -16.3 );
setRotateKey( spep_0 + 256 + OFFSET_X , 1, -13.4 );
setRotateKey( spep_0 + 257 + OFFSET_X , 1, -13.4 );
setRotateKey( spep_0 + 258 + OFFSET_X , 1, -11.5 );
setRotateKey( spep_0 + 259 + OFFSET_X , 1, -11.5 );
setRotateKey( spep_0 + 260 + OFFSET_X , 1, -10.5 );
setRotateKey( spep_0 + 261 + OFFSET_X , 1, -10.5 );
setRotateKey( spep_0 + 262 + OFFSET_X , 1, -10.1 );
setRotateKey( spep_0 + 263 + OFFSET_X , 1, -10.1 );
setRotateKey( spep_0 + 264 + OFFSET_X , 1, -10 );
setRotateKey( spep_0 + 266 + OFFSET_X , 1, -10 );

-- 敵の動き2
setDisp( spep_0 + 316 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 396 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 316 + OFFSET_X , 1, 104 );
changeAnime( spep_0 + 320 + OFFSET_X , 1, 108 );
changeAnime( spep_0 + 346 + OFFSET_X , 1, 107 );

setMoveKey( spep_0 + 316 + OFFSET_X , 1, 164.1, -36 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X , 1, 164.1, -36 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X , 1, 100.1, 38 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X , 1, 100.1, 38 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X , 1, 314.6, -91.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X , 1, 314.6, -91.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X , 1, 314.6, -39 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X , 1, 314.6, -39 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X , 1, 322.2, -84 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X , 1, 322.2, -84 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X , 1, 347.7, -81.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X , 1, 347.7, -81.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X , 1, 359.7, -76.2 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X , 1, 359.7, -76.2 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X , 1, 364.6, -86.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X , 1, 364.6, -86.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X , 1, 347.2, -97.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X , 1, 347.2, -97.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X , 1, 341.8, -85.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X , 1, 341.8, -85.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X , 1, 354.5, -96.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X , 1, 354.5, -96.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X , 1, 369.3, -101.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X , 1, 369.3, -101.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X , 1, 115.8, -12 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X , 1, 115.8, -12 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X , 1, 125.7, -5.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X , 1, 125.7, -5.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X , 1, 124.5, -2.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X , 1, 124.5, -2.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X , 1, 127.2, -0.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X , 1, 127.2, -0.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X , 1, 129.3, 0.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X , 1, 129.3, 0.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X , 1, 135, -0.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X , 1, 135, -0.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X , 1, 136.5, 0.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X , 1, 136.5, 0.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X , 1, 139.6, 0.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X , 1, 139.6, 0.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X , 1, 142.4, 1.4 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X , 1, 142.4, 1.4 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X , 1, 143.3, 2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X , 1, 143.3, 2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X , 1, 145.7, 4.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X , 1, 145.7, 4.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X , 1, 146.8, 7.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X , 1, 146.8, 7.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X , 1, 144.8, 9.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X , 1, 144.8, 9.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X , 1, 145.4, 9.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X , 1, 145.4, 9.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X , 1, 143.3, 10.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X , 1, 143.3, 10.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X , 1, 142.4, 10.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X , 1, 142.4, 10.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X , 1, 143.8, 11 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X , 1, 143.8, 11 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X , 1, 144.1, 11.2 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X , 1, 144.1, 11.2 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X , 1, 142.9, 9.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X , 1, 142.9, 9.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X , 1, 144.9, 7.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X , 1, 144.9, 7.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X , 1, 146.5, 5.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X , 1, 146.5, 5.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X , 1, 148.6, 4.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X , 1, 148.6, 4.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X , 1, 148.9, 2.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X , 1, 148.9, 2.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X , 1, 145.6, 3.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X , 1, 145.6, 3.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X , 1, 145.5, 3.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X , 1, 145.5, 3.3 , 0 );

setScaleKey( spep_0 + 316 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_0 + 323 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_0 + 324 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 329 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 330 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_0 + 347 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_0 + 348 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_0 + 349 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_0 + 350 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_0 + 351 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_0 + 352 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 355 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 356 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_0 + 359 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_0 + 360 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_0 + 365 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_0 + 366 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_0 + 377 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_0 + 378 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 396 + OFFSET_X , 1, 1, 1 );

setRotateKey( spep_0 + 316 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 396 + OFFSET_X , 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 446 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 454 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 446 + OFFSET_X , 1, 7 );

setMoveKey( spep_0 + 446 + OFFSET_X , 1, 76, 45.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X , 1, 76, 45.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X , 1, 33.8, 111.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, 33.8, 111.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, 3.9, 116 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X , 1, 3.9, 116 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X , 1, -21.1, 163 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, -21.1, 163 , 0 );

setScaleKey( spep_0 + 446 + OFFSET_X , 1, 4.5, 4.5 );
setScaleKey( spep_0 + 447 + OFFSET_X , 1, 4.5, 4.5 );
setScaleKey( spep_0 + 448 + OFFSET_X , 1, 3, 3 );
setScaleKey( spep_0 + 449 + OFFSET_X , 1, 3, 3 );
setScaleKey( spep_0 + 450 + OFFSET_X , 1, 2.8, 2.8 );
setScaleKey( spep_0 + 454 + OFFSET_X , 1, 2.8, 2.8 );

setRotateKey( spep_0 + 446 + OFFSET_X , 1, 60 );
setRotateKey( spep_0 + 447 + OFFSET_X , 1, 60 );
setRotateKey( spep_0 + 448 + OFFSET_X , 1, 80 );
setRotateKey( spep_0 + 449 + OFFSET_X , 1, 80 );
setRotateKey( spep_0 + 450 + OFFSET_X , 1, 90 );
setRotateKey( spep_0 + 454 + OFFSET_X , 1, 90 );

-- 敵の動き4
setDisp( spep_0 + 492 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 534 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 492 + OFFSET_X , 1, 108 );

setMoveKey( spep_0 + 492 + OFFSET_X , 1, -147.9, -203.9 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X , 1, -147.9, -203.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X , 1, -151.9, -221.9 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X , 1, -151.9, -221.9 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X , 1, 128.1, 58.3 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X , 1, 128.1, 58.3 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X , 1, 138.9, 62.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X , 1, 138.9, 62.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X , 1, 220.8, 156 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X , 1, 220.8, 156 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X , 1, 230.9, 166 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X , 1, 230.9, 166 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X , 1, 238.5, 171.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X , 1, 238.5, 171.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X , 1, 252, 184.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X , 1, 252, 184.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X , 1, 252, 165.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X , 1, 252, 165.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X , 1, 254.5, 165 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X , 1, 254.5, 165 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X , 1, 256.2, 169.7 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X , 1, 256.2, 169.7 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X , 1, 257.5, 174 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X , 1, 257.5, 174 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X , 1, 268.3, 187.9 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X , 1, 268.3, 187.9 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X , 1, 266.9, 186.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X , 1, 266.9, 186.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X , 1, 267.2, 186.8 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X , 1, 267.2, 186.8 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X , 1, 268.7, 189.5 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X , 1, 268.7, 189.5 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X , 1, 268.7, 191.5 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X , 1, 268.7, 191.5 , 0 );

setScaleKey( spep_0 + 492 + OFFSET_X , 1, 3, 3 );
setScaleKey( spep_0 + 495 + OFFSET_X , 1, 3, 3 );
setScaleKey( spep_0 + 496 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_0 + 499 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_0 + 500 + OFFSET_X , 1, 0.38, 0.38 );
setScaleKey( spep_0 + 505 + OFFSET_X , 1, 0.38, 0.38 );
setScaleKey( spep_0 + 506 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_0 + 507 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_0 + 508 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 509 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 510 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_0 + 515 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_0 + 516 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 517 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 518 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 519 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 520 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 521 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 522 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 527 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 528 + OFFSET_X , 1, 0.1, 0.1 );
setScaleKey( spep_0 + 534 + OFFSET_X , 1, 0.1, 0.1 );

setRotateKey( spep_0 + 492 + OFFSET_X , 1, -15 );
setRotateKey( spep_0 + 534 + OFFSET_X , 1, -15 );

-- 敵の動き5
setDisp( spep_0 + 556 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 562 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 556 + OFFSET_X , 1, 107 );

setMoveKey( spep_0 + 556 + OFFSET_X , 1, -270.9, 93 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X , 1, -270.9, 93 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X , 1, -70.7, -47 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X , 1, -70.7, -47 , 0 );

setScaleKey( spep_0 + 556 + OFFSET_X , 1, 4, 4 );
setScaleKey( spep_0 + 562 + OFFSET_X , 1, 4, 4 );

setRotateKey( spep_0 + 556 + OFFSET_X , 1, -35 );
setRotateKey( spep_0 + 557 + OFFSET_X , 1, -35 );
setRotateKey( spep_0 + 558 + OFFSET_X , 1, -30 );
setRotateKey( spep_0 + 562 + OFFSET_X , 1, -30 );

-- 敵の動き6
setDisp( spep_0 + 576 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 586 + OFFSET_X , 1, 0 );

setMoveKey( spep_0 + 576 + OFFSET_X , 1, -59.1, 17.2 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X , 1, -59.1, 17.2 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X , 1, -114.2, 26.6 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X , 1, -114.2, 26.6 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X , 1, -117.1, 38.1 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X , 1, -117.1, 38.1 , 0 );

setScaleKey( spep_0 + 576 + OFFSET_X , 1, 4, 4 );
setScaleKey( spep_0 + 586 + OFFSET_X , 1, 4, 4 );

setRotateKey( spep_0 + 576 + OFFSET_X , 1, -25 );
setRotateKey( spep_0 + 579 + OFFSET_X , 1, -25 );
setRotateKey( spep_0 + 580 + OFFSET_X , 1, -35 );
setRotateKey( spep_0 + 586 + OFFSET_X , 1, -35 );

-- 敵の動き7
setDisp( spep_0 + 652 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 698 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 652 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 654 + OFFSET_X , 1, 5 );

setMoveKey( spep_0 + 652 + OFFSET_X , 1, 93.3, -158 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X , 1, 93.3, -158 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X , 1, 132.3, -29.1 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X , 1, 132.3, -29.1 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X , 1, 2.2, -80.9 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X , 1, 2.2, -80.9 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X , 1, 3.2, 48 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X , 1, 3.2, 48 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X , 1, -26.8, 38 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X , 1, -26.8, 38 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X , 1, -10.9, 25.9 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X , 1, -10.9, 25.9 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X , 1, 5.9, 35.7 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X , 1, 5.9, 35.7 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X , 1, -5.1, 36.7 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X , 1, -5.1, 36.7 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X , 1, -5.1, 30 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X , 1, -5.1, 30 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X , 1, 4.9, 39.2 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X , 1, 4.9, 39.2 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X , 1, 4.9, 38.3 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X , 1, 4.9, 38.3 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X , 1, -5.1, 47.5 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X , 1, -5.1, 47.5 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X , 1, -5, 46.6 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X , 1, -5, 46.6 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X , 1, -5, 45.8 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X , 1, -5, 45.8 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X , 1, 5, 34.9 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X , 1, 5, 34.9 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X , 1, 5, 34.1 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X , 1, 5, 34.1 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X , 1, 5, 33.2 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X , 1, 5, 33.2 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X , 1, 0, 22.4 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X , 1, 0, 22.4 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X , 1, 0, 31.5 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X , 1, 0, 31.5 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X , 1, 0, 30.7 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X , 1, 0, 30.7 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X , 1, 10.1, 19.8 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X , 1, 10.1, 19.8 , 0 );

setScaleKey( spep_0 + 652 + OFFSET_X , 1, 5, 5 );
setScaleKey( spep_0 + 655 + OFFSET_X , 1, 5, 5 );
setScaleKey( spep_0 + 656 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 657 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 658 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_0 + 663 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_0 + 664 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 667 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 668 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_0 + 671 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_0 + 672 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 673 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 674 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 675 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 676 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 679 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 680 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 681 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 682 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 683 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 684 + OFFSET_X , 1, 0.1, 0.1 );
setScaleKey( spep_0 + 685 + OFFSET_X , 1, 0.1, 0.1 );
setScaleKey( spep_0 + 686 + OFFSET_X , 1, 0.09, 0.09 );
setScaleKey( spep_0 + 687 + OFFSET_X , 1, 0.09, 0.09 );
setScaleKey( spep_0 + 688 + OFFSET_X , 1, 0.08, 0.08 );
setScaleKey( spep_0 + 691 + OFFSET_X , 1, 0.08, 0.08 );
setScaleKey( spep_0 + 692 + OFFSET_X , 1, 0.07, 0.07 );
setScaleKey( spep_0 + 693 + OFFSET_X , 1, 0.07, 0.07 );
setScaleKey( spep_0 + 694 + OFFSET_X , 1, 0.06, 0.06 );
setScaleKey( spep_0 + 695 + OFFSET_X , 1, 0.06, 0.06 );
setScaleKey( spep_0 + 696 + OFFSET_X , 1, 0.05, 0.05 );
setScaleKey( spep_0 + 698 + OFFSET_X , 1, 0.05, 0.05 );

setRotateKey( spep_0 + 652 + OFFSET_X , 1, -70 );
setRotateKey( spep_0 + 653 + OFFSET_X , 1, -70 );
setRotateKey( spep_0 + 654 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 655 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 656 + OFFSET_X , 1, 10 );
setRotateKey( spep_0 + 698 + OFFSET_X , 1, 10 );

-- ** 音 ** --
--オーラベース
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 146, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 146, 0, 36, -1);
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 150, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
setPitch( spep_0 + 0, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
--オーラ
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 40 );
setPitch( spep_0 + 0, SE004, -200 );
setTimeStretch( SE004, 0.87, 30, 4 );
SE005 = playSeVer2( spep_0 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE005, 40 );
setPitch( spep_0 + 12, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE007 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE007, 40 );
setPitch( spep_0 + 18, SE007, -200 );
setTimeStretch( SE007, 0.87, 30, 4 );
SE008 = playSeVer2( spep_0 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE008, 40 );
setPitch( spep_0 + 30, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );
SE009 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE009, 40 );
setPitch( spep_0 + 42, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_0 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE010, 40 );
setPitch( spep_0 + 54, SE010, -200 );
setTimeStretch( SE010, 0.87, 30, 4 );
SE011 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE011, 40 );
setPitch( spep_0 + 66, SE011, -200 );
setTimeStretch( SE011, 0.87, 30, 4 );
SE012 = playSeVer2( spep_0 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE012, 40 );
setPitch( spep_0 + 78, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE013, 40 );
setPitch( spep_0 + 90, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );
SE014 = playSeVer2( spep_0 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE014, 40 );
setPitch( spep_0 + 102, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );
SE018 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE018, 40 );
setPitch( spep_0 + 114, SE018, -200 );
setTimeStretch( SE018, 0.87, 30, 4 );
--構える
SE015 = playSeVer2( spep_0 + 116, 1427, "",spep_0 + 236, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 116, SE015, 54 );
SE016 = playSeVer2( spep_0 + 116, 1116, "",spep_0 + 156, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 116, SE016, 78 );
SE017 = playSeVer2( spep_0 + 116, 1153, "", 0, 20, 0, -1);
setStartTimeMs( SE017,  100 );
setSeVolumeByWorkId( spep_0 + 116, SE017, 67 );
--向かっていく
SE019 = playSeVer2( spep_0 + 174, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 176, 9, "",spep_0 + 252, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 176, SE020, 71 );
SE021 = playSeVer2( spep_0 + 182, 1277, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 182, 1121, "",spep_0 + 348, 0, 52, -1);
setPitch( spep_0 + 182, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );
--振りかぶる
SE023 = playSeVer2( spep_0 + 264, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 264, SE023, -400 );
setTimeStretch( SE023, 0.73, 30, 4 );
SE024 = playSeVer2( spep_0 + 270, 1395, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE024, 69 );
setStartTimeMs( SE024,  100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 300; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);

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
--気弾溜め
SE025 = playSeVer2( spep_0 + 384, 1204, "",spep_0 + 466, 10, 12, -1);
setSeVolumeByWorkId( spep_0 + 384, SE025, 158 );
setStartTimeMs( SE025,  1900 );
SE026 = playSeVer2( spep_0 + 350, 1442, "",spep_0 + 428, 2, 20, -1);
setSeVolumeByWorkId( spep_0 + 350, SE026, 224 );
setStartTimeMs( SE026,  833 );
SE029 = playSeVer2( spep_0 + 348, 1116, "",spep_0 + 470, 0, 10, -1);
SE030 = playSeVer2( spep_0 + 348, 1443, "",spep_0 + 470, 0, 12, 0.65);
setSeVolumeByWorkId( spep_0 + 348, SE030, 158 );
SE031 = playSeVer2( spep_0 + 386, 1334, "",spep_0 + 468, 0, 10, -1);
setPitch( spep_0 + 386, SE031, 400 );
setTimeStretch( SE031, 1.27, 30, 4 );
--蹴り
SE027 = playSeVer2( spep_0 + 312, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 312, 1359, "", 0, 0, 0, -1);
--気弾ヒット
SE032 = playSeVer2( spep_0 + 442, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE032, 83 );
SE033 = playSeVer2( spep_0 + 442, 1145, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 442, 1312, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 454, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE035, 61 );
setPitch( spep_0 + 454, SE035, -1000 );
setTimeStretch( SE035, 0.33, 30, 4 );
--敵吹き飛ぶ
SE036 = playSeVer2( spep_0 + 486, 1027, "", 0, 0, 0, -1);
--敵追いかける
SE037 = playSeVer2( spep_0 + 510, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 518, 1277, "", 0, 0, 0, -1);
--パンチ
SE039 = playSeVer2( spep_0 + 544, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE039, 150 );
SE040 = playSeVer2( spep_0 + 552, 1187, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 552, 1359, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 552, 1153, "", 0, 0, 0, -1);
--振りかぶる
SE043 = playSeVer2( spep_0 + 602, 1182, "",spep_0 + 668, 6, 24, -1);
setStartTimeMs( SE043,  167 );
SE044 = playSeVer2( spep_0 + 602, 1116, "",spep_0 + 654, 0, 20, -1);
--殴り飛ばす
SE045 = playSeVer2( spep_0 + 640, 1359, "",spep_0 + 706, 0, 16, -1);
SE046 = playSeVer2( spep_0 + 640, 1121, "",spep_0 + 706, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 642, SE046, 50 );
SE047 = playSeVer2( spep_0 + 642, 1120, "",spep_0 + 706, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 696

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0) + 4;

-- ** 音 ** --
--気弾発射前溜め
SE048 = playSeVer2( spep_1 + 92, 1204, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE048, 119 );
setStartTimeMs( SE048,  2100 );

entryFade(spep_1 + 92, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 気溜め〜異次元が割れる ef_002
------------------------------------------------------
MAX_FRAME_2 = 448;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 220 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 220 + OFFSET_X , 1, 106 );
changeAnime( spep_2 + 258 + OFFSET_X , 1, 108 );

setMoveKey( spep_2 + 220 + OFFSET_X , 1, 143.8, 30.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, 143.8, 30.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, 112.8, -14.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, 112.8, -14.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, 111.8, -14.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, 111.8, -14.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, 108.6, -14 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, 108.6, -14 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, 103.3, -13.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 103.3, -13.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 95.8, -13.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, 95.8, -13.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, 86.2, -12.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, 86.2, -12.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, 76.6, -12.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, 76.6, -12.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, 69.1, -12.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, 69.1, -12.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, 63.7, -11.8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, 63.7, -11.8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, 60.5, -11.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, 60.5, -11.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, 59.5, -11.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, 59.5, -11.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, 59.4, -11.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, 59.4, -11.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, 59.4, -11.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, 59.4, -11.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, 59.3, -11.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, 59.3, -11.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, 62.3, -34.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X , 1, 62.3, -34.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, 67.2, -33.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X , 1, 67.2, -33.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X , 1, 32, 48.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X , 1, 32, 48.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X , 1, 56.6, -10.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, 56.6, -10.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, 60.9, 10.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, 60.9, 10.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, 85.1, -8.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, 85.1, -8.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, 92.3, -2.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X , 1, 92.3, -2.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X , 1, 96.1, -1.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, 96.1, -1.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, 78.7, -26.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X , 1, 78.7, -26.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X , 1, 92, 4.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X , 1, 92, 4.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, 100.7, 17.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X , 1, 100.7, 17.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X , 1, 106.4, -3.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X , 1, 106.4, -3.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X , 1, 112.4, 2.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X , 1, 112.4, 2.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X , 1, 115.1, 3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X , 1, 115.1, 3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X , 1, 96.6, -21.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X , 1, 96.6, -21.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X , 1, 108.8, 8.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X , 1, 108.8, 8.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X , 1, 116.4, 21.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X , 1, 116.4, 21.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X , 1, 120.9, 0.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X , 1, 120.9, 0.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X , 1, 125.8, 5.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X , 1, 125.8, 5.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X , 1, 127.4, 6 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X , 1, 127.4, 6 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X , 1, 107.8, -18.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X , 1, 107.8, -18.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X , 1, 118.9, 11.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X , 1, 118.9, 11.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X , 1, 125.3, 24 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X , 1, 125.3, 24 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X , 1, 128.8, 2.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X , 1, 128.8, 2.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X , 1, 132.6, 7.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X , 1, 132.6, 7.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X , 1, 133, 7.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X , 1, 133, 7.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X , 1, 112.3, -17.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X , 1, 112.3, -17.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X , 1, 122.2, 12.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X , 1, 122.2, 12.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X , 1, 127.6, 24.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X , 1, 127.6, 24.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X , 1, 110.2, 22.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X , 1, 110.2, 22.7 , 0 );

setScaleKey( spep_2 + 220 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_2 + 227 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_2 + 228 + OFFSET_X , 1, 0.27, 0.27 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 0.27, 0.27 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_2 + 231 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_2 + 232 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_2 + 239 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_2 + 240 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 241 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 243 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 244 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 245 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 247 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 248 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 249 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 250 + OFFSET_X , 1, 1.05, 1.05 );
setScaleKey( spep_2 + 251 + OFFSET_X , 1, 1.05, 1.05 );
setScaleKey( spep_2 + 252 + OFFSET_X , 1, 1.11, 1.11 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 1.11, 1.11 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 1.19, 1.19 );
setScaleKey( spep_2 + 255 + OFFSET_X , 1, 1.19, 1.19 );
setScaleKey( spep_2 + 256 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 257 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 258 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_2 + 318 + OFFSET_X , 1, 1.5, 1.5 );

setRotateKey( spep_2 + 220 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 221 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 222 + OFFSET_X , 1, -0.1 );
setRotateKey( spep_2 + 227 + OFFSET_X , 1, -0.1 );
setRotateKey( spep_2 + 228 + OFFSET_X , 1, -0.4 );
setRotateKey( spep_2 + 229 + OFFSET_X , 1, -0.4 );
setRotateKey( spep_2 + 230 + OFFSET_X , 1, -1.4 );
setRotateKey( spep_2 + 231 + OFFSET_X , 1, -1.4 );
setRotateKey( spep_2 + 232 + OFFSET_X , 1, -3.1 );
setRotateKey( spep_2 + 233 + OFFSET_X , 1, -3.1 );
setRotateKey( spep_2 + 234 + OFFSET_X , 1, -5.5 );
setRotateKey( spep_2 + 235 + OFFSET_X , 1, -5.5 );
setRotateKey( spep_2 + 236 + OFFSET_X , 1, -8.5 );
setRotateKey( spep_2 + 237 + OFFSET_X , 1, -8.5 );
setRotateKey( spep_2 + 238 + OFFSET_X , 1, -11.6 );
setRotateKey( spep_2 + 239 + OFFSET_X , 1, -11.6 );
setRotateKey( spep_2 + 240 + OFFSET_X , 1, -14 );
setRotateKey( spep_2 + 241 + OFFSET_X , 1, -14 );
setRotateKey( spep_2 + 242 + OFFSET_X , 1, -15.6 );
setRotateKey( spep_2 + 243 + OFFSET_X , 1, -15.6 );
setRotateKey( spep_2 + 244 + OFFSET_X , 1, -16.7 );
setRotateKey( spep_2 + 245 + OFFSET_X , 1, -16.7 );
setRotateKey( spep_2 + 246 + OFFSET_X , 1, -17 );
setRotateKey( spep_2 + 257 + OFFSET_X , 1, -17 );
setRotateKey( spep_2 + 258 + OFFSET_X , 1, -12 );
setRotateKey( spep_2 + 318 + OFFSET_X , 1, -12 );

setBlendColor( spep_2 + 248 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.1 );
setBlendColor( spep_2 + 250 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.2 );
setBlendColor( spep_2 + 252 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.3 );
setBlendColor( spep_2 + 254 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.5 );
setBlendColor( spep_2 + 256 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.7 );
setBlendColor( spep_2 + 280 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.8 );
setBlendColor( spep_2 + 282 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.82 );
setBlendColor( spep_2 + 284 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.84 );
setBlendColor( spep_2 + 286 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.86 );
setBlendColor( spep_2 + 288 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.88 );
setBlendColor( spep_2 + 290 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.90 );
setBlendColor( spep_2 + 292 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.92 );
setBlendColor( spep_2 + 294 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.94 );
setBlendColor( spep_2 + 296 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.96 );
setBlendColor( spep_2 + 298 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.98 );
setBlendColor( spep_2 + 300 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 1.0 );
setBlendColor( spep_2 + 318 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾発射前溜め
SE050 = playSeVer2( spep_2 + 32, 1442, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE050, 300);
setStartTimeMs( SE050,  667 );
SE051 = playSeVer2( spep_2 + 0, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE051, 88 );
SE052 = playSeVer2( spep_2 + 0, 1441, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE052, 159 );
SE053 = playSeVer2( spep_2 + 0, 1311, "", 0, 0, 0, -1);
--顔アップ
SE054 = playSeVer2( spep_2 + 40, 1072, "", 0, 0, 0, -1);
--振りかぶる
SE055 = playSeVer2( spep_2 + 94, 1116, "",spep_2 + 146, 0, 20, -1);
--気弾発射
SE056 = playSeVer2( spep_2 + 144, 1423, "",spep_2 + 338, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 144, SE056, 133 );
SE057 = playSeVer2( spep_2 + 144, 1213, "",spep_2 + 338, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 144, SE057, 58 );
SE058 = playSeVer2( spep_2 + 144, 1446, "",spep_2 + 340, 0, 18, -1);
SE059 = playSeVer2( spep_2 + 178, 1212, "", 0, 12, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 178, SE059, 71 );
setStartTimeMs( SE059,  567 );
--1227_SE108_破壊神ビルス_気弾が大きくなる音_フューフュー_16kHz.wav
SE060 = playSeVer2( spep_2 + 314, 1227, "", spep_2 + 314 + 200, 6, 100, -1);
setSeVolumeByWorkId( spep_2 + 314, SE060, 166 );
setStartTimeMs( SE060,  1533 );
--気弾ヒット
SE061 = playSeVer2( spep_2 + 250, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE061, 66 );
SE062 = playSeVer2( spep_2 + 256, 1021, "", 0, 0, 0, -1);
--次元弾ける
SE063 = playSeVer2( spep_2 + 314, 1414, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 314, 1187, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 314, 1409, "", spep_2 + 314 + 200, 0, 100, -1);
setSeVolumeByWorkId( spep_2 + 314, SE065, 136 );
SE066 = playSeVer2( spep_2 + 330, 1274, "", 0, 0, 0, -1);
--次元の破片飛んでく
SE067 = playSeVer2( spep_2 + 368, 1384, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE067, 76 );
setPitch( spep_2 + 368, SE067, 400 );
setTimeStretch( SE067, 1.27, 30, 4 );

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_2 + 340 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 448

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ブロリー気溜め〜敵を殴り飛ばす ef_001
------------------------------------------------------
MAX_FRAME_0 = 696;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 246 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 266 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 246 + OFFSET_X , 1, 0 );

setMoveKey( spep_0 + 246 + OFFSET_X , 1, -389.4, -133.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, -389.4, -133.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, -384.2, -106.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, -384.2, -106.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, -378.6, -106.7 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, -378.6, -106.7 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, -367.5, -88.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X , 1, -367.5, -88.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X , 1, -310.6, -59.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X , 1, -310.6, -59.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X , 1, -290.2, -69.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X , 1, -290.2, -69.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X , 1, -260.7, -73.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X , 1, -260.7, -73.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X , 1, -250, -74.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X , 1, -250, -74.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X , 1, -245.4, -75.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X , 1, -245.4, -75.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X , 1, -243.4, -74.2 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X , 1, -243.4, -74.2 , 0 );

setScaleKey( spep_0 + 246 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 247 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 248 + OFFSET_X , 1, 0.26, 0.26 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 0.26, 0.26 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 251 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 253 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 254 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 255 + OFFSET_X , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 256 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 257 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 258 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 259 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 260 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 261 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 262 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_0 + 263 + OFFSET_X , 1, 0.74, 0.74 );
setScaleKey( spep_0 + 264 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 266 + OFFSET_X , 1, 0.75, 0.75 );

setRotateKey( spep_0 + 246 + OFFSET_X , 1, 20 );
setRotateKey( spep_0 + 247 + OFFSET_X , 1, 20 );
setRotateKey( spep_0 + 248 + OFFSET_X , 1, 19.8 );
setRotateKey( spep_0 + 249 + OFFSET_X , 1, 19.8 );
setRotateKey( spep_0 + 250 + OFFSET_X , 1, 19.3 );
setRotateKey( spep_0 + 251 + OFFSET_X , 1, 19.3 );
setRotateKey( spep_0 + 252 + OFFSET_X , 1, 18.3 );
setRotateKey( spep_0 + 253 + OFFSET_X , 1, 18.3 );
setRotateKey( spep_0 + 254 + OFFSET_X , 1, 16.3 );
setRotateKey( spep_0 + 255 + OFFSET_X , 1, 16.3 );
setRotateKey( spep_0 + 256 + OFFSET_X , 1, 13.4 );
setRotateKey( spep_0 + 257 + OFFSET_X , 1, 13.4 );
setRotateKey( spep_0 + 258 + OFFSET_X , 1, 11.5 );
setRotateKey( spep_0 + 259 + OFFSET_X , 1, 11.5 );
setRotateKey( spep_0 + 260 + OFFSET_X , 1, 10.5 );
setRotateKey( spep_0 + 261 + OFFSET_X , 1, 10.5 );
setRotateKey( spep_0 + 262 + OFFSET_X , 1, 10.1 );
setRotateKey( spep_0 + 263 + OFFSET_X , 1, 10.1 );
setRotateKey( spep_0 + 264 + OFFSET_X , 1, 10 );
setRotateKey( spep_0 + 266 + OFFSET_X , 1, 10 );

-- 敵の動き2
setDisp( spep_0 + 316 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 396 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 316 + OFFSET_X , 1, 4 );
changeAnime( spep_0 + 320 + OFFSET_X , 1, 8 );
changeAnime( spep_0 + 346 + OFFSET_X , 1, 7 );

setMoveKey( spep_0 + 316 + OFFSET_X , 1, -164.1, -36 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X , 1, -164.1, -36 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X , 1, -100.1, 38 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X , 1, -100.1, 38 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X , 1, -314.6, -91.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X , 1, -314.6, -91.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X , 1, -314.6, -39 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X , 1, -314.6, -39 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X , 1, -322.2, -84 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X , 1, -322.2, -84 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X , 1, -347.7, -81.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X , 1, -347.7, -81.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X , 1, -359.7, -76.2 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X , 1, -359.7, -76.2 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X , 1, -364.6, -86.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X , 1, -364.6, -86.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X , 1, -347.2, -97.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X , 1, -347.2, -97.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X , 1, -341.8, -85.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X , 1, -341.8, -85.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X , 1, -354.5, -96.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X , 1, -354.5, -96.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X , 1, -369.3, -101.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X , 1, -369.3, -101.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X , 1, -115.8, -12 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X , 1, -115.8, -12 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X , 1, -125.7, -5.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X , 1, -125.7, -5.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X , 1, -124.5, -2.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X , 1, -124.5, -2.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X , 1, -127.2, -0.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X , 1, -127.2, -0.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X , 1, -129.3, 0.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X , 1, -129.3, 0.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X , 1, -135, -0.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X , 1, -135, -0.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X , 1, -136.5, 0.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X , 1, -136.5, 0.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X , 1, -139.6, 0.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X , 1, -139.6, 0.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X , 1, -142.4, 1.4 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X , 1, -142.4, 1.4 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X , 1, -143.3, 2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X , 1, -143.3, 2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X , 1, -145.7, 4.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X , 1, -145.7, 4.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X , 1, -146.8, 7.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X , 1, -146.8, 7.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X , 1, -144.8, 9.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X , 1, -144.8, 9.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X , 1, -145.4, 9.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X , 1, -145.4, 9.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X , 1, -143.3, 10.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X , 1, -143.3, 10.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X , 1, -142.4, 10.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X , 1, -142.4, 10.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X , 1, -143.8, 11 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X , 1, -143.8, 11 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X , 1, -144.1, 11.2 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X , 1, -144.1, 11.2 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X , 1, -142.9, 9.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X , 1, -142.9, 9.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X , 1, -144.9, 7.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X , 1, -144.9, 7.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X , 1, -146.5, 5.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X , 1, -146.5, 5.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X , 1, -148.6, 4.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X , 1, -148.6, 4.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X , 1, -148.9, 2.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X , 1, -148.9, 2.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X , 1, -145.6, 3.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X , 1, -145.6, 3.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X , 1, -145.5, 3.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X , 1, -145.5, 3.3 , 0 );

setScaleKey( spep_0 + 316 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_0 + 323 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_0 + 324 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 329 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 330 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_0 + 347 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_0 + 348 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_0 + 349 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_0 + 350 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_0 + 351 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_0 + 352 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 355 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_0 + 356 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_0 + 359 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_0 + 360 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_0 + 365 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_0 + 366 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_0 + 377 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_0 + 378 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 396 + OFFSET_X , 1, 1, 1 );

setRotateKey( spep_0 + 316 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 396 + OFFSET_X , 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 446 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 454 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 446 + OFFSET_X , 1, 107 );

setMoveKey( spep_0 + 446 + OFFSET_X , 1, -76, 45.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X , 1, -76, 45.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X , 1, -33.8, 111.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, -33.8, 111.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, -3.9, 116 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X , 1, -3.9, 116 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X , 1, 21.1, 163 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, 21.1, 163 , 0 );

setScaleKey( spep_0 + 446 + OFFSET_X , 1, 4.5, 4.5 );
setScaleKey( spep_0 + 447 + OFFSET_X , 1, 4.5, 4.5 );
setScaleKey( spep_0 + 448 + OFFSET_X , 1, 3, 3 );
setScaleKey( spep_0 + 449 + OFFSET_X , 1, 3, 3 );
setScaleKey( spep_0 + 450 + OFFSET_X , 1, 2.8, 2.8 );
setScaleKey( spep_0 + 454 + OFFSET_X , 1, 2.8, 2.8 );

setRotateKey( spep_0 + 446 + OFFSET_X , 1, -60 );
setRotateKey( spep_0 + 447 + OFFSET_X , 1, -60 );
setRotateKey( spep_0 + 448 + OFFSET_X , 1, -80 );
setRotateKey( spep_0 + 449 + OFFSET_X , 1, -80 );
setRotateKey( spep_0 + 450 + OFFSET_X , 1, -90 );
setRotateKey( spep_0 + 454 + OFFSET_X , 1, -90 );

-- 敵の動き4
setDisp( spep_0 + 492 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 534 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 492 + OFFSET_X , 1, 8 );

setMoveKey( spep_0 + 492 + OFFSET_X , 1, 147.9, -203.9 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X , 1, 147.9, -203.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X , 1, 151.9, -221.9 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X , 1, 151.9, -221.9 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X , 1, -128.1, 58.3 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X , 1, -128.1, 58.3 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X , 1, -138.9, 62.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X , 1, -138.9, 62.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X , 1, -220.8, 156 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X , 1, -220.8, 156 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X , 1, -230.9, 166 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X , 1, -230.9, 166 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X , 1, -238.5, 171.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X , 1, -238.5, 171.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X , 1, -252, 184.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X , 1, -252, 184.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X , 1, -252, 165.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X , 1, -252, 165.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X , 1, -254.5, 165 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X , 1, -254.5, 165 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X , 1, -256.2, 169.7 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X , 1, -256.2, 169.7 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X , 1, -257.5, 174 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X , 1, -257.5, 174 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X , 1, -268.3, 187.9 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X , 1, -268.3, 187.9 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X , 1, -266.9, 186.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X , 1, -266.9, 186.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X , 1, -267.2, 186.8 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X , 1, -267.2, 186.8 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X , 1, -268.7, 189.5 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X , 1, -268.7, 189.5 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X , 1, -268.7, 191.5 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X , 1, -268.7, 191.5 , 0 );

setScaleKey( spep_0 + 492 + OFFSET_X , 1, 3, 3 );
setScaleKey( spep_0 + 495 + OFFSET_X , 1, 3, 3 );
setScaleKey( spep_0 + 496 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_0 + 499 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_0 + 500 + OFFSET_X , 1, 0.38, 0.38 );
setScaleKey( spep_0 + 505 + OFFSET_X , 1, 0.38, 0.38 );
setScaleKey( spep_0 + 506 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_0 + 507 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_0 + 508 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 509 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 510 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_0 + 515 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_0 + 516 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 517 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 518 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 519 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 520 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 521 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 522 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 527 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 528 + OFFSET_X , 1, 0.1, 0.1 );
setScaleKey( spep_0 + 534 + OFFSET_X , 1, 0.1, 0.1 );

setRotateKey( spep_0 + 492 + OFFSET_X , 1, 15 );
setRotateKey( spep_0 + 534 + OFFSET_X , 1, 15 );

-- 敵の動き5
setDisp( spep_0 + 556 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 562 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 556 + OFFSET_X , 1, 7 );

setMoveKey( spep_0 + 556 + OFFSET_X , 1, 270.9, 93 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X , 1, 270.9, 93 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X , 1, 70.7, -47 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X , 1, 70.7, -47 , 0 );

setScaleKey( spep_0 + 556 + OFFSET_X , 1, 4, 4 );
setScaleKey( spep_0 + 562 + OFFSET_X , 1, 4, 4 );

setRotateKey( spep_0 + 556 + OFFSET_X , 1, 35 );
setRotateKey( spep_0 + 557 + OFFSET_X , 1, 35 );
setRotateKey( spep_0 + 558 + OFFSET_X , 1, 30 );
setRotateKey( spep_0 + 562 + OFFSET_X , 1, 30 );

-- 敵の動き6
setDisp( spep_0 + 576 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 586 + OFFSET_X , 1, 0 );

setMoveKey( spep_0 + 576 + OFFSET_X , 1, 59.1, 17.2 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X , 1, 59.1, 17.2 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X , 1, 114.2, 26.6 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X , 1, 114.2, 26.6 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X , 1, 117.1, 38.1 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X , 1, 117.1, 38.1 , 0 );

setScaleKey( spep_0 + 576 + OFFSET_X , 1, 4, 4 );
setScaleKey( spep_0 + 586 + OFFSET_X , 1, 4, 4 );

setRotateKey( spep_0 + 576 + OFFSET_X , 1, 25 );
setRotateKey( spep_0 + 579 + OFFSET_X , 1, 25 );
setRotateKey( spep_0 + 580 + OFFSET_X , 1, 35 );
setRotateKey( spep_0 + 586 + OFFSET_X , 1, 35 );

-- 敵の動き7
setDisp( spep_0 + 652 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 698 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 652 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 654 + OFFSET_X , 1, 105 );

setMoveKey( spep_0 + 652 + OFFSET_X , 1, -93.3, -158 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X , 1, -93.3, -158 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X , 1, -132.3, -29.1 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X , 1, -132.3, -29.1 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X , 1, -2.2, -80.9 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X , 1, -2.2, -80.9 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X , 1, -3.2, 48 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X , 1, -3.2, 48 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X , 1, 26.8, 38 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X , 1, 26.8, 38 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X , 1, 10.9, 25.9 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X , 1, 10.9, 25.9 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X , 1, -5.9, 35.7 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X , 1, -5.9, 35.7 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X , 1, 5.1, 36.7 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X , 1, 5.1, 36.7 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X , 1, 5.1, 30 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X , 1, 5.1, 30 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X , 1, -4.9, 39.2 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X , 1, -4.9, 39.2 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X , 1, -4.9, 38.3 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X , 1, -4.9, 38.3 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X , 1, 5.1, 47.5 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X , 1, 5.1, 47.5 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X , 1, 5, 46.6 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X , 1, 5, 46.6 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X , 1, 5, 45.8 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X , 1, 5, 45.8 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X , 1, -5, 34.9 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X , 1, -5, 34.9 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X , 1, -5, 34.1 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X , 1, -5, 34.1 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X , 1, -5, 33.2 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X , 1, -5, 33.2 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X , 1, 0, 22.4 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X , 1, 0, 22.4 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X , 1, 0, 31.5 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X , 1, 0, 31.5 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X , 1, 0, 30.7 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X , 1, 0, 30.7 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X , 1, -10.1, 19.8 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X , 1, -10.1, 19.8 , 0 );

setScaleKey( spep_0 + 652 + OFFSET_X , 1, 5, 5 );
setScaleKey( spep_0 + 655 + OFFSET_X , 1, 5, 5 );
setScaleKey( spep_0 + 656 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 657 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 658 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_0 + 663 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_0 + 664 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 667 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_0 + 668 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_0 + 671 + OFFSET_X , 1, 0.3, 0.3 );
setScaleKey( spep_0 + 672 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 673 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 674 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 675 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 676 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 679 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 680 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 681 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 682 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 683 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 684 + OFFSET_X , 1, 0.1, 0.1 );
setScaleKey( spep_0 + 685 + OFFSET_X , 1, 0.1, 0.1 );
setScaleKey( spep_0 + 686 + OFFSET_X , 1, 0.09, 0.09 );
setScaleKey( spep_0 + 687 + OFFSET_X , 1, 0.09, 0.09 );
setScaleKey( spep_0 + 688 + OFFSET_X , 1, 0.08, 0.08 );
setScaleKey( spep_0 + 691 + OFFSET_X , 1, 0.08, 0.08 );
setScaleKey( spep_0 + 692 + OFFSET_X , 1, 0.07, 0.07 );
setScaleKey( spep_0 + 693 + OFFSET_X , 1, 0.07, 0.07 );
setScaleKey( spep_0 + 694 + OFFSET_X , 1, 0.06, 0.06 );
setScaleKey( spep_0 + 695 + OFFSET_X , 1, 0.06, 0.06 );
setScaleKey( spep_0 + 696 + OFFSET_X , 1, 0.05, 0.05 );
setScaleKey( spep_0 + 698 + OFFSET_X , 1, 0.05, 0.05 );

setRotateKey( spep_0 + 652 + OFFSET_X , 1, 70 );
setRotateKey( spep_0 + 653 + OFFSET_X , 1, 70 );
setRotateKey( spep_0 + 654 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 655 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 656 + OFFSET_X , 1, -10 );
setRotateKey( spep_0 + 698 + OFFSET_X , 1, -10 );

-- ** 音 ** --
--オーラベース
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 146, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 146, 0, 36, -1);
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 150, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
setPitch( spep_0 + 0, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
--オーラ
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 40 );
setPitch( spep_0 + 0, SE004, -200 );
setTimeStretch( SE004, 0.87, 30, 4 );
SE005 = playSeVer2( spep_0 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE005, 40 );
setPitch( spep_0 + 12, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE007 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE007, 40 );
setPitch( spep_0 + 18, SE007, -200 );
setTimeStretch( SE007, 0.87, 30, 4 );
SE008 = playSeVer2( spep_0 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE008, 40 );
setPitch( spep_0 + 30, SE008, -200 );
setTimeStretch( SE008, 0.87, 30, 4 );
SE009 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE009, 40 );
setPitch( spep_0 + 42, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_0 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE010, 40 );
setPitch( spep_0 + 54, SE010, -200 );
setTimeStretch( SE010, 0.87, 30, 4 );
SE011 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE011, 40 );
setPitch( spep_0 + 66, SE011, -200 );
setTimeStretch( SE011, 0.87, 30, 4 );
SE012 = playSeVer2( spep_0 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE012, 40 );
setPitch( spep_0 + 78, SE012, -200 );
setTimeStretch( SE012, 0.87, 30, 4 );
SE013 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE013, 40 );
setPitch( spep_0 + 90, SE013, -200 );
setTimeStretch( SE013, 0.87, 30, 4 );
SE014 = playSeVer2( spep_0 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE014, 40 );
setPitch( spep_0 + 102, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );
SE018 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE018, 40 );
setPitch( spep_0 + 114, SE018, -200 );
setTimeStretch( SE018, 0.87, 30, 4 );
--構える
SE015 = playSeVer2( spep_0 + 116, 1427, "",spep_0 + 236, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 116, SE015, 54 );
SE016 = playSeVer2( spep_0 + 116, 1116, "",spep_0 + 156, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 116, SE016, 78 );
SE017 = playSeVer2( spep_0 + 116, 1153, "", 0, 20, 0, -1);
setStartTimeMs( SE017,  100 );
setSeVolumeByWorkId( spep_0 + 116, SE017, 67 );
--向かっていく
SE019 = playSeVer2( spep_0 + 174, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 176, 9, "",spep_0 + 252, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 176, SE020, 71 );
SE021 = playSeVer2( spep_0 + 182, 1277, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 182, 1121, "",spep_0 + 348, 0, 52, -1);
setPitch( spep_0 + 182, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );
--振りかぶる
SE023 = playSeVer2( spep_0 + 264, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 264, SE023, -400 );
setTimeStretch( SE023, 0.73, 30, 4 );
SE024 = playSeVer2( spep_0 + 270, 1395, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE024, 69 );
setStartTimeMs( SE024,  100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 300; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);

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
--気弾溜め
SE025 = playSeVer2( spep_0 + 384, 1204, "",spep_0 + 466, 10, 12, -1);
setSeVolumeByWorkId( spep_0 + 384, SE025, 158 );
setStartTimeMs( SE025,  1900 );
SE026 = playSeVer2( spep_0 + 350, 1442, "",spep_0 + 428, 2, 20, -1);
setSeVolumeByWorkId( spep_0 + 350, SE026, 224 );
setStartTimeMs( SE026,  833 );
SE029 = playSeVer2( spep_0 + 348, 1116, "",spep_0 + 470, 0, 10, -1);
SE030 = playSeVer2( spep_0 + 348, 1443, "",spep_0 + 470, 0, 12, 0.65);
setSeVolumeByWorkId( spep_0 + 348, SE030, 158 );
SE031 = playSeVer2( spep_0 + 386, 1334, "",spep_0 + 468, 0, 10, -1);
setPitch( spep_0 + 386, SE031, 400 );
setTimeStretch( SE031, 1.27, 30, 4 );
--蹴り
SE027 = playSeVer2( spep_0 + 312, 1187, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 312, 1359, "", 0, 0, 0, -1);
--気弾ヒット
SE032 = playSeVer2( spep_0 + 442, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE032, 83 );
SE033 = playSeVer2( spep_0 + 442, 1145, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 442, 1312, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 454, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE035, 61 );
setPitch( spep_0 + 454, SE035, -1000 );
setTimeStretch( SE035, 0.33, 30, 4 );
--敵吹き飛ぶ
SE036 = playSeVer2( spep_0 + 486, 1027, "", 0, 0, 0, -1);
--敵追いかける
SE037 = playSeVer2( spep_0 + 510, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 518, 1277, "", 0, 0, 0, -1);
--パンチ
SE039 = playSeVer2( spep_0 + 544, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 544, SE039, 150 );
SE040 = playSeVer2( spep_0 + 552, 1187, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 552, 1359, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 552, 1153, "", 0, 0, 0, -1);
--振りかぶる
SE043 = playSeVer2( spep_0 + 602, 1182, "",spep_0 + 668, 6, 24, -1);
setStartTimeMs( SE043,  167 );
SE044 = playSeVer2( spep_0 + 602, 1116, "",spep_0 + 654, 0, 20, -1);
--殴り飛ばす
SE045 = playSeVer2( spep_0 + 640, 1359, "",spep_0 + 706, 0, 16, -1);
SE046 = playSeVer2( spep_0 + 640, 1121, "",spep_0 + 706, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 642, SE046, 50 );
SE047 = playSeVer2( spep_0 + 642, 1120, "",spep_0 + 706, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 696

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0) + 4;

-- ** 音 ** --
--気弾発射前溜め
SE048 = playSeVer2( spep_1 + 92, 1204, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE048, 119 );
setStartTimeMs( SE048,  2100 );

entryFade(spep_1 + 92, 0, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

------------------------------------------------------
-- 気溜め〜異次元が割れる ef_002
------------------------------------------------------
MAX_FRAME_2 = 448;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 220 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 220 + OFFSET_X , 1, 6 );
changeAnime( spep_2 + 258 + OFFSET_X , 1, 8 );

setMoveKey( spep_2 + 220 + OFFSET_X , 1, -143.8, 30.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, -143.8, 30.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, -112.8, -14.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, -112.8, -14.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, -111.8, -14.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, -111.8, -14.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, -108.6, -14 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, -108.6, -14 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, -103.3, -13.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, -103.3, -13.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, -95.8, -13.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, -95.8, -13.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, -86.2, -12.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -86.2, -12.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -76.6, -12.4 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, -76.6, -12.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, -69.1, -12.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, -69.1, -12.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, -63.7, -11.8 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, -63.7, -11.8 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, -60.5, -11.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, -60.5, -11.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, -59.5, -11.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, -59.5, -11.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, -59.4, -11.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, -59.4, -11.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, -59.4, -11.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, -59.4, -11.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, -59.3, -11.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, -59.3, -11.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, -62.3, -34.3 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X , 1, -62.3, -34.3 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, -67.2, -33.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X , 1, -67.2, -33.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X , 1, -32, 48.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X , 1, -32, 48.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X , 1, -56.6, -10.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, -56.6, -10.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, -60.9, 10.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, -60.9, 10.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, -85.1, -8.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, -85.1, -8.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, -92.3, -2.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X , 1, -92.3, -2.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X , 1, -96.1, -1.8 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, -96.1, -1.8 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, -78.7, -26.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X , 1, -78.7, -26.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X , 1, -92, 4.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X , 1, -92, 4.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, -100.7, 17.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X , 1, -100.7, 17.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X , 1, -106.4, -3.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X , 1, -106.4, -3.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X , 1, -112.4, 2.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X , 1, -112.4, 2.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X , 1, -115.1, 3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X , 1, -115.1, 3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X , 1, -96.6, -21.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X , 1, -96.6, -21.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X , 1, -108.8, 8.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X , 1, -108.8, 8.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X , 1, -116.4, 21.8 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X , 1, -116.4, 21.8 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X , 1, -120.9, 0.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X , 1, -120.9, 0.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X , 1, -125.8, 5.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X , 1, -125.8, 5.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X , 1, -127.4, 6 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X , 1, -127.4, 6 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X , 1, -107.8, -18.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X , 1, -107.8, -18.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X , 1, -118.9, 11.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X , 1, -118.9, 11.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X , 1, -125.3, 24 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X , 1, -125.3, 24 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X , 1, -128.8, 2.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X , 1, -128.8, 2.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X , 1, -132.6, 7.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X , 1, -132.6, 7.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X , 1, -133, 7.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X , 1, -133, 7.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X , 1, -112.3, -17.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X , 1, -112.3, -17.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X , 1, -122.2, 12.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X , 1, -122.2, 12.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X , 1, -127.6, 24.6 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X , 1, -127.6, 24.6 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X , 1, -110.2, 22.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X , 1, -110.2, 22.7 , 0 );

setScaleKey( spep_2 + 220 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_2 + 227 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_2 + 228 + OFFSET_X , 1, 0.27, 0.27 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 0.27, 0.27 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_2 + 231 + OFFSET_X , 1, 0.31, 0.31 );
setScaleKey( spep_2 + 232 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 0.49, 0.49 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 0.63, 0.63 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_2 + 239 + OFFSET_X , 1, 0.76, 0.76 );
setScaleKey( spep_2 + 240 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 241 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 243 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 244 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 245 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 247 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 248 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 249 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 250 + OFFSET_X , 1, 1.05, 1.05 );
setScaleKey( spep_2 + 251 + OFFSET_X , 1, 1.05, 1.05 );
setScaleKey( spep_2 + 252 + OFFSET_X , 1, 1.11, 1.11 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 1.11, 1.11 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 1.19, 1.19 );
setScaleKey( spep_2 + 255 + OFFSET_X , 1, 1.19, 1.19 );
setScaleKey( spep_2 + 256 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 257 + OFFSET_X , 1, 1.3, 1.3 );
setScaleKey( spep_2 + 258 + OFFSET_X , 1, 1.5, 1.5 );
setScaleKey( spep_2 + 318 + OFFSET_X , 1, 1.5, 1.5 );

setRotateKey( spep_2 + 220 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 221 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 222 + OFFSET_X , 1, 0.1 );
setRotateKey( spep_2 + 227 + OFFSET_X , 1, 0.1 );
setRotateKey( spep_2 + 228 + OFFSET_X , 1, 0.4 );
setRotateKey( spep_2 + 229 + OFFSET_X , 1, 0.4 );
setRotateKey( spep_2 + 230 + OFFSET_X , 1, 1.4 );
setRotateKey( spep_2 + 231 + OFFSET_X , 1, 1.4 );
setRotateKey( spep_2 + 232 + OFFSET_X , 1, 3.1 );
setRotateKey( spep_2 + 233 + OFFSET_X , 1, 3.1 );
setRotateKey( spep_2 + 234 + OFFSET_X , 1, 5.5 );
setRotateKey( spep_2 + 235 + OFFSET_X , 1, 5.5 );
setRotateKey( spep_2 + 236 + OFFSET_X , 1, 8.5 );
setRotateKey( spep_2 + 237 + OFFSET_X , 1, 8.5 );
setRotateKey( spep_2 + 238 + OFFSET_X , 1, 11.6 );
setRotateKey( spep_2 + 239 + OFFSET_X , 1, 11.6 );
setRotateKey( spep_2 + 240 + OFFSET_X , 1, 14 );
setRotateKey( spep_2 + 241 + OFFSET_X , 1, 14 );
setRotateKey( spep_2 + 242 + OFFSET_X , 1, 15.6 );
setRotateKey( spep_2 + 243 + OFFSET_X , 1, 15.6 );
setRotateKey( spep_2 + 244 + OFFSET_X , 1, 16.7 );
setRotateKey( spep_2 + 245 + OFFSET_X , 1, 16.7 );
setRotateKey( spep_2 + 246 + OFFSET_X , 1, 17 );
setRotateKey( spep_2 + 257 + OFFSET_X , 1, 17 );
setRotateKey( spep_2 + 258 + OFFSET_X , 1, 12 );
setRotateKey( spep_2 + 318 + OFFSET_X , 1, 12 );

setBlendColor( spep_2 + 248 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.1 );
setBlendColor( spep_2 + 250 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.2 );
setBlendColor( spep_2 + 252 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.3 );
setBlendColor( spep_2 + 254 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.5 );
setBlendColor( spep_2 + 256 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.7 );
setBlendColor( spep_2 + 280 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.8 );
setBlendColor( spep_2 + 282 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.82 );
setBlendColor( spep_2 + 284 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.84 );
setBlendColor( spep_2 + 286 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.86 );
setBlendColor( spep_2 + 288 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.88 );
setBlendColor( spep_2 + 290 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.90 );
setBlendColor( spep_2 + 292 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.92 );
setBlendColor( spep_2 + 294 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.94 );
setBlendColor( spep_2 + 296 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.96 );
setBlendColor( spep_2 + 298 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 0.98 );
setBlendColor( spep_2 + 300 + OFFSET_X , 1, 3, 0.262, 0.705, 0.258, 1.0 );
setBlendColor( spep_2 + 318 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾発射前溜め
SE050 = playSeVer2( spep_2 + 32, 1442, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE050, 300);
setStartTimeMs( SE050,  667 );
SE051 = playSeVer2( spep_2 + 0, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE051, 88 );
SE052 = playSeVer2( spep_2 + 0, 1441, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE052, 159 );
SE053 = playSeVer2( spep_2 + 0, 1311, "", 0, 0, 0, -1);
--顔アップ
SE054 = playSeVer2( spep_2 + 40, 1072, "", 0, 0, 0, -1);
--振りかぶる
SE055 = playSeVer2( spep_2 + 94, 1116, "",spep_2 + 146, 0, 20, -1);
--気弾発射
SE056 = playSeVer2( spep_2 + 144, 1423, "",spep_2 + 338, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 144, SE056, 133 );
SE057 = playSeVer2( spep_2 + 144, 1213, "",spep_2 + 338, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 144, SE057, 58 );
SE058 = playSeVer2( spep_2 + 144, 1446, "",spep_2 + 340, 0, 18, -1);
SE059 = playSeVer2( spep_2 + 178, 1212, "", 0, 12, 0, 0.7);
setSeVolumeByWorkId( spep_2 + 178, SE059, 71 );
setStartTimeMs( SE059,  567 );
--1227_SE108_破壊神ビルス_気弾が大きくなる音_フューフュー_16kHz.wav
SE060 = playSeVer2( spep_2 + 314, 1227, "", spep_2 + 314 + 200, 6, 100, -1);
setSeVolumeByWorkId( spep_2 + 314, SE060, 166 );
setStartTimeMs( SE060,  1533 );
--気弾ヒット
SE061 = playSeVer2( spep_2 + 250, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 250, SE061, 66 );
SE062 = playSeVer2( spep_2 + 256, 1021, "", 0, 0, 0, -1);
--次元弾ける
SE063 = playSeVer2( spep_2 + 314, 1414, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 314, 1187, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 314, 1409, "", spep_2 + 314 + 200, 0, 100, -1);
setSeVolumeByWorkId( spep_2 + 314, SE065, 136 );
SE066 = playSeVer2( spep_2 + 330, 1274, "", 0, 0, 0, -1);
--次元の破片飛んでく
SE067 = playSeVer2( spep_2 + 368, 1384, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 368, SE067, 76 );
setPitch( spep_2 + 368, SE067, 400 );
setTimeStretch( SE067, 1.27, 30, 4 );

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_2 + 340 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 448

end