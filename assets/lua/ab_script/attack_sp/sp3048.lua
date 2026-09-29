--1034150:LR_魔人ブウ(純粋)_超必殺技：ミスティックスイング
--sp_effect_b1_00381
--sp3048

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164563; --最初〜最後まで ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then
else

    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie( 0, SP_01, 0, 1);

-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 862;
CARD_FRAME = 90;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
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
spep_x = spep_0 + 6; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = 200; -- 演出によって白目にかからないように調整

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


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 284 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 268 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, 249.4 * mirror, -127.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 249.4 * mirror, -127.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 236.7 * mirror, -127.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 236.7 * mirror, -127.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 183.3 * mirror, -127.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 183.3 * mirror, -127.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 127.2 * mirror, -217.4 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 127.2 * mirror, -217.4 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 0 * mirror );

-- 敵の動き2
setDisp( spep_0 + 288 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 300 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 288 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 288 + OFFSET_X, 1, -74.2 * mirror, -581.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -74.2 * mirror, -581.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -99.1 * mirror, -585.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -99.1 * mirror, -585.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -82.5 * mirror, -606.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -82.5 * mirror, -606.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -82.5 * mirror, -585.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -82.5 * mirror, -585.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 201.2 * mirror, -894.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 201.2 * mirror, -894.2 , 0 );

setScaleKey( spep_0 + 288 + OFFSET_X, 1, 10.99, 10.99 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 10.99, 10.99 );

setRotateKey( spep_0 + 288 + OFFSET_X, 1, -25.5 * mirror );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -25.5 * mirror );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -9.1 * mirror );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -9.1 * mirror );

-- 敵の動き3
setDisp( spep_0 + 338 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 370 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 338 + OFFSET_X, 1, -104.7 * mirror, 111.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -104.7 * mirror, 111.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -105.6 * mirror, 113.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -105.6 * mirror, 113.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -106.4 * mirror, 115.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -106.4 * mirror, 115.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -107.2 * mirror, 117.5 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -107.2 * mirror, 117.5 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -108 * mirror, 119.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -108 * mirror, 119.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -108.8 * mirror, 121.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -108.8 * mirror, 121.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -109.6 * mirror, 123.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -109.6 * mirror, 123.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -110.4 * mirror, 126 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -110.4 * mirror, 126 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -111.2 * mirror, 128.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -111.2 * mirror, 128.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -112 * mirror, 130.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -112 * mirror, 130.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -112.8 * mirror, 132.4 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -112.8 * mirror, 132.4 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -113.6 * mirror, 134.6 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -113.6 * mirror, 134.6 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -114.4 * mirror, 136.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -114.4 * mirror, 136.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -115.2 * mirror, 138.8 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -115.2 * mirror, 138.8 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -116 * mirror, 141 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -116 * mirror, 141 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -116.8 * mirror, 143.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -116.8 * mirror, 143.1 , 0 );

setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.57, 1.57 );

setRotateKey( spep_0 + 338 + OFFSET_X, 1, -29.5 * mirror );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -29.5 * mirror );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -28.9 * mirror );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -28.9 * mirror );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -28.3 * mirror );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -28.3 * mirror );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -27.8 * mirror );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -27.8 * mirror );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -27.2 * mirror );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -27.2 * mirror );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -26.7 * mirror );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -26.7 * mirror );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -26.1 * mirror );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -26.1 * mirror );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -25.5 * mirror );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -25.5 * mirror );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -25 * mirror );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -25 * mirror );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -24.4 * mirror );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -24.4 * mirror );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -23.9 * mirror );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -23.9 * mirror );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -23.3 * mirror );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -23.3 * mirror );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -22.7 * mirror );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -22.7 * mirror );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -22.2 * mirror );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -22.2 * mirror );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -21.6 * mirror );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -21.6 * mirror );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -21 * mirror );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -21 * mirror );

-- 敵の動き4
setDisp( spep_0 + 444 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 514 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 470 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 444 + OFFSET_X, 1, -180.7 * mirror, -952.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -180.7 * mirror, -952.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -160.8 * mirror, -920.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -160.8 * mirror, -920.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -140.9 * mirror, -887.8 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -140.9 * mirror, -887.8 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -120.9 * mirror, -855.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -120.9 * mirror, -855.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -101 * mirror, -823.2 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -101 * mirror, -823.2 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -81.1 * mirror, -790.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -81.1 * mirror, -790.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -107.5 * mirror, -782.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -107.5 * mirror, -782.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 8.8 * mirror, -761.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 8.8 * mirror, -761.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 23.2 * mirror, -682.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 23.2 * mirror, -682.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -67.3 * mirror, -300.3 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -67.3 * mirror, -300.3 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -102 * mirror, -332.3 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -102 * mirror, -332.3 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -104.9 * mirror, -78.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -104.9 * mirror, -78.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 39.6 * mirror, 71.8 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 39.6 * mirror, 71.8 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 60.5 * mirror, 156.1 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 60.5 * mirror, 156.1 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 110 * mirror, 227.5 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 110 * mirror, 227.5 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 179.3 * mirror, 313.5 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 179.3 * mirror, 313.5 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 250.7 * mirror, 323.3 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 250.7 * mirror, 323.3 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 320.6 * mirror, 332.7 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 320.6 * mirror, 332.7 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 389 * mirror, 342.1 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 389 * mirror, 342.1 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 456.1 * mirror, 351.6 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 456.1 * mirror, 351.6 , 0 );

setScaleKey( spep_0 + 444 + OFFSET_X, 1, 14.98, 14.98 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 14.98, 14.98 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 13.98, 13.98 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 13.98, 13.98 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 13.48, 13.48 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 13.48, 13.48 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 11.98, 11.98 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 11.98, 11.98 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 9.98, 9.98 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.14, 1.14 );

setRotateKey( spep_0 + 444 + OFFSET_X, 1, -55.2 * mirror );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -55.2 * mirror );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 32.6 * mirror );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 32.6 * mirror );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 37.5 * mirror );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 37.5 * mirror );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 43.1 * mirror );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, 43.1 * mirror );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 37.5 * mirror );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, 37.5 * mirror );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 33.1 * mirror );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, 33.1 * mirror );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, 97.6 * mirror );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, 97.6 * mirror );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, 100.3 * mirror );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, 100.3 * mirror );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, 103.1 * mirror );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, 103.1 * mirror );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, 105.8 * mirror );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, 105.8 * mirror );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, 108.6 * mirror );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, 108.6 * mirror );

-- 敵の動き5
setDisp( spep_0 + 718 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 764 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 718 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 738 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 718 + OFFSET_X, 1, 34 * mirror, 171.8 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 34 * mirror, 171.8 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 34.2 * mirror, 171.5 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 34.2 * mirror, 171.5 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 35.7 * mirror, 169.5 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 35.7 * mirror, 169.5 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 39.6 * mirror, 164.1 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 39.6 * mirror, 164.1 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 47.3 * mirror, 153.4 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 47.3 * mirror, 153.4 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 60 * mirror, 135.9 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 60 * mirror, 135.9 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 78.9 * mirror, 109.7 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 78.9 * mirror, 109.7 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 105.4 * mirror, 73.3 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 105.4 * mirror, 73.3 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 140.6 * mirror, 25 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 140.6 * mirror, 25 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 185.8 * mirror, -36.9 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 185.8 * mirror, -36.9 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -364.8 * mirror, -398.1 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -364.8 * mirror, -398.1 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -259.9 * mirror, -322 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -259.9 * mirror, -322 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -155 * mirror, -245.9 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, -155 * mirror, -245.9 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -50 * mirror, -169.7 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -50 * mirror, -169.7 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 54.9 * mirror, -93.6 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 54.9 * mirror, -93.6 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 58.7 * mirror, -90.2 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 58.7 * mirror, -90.2 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 62.5 * mirror, -86.8 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 62.5 * mirror, -86.8 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 66.3 * mirror, -83.4 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 66.3 * mirror, -83.4 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 70.1 * mirror, -80.1 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 70.1 * mirror, -80.1 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 73.8 * mirror, -76.7 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 73.8 * mirror, -76.7 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 77.6 * mirror, -73.3 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 77.6 * mirror, -73.3 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 81.4 * mirror, -69.9 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 81.4 * mirror, -69.9 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 85.2 * mirror, -66.5 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 85.2 * mirror, -66.5 , 0 );

setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 12.86, 12.86 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 12.86, 12.86 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 749 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 751 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 752 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 718 + OFFSET_X, 1, 85 * mirror );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, 85 * mirror );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 764 + OFFSET_X, 1, 0 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--降りてくる
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1508, "",spep_0 + 75, 0, 23, -1);

--着地
SE004 = playSeVer2( spep_0 + 25, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 25, SE004, 153 );
SE005 = playSeVer2( spep_0 + 46, 1192, "",spep_0 + 72, 0, 10, -1);	
SE006 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE006, 150 );

--向かってくる
SE008 = playSeVer2( spep_0 + 180, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 180, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 185, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 185, SE010, 48 );
setTimeStretch( SE010, 1.25, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 250; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
-- ** SE ** --
--パンチ
SE011 = playSeVer2( spep_0 + 257, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 277, 1187, "", 0, 0, 0, -1);

--腕伸びる
SE012 = playSeVer2( spep_0 + 292, 1505, "",spep_0 + 481, 24, 17, -1);
setStartTimeMs( SE012,  583 );
setPitch( spep_0 + 292, SE012, 1000 );
setTimeStretch( SE012, 1.67, 30, 4 );
SE014 = playSeVer2( spep_0 + 300, 1356, "",spep_0 + 482, 14, 20, -1);
setStartTimeMs( SE014,  117 );
setPitch( spep_0 + 300, SE014, -500 );
setTimeStretch( SE014, 0.67, 30, 4 );
SE015 = playSeVer2( spep_0 + 302, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE015, 72 );
SE016 = playSeVer2( spep_0 + 302, 1291, "", 0, 0, 0, -1);

--腕折り返してくる
SE017 = playSeVer2( spep_0 + 380, 1116, "",spep_0 + 471, 0, 19, -1);

--敵つかむ
SE018 = playSeVer2( spep_0 + 450, 1012, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 454, 1388, "",spep_0 + 550, 0, 50, -1);
SE020 = playSeVer2( spep_0 + 457, 1006, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 457, 1385, "",spep_0 + 555, 0, 44, -1);
SE022 = playSeVer2( spep_0 + 457, 1497, "",spep_0 + 523, 0, 20, -1);

--振り回す
SE023 = playSeVer2( spep_0 + 500, 1188, "", 0, 15, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE023, 65 );
setStartTimeMs( SE023,  267 );
SE024 = playSeVer2( spep_0 + 508, 1500, "", 0, 0, 0, -1);

--ジャンプ
SE025 = playSeVer2( spep_0 + 545, 1000, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 545, 1117, "", 0, 0, 0, -1);

--踏み込む
SE028 = playSeVer2( spep_0 + 605, 1011, "",spep_0 + 663, 0, 25, -1);
setSeVolumeByWorkId( spep_0 + 605, SE028, 79 );
SE029 = playSeVer2( spep_0 + 605, 1395, "", 0, 0, 0, -1);

--投げ飛ばす
SE030 = playSeVer2( spep_0 + 667, 1027, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 667, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 667, SE031, 79 );

--投げ飛ばす
SE027 = playSeVer2( spep_0 + 670, 1385, "",spep_0 + 731, 5, 20, -1);
setSeVolumeByWorkId( spep_0 + 670, SE027, 148 );
setStartTimeMs( SE027,  1817 );
SE032 = playSeVer2( spep_0 + 680, 1121, "",spep_0 + 792, 0, 28, -1);

--画面遷移
SE033 = playSeVer2( spep_0 + 697, 1072, "", 0, 0, 0, -1);

--爆発
SE034 = playSeVer2( spep_0 + 763, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 763, SE034, 68 );

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 762); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 862F