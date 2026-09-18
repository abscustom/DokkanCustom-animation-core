--1028320:LR_孫悟飯(ビースト)_必殺技：斬空魔閃
--sp_effect_a1_00422
--sp2662

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 162695; --冒頭～叩きつけ・手前(ef_001)
SP_02 = 162696; --冒頭～叩きつけ・奥(ef_001b)
SP_03 = 162697; --溜め～ラスト(ef_002)

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
   if(_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        MAX_FRAME_0 = 722;
        spep_1 = MAX_FRAME_0 + 94;

        skipFrame(0, spep_1 + 6);  -- スキップ先フレーム指定

        SE051 = playSeVer2( spep_1 + 6 + 3, 1181, "",spep_1 + 110, 0, 30, -1);
        setSeVolumeByWorkId( spep_1+ 6 + 3, SE051, 153 );
        SE052 = playSeVer2( spep_1+ 6 + 3, 1176, "",spep_1 + 194, 0, 28, -1);
        SE053 = playSeVer2( spep_1+ 6 + 3, 1147, "",spep_1 + 164, 0, 14, -1);
        setSeVolumeByWorkId( spep_1+ 6 + 3, SE053, 54 );
        setPitch( spep_1+ 6 + 3, SE053, -800 );
        setTimeStretch( SE053, 0.47, 30, 4 );

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～叩きつけ
-------------------------------------------------
MAX_FRAME_0 = 722;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭～叩きつけ・手前(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);
base_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 冒頭～叩きつけ・奥(ef_001b)
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
spep_x = spep_0 + 70;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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
setDisp( spep_0 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 662 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 111 ); -- イレギュラー対応(モーション付きアニメのため1F単位で指定)
changeAnime( spep_0 + 277 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 278 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 279 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 281 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 283 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 284 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 285 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 287 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 289 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 290 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 291 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 293 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 295 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 296 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 297 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 298 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 299 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 300 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 301 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 302 + OFFSET_X, 1, 111 ); -- イレギュラー対応ここまで
changeAnime( spep_0 + 310 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 422 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 574 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 602 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 266 + OFFSET_X, 1, 673.5, 218.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 673.5, 218.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 604.9, 196.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 604.9, 196.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 545.4, 177.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 545.4, 177.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 495.3, 161.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 495.3, 161.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 455, 148.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 455, 148.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 416.6, 122 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 416.6, 122 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 396.2, 116.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 396.2, 116.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 361.3, 107.5 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 361.3, 107.5 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 311.9, 94.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 311.9, 94.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 290.9, 89.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 290.9, 89.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 268.1, 83.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 268.1, 83.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 260.4, 78.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 260.4, 78.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 247.9, 72.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 247.9, 72.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 230.3, 64.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 230.3, 64.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 207.2, 56.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 207.2, 56.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 178.2, 46.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 178.2, 46.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 142.8, 34.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 142.8, 34.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 100.9, 21.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 100.9, 21.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -51.1, 7.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -51.1, 7.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -42.3, 23 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -42.3, 23 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -50.8, 49.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -50.8, 49.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -30.4, 41.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -30.4, 41.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -33.1, 36.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -33.1, 36.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -18.5, 60.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -18.5, 60.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -21.3, 60.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -21.3, 60.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -14.1, 72 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -14.1, 72 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -21.4, 68.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -21.4, 68.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -17.2, 76.8 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -17.2, 76.8 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -27.4, 90.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -27.4, 90.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -20.2, 81.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -20.2, 81.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -30.4, 78.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -30.4, 78.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -22.9, 84.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -22.9, 84.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -30, 81.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -30, 81.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -25.6, 85.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -25.6, 85.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -27.1, 85.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -27.1, 85.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -28.8, 86.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -28.8, 86.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -30.5, 86.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -30.5, 86.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -32.4, 87.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -32.4, 87.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -34.5, 88.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -34.5, 88.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -36.6, 88.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -36.6, 88.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -38.9, 89.7 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -38.9, 89.7 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -41.2, 90.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -41.2, 90.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -43.8, 91.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -43.8, 91.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -46.4, 92.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -46.4, 92.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -49.1, 93 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -49.1, 93 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -52, 94 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -52, 94 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -55, 94.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -55, 94.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -58.1, 96 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -58.1, 96 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -61.4, 97 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -61.4, 97 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -62.9, 101.2 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -62.9, 101.2 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -64.8, 106.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -64.8, 106.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -67.1, 112.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -67.1, 112.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -69.8, 119.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -69.8, 119.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -72.8, 128.3 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -72.8, 128.3 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -76.3, 137.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -76.3, 137.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -80.1, 148.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -80.1, 148.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -84.3, 159.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -84.3, 159.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -88.9, 172 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -88.9, 172 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -93.8, 185.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -93.8, 185.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -99.2, 200.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -99.2, 200.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -104.9, 215.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -104.9, 215.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -111, 232.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -111, 232.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -117.5, 250.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -117.5, 250.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -124.4, 268.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -124.4, 268.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -131.7, 288.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -131.7, 288.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -139.3, 309.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -139.3, 309.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -147.3, 331.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -147.3, 331.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -155.8, 354.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -155.8, 354.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -164.5, 378.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -164.5, 378.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -173.7, 403 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -173.7, 403 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X ,1 ,-42.5 ,-11.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X ,1 ,-42.5 ,-11.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X ,1 ,-80.6 ,111.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X ,1 ,-80.6 ,111.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X ,1 ,-107.6 ,149.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X ,1 ,-107.6 ,149.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X ,1 ,-75.6 ,106.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X ,1 ,-75.6 ,106.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X ,1 ,-68.1 ,73 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X ,1 ,-68.1 ,73 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X ,1 ,-63.4 ,89.5 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X ,1 ,-63.4 ,89.5 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X ,1 ,-81.9 ,88.6 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X ,1 ,-81.9 ,88.6 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X ,1 ,-71.4 ,105 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X ,1 ,-71.4 ,105 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X ,1 ,-81.2 ,101.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X ,1 ,-81.2 ,101.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X ,1 ,-79.4 ,120.6 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X ,1 ,-79.4 ,120.6 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X ,1 ,-93 ,139 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X ,1 ,-93 ,139 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X ,1 ,-87.4 ,136.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X ,1 ,-87.4 ,136.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X ,1 ,-105.8 ,138.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X ,1 ,-105.8 ,138.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X ,1 ,-95.3 ,151.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X ,1 ,-95.3 ,151.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X ,1 ,-108 ,153.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X ,1 ,-108 ,153.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X ,1 ,-103.3 ,167.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X ,1 ,-103.3 ,167.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X ,1 ,-113.1 ,180.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X ,1 ,-113.1 ,180.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X ,1 ,-111.3 ,182.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X ,1 ,-111.3 ,182.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X ,1 ,-335.1 ,508 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X ,1 ,-335.1 ,508 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X ,1 ,-506.5 ,782.7 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X ,1 ,-506.5 ,782.7 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X ,1 ,-642.8 ,989.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X ,1 ,-642.8 ,989.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X ,1 ,-738.2 ,1134.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X ,1 ,-738.2 ,1134.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X ,1 ,-792.7 ,1217.1 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X ,1 ,-792.7 ,1217.1 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 300.6, -556.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 300.6, -556.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 217.4, -403.6 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 217.4, -403.6 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 134.3, -250.4 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 134.3, -250.4 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 51.1, -97.1 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 51.1, -97.1 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 39.2, -75.2 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 39.2, -75.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 27.3, -53.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 27.3, -53.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 15.4, -31.5 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 15.4, -31.5 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 3.6, -9.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 3.6, -9.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 2.2, -7 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 2.2, -7 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 0.8, -4.5 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 0.8, -4.5 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -0.6, -1.9 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -0.6, -1.9 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -2, 0.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -2, 0.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -3.4, 3.2 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -3.4, 3.2 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -4.8, 5.7 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -4.8, 5.7 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -6.2, 8.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -6.2, 8.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -8.8, -2.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -8.8, -2.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -13, -19.6 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -13, -19.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -18.9, -43.3 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -18.9, -43.3 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -26.3, -73.4 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -26.3, -73.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -35.4, -110.1 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -35.4, -110.1 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -45.8, -153.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -45.8, -153.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -48.2, -155.3 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -48.2, -155.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -50.5, -157.1 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -50.5, -157.1 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -53, -159 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -53, -159 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -55.5, -160.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -55.5, -160.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -57.9, -162.8 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, -57.9, -162.8 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -60.4, -164.6 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -60.4, -164.6 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -62.9, -166.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -62.9, -166.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -65.4, -168.6 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -65.4, -168.6 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -68.1, -170.6 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -68.1, -170.6 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -70.6, -172.6 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -70.6, -172.6 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -73.5, -174.7 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -73.5, -174.7 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -17.7, -149.7 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -17.7, -149.7 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -10.2, -143.5 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -10.2, -143.5 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -25.8, -137.3 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -25.8, -137.3 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -12.5, -160.1 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -12.5, -160.1 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -28.1, -180 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -28.1, -180 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -14.8, -176.8 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -14.8, -176.8 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -21.8, -196.7 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -21.8, -196.7 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -17.1, -193.4 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -17.1, -193.4 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -24.1, -195.9 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -24.1, -195.9 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -19.5, -210.1 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -19.5, -210.1 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -26.4, -221.3 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -26.4, -221.3 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -21.8, -226.7 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -21.8, -226.7 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -28.8, -237.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -28.8, -237.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -28, -274.2 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -28, -274.2 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -123.3, -297.7 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -123.3, -297.7 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -169.3, -404.4 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -169.3, -404.4 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -254.8, -602.5 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -254.8, -602.5 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -379.7, -892 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -379.7, -892 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -544.1, -1273 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -544.1, -1273 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 102, 234.7 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 102, 234.7 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 79.8, 179.7 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 79.8, 179.7 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 58.1, 126.3 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 58.1, 126.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 37, 74.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 37, 74.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 16.6, 23.9 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, 16.6, 23.9 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -3.3, -25.1 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -3.3, -25.1 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -22.5, -72.6 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -22.5, -72.6 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -41.2, -118.6 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -41.2, -118.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -59.3, -163.1 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -59.3, -163.1 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -76.7, -206.2 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -76.7, -206.2 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -93.6, -247.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -93.6, -247.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -109.9, -287.8 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -109.9, -287.8 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -125.5, -326.4 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -125.5, -326.4 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -140.6, -363.5 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -140.6, -363.5 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -155.1, -399.1 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -155.1, -399.1 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -174.7, -439 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 266 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 43.3 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 42.6 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 41.3 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, 36.5 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, -75.6 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, -75.9 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, -75.9 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, -76.1 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, -76.1 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, -76.6 );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, -76.9 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, -77.4 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, -77.4 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, -77.9 );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, -78.1 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, -78.1 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, -78.3 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, -78.3 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, -78.6 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, -78.6 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, -78.8 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, -78.8 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, -68 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, -68 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, -71.3 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, -74.5 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, -74.5 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, -78.7 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, -78.7 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, -90.6 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, -90.6 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, -92.3 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, -92.3 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -94 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, -94 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, -95.6 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, -95.6 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -97.2 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, -97.2 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, -98.8 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, -98.8 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, -100.3 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, -100.3 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, -101.8 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, -101.8 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, -103.2 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, -104.6 );
setRotateKey( spep_0 + 651 + OFFSET_X, 1, -104.6 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, -105.9 );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, -105.9 );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, -107.2 );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, -107.2 );
setRotateKey( spep_0 + 656 + OFFSET_X, 1, -108.4 );
setRotateKey( spep_0 + 657 + OFFSET_X, 1, -108.4 );
setRotateKey( spep_0 + 658 + OFFSET_X, 1, -109.6 );
setRotateKey( spep_0 + 659 + OFFSET_X, 1, -109.6 );
setRotateKey( spep_0 + 660 + OFFSET_X, 1, -110.7 );
setRotateKey( spep_0 + 661 + OFFSET_X, 1, -110.7 );
setRotateKey( spep_0 + 662 + OFFSET_X, 1, -111.8 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 182, 0, 22, -1);
setPitch( spep_0 + 0, SE001, -1200 );
setTimeStretch( SE001, 0.2, 30, 4 );

--イナヅマ
SE003 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 170, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 65 );
setPitch( spep_0 + 0, SE003, -800 );
setTimeStretch( SE003, 0.47, 30, 4 );

--オーラ
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 50 );
setPitch( spep_0 + 0, SE004, -800 );
setTimeStretch( SE004, 0.47, 30, 4 );

--目開く
SE005 = playSeVer2( spep_0 + 2, 1373, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 4, 1374, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 68 );
setStartTimeMs( SE002,  867 );

--オーラ
SE006 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE006, 50 );
setPitch( spep_0 + 18, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE007, 50 );
setPitch( spep_0 + 42, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );
SE008 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE008, 50 );
setPitch( spep_0 + 66, SE008, -800 );
setTimeStretch( SE008, 0.47, 30, 4 );
SE010 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE010, 50 );
setPitch( spep_0 + 90, SE010, -800 );
setTimeStretch( SE010, 0.47, 30, 4 );
SE011 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE011, 50 );
setPitch( spep_0 + 114, SE011, -800 );
setTimeStretch( SE011, 0.47, 30, 4 );

--オーラ
SE013 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE013, 50 );
setPitch( spep_0 + 138, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );
SE014 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE014, 50 );
setPitch( spep_0 + 162, SE014, -800 );
setTimeStretch( SE014, 0.47, 30, 4 );

--向かってくる
SE015 = playSeVer2( spep_0 + 164, 1452, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_0 + 164, SE015, 190 );
SE018 = playSeVer2( spep_0 + 164, 1277, "", 0, 0, 0, 0.7);
SE019 = playSeVer2( spep_0 + 164, 1019, "", 0, 0, 0, 0.7);
SE020 = playSeVer2( spep_0 + 164, 1278, "",spep_0 + 424, 0, 88, 0.7);
setSeVolumeByWorkId( spep_0 + 164, SE020, 68 );

--近づいていく
SE012 = playSeVer2( spep_0 + 176, 1356, "",spep_0 + 330, 28, 22, -1);
setStartTimeMs( SE012,  767 );
setPitch( spep_0 + 176, SE012, 500 );
setTimeStretch( SE012, 1.33, 30, 4 );
SE021 = playSeVer2( spep_0 + 226, 1019, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 226, 1176, "",spep_0 + 330, 0, 22, -1);
setPitch( spep_0 + 226, SE022, -1200 );
setTimeStretch( SE022, 0.2, 30, 4 );
SE023 = playSeVer2( spep_0 + 226, 1147, "",spep_0 + 326, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 226, SE023, 53 );
setPitch( spep_0 + 226, SE023, -800 );
setTimeStretch( SE023, 0.47, 30, 4 );

--敵ヒット
SE024 = playSeVer2( spep_0 + 290, 1126, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 290, SE024, 89 );
setPitch( spep_0 + 290, SE024, 300 );
setTimeStretch( SE024, 1.2, 30, 4 );
SE025 = playSeVer2( spep_0 + 290, 1067, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 290, 1153, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 290, 1187, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 290; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 0, SE024, 0);
    stopSe( SP_dodge - 0, SE025, 0);
    stopSe( SP_dodge - 0, SE026, 0);
    stopSe( SP_dodge - 0, SE027, 0);

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
--右下から近づく
SE028 = playSeVer2( spep_0 + 338, 1116, "",spep_0 + 384, 0, 18, -1);
SE029 = playSeVer2( spep_0 + 338, 1019, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 338, 1147, "",spep_0 + 508, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 338, SE030, 56 );
setPitch( spep_0 + 338, SE030, -800 );
setTimeStretch( SE030, 0.47, 30, 4 );

--右下から近づく
SE031 = playSeVer2( spep_0 + 354, 1072, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 372, 1176, "",spep_0 + 512, 30, 18, -1);
setPitch( spep_0 + 372, SE032, -1200 );
setTimeStretch( SE032, 0.2, 30, 4 );
SE033 = playSeVer2( spep_0 + 402, 1019, "",spep_0 + 468, 0, 42, -1);

--アッパー
SE034 = playSeVer2( spep_0 + 406, 1359, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 408, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE036 = playSeVer2( spep_0 + 468, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE036, 65 );
SE037 = playSeVer2( spep_0 + 470, 1109, "", 0, 0, 0, -1);

--敵追いつく
SE038 = playSeVer2( spep_0 + 504, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 506, 1043, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 522, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE040, 174 );

--エルボー
SE041 = playSeVer2( spep_0 + 558, 1123, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 564, 1187, "", 0, 0, 0, -1);

--敵落ちていく
SE044 = playSeVer2( spep_0 + 594, 1027, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 594, 1183, "",spep_0 + 674, 0, 14, -1);
SE043 = playSeVer2( spep_0 + 614, 1121, "",spep_0 + 678, 20, 14, -1);
setStartTimeMs( SE043,  533 );
SE046 = playSeVer2( spep_0 + 624, 1277, "",spep_0 + 756, 0, 26, -1);

--地面激突
SE047 = playSeVer2( spep_0 + 652, 1159, "",spep_0 + 750, 0, 22, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --722F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 溜め～ラスト
-------------------------------------------------
MAX_FRAME_1 = 408;

-- ** エフェクト等 ** --
finish_0 = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); --溜め～ラスト(ef_002)
setEffMoveKey( spep_1 + 0, finish_0, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0, 0);
setEffAlphaKey( spep_1 + 0, finish_0, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1+ 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--気弾溜め
SE049 = playSeVer2( spep_1 + 70, 1210, "",spep_1 + 204, 16, 16, -1);
setStartTimeMs( SE049,  1433 );
setPitch( spep_1 + 70, SE049, -500 );
setTimeStretch( SE049, 0.67, 30, 4 );

--画面遷移
SE050 = playSeVer2( spep_1 + -6, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + -6, SE050, 71 );
SE051 = playSeVer2( spep_1 + -6, 1181, "",spep_1 + 110, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + -6, SE051, 153 );
SE052 = playSeVer2( spep_1 + -6, 1176, "",spep_1 + 194, 0, 28, -1);
SE053 = playSeVer2( spep_1 + -6, 1147, "",spep_1 + 164, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + -6, SE053, 54 );
setPitch( spep_1 + -6, SE053, -800 );
setTimeStretch( SE053, 0.47, 30, 4 );

--手を前に出す
SE054 = playSeVer2( spep_1 + 26, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE054, 82 );

--気弾溜め
SE055 = playSeVer2( spep_1 + 62, 1440, "",spep_1 + 164, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 62, SE055, 124 );
SE056 = playSeVer2( spep_1 + 62, 1396, "",spep_1 + 196, 0, 16, -1);
setPitch( spep_1 + 62, SE056, -400 );
setTimeStretch( SE056, 0.73, 30, 4 );
SE057 = playSeVer2( spep_1 + 62, 1296, "",spep_1 + 198, 0, 20, -1);

--気弾発射
SE058 = playSeVer2( spep_1 + 166, 1223, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_1 + 166, 1145, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_1 + 166, 1193, "",spep_1 + 262, 0, 26, -1);
SE061 = playSeVer2( spep_1 + 166, 1177, "",spep_1 + 262, 0, 18, -1);

--気弾残像
SE062 = playSeVer2( spep_1 + 238, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 238, SE062, 63 );
SE063 = playSeVer2( spep_1 + 238, 1338, "", 0, 0, 0, -1);

--爆発
SE064 = playSeVer2( spep_1 + 276, 1159, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_1 + 284, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 290); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 408F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～叩きつけ
-------------------------------------------------
MAX_FRAME_0 = 722;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭～叩きつけ・手前(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);
base_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 冒頭～叩きつけ・奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 70;
 
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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
setDisp( spep_0 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 662 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 11 );--イレギュラー対応 ここから
changeAnime( spep_0 + 277 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 278 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 279 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 281 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 283 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 284 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 285 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 286 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 287 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 289 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 290 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 291 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 293 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 295 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 296 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 297 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 298 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 299 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 300 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 301 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 302 + OFFSET_X, 1, 11 );--イレギュラー対応 ここまで
changeAnime( spep_0 + 310 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 422 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 574 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 602 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 266 + OFFSET_X, 1, -673.5, 218.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -673.5, 218.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -604.9, 196.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -604.9, 196.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -545.4, 177.8 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -545.4, 177.8 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -495.3, 161.6 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -495.3, 161.6 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -455, 148.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -455, 148.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -416.6, 122 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -416.6, 122 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -396.2, 116.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -396.2, 116.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -361.3, 107.5 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -361.3, 107.5 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -311.9, 94.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -311.9, 94.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -290.9, 89.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -290.9, 89.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -268.1, 83.3 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -268.1, 83.3 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -260.4, 78.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -260.4, 78.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -247.9, 72.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -247.9, 72.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -230.3, 64.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -230.3, 64.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -207.2, 56.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -207.2, 56.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -178.2, 46.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -178.2, 46.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -142.8, 34.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -142.8, 34.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -100.9, 21.1 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -100.9, 21.1 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 51.1, 7.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 51.1, 7.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 42.3, 23 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 42.3, 23 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 50.8, 49.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 50.8, 49.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 30.4, 41.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 30.4, 41.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 33.1, 36.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 33.1, 36.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 18.5, 60.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 18.5, 60.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 21.3, 60.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 21.3, 60.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 14.1, 72 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 14.1, 72 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 21.4, 68.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 21.4, 68.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 17.2, 76.8 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 17.2, 76.8 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 27.4, 90.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 27.4, 90.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 20.2, 81.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 20.2, 81.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 30.4, 78.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 30.4, 78.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 22.9, 84.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 22.9, 84.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 30, 81.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 30, 81.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 25.6, 85.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 25.6, 85.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 27.1, 85.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 27.1, 85.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 28.8, 86.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 28.8, 86.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 30.5, 86.9 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 30.5, 86.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 32.4, 87.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 32.4, 87.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 34.5, 88.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 34.5, 88.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 36.6, 88.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 36.6, 88.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 38.9, 89.7 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 38.9, 89.7 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 41.2, 90.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 41.2, 90.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 43.8, 91.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 43.8, 91.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 46.4, 92.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 46.4, 92.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 49.1, 93 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 49.1, 93 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 52, 94 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 52, 94 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 55, 94.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 55, 94.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 58.1, 96 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 58.1, 96 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 61.4, 97 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 61.4, 97 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 62.9, 101.2 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 62.9, 101.2 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 64.8, 106.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 64.8, 106.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 67.1, 112.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 67.1, 112.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 69.8, 119.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 69.8, 119.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 72.8, 128.3 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 72.8, 128.3 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 76.3, 137.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 76.3, 137.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 80.1, 148.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 80.1, 148.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 84.3, 159.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 84.3, 159.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 88.9, 172 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 88.9, 172 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 93.8, 185.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 93.8, 185.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 99.2, 200.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 99.2, 200.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 104.9, 215.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 104.9, 215.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 111, 232.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 111, 232.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 117.5, 250.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 117.5, 250.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 124.4, 268.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 124.4, 268.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 131.7, 288.6 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 131.7, 288.6 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 139.3, 309.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 139.3, 309.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 147.3, 331.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 147.3, 331.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 155.8, 354.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 155.8, 354.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 164.5, 378.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 164.5, 378.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 173.7, 403 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 173.7, 403 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X ,1 ,42.5 ,-11.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X ,1 ,42.5 ,-11.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X ,1 ,80.6 ,111.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X ,1 ,80.6 ,111.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X ,1 ,107.6 ,149.5 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X ,1 ,107.6 ,149.5 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X ,1 ,75.6 ,106.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X ,1 ,75.6 ,106.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X ,1 ,68.1 ,73 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X ,1 ,68.1 ,73 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X ,1 ,63.4 ,89.5 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X ,1 ,63.4 ,89.5 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X ,1 ,81.9 ,88.6 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X ,1 ,81.9 ,88.6 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X ,1 ,71.4 ,105 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X ,1 ,71.4 ,105 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X ,1 ,81.2 ,101.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X ,1 ,81.2 ,101.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X ,1 ,79.4 ,120.6 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X ,1 ,79.4 ,120.6 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X ,1 ,93 ,139 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X ,1 ,93 ,139 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X ,1 ,87.4 ,136.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X ,1 ,87.4 ,136.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X ,1 ,105.8 ,138.1 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X ,1 ,105.8 ,138.1 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X ,1 ,95.3 ,151.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X ,1 ,95.3 ,151.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X ,1 ,108 ,153.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X ,1 ,108 ,153.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X ,1 ,103.3 ,167.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X ,1 ,103.3 ,167.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X ,1 ,113.1 ,180.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X ,1 ,113.1 ,180.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X ,1 ,111.3 ,182.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X ,1 ,111.3 ,182.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X ,1 ,335.1 ,508 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X ,1 ,335.1 ,508 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X ,1 ,506.5 ,782.7 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X ,1 ,506.5 ,782.7 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X ,1 ,642.8 ,989.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X ,1 ,642.8 ,989.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X ,1 ,738.2 ,1134.4 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X ,1 ,738.2 ,1134.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X ,1 ,792.7 ,1217.1 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X ,1 ,792.7 ,1217.1 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -300.6, -556.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -300.6, -556.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -217.4, -403.6 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -217.4, -403.6 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -134.3, -250.4 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -134.3, -250.4 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -51.1, -97.1 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -51.1, -97.1 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -39.2, -75.2 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -39.2, -75.2 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -27.3, -53.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -27.3, -53.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -15.4, -31.5 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -15.4, -31.5 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -3.6, -9.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -3.6, -9.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -2.2, -7 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -2.2, -7 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -0.8, -4.5 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -0.8, -4.5 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 0.6, -1.9 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 0.6, -1.9 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 2, 0.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 2, 0.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 3.4, 3.2 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 3.4, 3.2 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 4.8, 5.7 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 4.8, 5.7 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 6.2, 8.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 6.2, 8.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 8.8, -2.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 8.8, -2.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 13, -19.6 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 13, -19.6 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 18.9, -43.3 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 18.9, -43.3 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 26.3, -73.4 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 26.3, -73.4 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 35.4, -110.1 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 35.4, -110.1 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 45.8, -153.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 45.8, -153.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 48.2, -155.3 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 48.2, -155.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 50.5, -157.1 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 50.5, -157.1 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 53, -159 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 53, -159 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 55.5, -160.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 55.5, -160.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 57.9, -162.8 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 57.9, -162.8 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 60.4, -164.6 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 60.4, -164.6 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 62.9, -166.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 62.9, -166.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 65.4, -168.6 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 65.4, -168.6 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 68.1, -170.6 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 68.1, -170.6 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 70.6, -172.6 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 70.6, -172.6 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 73.5, -174.7 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 73.5, -174.7 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 17.7, -149.7 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 17.7, -149.7 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 10.2, -143.5 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 10.2, -143.5 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 25.8, -137.3 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 25.8, -137.3 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 12.5, -160.1 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 12.5, -160.1 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 28.1, -180 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 28.1, -180 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 14.8, -176.8 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 14.8, -176.8 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 21.8, -196.7 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 21.8, -196.7 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 17.1, -193.4 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 17.1, -193.4 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 24.1, -195.9 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 24.1, -195.9 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 19.5, -210.1 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 19.5, -210.1 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 26.4, -221.3 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 26.4, -221.3 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 21.8, -226.7 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 21.8, -226.7 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 28.8, -237.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 28.8, -237.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 28, -274.2 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 28, -274.2 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 123.3, -297.7 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 123.3, -297.7 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 169.3, -404.4 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 169.3, -404.4 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 254.8, -602.5 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 254.8, -602.5 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 379.7, -892 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 379.7, -892 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 544.1, -1273 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 544.1, -1273 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -102, 234.7 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -102, 234.7 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -79.8, 179.7 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -79.8, 179.7 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -58.1, 126.3 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -58.1, 126.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -37, 74.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -37, 74.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -16.6, 23.9 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -16.6, 23.9 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, 3.3, -25.1 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 3.3, -25.1 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 22.5, -72.6 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 22.5, -72.6 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 41.2, -118.6 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 41.2, -118.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 59.3, -163.1 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 59.3, -163.1 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, 76.7, -206.2 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, 76.7, -206.2 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, 93.6, -247.7 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, 93.6, -247.7 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 109.9, -287.8 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 109.9, -287.8 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 125.5, -326.4 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, 125.5, -326.4 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, 140.6, -363.5 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, 140.6, -363.5 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 155.1, -399.1 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 155.1, -399.1 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 174.7, -439 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 266 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -43.3 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -42.6 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -41.3 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 75.6 );
setRotateKey( spep_0 + 575 + OFFSET_X, 1, 75.6 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 75.9 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, 75.9 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, 76.1 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 76.1 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, 76.4 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, 76.6 );
setRotateKey( spep_0 + 583 + OFFSET_X, 1, 76.6 );
setRotateKey( spep_0 + 584 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, 76.9 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 77.1 );
setRotateKey( spep_0 + 587 + OFFSET_X, 1, 77.1 );
setRotateKey( spep_0 + 588 + OFFSET_X, 1, 77.4 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, 77.4 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_0 + 591 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_0 + 592 + OFFSET_X, 1, 77.9 );
setRotateKey( spep_0 + 593 + OFFSET_X, 1, 77.9 );
setRotateKey( spep_0 + 594 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_0 + 595 + OFFSET_X, 1, 78.1 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_0 + 597 + OFFSET_X, 1, 78.3 );
setRotateKey( spep_0 + 598 + OFFSET_X, 1, 78.6 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 78.6 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 78.8 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 78.8 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 68 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 68 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 69.2 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, 69.2 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 71.3 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 74.5 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 74.5 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 78.7 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, 78.7 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, 90.6 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, 90.6 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, 92.3 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 92.3 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 94 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 94 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 95.6 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 95.6 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, 97.2 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, 97.2 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, 98.8 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, 98.8 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, 100.3 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, 100.3 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, 101.8 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, 103.2 );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, 103.2 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 104.6 );
setRotateKey( spep_0 + 651 + OFFSET_X, 1, 104.6 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, 105.9 );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, 105.9 );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, 107.2 );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, 107.2 );
setRotateKey( spep_0 + 656 + OFFSET_X, 1, 108.4 );
setRotateKey( spep_0 + 657 + OFFSET_X, 1, 108.4 );
setRotateKey( spep_0 + 658 + OFFSET_X, 1, 109.6 );
setRotateKey( spep_0 + 659 + OFFSET_X, 1, 109.6 );
setRotateKey( spep_0 + 660 + OFFSET_X, 1, 110.7 );
setRotateKey( spep_0 + 661 + OFFSET_X, 1, 110.7 );
setRotateKey( spep_0 + 662 + OFFSET_X, 1, 111.8 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 182, 0, 22, -1);
setPitch( spep_0 + 0, SE001, -1200 );
setTimeStretch( SE001, 0.2, 30, 4 );

--イナヅマ
SE003 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 170, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 65 );
setPitch( spep_0 + 0, SE003, -800 );
setTimeStretch( SE003, 0.47, 30, 4 );

--オーラ
SE004 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 50 );
setPitch( spep_0 + 0, SE004, -800 );
setTimeStretch( SE004, 0.47, 30, 4 );

--目開く
SE005 = playSeVer2( spep_0 + 2, 1373, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 4, 1374, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 68 );
setStartTimeMs( SE002,  867 );

--オーラ
SE006 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE006, 50 );
setPitch( spep_0 + 18, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE007, 50 );
setPitch( spep_0 + 42, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );
SE008 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE008, 50 );
setPitch( spep_0 + 66, SE008, -800 );
setTimeStretch( SE008, 0.47, 30, 4 );
SE010 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE010, 50 );
setPitch( spep_0 + 90, SE010, -800 );
setTimeStretch( SE010, 0.47, 30, 4 );
SE011 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE011, 50 );
setPitch( spep_0 + 114, SE011, -800 );
setTimeStretch( SE011, 0.47, 30, 4 );

--オーラ
SE013 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE013, 50 );
setPitch( spep_0 + 138, SE013, -800 );
setTimeStretch( SE013, 0.47, 30, 4 );
SE014 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE014, 50 );
setPitch( spep_0 + 162, SE014, -800 );
setTimeStretch( SE014, 0.47, 30, 4 );

--向かってくる
SE015 = playSeVer2( spep_0 + 164, 1452, "", 0, 0, 0, 0.7);
setSeVolumeByWorkId( spep_0 + 164, SE015, 190 );
SE018 = playSeVer2( spep_0 + 164, 1277, "", 0, 0, 0, 0.7);
SE019 = playSeVer2( spep_0 + 164, 1019, "", 0, 0, 0, 0.7);
SE020 = playSeVer2( spep_0 + 164, 1278, "",spep_0 + 424, 0, 88, 0.7);
setSeVolumeByWorkId( spep_0 + 164, SE020, 68 );

--近づいていく
SE012 = playSeVer2( spep_0 + 176, 1356, "",spep_0 + 330, 28, 22, -1);
setStartTimeMs( SE012,  767 );
setPitch( spep_0 + 176, SE012, 500 );
setTimeStretch( SE012, 1.33, 30, 4 );
SE021 = playSeVer2( spep_0 + 226, 1019, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 226, 1176, "",spep_0 + 330, 0, 22, -1);
setPitch( spep_0 + 226, SE022, -1200 );
setTimeStretch( SE022, 0.2, 30, 4 );
SE023 = playSeVer2( spep_0 + 226, 1147, "",spep_0 + 326, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 226, SE023, 53 );
setPitch( spep_0 + 226, SE023, -800 );
setTimeStretch( SE023, 0.47, 30, 4 );

--敵ヒット
SE024 = playSeVer2( spep_0 + 290, 1126, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 290, SE024, 89 );
setPitch( spep_0 + 290, SE024, 300 );
setTimeStretch( SE024, 1.2, 30, 4 );
SE025 = playSeVer2( spep_0 + 290, 1067, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 290, 1153, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 290, 1187, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 290; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 0, SE024, 0);
    stopSe( SP_dodge - 0, SE025, 0);
    stopSe( SP_dodge - 0, SE026, 0);
    stopSe( SP_dodge - 0, SE027, 0);

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
--右下から近づく
SE028 = playSeVer2( spep_0 + 338, 1116, "",spep_0 + 384, 0, 18, -1);
SE029 = playSeVer2( spep_0 + 338, 1019, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 338, 1147, "",spep_0 + 508, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 338, SE030, 56 );
setPitch( spep_0 + 338, SE030, -800 );
setTimeStretch( SE030, 0.47, 30, 4 );

--右下から近づく
SE031 = playSeVer2( spep_0 + 354, 1072, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 372, 1176, "",spep_0 + 512, 30, 18, -1);
setPitch( spep_0 + 372, SE032, -1200 );
setTimeStretch( SE032, 0.2, 30, 4 );
SE033 = playSeVer2( spep_0 + 402, 1019, "",spep_0 + 468, 0, 42, -1);

--アッパー
SE034 = playSeVer2( spep_0 + 406, 1359, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 408, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE036 = playSeVer2( spep_0 + 468, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE036, 65 );
SE037 = playSeVer2( spep_0 + 470, 1109, "", 0, 0, 0, -1);

--敵追いつく
SE038 = playSeVer2( spep_0 + 504, 1182, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 506, 1043, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 522, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE040, 174 );

--エルボー
SE041 = playSeVer2( spep_0 + 558, 1123, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 564, 1187, "", 0, 0, 0, -1);

--敵落ちていく
SE044 = playSeVer2( spep_0 + 594, 1027, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 594, 1183, "",spep_0 + 674, 0, 14, -1);
SE043 = playSeVer2( spep_0 + 614, 1121, "",spep_0 + 678, 20, 14, -1);
setStartTimeMs( SE043,  533 );
SE046 = playSeVer2( spep_0 + 624, 1277, "",spep_0 + 756, 0, 26, -1);

--地面激突
SE047 = playSeVer2( spep_0 + 652, 1159, "",spep_0 + 750, 0, 22, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0; --722F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 溜め～ラスト
-------------------------------------------------
MAX_FRAME_1 = 408;

-- ** エフェクト等 ** --
finish_0 = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); --溜め～ラスト(ef_002)
setEffMoveKey( spep_1 + 0, finish_0, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_0, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_0, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_0, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_0, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_0, 0);
setEffAlphaKey( spep_1 + 0, finish_0, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1+ 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--気弾溜め
SE049 = playSeVer2( spep_1 + 70, 1210, "",spep_1 + 204, 16, 16, -1);
setStartTimeMs( SE049,  1433 );
setPitch( spep_1 + 70, SE049, -500 );
setTimeStretch( SE049, 0.67, 30, 4 );

--画面遷移
SE050 = playSeVer2( spep_1 + -6, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + -6, SE050, 71 );
SE051 = playSeVer2( spep_1 + -6, 1181, "",spep_1 + 110, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + -6, SE051, 153 );
SE052 = playSeVer2( spep_1 + -6, 1176, "",spep_1 + 194, 0, 28, -1);
SE053 = playSeVer2( spep_1 + -6, 1147, "",spep_1 + 164, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + -6, SE053, 54 );
setPitch( spep_1 + -6, SE053, -800 );
setTimeStretch( SE053, 0.47, 30, 4 );

--手を前に出す
SE054 = playSeVer2( spep_1 + 26, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 26, SE054, 82 );

--気弾溜め
SE055 = playSeVer2( spep_1 + 62, 1440, "",spep_1 + 164, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 62, SE055, 124 );
SE056 = playSeVer2( spep_1 + 62, 1396, "",spep_1 + 196, 0, 16, -1);
setPitch( spep_1 + 62, SE056, -400 );
setTimeStretch( SE056, 0.73, 30, 4 );
SE057 = playSeVer2( spep_1 + 62, 1296, "",spep_1 + 198, 0, 20, -1);

--気弾発射
SE058 = playSeVer2( spep_1 + 166, 1223, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_1 + 166, 1145, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_1 + 166, 1193, "",spep_1 + 262, 0, 26, -1);
SE061 = playSeVer2( spep_1 + 166, 1177, "",spep_1 + 262, 0, 18, -1);

--気弾残像
SE062 = playSeVer2( spep_1 + 238, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 238, SE062, 63 );
SE063 = playSeVer2( spep_1 + 238, 1338, "", 0, 0, 0, -1);

--爆発
SE064 = playSeVer2( spep_1 + 276, 1159, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_1 + 284, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 290); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1); -- 408F

end