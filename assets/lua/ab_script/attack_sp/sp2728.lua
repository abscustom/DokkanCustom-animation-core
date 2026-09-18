--1029050:LR_孫悟空(身勝手の極意“兆”)_必殺技：未完成の極意
--sp_effect_b1_00287
--sp2728

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163017;  --ef_001 開始正面からアップで瞳閉じて突進
SP_01b = 163019;  --ef_001_b 開始正面からアップで瞳閉じて突進 背景
SP_02  = 163020;  --ef_002 迫ってぶん殴り→フィニッシュ

--エフェクト(敵)
SP_01r = 163018;  --ef_001_r 開始正面からアップで瞳閉じて突進 敵側
SP_02r = 163021;  --ef_002_r 迫ってぶん殴り→フィニッシュ 敵側


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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 808;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 0);  -- スキップ先フレーム指定

        SE043 = playSeVer2( spep_2 + 3, 1182, "", 0, 0, 0, -1);
        SE044 = playSeVer2( spep_2 + 3, 1117, "", 0, 0, 0, -1);
    else

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始正面からアップで瞳閉じて突進
-------------------------------------------------
MAX_FRAME_0 = 808;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始正面からアップで瞳閉じて突進(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始正面からアップで瞳閉じて突進 背面(ef_001_b)
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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 268 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 330 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, 119.8, 35.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 119.8, 35.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 119.2, 35.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 119.2, 35.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 118.7, 35.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 118.7, 35.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 118.1, 35.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 118.1, 35.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 117.5, 35.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 117.5, 35.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 116.9, 35.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 116.9, 35.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 116.4, 35.5 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 116.4, 35.5 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 115.8, 35.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 115.8, 35.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 115.2, 35.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 115.2, 35.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 114.7, 35.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 114.7, 35.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 114.1, 35.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 114.1, 35.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 113.5, 35.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 113.5, 35.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 112.9, 35.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 112.9, 35.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 112.4, 35.5 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 112.4, 35.5 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 111.8, 35.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 111.8, 35.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 111.2, 35.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 111.2, 35.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 110.7, 35.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 110.7, 35.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 110.1, 35.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 110.1, 35.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 109.5, 35.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 109.5, 35.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 108.9, 35.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 108.9, 35.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 108.4, 35.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 108.4, 35.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 107.8, 35.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 107.8, 35.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 107.2, 35.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 107.2, 35.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 106.7, 35.5 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 106.7, 35.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 106.1, 35.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 106.1, 35.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 105.5, 35.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 105.5, 35.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 104.9, 35.5 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 104.9, 35.5 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 104.4, 35.5 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 104.4, 35.5 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 103.8, 35.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 103.8, 35.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 103.2, 35.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 103.2, 35.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 102.6, 35.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 102.6, 35.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 10.9, 6.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 10.9, 6.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 11, 6.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 11, 6.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 11.2, 6.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 11.2, 6.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 11.3, 6.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 11.3, 6.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 11.8, 6.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 11.8, 6.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 12.6, 6.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 12.6, 6.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 14, 5.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 14, 5.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 15.9, 4.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 15.9, 4.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 18.3, 2.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 18.3, 2.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 20.6, 2.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 20.6, 2.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 27.4, 3.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 27.4, 3.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 38.6, 4.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 38.6, 4.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 93.7, -11.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 93.7, -11.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 97.6, -15.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 97.6, -15.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 101.5, -20.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 101.5, -20.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 108.9, -29.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 108.9, -29.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 116.6, -39.6 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 116.6, -39.6 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 136.6, -68.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 136.6, -68.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 148.3, -109.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 148.3, -109.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 183.2, -158.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 183.2, -158.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 194, -255.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 194, -255.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 187.3, -419.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 187.3, -419.8 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.29, 1.3 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.29, 1.3 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.34, 1.35 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.34, 1.35 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.4, 1.41 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.4, 1.41 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.46, 1.47 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.46, 1.47 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 3.0, 3.0 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 3.0, 3.0 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 7.4, 7.4 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 6 );

--敵の動き2
setDisp( spep_0 + 388 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 394 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 388 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 388 + OFFSET_X, 1, 187.9, -556.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 187.9, -556.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 75.2, -468.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 75.2, -468.5 , 0 );

setScaleKey( spep_0 + 388 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 10, 10 );

setRotateKey( spep_0 + 388 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 6 );

--敵の動き3
setDisp( spep_0 + 690 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 810 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 690 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 702 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 690 + OFFSET_X, 1, 82.2, 91 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 82.2, 91 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 75.2, -17.5 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 75.2, -17.5 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 101.2, 33.8 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 101.2, 33.8 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 81.7, 53.2 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 81.7, 53.2 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 120.7, 14.2 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 120.7, 14.2 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 60.9, 74.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 60.9, 74.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 64.5, 74.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 64.5, 74.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 20.8, 102.8 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 20.8, 102.8 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 24.4, 59.5 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 24.4, 59.5 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 13.7, 81.2 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 13.7, 81.2 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 72.4, 40.7 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 72.4, 40.7 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 57.2, 53.3 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 57.2, 53.3 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 49.2, 60.3 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 49.2, 60.3 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 51.2, 60.4 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 51.2, 60.4 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 50.3, 60.5 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 50.3, 60.5 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 68.8, 58.2 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 68.8, 58.2 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 72.4, 59 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 72.4, 59 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 75.7, 59.7 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 75.7, 59.7 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 79, 55.8 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 79, 55.8 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 83.9, 55.8 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 83.9, 55.8 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 81.5, 60.5 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 81.5, 60.5 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 79.2, 59.4 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 79.2, 59.4 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 76.8, 58.2 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 76.8, 58.2 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 79.1, 67.4 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 79.1, 67.4 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 85.5, 42.9 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 85.5, 42.9 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 81.6, 62.1 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 81.6, 62.1 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 82.3, 62.1 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 82.3, 62.1 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 74.9, 50.1 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 74.9, 50.1 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 81.2, 63.8 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 81.2, 63.8 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 81.2, 70.2 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 81.2, 70.2 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 81.9, 62.2 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 81.9, 62.2 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 84.2, 67.7 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 84.2, 67.7 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 81.7, 70.9 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 81.7, 70.9 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 84.1, 67.7 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 84.1, 67.7 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 85.7, 67 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 85.7, 67 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 86.5, 70.2 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 86.5, 70.2 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 85.6, 70.2 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 85.6, 70.2 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 88.8, 70.2 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 88.8, 70.2 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 89.6, 69.5 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 89.6, 69.5 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 88.8, 74.2 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 88.8, 74.2 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 89.6, 74.1 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 89.6, 74.1 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 89.6, 78.1 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 89.6, 78.1 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 88.7, 82.9 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 88.7, 82.9 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 88.7, 76.5 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 88.7, 76.5 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 88.7, 83.6 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 88.7, 83.6 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 85.6, 85.3 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 85.6, 85.3 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 83.2, 81.2 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 83.2, 81.2 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 84.8, 86.8 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 84.8, 86.8 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 84.1, 84.4 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 84.1, 84.4 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 82.4, 80.4 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 82.4, 80.4 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 82.4, 86.8 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 82.4, 86.8 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 81.7, 86.9 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 81.7, 86.9 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 80.1, 79 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 80.1, 79 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 80.1, 78.3 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 80.1, 78.3 , 0 );

setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 701 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 749 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 810 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_0 + 690 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 699 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 701 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 702 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_0 + 810 + OFFSET_X, 1, 20.9 );

setBlendColor( spep_0 + 742 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_0 + 809 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_0 + 810 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1266, "",spep_0 + 330, 36, 88, -1);
setStartTimeMs( SE001,  933 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 338, 0, 72, -1);
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 340, 0, 70, -1);

--目を閉じる
SE005 = playSeVer2( spep_0 + 116, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE005, 81 );

--画面遷移
SE006 = playSeVer2( spep_0 + 160, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE006, 1.24, 30, 4 );
SE007 = playSeVer2( spep_0 + 204, 1116, "",spep_0 + 262, 0, 30, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 250; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--画面切り替わる
SE008 = playSeVer2( spep_0 + 254, 22, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE008, 110 );
SE009 = playSeVer2( spep_0 + 254, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE009, 110 );

--カメラズーム
SE010 = playSeVer2( spep_0 + 306, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 308, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE011, 58 );
setTimeStretch( SE011, 1.24, 30, 4 );
SE012 = playSeVer2( spep_0 + 308, 1121, "",spep_0 + 406, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 308, SE012, 68 );

--パンチヒット
SE013 = playSeVer2( spep_0 + 388, 1359, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 390, 1120, "", 0, 0, 0, -1);

--爆発
SE015 = playSeVer2( spep_0 + 432, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE015, 81 );
SE016 = playSeVer2( spep_0 + 432, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE016, 76 );
SE018 = playSeVer2( spep_0 + 492, 1024, "", 0, 0, 0, -1);

--光る
SE017 = playSeVer2( spep_0 + 482, 1302, "",spep_0 + 516, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 482, SE017, 47 );

--連打
SE019 = playSeVer2( spep_0 + 528, 1189, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_0 + 536, 1110, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_0 + 542, 1359, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 542, SE021, 75 );
SE022 = playSeVer2( spep_0 + 544, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 544, SE022, 71 );
SE023 = playSeVer2( spep_0 + 552, 1110, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 562, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 562, SE024, 85 );
SE025 = playSeVer2( spep_0 + 572, 1110, "", 0, 0, 0, 0.5);
SE026 = playSeVer2( spep_0 + 566, 1359, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 566, SE026, 69 );
SE027 = playSeVer2( spep_0 + 580, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 580, SE027, 79 );
SE028 = playSeVer2( spep_0 + 588, 1110, "", 0, 0, 0, 0.5);
SE029 = playSeVer2( spep_0 + 604, 1110, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_0 + 610, 1359, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 610, SE030, 56 );
SE031 = playSeVer2( spep_0 + 612, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 612, SE031, 77 );
SE032 = playSeVer2( spep_0 + 622, 1110, "", 0, 0, 0, 0.5);

--空中連打
SE033 = playSeVer2( spep_0 + 640, 1011, "", 0, 0, 0, 0.5);
SE034 = playSeVer2( spep_0 + 640, 1043, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 640, SE034, 71 );
SE035 = playSeVer2( spep_0 + 656, 1043, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 656, SE035, 68 );
SE036 = playSeVer2( spep_0 + 664, 1011, "", 0, 0, 0, 0.5);

--蹴り飛ばす
SE037 = playSeVer2( spep_0 + 690, 1004, "", 0, 0, 0, 0.5);
SE038 = playSeVer2( spep_0 + 712, 1187, "",spep_0 + 820, 0, 22, 0.5);
SE039 = playSeVer2( spep_0 + 712, 1180, "", 0, 0, 0, 0.5);

--爆発
SE040 = playSeVer2( spep_0 + 740, 1024, "",spep_0 + 832, 0, 24, 0.6);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --808f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE041 = playSeVer2( spep_1 + 76, 1121, "",spep_1 + 202, 6, 28, -1);
setSeVolumeByWorkId( spep_1 + 76, SE041, 71 );
setStartTimeMs( SE041,  1367 );
SE043 = playSeVer2( spep_1 + 78, 1182, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 78, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 迫ってぶん殴り→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 236;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 迫ってぶん殴り→フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--爆発
SE046 = playSeVer2( spep_2 + 74, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE046, 76 );
SE047 = playSeVer2( spep_2 + 80, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE047, 77 );
SE048 = playSeVer2( spep_2 + 80, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE048, 78 );
SE049 = playSeVer2( spep_2 + 80, 1067, "",spep_2 + 132, 0, 12, -1);

--岩吹き飛ぶ
SE050 = playSeVer2( spep_2 + 118, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE050, 71 );
SE051 = playSeVer2( spep_2 + 118, 1027, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 122, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE052, 67 );
SE053 = playSeVer2( spep_2 + 126, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 118); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 終了フレーム 236f -6

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開始正面からアップで瞳閉じて突進
-------------------------------------------------
MAX_FRAME_0 = 808;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開始正面からアップで瞳閉じて突進(ef_001_r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始正面からアップで瞳閉じて突進 背面(ef_001_b)
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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 384 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 268 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 330 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, 119.8, 35.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 119.8, 35.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 119.2, 35.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 119.2, 35.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 118.7, 35.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 118.7, 35.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 118.1, 35.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 118.1, 35.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 117.5, 35.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 117.5, 35.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 116.9, 35.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 116.9, 35.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 116.4, 35.5 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 116.4, 35.5 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 115.8, 35.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 115.8, 35.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 115.2, 35.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 115.2, 35.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 114.7, 35.5 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 114.7, 35.5 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 114.1, 35.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 114.1, 35.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 113.5, 35.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 113.5, 35.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 112.9, 35.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 112.9, 35.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 112.4, 35.5 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 112.4, 35.5 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 111.8, 35.5 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 111.8, 35.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 111.2, 35.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 111.2, 35.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 110.7, 35.5 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 110.7, 35.5 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 110.1, 35.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 110.1, 35.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 109.5, 35.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 109.5, 35.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 108.9, 35.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 108.9, 35.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 108.4, 35.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 108.4, 35.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 107.8, 35.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 107.8, 35.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 107.2, 35.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 107.2, 35.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 106.7, 35.5 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 106.7, 35.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 106.1, 35.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 106.1, 35.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 105.5, 35.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 105.5, 35.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 104.9, 35.5 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 104.9, 35.5 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 104.4, 35.5 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 104.4, 35.5 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 103.8, 35.5 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 103.8, 35.5 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 103.2, 35.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 103.2, 35.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 102.6, 35.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 102.6, 35.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 10.9, 6.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 10.9, 6.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 11, 6.9 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 11, 6.9 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 11.2, 6.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 11.2, 6.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 11.3, 6.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 11.3, 6.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 11.8, 6.6 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 11.8, 6.6 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 12.6, 6.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 12.6, 6.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 14, 5.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 14, 5.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 15.9, 4.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 15.9, 4.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 18.3, 2.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 18.3, 2.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 20.6, 2.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 20.6, 2.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 27.4, 3.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 27.4, 3.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 38.6, 4.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 38.6, 4.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 93.7, -11.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 93.7, -11.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 97.6, -15.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 97.6, -15.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 101.5, -20.1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 101.5, -20.1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 108.9, -29.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 108.9, -29.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 116.6, -39.6 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 116.6, -39.6 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 136.6, -68.3 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 136.6, -68.3 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 148.3, -109.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 148.3, -109.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 183.2, -158.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 183.2, -158.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 194, -255.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 194, -255.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 187.3, -419.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 187.3, -419.8 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.29, 1.3 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.29, 1.3 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.34, 1.35 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.34, 1.35 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.4, 1.41 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.4, 1.41 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.46, 1.47 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.46, 1.47 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 3.0, 3.0 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 3.0, 3.0 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 7.4, 7.4 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 7.4, 7.4 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 6 );

--敵の動き2
setDisp( spep_0 + 388 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 394 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 388 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 388 + OFFSET_X, 1, 187.9, -556.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 187.9, -556.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 75.2, -468.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 75.2, -468.5 , 0 );

setScaleKey( spep_0 + 388 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 10, 10 );

setRotateKey( spep_0 + 388 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 6 );

--敵の動き3
setDisp( spep_0 + 690 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 810 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 690 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 702 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 690 + OFFSET_X, 1, 82.2, 91 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 82.2, 91 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 75.2, -17.5 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 75.2, -17.5 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 101.2, 33.8 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 101.2, 33.8 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 81.7, 53.2 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 81.7, 53.2 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 120.7, 14.2 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 120.7, 14.2 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 60.9, 74.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 60.9, 74.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 64.5, 74.1 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 64.5, 74.1 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 20.8, 102.8 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 20.8, 102.8 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 24.4, 59.5 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 24.4, 59.5 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 13.7, 81.2 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 13.7, 81.2 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 72.4, 40.7 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 72.4, 40.7 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 57.2, 53.3 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 57.2, 53.3 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 49.2, 60.3 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 49.2, 60.3 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 51.2, 60.4 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 51.2, 60.4 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 50.3, 60.5 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 50.3, 60.5 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 68.8, 58.2 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 68.8, 58.2 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 72.4, 59 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 72.4, 59 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 75.7, 59.7 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 75.7, 59.7 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 79, 55.8 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 79, 55.8 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 83.9, 55.8 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 83.9, 55.8 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 81.5, 60.5 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 81.5, 60.5 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 79.2, 59.4 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 79.2, 59.4 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 76.8, 58.2 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 76.8, 58.2 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 79.1, 67.4 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 79.1, 67.4 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 85.5, 42.9 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 85.5, 42.9 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 81.6, 62.1 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 81.6, 62.1 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 82.3, 62.1 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 82.3, 62.1 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 74.9, 50.1 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 74.9, 50.1 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 81.2, 63.8 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 81.2, 63.8 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 81.2, 70.2 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 81.2, 70.2 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 81.9, 62.2 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 81.9, 62.2 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 84.2, 67.7 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 84.2, 67.7 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 81.7, 70.9 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 81.7, 70.9 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 84.1, 67.7 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 84.1, 67.7 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 85.7, 67 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 85.7, 67 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 86.5, 70.2 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 86.5, 70.2 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 85.6, 70.2 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 85.6, 70.2 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 88.8, 70.2 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 88.8, 70.2 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 89.6, 69.5 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 89.6, 69.5 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 88.8, 74.2 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 88.8, 74.2 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 89.6, 74.1 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 89.6, 74.1 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 89.6, 78.1 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 89.6, 78.1 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 88.7, 82.9 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 88.7, 82.9 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 88.7, 76.5 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 88.7, 76.5 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 88.7, 83.6 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 88.7, 83.6 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 85.6, 85.3 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 85.6, 85.3 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 83.2, 81.2 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 83.2, 81.2 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 84.8, 86.8 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 84.8, 86.8 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 84.1, 84.4 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 84.1, 84.4 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 82.4, 80.4 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 82.4, 80.4 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 82.4, 86.8 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 82.4, 86.8 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 81.7, 86.9 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 81.7, 86.9 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 80.1, 79 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 80.1, 79 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 80.1, 78.3 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 80.1, 78.3 , 0 );

setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 701 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 749 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 750 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 810 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_0 + 690 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 699 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 701 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 702 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_0 + 810 + OFFSET_X, 1, 20.9 );

setBlendColor( spep_0 + 742 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_0 + 809 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_0 + 810 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1266, "",spep_0 + 330, 36, 88, -1);
setStartTimeMs( SE001,  933 );
SE002 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 338, 0, 72, -1);
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 340, 0, 70, -1);

--目を閉じる
SE005 = playSeVer2( spep_0 + 116, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE005, 81 );

--画面遷移
SE006 = playSeVer2( spep_0 + 160, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE006, 1.24, 30, 4 );
SE007 = playSeVer2( spep_0 + 204, 1116, "",spep_0 + 262, 0, 30, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 250; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--画面切り替わる
SE008 = playSeVer2( spep_0 + 254, 22, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE008, 110 );
SE009 = playSeVer2( spep_0 + 254, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE009, 110 );

--カメラズーム
SE010 = playSeVer2( spep_0 + 306, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 308, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE011, 58 );
setTimeStretch( SE011, 1.24, 30, 4 );
SE012 = playSeVer2( spep_0 + 308, 1121, "",spep_0 + 406, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 308, SE012, 68 );

--パンチヒット
SE013 = playSeVer2( spep_0 + 388, 1359, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 390, 1120, "", 0, 0, 0, -1);

--爆発
SE015 = playSeVer2( spep_0 + 432, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE015, 81 );
SE016 = playSeVer2( spep_0 + 432, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE016, 76 );
SE018 = playSeVer2( spep_0 + 492, 1024, "", 0, 0, 0, -1);

--光る
SE017 = playSeVer2( spep_0 + 482, 1302, "",spep_0 + 516, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 482, SE017, 47 );

--連打
SE019 = playSeVer2( spep_0 + 528, 1189, "", 0, 0, 0, 0.5);
SE020 = playSeVer2( spep_0 + 536, 1110, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_0 + 542, 1359, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 542, SE021, 75 );
SE022 = playSeVer2( spep_0 + 544, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 544, SE022, 71 );
SE023 = playSeVer2( spep_0 + 552, 1110, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 562, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 562, SE024, 85 );
SE025 = playSeVer2( spep_0 + 572, 1110, "", 0, 0, 0, 0.5);
SE026 = playSeVer2( spep_0 + 566, 1359, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 566, SE026, 69 );
SE027 = playSeVer2( spep_0 + 580, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 580, SE027, 79 );
SE028 = playSeVer2( spep_0 + 588, 1110, "", 0, 0, 0, 0.5);
SE029 = playSeVer2( spep_0 + 604, 1110, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_0 + 610, 1359, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 610, SE030, 56 );
SE031 = playSeVer2( spep_0 + 612, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 612, SE031, 77 );
SE032 = playSeVer2( spep_0 + 622, 1110, "", 0, 0, 0, 0.5);

--空中連打
SE033 = playSeVer2( spep_0 + 640, 1011, "", 0, 0, 0, 0.5);
SE034 = playSeVer2( spep_0 + 640, 1043, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 640, SE034, 71 );
SE035 = playSeVer2( spep_0 + 656, 1043, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 656, SE035, 68 );
SE036 = playSeVer2( spep_0 + 664, 1011, "", 0, 0, 0, 0.5);

--蹴り飛ばす
SE037 = playSeVer2( spep_0 + 690, 1004, "", 0, 0, 0, 0.5);
SE038 = playSeVer2( spep_0 + 712, 1187, "",spep_0 + 820, 0, 22, 0.5);
SE039 = playSeVer2( spep_0 + 712, 1180, "", 0, 0, 0, 0.5);

--爆発
SE040 = playSeVer2( spep_0 + 740, 1024, "",spep_0 + 832, 0, 24, 0.6);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --808f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE041 = playSeVer2( spep_1 + 76, 1121, "",spep_1 + 202, 6, 28, -1);
setSeVolumeByWorkId( spep_1 + 76, SE041, 71 );
setStartTimeMs( SE041,  1367 );
SE043 = playSeVer2( spep_1 + 78, 1182, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 78, 1117, "", 0, 0, 0, -1);

-------------------------------------------------
-- 迫ってぶん殴り→フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 236;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- 迫ってぶん殴り→フィニッシュ(ef_002_r)
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--爆発
SE046 = playSeVer2( spep_2 + 74, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE046, 76 );
SE047 = playSeVer2( spep_2 + 80, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE047, 77 );
SE048 = playSeVer2( spep_2 + 80, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE048, 78 );
SE049 = playSeVer2( spep_2 + 80, 1067, "",spep_2 + 132, 0, 12, -1);

--岩吹き飛ぶ
SE050 = playSeVer2( spep_2 + 118, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118, SE050, 71 );
SE051 = playSeVer2( spep_2 + 118, 1027, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 122, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE052, 67 );
SE053 = playSeVer2( spep_2 + 126, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 118); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -6); -- 終了フレーム 236f -6

end
