-- 4027300: LR_超サイヤ人トランクス(未来)_フィニッシュ：ファイナルホープスラッシュ
-- sp_effect_b4_00302
-- fi0009

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162253;  -- トランクス構え→溜めて斬りつけ ef_001
SP_002 = 162254;  -- トランクス構え→溜めて斬りつけ ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 230 -12 -1 );        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 720 -1 );      -- スキップ先フレーム指定
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- トランクス構え→溜めて斬りつけ ef_001 (920F)
------------------------------------------------------
MAX_FRAME_0 = 920;

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
SP_02 = entryEffect( spep_0 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-- ** 敵キャラクター ** --

-- 敵の動き1
setDisp( spep_0 + 276 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 390 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 276 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 322 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 276 + OFFSET_X, 1, 19, 92.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 10.8, 98.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 10.8, 98.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 10.7, 98.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 10.7, 98.3 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 10.6, 98.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 10.6, 98.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 83, 130.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 83, 130.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 88, 119.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 88, 119.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 72.2, 135.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 72.2, 135.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 75.5, 121.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 75.5, 121.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 86.6, 120.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 86.6, 120.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 70.4, 135.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 70.4, 135.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 73.2, 122 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 73.2, 122 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 83.8, 120.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 83.8, 120.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 66.9, 136.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 66.9, 136.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 69, 123.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 69, 123.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 63.2, 137.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 63.2, 137.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 71.1, 134.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 71.1, 134.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 68.3, 135.2 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 68.3, 135.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 83.3, 130.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 83.3, 130.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 68.3, 135.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 68.3, 135.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 16.8, 130.6 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 16.8, 130.6 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 75.5, 139.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 75.5, 139.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 98, 143.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 98, 143.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 102.6, 143.9 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 102.6, 143.9 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 63.6, 138 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 63.6, 138 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 24.6, 132.2 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 24.6, 132.2 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 26.1, 132.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 26.1, 132.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 27.7, 132.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 27.7, 132.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 29.2, 133.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 29.2, 133.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 30.7, 133.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 30.7, 133.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 32.3, 133.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 32.3, 133.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 33.8, 134 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 33.8, 134 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 35.4, 134.3 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 35.4, 134.3 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 36.9, 134.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 36.9, 134.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 38.5, 134.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 38.5, 134.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 40, 135.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 40, 135.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 41.6, 135.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 41.6, 135.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 43.1, 135.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 43.1, 135.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 44.7, 136.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 44.7, 136.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 46.2, 136.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 46.2, 136.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 47.7, 136.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 47.7, 136.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 49.3, 137 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 49.3, 137 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 50.8, 137.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 50.8, 137.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 66.8, 141.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 66.8, 141.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 66.8, 141.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 80.6, 179.7 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 80.6, 179.7 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 97.4, 183.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 97.4, 183.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 110, 185.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 110, 185.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 119, 187.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 119, 187.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 125, 189.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 125, 189.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 128.7, 189.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 128.7, 189.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 130.6, 190.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 130.6, 190.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 131.3, 190.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 131.3, 190.4 , 0 );

setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.18, 1.18 );

setRotateKey( spep_0 + 276 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -58 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -58 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -58 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -45 );

-- 敵の動き2
setDisp( spep_0 + 720 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 800 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 720 + OFFSET_X, 1, 142, 10.5 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 142, 10.5 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 161.3, -29.7 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 161.3, -29.7 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 117.1, -8.9 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 117.1, -8.9 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 165.4, -32.1 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 165.4, -32.1 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 108.4, -16.1 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 108.4, -16.1 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 144.3, -30.2 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 144.3, -30.2 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 119.6, -19.2 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 119.6, -19.2 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 136.6, -36.2 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 136.6, -36.2 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 123.6, -21.8 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 123.6, -21.8 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 103.5, -35.5 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 103.5, -35.5 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 127.8, -44.2 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 127.8, -44.2 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 118.2, -30.9 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 118.2, -30.9 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 95.1, -47.8 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 95.1, -47.8 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 110.3, -40.1 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 110.3, -40.1 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 88.3, -56.3 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 88.3, -56.3 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 101.1, -46 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 101.1, -46 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 107, -53.2 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 107, -53.2 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 94, -51.3 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 94, -51.3 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 101.3, -44.2 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 101.3, -44.2 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 107, -51.4 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 107, -51.4 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 97.2, -49.5 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 97.2, -49.5 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 101.6, -43.9 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 101.6, -43.9 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 107.3, -49.6 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 107.3, -49.6 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 99.5, -47.7 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 99.5, -47.7 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 101.8, -41.4 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 101.8, -41.4 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 106.8, -45.1 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 106.8, -45.1 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 99.3, -45.3 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 99.3, -45.3 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 102.1, -40.3 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 102.1, -40.3 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 107.1, -43.3 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 107.1, -43.3 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 100, -43.5 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 100, -43.5 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 105.6, -39.9 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 105.6, -39.9 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 102.4, -37.9 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 102.4, -37.9 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 105.9, -38.7 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 105.9, -38.7 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 102.6, -36.7 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 102.6, -36.7 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 106, -37.5 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 106, -37.5 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 102.7, -35.5 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 102.7, -35.5 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 106.1, -36.3 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 106.1, -36.3 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 103.5, -33.4 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 103.5, -33.4 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 106.3, -35.1 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 106.3, -35.1 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 103.7, -32 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 103.7, -32 , 0 );

setScaleKey( spep_0 + 720 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 800 + OFFSET_X, 1, 1.76, 1.76 );

setRotateKey( spep_0 + 720 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, -44.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 354, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 366, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 158 );
SE003 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 368, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 141 );

--構える
SE004 = playSeVer2( spep_0 + 36, 1301, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 40, 1347, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 45 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 64, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE006, 63 );

--凄む
SE007 = playSeVer2( spep_0 + 156, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE007, 89 );
setPitch( spep_0 + 156, SE007, -600 );
setTimeStretch( SE007, 0.6, 30, 4 );
SE008 = playSeVer2( spep_0 + 156, 1303, "",spep_0 + 290, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 156, SE008, 58 );

--剣構える
SE009 = playSeVer2( spep_0 + 212, 1143, "",spep_0 + 228, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 212, SE009, 61 );
SE010 = playSeVer2( spep_0 + 218, 1389, "", 0, 0, 0, -1);

-- ** ボイス ** --
-- 「オレは負けない！」
SE_6_685 = playVoice( spep_0 + 60, 685 );
setVoiceVolume( spep_0 + 60, 685, 100 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 230 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE001, 0);
  stopSe( SP_dodge - 12, SE002, 0);
  stopSe( SP_dodge - 12, SE003, 0);
  stopSe( SP_dodge - 12, SE004, 0);
  stopSe( SP_dodge - 12, SE005, 0);
  stopSe( SP_dodge - 12, SE006, 0);
  stopSe( SP_dodge - 12, SE007, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE009, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  stopSe( SP_dodge - 12, SE_6_685, 0);

  pauseAll( SP_dodge, 67);   
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--向かっていく
SE011 = playSeVer2( spep_0 + 268, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 268, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE007, 100 );

--剣突き刺す
SE013 = playSeVer2( spep_0 + 284, 1426, "", 0, 0, 0, -1);
setPitch( spep_0 + 284, SE013, 300 );
setTimeStretch( SE013, 1.2, 30, 4 );
SE014 = playSeVer2( spep_0 + 302, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE014, 76 );
SE015 = playSeVer2( spep_0 + 302, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE015, 89 );
setPitch( spep_0 + 302, SE015, 500 );
setTimeStretch( SE015, 1.33, 30, 4 );

--風圧
SE016 = playSeVer2( spep_0 + 314, 1258, "",spep_0 + 424, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 314, SE016, 56 );
SE017 = playSeVer2( spep_0 + 316, 1427, "",spep_0 + 468, 0, 78, -1);

--環境音
SE018 = playSeVer2( spep_0 + 362, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE018, 25 );

--オーラ
SE019 = playSeVer2( spep_0 + 370, 1181, "",spep_0 + 804, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 370, SE019, 158 );
SE020 = playSeVer2( spep_0 + 370, 1407, "",spep_0 + 810, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 370, SE020, 141 );
SE021 = playSeVer2( spep_0 + 370, 1288, "",spep_0 + 718, 0, 58, -1);

--剣突きあげる
SE022 = playSeVer2( spep_0 + 720, 1426, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE022, 65 );
setStartTimeMs( SE022,  200 );
SE023 = playSeVer2( spep_0 + 722, 1142, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 722, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 722, 1068, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 722, 1264, "",spep_0 + 892, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 722, SE026, 77 );

--敵消える
SE027 = playSeVer2( spep_0 + 810, 1268, "",spep_0 + 916, 6, 66, -1);
setSeVolumeByWorkId( spep_0 + 810, SE027, 229 );
setStartTimeMs( SE027,  167 );
SE028 = playSeVer2( spep_0 + 808, 1373, "",spep_0 + 896, 20, 38, -1);
setSeVolumeByWorkId( spep_0 + 808, SE028, 65 );
SE029 = playSeVer2( spep_0 + 808, 1188, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_0 + 808, SE029, 84 );
SE030 = playSeVer2( spep_0 + 820, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 820, SE030, 114 );

-- ** ボイス ** --
-- 「たあああ！！」
playVoice( spep_0 + 226, 686 );
setVoiceVolume( spep_0 + 226, 686, 100 );
-- 「おまえにオレたちの生きる思いをつぶさせるものか！！」
playVoice( spep_0 + 382, 687 );
setVoiceVolume( spep_0 + 382, 687, 100 );

-- ** ダメージ表示 ** --
-- hideKoScreen();
dealDamage( spep_0 + 800 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 920

end