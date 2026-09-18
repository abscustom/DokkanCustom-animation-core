--4029990:UR_魔人ブウ(悪)_必殺技：イルサプライズ
--sp_effect_a2_00252
--sp2791

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163377;  -- 登場～カットインまで ef_001
SP_01b = 163378;  -- 登場～カットインまで ef_001b
SP_02 = 163379;  --カットイン後～フィニッシュまで ef_002
SP_02b = 163380;  --カットイン後～フィニッシュまで ef_002b


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
-- カットイン後～フィニッシュまで
-------------------------------------------------
MAX_FRAME_0 = 412;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カットイン後～フィニッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カットイン後～フィニッシュまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

setDisp( spep_0 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 416 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 286 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 286 + OFFSET_X, 1, 77.1, -113.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 77.1, -113.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 106.9, -123.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 106.9, -123.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 116.2, -153.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 116.2, -153.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 149.1, -166 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 149.1, -166 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 149.4, -163.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 149.4, -163.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 170.3, -168.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 170.3, -168.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 159.1, -184.2 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 159.1, -184.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 174.9, -184.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 174.9, -184.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 161.6, -171.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 161.6, -171.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 170.9, -174.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 170.9, -174.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 164.7, -181.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 164.7, -181.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 171.2, -181.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 171.2, -181.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 165.5, -174.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 165.5, -174.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 172.7, -175.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 172.7, -175.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 166.3, -182.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 166.3, -182.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 172.7, -182.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 172.7, -182.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 166.9, -175.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 166.9, -175.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 172.2, -177.8 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 172.2, -177.8 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 169.1, -181.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 169.1, -181.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 172.5, -181.4 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 172.5, -181.4 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 169.5, -178.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 169.5, -178.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 172, -179.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 172, -179.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 170.9, -180.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 170.9, -180.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 172.1, -180.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 172.1, -180.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 171.2, -179.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 171.2, -179.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 172.3, -179.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 172.3, -179.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 171.3, -180.8 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 171.3, -180.8 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 172.1, -180.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 172.1, -180.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 171.5, -180.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 171.5, -180.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 171.9, -180.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 171.9, -180.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 171.6, -180.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 171.6, -180.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 172, -180.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 172, -180.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 171.5, -180.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 171.5, -180.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 171.7, -180.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 171.7, -180.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 195.4, -201.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 195.4, -201.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 199, -224.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 199, -224.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 207.5, -223.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 207.5, -223.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 198.4, -215 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 198.4, -215 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 206.5, -215.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 206.5, -215.5 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 199.4, -224.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 199.4, -224.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 207.8, -224.2 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 207.8, -224.2 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 198.8, -215.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 198.8, -215.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 206.9, -215.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 206.9, -215.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 199.7, -225 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 199.7, -225 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 208.2, -224.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 208.2, -224.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 199.1, -215.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 199.1, -215.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 207.1, -216.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 207.1, -216.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 200, -225.3 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 200, -225.3 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 208.4, -224.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 208.4, -224.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 199.3, -215.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 199.3, -215.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 207.3, -216.4 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 207.3, -216.4 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 200.1, -225.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 200.1, -225.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 208.5, -224.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 208.5, -224.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 199.4, -216.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 199.4, -216.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 207.4, -216.5 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 207.4, -216.5 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 200.2, -225.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 200.2, -225.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 208.6, -225 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 208.6, -225 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 199.4, -216.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 199.4, -216.1 , 0 );

setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.51, 0.51 );

setRotateKey( spep_0 + 286 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--沈む
SE002 = playSeVer2( spep_0 + 52, 1456, "",spep_0 + 220, 0, 48, -1);
SE003 = playSeVer2( spep_0 + 52, 1457, "",spep_0 + 228, 0, 58, -1);
SE004 = playSeVer2( spep_0 + 52, 1292, "",spep_0 + 222, 0, 50, -1);
SE005 = playSeVer2( spep_0 + 80, 1373, "", 0, 0, 0, -1);

--顔近付いてくる
SE006 = playSeVer2( spep_0 + 162, 1184, "", 0, 0, 0, -1);
setPitch( spep_0 + 162, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 162, 1175, "",spep_0 + 376, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 162, SE007, 56 );
SE008 = playSeVer2( spep_0 + 162, 1418, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE008, 129 );
setTimeStretch( SE008, 0.91, 30, 4 );
SE009 = playSeVer2( spep_0 + 198, 1291, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 250, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE010, 133 );
SE011 = playSeVer2( spep_0 + 304, 1293, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE011, 130 );

--集中線
SE012 = playSeVer2( spep_0 + 366, 1369, "",spep_0 + 452, 0, 24, 0.6);
setSeVolumeByWorkId( spep_0 + 366, SE012, 82 );
SE013 = playSeVer2( spep_0 + 366, 1068, "",spep_0 + 450, 0, 24, 0.6);
setSeVolumeByWorkId( spep_0 + 366, SE013, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --412F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カットイン後～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 534;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン後～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カットイン後～フィニッシュまで(ef_002b)
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

--敵の動き1

setDisp( spep_2 + 184 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 256 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 184 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 184 + OFFSET_X, 1, -8.6, -128.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -8.6, -128.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 41.7, -128.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 41.7, -128.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 77.6, -128.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 77.6, -128.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 99.1, -128.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 99.1, -128.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 106.3, -128.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 106.3, -128.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 153.8, -182.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 153.8, -182.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 113.3, -41.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 113.3, -41.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 146.9, -109.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 146.9, -109.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 116.8, -146.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 116.8, -146.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 154.7, -142.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 154.7, -142.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 123, -118.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 123, -118.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 141.6, -118.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 141.6, -118.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 129.4, -136.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 129.4, -136.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 145.9, -133.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 145.9, -133.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 134.3, -122.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 134.3, -122.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 142.6, -122.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 142.6, -122.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 129.9, -126.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 129.9, -126.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 148.2, -124.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 148.2, -124.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 164.5, -120.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 164.5, -120.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 184.4, -118.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 184.4, -118.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 624.5, -170 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 624.5, -170 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 1065.8, -222 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 1065.8, -222 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 1508, -273.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 1508, -273.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 1950.9, -326 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 1950.9, -326 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 2394.5, -378.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 2394.5, -378.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 2838.7, -430.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 2838.7, -430.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 3283.4, -482.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 3283.4, -482.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 3728.5, -534.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 3728.5, -534.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 4174.2, -587.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 4174.2, -587.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 4620.2, -639.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 4620.2, -639.7 , 0 );

setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 6.88, 6.88 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 6.88, 6.88 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 7.77, 7.77 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 7.77, 7.77 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 8.65, 8.65 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 8.65, 8.65 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 11.29, 11.29 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 11.29, 11.29 );

setRotateKey( spep_2 + 184 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 30.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 30.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 36.9 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 43.6 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 50.3 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 50.3 );

--敵の動き2

setDisp( spep_2 + 348 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 392 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 348 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 348 + OFFSET_X, 1, 0.8, -78.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 0.8, -78.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 1.6, 4.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 1.6, 4.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 1.9, 36.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 1.9, 36.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 2.1, 53.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 2.1, 53.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 2.2, 64.7 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 2.2, 64.7 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 2.3, 72.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 2.3, 72.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 2.4, 77.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 2.4, 77.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 2.5, 82.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 2.5, 82.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 2.5, 85.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 2.5, 85.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 2.5, 87.8 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 2.5, 87.8 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 2.5, 89.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 2.5, 89.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 2.6, 91.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 2.6, 91.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 2.6, 93.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 2.6, 93.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 2.6, 94.7 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 2.6, 94.7 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 2.6, 95.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 2.6, 95.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 2.6, 97 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 2.6, 97 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 2.6, 98 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 2.6, 98 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 2.7, 98.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 2.7, 98.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 2.7, 99.4 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 2.7, 99.4 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 2.7, 99.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 2.7, 99.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 2.7, 100.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 2.7, 100.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 2.7, 100.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 2.7, 100.4 , 0 );

setScaleKey( spep_2 + 348 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 348 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--腕出現
SE015 = playSeVer2( spep_2 - 2, 1173, "",spep_2 + 170, 0, 64, -1);
SE016 = playSeVer2( spep_2 - 2, 1418, "", 0, 0, 0, -1);
setTimeStretch( SE016, 0.76, 30, 4 );
SE017 = playSeVer2( spep_2 - 2, 1116, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 18, 1190, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 18, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE019, 79 );

--振りかぶる
SE020 = playSeVer2( spep_2 + 122, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 146; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
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
SE021 = playSeVer2( spep_2 + 154, 1314, "",spep_2 + 222, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 154, SE021, 158 );
SE022 = playSeVer2( spep_2 + 154, 1116, "",spep_2 + 200, 0, 24, -1);

--パンチヒット
SE023 = playSeVer2( spep_2 + 188, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 188, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE025 = playSeVer2( spep_2 + 218, 1027, "", 0, 0, 0, -1);

--手開く
SE026 = playSeVer2( spep_2 + 254, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE027 = playSeVer2( spep_2 + 268, 1191, "",spep_2 + 320, 0, 22, -1);
SE028 = playSeVer2( spep_2 + 268, 1224, "", 0, 0, 0, -1);

--気弾発射
SE029 = playSeVer2( spep_2 + 310, 1145, "",spep_2 + 414, 0, 28, -1);
SE030 = playSeVer2( spep_2 + 310, 1177, "",spep_2 + 410, 0, 24, -1);
SE031 = playSeVer2( spep_2 + 316, 1128, "",spep_2 + 400, 0, 14, -1);

--爆発
SE032 = playSeVer2( spep_2 + 388, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 400, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 402); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 534F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カットイン後～フィニッシュまで
-------------------------------------------------
MAX_FRAME_0 = 412;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カットイン後～フィニッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カットイン後～フィニッシュまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

setDisp( spep_0 + 286 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 416 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 286 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 286 + OFFSET_X, 1, -77.1, -113.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -77.1, -113.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -106.9, -123.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -106.9, -123.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -116.2, -153.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -116.2, -153.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -149.1, -166 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -149.1, -166 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -149.4, -163.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -149.4, -163.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -170.3, -168.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -170.3, -168.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -159.1, -184.2 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -159.1, -184.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -174.9, -184.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -174.9, -184.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -161.6, -171.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -161.6, -171.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -170.9, -174.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -170.9, -174.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -164.7, -181.4 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -164.7, -181.4 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -171.2, -181.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -171.2, -181.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -165.5, -174.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -165.5, -174.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -172.7, -175.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -172.7, -175.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -166.3, -182.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -166.3, -182.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -172.7, -182.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -172.7, -182.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -166.9, -175.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -166.9, -175.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -172.2, -177.8 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -172.2, -177.8 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -169.1, -181.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -169.1, -181.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -172.5, -181.4 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -172.5, -181.4 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -169.5, -178.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -169.5, -178.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -172, -179.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -172, -179.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -170.9, -180.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -170.9, -180.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -172.1, -180.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -172.1, -180.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -171.2, -179.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -171.2, -179.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -172.3, -179.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -172.3, -179.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -171.3, -180.8 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -171.3, -180.8 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -172.1, -180.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -172.1, -180.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -171.5, -180.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -171.5, -180.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -171.9, -180.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -171.9, -180.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -171.6, -180.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -171.6, -180.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -172, -180.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -172, -180.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -171.5, -180.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -171.5, -180.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -171.7, -180.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -171.7, -180.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -195.4, -201.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -195.4, -201.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -199, -224.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -199, -224.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -207.5, -223.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -207.5, -223.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -198.4, -215 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -198.4, -215 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -206.5, -215.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -206.5, -215.5 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -199.4, -224.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -199.4, -224.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -207.8, -224.2 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -207.8, -224.2 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -198.8, -215.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -198.8, -215.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -206.9, -215.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -206.9, -215.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -199.7, -225 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -199.7, -225 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -208.2, -224.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -208.2, -224.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -199.1, -215.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -199.1, -215.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -207.1, -216.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -207.1, -216.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -200, -225.3 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -200, -225.3 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -208.4, -224.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -208.4, -224.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -199.3, -215.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -199.3, -215.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -207.3, -216.4 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -207.3, -216.4 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -200.1, -225.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -200.1, -225.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -208.5, -224.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -208.5, -224.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -199.4, -216.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -199.4, -216.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -207.4, -216.5 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -207.4, -216.5 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -200.2, -225.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -200.2, -225.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -208.6, -225 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -208.6, -225 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -199.4, -216.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -199.4, -216.1 , 0 );

setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.51, 0.51 );

setRotateKey( spep_0 + 286 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--沈む
SE002 = playSeVer2( spep_0 + 52, 1456, "",spep_0 + 220, 0, 48, -1);
SE003 = playSeVer2( spep_0 + 52, 1457, "",spep_0 + 228, 0, 58, -1);
SE004 = playSeVer2( spep_0 + 52, 1292, "",spep_0 + 222, 0, 50, -1);
SE005 = playSeVer2( spep_0 + 80, 1373, "", 0, 0, 0, -1);

--顔近付いてくる
SE006 = playSeVer2( spep_0 + 162, 1184, "", 0, 0, 0, -1);
setPitch( spep_0 + 162, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 162, 1175, "",spep_0 + 376, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 162, SE007, 56 );
SE008 = playSeVer2( spep_0 + 162, 1418, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE008, 129 );
setTimeStretch( SE008, 0.91, 30, 4 );
SE009 = playSeVer2( spep_0 + 198, 1291, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 250, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE010, 133 );
SE011 = playSeVer2( spep_0 + 304, 1293, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE011, 130 );

--集中線
SE012 = playSeVer2( spep_0 + 366, 1369, "",spep_0 + 452, 0, 24, 0.6);
setSeVolumeByWorkId( spep_0 + 366, SE012, 82 );
SE013 = playSeVer2( spep_0 + 366, 1068, "",spep_0 + 450, 0, 24, 0.6);
setSeVolumeByWorkId( spep_0 + 366, SE013, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --412F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カットイン後～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 534;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カットイン後～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カットイン後～フィニッシュまで(ef_002b)
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

--敵の動き1

setDisp( spep_2 + 184 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 256 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 184 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 184 + OFFSET_X, 1, 8.6, -128.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 8.6, -128.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -41.7, -128.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -41.7, -128.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -77.6, -128.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -77.6, -128.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -99.1, -128.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -99.1, -128.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -106.3, -128.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -106.3, -128.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -153.8, -182.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -153.8, -182.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -113.3, -41.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -113.3, -41.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -146.9, -109.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -146.9, -109.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -116.8, -146.4 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -116.8, -146.4 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -154.7, -142.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -154.7, -142.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -123, -118.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -123, -118.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -141.6, -118.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -141.6, -118.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -129.4, -136.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -129.4, -136.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -145.9, -133.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -145.9, -133.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -134.3, -122.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -134.3, -122.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -142.6, -122.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -142.6, -122.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -129.9, -126.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -129.9, -126.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -148.2, -124.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -148.2, -124.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -164.5, -120.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -164.5, -120.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -184.4, -118.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -184.4, -118.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -624.5, -170 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -624.5, -170 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -1065.8, -222 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -1065.8, -222 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -1508, -273.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -1508, -273.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -1950.9, -326 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -1950.9, -326 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -2394.5, -378.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -2394.5, -378.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -2838.7, -430.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -2838.7, -430.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -3283.4, -482.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -3283.4, -482.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -3728.5, -534.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -3728.5, -534.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -4174.2, -587.2 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -4174.2, -587.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -4620.2, -639.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -4620.2, -639.7 , 0 );

setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 6.88, 6.88 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 6.88, 6.88 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 7.77, 7.77 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 7.77, 7.77 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 8.65, 8.65 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 8.65, 8.65 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 11.29, 11.29 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 11.29, 11.29 );

setRotateKey( spep_2 + 184 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -1 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -1.5 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -43.6 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -50.3 );

--敵の動き2

setDisp( spep_2 + 348 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 392 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 348 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 348 + OFFSET_X, 1, -0.8, -78.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -0.8, -78.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -1.6, 4.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -1.6, 4.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -1.9, 36.4 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -1.9, 36.4 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -2.1, 53.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -2.1, 53.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -2.2, 64.7 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -2.2, 64.7 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -2.3, 72.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -2.3, 72.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -2.4, 77.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -2.4, 77.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -2.5, 82.1 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -2.5, 82.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -2.5, 85.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -2.5, 85.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -2.5, 87.8 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -2.5, 87.8 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -2.5, 89.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -2.5, 89.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -2.6, 91.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -2.6, 91.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -2.6, 93.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -2.6, 93.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -2.6, 94.7 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -2.6, 94.7 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -2.6, 95.9 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -2.6, 95.9 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -2.6, 97 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -2.6, 97 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -2.6, 98 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -2.6, 98 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -2.7, 98.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -2.7, 98.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -2.7, 99.4 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -2.7, 99.4 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -2.7, 99.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -2.7, 99.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -2.7, 100.2 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -2.7, 100.2 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -2.7, 100.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -2.7, 100.4 , 0 );

setScaleKey( spep_2 + 348 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_2 + 348 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--腕出現
SE015 = playSeVer2( spep_2 - 2, 1173, "",spep_2 + 170, 0, 64, -1);
SE016 = playSeVer2( spep_2 - 2, 1418, "", 0, 0, 0, -1);
setTimeStretch( SE016, 0.76, 30, 4 );
SE017 = playSeVer2( spep_2 - 2, 1116, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 18, 1190, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 18, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE019, 79 );

--振りかぶる
SE020 = playSeVer2( spep_2 + 122, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 146; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
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
SE021 = playSeVer2( spep_2 + 154, 1314, "",spep_2 + 222, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 154, SE021, 158 );
SE022 = playSeVer2( spep_2 + 154, 1116, "",spep_2 + 200, 0, 24, -1);

--パンチヒット
SE023 = playSeVer2( spep_2 + 188, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 188, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE025 = playSeVer2( spep_2 + 218, 1027, "", 0, 0, 0, -1);

--手開く
SE026 = playSeVer2( spep_2 + 254, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE027 = playSeVer2( spep_2 + 268, 1191, "",spep_2 + 320, 0, 22, -1);
SE028 = playSeVer2( spep_2 + 268, 1224, "", 0, 0, 0, -1);

--気弾発射
SE029 = playSeVer2( spep_2 + 310, 1145, "",spep_2 + 414, 0, 28, -1);
SE030 = playSeVer2( spep_2 + 310, 1177, "",spep_2 + 410, 0, 24, -1);
SE031 = playSeVer2( spep_2 + 316, 1128, "",spep_2 + 400, 0, 14, -1);

--爆発
SE032 = playSeVer2( spep_2 + 388, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 400, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 402); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 534F

end
