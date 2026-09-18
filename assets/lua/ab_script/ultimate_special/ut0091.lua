-- 4030450:LR_超ベジット_アクティブ必殺技：スピリッツソード
-- sp_effect_a3_00115
-- ut0091

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 163626;  --   ef_001 オーラ出し→崖
SP_01b = 163627;  --   ef_001_b オーラ出し→崖
SP_02  = 163628;  --   ef_002 KO

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 182 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1142 -1);  -- スキップ先フレーム指定


       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- オーラ出し→崖
------------------------------------------------------
MAX_FRAME_0 = 1570;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- オーラ出し→崖(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- オーラ出し→崖(ef_001_b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

KO = entryEffect( spep_0 + 1562, SP_02, 0x100, -1, 0, 0, 0); -- KO(ef_002)
setEffMoveKey( spep_0 + 1562, KO, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0 + 110, KO, 0, 0 , 0);
setEffScaleKey( spep_0 + 1562, KO, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0 + 110, KO, 1.0, 1.0);
setEffRotateKey( spep_0 + 1562, KO, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0 + 110, KO, 0);
setEffAlphaKey( spep_0 + 1562, KO, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 + 110, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 246 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 194 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 222 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 194 + OFFSET_X, 1, -4.7, -50.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -4.7, -50.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -4.9, -49 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -4.9, -49 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -5.1, -47.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -5.1, -47.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -5.3, -46.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -5.3, -46.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -5.4, -45.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -5.4, -45.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -5.6, -44.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -5.6, -44.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -5.8, -43.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -5.8, -43.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -6, -42.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -6, -42.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -6, 24.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -6, 24.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -31, -72.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -31, -72.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 51.8, -2.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 51.8, -2.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -72.3, -17.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -72.3, -17.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -0.1, -33.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -0.1, -33.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -8.3, -51 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -8.3, -51 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -34.6, -62.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -34.6, -62.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -5.2, -46.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -5.2, -46.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -5.2, -43.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -5.2, -43.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 0, -48 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 0, -48 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -4.8, -44 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -4.8, -44 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -2.7, -50.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -2.7, -50.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -2, -50.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -2, -50.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -1.6, -49.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -1.6, -49.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 0.7, -46.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 0.7, -46.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 2.2, -47.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 2.2, -47.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -2.3, -50.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -2.3, -50.2 , 0 );

setScaleKey( spep_0 + 194 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 194 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 18.5 );

--敵の動き2
setDisp( spep_0 + 388 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 488 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 388 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 426 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 432 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 388 + OFFSET_X, 1, 295.3, -264 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 295.3, -264 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 295.5, -264.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 295.5, -264.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 295.7, -264.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 295.7, -264.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 311.8, -264.7 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 311.8, -264.7 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 312, -265 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 312, -265 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 360.2, -265.2 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 360.2, -265.2 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 360.3, -265.4 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 360.3, -265.4 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 360.5, -265.7 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 360.5, -265.7 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 360.6, -265.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 360.6, -265.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 360.8, -266.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 360.8, -266.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 356.9, -268.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 356.9, -268.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 357.1, -268.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 357.1, -268.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 357.2, -268.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 357.2, -268.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 159.4, -145 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 159.4, -145 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 159.5, -145.3 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 159.5, -145.3 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 71.8, -77.6 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 71.8, -77.6 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 72, -77.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 72, -77.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 72.2, -78.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 72.2, -78.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 112.5, -32.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 112.5, -32.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 197.3, 71 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 197.3, 71 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 171.3, 2.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 171.3, 2.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 202.6, 123.5 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 202.6, 123.5 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 224.8, 133.8 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 224.8, 133.8 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 188.9, 134.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 188.9, 134.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 233.3, 132.7 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 233.3, 132.7 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 235.4, 136.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 235.4, 136.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 244.9, 140.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 244.9, 140.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 242.6, 153.3 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 242.6, 153.3 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 254.3, 129.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 254.3, 129.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 266.9, 145.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 266.9, 145.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 244.8, 133.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 244.8, 133.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 254.4, 128.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 254.4, 128.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 258.3, 152.5 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 258.3, 152.5 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 272.9, 160.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 272.9, 160.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 261.8, 144.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 261.8, 144.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 274.7, 151.4 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 274.7, 151.4 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 279.6, 158.2 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 279.6, 158.2 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 269.6, 157.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 269.6, 157.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 268.9, 145 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 268.9, 145 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 286.1, 152.4 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 286.1, 152.4 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 279.4, 155.7 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 279.4, 155.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 280.5, 156.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 280.5, 156.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 282.4, 153.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 282.4, 153.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 283.9, 155.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 283.9, 155.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 279.7, 155 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 279.7, 155 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 279.9, 155.9 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 279.9, 155.9 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 283.3, 157.5 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 283.3, 157.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 285.5, 159.3 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 285.5, 159.3 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 284, 158.5 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 284, 158.5 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 285.5, 157.4 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 285.5, 157.4 , 0 );

setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 388 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 37.6 );

--敵の動き3
setDisp( spep_0 + 694 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 724 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 694 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 694 + OFFSET_X, 1, -263.8, 20 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -263.8, 20 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -252, -160 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -252, -160 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -245.8, -113.5 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -245.8, -113.5 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -239.7, -67.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -239.7, -67.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -233.5, -20.6 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -233.5, -20.6 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -163.8, 125.4 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -163.8, 125.4 , 0 );

setScaleKey( spep_0 + 694 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 2.76, 2.76 );

setRotateKey( spep_0 + 694 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, 0 );

--敵の動き4
setDisp( spep_0 + 758 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 766 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 758 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 758 + OFFSET_X, 1, 12.1, -12.7 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 12.1, -12.7 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 3.5, -22.3 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 3.5, -22.3 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, -13.2, -41.2 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, -13.2, -41.2 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -214.2, -133.4 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, -214.2, -133.4 , 0 );

setScaleKey( spep_0 + 758 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 2.13, 2.13 );

setRotateKey( spep_0 + 758 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 761 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 762 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 763 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 764 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 766 + OFFSET_X, 1, -0.5 );

--敵の動き5
setDisp( spep_0 + 802 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 812 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 802 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 806 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 802 + OFFSET_X, 1, 15.4, -28 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 15.4, -28 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 34.7, -7.3 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 34.7, -7.3 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 105.2, 22.7 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 105.2, 22.7 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 156.9, 77.7 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 156.9, 77.7 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 176.5, 62.8 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 176.5, 62.8 , 0 );

setScaleKey( spep_0 + 802 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 812 + OFFSET_X, 1, 0.27, 0.27 );

setRotateKey( spep_0 + 802 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_0 + 812 + OFFSET_X, 1, 8.7 );

--敵の動き6
setDisp( spep_0 + 862 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1024 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 862 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 870 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 878 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 886 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 894 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 902 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 910 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 918 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 926 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 930 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 938 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 862 + OFFSET_X, 1, -425, 639 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -425, 639 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -283.1, 707 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, -283.1, 707 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -141.1, 775 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -141.1, 775 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -39.2, 335.1 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -39.2, 335.1 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 569.9, -166.4 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 569.9, -166.4 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 284, -43.4 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, 284, -43.4 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, -1.9, 79.5 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, -1.9, 79.5 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, -695.8, 563.2 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, -695.8, 563.2 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -410.9, 491.3 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, -410.9, 491.3 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, -126, 419.3 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, -126, 419.3 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, -24, 137.4 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, -24, 137.4 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, 161.1, 38.3 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, 161.1, 38.3 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, 23.1, 23.3 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, 23.1, 23.3 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, -114.8, 8.3 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, -114.8, 8.3 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 823.3, 83.2 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 823.3, 83.2 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 625.4, 102.2 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 625.4, 102.2 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 427.5, 121.2 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 427.5, 121.2 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 311.5, -65.7 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 181.9, -55.6 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 181.9, -55.6 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 410.8, -12.6 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 410.8, -12.6 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 639.8, 30.4 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 639.8, 30.4 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 121.3, 374.6 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 121.3, 374.6 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, -33.7, 432.6 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, -33.7, 432.6 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, -188.6, 490.5 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, -188.6, 490.5 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 268, 124.4 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 268, 124.4 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 204, 68.4 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, 204, 68.4 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, 140.1, 12.5 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 140.1, 12.5 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 76.1, -43.5 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, 76.1, -43.5 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, -135.2, 110.8 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, -135.2, 110.8 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, -156.2, 345.4 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, -156.2, 345.4 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 349.7, 141.4 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, 349.7, 141.4 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, 324.2, 100.8 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 324.2, 100.8 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, -195.4, 44.8 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, -195.4, 44.8 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, -106.9, 154.6 , 0 );
setMoveKey( spep_0 + 939 + OFFSET_X, 1, -106.9, 154.6 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, -264.7, 116.6 , 0 );
setMoveKey( spep_0 + 943 + OFFSET_X, 1, -264.7, 116.6 , 0 );
setMoveKey( spep_0 + 944 + OFFSET_X, 1, 36.3, 469.6 , 0 );
setMoveKey( spep_0 + 945 + OFFSET_X, 1, 36.3, 469.6 , 0 );
setMoveKey( spep_0 + 946 + OFFSET_X, 1, 8.3, 397.6 , 0 );
setMoveKey( spep_0 + 947 + OFFSET_X, 1, 8.3, 397.6 , 0 );
setMoveKey( spep_0 + 948 + OFFSET_X, 1, -10, 330.5 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, -10, 330.5 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, -47.1, 265.2 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, -47.1, 265.2 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, -38.8, 266.5 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, -38.8, 266.5 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, -38.9, 263.5 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, -38.9, 263.5 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, -48.5, 267.8 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, -48.5, 267.8 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, -45, 274.2 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, -45, 274.2 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, -48.1, 273.7 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, -48.1, 273.7 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, -47.6, 272.2 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, -47.6, 272.2 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, -43.4, 268.2 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, -43.4, 268.2 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, -41.6, 275.8 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, -41.6, 275.8 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, 0.5, 206.9 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, 0.5, 206.9 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 167.4, 153.9 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 167.4, 153.9 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 152.9, 38.7 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 152.9, 38.7 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 143, -40.9 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, 143, -40.9 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 136.2, -95.7 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, 136.2, -95.7 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, 131.4, -134.1 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 131.4, -134.1 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 128.1, -161.3 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, 128.1, -161.3 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 125.6, -181.1 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 125.6, -181.1 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 123.8, -195.9 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 123.8, -195.9 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 122.4, -207.1 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 122.4, -207.1 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 121.2, -216 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 121.2, -216 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 120.4, -222 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 120.4, -222 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 119.8, -227 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 119.8, -227 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 119.2, -231 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 119.2, -231 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 118.8, -234.4 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 118.8, -234.4 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 118.4, -237.3 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 118.4, -237.3 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 118.1, -239.8 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 118.1, -239.8 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 117.8, -241.9 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 117.8, -241.9 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 117.5, -243.8 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 117.5, -243.8 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 117.3, -245.5 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 117.3, -245.5 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 117.1, -247.1 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 117.1, -247.1 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 116.9, -248.6 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 116.9, -248.6 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 116.7, -249.9 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 116.7, -249.9 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 116.5, -251.2 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 116.5, -251.2 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 116.3, -252.5 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 116.3, -252.5 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 116.2, -253.8 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 116.2, -253.8 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 116, -255 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 116, -255 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 115.9, -256.2 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 115.9, -256.2 , 0 );

setScaleKey( spep_0 + 862 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 925 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 926 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 929 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 930 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 933 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 934 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 943 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 944 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 945 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 946 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 947 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 948 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 949 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 950 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 951 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 952 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 967 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 968 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 969 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 970 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 971 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 972 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 973 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 974 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 975 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 976 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 977 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 978 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 979 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 980 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 981 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 982 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 983 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 984 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 985 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 986 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 987 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 988 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 989 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 990 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 991 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 992 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 997 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 998 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 1005 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 1006 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 1019 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 1020 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 1024 + OFFSET_X, 1, 0.67, 0.67 );

setRotateKey( spep_0 + 862 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 877 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 878 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 885 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 886 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 893 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_0 + 901 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_0 + 902 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 909 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 910 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_0 + 917 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_0 + 918 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 925 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 926 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 933 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 934 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 937 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_0 + 938 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_0 + 967 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_0 + 968 + OFFSET_X, 1, -134.5 );
setRotateKey( spep_0 + 1024 + OFFSET_X, 1, -134.5 );

--敵の動き7
setDisp( spep_0 + 1064 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1070 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1064 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 1064 + OFFSET_X, 1, 129.9, -284.1 , 0 );
setMoveKey( spep_0 + 1067 + OFFSET_X, 1, 129.9, -284.1 , 0 );
setMoveKey( spep_0 + 1068 + OFFSET_X, 1, 329.9, -602.1 , 0 );
setMoveKey( spep_0 + 1070 + OFFSET_X, 1, 329.9, -602.1 , 0 );

setScaleKey( spep_0 + 1064 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 1067 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 1068 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 1070 + OFFSET_X, 1, 3.53, 3.53 );

setRotateKey( spep_0 + 1064 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 1067 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 1068 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_0 + 1070 + OFFSET_X, 1, -51.4 );

--敵の動き8
setDisp( spep_0 + 1082 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1104 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1082 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1082 + OFFSET_X, 1, 101.6, -65.9 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, 101.6, -65.9 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, -27.9, 15.3 , 0 );
setMoveKey( spep_0 + 1087 + OFFSET_X, 1, -27.9, 15.3 , 0 );
setMoveKey( spep_0 + 1088 + OFFSET_X, 1, -38, 33.4 , 0 );
setMoveKey( spep_0 + 1091 + OFFSET_X, 1, -38, 33.4 , 0 );
setMoveKey( spep_0 + 1092 + OFFSET_X, 1, -14, 23.6 , 0 );
setMoveKey( spep_0 + 1097 + OFFSET_X, 1, -14, 23.6 , 0 );
setMoveKey( spep_0 + 1098 + OFFSET_X, 1, 270.6, -250.7 , 0 );
setMoveKey( spep_0 + 1099 + OFFSET_X, 1, 270.6, -250.7 , 0 );
setMoveKey( spep_0 + 1100 + OFFSET_X, 1, 369.3, -233.9 , 0 );
setMoveKey( spep_0 + 1101 + OFFSET_X, 1, 369.3, -233.9 , 0 );
setMoveKey( spep_0 + 1102 + OFFSET_X, 1, 447.6, -332 , 0 );
setMoveKey( spep_0 + 1104 + OFFSET_X, 1, 447.6, -332 , 0 );

setScaleKey( spep_0 + 1082 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 1083 + OFFSET_X, 1, 9.56, 9.56 );
setScaleKey( spep_0 + 1084 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 1087 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 1088 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 1091 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 1092 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 1097 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 1098 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1099 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1100 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 1104 + OFFSET_X, 1, 0.47, 0.47 );

setRotateKey( spep_0 + 1082 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_0 + 1083 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_0 + 1084 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 1087 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 1088 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_0 + 1104 + OFFSET_X, 1, 34.9 );

--敵の動き9
setDisp( spep_0 + 1246 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1280 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1246 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1246 + OFFSET_X, 1, 143.8, -142 , 0 );
setMoveKey( spep_0 + 1247 + OFFSET_X, 1, 143.8, -142 , 0 );
setMoveKey( spep_0 + 1248 + OFFSET_X, 1, 141.7, -189.7 , 0 );
setMoveKey( spep_0 + 1249 + OFFSET_X, 1, 141.7, -189.7 , 0 );
setMoveKey( spep_0 + 1250 + OFFSET_X, 1, 140, -226.9 , 0 );
setMoveKey( spep_0 + 1251 + OFFSET_X, 1, 140, -226.9 , 0 );
setMoveKey( spep_0 + 1252 + OFFSET_X, 1, 138.7, -255.2 , 0 );
setMoveKey( spep_0 + 1253 + OFFSET_X, 1, 138.7, -255.2 , 0 );
setMoveKey( spep_0 + 1254 + OFFSET_X, 1, 137.7, -276.2 , 0 );
setMoveKey( spep_0 + 1255 + OFFSET_X, 1, 137.7, -276.2 , 0 );
setMoveKey( spep_0 + 1256 + OFFSET_X, 1, 137, -291.2 , 0 );
setMoveKey( spep_0 + 1257 + OFFSET_X, 1, 137, -291.2 , 0 );
setMoveKey( spep_0 + 1258 + OFFSET_X, 1, 136.6, -301.5 , 0 );
setMoveKey( spep_0 + 1259 + OFFSET_X, 1, 136.6, -301.5 , 0 );
setMoveKey( spep_0 + 1260 + OFFSET_X, 1, 136.3, -308.3 , 0 );
setMoveKey( spep_0 + 1261 + OFFSET_X, 1, 136.3, -308.3 , 0 );
setMoveKey( spep_0 + 1262 + OFFSET_X, 1, 136.1, -312.3 , 0 );
setMoveKey( spep_0 + 1263 + OFFSET_X, 1, 136.1, -312.3 , 0 );
setMoveKey( spep_0 + 1264 + OFFSET_X, 1, 136, -314.6 , 0 );
setMoveKey( spep_0 + 1265 + OFFSET_X, 1, 136, -314.6 , 0 );
setMoveKey( spep_0 + 1266 + OFFSET_X, 1, 135.9, -315.7 , 0 );
setMoveKey( spep_0 + 1267 + OFFSET_X, 1, 135.9, -315.7 , 0 );
setMoveKey( spep_0 + 1268 + OFFSET_X, 1, 135.9, -316.1 , 0 );
setMoveKey( spep_0 + 1271 + OFFSET_X, 1, 135.9, -316.1 , 0 );
setMoveKey( spep_0 + 1272 + OFFSET_X, 1, 135.9, -316.2 , 0 );
setMoveKey( spep_0 + 1273 + OFFSET_X, 1, 135.9, -316.2 , 0 );
setMoveKey( spep_0 + 1274 + OFFSET_X, 1, 135.9, -317.3 , 0 );
setMoveKey( spep_0 + 1275 + OFFSET_X, 1, 135.9, -317.3 , 0 );
setMoveKey( spep_0 + 1276 + OFFSET_X, 1, 135.9, -317.9 , 0 );
setMoveKey( spep_0 + 1277 + OFFSET_X, 1, 135.9, -317.9 , 0 );
setMoveKey( spep_0 + 1278 + OFFSET_X, 1, 135.9, -318.1 , 0 );
setMoveKey( spep_0 + 1280 + OFFSET_X, 1, 135.9, -318.1 , 0 );

setScaleKey( spep_0 + 1246 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 1247 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 1248 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 1249 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 1250 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 1251 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 1252 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1253 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1254 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 1255 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 1256 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 1257 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 1258 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1259 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1260 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 1261 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 1262 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 1263 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 1264 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 1273 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 1274 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 1280 + OFFSET_X, 1, 0.31, 0.31 );

setRotateKey( spep_0 + 1246 + OFFSET_X, 1, 50.7 );
setRotateKey( spep_0 + 1280 + OFFSET_X, 1, 50.7 );

--敵の動き10
setDisp( spep_0 + 1386 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1394 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1386 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 1386 + OFFSET_X, 1, 111.4, -170 , 0 );
setMoveKey( spep_0 + 1387 + OFFSET_X, 1, 111.4, -170 , 0 );
setMoveKey( spep_0 + 1388 + OFFSET_X, 1, 112.6, -237.5 , 0 );
setMoveKey( spep_0 + 1389 + OFFSET_X, 1, 112.6, -237.5 , 0 );
setMoveKey( spep_0 + 1390 + OFFSET_X, 1, 113.8, -239 , 0 );
setMoveKey( spep_0 + 1391 + OFFSET_X, 1, 113.8, -239 , 0 );
setMoveKey( spep_0 + 1392 + OFFSET_X, 1, 115.1, -240.5 , 0 );
setMoveKey( spep_0 + 1394 + OFFSET_X, 1, 115.1, -240.5 , 0 );

setScaleKey( spep_0 + 1386 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1387 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1388 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1391 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1392 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_0 + 1394 + OFFSET_X, 1, 0.05, 0.05 );

setRotateKey( spep_0 + 1386 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1394 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 1386 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_0 + 1393 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.6 );
setBlendColor( spep_0 + 1394 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);

--気ダメ
SE002 = playSeVer2( spep_0 + 14, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 121 );
SE003 = playSeVer2( spep_0 + 14, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 64 );

--オーラ
SE004 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);

--振りかぶる
SE009 = playSeVer2( spep_0 + 134, 1004, "", 0, 0, 0, -1);

--空気圧放つ
SE010 = playSeVer2( spep_0 + 148, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE010, 78 );
SE012 = playSeVer2( spep_0 + 158, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE012, 82 );
SE013 = playSeVer2( spep_0 + 158, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE013, 80 );

-- ** ボイス ** --
--「ポタラの威力を見せてやるか！」
playVoice( spep_0 + 10, 911 );
setVoiceVolume( spep_0 + 10, 911, 128 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 182; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--オーラ
SE014 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_0 + 192, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 87 );
SE016 = playSeVer2( spep_0 + 206, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE016, 79 );

--ソード出す
SE017 = playSeVer2( spep_0 + 242, 1116, "",spep_0 + 292, 0, 20, -1);
SE018 = playSeVer2( spep_0 + 248, 1148, "",spep_0 + 374, 0, 50, -1);
SE019 = playSeVer2( spep_0 + 254, 1426, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE019, 76 );
SE020 = playSeVer2( spep_0 + 272, 1152, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 274, 1122, "",spep_0 + 424, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 274, SE021, 75 );

--向かっていく
SE022 = playSeVer2( spep_0 + 340, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE022, 79 );
SE023 = playSeVer2( spep_0 + 340, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 340, 1117, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 346, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE025, 141 );

--振りかぶる
SE026 = playSeVer2( spep_0 + 382, 1116, "",spep_0 + 428, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 382, SE026, 82 );
SE027 = playSeVer2( spep_0 + 388, 1003, "", 0, 0, 0, -1);

--敵斬る
SE028 = playSeVer2( spep_0 + 410, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE028, 81 );
SE029 = playSeVer2( spep_0 + 414, 1026, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 414, 1120, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 414, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE031, 76 );

--余韻
SE033 = playSeVer2( spep_0 + 438, 1117, "", 0, 0, 0, -1);

--オーラ
SE032 = playSeVer2( spep_0 + 420, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 420, SE032, 50 );
SE034 = playSeVer2( spep_0 + 444, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 444, SE034, 50 );
SE035 = playSeVer2( spep_0 + 468, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE035, 50 );
SE038 = playSeVer2( spep_0 + 492, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE038, 50 );

--遠くで爆発する
SE036 = playSeVer2( spep_0 + 484, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE036, 174 );
SE037 = playSeVer2( spep_0 + 486, 1174, "",spep_0 + 630, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 486, SE037, 254 );
SE039 = playSeVer2( spep_0 + 498, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE039, 61 );
SE040 = playSeVer2( spep_0 + 506, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 506, SE040, 58 );
SE041 = playSeVer2( spep_0 + 506, 1126, "",spep_0 + 600, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 506, SE041, 54 );
setPitch( spep_0 + 506, SE041, 300 );
setTimeStretch( SE041, 1.2, 30, 4 );

--向かってくる
SE042 = playSeVer2( spep_0 + 556, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE042, 72 );
SE043 = playSeVer2( spep_0 + 556, 1182, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 556, 1167, "",spep_0 + 626, 0, 28, -1);
setPitch( spep_0 + 556, SE044, 300 );
setTimeStretch( SE044, 1.2, 30, 4 );

--飛んでいく
SE045 = playSeVer2( spep_0 + 580, 1188, "", 0, 14, 0, -1);
setStartTimeMs( SE045,  333 );
SE046 = playSeVer2( spep_0 + 588, 1121, "",spep_0 + 786, 0, 86, -1);
setPitch( spep_0 + 588, SE046, 200 );
setTimeStretch( SE046, 1.13, 30, 4 );
SE047 = playSeVer2( spep_0 + 588, 1183, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 588, 1019, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 652, 1019, "", 0, 0, 0, -1);

--飛んでいく（加速）
SE049 = playSeVer2( spep_0 + 640, 1452, "", 0, 0, 0, -1);

--斬る１
SE051 = playSeVer2( spep_0 + 708, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 708, SE051, 141 );
SE052 = playSeVer2( spep_0 + 712, 1187, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 716, 1114, "", 0, 0, 0, -1);

--斬る２
SE054 = playSeVer2( spep_0 + 756, 1032, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 758, 1120, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 758, 1187, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_0 + 762, 1114, "", 0, 0, 0, -1);

--さらに向かってくる
SE058 = playSeVer2( spep_0 + 800, 1235, "",spep_0 + 844, 0, 14, -1);
SE059 = playSeVer2( spep_0 + 812, 1245, "",spep_0 + 866, 0, 22, -1);

--連続斬り
SE060 = playSeVer2( spep_0 + 830, 1032, "", spep_0 + 830 + 20, 0, 2, -1);
SE061 = playSeVer2( spep_0 + 830, 1143, "", spep_0 + 830 + 30, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 830, SE061, 58 )
SE062 = playSeVer2( spep_0 + 830, 1142, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_0 + 830, 1425, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_0 + 840, 1032, "", spep_0 + 840 + 20, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 840, SE064, 85 );
SE065 = playSeVer2( spep_0 + 848, 1032, "", spep_0 + 848 + 20, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 848, SE065, 68 );
SE066 = playSeVer2( spep_0 + 848, 1143, "", spep_0 + 848 + 30, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 848, SE066, 71 );
SE067 = playSeVer2( spep_0 + 862, 1032, "", spep_0 + 862 + 20, 0, 2, -1);
SE068 = playSeVer2( spep_0 + 868, 1143, "", spep_0 + 868 + 30, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 868, SE068, 63 );
setPitch( spep_0 + 868, SE068, -100 );
setTimeStretch( SE068, 0.93, 30, 4 );
SE069 = playSeVer2( spep_0 + 872, 1032, "", spep_0 + 872 + 20, 0, 2, -1);
SE070 = playSeVer2( spep_0 + 884, 1032, "", spep_0 + 884 + 20, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 884, SE070, 76 );
SE071 = playSeVer2( spep_0 + 886, 1143, "", spep_0 + 886 + 30, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 886, SE071, 60 );
SE072 = playSeVer2( spep_0 + 894, 1032, "", spep_0 + 894 + 20, 0, 2, -1);
SE073 = playSeVer2( spep_0 + 904, 1143, "", spep_0 + 904 + 30, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 904, SE073, 68 );
setPitch( spep_0 + 904, SE073, 100 );
setTimeStretch( SE073, 1.07, 30, 4 );
SE074 = playSeVer2( spep_0 + 906, 1032, "", spep_0 + 906 + 20, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 906, SE074, 79 );
SE075 = playSeVer2( spep_0 + 906, 1142, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_0 + 914, 1156, "",spep_0 + 1024, 0, 66, -1);
SE077 = playSeVer2( spep_0 + 918, 1143, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_0 + 920, 1032, "", spep_0 + 920 + 20, 0, 2, -1);
SE079 = playSeVer2( spep_0 + 936, 1188, "", 0, 0, 0, -1);

--オーラ
SE080 = playSeVer2( spep_0 + 958, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 958, SE080, 63 );
SE083 = playSeVer2( spep_0 + 982, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 982, SE083, 63 );
SE084 = playSeVer2( spep_0 + 1006, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE084, 63 );
SE087 = playSeVer2( spep_0 + 1030, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1030, SE087, 63 );

--瞬間移動
SE081 = playSeVer2( spep_0 + 966, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 966, SE081, 108 );
SE082 = playSeVer2( spep_0 + 966, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 966, SE082, 79 );

--助走
SE085 = playSeVer2( spep_0 + 1016, 1116, "",spep_0 + 1062, 0, 18, -1);
SE086 = playSeVer2( spep_0 + 1018, 1004, "", 0, 0, 0, -1);

--ライダーキック
SE088 = playSeVer2( spep_0 + 1034, 1258, "",spep_0 + 1106, 0, 22, -1);
SE089 = playSeVer2( spep_0 + 1038, 1422, "",spep_0 + 1146, 0, 70, -1);

--敵ヒット
SE090 = playSeVer2( spep_0 + 1076, 1359, "", 0, 0, 0, -1);
SE091 = playSeVer2( spep_0 + 1078, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1078, SE091, 92 );
SE092 = playSeVer2( spep_0 + 1078, 1159, "",spep_0 + 1216, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 1078, SE092, 79 );

--敵吹き飛ぶ
SE093 = playSeVer2( spep_0 + 1096, 1027, "", 0, 0, 0, -1);
SE094 = playSeVer2( spep_0 + 1096, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE094, 155 );

--画面遷移
SE095 = playSeVer2( spep_0 + 1124, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1124, SE095, 79 );

--オーラ
SE096 = playSeVer2( spep_0 + 1140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1140, SE096, 63 );
SE097 = playSeVer2( spep_0 + 1160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1160, SE097, 63 );
SE098 = playSeVer2( spep_0 + 1160, 1176, "",spep_0 + 1320, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 1160, SE098, 77 );
SE100 = playSeVer2( spep_0 + 1180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1180, SE100, 63 );
SE101 = playSeVer2( spep_0 + 1200, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1200, SE101, 63 );
SE103 = playSeVer2( spep_0 + 1220, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1220, SE103, 63 );
SE106 = playSeVer2( spep_0 + 1240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1240, SE106, 63 );
SE107 = playSeVer2( spep_0 + 1260, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1260, SE107, 63 );
SE108 = playSeVer2( spep_0 + 1280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1280, SE108, 63 );
SE112 = playSeVer2( spep_0 + 1302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1302, SE112, 63 );
SE114 = playSeVer2( spep_0 + 1320, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1320, SE114, 63 );

--セリフカットイン
SE099 = playSeVer2( spep_0 + 1164, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1164, SE099, 63 );

--腕あげる
SE102 = playSeVer2( spep_0 + 1210, 1116, "",spep_0 + 1256, 0, 16, -1);

--ソードに気をためる
SE104 = playSeVer2( spep_0 + 1236, 1046, "", 0, 0, 0, -1);
SE105 = playSeVer2( spep_0 + 1236, 1122, "",spep_0 + 1318, 0, 46, -1);
setPitch( spep_0 + 1236, SE105, 300 );
setTimeStretch( SE105, 1.2, 30, 4 );

--十字斬り１
SE109 = playSeVer2( spep_0 + 1288, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1288, SE109, 132 );
SE110 = playSeVer2( spep_0 + 1288, 1141, "", 0, 0, 0, -1);
SE111 = playSeVer2( spep_0 + 1288, 1187, "", 0, 0, 0, -1);
SE113 = playSeVer2( spep_0 + 1300, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1300, SE113, 158 );

--十字斬り２
SE115 = playSeVer2( spep_0 + 1326, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1326, SE115, 132 );
SE116 = playSeVer2( spep_0 + 1326, 1187, "", 0, 0, 0, -1);
SE117 = playSeVer2( spep_0 + 1338, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1338, SE117, 146 );
SE118 = playSeVer2( spep_0 + 1340, 1143, "", 0, 0, 0, -1);
SE119 = playSeVer2( spep_0 + 1340, 1120, "", 0, 0, 0, -1);

--十字斬り飛んでいく
SE120 = playSeVer2( spep_0 + 1368, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1368, SE120, 79 );

--爆発
SE121 = playSeVer2( spep_0 + 1378, 1069, "", 0, 0, 0, -1);
SE122 = playSeVer2( spep_0 + 1400, 1067, "", 0, 0, 0, -1);
SE123 = playSeVer2( spep_0 + 1408, 1159, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「遠慮はしねえぞ…くらえ！！！」
playVoice( spep_0 + 1164, 912 );
setVoiceVolume( spep_0 + 1164, 912, 128 );


if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1558 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_0 + 1450 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1570f

else end
