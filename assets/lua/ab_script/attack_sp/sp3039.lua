--1034000:UR_フリーザ(第二形態)_必殺技：デスストーム
--sp_effect_a7_00078
--sp3039

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164525; --衝撃波を放つ〜フィニッシュ ef_002

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


ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;

        timing_skip = 660;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_0 + timing_skip , SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

    else
        setupMovie(0, SP_01, 0, 1);
    end

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 766;
CARD_FRAME = 98;

spep_1 = spep_0 + CARD_FRAME + 94;
-- ** エフェクト等 ** --
start_f = entryEffect( spep_1 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 衝撃波を放つ〜フィニッシュ(ef_002)
setEffMoveKey( spep_1 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_1 + 0, start_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_1 + 0, start_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 300 + OFFSET_X, 1, 1);
setDisp( spep_0 + 360 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 300 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 300 + OFFSET_X, 1, 230.5 * mirror, -171.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 230.5 * mirror, -171.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 230.5 * mirror, -175.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 230.5 * mirror, -175.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 229.5 * mirror, -167.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 229.5 * mirror, -167.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 230.5 * mirror, -174.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 230.5 * mirror, -174.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 230.5 * mirror, -169.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 230.5 * mirror, -169.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 229.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 229.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 230.5 * mirror, -168.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 230.5 * mirror, -168.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 229.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 229.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 227.5 * mirror, -161.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 227.5 * mirror, -161.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 231.5 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 231.5 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 235.5 * mirror, -158.9 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 235.5 * mirror, -158.9 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 231.5 * mirror, -184.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 231.5 * mirror, -184.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 226.5 * mirror, -156.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 226.5 * mirror, -156.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 234.5 * mirror, -182.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 234.5 * mirror, -182.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 235.5 * mirror, -156.9 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 235.5 * mirror, -156.9 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 227.5 * mirror, -179.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 227.5 * mirror, -179.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 227.5 * mirror, -166.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 227.5 * mirror, -166.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 233.5 * mirror, -174.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 233.5 * mirror, -174.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 230.5 * mirror, -166.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 230.5 * mirror, -166.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 229.5 * mirror, -176.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 229.5 * mirror, -176.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 231.5 * mirror, -166.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 231.5 * mirror, -166.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 228.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 228.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 228.5 * mirror, -167.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 228.5 * mirror, -167.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 230.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 230.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 230.5 * mirror, -168.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 230.5 * mirror, -168.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 230.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 230.5 * mirror, -173.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 229.5 * mirror, -167.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 229.5 * mirror, -167.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 231.5 * mirror, -174.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 231.5 * mirror, -174.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 228.5 * mirror, -168.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 228.5 * mirror, -168.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 230.5 * mirror, -174.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 230.5 * mirror, -174.9 , 0 );

setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_0 + 300 + OFFSET_X, 1, -4.2 * mirror );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -4.2 * mirror );

-- 敵の動き2
setDisp( spep_0 + 420 + OFFSET_X, 1, 1);
setDisp( spep_0 + 486 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 420 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_0 + 470 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 420 + OFFSET_X, 1, 125.5 * mirror, -136.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 125.5 * mirror, -136.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 127.9 * mirror, -133.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 127.9 * mirror, -133.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 126.2 * mirror, -140.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 126.2 * mirror, -140.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 127.6 * mirror, -131.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 127.6 * mirror, -131.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 131.9 * mirror, -138.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 131.9 * mirror, -138.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 132.1 * mirror, -131.3 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 132.1 * mirror, -131.3 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 132.1 * mirror, -137 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 132.1 * mirror, -137 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 133.1 * mirror, -127.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 133.1 * mirror, -127.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 135.9 * mirror, -139.6 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 135.9 * mirror, -139.6 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 135.6 * mirror, -130.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 135.6 * mirror, -130.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 134.3 * mirror, -139.2 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 134.3 * mirror, -139.2 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 138.8 * mirror, -128.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 138.8 * mirror, -128.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 134.2 * mirror, -138 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 134.2 * mirror, -138 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 134.6 * mirror, -128.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 134.6 * mirror, -128.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 138.9 * mirror, -137.8 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 138.9 * mirror, -137.8 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 139.2 * mirror, -128.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 139.2 * mirror, -128.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 136.2 * mirror, -136.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 136.2 * mirror, -136.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 135.3 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 135.3 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 140.3 * mirror, -136.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 140.3 * mirror, -136.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 139.3 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 139.3 * mirror, -129.7 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 136.4 * mirror, -136.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 136.4 * mirror, -136.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 138.4 * mirror, -129.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 138.4 * mirror, -129.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 138.4 * mirror, -137.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 138.4 * mirror, -137.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 141 * mirror, -125.1 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 141 * mirror, -125.1 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 145 * mirror, -135.1 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 145 * mirror, -135.1 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 150.6 * mirror, -72.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 150.6 * mirror, -72.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 147.6 * mirror, -81.1 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 147.6 * mirror, -81.1 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 156 * mirror, -48.2 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 156 * mirror, -48.2 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 157 * mirror, -57.2 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 157 * mirror, -57.2 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 173.2 * mirror, 19 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 173.2 * mirror, 19 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 175.2 * mirror, 11 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 175.2 * mirror, 11 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 243.1 * mirror, 132.2 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 243.1 * mirror, 132.2 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 420 * mirror, 436.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 420 * mirror, 436.1 , 0 );

setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 2.78, 2.78 );

setRotateKey( spep_0 + 420 + OFFSET_X, 1, -12 * mirror );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -12 * mirror );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -12.1 * mirror );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -12.1 * mirror );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -12.3 * mirror );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -12.3 * mirror );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -12.5 * mirror );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -12.5 * mirror );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -12.6 * mirror );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -12.6 * mirror );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -12.7 * mirror );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -12.7 * mirror );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -12.9 * mirror );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -12.9 * mirror );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -13 * mirror );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -13 * mirror );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -13.1 * mirror );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -13.1 * mirror );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -13.2 * mirror );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -13.2 * mirror );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -13.3 * mirror );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -13.3 * mirror );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -13.4 * mirror );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -13.4 * mirror );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -13.5 * mirror );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -13.5 * mirror );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -15.6 * mirror );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -15.6 * mirror );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -89.4 * mirror );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -89.4 * mirror );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -89.2 * mirror );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -89.2 * mirror );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -80.4 * mirror );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -80.4 * mirror );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -66.5 * mirror );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -66.5 * mirror );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -64.3 * mirror );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -64.3 * mirror );

-- 敵の動き3
setDisp( spep_0 + 520 + OFFSET_X, 1, 1);
setDisp( spep_0 + 542 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 520 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 520 + OFFSET_X, 1, -643.4 * mirror, -369.7 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -643.4 * mirror, -369.7 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -510.7 * mirror, -281.8 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -510.7 * mirror, -281.8 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -378 * mirror, -194.9 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -378 * mirror, -194.9 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -245.3 * mirror, -108 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -245.3 * mirror, -108 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -112.6 * mirror, -21 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -112.6 * mirror, -21 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 20.1 * mirror, 65.9 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 20.1 * mirror, 65.9 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 152.8 * mirror, 152.8 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 152.8 * mirror, 152.8 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 285.5 * mirror, 239.8 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 285.5 * mirror, 239.8 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 418.2 * mirror, 326.7 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 418.2 * mirror, 326.7 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 550.9 * mirror, 413.6 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 550.9 * mirror, 413.6 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 683.7 * mirror, 500.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 683.7 * mirror, 500.5 , 0 );

setScaleKey( spep_0 + 520 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_0 + 520 + OFFSET_X, 1, -15.7 * mirror );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, -15.7 * mirror );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -14.2 * mirror );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, -14.2 * mirror );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -12.7 * mirror );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, -12.7 * mirror );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -11.1 * mirror );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, -11.1 * mirror );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -9.6 * mirror );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, -9.6 * mirror );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, -8.1 * mirror );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -8.1 * mirror );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, -6.6 * mirror );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, -6.6 * mirror );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, -5 * mirror );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -5 * mirror );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -3.5 * mirror );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, -3.5 * mirror );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, -2 * mirror );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -2 * mirror );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, -0.5 * mirror );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, -0.5 * mirror );

-- 敵の動き4
setDisp( spep_0 + 568 + OFFSET_X, 1, 1);
setDisp( spep_0 + 612 + OFFSET_X, 1, 0);

changeAnimeBySide( spep_0 + 568 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 568 + OFFSET_X, 1, 562.2 * mirror, -399.6 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 562.2 * mirror, -399.6 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 563.3 * mirror, -435.6 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 563.3 * mirror, -435.6 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 43.5 * mirror, -387.4 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 43.5 * mirror, -387.4 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 45.5 * mirror, -414.4 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 45.5 * mirror, -414.4 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -229 * mirror, -142.1 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -229 * mirror, -142.1 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -228.9 * mirror, -177.2 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -228.9 * mirror, -177.2 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -198.8 * mirror, 154.8 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -198.8 * mirror, 154.8 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -199.8 * mirror, 134.8 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -199.8 * mirror, 134.8 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -29.4 * mirror, 260.3 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -29.4 * mirror, 260.3 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -25.4 * mirror, 248.2 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -25.4 * mirror, 248.2 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 94.2 * mirror, 187 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 94.2 * mirror, 187 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 101.1 * mirror, 164.9 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 101.1 * mirror, 164.9 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 145.4 * mirror, -15 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 145.4 * mirror, -15 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 135.2 * mirror, -32 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 135.2 * mirror, -32 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -10.8 * mirror, -69.4 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -10.8 * mirror, -69.4 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -12.7 * mirror, -66.7 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -12.7 * mirror, -66.7 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -30.8 * mirror, 28.2 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -30.8 * mirror, 28.2 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -25.3 * mirror, 35.6 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -25.3 * mirror, 35.6 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 33.3 * mirror, 29.5 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 33.3 * mirror, 29.5 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 34.5 * mirror, 27.4 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 34.5 * mirror, 27.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 6.4 * mirror, 6 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 6.4 * mirror, 6 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 6.4 * mirror, 4.7 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 6.4 * mirror, 4.7 , 0 );

setScaleKey( spep_0 + 568 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 575 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 579 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 580 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 583 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 584 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_0 + 568 + OFFSET_X, 1, -114.1 * mirror );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, -114.1 * mirror );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, -78.4 * mirror );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, -78.4 * mirror );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 3.2 * mirror );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 3.2 * mirror );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 86.2 * mirror );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, 86.2 * mirror );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, 165.1 * mirror );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, 165.1 * mirror );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, 204.2 * mirror );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 204.2 * mirror );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 288.2 * mirror );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 288.2 * mirror );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 392.7 * mirror );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 392.7 * mirror );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 461.5 * mirror );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 461.5 * mirror );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 587.2 * mirror );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 587.2 * mirror );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 665.9 * mirror );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 665.9 * mirror );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 121, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );
SE003 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 113, 0, 9, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );

--入り
SE004 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 214; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
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
--気を溜める
SE006 = playSeVer2( spep_0 + 204, 1291, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE006, 54 );
SE007 = playSeVer2( spep_0 + 204, 1194, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE007, 123 );
SE008 = playSeVer2( spep_0 + 204, 1222, "",spep_0 + 295, 0, 45, -1);
SE009 = playSeVer2( spep_0 + 204, 1438, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 216, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE010, 148 );
setPitch( spep_0 + 216, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );
SE011 = playSeVer2( spep_0 + 216, 1226, "",spep_0 + 471, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 216, SE011, 62 );

--地面われる
SE012 = playSeVer2( spep_0 + 295, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 295, SE012, 77 );
SE013 = playSeVer2( spep_0 + 299, 1017, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 301, 1379, "", 0, 0, 0, -1);

--爆発する
SE015 = playSeVer2( spep_0 + 344, 1214, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 358, 1023, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 394, 1044, "",spep_0 + 510, 0, 28, -1);
SE018 = playSeVer2( spep_0 + 394, 1188, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE019 = playSeVer2( spep_0 + 428, 1215, "",spep_0 + 687, 0, 29, -1);
setSeVolumeByWorkId( spep_0 + 428, SE019, 63 );
SE020 = playSeVer2( spep_0 + 428, 1278, "",spep_0 + 677, 0, 17, -1);
setPitch( spep_0 + 428, SE020, -300 );
setTimeStretch( SE020, 0.8, 30, 4 );
SE021 = playSeVer2( spep_0 + 466, 1258, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 468, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 487, 1304, "", 0, 0, 0, -1);

--ラスト爆発
SE024 = playSeVer2( spep_0 + 663, 1159, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 663, 1156, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 694, 1067, "", 0, 0, 0, -1);

-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 666); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 766F