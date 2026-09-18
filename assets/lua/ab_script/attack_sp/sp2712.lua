--1028790:UR_超サイヤ人3孫悟空(天使)_必殺技：瞬間移動メテオクラッシュ
--sp_effect_a1_00438
--sp2712

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162828;  --ef_001  かまえ〜手を前にかざす
SP_01b = 162830;  --ef_001_b  かまえ〜手を前にかざす
SP_02  = 162832;  --ef_002  気功波〜フィニッシュ
SP_02b = 162833;  --ef_002_b  気功波〜フィニッシュ

--エフェクト(敵)
SP_01r  = 162829;  --ef_001_r  かまえ〜手を前にかざす
SP_01br = 162831;  --ef_001_b_r  かまえ〜手を前にかざす


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
-- かまえ〜手を前にかざす
-------------------------------------------------
MAX_FRAME_0 = 588;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- かまえ〜手を前にかざす(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- かまえ〜手を前にかざす(ef_001_b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 62;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 232 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 232 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 254 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 232 + OFFSET_X, 1, 180.1, -180.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 180.1, -180.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 230.5, -172.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 230.5, -172.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 213.8, -130.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 213.8, -130.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 501.8, -312.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 501.8, -312.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 475.3, -320.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 475.3, -320.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 474.6, -290.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 474.6, -290.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 972.6, -473.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 972.6, -473.3 , 0 );

setScaleKey( spep_0 + 232 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 4.57, 4.57 );

setRotateKey( spep_0 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 12.4 );

--敵の動き2
setDisp( spep_0 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 416 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 296 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 314 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 344 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 358 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 364 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 378 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 384 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 398 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 404 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 296 + OFFSET_X, 1, -272.6, 180.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -272.6, 180.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -246.8, 170.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -246.8, 170.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -169.4, 141 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -169.4, 141 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -40.5, 92 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -40.5, 92 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 43.7, 59.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 43.7, 59.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -81.8, -11.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -81.8, -11.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -80.9, -13.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -80.9, -13.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -115.2, -17.8 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -115.2, -17.8 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -120.4, -11.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -120.4, -11.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -130.1, -8.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -130.1, -8.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -130.9, -10.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -130.9, -10.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -162.4, -2.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -162.4, -2.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -157.7, 0.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -157.7, 0.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -152.1, -0.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -152.1, -0.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -156.9, -4.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -156.9, -4.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -161.7, 7.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -161.7, 7.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -170.3, 5.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -170.3, 5.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -166.3, 1.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -166.3, 1.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -162.1, -8.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -162.1, -8.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -163.5, 1.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -163.5, 1.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -130, -102 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -130, -102 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -128.2, -102 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -128.2, -102 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -97.9, 62.2 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -97.9, 62.2 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -99.4, 64.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -99.4, 64.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -93.2, 60.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -93.2, 60.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -258.6, 90.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -258.6, 90.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -259.9, 91.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -259.9, 91.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -196.8, -214.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -196.8, -214.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -198.1, -210.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -198.1, -210.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -190.5, -211.6 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -190.5, -211.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -130.8, -95.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -130.8, -95.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -128, -101.2 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -128, -101.2 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -101.2, 55 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -101.2, 55 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -93.7, 66.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -93.7, 66.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -97.2, 62.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -97.2, 62.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -259.9, 80.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -259.9, 80.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -262.2, 85.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -262.2, 85.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -196.2, -215.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -196.2, -215.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -194.1, -208.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -194.1, -208.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -197.7, -208.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -197.7, -208.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -130.6, -103.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -130.6, -103.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -129.8, -107.3 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -129.8, -107.3 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -93.2, 66 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -93.2, 66 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -101.8, 57.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -101.8, 57.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -99.8, 57.6 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -99.8, 57.6 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -266.1, 85.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -266.1, 85.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -266.7, 85.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -266.7, 85.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -193.9, -211.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -193.9, -211.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -198, -207.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -198, -207.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -204.8, -206.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -204.8, -206.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -133.7, -104.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -133.7, -104.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -130.5, -102.3 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -130.5, -102.3 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -99, 67.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -99, 67.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -93.4, 55.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -93.4, 55.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -95.6, 60.2 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -95.6, 60.2 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -262.2, 86.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -262.2, 86.2 , 0 );

setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 6.5, 6.5 );

setRotateKey( spep_0 + 296 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 14.9 );

--敵の動き3
setDisp( spep_0 + 450 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 536 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 450 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 450 + OFFSET_X, 1, -171.7, -43.4 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -171.7, -43.4 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -164, 25.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -164, 25.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -95.7, -57.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -95.7, -57.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -68.1, -6.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -68.1, -6.3 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -133.6, -15.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -133.6, -15.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -149.9, -4.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -149.9, -4.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -140.2, -5.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -140.2, -5.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -120.7, 2.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -120.7, 2.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -169.2, -10.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -169.2, -10.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -209, 24.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -209, 24.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -227.7, 8.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -227.7, 8.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -246.4, 22.8 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -246.4, 22.8 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -255.4, 24 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -255.4, 24 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -259.9, 24.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -259.9, 24.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -261.4, 24.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -261.4, 24.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -261.5, 24.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -261.5, 24.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -260.2, 23.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -260.2, 23.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -257.1, 22.8 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -257.1, 22.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -245.9, 15.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -245.9, 15.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -240.6, 13.1 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -240.6, 13.1 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -226.3, 11.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -226.3, 11.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -215.7, 7.7 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -215.7, 7.7 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -202.8, 5.4 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -202.8, 5.4 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -188.4, -7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -188.4, -7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -170.9, -12.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -170.9, -12.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -156.8, -16.8 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -156.8, -16.8 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -147.2, -23.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -147.2, -23.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -135.5, -26.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -135.5, -26.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -123.6, -32.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -123.6, -32.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -117.8, -39.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -117.8, -39.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -114.1, -38 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -114.1, -38 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -109.7, -41 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -109.7, -41 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -106.7, -41.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -106.7, -41.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -106, -45.3 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -106, -45.3 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -104.9, -39.5 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -104.9, -39.5 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -102.1, -43.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -102.1, -43.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -103, -41.9 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -103, -41.9 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -101.3, -41.2 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -101.3, -41.2 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -101.7, -44.6 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -101.7, -44.6 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -104.2, -42.2 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -104.2, -42.2 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -108.3, -42 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -108.3, -42 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -99.9, -44.1 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -99.9, -44.1 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -104.5, -43.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -104.5, -43.6 , 0 );

setScaleKey( spep_0 + 450 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 2.57, 2.57 );

setRotateKey( spep_0 + 450 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -35.5 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 4, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 62 );

--構える
SE002 = playSeVer2( spep_0 + 22, 1003, "", 0, 0, 0, -1);

--イナヅマ
SE003 = playSeVer2( spep_0 + 36, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 37 );

--構える
SE005 = playSeVer2( spep_0 + 74, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 74, 1233, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 158, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 162, 9, "",spep_0 + 242, 0, 32, -1);
SE009 = playSeVer2( spep_0 + 162, 1167, "",spep_0 + 222, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 162, SE009, 38 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 186; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
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
--瞬間移動
SE010 = playSeVer2( spep_0 + 196, 1109, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 226, 1109, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_0 + 236, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 246, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 246, 1359, "", 0, 0, 0, -1);

--イナヅマ
SE015 = playSeVer2( spep_0 + 264, 1056, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_0 + 274, 1109, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 292, 1109, "", 0, 0, 0, -1);

--殴る
SE018 = playSeVer2( spep_0 + 310, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 310, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 310, 1153, "", 0, 0, 0, -1);

--イナヅマ
SE021 = playSeVer2( spep_0 + 312, 1056, "", 0, 0, 0, -1);

--連続打撃
SE022 = playSeVer2( spep_0 + 336, 1110, "",spep_0 + 376, 0, 20, 0.5);
SE023 = playSeVer2( spep_0 + 336, 1187, "",spep_0 + 374, 0, 22, 0.5);
SE024 = playSeVer2( spep_0 + 346, 1110, "",spep_0 + 382, 0, 16, 0.5);
stopSeIfDoubleSpeed( spep_0 + 346, SE024);
SE025 = playSeVer2( spep_0 + 346, 1187, "",spep_0 + 384, 0, 22, 0.5);
stopSeIfDoubleSpeed( spep_0 + 346, SE025);
SE026 = playSeVer2( spep_0 + 356, 1110, "",spep_0 + 394, 0, 18, 0.5);
setSeVolumeByWorkId( spep_0 + 356, SE026, 133 );
setPitch( spep_0 + 356, SE026, -100 );
setTimeStretch( SE026, 0.93, 30, 4 );
SE027 = playSeVer2( spep_0 + 356, 1010, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 366, 1110, "",spep_0 + 406, 0, 18, 0.5);
SE029 = playSeVer2( spep_0 + 366, 1187, "",spep_0 + 404, 0, 22, 0.5);
SE030 = playSeVer2( spep_0 + 376, 1110, "",spep_0 + 416, 0, 16, 0.5);
setSeVolumeByWorkId( spep_0 + 376, SE030, 76 );
setPitch( spep_0 + 376, SE030, -100 );
setTimeStretch( SE030, 0.93, 30, 4 );
SE031 = playSeVer2( spep_0 + 376, 1009, "", 0, 0, 0, 0.5);
SE032 = playSeVer2( spep_0 + 388, 1110, "",spep_0 + 428, 0, 18, 0.5);
setPitch( spep_0 + 388, SE032, 100 );
setTimeStretch( SE032, 1.07, 30, 4 );
SE033 = playSeVer2( spep_0 + 396, 1187, "",spep_0 + 434, 0, 22, 0.5);
stopSeIfDoubleSpeed( spep_0 + 396, SE033);
SE034 = playSeVer2( spep_0 + 406, 1110, "",spep_0 + 448, 0, 16, 0.5);
SE035 = playSeVer2( spep_0 + 406, 1187, "",spep_0 + 444, 0, 22, 0.5);

--振りかぶる
SE036 = playSeVer2( spep_0 + 404, 1148, "",spep_0 + 476, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 404, SE036, 60 );
SE037 = playSeVer2( spep_0 + 412, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE037,  100 );
SE038 = playSeVer2( spep_0 + 406, 1116, "",spep_0 + 462, 0, 20, -1);

--殴り飛ばす
SE039 = playSeVer2( spep_0 + 444, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE039, 150 );
SE040 = playSeVer2( spep_0 + 452, 1120, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 452, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE042 = playSeVer2( spep_0 + 468, 1183, "",spep_0 + 572, 0, 46, -1);
SE043 = playSeVer2( spep_0 + 468, 1121, "",spep_0 + 576, 0, 48, -1);

--画面遷移
SE044 = playSeVer2( spep_0 + 524, 1232, "", 0, 0, 0, -1);

--イナヅマ
SE045 = playSeVer2( spep_0 + 524, 1147, "",spep_0 + 606, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 524, SE045, 52 );

--オーラ
SE046 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE046, 63 );
SE051 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 572, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE053, 63 );

--腕構える
SE047 = playSeVer2( spep_0 + 546, 1003, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 550, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE048 = playSeVer2( spep_0 + 546, 1296, "",spep_0 + 600, 0, 14, -1);
SE049 = playSeVer2( spep_0 + 546, 1396, "",spep_0 + 600, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 546, SE049, 65 );
SE050 = playSeVer2( spep_0 + 546, 1440, "",spep_0 + 602, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 546, SE050, 158 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --588f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinOffset(spep_1, 0, -150);

-------------------------------------------------
-- 気功波〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 218;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気功波〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気功波〜フィニッシュ(ef_002_b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 40 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 40 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 40 + OFFSET_X, 1, -110.2, 75 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -110.2, 75 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -123.9, 96.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -123.9, 96.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -149.4, 118.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -149.4, 118.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -152.1, 123.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -152.1, 123.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -157.2, 137.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -157.2, 137.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -167.7, 140.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -167.7, 140.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -178.4, 143 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -178.4, 143 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -181.3, 142 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -181.3, 142 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -190.6, 144.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -190.6, 144.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -191.1, 149.7 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -191.1, 149.7 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -198.4, 155.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -198.4, 155.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -196.5, 153.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -196.5, 153.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -198.6, 163.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -198.6, 163.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -195, 161.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -195, 161.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -201.9, 163.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -201.9, 163.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -207.1, 162.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -207.1, 162.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -217.4, 160.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -217.4, 160.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -211.9, 163.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -211.9, 163.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -210.9, 166.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -210.9, 166.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -209.2, 166.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -209.2, 166.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -210.2, 167.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -210.2, 167.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -206.4, 167.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -206.4, 167.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -205.8, 170.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -205.8, 170.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -207.3, 172.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -207.3, 172.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -220, 168.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -220, 168.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -210, 167.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -210, 167.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -218.7, 171.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -218.7, 171.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -212.7, 173.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -212.7, 173.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -216.7, 173.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -216.7, 173.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -216.3, 170.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -216.3, 170.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -217.4, 172 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -217.4, 172 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -91.7, 59.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -91.7, 59.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -93.7, 60.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -93.7, 60.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -95.7, 60.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -95.7, 60.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -93.2, 54.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -93.2, 54.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -94.4, 63.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -94.4, 63.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -91.8, 60.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -91.8, 60.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -93.2, 63.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -93.2, 63.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -90.6, 61.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -90.6, 61.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -91.7, 59.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -91.7, 59.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -93.7, 58.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -93.7, 58.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -91.2, 60.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -91.2, 60.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -89.6, 64.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -89.6, 64.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -90.5, 59.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -90.5, 59.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -89.3, 62.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -89.3, 62.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -93.4, 55 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -93.4, 55 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -91.6, 60.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -91.6, 60.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -91.2, 59.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -91.2, 59.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -97.3, 57.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -97.3, 57.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -88.2, 56.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -88.2, 56.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -92, 57.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -92, 57.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -95.9, 58.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -95.9, 58.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -94, 60.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -94, 60.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -88.4, 64.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -88.4, 64.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -88, 56.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -88, 56.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -90.3, 59.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -90.3, 59.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -91.5, 59.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -91.5, 59.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -94, 59.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -94, 59.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -89.3, 64.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -89.3, 64.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -89.8, 63.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -89.8, 63.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -91.7, 59.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -91.7, 59.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -93.2, 59.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -93.2, 59.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -91.1, 59.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -91.1, 59.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -87.1, 61.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -87.1, 61.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -90.8, 60.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -90.8, 60.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -92.9, 62.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -92.9, 62.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -91.9, 65.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -91.9, 65.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -93.2, 58.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -93.2, 58.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -91.4, 62.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -91.4, 62.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -93.7, 58.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -93.7, 58.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -96.8, 62.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -96.8, 62.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -91.5, 59.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -91.5, 59.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -92.4, 57.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -92.4, 57.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -89.9, 55.9 , 0 );

setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.21, 2.21 );

setRotateKey( spep_2 + 40 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 34 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 34 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 32.5 );

setBlendColor( spep_2 + 130 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 213 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾発射１
SE055 = playSeVer2( spep_2 + 0, 1213, "",spep_2 + 106, 0, 18, -1);
SE056 = playSeVer2( spep_2 + 0, 1133, "", 0, 0, 0, -1);

--気弾発射２
SE057 = playSeVer2( spep_2 + 46, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE057, 162 );
SE058 = playSeVer2( spep_2 + 46, 1284, "", 0, 0, 0, -1);

--敵ヒット
SE059 = playSeVer2( spep_2 + 80, 1067, "", 0, 0, 0, -1);

--飲みこまれる
SE060 = playSeVer2( spep_2 + 116, 1258, "", 0, 18, 0, -1);
setStartTimeMs( SE060,  233 );

--気弾中
SE061 = playSeVer2( spep_2 + 108, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE061, 251 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 100); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  218f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- かまえ〜手を前にかざす
-------------------------------------------------
MAX_FRAME_0 = 588;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- かまえ〜手を前にかざす(ef_001_r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- かまえ〜手を前にかざす(ef_001_b_r)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 62;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 232 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 232 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 254 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 232 + OFFSET_X, 1, 180.1, -180.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 180.1, -180.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 230.5, -172.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 230.5, -172.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 213.8, -130.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 213.8, -130.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 501.8, -312.3 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 501.8, -312.3 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 475.3, -320.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 475.3, -320.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 474.6, -290.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 474.6, -290.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 972.6, -473.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 972.6, -473.3 , 0 );

setScaleKey( spep_0 + 232 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 4.57, 4.57 );

setRotateKey( spep_0 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 12.4 );

--敵の動き2
setDisp( spep_0 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 416 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 296 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 314 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 344 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 358 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 364 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 378 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 384 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 398 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 404 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 296 + OFFSET_X, 1, -272.6, 180.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -272.6, 180.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -246.8, 170.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -246.8, 170.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -169.4, 141 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -169.4, 141 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -40.5, 92 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -40.5, 92 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 43.7, 59.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 43.7, 59.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -81.8, -11.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -81.8, -11.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -80.9, -13.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -80.9, -13.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -115.2, -17.8 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -115.2, -17.8 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -120.4, -11.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -120.4, -11.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -130.1, -8.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -130.1, -8.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -130.9, -10.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -130.9, -10.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -162.4, -2.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -162.4, -2.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -157.7, 0.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -157.7, 0.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -152.1, -0.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -152.1, -0.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -156.9, -4.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -156.9, -4.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -161.7, 7.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -161.7, 7.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -170.3, 5.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -170.3, 5.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -166.3, 1.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -166.3, 1.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -162.1, -8.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -162.1, -8.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -163.5, 1.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -163.5, 1.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -130, -102 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -130, -102 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -128.2, -102 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -128.2, -102 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -97.9, 62.2 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -97.9, 62.2 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -99.4, 64.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -99.4, 64.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -93.2, 60.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -93.2, 60.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -258.6, 90.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -258.6, 90.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -259.9, 91.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -259.9, 91.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -196.8, -214.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -196.8, -214.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -198.1, -210.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -198.1, -210.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -190.5, -211.6 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -190.5, -211.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -130.8, -95.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -130.8, -95.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -128, -101.2 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -128, -101.2 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -101.2, 55 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -101.2, 55 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -93.7, 66.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -93.7, 66.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -97.2, 62.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -97.2, 62.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -259.9, 80.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -259.9, 80.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -262.2, 85.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -262.2, 85.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -196.2, -215.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -196.2, -215.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -194.1, -208.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -194.1, -208.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -197.7, -208.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -197.7, -208.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -130.6, -103.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -130.6, -103.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -129.8, -107.3 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -129.8, -107.3 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -93.2, 66 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -93.2, 66 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -101.8, 57.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -101.8, 57.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -99.8, 57.6 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -99.8, 57.6 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -266.1, 85.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -266.1, 85.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -266.7, 85.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -266.7, 85.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -193.9, -211.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -193.9, -211.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -198, -207.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -198, -207.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -204.8, -206.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -204.8, -206.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -133.7, -104.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -133.7, -104.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -130.5, -102.3 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -130.5, -102.3 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -99, 67.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -99, 67.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -93.4, 55.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -93.4, 55.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -95.6, 60.2 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -95.6, 60.2 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -262.2, 86.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -262.2, 86.2 , 0 );

setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 6.5, 6.5 );

setRotateKey( spep_0 + 296 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 68.2 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 14.9 );

--敵の動き3
setDisp( spep_0 + 450 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 536 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 450 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 450 + OFFSET_X, 1, -171.7, -43.4 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -171.7, -43.4 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -164, 25.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -164, 25.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -95.7, -57.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -95.7, -57.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -68.1, -6.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -68.1, -6.3 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -133.6, -15.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -133.6, -15.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -149.9, -4.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -149.9, -4.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -140.2, -5.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -140.2, -5.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -120.7, 2.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -120.7, 2.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -169.2, -10.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -169.2, -10.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -209, 24.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -209, 24.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -227.7, 8.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -227.7, 8.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -246.4, 22.8 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -246.4, 22.8 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -255.4, 24 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -255.4, 24 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -259.9, 24.4 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -259.9, 24.4 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -261.4, 24.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -261.4, 24.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -261.5, 24.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -261.5, 24.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -260.2, 23.7 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -260.2, 23.7 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -257.1, 22.8 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -257.1, 22.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -245.9, 15.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -245.9, 15.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -240.6, 13.1 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -240.6, 13.1 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -226.3, 11.2 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -226.3, 11.2 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -215.7, 7.7 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -215.7, 7.7 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -202.8, 5.4 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -202.8, 5.4 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -188.4, -7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -188.4, -7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -170.9, -12.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -170.9, -12.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -156.8, -16.8 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -156.8, -16.8 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -147.2, -23.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -147.2, -23.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -135.5, -26.7 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -135.5, -26.7 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -123.6, -32.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -123.6, -32.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -117.8, -39.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -117.8, -39.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -114.1, -38 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -114.1, -38 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -109.7, -41 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -109.7, -41 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -106.7, -41.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -106.7, -41.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -106, -45.3 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -106, -45.3 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -104.9, -39.5 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -104.9, -39.5 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -102.1, -43.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -102.1, -43.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -103, -41.9 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -103, -41.9 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -101.3, -41.2 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -101.3, -41.2 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -101.7, -44.6 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -101.7, -44.6 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -104.2, -42.2 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -104.2, -42.2 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -108.3, -42 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -108.3, -42 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -99.9, -44.1 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -99.9, -44.1 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -104.5, -43.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -104.5, -43.6 , 0 );

setScaleKey( spep_0 + 450 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 2.57, 2.57 );

setRotateKey( spep_0 + 450 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -35.5 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 4, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE001, 62 );

--構える
SE002 = playSeVer2( spep_0 + 22, 1003, "", 0, 0, 0, -1);

--イナヅマ
SE003 = playSeVer2( spep_0 + 36, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 37 );

--構える
SE005 = playSeVer2( spep_0 + 74, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 74, 1233, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 158, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 162, 9, "",spep_0 + 242, 0, 32, -1);
SE009 = playSeVer2( spep_0 + 162, 1167, "",spep_0 + 222, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 162, SE009, 38 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 186; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
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
--瞬間移動
SE010 = playSeVer2( spep_0 + 196, 1109, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 226, 1109, "", 0, 0, 0, -1);

--蹴り飛ばす
SE012 = playSeVer2( spep_0 + 236, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 246, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 246, 1359, "", 0, 0, 0, -1);

--イナヅマ
SE015 = playSeVer2( spep_0 + 264, 1056, "", 0, 0, 0, -1);

--瞬間移動
SE016 = playSeVer2( spep_0 + 274, 1109, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 292, 1109, "", 0, 0, 0, -1);

--殴る
SE018 = playSeVer2( spep_0 + 310, 1359, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 310, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 310, 1153, "", 0, 0, 0, -1);

--イナヅマ
SE021 = playSeVer2( spep_0 + 312, 1056, "", 0, 0, 0, -1);

--連続打撃
SE022 = playSeVer2( spep_0 + 336, 1110, "",spep_0 + 376, 0, 20, 0.5);
SE023 = playSeVer2( spep_0 + 336, 1187, "",spep_0 + 374, 0, 22, 0.5);
SE024 = playSeVer2( spep_0 + 346, 1110, "",spep_0 + 382, 0, 16, 0.5);
stopSeIfDoubleSpeed( spep_0 + 346, SE024);
SE025 = playSeVer2( spep_0 + 346, 1187, "",spep_0 + 384, 0, 22, 0.5);
stopSeIfDoubleSpeed( spep_0 + 346, SE025);
SE026 = playSeVer2( spep_0 + 356, 1110, "",spep_0 + 394, 0, 18, 0.5);
setSeVolumeByWorkId( spep_0 + 356, SE026, 133 );
setPitch( spep_0 + 356, SE026, -100 );
setTimeStretch( SE026, 0.93, 30, 4 );
SE027 = playSeVer2( spep_0 + 356, 1010, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 366, 1110, "",spep_0 + 406, 0, 18, 0.5);
SE029 = playSeVer2( spep_0 + 366, 1187, "",spep_0 + 404, 0, 22, 0.5);
SE030 = playSeVer2( spep_0 + 376, 1110, "",spep_0 + 416, 0, 16, 0.5);
setSeVolumeByWorkId( spep_0 + 376, SE030, 76 );
setPitch( spep_0 + 376, SE030, -100 );
setTimeStretch( SE030, 0.93, 30, 4 );
SE031 = playSeVer2( spep_0 + 376, 1009, "", 0, 0, 0, 0.5);
SE032 = playSeVer2( spep_0 + 388, 1110, "",spep_0 + 428, 0, 18, 0.5);
setPitch( spep_0 + 388, SE032, 100 );
setTimeStretch( SE032, 1.07, 30, 4 );
SE033 = playSeVer2( spep_0 + 396, 1187, "",spep_0 + 434, 0, 22, 0.5);
stopSeIfDoubleSpeed( spep_0 + 396, SE033);
SE034 = playSeVer2( spep_0 + 406, 1110, "",spep_0 + 448, 0, 16, 0.5);
SE035 = playSeVer2( spep_0 + 406, 1187, "",spep_0 + 444, 0, 22, 0.5);

--振りかぶる
SE036 = playSeVer2( spep_0 + 404, 1148, "",spep_0 + 476, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 404, SE036, 60 );
SE037 = playSeVer2( spep_0 + 412, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE037,  100 );
SE038 = playSeVer2( spep_0 + 406, 1116, "",spep_0 + 462, 0, 20, -1);

--殴り飛ばす
SE039 = playSeVer2( spep_0 + 444, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE039, 150 );
SE040 = playSeVer2( spep_0 + 452, 1120, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 452, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE042 = playSeVer2( spep_0 + 468, 1183, "",spep_0 + 572, 0, 46, -1);
SE043 = playSeVer2( spep_0 + 468, 1121, "",spep_0 + 576, 0, 48, -1);

--画面遷移
SE044 = playSeVer2( spep_0 + 524, 1232, "", 0, 0, 0, -1);

--イナヅマ
SE045 = playSeVer2( spep_0 + 524, 1147, "",spep_0 + 606, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 524, SE045, 52 );

--オーラ
SE046 = playSeVer2( spep_0 + 524, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE046, 63 );
SE051 = playSeVer2( spep_0 + 548, 1036, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 572, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE053, 63 );

--腕構える
SE047 = playSeVer2( spep_0 + 546, 1003, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_0 + 550, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE048 = playSeVer2( spep_0 + 546, 1296, "",spep_0 + 600, 0, 14, -1);
SE049 = playSeVer2( spep_0 + 546, 1396, "",spep_0 + 600, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 546, SE049, 65 );
SE050 = playSeVer2( spep_0 + 546, 1440, "",spep_0 + 602, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 546, SE050, 158 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --588f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinOffset(spep_1, 0, -150);


-------------------------------------------------
-- 気功波〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 218;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気功波〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気功波〜フィニッシュ(ef_002_b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 40 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 40 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 40 + OFFSET_X, 1, 110.2, 75 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 110.2, 75 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 123.9, 96.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 123.9, 96.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 149.4, 118.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 149.4, 118.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 152.1, 123.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 152.1, 123.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 157.2, 137.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 157.2, 137.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 167.7, 140.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 167.7, 140.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 178.4, 143 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 178.4, 143 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 181.3, 142 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 181.3, 142 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 190.6, 144.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 190.6, 144.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 191.1, 149.7 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 191.1, 149.7 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 198.4, 155.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 198.4, 155.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 196.5, 153.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 196.5, 153.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 198.6, 163.2 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 198.6, 163.2 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 195, 161.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 195, 161.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 201.9, 163.7 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 201.9, 163.7 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 207.1, 162.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 207.1, 162.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 217.4, 160.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 217.4, 160.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 211.9, 163.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 211.9, 163.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 210.9, 166.5 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 210.9, 166.5 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 209.2, 166.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 209.2, 166.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 210.2, 167.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 210.2, 167.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 206.4, 167.5 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 206.4, 167.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 205.8, 170.8 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 205.8, 170.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 207.3, 172.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 207.3, 172.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 220, 168.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 220, 168.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 210, 167.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 210, 167.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 218.7, 171.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 218.7, 171.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 212.7, 173.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 212.7, 173.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 216.7, 173.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 216.7, 173.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 216.3, 170.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 216.3, 170.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 217.4, 172 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 217.4, 172 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 91.7, 59.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 91.7, 59.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 93.7, 60.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 93.7, 60.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 95.7, 60.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 95.7, 60.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 93.2, 54.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 93.2, 54.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 94.4, 63.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 94.4, 63.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 91.8, 60.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 91.8, 60.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 93.2, 63.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 93.2, 63.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 90.6, 61.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 90.6, 61.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 91.7, 59.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 91.7, 59.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 93.7, 58.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 93.7, 58.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 91.2, 60.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 91.2, 60.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 89.6, 64.4 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 89.6, 64.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 90.5, 59.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 90.5, 59.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 89.3, 62.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 89.3, 62.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 93.4, 55 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 93.4, 55 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 91.6, 60.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 91.6, 60.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 91.2, 59.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 91.2, 59.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 97.3, 57.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 97.3, 57.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 88.2, 56.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 88.2, 56.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 92, 57.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 92, 57.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 95.9, 58.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 95.9, 58.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 94, 60.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 94, 60.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 88.4, 64.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 88.4, 64.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 88, 56.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 88, 56.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 90.3, 59.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 90.3, 59.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 91.5, 59.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 91.5, 59.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 94, 59.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 94, 59.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 89.3, 64.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 89.3, 64.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 89.8, 63.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 89.8, 63.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 91.7, 59.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 91.7, 59.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 93.2, 59.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 93.2, 59.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 91.1, 59.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 91.1, 59.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 87.1, 61.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 87.1, 61.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 90.8, 60.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 90.8, 60.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 92.9, 62.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 92.9, 62.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 91.9, 65.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 91.9, 65.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 93.2, 58.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 93.2, 58.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 91.4, 62.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 91.4, 62.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 93.7, 58.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 93.7, 58.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 96.8, 62.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 96.8, 62.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 91.5, 59.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 91.5, 59.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 92.4, 57.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 92.4, 57.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 89.9, 55.9 , 0 );

setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.21, 2.21 );

setRotateKey( spep_2 + 40 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -32.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -32.5 );

setBlendColor( spep_2 + 130 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 213 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾発射１
SE055 = playSeVer2( spep_2 + 0, 1213, "",spep_2 + 106, 0, 18, -1);
SE056 = playSeVer2( spep_2 + 0, 1133, "", 0, 0, 0, -1);

--気弾発射２
SE057 = playSeVer2( spep_2 + 46, 1423, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE057, 162 );
SE058 = playSeVer2( spep_2 + 46, 1284, "", 0, 0, 0, -1);

--敵ヒット
SE059 = playSeVer2( spep_2 + 80, 1067, "", 0, 0, 0, -1);

--飲みこまれる
SE060 = playSeVer2( spep_2 + 116, 1258, "", 0, 18, 0, -1);
setStartTimeMs( SE060,  233 );

--気弾中
SE061 = playSeVer2( spep_2 + 108, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE061, 251 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 100); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  218f


end
