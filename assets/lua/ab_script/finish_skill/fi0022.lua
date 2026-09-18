--4033770:LR_孫悟空_フィニッシュ(成功)：魔貫光殺砲
--sp_effect_a9_00167
--fi0022

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164469; --羽交締めの悟空に魔貫光殺砲 ef_001

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
           skipFrame(0, spep_0 + 260 -13 );        -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 260 -13, SP_01, spep_0 + 260 -13, 1);

       else
           skipFrame(0, spep_0 + 882 );      -- スキップ先フレーム指定
           setupMovie(spep_0 + 882, SP_01, spep_0 + 882, 1);

            --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
            SE019 = playSeVer2( spep_0 + 885, 1447, "",spep_0 + 1160, 0, 212, -1);
            setSeVolumeByWorkId( spep_0 + 885, SE019, 84 );
            SE022 = playSeVer2( spep_0 + 885, 1227, "",spep_0 + 1152, 0, 204, -1);
            setSeVolumeByWorkId( spep_0 + 885, SE022, 122 );
            SE023 = playSeVer2( spep_0 + 885, 1214, "",spep_0 + 1152, 0, 110, -1);
        end
    else 
        setupMovie(0, SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- 開幕〜フィニッシュまで
------------------------------------------------------
MAX_FRAME_0 = 1246;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_0 + 280 + OFFSET_X, 1, 1);
setDisp(spep_0 + 420 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 280 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 280 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 31.9, -204.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 40.8, -212.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 32.5, -212.9 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 38.4, -218.1 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 38.4, -218.1 , 0 );

setScaleKey( spep_0 + 280 + OFFSET_X, 1, 6.67, 6.67 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 6.67, 6.67 );

setRotateKey( spep_0 + 280 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -4 );

--敵の動き2
setDisp(spep_0 + 674 + OFFSET_X, 1, 1);
setDisp(spep_0 + 828 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 674 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 738 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 674 + OFFSET_X, 1, -168.6, 1.8 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -168.6, 1.8 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -161.7, 1.4 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -161.7, 1.4 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -165, -3.5 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -165, -3.5 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -154.1, -16.8 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -154.1, -16.8 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -153.7, -4.4 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -153.7, -4.4 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -148.4, -24.3 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -148.4, -24.3 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -137.5, -19.9 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -137.5, -19.9 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -150.7, -23.7 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -150.7, -23.7 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -140.5, -34.1 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -140.5, -34.1 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -143.3, -31.5 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -143.3, -31.5 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -142, -43.9 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -142, -43.9 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -130.5, -39.7 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -130.5, -39.7 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -135.8, -44.2 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -135.8, -44.2 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -123.6, -57.8 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -123.6, -57.8 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -128.9, -53.2 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -128.9, -53.2 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -125.1, -68.1 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -125.1, -68.1 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -111.1, -65.7 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -111.1, -65.7 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -121.5, -70.4 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -121.5, -70.4 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -109.2, -87.4 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -109.2, -87.4 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -108.1, -85.8 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -108.1, -85.8 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, -86, 33 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -95.3, -0.1 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, -100.7, 18.3 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, -70.1, 17.6 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -70.1, 17.6 , 0 );

setScaleKey( spep_0 + 674 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 701 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 737 + OFFSET_X, 1, 4.05, 4.05 );
setScaleKey( spep_0 + 738 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 10, 10 );

setRotateKey( spep_0 + 674 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, 18 );

--敵の動き3
setDisp(spep_0 + 882 + OFFSET_X, 1, 1);
setDisp(spep_0 + 1246 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 882 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 972 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 882 + OFFSET_X, 1, 17.8, 1.2 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, 17.8, 1.2 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, 20.3, 4.5 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, 20.3, 4.5 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, 11, 6.3 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, 11, 6.3 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 17.4, 2 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 17.4, 2 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, 17.7, 1.3 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, 20.4, -3 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, 14.1, -1.5 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 20.1, -2.5 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 16.1, -5 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 56.5, -42.2 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 56.5, -42.2 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 44.8, -45.5 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 44.8, -45.5 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 31.3, -49.4 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 31.3, -49.4 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 13.9, -54.4 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 13.9, -54.4 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, -1.5, -58.8 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, -1.5, -58.8 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, -17, -63.3 , 0 );
setMoveKey( spep_0 + 1063 + OFFSET_X, 1, -17, -63.3 , 0 );
setMoveKey( spep_0 + 1064 + OFFSET_X, 1, -32.4, -67.7 , 0 );
setMoveKey( spep_0 + 1075 + OFFSET_X, 1, -32.4, -67.7 , 0 );
setMoveKey( spep_0 + 1076 + OFFSET_X, 1, -44, -71 , 0 );
setMoveKey( spep_0 + 1077 + OFFSET_X, 1, -44, -71 , 0 );
setMoveKey( spep_0 + 1078 + OFFSET_X, 1, -50.7, -73 , 0 );
setMoveKey( spep_0 + 1079 + OFFSET_X, 1, -50.7, -73 , 0 );
setMoveKey( spep_0 + 1080 + OFFSET_X, 1, 104.6, -32.8 , 0 );
setMoveKey( spep_0 + 1081 + OFFSET_X, 1, 104.6, -32.8 , 0 );
setMoveKey( spep_0 + 1082 + OFFSET_X, 1, 104.8, -34 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, 104.8, -34 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, 105.1, -35.3 , 0 );
setMoveKey( spep_0 + 1085 + OFFSET_X, 1, 105.1, -35.3 , 0 );
setMoveKey( spep_0 + 1086 + OFFSET_X, 1, 105.4, -36.6 , 0 );
setMoveKey( spep_0 + 1087 + OFFSET_X, 1, 105.4, -36.6 , 0 );
setMoveKey( spep_0 + 1088 + OFFSET_X, 1, 105.7, -37.8 , 0 );
setMoveKey( spep_0 + 1089 + OFFSET_X, 1, 105.7, -37.8 , 0 );
setMoveKey( spep_0 + 1090 + OFFSET_X, 1, 105.9, -39.1 , 0 );
setMoveKey( spep_0 + 1091 + OFFSET_X, 1, 105.9, -39.1 , 0 );
setMoveKey( spep_0 + 1092 + OFFSET_X, 1, 106.2, -40.4 , 0 );
setMoveKey( spep_0 + 1093 + OFFSET_X, 1, 106.2, -40.4 , 0 );
setMoveKey( spep_0 + 1094 + OFFSET_X, 1, 106.5, -41.6 , 0 );
setMoveKey( spep_0 + 1095 + OFFSET_X, 1, 106.5, -41.6 , 0 );
setMoveKey( spep_0 + 1096 + OFFSET_X, 1, 106.8, -42.9 , 0 );
setMoveKey( spep_0 + 1097 + OFFSET_X, 1, 106.8, -42.9 , 0 );
setMoveKey( spep_0 + 1098 + OFFSET_X, 1, 107, -44.2 , 0 );
setMoveKey( spep_0 + 1099 + OFFSET_X, 1, 107, -44.2 , 0 );
setMoveKey( spep_0 + 1100 + OFFSET_X, 1, 107.3, -45.5 , 0 );
setMoveKey( spep_0 + 1101 + OFFSET_X, 1, 107.3, -45.5 , 0 );
setMoveKey( spep_0 + 1102 + OFFSET_X, 1, 107.6, -46.7 , 0 );
setMoveKey( spep_0 + 1103 + OFFSET_X, 1, 107.6, -46.7 , 0 );
setMoveKey( spep_0 + 1104 + OFFSET_X, 1, 107.9, -48 , 0 );
setMoveKey( spep_0 + 1105 + OFFSET_X, 1, 107.9, -48 , 0 );
setMoveKey( spep_0 + 1106 + OFFSET_X, 1, 108.1, -49.3 , 0 );
setMoveKey( spep_0 + 1107 + OFFSET_X, 1, 108.1, -49.3 , 0 );
setMoveKey( spep_0 + 1108 + OFFSET_X, 1, 108.4, -50.5 , 0 );
setMoveKey( spep_0 + 1109 + OFFSET_X, 1, 108.4, -50.5 , 0 );
setMoveKey( spep_0 + 1110 + OFFSET_X, 1, 108.7, -51.8 , 0 );
setMoveKey( spep_0 + 1111 + OFFSET_X, 1, 108.7, -51.8 , 0 );
setMoveKey( spep_0 + 1112 + OFFSET_X, 1, 109, -53.1 , 0 );
setMoveKey( spep_0 + 1113 + OFFSET_X, 1, 109, -53.1 , 0 );
setMoveKey( spep_0 + 1114 + OFFSET_X, 1, 109.2, -54.3 , 0 );
setMoveKey( spep_0 + 1115 + OFFSET_X, 1, 109.2, -54.3 , 0 );
setMoveKey( spep_0 + 1116 + OFFSET_X, 1, 109.5, -55.6 , 0 );
setMoveKey( spep_0 + 1117 + OFFSET_X, 1, 109.5, -55.6 , 0 );
setMoveKey( spep_0 + 1118 + OFFSET_X, 1, 109.8, -56.9 , 0 );
setMoveKey( spep_0 + 1119 + OFFSET_X, 1, 109.8, -56.9 , 0 );
setMoveKey( spep_0 + 1120 + OFFSET_X, 1, 110.1, -58.1 , 0 );
setMoveKey( spep_0 + 1121 + OFFSET_X, 1, 110.1, -58.1 , 0 );
setMoveKey( spep_0 + 1122 + OFFSET_X, 1, 110.3, -59.4 , 0 );
setMoveKey( spep_0 + 1123 + OFFSET_X, 1, 110.3, -59.4 , 0 );
setMoveKey( spep_0 + 1124 + OFFSET_X, 1, 110.6, -60.7 , 0 );
setMoveKey( spep_0 + 1125 + OFFSET_X, 1, 110.6, -60.7 , 0 );
setMoveKey( spep_0 + 1126 + OFFSET_X, 1, 110.9, -61.9 , 0 );
setMoveKey( spep_0 + 1127 + OFFSET_X, 1, 110.9, -61.9 , 0 );
setMoveKey( spep_0 + 1128 + OFFSET_X, 1, 111.2, -63.2 , 0 );
setMoveKey( spep_0 + 1129 + OFFSET_X, 1, 111.2, -63.2 , 0 );
setMoveKey( spep_0 + 1130 + OFFSET_X, 1, 111.4, -64.5 , 0 );
setMoveKey( spep_0 + 1131 + OFFSET_X, 1, 111.4, -64.5 , 0 );
setMoveKey( spep_0 + 1132 + OFFSET_X, 1, 111.7, -65.7 , 0 );
setMoveKey( spep_0 + 1133 + OFFSET_X, 1, 111.7, -65.7 , 0 );
setMoveKey( spep_0 + 1134 + OFFSET_X, 1, 112, -67 , 0 );
setMoveKey( spep_0 + 1135 + OFFSET_X, 1, 112, -67 , 0 );
setMoveKey( spep_0 + 1136 + OFFSET_X, 1, 112.3, -68.3 , 0 );
setMoveKey( spep_0 + 1137 + OFFSET_X, 1, 112.3, -68.3 , 0 );
setMoveKey( spep_0 + 1138 + OFFSET_X, 1, 112.5, -69.5 , 0 );
setMoveKey( spep_0 + 1139 + OFFSET_X, 1, 112.5, -69.5 , 0 );
setMoveKey( spep_0 + 1140 + OFFSET_X, 1, 112.8, -70.8 , 0 );
setMoveKey( spep_0 + 1141 + OFFSET_X, 1, 112.8, -70.8 , 0 );
setMoveKey( spep_0 + 1142 + OFFSET_X, 1, 113.1, -72.1 , 0 );
setMoveKey( spep_0 + 1143 + OFFSET_X, 1, 113.1, -72.1 , 0 );
setMoveKey( spep_0 + 1144 + OFFSET_X, 1, 113.4, -73.3 , 0 );
setMoveKey( spep_0 + 1145 + OFFSET_X, 1, 113.4, -73.3 , 0 );
setMoveKey( spep_0 + 1146 + OFFSET_X, 1, 113.6, -74.6 , 0 );
setMoveKey( spep_0 + 1147 + OFFSET_X, 1, 113.6, -74.6 , 0 );
setMoveKey( spep_0 + 1148 + OFFSET_X, 1, 113.9, -75.9 , 0 );
setMoveKey( spep_0 + 1153 + OFFSET_X, 1, 113.9, -75.9 , 0 );
setMoveKey( spep_0 + 1154 + OFFSET_X, 1, 114.5, -75.7 , 0 );
setMoveKey( spep_0 + 1163 + OFFSET_X, 1, 114.5, -75.7 , 0 );
setMoveKey( spep_0 + 1164 + OFFSET_X, 1, 104.3, -104.9 , 0 );
setMoveKey( spep_0 + 1165 + OFFSET_X, 1, 104.3, -104.9 , 0 );
setMoveKey( spep_0 + 1166 + OFFSET_X, 1, 134.3, -94.9 , 0 );
setMoveKey( spep_0 + 1167 + OFFSET_X, 1, 134.3, -94.9 , 0 );
setMoveKey( spep_0 + 1168 + OFFSET_X, 1, 101.7, -87.5 , 0 );
setMoveKey( spep_0 + 1169 + OFFSET_X, 1, 101.7, -87.5 , 0 );
setMoveKey( spep_0 + 1170 + OFFSET_X, 1, 135.7, -105.4 , 0 );
setMoveKey( spep_0 + 1171 + OFFSET_X, 1, 135.7, -105.4 , 0 );
setMoveKey( spep_0 + 1172 + OFFSET_X, 1, 123.8, -75.6 , 0 );
setMoveKey( spep_0 + 1173 + OFFSET_X, 1, 123.8, -75.6 , 0 );
setMoveKey( spep_0 + 1174 + OFFSET_X, 1, 112.6, -105.4 , 0 );
setMoveKey( spep_0 + 1175 + OFFSET_X, 1, 112.6, -105.4 , 0 );
setMoveKey( spep_0 + 1176 + OFFSET_X, 1, 143.7, -86.8 , 0 );
setMoveKey( spep_0 + 1177 + OFFSET_X, 1, 143.7, -86.8 , 0 );
setMoveKey( spep_0 + 1178 + OFFSET_X, 1, 106.6, -87.2 , 0 );
setMoveKey( spep_0 + 1179 + OFFSET_X, 1, 106.6, -87.2 , 0 );
setMoveKey( spep_0 + 1180 + OFFSET_X, 1, 141.6, -107.8 , 0 );
setMoveKey( spep_0 + 1181 + OFFSET_X, 1, 141.6, -107.8 , 0 );
setMoveKey( spep_0 + 1182 + OFFSET_X, 1, 127.6, -76.3 , 0 );
setMoveKey( spep_0 + 1183 + OFFSET_X, 1, 127.6, -76.3 , 0 );
setMoveKey( spep_0 + 1184 + OFFSET_X, 1, 127.3, -87.5 , 0 );
setMoveKey( spep_0 + 1185 + OFFSET_X, 1, 127.3, -87.5 , 0 );
setMoveKey( spep_0 + 1186 + OFFSET_X, 1, 137.8, -87.2 , 0 );
setMoveKey( spep_0 + 1187 + OFFSET_X, 1, 137.8, -87.2 , 0 );
setMoveKey( spep_0 + 1188 + OFFSET_X, 1, 127.3, -87.5 , 0 );
setMoveKey( spep_0 + 1189 + OFFSET_X, 1, 127.3, -87.5 , 0 );
setMoveKey( spep_0 + 1190 + OFFSET_X, 1, 140.6, -98 , 0 );
setMoveKey( spep_0 + 1191 + OFFSET_X, 1, 140.6, -98 , 0 );
setMoveKey( spep_0 + 1192 + OFFSET_X, 1, 138.8, -74.6 , 0 );
setMoveKey( spep_0 + 1193 + OFFSET_X, 1, 138.8, -74.6 , 0 );
setMoveKey( spep_0 + 1194 + OFFSET_X, 1, 132.9, -95.6 , 0 );
setMoveKey( spep_0 + 1195 + OFFSET_X, 1, 132.9, -95.6 , 0 );
setMoveKey( spep_0 + 1196 + OFFSET_X, 1, 147.9, -88.6 , 0 );
setMoveKey( spep_0 + 1197 + OFFSET_X, 1, 147.9, -88.6 , 0 );
setMoveKey( spep_0 + 1198 + OFFSET_X, 1, 137.5, -89.1 , 0 );
setMoveKey( spep_0 + 1199 + OFFSET_X, 1, 137.5, -89.1 , 0 );
setMoveKey( spep_0 + 1200 + OFFSET_X, 1, 148.3, -98.8 , 0 );
setMoveKey( spep_0 + 1201 + OFFSET_X, 1, 148.3, -98.8 , 0 );
setMoveKey( spep_0 + 1202 + OFFSET_X, 1, 146.5, -69.8 , 0 );
setMoveKey( spep_0 + 1203 + OFFSET_X, 1, 146.5, -69.8 , 0 );
setMoveKey( spep_0 + 1204 + OFFSET_X, 1, 142.3, -88.6 , 0 );
setMoveKey( spep_0 + 1205 + OFFSET_X, 1, 142.3, -88.6 , 0 );
setMoveKey( spep_0 + 1206 + OFFSET_X, 1, 156.3, -86.8 , 0 );
setMoveKey( spep_0 + 1207 + OFFSET_X, 1, 156.3, -86.8 , 0 );
setMoveKey( spep_0 + 1208 + OFFSET_X, 1, 142.7, -87.5 , 0 );
setMoveKey( spep_0 + 1209 + OFFSET_X, 1, 142.7, -87.5 , 0 );
setMoveKey( spep_0 + 1210 + OFFSET_X, 1, 155.3, -91.3 , 0 );
setMoveKey( spep_0 + 1211 + OFFSET_X, 1, 155.3, -91.3 , 0 );
setMoveKey( spep_0 + 1212 + OFFSET_X, 1, 154.6, -69 , 0 );
setMoveKey( spep_0 + 1213 + OFFSET_X, 1, 154.6, -69 , 0 );
setMoveKey( spep_0 + 1214 + OFFSET_X, 1, 150.4, -88.2 , 0 );
setMoveKey( spep_0 + 1215 + OFFSET_X, 1, 150.4, -88.2 , 0 );
setMoveKey( spep_0 + 1216 + OFFSET_X, 1, 163.7, -80.2 , 0 );
setMoveKey( spep_0 + 1217 + OFFSET_X, 1, 163.7, -80.2 , 0 );
setMoveKey( spep_0 + 1218 + OFFSET_X, 1, 152.1, -79.5 , 0 );
setMoveKey( spep_0 + 1219 + OFFSET_X, 1, 152.1, -79.5 , 0 );
setMoveKey( spep_0 + 1220 + OFFSET_X, 1, 163, -89.6 , 0 );
setMoveKey( spep_0 + 1221 + OFFSET_X, 1, 163, -89.6 , 0 );
setMoveKey( spep_0 + 1222 + OFFSET_X, 1, 160.2, -75.6 , 0 );
setMoveKey( spep_0 + 1223 + OFFSET_X, 1, 160.2, -75.6 , 0 );
setMoveKey( spep_0 + 1224 + OFFSET_X, 1, 157, -96.3 , 0 );
setMoveKey( spep_0 + 1225 + OFFSET_X, 1, 157, -96.3 , 0 );
setMoveKey( spep_0 + 1226 + OFFSET_X, 1, 170, -87.9 , 0 );
setMoveKey( spep_0 + 1227 + OFFSET_X, 1, 170, -87.9 , 0 );
setMoveKey( spep_0 + 1228 + OFFSET_X, 1, 159.5, -87.9 , 0 );
setMoveKey( spep_0 + 1229 + OFFSET_X, 1, 159.5, -87.9 , 0 );
setMoveKey( spep_0 + 1230 + OFFSET_X, 1, 172.4, -90.3 , 0 );
setMoveKey( spep_0 + 1231 + OFFSET_X, 1, 172.4, -90.3 , 0 );
setMoveKey( spep_0 + 1232 + OFFSET_X, 1, 168.2, -76 , 0 );
setMoveKey( spep_0 + 1233 + OFFSET_X, 1, 168.2, -76 , 0 );
setMoveKey( spep_0 + 1234 + OFFSET_X, 1, 164.7, -88.2 , 0 );
setMoveKey( spep_0 + 1235 + OFFSET_X, 1, 164.7, -88.2 , 0 );
setMoveKey( spep_0 + 1236 + OFFSET_X, 1, 178, -87.5 , 0 );
setMoveKey( spep_0 + 1237 + OFFSET_X, 1, 178, -87.5 , 0 );
setMoveKey( spep_0 + 1238 + OFFSET_X, 1, 167.2, -88.2 , 0 );
setMoveKey( spep_0 + 1239 + OFFSET_X, 1, 167.2, -88.2 , 0 );
setMoveKey( spep_0 + 1240 + OFFSET_X, 1, 180.1, -90 , 0 );
setMoveKey( spep_0 + 1241 + OFFSET_X, 1, 180.1, -90 , 0 );
setMoveKey( spep_0 + 1242 + OFFSET_X, 1, 174.5, -76 , 0 );
setMoveKey( spep_0 + 1243 + OFFSET_X, 1, 174.5, -76 , 0 );
setMoveKey( spep_0 + 1246 + OFFSET_X, 1, 165.8, -99.3 , 0 );

setScaleKey( spep_0 + 882 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 883 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 884 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 885 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 886 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 971 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 972 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 983 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 984 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 997 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 998 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 1015 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 1016 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 1031 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 1032 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 1047 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_0 + 1048 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 1063 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 1064 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 1075 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 1076 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 1077 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 1078 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 1079 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 1080 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 1246 + OFFSET_X, 1, 0.58, 0.58 );

setRotateKey( spep_0 + 882 + OFFSET_X, 1, 86 );
setRotateKey( spep_0 + 971 + OFFSET_X, 1, 86 );
setRotateKey( spep_0 + 972 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 983 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 984 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 997 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 998 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 1015 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 1016 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 1031 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 1032 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 1047 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 1048 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 1063 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_0 + 1064 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_0 + 1075 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_0 + 1076 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 1077 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 1078 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 1079 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 1080 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 1246 + OFFSET_X, 1, 16 );

setBlendColor(spep_0 + 1154 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor(spep_0 + 1246 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--溜め
SE001 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 326, 0, 38, -1);
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 316, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 61 );
SE003 = playSeVer2( spep_0 + 0, 1243, "",spep_0 + 320, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 94 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 8, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 63 );

-- ** ボイス ** --
--「またせたな………覚悟はいいか…」
playVoice( spep_0 + 11, 1189 );
setVoiceVolume( spep_0 + 11, 1189, 122 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 260 ; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------
-- ** 音 ** --
--背景音
SE005 = playSeVer2( spep_0 + 270, 1264, "", 0, 0, 0, -1);

--ズーム
SE006 = playSeVer2( spep_0 + 422, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE006, 130 );
SE007 = playSeVer2( spep_0 + 422, 44, "", 0, 0, 0, -1);

--発射前溜め
SE008 = playSeVer2( spep_0 + 422, 1227, "",spep_0 + 652, 0, 18, -1);
SE009 = playSeVer2( spep_0 + 422, 1513, "",spep_0 + 648, 0, 16, -1);
SE010 = playSeVer2( spep_0 + 422, 1243, "",spep_0 + 646, 0, 8, -1);

--魔貫光殺砲飛んでいく
SE011 = playSeVer2( spep_0 + 718, 1400, "",spep_0 + 1158, 14, 210, -1);
setSeVolumeByWorkId( spep_0 + 718, SE011, 133 );
setStartTimeMs( SE011,  2133 );
setPitch( spep_0 + 718, SE011, 400 );
setTimeStretch( SE011, 1.27, 30, 4 );
SE013 = playSeVer2( spep_0 + 600, 1442, "",spep_0 + 708, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 600, SE013, 316 );

--腕前に出す
SE012 = playSeVer2( spep_0 + 600, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE012, 178 );

--魔貫光殺砲発射
SE014 = playSeVer2( spep_0 + 624, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 624, SE014, 71 );
SE015 = playSeVer2( spep_0 + 630, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 630, SE015, 79 );
SE016 = playSeVer2( spep_0 + 630, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 630, SE016, 126 );
SE017 = playSeVer2( spep_0 + 630, 1145, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 630, 1442, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 630, SE018, 316 );

--敵ヒット
SE019 = playSeVer2( spep_0 + 724, 1447, "",spep_0 + 1160, 0, 212, -1);
setSeVolumeByWorkId( spep_0 + 724, SE019, 84 );
SE020 = playSeVer2( spep_0 + 724, 1024, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 724, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE021, 65 );
SE022 = playSeVer2( spep_0 + 742, 1227, "",spep_0 + 1152, 0, 204, -1);
setSeVolumeByWorkId( spep_0 + 742, SE022, 130 );
SE023 = playSeVer2( spep_0 + 784, 1214, "",spep_0 + 1152, 0, 110, -1);

--敵ごと貫く
SE024 = playSeVer2( spep_0 + 888, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 888, SE024, 136 );
SE025 = playSeVer2( spep_0 + 894, 1068, "", 0, 0, 0, -1);

--画面遷移
SE026 = playSeVer2( spep_0 + 938, 8, "", 0, 0, 0, -1);

--貫く余韻
SE027 = playSeVer2( spep_0 + 938, 1022, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 954, 1122, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_0 + 1136, 1159, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 1136, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1136, SE030, 71 );
SE031 = playSeVer2( spep_0 + 1152, 1067, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 1152, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1152, SE032, 58 );

-- ** ボイス ** --
--「やれーーーっ！！！！」
playVoice( spep_0 + 256, 1190 );
setVoiceVolume( spep_0 + 256, 1190, 122 );

--「魔貫光殺砲！！！！！」
playVoice( spep_0 + 474, 1191 );
setVoiceVolume( spep_0 + 474, 1191, 122 );

if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1240 + OFFSET_X, 6, 6, 0, 0, 0, 0, 255);  -- black fade
end

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel( 0.0, 0.5 );
dealDamage( spep_0 + 1080 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 1246f

end