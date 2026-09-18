--4032890:LR_超サイヤ人4孫悟空+超サイヤ人4べジータ_超必殺技：かめはめ波
--sp_effect_a1_00527
--sp2989

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164429; --敵前面 ef_001
SP_02 = 164430; --敵前面 ef_001b

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

adjust_timing = -6;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);


-------------------------------------------------
-- 敵前面
-------------------------------------------------
MAX_FRAME_0 = 714;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 140 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 154 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 140 + OFFSET_X, 1, 542.4, 99 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 542.4, 99 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 319.2, 214.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 319.2, 214.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -62, 99.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -62, 99.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -241.9, 72 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -241.9, 72 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -233.5, 100.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -233.5, 100.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -283.1, 54 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -283.1, 54 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -330.2, 64.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -330.2, 64.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -316.3, 63.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -316.3, 63.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -339.7, 52.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -339.7, 52.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -350.5, 68.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -350.5, 68.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -355.5, 60.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -355.5, 60.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -350.5, 50.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -355.5, 50.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -355.5, 45.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -355.5, 45.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -352.5, 48.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -352.5, 48.6 , 0 );

setScaleKey( spep_0 + 140 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -27 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -25.6 );

--敵の動き2
setDisp( spep_0 + 196 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 196 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 196 + OFFSET_X, 1, 6.9, -4.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 6.9, -4.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 20.1, 19.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 20.1, 19.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 32, 41.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 32, 41.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 40.3, 57.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 40.3, 57.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 49.3, 71.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 49.3, 71.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 56.4, 82.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 56.4, 82.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 60.5, 91.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 60.5, 91.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 65.5, 97.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 65.5, 97.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 68.5, 102.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 68.5, 102.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 73.5, 106.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 73.5, 106.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 73.5, 109.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 73.5, 109.5 , 0 );

setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 196 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 45.6 );


--敵の動き3
setDisp( spep_0 + 366 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 576 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 366 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 382 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 414 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 426 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 448 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 450 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 464 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 476 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 488 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 518 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 520 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 556 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 568 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 366 + OFFSET_X, 1, 286, -263.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 286, -263.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 256.7, -266 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 256.7, -266 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 229.7, -266 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 229.7, -266 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 68.7, -304.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 68.7, -304.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 186.9, -107 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 186.9, -107 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 255.2, -102.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 255.2, -102.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 239.9, -92.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 239.9, -92.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 261.5, -91.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 261.5, -91.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 266.6, -58.8 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 266.6, -58.8 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 266.6, -73.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 266.6, -73.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 263.9, -73.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 263.9, -73.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 262.6, -92.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 262.6, -92.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 276.1, -83.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 276.1, -83.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 285.5, -83.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 285.5, -83.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 276.1, -85.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 276.1, -85.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 285.5, -80.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 285.5, -80.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 289.6, -80.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 289.6, -80.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 286.9, -80.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 286.9, -80.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -80.1, 139.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -80.1, 139.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -65.4, 145.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -65.4, 145.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -49.7, 150.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -49.7, 150.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -32.6, 153.5 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -32.6, 153.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -17.6, 150.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -17.6, 150.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -10, 146.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -10, 146.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 27.4, 191 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 27.4, 191 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 8.1, 209.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 8.1, 209.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -2, 201.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -2, 201.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -21.1, 205.5 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -21.1, 205.5 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -35.7, 236.9 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -35.7, 236.9 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -44.9, 225.1 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -44.9, 225.1 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -53.3, 227.6 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -53.3, 227.6 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -67.4, 231.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -67.4, 231.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -75.3, 235.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -75.3, 235.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -89.4, 237.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -89.4, 237.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -98.5, 238.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -98.5, 238.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -152.7, 122.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -152.7, 122.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -61.2, 148.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -61.2, 148.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -39.9, 163.9 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -39.9, 163.9 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -9.8, 143.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -9.8, 143.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -8, 155.9 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -8, 155.9 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 4.8, 135.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 4.8, 135.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 16.2, 151.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 16.2, 151.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 39.7, 139.1 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 39.7, 139.1 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -25, 250.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -25, 250.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 3, 220.3 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 3, 220.3 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -13.2, 257.7 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -13.2, 257.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -24.9, 240.9 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -24.9, 240.9 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -12.3, 243 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -12.3, 243 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -0.5, 237 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -0.5, 237 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -32.2, 283 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -32.2, 283 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -79.1, 277.3 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -79.1, 277.3 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -117.1, 291 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -117.1, 291 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -153.2, 294.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -153.2, 294.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -187.3, 302.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -187.3, 302.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -221, 299.5 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -221, 299.5 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -250.8, 273.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -250.8, 273.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -248.7, 278.1 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -248.7, 278.1 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -230.8, 279.1 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -230.8, 279.1 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -204.6, 253.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -204.6, 253.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -220.6, 266.5 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -220.6, 266.5 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -195.7, 262.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -195.7, 262.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -201.1, 260.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -201.1, 260.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -195.2, 266.8 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -195.2, 266.8 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -189.2, 265.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -189.2, 265.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -184.2, 262 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -184.2, 262 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -179, 268.7 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -179, 268.7 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -172.3, 257.3 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -172.3, 257.3 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -166.2, 264.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -166.2, 264.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -160.8, 263.4 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -160.8, 263.4 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -155.4, 259.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -155.4, 259.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -249.1, 246.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -249.1, 246.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -119.6, 177.6 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -119.6, 177.6 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -129.7, 166.5 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -129.7, 166.5 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -97.2, 173.7 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -97.2, 173.7 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -114.5, 148.4 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -114.5, 148.4 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -123.3, 162.2 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -123.3, 162.2 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -103.1, 147.8 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -103.1, 147.8 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -94.1, 154.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -94.1, 154.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -88.7, 143.9 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -88.7, 143.9 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -82.2, 140.7 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -82.2, 140.7 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -73.2, 140.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -73.2, 140.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -73.5, 132.6 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -73.5, 132.6 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -68.8, 128.5 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -68.8, 128.5 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -64.1, 124.3 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -64.1, 124.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -59.4, 120.2 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -59.4, 120.2 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -54.6, 116.1 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -54.6, 116.1 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -49.9, 111.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -49.9, 111.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -45.2, 107.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -45.2, 107.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 119.1, 343.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 119.1, 343.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 128.2, 323.1 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 128.2, 323.1 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 138.5, 308.1 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 138.5, 308.1 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 171.2, 328.7 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 171.2, 328.7 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 173.4, 296 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 173.4, 296 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 172.3, 280 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 172.3, 280 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 189.8, 277.3 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 189.8, 277.3 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 185.8, 272.9 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 185.8, 272.9 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 198.3, 280.8 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 198.3, 280.8 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 199.4, 279.8 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 199.4, 279.8 , 0 );

setScaleKey( spep_0 + 366 + OFFSET_X, 1, 14.01, 14.01 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 14.01, 14.01 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 13.99, 13.99 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 13.99, 13.99 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 3.59, 3.59 );

setRotateKey( spep_0 + 366 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -77.5 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -77.5 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -192.5 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -192.5 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -192.4 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -192.4 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -192.3 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -192.3 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -269.5 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -269.5 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -270.3 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -270.3 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -269.5 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -269.5 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -269.4 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -269.4 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -269.7 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -269.7 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -400.9 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -400.9 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -394.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -394.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -388.5 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -388.5 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -382.2 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -382.2 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -376 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -376 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -369.8 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, -369.8 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -302.1 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -302.1 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -301.9 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, -301.9 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -301.7 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -301.7 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -301.4 );
setRotateKey( spep_0 + 495 + OFFSET_X, 1, -301.4 );
setRotateKey( spep_0 + 496 + OFFSET_X, 1, -301.2 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, -301.2 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, -301 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, -301 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -300.8 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, -300.8 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -300.6 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -300.6 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -300.4 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -300.4 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, -300.3 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -300.3 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -382.6 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, -382.6 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -297.6 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, -297.6 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -298.5 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, -298.5 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, -299.4 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, -299.4 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -300.4 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, -300.4 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, -301.3 );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, -301.3 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, -302.3 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, -302.3 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, -303.2 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, -303.2 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, -304.1 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, -304.1 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, -305.1 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, -305.1 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, -306 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, -306 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, -307 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, -307 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, -307.9 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, -307.9 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, -308.9 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, -308.9 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -309.8 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, -309.8 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, -310.7 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, -310.7 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, -311.7 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, -311.7 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, -312.6 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, -312.6 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, -401.2 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, -401.2 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, -390.5 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, -390.5 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, -379.7 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, -379.7 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, -368.8 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, -368.8 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, -358.1 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, -358.1 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, -347.5 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, -347.5 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, -337 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, -337 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, -332 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, -332 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, -326.2 );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, -326.2 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, -321 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, -321 );


--敵の動き4
setDisp( spep_0 + 598 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 640 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 598 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 598 + OFFSET_X, 1, 122.9, 312.5 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 122.9, 312.5 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 47.1, 345.8 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 47.1, 345.8 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -49.2, 390.1 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -49.2, 390.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -130.8, 457.1 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -130.8, 457.1 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -208.5, 497.7 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -208.5, 497.7 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -290, 573.5 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -290, 573.5 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -411, 595.6 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -411, 595.6 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -489.7, 652.9 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -489.7, 652.9 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -554, 681.6 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -554, 681.6 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -647.4, 769.3 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -647.4, 769.3 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -662.2, 828.4 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -662.2, 828.4 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -677.1, 887.5 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -677.1, 887.5 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 137.6, -285.5 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 137.6, -285.5 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 112.7, -248.5 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 112.7, -248.5 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 89.1, -210.3 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 89.1, -210.3 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 65.4, -172.1 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 65.4, -172.1 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, 34.2, -123.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, 34.2, -123.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, 4.4, -61.7 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, 4.4, -61.7 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -21.4, 7.6 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -21.4, 7.6 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -52.5, 102.3 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -52.5, 102.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -80.1, 241.2 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -80.1, 241.2 , 0 );

setScaleKey( spep_0 + 598 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 1.49, 1.49 );

setRotateKey( spep_0 + 598 + OFFSET_X, 1, -257.2 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, -257.2 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, -267.9 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, -267.9 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, -278.6 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, -278.6 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, -289.4 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, -289.4 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, -299.3 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, -299.3 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, -311.6 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, -311.6 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, -327.3 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, -327.3 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, -334 );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, -334 );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, -344.1 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, -344.1 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, -352.5 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, -352.5 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, -316.5 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, -316.5 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, -316.4 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, -316.4 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, -316.9 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, -316.9 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, -316.8 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, -316.8 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -316.7 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, -316.7 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, -316.6 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -316.6 );


-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1011, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 40 );

--飛んでくる
SE004 = playSeVer2( spep_0 + 16, 1277, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 40 );

--飛んでくる
SE006 = playSeVer2( spep_0 + 44, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 46 );
setPitch( spep_0 + 44, SE006, -1200 );
setTimeStretch( SE006, 0.4, 30, 4 );

--オーラ
SE007 = playSeVer2( spep_0 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE007, 40 );

--飛んでくる
SE008 = playSeVer2( spep_0 + 68, 1117, "", 0, 0, 0, -1);

--オーラ
SE009 = playSeVer2( spep_0 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE009, 40 );

--飛んでくる
SE010 = playSeVer2( spep_0 + 80, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE010, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--オーラ
SE011 = playSeVer2( spep_0 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE011, 40 );

--殴り飛ばす
SE012 = playSeVer2( spep_0 + 124 + adjust_timing, 1116, "", spep_0 + 166 + adjust_timing, 0, 14, -1);
SE013 = playSeVer2( spep_0 + 148 + adjust_timing, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 148 + adjust_timing, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 180 + adjust_timing, 1121, "", spep_0 + 252 + adjust_timing, 0, 36, -1);
SE016 = playSeVer2( spep_0 + 180 + adjust_timing, 1183, "", spep_0 + 252 + adjust_timing, 0, 22, -1);

--ビル激突
SE017 = playSeVer2( spep_0 + 220 + adjust_timing, 1061, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 220 + adjust_timing, 1067, "", 0, 0, 0, -1);

--土煙
SE019 = playSeVer2( spep_0 + 264 + adjust_timing, 1011, "", 0, 14, 0, -1);
setStartTimeMs( SE019, 33 );

--オーラ
SE020 = playSeVer2( spep_0 + 310 + adjust_timing, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310 + adjust_timing, SE020, 63 );
SE021 = playSeVer2( spep_0 + 334 + adjust_timing, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334 + adjust_timing, SE021, 63 );

--向かってくる
SE022 = playSeVer2( spep_0 + 334 + adjust_timing, 1467, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334 + adjust_timing, SE022, 151 );
SE023 = playSeVer2( spep_0 + 344 + adjust_timing, 1116, "", spep_0 + 400 + adjust_timing, 0, 34, -1);

--オーラ
SE024 = playSeVer2( spep_0 + 358 + adjust_timing, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358 + adjust_timing, SE024, 63 );

--パンチ
SE025 = playSeVer2( spep_0 + 374 + adjust_timing, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 374 + adjust_timing, 1187, "", 0, 0, 0, -1);

--オーラ
SE027 = playSeVer2( spep_0 + 382 + adjust_timing, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382 + adjust_timing, SE027, 63 );

--ラッシュ
SE028 = playSeVer2( spep_0 + 422 + adjust_timing, 1414, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 422 + adjust_timing, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 422 + adjust_timing, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422 + adjust_timing, SE030, 63 );
SE031 = playSeVer2( spep_0 + 434 + adjust_timing, 1109, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 448 + adjust_timing, 1010, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 448 + adjust_timing, 1110, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 448 + adjust_timing, 1491, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 466 + adjust_timing, 1109, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 490 + adjust_timing, 1110, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 490 + adjust_timing, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490 + adjust_timing, SE037, 73 );
SE038 = playSeVer2( spep_0 + 490 + adjust_timing, 1414, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 504 + adjust_timing, 1109, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 522 + adjust_timing, 1153, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 522 + adjust_timing, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522 + adjust_timing, SE041, 77 );
SE042 = playSeVer2( spep_0 + 540 + adjust_timing, 1109, "", 0, 0, 0, -1);

--蹴り上げ
SE043 = playSeVer2( spep_0 + 558 + adjust_timing, 1491, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 558 + adjust_timing, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE045 = playSeVer2( spep_0 + 576 + adjust_timing, 1109, "", 0, 0, 0, -1);

--蹴り上げ２
SE046 = playSeVer2( spep_0 + 598 + adjust_timing, 1120, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 598 + adjust_timing, 1049, "", 0, 0, 0, -1);

--瞬間移動
SE048 = playSeVer2( spep_0 + 620 + adjust_timing, 1109, "", 0, 0, 0, -1);

--叩き落とす
SE049 = playSeVer2( spep_0 + 640 + adjust_timing, 1123, "", 0, 0, 0, -1);

--ビル激突
SE050 = playSeVer2(spep_0 + 672 + adjust_timing,1277,"",spep_0 + 752 + adjust_timing,0,18,-1);
SE051 = playSeVer2(spep_0 + 684 + adjust_timing,1061,"",spep_0 + 748 + adjust_timing,0,18,-1);
SE052 = playSeVer2(spep_0 + 690 + adjust_timing,1159,"",spep_0 + 752 + adjust_timing,0,20,-1);

--カードカットイン
--SE053 = playSeVer2( spep_1 + 10, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 714

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 敵前面
-------------------------------------------------
MAX_FRAME_2 = 482;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 36;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--気が立ち上がる
SE054 = playSeVer2( spep_2 + 8 + adjust_timing, 1068, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 8 + adjust_timing, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8 + adjust_timing, SE055, 119 );
SE056 = playSeVer2( spep_2 + 8 + adjust_timing, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8 + adjust_timing, SE056, 61 );

--顔カットイン
--SE057 = playSeVer2( spep_2 + 48 + adjust_timing, 1018, "", 0, 0, 0, -1);

--かめはめ波溜め
SE058 = playSeVer2( spep_2 + 54 + adjust_timing, 1209, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 54 + adjust_timing, 1490, "",spep_2 + 242 + adjust_timing, 0, 26, -1);
SE060 = playSeVer2( spep_2 + 98 + adjust_timing, 1355, "", 0, 0, 0, -1);

--かめはめ波発射
SE061 = playSeVer2( spep_2 + 198 + adjust_timing, 1284, "",spep_2 + 340 + adjust_timing, 0, 58, -1);
SE062 = playSeVer2( spep_2 + 198 + adjust_timing, 1285, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 198 + adjust_timing, 1213, "",spep_2 + 338 + adjust_timing, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 198 + adjust_timing, SE063, 78 );
SE064 = playSeVer2( spep_2 + 218 + adjust_timing, 1304, "",spep_2 + 318 + adjust_timing, 0, 36, -1);

--ビル吹き飛ぶ
SE065 = playSeVer2( spep_2 + 266 + adjust_timing, 1068, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 266 + adjust_timing, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266 + adjust_timing, SE066, 68 );

--爆発
SE067 = playSeVer2( spep_2 + 344 + adjust_timing, 1069, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 364 + adjust_timing, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 364 + adjust_timing, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 364 + adjust_timing, SE069, 75 );
setPitch( spep_2 + 364 + adjust_timing, SE069, -1200 );
setTimeStretch( SE069, 0.2, 30, 4 );
SE070 = playSeVer2( spep_2 + 364 + adjust_timing, 1427, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 366); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 482

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);


-------------------------------------------------
-- 敵前面
-------------------------------------------------
MAX_FRAME_0 = 714;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 140 + OFFSET_X, 1,17 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 106  );
changeAnime( spep_0 + 154 + OFFSET_X, 1, 108  );

setMoveKey( spep_0 + 140 + OFFSET_X, 1, -542.4, 99 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -542.4, 99 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -319.2, 214.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -319.2, 214.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 62, 99.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 62, 99.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 241.9, 72 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 241.9, 72 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 233.5, 100.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 233.5, 100.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 283.1, 54 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 283.1, 54 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 330.2, 64.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 330.2, 64.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 316.3, 63.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 316.3, 63.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 339.7, 52.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 339.7, 52.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 350.5, 68.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 350.5, 68.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 355.5, 60.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 355.5, 60.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 350.5, 50.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 355.5, 50.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 355.5, 45.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 355.5, 45.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 352.5, 48.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 352.5, 48.6 , 0 );

setScaleKey( spep_0 + 140 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, 27 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 27 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 25.6 );


--敵の動き2
setDisp( spep_0 + 196 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 196 + OFFSET_X, 1, 105  );

setMoveKey( spep_0 + 196 + OFFSET_X, 1, -6.9, -4.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -6.9, -4.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -20.1, 19.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -20.1, 19.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -32, 41.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -32, 41.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -40.3, 57.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -40.3, 57.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -49.3, 71.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -49.3, 71.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -56.4, 82.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -56.4, 82.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -60.5, 91.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -60.5, 91.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -65.5, 97.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -65.5, 97.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -68.5, 102.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -68.5, 102.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -73.5, 106.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -73.5, 106.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -73.5, 109.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -73.5, 109.5 , 0 );

setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 196 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -45.6 );


--敵の動き3
setDisp( spep_0 + 366 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 576 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 366 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 382 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 414 + OFFSET_X, 1, 118  );
changeAnime( spep_0 + 426 + OFFSET_X, 1, 107  );
changeAnime( spep_0 + 448 + OFFSET_X, 1, 108  );
changeAnime( spep_0 + 450 + OFFSET_X, 1, 106  );
changeAnime( spep_0 + 464 + OFFSET_X, 1, 108  );
changeAnime( spep_0 + 476 + OFFSET_X, 1, 107  );
changeAnime( spep_0 + 488 + OFFSET_X, 1,5 );
changeAnime( spep_0 + 518 + OFFSET_X, 1, 107  );
changeAnime( spep_0 + 520 + OFFSET_X, 1,7 );
changeAnime( spep_0 + 556 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 568 + OFFSET_X, 1,6 );

setMoveKey( spep_0 + 366 + OFFSET_X, 1, -286, -263.3 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -286, -263.3 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -256.7, -266 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -256.7, -266 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -229.7, -266 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -229.7, -266 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -68.7, -304.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -68.7, -304.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -186.9, -107 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -186.9, -107 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -255.2, -102.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -255.2, -102.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -239.9, -92.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -239.9, -92.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -261.5, -91.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -261.5, -91.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -266.6, -58.8 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -266.6, -58.8 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -266.6, -73.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -266.6, -73.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -263.9, -73.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -263.9, -73.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -262.6, -92.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -262.6, -92.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -276.1, -83.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -276.1, -83.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -285.5, -83.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -285.5, -83.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -276.1, -85.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -276.1, -85.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -285.5, -80.4 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -285.5, -80.4 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -289.6, -80.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -289.6, -80.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -286.9, -80.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -286.9, -80.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 80.1, 139.9 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 80.1, 139.9 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 65.4, 145.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 65.4, 145.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 49.7, 150.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 49.7, 150.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 32.6, 153.5 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 32.6, 153.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 17.6, 150.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 17.6, 150.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 10, 146.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 10, 146.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -27.4, 191 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -27.4, 191 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -8.1, 209.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -8.1, 209.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 2, 201.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 2, 201.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 21.1, 205.5 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 21.1, 205.5 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 35.7, 236.9 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 35.7, 236.9 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 44.9, 225.1 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 44.9, 225.1 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 53.3, 227.6 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 53.3, 227.6 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 67.4, 231.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 67.4, 231.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 75.3, 235.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 75.3, 235.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 89.4, 237.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 89.4, 237.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 98.5, 238.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 98.5, 238.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 152.7, 122.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 152.7, 122.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 61.2, 148.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 61.2, 148.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 39.9, 163.9 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 39.9, 163.9 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 9.8, 143.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 9.8, 143.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 8, 155.9 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 8, 155.9 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -4.8, 135.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -4.8, 135.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -16.2, 151.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -16.2, 151.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -39.7, 139.1 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -39.7, 139.1 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 25, 250.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 25, 250.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -3, 220.3 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -3, 220.3 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 13.2, 257.7 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 13.2, 257.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 24.9, 240.9 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 24.9, 240.9 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 12.3, 243 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 12.3, 243 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 0.5, 237 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 0.5, 237 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 32.2, 283 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 32.2, 283 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 79.1, 277.3 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 79.1, 277.3 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 117.1, 291 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 117.1, 291 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 153.2, 294.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 153.2, 294.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 187.3, 302.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 187.3, 302.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 221, 299.5 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 221, 299.5 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 250.8, 273.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 250.8, 273.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 248.7, 278.1 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 248.7, 278.1 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 230.8, 279.1 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 230.8, 279.1 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 204.6, 253.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 204.6, 253.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 220.6, 266.5 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 220.6, 266.5 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 195.7, 262.6 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 195.7, 262.6 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 201.1, 260.2 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 201.1, 260.2 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 195.2, 266.8 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 195.2, 266.8 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 189.2, 265.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 189.2, 265.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 184.2, 262 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 184.2, 262 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 179, 268.7 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 179, 268.7 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 172.3, 257.3 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 172.3, 257.3 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 166.2, 264.5 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 166.2, 264.5 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 160.8, 263.4 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 160.8, 263.4 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 155.4, 259.6 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 155.4, 259.6 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 249.1, 246.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 249.1, 246.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 119.6, 177.6 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 119.6, 177.6 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 129.7, 166.5 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 129.7, 166.5 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 97.2, 173.7 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 97.2, 173.7 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 114.5, 148.4 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 114.5, 148.4 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 123.3, 162.2 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 123.3, 162.2 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 103.1, 147.8 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 103.1, 147.8 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 94.1, 154.4 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 94.1, 154.4 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 88.7, 143.9 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 88.7, 143.9 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 82.2, 140.7 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 82.2, 140.7 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 73.2, 140.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 73.2, 140.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 73.5, 132.6 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 73.5, 132.6 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 68.8, 128.5 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 68.8, 128.5 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 64.1, 124.3 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 64.1, 124.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 59.4, 120.2 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 59.4, 120.2 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 54.6, 116.1 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 54.6, 116.1 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 49.9, 111.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 49.9, 111.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 45.2, 107.8 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 45.2, 107.8 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -119.1, 343.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -119.1, 343.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -128.2, 323.1 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -128.2, 323.1 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -138.5, 308.1 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -138.5, 308.1 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -171.2, 328.7 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -171.2, 328.7 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -173.4, 296 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -173.4, 296 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -172.3, 280 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -172.3, 280 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -189.8, 277.3 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -189.8, 277.3 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -185.8, 272.9 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -185.8, 272.9 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -198.3, 280.8 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -198.3, 280.8 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -199.4, 279.8 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -199.4, 279.8 , 0 );

setScaleKey( spep_0 + 366 + OFFSET_X, 1, 14.01, 14.01 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 14.01, 14.01 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 13.99, 13.99 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 13.99, 13.99 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 573 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 576 + OFFSET_X, 1, 3.59, 3.59 );

setRotateKey( spep_0 + 366 + OFFSET_X, 1, 43 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 43 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 77.5 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, 77.5 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 192.5 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, 192.5 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 192.4 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, 192.4 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 192.3 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, 192.3 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, 269.5 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 269.5 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, 270.3 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, 270.3 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, 269.5 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, 269.5 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 269.4 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, 269.4 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, 269.7 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 269.7 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 400.9 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 400.9 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 394.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 394.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 388.5 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 388.5 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 382.2 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 382.2 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 376 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, 376 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 369.8 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, 369.8 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 302.1 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, 302.1 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 301.9 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, 301.9 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, 301.7 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, 301.7 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 301.4 );
setRotateKey( spep_0 + 495 + OFFSET_X, 1, 301.4 );
setRotateKey( spep_0 + 496 + OFFSET_X, 1, 301.2 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, 301.2 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, 301 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, 301 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, 300.8 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 300.8 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, 300.6 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, 300.6 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, 300.4 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, 300.4 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, 300.3 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, 300.3 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, 382.6 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, 382.6 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, 297.6 );
setRotateKey( spep_0 + 521 + OFFSET_X, 1, 297.6 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, 298.5 );
setRotateKey( spep_0 + 523 + OFFSET_X, 1, 298.5 );
setRotateKey( spep_0 + 524 + OFFSET_X, 1, 299.4 );
setRotateKey( spep_0 + 525 + OFFSET_X, 1, 299.4 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, 300.4 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, 300.4 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, 301.3 );
setRotateKey( spep_0 + 529 + OFFSET_X, 1, 301.3 );
setRotateKey( spep_0 + 530 + OFFSET_X, 1, 302.3 );
setRotateKey( spep_0 + 531 + OFFSET_X, 1, 302.3 );
setRotateKey( spep_0 + 532 + OFFSET_X, 1, 303.2 );
setRotateKey( spep_0 + 533 + OFFSET_X, 1, 303.2 );
setRotateKey( spep_0 + 534 + OFFSET_X, 1, 304.1 );
setRotateKey( spep_0 + 535 + OFFSET_X, 1, 304.1 );
setRotateKey( spep_0 + 536 + OFFSET_X, 1, 305.1 );
setRotateKey( spep_0 + 537 + OFFSET_X, 1, 305.1 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 306 );
setRotateKey( spep_0 + 539 + OFFSET_X, 1, 306 );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 307 );
setRotateKey( spep_0 + 541 + OFFSET_X, 1, 307 );
setRotateKey( spep_0 + 542 + OFFSET_X, 1, 307.9 );
setRotateKey( spep_0 + 543 + OFFSET_X, 1, 307.9 );
setRotateKey( spep_0 + 544 + OFFSET_X, 1, 308.9 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 308.9 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 309.8 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 309.8 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 310.7 );
setRotateKey( spep_0 + 549 + OFFSET_X, 1, 310.7 );
setRotateKey( spep_0 + 550 + OFFSET_X, 1, 311.7 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, 311.7 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 312.6 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 312.6 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 401.2 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 401.2 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 390.5 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 390.5 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 379.7 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 379.7 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 368.8 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, 368.8 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 358.1 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 358.1 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 347.5 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 347.5 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 337 );
setRotateKey( spep_0 + 569 + OFFSET_X, 1, 337 );
setRotateKey( spep_0 + 570 + OFFSET_X, 1, 332 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 332 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 326.2 );
setRotateKey( spep_0 + 573 + OFFSET_X, 1, 326.2 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 321 );
setRotateKey( spep_0 + 576 + OFFSET_X, 1, 321 );


--敵の動き4
setDisp( spep_0 + 598 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 640 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 598 + OFFSET_X, 1, 108  );

setMoveKey( spep_0 + 598 + OFFSET_X, 1, -122.9, 312.5 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -122.9, 312.5 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -47.1, 345.8 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -47.1, 345.8 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 49.2, 390.1 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 49.2, 390.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 130.8, 457.1 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 130.8, 457.1 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 208.5, 497.7 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 208.5, 497.7 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 290, 573.5 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 290, 573.5 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 411, 595.6 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 411, 595.6 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 489.7, 652.9 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 489.7, 652.9 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 554, 681.6 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 554, 681.6 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 647.4, 769.3 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, 647.4, 769.3 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, 662.2, 828.4 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, 662.2, 828.4 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, 677.1, 887.5 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, 677.1, 887.5 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, -137.6, -285.5 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, -137.6, -285.5 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, -112.7, -248.5 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, -112.7, -248.5 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, -89.1, -210.3 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, -89.1, -210.3 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, -65.4, -172.1 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, -65.4, -172.1 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -34.2, -123.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -34.2, -123.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -4.4, -61.7 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -4.4, -61.7 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, 21.4, 7.6 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, 21.4, 7.6 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, 52.5, 102.3 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, 52.5, 102.3 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, 80.1, 241.2 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 80.1, 241.2 , 0 );

setScaleKey( spep_0 + 598 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 1.49, 1.49 );

setRotateKey( spep_0 + 598 + OFFSET_X, 1, 257.2 );
setRotateKey( spep_0 + 599 + OFFSET_X, 1, 257.2 );
setRotateKey( spep_0 + 600 + OFFSET_X, 1, 267.9 );
setRotateKey( spep_0 + 601 + OFFSET_X, 1, 267.9 );
setRotateKey( spep_0 + 602 + OFFSET_X, 1, 278.6 );
setRotateKey( spep_0 + 603 + OFFSET_X, 1, 278.6 );
setRotateKey( spep_0 + 604 + OFFSET_X, 1, 289.4 );
setRotateKey( spep_0 + 605 + OFFSET_X, 1, 289.4 );
setRotateKey( spep_0 + 606 + OFFSET_X, 1, 299.3 );
setRotateKey( spep_0 + 607 + OFFSET_X, 1, 299.3 );
setRotateKey( spep_0 + 608 + OFFSET_X, 1, 311.6 );
setRotateKey( spep_0 + 609 + OFFSET_X, 1, 311.6 );
setRotateKey( spep_0 + 610 + OFFSET_X, 1, 327.3 );
setRotateKey( spep_0 + 611 + OFFSET_X, 1, 327.3 );
setRotateKey( spep_0 + 612 + OFFSET_X, 1, 334 );
setRotateKey( spep_0 + 613 + OFFSET_X, 1, 334 );
setRotateKey( spep_0 + 614 + OFFSET_X, 1, 344.1 );
setRotateKey( spep_0 + 615 + OFFSET_X, 1, 344.1 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, 352.5 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 352.5 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, 316.5 );
setRotateKey( spep_0 + 627 + OFFSET_X, 1, 316.5 );
setRotateKey( spep_0 + 628 + OFFSET_X, 1, 316.4 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, 316.4 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, 316.9 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, 316.9 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, 316.8 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, 316.8 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, 316.7 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, 316.7 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, 316.6 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, 316.6 );


-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1011, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 6, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 40 );

--飛んでくる
SE004 = playSeVer2( spep_0 + 16, 1277, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 30, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 40 );

--飛んでくる
SE006 = playSeVer2( spep_0 + 44, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE006, 46 );
setPitch( spep_0 + 44, SE006, -1200 );
setTimeStretch( SE006, 0.4, 30, 4 );

--オーラ
SE007 = playSeVer2( spep_0 + 54, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE007, 40 );

--飛んでくる
SE008 = playSeVer2( spep_0 + 68, 1117, "", 0, 0, 0, -1);

--オーラ
SE009 = playSeVer2( spep_0 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE009, 40 );

--飛んでくる
SE010 = playSeVer2( spep_0 + 80, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE010, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 96; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--オーラ
SE011 = playSeVer2( spep_0 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE011, 40 );

--殴り飛ばす
SE012 = playSeVer2( spep_0 + 124 + adjust_timing, 1116, "", spep_0 + 166 + adjust_timing, 0, 14, -1);
SE013 = playSeVer2( spep_0 + 148 + adjust_timing, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 148 + adjust_timing, 1359, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 180 + adjust_timing, 1121, "", spep_0 + 252 + adjust_timing, 0, 36, -1);
SE016 = playSeVer2( spep_0 + 180 + adjust_timing, 1183, "", spep_0 + 252 + adjust_timing, 0, 22, -1);

--ビル激突
SE017 = playSeVer2( spep_0 + 220 + adjust_timing, 1061, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 220 + adjust_timing, 1067, "", 0, 0, 0, -1);

--土煙
SE019 = playSeVer2( spep_0 + 264 + adjust_timing, 1011, "", 0, 14, 0, -1);
setStartTimeMs( SE019, 33 );

--オーラ
SE020 = playSeVer2( spep_0 + 310 + adjust_timing, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310 + adjust_timing, SE020, 63 );
SE021 = playSeVer2( spep_0 + 334 + adjust_timing, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334 + adjust_timing, SE021, 63 );

--向かってくる
SE022 = playSeVer2( spep_0 + 334 + adjust_timing, 1467, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334 + adjust_timing, SE022, 151 );
SE023 = playSeVer2( spep_0 + 344 + adjust_timing, 1116, "", spep_0 + 400 + adjust_timing, 0, 34, -1);

--オーラ
SE024 = playSeVer2( spep_0 + 358 + adjust_timing, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 358 + adjust_timing, SE024, 63 );

--パンチ
SE025 = playSeVer2( spep_0 + 374 + adjust_timing, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 374 + adjust_timing, 1187, "", 0, 0, 0, -1);

--オーラ
SE027 = playSeVer2( spep_0 + 382 + adjust_timing, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382 + adjust_timing, SE027, 63 );

--ラッシュ
SE028 = playSeVer2( spep_0 + 422 + adjust_timing, 1414, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 422 + adjust_timing, 1110, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 422 + adjust_timing, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422 + adjust_timing, SE030, 63 );
SE031 = playSeVer2( spep_0 + 434 + adjust_timing, 1109, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 448 + adjust_timing, 1010, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 448 + adjust_timing, 1110, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 448 + adjust_timing, 1491, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 466 + adjust_timing, 1109, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 490 + adjust_timing, 1110, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 490 + adjust_timing, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490 + adjust_timing, SE037, 73 );
SE038 = playSeVer2( spep_0 + 490 + adjust_timing, 1414, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 504 + adjust_timing, 1109, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 522 + adjust_timing, 1153, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 522 + adjust_timing, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522 + adjust_timing, SE041, 77 );
SE042 = playSeVer2( spep_0 + 540 + adjust_timing, 1109, "", 0, 0, 0, -1);

--蹴り上げ
SE043 = playSeVer2( spep_0 + 558 + adjust_timing, 1491, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 558 + adjust_timing, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE045 = playSeVer2( spep_0 + 576 + adjust_timing, 1109, "", 0, 0, 0, -1);

--蹴り上げ２
SE046 = playSeVer2( spep_0 + 598 + adjust_timing, 1120, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 598 + adjust_timing, 1049, "", 0, 0, 0, -1);

--瞬間移動
SE048 = playSeVer2( spep_0 + 620 + adjust_timing, 1109, "", 0, 0, 0, -1);

--叩き落とす
SE049 = playSeVer2( spep_0 + 640 + adjust_timing, 1123, "", 0, 0, 0, -1);

--ビル激突
SE050 = playSeVer2(spep_0 + 672 + adjust_timing,1277,"",spep_0 + 752 + adjust_timing,0,18,-1);
SE051 = playSeVer2(spep_0 + 684 + adjust_timing,1061,"",spep_0 + 748 + adjust_timing,0,18,-1);
SE052 = playSeVer2(spep_0 + 690 + adjust_timing,1159,"",spep_0 + 752 + adjust_timing,0,20,-1);

--カードカットイン
--SE053 = playSeVer2( spep_1 + 10, 1035, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 714

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 敵前面
-------------------------------------------------
MAX_FRAME_2 = 482;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_2 + 36;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--気が立ち上がる
SE054 = playSeVer2( spep_2 + 8 + adjust_timing, 1068, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 8 + adjust_timing, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8 + adjust_timing, SE055, 119 );
SE056 = playSeVer2( spep_2 + 8 + adjust_timing, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8 + adjust_timing, SE056, 61 );

--顔カットイン
--SE057 = playSeVer2( spep_2 + 48 + adjust_timing, 1018, "", 0, 0, 0, -1);

--かめはめ波溜め
SE058 = playSeVer2( spep_2 + 54 + adjust_timing, 1209, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 54 + adjust_timing, 1490, "",spep_2 + 242 + adjust_timing, 0, 26, -1);
SE060 = playSeVer2( spep_2 + 98 + adjust_timing, 1355, "", 0, 0, 0, -1);

--かめはめ波発射
SE061 = playSeVer2( spep_2 + 198 + adjust_timing, 1284, "",spep_2 + 340 + adjust_timing, 0, 58, -1);
SE062 = playSeVer2( spep_2 + 198 + adjust_timing, 1285, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 198 + adjust_timing, 1213, "",spep_2 + 338 + adjust_timing, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 198 + adjust_timing, SE063, 78 );
SE064 = playSeVer2( spep_2 + 218 + adjust_timing, 1304, "",spep_2 + 318 + adjust_timing, 0, 36, -1);

--ビル吹き飛ぶ
SE065 = playSeVer2( spep_2 + 266 + adjust_timing, 1068, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 266 + adjust_timing, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266 + adjust_timing, SE066, 68 );

--爆発
SE067 = playSeVer2( spep_2 + 344 + adjust_timing, 1069, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_2 + 364 + adjust_timing, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 364 + adjust_timing, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 364 + adjust_timing, SE069, 75 );
setPitch( spep_2 + 364 + adjust_timing, SE069, -1200 );
setTimeStretch( SE069, 0.2, 30, 4 );
SE070 = playSeVer2( spep_2 + 364 + adjust_timing, 1427, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 366); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 482



end