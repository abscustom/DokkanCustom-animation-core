--1034200:LR_超サイヤ人3孫悟空_ユニット必殺技：ライバル同士の共闘
--sp_effect_b4_00450
--sp3053

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164576; --スタート〜フィニッシュ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then
else

    HIDE_EFFECT_PHRASE_TEXTURES();

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 1142;
CARD_FRAME = 118;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 660; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 360 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 366 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 360 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 360 + OFFSET_X, 1, -308.7 * mirror, -489 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -308.7 * mirror, -489 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -271.7 * mirror, -365.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -271.7 * mirror, -365.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -271.8 * mirror, -365.8 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -271.8 * mirror, -365.8 , 0 );

setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.58, 0.58 );

setRotateKey( spep_0 + 360 + OFFSET_X, 1, -0.8 * mirror );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -0.8 * mirror );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 0 * mirror );


-- 敵の動き2
setDisp( spep_0 + 368 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 590 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 368 + OFFSET_X, 1, 4 );
changeAnimeBySide( spep_0 + 380 + OFFSET_X, 1, 6 );
changeAnimeBySide( spep_0 + 398 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 416 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 444 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 466 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 476 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 482 + OFFSET_X, 1, 105 );
changeAnimeBySide( spep_0 + 484 + OFFSET_X, 1, 6 );
changeAnimeBySide( spep_0 + 494 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 504 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 518 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 530 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 368 + OFFSET_X, 1, -449.8 * mirror, 65.9 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -449.8 * mirror, 65.9 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -319.8 * mirror, 74.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -319.8 * mirror, 74.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -319.9 * mirror, 74.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -319.9 * mirror, 74.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -230 * mirror, 80 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -230 * mirror, 80 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -229.9 * mirror, 80.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -229.9 * mirror, 80.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -31.5 * mirror, 71.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -31.5 * mirror, 71.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -37.8 * mirror, 58.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -37.8 * mirror, 58.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -37.8 * mirror, 78.7 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -37.8 * mirror, 78.7 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -35.7 * mirror, 58 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -35.7 * mirror, 58 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -44.6 * mirror, 75.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -44.6 * mirror, 75.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -44.6 * mirror, 75.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -44.6 * mirror, 75.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -4.7 * mirror, 66.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -4.7 * mirror, 66.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -4.6 * mirror, 66.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -4.6 * mirror, 66.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 34 * mirror, 8.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 34 * mirror, 8.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 62.2 * mirror, 12.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 62.2 * mirror, 12.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 92.9 * mirror, 39.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 92.9 * mirror, 39.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 178.2 * mirror, 174.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 178.2 * mirror, 174.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 178 * mirror, 122.2 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 178 * mirror, 122.2 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 192.6 * mirror, 181.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 192.6 * mirror, 181.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 190.3 * mirror, 163.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 190.3 * mirror, 163.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 196.3 * mirror, 133.2 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 196.3 * mirror, 133.2 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 196.3 * mirror, 133.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 196.3 * mirror, 133.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 202 * mirror, 124.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 202 * mirror, 124.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 216.8 * mirror, -6.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 216.8 * mirror, -6.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 208.2 * mirror, -31.6 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 208.2 * mirror, -31.6 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 208.9 * mirror, -74.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 208.9 * mirror, -74.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 222.3 * mirror, -43.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 222.3 * mirror, -43.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 192.2 * mirror, -70.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 192.2 * mirror, -70.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 204.2 * mirror, -63.6 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 204.2 * mirror, -63.6 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 204 * mirror, -69.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 204 * mirror, -69.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 206.1 * mirror, -73.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 206.1 * mirror, -73.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 205.7 * mirror, -73.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 205.7 * mirror, -73.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 225.9 * mirror, -53.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 225.9 * mirror, -53.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 246 * mirror, -33.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 246 * mirror, -33.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 192.2 * mirror, -37.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 192.2 * mirror, -37.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 227.9 * mirror, -41.4 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 227.9 * mirror, -41.4 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 179.9 * mirror, -51.6 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 179.9 * mirror, -51.6 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 230 * mirror, -30.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 230 * mirror, -30.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 195.7 * mirror, -64.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 195.7 * mirror, -64.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 244.6 * mirror, -59.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 244.6 * mirror, -59.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 209.7 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 209.7 * mirror, -47.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 236.5 * mirror, -58.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 236.5 * mirror, -58.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 224.3 * mirror, -51.3 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 224.3 * mirror, -51.3 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 232.4 * mirror, -53.2 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 232.4 * mirror, -53.2 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 240.5 * mirror, 22.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 240.5 * mirror, 22.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 245.7 * mirror, 25.9 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 245.7 * mirror, 25.9 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 156.3 * mirror, 60.7 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 156.3 * mirror, 60.7 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 158.8 * mirror, 60.2 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 158.8 * mirror, 60.2 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 203.9 * mirror, -5.9 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 203.9 * mirror, -5.9 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 87.3 * mirror, -93.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 87.3 * mirror, -93.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 117.3 * mirror, -68.3 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 117.3 * mirror, -68.3 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 182.5 * mirror, -74.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 182.5 * mirror, -74.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -107.1 * mirror, -34.8 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -107.1 * mirror, -34.8 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -75.6 * mirror, 102.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -75.6 * mirror, 102.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -80 * mirror, 86 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -80 * mirror, 86 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -84.7 * mirror, 102.1 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -84.7 * mirror, 102.1 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -165.9 * mirror, 71.8 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -165.9 * mirror, 71.8 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -288.3 * mirror, -27.7 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -288.3 * mirror, -27.7 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 552.1 * mirror, 16 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 552.1 * mirror, 16 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 1232 * mirror, 496.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 1232 * mirror, 496.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 872 * mirror, 362.6 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 872 * mirror, 362.6 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 512 * mirror, 229.3 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 512 * mirror, 229.3 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 152.1 * mirror, 96 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 152.1 * mirror, 96 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 372 * mirror, 356 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 372 * mirror, 356 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 346.7 * mirror, 367.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 346.7 * mirror, 367.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 290.6 * mirror, 160 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 290.6 * mirror, 160 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 274.6 * mirror, 191.9 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 274.6 * mirror, 191.9 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 215 * mirror, 123.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 215 * mirror, 123.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 177.1 * mirror, 233.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 177.1 * mirror, 233.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 19 * mirror, -113.2 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 19 * mirror, -113.2 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 85 * mirror, -121.2 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 85 * mirror, -121.2 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 71.6 * mirror, -214.9, 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 71.6 * mirror, -214.9, 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 113.8 * mirror, -308.4, 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 113.8 * mirror, -308.4, 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 133.4 * mirror, -256, 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 133.4 * mirror, -256, 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 77.9 * mirror, -232, 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 77.9 * mirror, -232, 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 78.6 * mirror, -166, 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 78.6 * mirror, -166, 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 65.2 * mirror, -165.7, 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 65.2 * mirror, -165.7, 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 76.8 * mirror, -177.4, 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 76.8 * mirror, -177.4, 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 91.5 * mirror, -192.1, 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 91.5 * mirror, -192.1, 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 124.2 * mirror, -217.2, 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 124.2 * mirror, -217.2, 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 136.2 * mirror, -210.8, 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 136.2 * mirror, -210.8, 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 151.5 * mirror, -221.7, 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 151.5 * mirror, -221.7, 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 153.3 * mirror, -225.7, 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 153.3 * mirror, -225.7, 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 149.2 * mirror, -232, 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 149.2 * mirror, -232, 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 145.1 * mirror, -236, 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 145.1 * mirror, -236, 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 135.3 * mirror, -223.1, 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 135.3 * mirror, -223.1, 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 123.7 * mirror, -210.5, 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 123.7 * mirror, -210.5, 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 119.1 * mirror, -212.2, 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 119.1 * mirror, -212.2, 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 117.2 * mirror, -221.9, 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 117.2 * mirror, -221.9, 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 123.3 * mirror, -226.2, 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 123.3 * mirror, -226.2, 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 153.4 * mirror, -216.4, 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 153.4 * mirror, -216.4, 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 148.9 * mirror, -222.6, 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 148.9 * mirror, -222.6, 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 141.6 * mirror, -229.6, 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 141.6 * mirror, -229.6, 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 136.2 * mirror, -230.4, 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 136.2 * mirror, -230.4, 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 133.5 * mirror, -227.6, 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 133.5 * mirror, -227.6, 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 128.9 * mirror, -224.9, 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 128.9 * mirror, -224.9, 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 135 * mirror, -229.2, 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 135 * mirror, -229.2, 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 137.6 * mirror, -239.4, 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 137.6 * mirror, -239.4, 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 141 * mirror, -242.9, 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 141 * mirror, -242.9, 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 144.7 * mirror, -244.6, 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 144.7 * mirror, -244.6, 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 146.3 * mirror, -246.2, 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 146.3 * mirror, -246.2, 0 );

setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 3.29, 3.3 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 3.29, 3.3 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 3.59, 3.6 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 3.59, 3.6 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 3.39, 3.4 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 3.39, 3.4 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 3.19, 3.2 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 3.19, 3.2 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 3.39, 3.4 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 3.39, 3.4 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 4.19, 4.2 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 4.19, 4.2 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 3.09, 3.1 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 3.09, 3.1 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 19.99, 19.99 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 19.99, 19.99 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 19.99, 20 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 19.99, 20 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_0 + 368 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 45 * mirror );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 45 * mirror );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -45 * mirror );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 25 * mirror );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 25 * mirror );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 20 * mirror );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 20 * mirror );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 5 * mirror );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 5 * mirror );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -5 * mirror );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -5 * mirror );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -15 * mirror );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -15 * mirror );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 45 * mirror );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, 45 * mirror );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 30 * mirror );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, 30 * mirror );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -30 * mirror );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, -30 * mirror );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 120, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 35 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1356, "",spep_0 + 120, 3, 13, -1);
setStartTimeMs( SE003,  467 );
setSeVolumeByWorkId( spep_0 + 24, SE004, 63 );
SE005 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 63 );
SE009 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE009, 63 );
SE010 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE010, 63 );
SE011 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE011, 63 );

--気ダメ
SE006 = playSeVer2( spep_0 + 56, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE006, 57 );
SE007 = playSeVer2( spep_0 + 56, 1503, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 63, 1504, "", 0, 0, 0, -1);

--イナヅマ
SE013 = playSeVer2( spep_0 + 211, 1147, "",spep_0 + 364, 0, 20, -1);

--オーラ
SE014 = playSeVer2( spep_0 + 217, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 217, SE014, 63 );
SE016 = playSeVer2( spep_0 + 241, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 241, SE016, 63 );
SE018 = playSeVer2( spep_0 + 265, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 265, SE018, 63 );
SE022 = playSeVer2( spep_0 + 289, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 289, SE022, 63 );
SE025 = playSeVer2( spep_0 + 313, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 313, SE025, 63 );
SE026 = playSeVer2( spep_0 + 337, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 337, SE026, 63 );

--空気音
SE015 = playSeVer2( spep_0 + 222, 1278, "", 0, 0, 0, -1);

--ベジータ飛び出す
SE017 = playSeVer2( spep_0 + 260, 1116, "",spep_0 + 315, 0, 26, -1);
SE019 = playSeVer2( spep_0 + 277, 1117, "", 0, 0, 0, -1);

--かめはめ波溜め
SE020 = playSeVer2( spep_0 + 281, 1131, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 281, 1132, "",spep_0 + 383, 0, 29, -1);

--ベジータ飛び出す
SE023 = playSeVer2( spep_0 + 293, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 293, 1452, "", 0, 0, 0, -1);

--ベジータ向かっていく
SE027 = playSeVer2( spep_0 + 357, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 357, SE027, 150 );

--パンチヒット
SE028 = playSeVer2( spep_0 + 377, 1009, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 377, 1187, "", 0, 0, 0, -1);

--連打
SE030 = playSeVer2( spep_0 + 409, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 409, SE030, 158 );
SE031 = playSeVer2( spep_0 + 418, 1153, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 418, 1110, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 433, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 433, SE033, 174 );
SE034 = playSeVer2( spep_0 + 438, 1010, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 438, 1110, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 458, 1009, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 458, 1110, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 467, 1009, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 467, 1110, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 478, 1010, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 478, 1110, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 490, 1009, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 490, 1110, "", 0, 0, 0, -1);

--膝蹴り
SE045 = playSeVer2( spep_0 + 519, 1359, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 519, 1153, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 519, 1049, "", 0, 0, 0, -1);

--かめはめ波溜め
SE036 = playSeVer2( spep_0 + 574, 1210, "",spep_0 + 715, 16, 20, -1);
setStartTimeMs( SE036,  2250 );

--オーラ
SE049 = playSeVer2( spep_0 + 583, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 583, SE049, 63 );
SE051 = playSeVer2( spep_0 + 607, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 607, SE051, 63 );
SE052 = playSeVer2( spep_0 + 631, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 631, SE052, 63 );
SE053 = playSeVer2( spep_0 + 655, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 655, SE053, 63 );
SE057 = playSeVer2( spep_0 + 679, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 679, SE057, 63 );
SE058 = playSeVer2( spep_0 + 703, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 703, SE058, 63 );
SE059 = playSeVer2( spep_0 + 727, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 727, SE059, 63 );
SE060 = playSeVer2( spep_0 + 751, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 751, SE060, 63 );

--イナヅマ
SE050 = playSeVer2( spep_0 + 588, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 588, SE050, 38 );

--ベジータ気弾溜め
SE055 = playSeVer2( spep_0 + 677, 1282, "",spep_0 + 778, 0, 21, -1);
SE056 = playSeVer2( spep_0 + 677, 1296, "",spep_0 + 774, 0, 19, -1);

--ベジータ気弾発射
SE061 = playSeVer2( spep_0 + 746, 1145, "",spep_0 + 826, 0, 30, 1);
SE062 = playSeVer2( spep_0 + 746, 1133, "",spep_0 + 837, 0, 35, 1);
SE063 = playSeVer2( spep_0 + 746, 1212, "",spep_0 + 849, 0, 46, 1);

--かめはめ波溜め続き
SE048 = playSeVer2( spep_0 + 781, 1210, "",spep_0 + 952, 4, 27, -1);
setStartTimeMs( SE048,  4217 );

--イナヅマ
SE064 = playSeVer2( spep_0 + 794, 1147, "",spep_0 + 958, 0, 33, -1);
setSeVolumeByWorkId( spep_0 + 794, SE064, 61 );

--オーラ
SE065 = playSeVer2( spep_0 + 794, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 794, SE065, 63 );
SE066 = playSeVer2( spep_0 + 818, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 818, SE066, 63 );
SE067 = playSeVer2( spep_0 + 842, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 842, SE067, 63 );
SE068 = playSeVer2( spep_0 + 866, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 866, SE068, 63 );
SE069 = playSeVer2( spep_0 + 890, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 890, SE069, 63 );

--かめはめ波発射
SE070 = playSeVer2( spep_0 + 918, 1133, "",spep_0 + 1020, 0, 19, -1);
setPitch( spep_0 + 918, SE070, -200 );
setTimeStretch( SE070, 0.87, 30, 4 );
SE071 = playSeVer2( spep_0 + 918, 1223, "",spep_0 + 1020, 0, 19, -1);
SE072 = playSeVer2( spep_0 + 918, 1213, "",spep_0 + 1016, 0, 16, -1);

--気弾飛んでいく
SE073 = playSeVer2( spep_0 + 959, 1511, "",spep_0 + 1034, 0, 26, -1);
SE074 = playSeVer2( spep_0 + 959, 1021, "", 0, 0, 0, -1);

--爆発
SE075 = playSeVer2( spep_0 + 990, 1159, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_0 + 997, 1067, "", 0, 0, 0, -1);

--画面遷移
SE077 = playSeVer2( spep_0 + 1050, 8, "", 0, 0, 0, -1);

--オーラ
SE078 = playSeVer2( spep_0 + 1061, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1061, SE078, 63 );
SE079 = playSeVer2( spep_0 + 1085, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1085, SE079, 63 );
SE080 = playSeVer2( spep_0 + 1109, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1109, SE080, 63 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 362; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

stopAndCancelAllSe( SP_dodge - 12 ); --再生中と再生予定のSEを止める
stopAndCancelAllVoice( SP_dodge - 12 ); --再生中と再生予定のVoiceを止める
playSeNotStoppable( SP_dodge - 12, 1042); --止めないSE

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------



-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 994); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1142f