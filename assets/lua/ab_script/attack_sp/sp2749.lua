-- 1029470: LR_超サイヤ人孫悟飯(青年期)_超必殺技：超爆裂魔波
-- sp_effect_b1_00295
-- sp2749

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163155;  -- 冒頭～叩きつけ・手前 ef_001
SP_001b = 163156;  -- 冒頭～叩きつけ・奥 ef_001b
SP_002 = 163157;  -- 着地～ラスト ef_002

-- 敵側
SP_001r = 163158;  -- 敵用：冒頭～叩きつけ・手前 ef_001r
SP_001br = 163159;  -- 敵用：冒頭～叩きつけ・奥 ef_001r_b
SP_002r = 163160;  -- 敵用：着地～ラスト ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭～叩きつけ・手前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 562;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 冒頭～叩きつけ・手前 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 冒頭～叩きつけ・奥 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
setDisp( spep_0 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 216 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 132 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 132 + OFFSET_X, 1, 212.7, 56.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 212.7, 56.1 , 0 );

setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_0 + 132 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 300 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 262 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 262 + OFFSET_X, 1, -8.9, -220.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -8.9, -220.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 31.8, -380 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 31.8, -380 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 54.8, -358.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 54.8, -358.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 12.2, -308.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 12.2, -308.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 64.3, -365.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 64.3, -365.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 46.4, -390.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 46.4, -390.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 73.7, -372 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 73.7, -372 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 41.2, -395.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 41.2, -395.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 83.2, -378.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 83.2, -378.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 66.6, -394.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 66.6, -394.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 92.6, -385.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 92.6, -385.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 82.1, -373.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 82.1, -373.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 102.1, -391.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 102.1, -391.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 91.6, -416.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 91.6, -416.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 111.6, -398.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 111.6, -398.2 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X, 1, 8.1, 8.1 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 8.1, 8.1 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 8.64, 8.64 );

setRotateKey( spep_0 + 262 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -49 );

-- 敵の動き3
setDisp( spep_0 + 382 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 434 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 382 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 388 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 382 + OFFSET_X, 1, 43.9, -284.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 43.9, -284.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 35.3, -86.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 35.3, -86.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 71.5, 10 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 71.5, 10 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 34.6, 126.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 34.6, 126.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 88.1, 157 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 88.1, 157 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 72.8, 198.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 72.8, 198.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 96.5, 230.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 96.5, 230.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 66.7, 215.5 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 66.7, 215.5 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 96.8, 230.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 96.8, 230.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 81.7, 215.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 81.7, 215.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 97.1, 230.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 97.1, 230.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 91.1, 215.8 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 91.1, 215.8 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 97.4, 231.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 97.4, 231.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 88.4, 243.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 88.4, 243.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 97.7, 231.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 97.7, 231.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 82.6, 210 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 82.6, 210 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 98, 231.4 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 98, 231.4 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 85.9, 225.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 85.9, 225.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 98.3, 231.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 98.3, 231.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 92.3, 225.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 92.3, 225.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 98.6, 231.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 98.6, 231.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 86.5, 219.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 86.5, 219.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 98.9, 231.8 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 98.9, 231.8 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 99, 231.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 99, 231.9 , 0 );

setScaleKey( spep_0 + 382 + OFFSET_X, 1, 7.89, 7.89 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 7.89, 7.89 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.13, 0.13 );

setRotateKey( spep_0 + 382 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 0 );

-- 敵の動き4
setDisp( spep_0 + 494 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 526 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 494 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 516 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 494 + OFFSET_X, 1, -195.3, -742.2 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -195.3, -742.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -137.5, -519.2 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -137.5, -519.2 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -79.7, -296.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -79.7, -296.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -21.9, -73.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -21.9, -73.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -17.3, -58.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -17.3, -58.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -13.1, -45.3 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -13.1, -45.3 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -9.4, -33.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -9.4, -33.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -6.2, -23.2 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -6.2, -23.2 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -3.5, -14.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -3.5, -14.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -1.1, -7.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -1.1, -7.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 0.7, -1.2 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 0.7, -1.2 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 47.4, -66.7 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 47.4, -66.7 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 12.4, -31.5 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 12.4, -31.5 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 85.9, -160.9 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 85.9, -160.9 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 98.8, -327 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 98.8, -327 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 126.6, -293.2 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 126.6, -293.2 , 0 );

setScaleKey( spep_0 + 494 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 12.37, 12.37 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 12.37, 12.37 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 7.69, 7.69 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 7.69, 7.69 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_0 + 494 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, 58.7 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 150, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 71 );
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 71 );
SE006 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 71 );
SE008 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 71 );
SE011 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE011, 71 );

--かがむ
SE007 = playSeVer2( spep_0 + 84, 1007, "", 0, 0, 0, -1);

--向かってくる
SE009 = playSeVer2( spep_0 + 104, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 104, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 138, 1183, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 142, 1019, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 144, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE014, 73 );
SE015 = playSeVer2( spep_0 + 158, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE015, 122 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 176;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--向かってくる
SE016 = playSeVer2( spep_0 + 206, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 210, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE017, 58 );

--パンチヒット
SE018 = playSeVer2( spep_0 + 260, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE018, 135 );
SE019 = playSeVer2( spep_0 + 270, 1187, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_0 + 294, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE020, 71 );
SE022 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE022, 71 );
SE023 = playSeVer2( spep_0 + 342, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE023, 71 );
SE024 = playSeVer2( spep_0 + 366, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE024, 71 );

--翻る
SE021 = playSeVer2( spep_0 + 302, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE025 = playSeVer2( spep_0 + 366, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 378, 1120, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 378, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE028 = playSeVer2( spep_0 + 390, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE028, 65 );
SE029 = playSeVer2( spep_0 + 390, 1121, "",spep_0 + 498, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 390, SE029, 68 );
SE030 = playSeVer2( spep_0 + 390, 1183, "",spep_0 + 510, 0, 70, -1);

--おりてくる
SE031 = playSeVer2( spep_0 + 466, 1119, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE031, 85 );
setStartTimeMs( SE031,  700 );
SE033 = playSeVer2( spep_0 + 468, 1117, "",spep_0 + 538, 0, 14, -1);

--瞬間移動
SE032 = playSeVer2( spep_0 + 444, 1109, "", 0, 0, 0, -1);

--叩きつける
SE034 = playSeVer2( spep_0 + 506, 1003, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 514, 1187, "",spep_0 + 572, 0, 6, -1);
SE036 = playSeVer2( spep_0 + 514, 1024, "",spep_0 + 572, 0, 6, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 562

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--足踏み込む
SE038 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE038, 76 );
setPitch( spep_1 + 92, SE038, -600 );
setTimeStretch( SE038, 0.6, 30, 4 );

------------------------------------------------------
-- 着地～ラスト ef_002
------------------------------------------------------
MAX_FRAME_2 = 472;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );  -- 着地～ラスト ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--足踏み込む
SE039 = playSeVer2( spep_2 + 8, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE039, 193 );
SE040 = playSeVer2( spep_2 + 8, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE040, 73 );

--両手広げる
SE041 = playSeVer2( spep_2 + 56, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE041, 39 );
SE042 = playSeVer2( spep_2 + 56, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE042, 71 );
SE043 = playSeVer2( spep_2 + 56, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE043, 78 );
SE044 = playSeVer2( spep_2 + 56, 1179, "", 0, 0, 0, -1);

--気を高める
SE045 = playSeVer2( spep_2 + 112, 1226, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 112, 1215, "",spep_2 + 378, 0, 68, -1);
SE047 = playSeVer2( spep_2 + 112, 1407, "",spep_2 + 382, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 112, SE047, 170 );
SE048 = playSeVer2( spep_2 + 112, 1158, "",spep_2 + 356, 0, 46, -1);

--爆発
SE049 = playSeVer2( spep_2 + 306, 1159, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 306, 1160, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 340, 1044, "", 0, 58, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE051, 188 );
SE052 = playSeVer2( spep_2 + 420, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 360 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 472

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭～叩きつけ・手前 ef_001r
------------------------------------------------------
MAX_FRAME_0 = 562;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );  -- 冒頭～叩きつけ・手前 ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );  -- 冒頭～叩きつけ・奥 ef_001br
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 216 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 132 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 132 + OFFSET_X, 1, 212.7, 56.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 212.7, 56.1 , 0 );

setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_0 + 132 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 262 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 300 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 262 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 262 + OFFSET_X, 1, -8.9, -220.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -8.9, -220.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 31.8, -380 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 31.8, -380 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 54.8, -358.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 54.8, -358.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 12.2, -308.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 12.2, -308.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 64.3, -365.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 64.3, -365.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 46.4, -390.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 46.4, -390.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 73.7, -372 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 73.7, -372 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 41.2, -395.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 41.2, -395.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 83.2, -378.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 83.2, -378.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 66.6, -394.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 66.6, -394.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 92.6, -385.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 92.6, -385.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 82.1, -373.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 82.1, -373.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 102.1, -391.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 102.1, -391.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 91.6, -416.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 91.6, -416.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 111.6, -398.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 111.6, -398.2 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X, 1, 8.1, 8.1 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 8.1, 8.1 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 8.64, 8.64 );

setRotateKey( spep_0 + 262 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -50.3 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -49.5 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -49 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -49 );

-- 敵の動き3
setDisp( spep_0 + 382 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 434 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 382 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 388 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 382 + OFFSET_X, 1, 43.9, -284.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 43.9, -284.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 35.3, -86.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 35.3, -86.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 71.5, 10 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 71.5, 10 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 34.6, 126.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 34.6, 126.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 88.1, 157 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 88.1, 157 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 72.8, 198.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 72.8, 198.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 96.5, 230.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 96.5, 230.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 66.7, 215.5 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 66.7, 215.5 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 96.8, 230.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 96.8, 230.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 81.7, 215.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 81.7, 215.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 97.1, 230.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 97.1, 230.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 91.1, 215.8 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 91.1, 215.8 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 97.4, 231.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 97.4, 231.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 88.4, 243.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 88.4, 243.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 97.7, 231.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 97.7, 231.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 82.6, 210 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 82.6, 210 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 98, 231.4 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 98, 231.4 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 85.9, 225.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 85.9, 225.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 98.3, 231.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 98.3, 231.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 92.3, 225.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 92.3, 225.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 98.6, 231.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 98.6, 231.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 86.5, 219.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 86.5, 219.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 98.9, 231.8 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 98.9, 231.8 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 99, 231.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 99, 231.9 , 0 );

setScaleKey( spep_0 + 382 + OFFSET_X, 1, 7.89, 7.89 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 7.89, 7.89 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.13, 0.13 );

setRotateKey( spep_0 + 382 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 0 );

-- 敵の動き4
setDisp( spep_0 + 494 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 526 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 494 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 516 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 494 + OFFSET_X, 1, -195.3, -742.2 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -195.3, -742.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -137.5, -519.2 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -137.5, -519.2 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -79.7, -296.2 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -79.7, -296.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -21.9, -73.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -21.9, -73.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -17.3, -58.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -17.3, -58.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -13.1, -45.3 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -13.1, -45.3 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -9.4, -33.5 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -9.4, -33.5 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -6.2, -23.2 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -6.2, -23.2 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -3.5, -14.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -3.5, -14.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -1.1, -7.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -1.1, -7.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 0.7, -1.2 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 0.7, -1.2 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 47.4, -66.7 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 47.4, -66.7 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 12.4, -31.5 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 12.4, -31.5 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 85.9, -160.9 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 85.9, -160.9 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 98.8, -327 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 98.8, -327 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 126.6, -293.2 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 126.6, -293.2 , 0 );

setScaleKey( spep_0 + 494 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 17.05, 17.05 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 12.37, 12.37 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 12.37, 12.37 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 7.69, 7.69 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 7.69, 7.69 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_0 + 494 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 58.7 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, 58.7 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 150, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 71 );
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 71 );
SE006 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 71 );
SE008 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 71 );
SE011 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE011, 71 );

--かがむ
SE007 = playSeVer2( spep_0 + 84, 1007, "", 0, 0, 0, -1);

--向かってくる
SE009 = playSeVer2( spep_0 + 104, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 104, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 138, 1183, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 142, 1019, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 144, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE014, 73 );
SE015 = playSeVer2( spep_0 + 158, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE015, 122 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 176;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);

pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--向かってくる
SE016 = playSeVer2( spep_0 + 206, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 210, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE017, 58 );

--パンチヒット
SE018 = playSeVer2( spep_0 + 260, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE018, 135 );
SE019 = playSeVer2( spep_0 + 270, 1187, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_0 + 294, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE020, 71 );
SE022 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE022, 71 );
SE023 = playSeVer2( spep_0 + 342, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE023, 71 );
SE024 = playSeVer2( spep_0 + 366, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE024, 71 );

--翻る
SE021 = playSeVer2( spep_0 + 302, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE025 = playSeVer2( spep_0 + 366, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 378, 1120, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 378, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE028 = playSeVer2( spep_0 + 390, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE028, 65 );
SE029 = playSeVer2( spep_0 + 390, 1121, "",spep_0 + 498, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 390, SE029, 68 );
SE030 = playSeVer2( spep_0 + 390, 1183, "",spep_0 + 510, 0, 70, -1);

--おりてくる
SE031 = playSeVer2( spep_0 + 466, 1119, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE031, 85 );
setStartTimeMs( SE031,  700 );
SE033 = playSeVer2( spep_0 + 468, 1117, "",spep_0 + 538, 0, 14, -1);

--瞬間移動
SE032 = playSeVer2( spep_0 + 444, 1109, "", 0, 0, 0, -1);

--叩きつける
SE034 = playSeVer2( spep_0 + 506, 1003, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 514, 1187, "",spep_0 + 572, 0, 6, -1);
SE036 = playSeVer2( spep_0 + 514, 1024, "",spep_0 + 572, 0, 6, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 562

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--足踏み込む
SE038 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 92, SE038, 76 );
setPitch( spep_1 + 92, SE038, -600 );
setTimeStretch( SE038, 0.6, 30, 4 );

------------------------------------------------------
-- 着地～ラスト ef_002r
------------------------------------------------------
MAX_FRAME_2 = 472;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x80, -1, 0, 0, 0 );  -- 着地～ラスト ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--足踏み込む
SE039 = playSeVer2( spep_2 + 8, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE039, 193 );
SE040 = playSeVer2( spep_2 + 8, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE040, 73 );

--両手広げる
SE041 = playSeVer2( spep_2 + 56, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE041, 39 );
SE042 = playSeVer2( spep_2 + 56, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE042, 71 );
SE043 = playSeVer2( spep_2 + 56, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE043, 78 );
SE044 = playSeVer2( spep_2 + 56, 1179, "", 0, 0, 0, -1);

--気を高める
SE045 = playSeVer2( spep_2 + 112, 1226, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 112, 1215, "",spep_2 + 378, 0, 68, -1);
SE047 = playSeVer2( spep_2 + 112, 1407, "",spep_2 + 382, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 112, SE047, 170 );
SE048 = playSeVer2( spep_2 + 112, 1158, "",spep_2 + 356, 0, 46, -1);

--爆発
SE049 = playSeVer2( spep_2 + 306, 1159, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 306, 1160, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 340, 1044, "", 0, 58, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE051, 188 );
SE052 = playSeVer2( spep_2 + 420, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 360 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 472

end
