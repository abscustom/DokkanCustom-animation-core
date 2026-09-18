--1031390:LR_超サイヤ人ゴッドSS孫悟空+超サイヤ人ゴッドSSベジータ_必殺技：本気の本当の怒り
--sp_effect_b1_00333
--sp2872

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163938;  -- 気だめ〜連続攻撃〜セリフ ef_001
SP_02 = 163940;  -- 強パンチ〜フィニッシュ ef_002


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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        MAX_FRAME_0 = 680;
        spep_2 = MAX_FRAME_0 + 94;---記載するspepの数に要注意
        
        skipFrame(0, spep_2 + 2);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 2, SP_01, spep_2 + 2-2, 1);

        --振りかぶる
        SE057 = playSeVer2( spep_2 + 2+3, 1188, "", 0, 22, 0, -1);
        setSeVolumeByWorkId( spep_2 + 2+3, SE057, 71 );
        setStartTimeMs( SE057,  300 );
        SE058 = playSeVer2( spep_2 + 2+3, 1116, "",spep_2 + 40, 0, 30, -1);

        --オーラ
        SE059 = playSeVer2( spep_2 + 2+3, 1176, "",spep_2 + 198, 0, 20, -1);
        setSeVolumeByWorkId( spep_2 + 2+3, SE059, 63 );
        SE060 = playSeVer2( spep_2 + 2+3, 1036, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 2+3, SE060, 50 );

    else 
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 気だめ〜連続攻撃〜セリフ
-------------------------------------------------
MAX_FRAME_0 = 680;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気だめ〜連続攻撃〜セリフ(ef_001)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 598;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 292 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 252 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 252 + OFFSET_X, 1, 63.5, -216.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 63.5, -216.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 68.8, -216.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 68.8, -216.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 74.2, -216.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 74.2, -216.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 79.5, -216.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 79.5, -216.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 92.9, -176.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 92.9, -176.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 92.9, -145.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 92.9, -145.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 84.9, -186.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 84.9, -186.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 76.9, -228.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 76.9, -228.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 86.9, -189.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 86.9, -189.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 96.9, -151 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 96.9, -151 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 80.9, -227 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 80.9, -227 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 92.9, -171 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 92.9, -171 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 80.9, -191 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 80.9, -191 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 100.9, -174.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 100.9, -174.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 84.9, -194.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 84.9, -194.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 96.9, -182.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 96.9, -182.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 104.9, -178.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 104.9, -178.9 , 0 );

setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.15, 1.15 );

setRotateKey( spep_0 + 252 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -26.6 );

--敵の動き2

setDisp( spep_0 + 340 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 406 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 340 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 376 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 340 + OFFSET_X, 1, 183.6, 82.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 183.6, 82.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 264.8, 138.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 264.8, 138.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 194.3, 109.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 194.3, 109.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 275.9, 181.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 275.9, 181.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 199, 121.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 199, 121.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 257.8, 178.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 257.8, 178.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 204.2, 120.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 204.2, 120.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 254.5, 166.2 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 254.5, 166.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 204.2, 125.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 204.2, 125.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 256, 158.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 256, 158.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 206.7, 135.6 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 206.7, 135.6 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 253.2, 166.6 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 253.2, 166.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 213.7, 136.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 213.7, 136.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 242.9, 155.2 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 242.9, 155.2 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 217.5, 145.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 217.5, 145.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 240.9, 157.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 240.9, 157.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 221.5, 147.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 221.5, 147.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 222.3, 153 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 222.3, 153 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -3.9, -3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -3.9, -3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -3.9, -2.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -3.9, -2.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -3.6, -2.2 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -3.6, -2.2 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -2.9, -0.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -2.9, -0.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -1.4, 3.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -1.4, 3.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -1.9, 3.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -1.9, 3.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -2, 3.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -2, 3.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -2.1, 3.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -2.1, 3.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -2.2, 3.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -2.2, 3.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -2.3, 3.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -2.3, 3.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -2.4, 3.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -2.4, 3.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -2.6, 3.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -2.6, 3.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -2.7, 3.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -2.7, 3.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -2.8, 3.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -2.8, 3.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -2.9, 4.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -2.9, 4.3 , 0 );

setScaleKey( spep_0 + 340 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 9.49, 9.49 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 9.49, 9.49 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 340 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -40.2 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -40.2 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 39.8 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 46 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 46 );

--敵の動き3

setDisp( spep_0 + 436 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 454 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 462 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 492 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 436 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 446 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 476 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 436 + OFFSET_X, 1, -424.3, -240 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -424.3, -240 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -413.2, -232 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -413.2, -232 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -379.7, -208.3 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -379.7, -208.3 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -324, -168.8 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -324, -168.8 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -246, -113.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -246, -113.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 61.3, 125.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 61.3, 125.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 60.4, 125.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 60.4, 125.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 59.5, 124.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 59.5, 124.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 58.6, 123.4 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 58.6, 123.4 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 57.7, 122.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 57.7, 122.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 55, 121.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 55, 121.3 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 52.3, 119.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 52.3, 119.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 49.7, 118.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 49.7, 118.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -47.7, 64.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -47.7, 64.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -50.4, 63.1 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -50.4, 63.1 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -53.1, 61.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -53.1, 61.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -275.2, -86.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -275.2, -86.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -427, -187.2 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -427, -187.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -460, -201.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -460, -201.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -557.2, -270.6 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -557.2, -270.6 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 296.9, 248.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 296.9, 248.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 122.6, 29.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 122.6, 29.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -8.4, -135.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -8.4, -135.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -102.3, -253.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -102.3, -253.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -165.2, -332.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -165.2, -332.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -203.4, -380.2 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -203.4, -380.2 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -223, -404.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -223, -404.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -230.2, -414 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -230.2, -414 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -239.2, -319.2 , 0 );

setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 436 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -77.2 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -77.2 );

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 236, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 65 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 242, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 204 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
SE004 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 63 );

--気ダメ
SE005 = playSeVer2( spep_0 + 24, 1503, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 28, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 73 );

--オーラ
SE007 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE007, 63 );

--気ダメ
SE008 = playSeVer2( spep_0 + 38, 1504, "", 0, 0, 0, -1);

--電気音
SE009 = playSeVer2( spep_0 + 54, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE009, 71 );

--オーラ
SE010 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE010, 63 );

--風圧
SE011 = playSeVer2( spep_0 + 60, 1258, "",spep_0 + 188, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 60, SE011, 71 );

--電気音
SE012 = playSeVer2( spep_0 + 78, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE012, 65 );

--オーラ
SE013 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE013, 63 );
SE014 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE014, 63 );

--画面遷移
SE015 = playSeVer2( spep_0 + 120, 8, "", 0, 0, 0, -1);

--オーラ
SE016 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE016, 63 );
SE017 = playSeVer2( spep_0 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE017, 63 );

--向かっていく
SE018 = playSeVer2( spep_0 + 170, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE018, 82 );
SE019 = playSeVer2( spep_0 + 170, 1182, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_0 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE020, 63 );

--向かっていく
SE021 = playSeVer2( spep_0 + 182, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE022 = playSeVer2( spep_0 + 192, 1188, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE022, 76 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 240; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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
SE023 = playSeVer2( spep_0 + 208, 1117, "",spep_0 + 270, 0, 18, -1);
SE024 = playSeVer2( spep_0 + 236, 1116, "",spep_0 + 262, 0, 16, -1);

--初手パンチ
SE025 = playSeVer2( spep_0 + 254, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 254, 1359, "", 0, 0, 0, -1);

--オーラ
SE027 = playSeVer2( spep_0 + 268, 1176, "",spep_0 + 420, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 268, SE027, 65 );
SE028 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE028, 63 );
SE029 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE029, 63 );

--振りかぶる
SE030 = playSeVer2( spep_0 + 304, 1004, "", 0, 0, 0, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE031, 63 );

--膝蹴り
SE032 = playSeVer2( spep_0 + 336, 1153, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 336, 1187, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE034, 63 );

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 374, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 390, 1121, "",spep_0 + 556, 0, 118, -1);

--瞬間移動
SE037 = playSeVer2( spep_0 + 412, 1109, "", 0, 0, 0, -1);

--オーラ
SE038 = playSeVer2( spep_0 + 422, 1176, "",spep_0 + 532, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 422, SE038, 58 );
SE039 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE039, 50 );

--蹴り飛ばす
SE040 = playSeVer2( spep_0 + 448, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE040, 170 );

--オーラ
SE041 = playSeVer2( spep_0 + 450, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE041, 50 );

--蹴り飛ばす
SE042 = playSeVer2( spep_0 + 452, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 452, 1120, "", 0, 0, 0, -1);

--オーラ
SE044 = playSeVer2( spep_0 + 474, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE044, 50 );

--ビル激突
SE045 = playSeVer2( spep_0 + 480, 1159, "",spep_0 + 706, 0, 22, -1);

--瞬間移動
SE046 = playSeVer2( spep_0 + 528, 1109, "", 0, 0, 0, -1);

--オーラ
SE047 = playSeVer2( spep_0 + 528, 1176, "",spep_0 + 690, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 528, SE047, 60 );
SE048 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE048, 50 );
SE049 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE049, 50 );
SE050 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE050, 50 );
SE052 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE052, 50 );
SE053 = playSeVer2( spep_0 + 622, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 622, SE053, 50 );
SE054 = playSeVer2( spep_0 + 646, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE054, 50 );
SE055 = playSeVer2( spep_0 + 670, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE055, 50 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --680F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)-2;

-- ** 音 ** --

--振りかぶる
SE057 = playSeVer2( spep_1 + 88, 1188, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE057, 71 );
setStartTimeMs( SE057,  300 );
SE058 = playSeVer2( spep_1 + 80, 1116, "",spep_1 + 134, 0, 30, -1);

--オーラ
SE059 = playSeVer2( spep_1 + 80, 1176, "",spep_1 + 292, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 80, SE059, 63 );
SE060 = playSeVer2( spep_1 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE060, 50 );

-------------------------------------------------
-- 強パンチ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 280;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 強パンチ〜フィニッシュ(ef_001)
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

-- ** 音 ** --

--オーラ
SE061 = playSeVer2( spep_2 + 10, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE061, 50 );
SE062 = playSeVer2( spep_2 + 34, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE062, 50 );
SE063 = playSeVer2( spep_2 + 58, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE063, 50 );
SE064 = playSeVer2( spep_2 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE064, 50 );

--ラスト殴る
SE065 = playSeVer2( spep_2 + 86, 1123, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 90, 1153, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 92, 1159, "", 0, 0, 0, -1);

--風圧
SE068 = playSeVer2( spep_2 + 106, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE068, 81 );

--地面爆発
SE069 = playSeVer2( spep_2 + 144, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE069, 119 );
SE070 = playSeVer2( spep_2 + 176, 1061, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 180, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 160); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 278F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 気だめ〜連続攻撃〜セリフ
-------------------------------------------------
MAX_FRAME_0 = 680;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 気だめ〜連続攻撃〜セリフ(ef_001)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 598;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 252 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 292 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 252 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 252 + OFFSET_X, 1, -63.5, -216.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -63.5, -216.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -68.8, -216.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -68.8, -216.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -74.2, -216.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -74.2, -216.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -79.5, -216.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -79.5, -216.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -92.9, -176.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -92.9, -176.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -92.9, -145.7 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -92.9, -145.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -84.9, -186.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -84.9, -186.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -76.9, -228.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -76.9, -228.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -86.9, -189.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -86.9, -189.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -96.9, -151 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -96.9, -151 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -80.9, -227 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -80.9, -227 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -92.9, -171 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -92.9, -171 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -80.9, -191 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -80.9, -191 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -100.9, -174.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -100.9, -174.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -84.9, -194.9 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -84.9, -194.9 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -96.9, -182.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -96.9, -182.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -104.9, -178.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -104.9, -178.9 , 0 );

setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.15, 1.15 );

setRotateKey( spep_0 + 252 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 26.6 );

--敵の動き2

setDisp( spep_0 + 340 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 406 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 340 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 376 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 340 + OFFSET_X, 1, -183.6, 82.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -183.6, 82.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -264.8, 138.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -264.8, 138.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -194.3, 109.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -194.3, 109.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -275.9, 181.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -275.9, 181.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -199, 121.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -199, 121.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -257.8, 178.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -257.8, 178.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -204.2, 120.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -204.2, 120.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -254.5, 166.2 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -254.5, 166.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -204.2, 125.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -204.2, 125.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -256, 158.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -256, 158.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -206.7, 135.6 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -206.7, 135.6 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -253.2, 166.6 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -253.2, 166.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -213.7, 136.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -213.7, 136.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -242.9, 155.2 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -242.9, 155.2 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -217.5, 145.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -217.5, 145.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -240.9, 157.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -240.9, 157.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -221.5, 147.8 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -221.5, 147.8 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -222.3, 153 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -222.3, 153 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 3.9, -3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 3.9, -3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 3.9, -2.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 3.9, -2.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 3.6, -2.2 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 3.6, -2.2 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 2.9, -0.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 2.9, -0.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 1.4, 3.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 1.4, 3.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 1.9, 3.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 1.9, 3.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 2, 3.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 2, 3.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 2.1, 3.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 2.1, 3.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 2.2, 3.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 2.2, 3.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 2.3, 3.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 2.3, 3.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 2.4, 3.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 2.4, 3.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 2.6, 3.7 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 2.6, 3.7 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 2.7, 3.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 2.7, 3.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 2.8, 3.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 2.8, 3.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 2.9, 4.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 2.9, 4.3 , 0 );

setScaleKey( spep_0 + 340 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 9.49, 9.49 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 9.49, 9.49 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 340 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -31.4 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -46 );

--敵の動き3

setDisp( spep_0 + 436 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 454 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 462 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 492 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 436 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 446 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 476 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 436 + OFFSET_X, 1, 424.3, -240 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 424.3, -240 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 413.2, -232 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 413.2, -232 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 379.7, -208.3 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 379.7, -208.3 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 324, -168.8 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 324, -168.8 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 246, -113.4 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 246, -113.4 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -61.3, 125.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -61.3, 125.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -60.4, 125.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -60.4, 125.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -59.5, 124.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -59.5, 124.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -58.6, 123.4 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -58.6, 123.4 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -57.7, 122.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -57.7, 122.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -55, 121.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -55, 121.3 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -52.3, 119.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -52.3, 119.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -49.7, 118.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -49.7, 118.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 47.7, 64.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 47.7, 64.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 50.4, 63.1 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 50.4, 63.1 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 53.1, 61.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 53.1, 61.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 275.2, -86.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 275.2, -86.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 427, -187.2 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 427, -187.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 460, -201.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 460, -201.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 557.2, -270.6 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 557.2, -270.6 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -296.9, 248.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -296.9, 248.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -122.6, 29.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -122.6, 29.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 8.4, -135.1 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 8.4, -135.1 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 102.3, -253.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 102.3, -253.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 165.2, -332.2 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 165.2, -332.2 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 203.4, -380.2 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 203.4, -380.2 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 223, -404.9 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 223, -404.9 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 230.2, -414 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 230.2, -414 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 239.2, -319.2 , 0 );

setScaleKey( spep_0 + 436 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 436 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 77.2 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, 77.2 );

-- ** 音 ** --

--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 236, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 65 );
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 242, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 204 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
SE004 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 63 );

--気ダメ
SE005 = playSeVer2( spep_0 + 24, 1503, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 28, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 73 );

--オーラ
SE007 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE007, 63 );

--気ダメ
SE008 = playSeVer2( spep_0 + 38, 1504, "", 0, 0, 0, -1);

--電気音
SE009 = playSeVer2( spep_0 + 54, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE009, 71 );

--オーラ
SE010 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE010, 63 );

--風圧
SE011 = playSeVer2( spep_0 + 60, 1258, "",spep_0 + 188, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 60, SE011, 71 );

--電気音
SE012 = playSeVer2( spep_0 + 78, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE012, 65 );

--オーラ
SE013 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE013, 63 );
SE014 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE014, 63 );

--画面遷移
SE015 = playSeVer2( spep_0 + 120, 8, "", 0, 0, 0, -1);

--オーラ
SE016 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE016, 63 );
SE017 = playSeVer2( spep_0 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE017, 63 );

--向かっていく
SE018 = playSeVer2( spep_0 + 170, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE018, 82 );
SE019 = playSeVer2( spep_0 + 170, 1182, "", 0, 0, 0, -1);

--オーラ
SE020 = playSeVer2( spep_0 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE020, 63 );

--向かっていく
SE021 = playSeVer2( spep_0 + 182, 1277, "", 0, 0, 0, -1);

--振りかぶる
SE022 = playSeVer2( spep_0 + 192, 1188, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE022, 76 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 240; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
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
SE023 = playSeVer2( spep_0 + 208, 1117, "",spep_0 + 270, 0, 18, -1);
SE024 = playSeVer2( spep_0 + 236, 1116, "",spep_0 + 262, 0, 16, -1);

--初手パンチ
SE025 = playSeVer2( spep_0 + 254, 1187, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 254, 1359, "", 0, 0, 0, -1);

--オーラ
SE027 = playSeVer2( spep_0 + 268, 1176, "",spep_0 + 420, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 268, SE027, 65 );
SE028 = playSeVer2( spep_0 + 280, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE028, 63 );
SE029 = playSeVer2( spep_0 + 304, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE029, 63 );

--振りかぶる
SE030 = playSeVer2( spep_0 + 304, 1004, "", 0, 0, 0, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE031, 63 );

--膝蹴り
SE032 = playSeVer2( spep_0 + 336, 1153, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 336, 1187, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE034, 63 );

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 374, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 390, 1121, "",spep_0 + 556, 0, 118, -1);

--瞬間移動
SE037 = playSeVer2( spep_0 + 412, 1109, "", 0, 0, 0, -1);

--オーラ
SE038 = playSeVer2( spep_0 + 422, 1176, "",spep_0 + 532, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 422, SE038, 58 );
SE039 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE039, 50 );

--蹴り飛ばす
SE040 = playSeVer2( spep_0 + 448, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE040, 170 );

--オーラ
SE041 = playSeVer2( spep_0 + 450, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE041, 50 );

--蹴り飛ばす
SE042 = playSeVer2( spep_0 + 452, 1187, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 452, 1120, "", 0, 0, 0, -1);

--オーラ
SE044 = playSeVer2( spep_0 + 474, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE044, 50 );

--ビル激突
SE045 = playSeVer2( spep_0 + 480, 1159, "",spep_0 + 706, 0, 22, -1);

--瞬間移動
SE046 = playSeVer2( spep_0 + 528, 1109, "", 0, 0, 0, -1);

--オーラ
SE047 = playSeVer2( spep_0 + 528, 1176, "",spep_0 + 690, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 528, SE047, 60 );
SE048 = playSeVer2( spep_0 + 528, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE048, 50 );
SE049 = playSeVer2( spep_0 + 552, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 552, SE049, 50 );
SE050 = playSeVer2( spep_0 + 576, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE050, 50 );
SE052 = playSeVer2( spep_0 + 600, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE052, 50 );
SE053 = playSeVer2( spep_0 + 622, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 622, SE053, 50 );
SE054 = playSeVer2( spep_0 + 646, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE054, 50 );
SE055 = playSeVer2( spep_0 + 670, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE055, 50 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --680F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0)-2;

-- ** 音 ** --

--振りかぶる
SE057 = playSeVer2( spep_1 + 88, 1188, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE057, 71 );
setStartTimeMs( SE057,  300 );
SE058 = playSeVer2( spep_1 + 80, 1116, "",spep_1 + 134, 0, 30, -1);

--オーラ
SE059 = playSeVer2( spep_1 + 80, 1176, "",spep_1 + 292, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 80, SE059, 63 );
SE060 = playSeVer2( spep_1 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE060, 50 );

-------------------------------------------------
-- 強パンチ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 280;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 強パンチ〜フィニッシュ(ef_001)
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

-- ** 音 ** --

--オーラ
SE061 = playSeVer2( spep_2 + 10, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE061, 50 );
SE062 = playSeVer2( spep_2 + 34, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34, SE062, 50 );
SE063 = playSeVer2( spep_2 + 58, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE063, 50 );
SE064 = playSeVer2( spep_2 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE064, 50 );

--ラスト殴る
SE065 = playSeVer2( spep_2 + 86, 1123, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 90, 1153, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_2 + 92, 1159, "", 0, 0, 0, -1);

--風圧
SE068 = playSeVer2( spep_2 + 106, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE068, 81 );

--地面爆発
SE069 = playSeVer2( spep_2 + 144, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE069, 119 );
SE070 = playSeVer2( spep_2 + 176, 1061, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 180, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 160); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 278F

end