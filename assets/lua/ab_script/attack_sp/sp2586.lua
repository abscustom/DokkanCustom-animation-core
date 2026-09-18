--4027010:UR_超トランクス_必殺技：バスターキャノン
--sp_effect_a2_00221
--sp2586

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162067; --正面UP〜空中連撃	ef_001
SP_01b = 162069; --正面UP〜空中連撃	ef_001b
SP_02  = 162071; --〆攻撃UP〜フィニッシュ	ef_002
SP_02b = 162073; --〆攻撃UP〜フィニッシュ	ef_002b

--エフェクト(てき)
SP_01r  = 162068; --正面UP〜空中連撃	ef_001r
SP_01br = 162070; --正面UP〜空中連撃	ef_001br
SP_02r  = 162072; --〆攻撃UP〜フィニッシュ	ef_002r
SP_02br = 162074; --〆攻撃UP〜フィニッシュ	ef_002br

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

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = 532 + 94;

        timing_skip = spep_1 + 102;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --オーラ
        SE053 = playSeVer2( spep_1 + 102 + 3, 1036, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_1 + 102 + 3, SE053, 50 );

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 正面UP〜空中連撃(534F)
-------------------------------------------------
MAX_FRAME_0 = 534

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 正面UP〜空中連撃	ef_001
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

base_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 正面UP〜空中連撃	ef_001b
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
spep_x = spep_0 + 12;
  
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -43, 518.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -43, 518.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 144 + OFFSET_X,1,1);
setDisp( spep_0 + 222 + OFFSET_X,1,0);
setDisp( spep_0 + 264 + OFFSET_X,1,1);
setDisp( spep_0 + 311 + OFFSET_X,1,0);
setDisp( spep_0 + 352 + OFFSET_X,1,1);
setDisp( spep_0 + 424 + OFFSET_X,1,0);
setDisp( spep_0 + 463 + OFFSET_X,1,1);
setDisp( spep_0 + 514 + OFFSET_X,1,0);

changeAnime( spep_0 + 144 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 264 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 300 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 362 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 386 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 398 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 410 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 502 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 144 + OFFSET_X, 1, 868.8, 343.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 841.7, 325.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 760.5, 271.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 625.1, 182.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 435.6, 57.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 389.9, 27.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 344.3, -2.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 298.6, -32.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 293.5, -36.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 288.9, -39.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 285, -42.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 281.7, -44.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 279, -46.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 276.9, -48.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 275.4, -49.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 274, -50.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 272.8, -50.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 271.6, -51.1 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 270.4, -51.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 269.4, -52 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 268.4, -52.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 267.5, -52.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 266.7, -53.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 266, -53.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 265.3, -53.7 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 264.7, -53.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 264.2, -54.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 263.8, -54.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 263.5, -54.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 263.2, -54.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 263, -54.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 262.9, -54.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 262.5, -54.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 273.4, -63.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 299.1, -97.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 349.3, -148.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 413, -217.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 501.4, -310.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 603.3, -427 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 603.3, -427 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 159.1, -41.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 159.1, -41.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 182.8, -24.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 182.8, -24.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 187, 3.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 187, 3.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 152.4, -1.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 152.4, -1.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 114.5, -8.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 114.5, -8.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 133.5, -3.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 133.5, -3.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 126.2, -12 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 126.2, -12 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 139.5, -10.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 139.5, -10.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 131.7, 1.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 131.7, 1.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 144.4, 3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 144.4, 3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 136, -6.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 136, -6.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 132.4, 2.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 132.4, 2.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 133.9, 3.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 135.1, 4.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 136.1, 4.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 136.7, 5.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 137.1, 5.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 137.3, 5.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 137.3, 5.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 107.9, -4.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 107.9, -4.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 125.1, 16.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 125.1, 16.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 138.3, 29.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 138.3, 29.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 263.2, 219.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 263.2, 219.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 282.9, 322.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 471.1, 588.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 10, 61.6 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 27.5, 86.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 40, 104.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 47.5, 115 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 50, 118.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 50, 118.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 26.2, 26.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 26.2, 26.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 23.3, 23.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 23.3, 23.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 91.1, 40.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 91.1, 40.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 132.7, 44.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 132.7, 44.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 152.4, 47.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 152.4, 47.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 150, 60.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 150, 60.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 166.9, 61.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 166.9, 61.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 156.2, 60.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 156.2, 60.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 159.8, 61.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 159.8, 61.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 155.1, 61.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 155.1, 61.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 244.1, 65.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 244.1, 65.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 167.4, 52.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 167.4, 52.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 124.3, 50.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 124.3, 50.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 128, 51.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 128, 51.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 145.9, 55.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 145.9, 55.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 136.2, 45.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 136.2, 45.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 116.4, 84 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 116.4, 84 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 95.9, 79.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 95.9, 79.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 108.9, 76.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 108.9, 76.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 119.7, 83.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 119.7, 83.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 112.6, 73.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 112.6, 73.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 124.1, 74.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 124.1, 74.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 170.5, 331 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 170.5, 331 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 180, 350.7 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 180, 350.7 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 126.4, 247 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 126.4, 247 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 165.9, 325.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 165.9, 325.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 139.1, 273.2 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 139.1, 273.2 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 226.7, 451.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 330, 632.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 407.2, 800.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 696.3, -747.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 589.7, -628.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 482.4, -509 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 374.2, -388.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 265.1, -267.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 155.1, -145.1 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 140.4, -130 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 125.3, -114.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 109.6, -98.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 104.3, -92.8 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 99.4, -87.3 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 95, -82.3 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 90.9, -77.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 87.2, -73.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 84, -70 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 81.2, -66.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 78.8, -64.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 76.8, -61.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 75.2, -60.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 74, -58.9 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 74, -58.9 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 189.2, -175.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 189.2, -175.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 244.6, -226.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 244.6, -226.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 218.5, -201.4 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 218.5, -201.4 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 186.5, -171.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 186.5, -171.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 247.7, -227.3 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 417.3, -373.7 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 610.2, -578.6 , 0 );

setScaleKey( spep_0 + 144 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 9.78, 9.78 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 8.1, 8.1 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 7.19, 7.19 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 144 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -82 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -82 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -30.1 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 234, 0, 26, -1);
SE002 = playSeVer2( spep_0 + 0, 1356, "",spep_0 + 198, 0, 40, -1);
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--土煙あがる
SE008 = playSeVer2( spep_0 + 72, 1168, "",spep_0 + 226, 26, 20, -1);
SE009 = playSeVer2( spep_0 + 82, 1188, "", 0, 26, 0, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);

--土煙あがる
SE011 = playSeVer2( spep_0 + 116, 1024, "", 0, 32, 0, -1);
SE012 = playSeVer2( spep_0 + 146, 1258, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE012, 71 );
setStartTimeMs( SE012,  80 );

--オーラ
SE013 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);

--突っ込んでくる
SE015 = playSeVer2( spep_0 + 207, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 207, SE015, 129 );
SE016 = playSeVer2( spep_0 + 207, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 207, SE016, 79 );
SE017 = playSeVer2( spep_0 + 207, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 207, SE017, 63 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 238; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
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
--足払い
SE018 = playSeVer2( spep_0 + 250, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 266, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 266, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE020, 74 );
SE021 = playSeVer2( spep_0 + 272, 1010, "", 0, 0, 0, -1);

--サマーソルト
SE022 = playSeVer2( spep_0 + 288, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 298, 1005, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 300, 1120, "",spep_0 + 378, 0, 58, -1);
SE025 = playSeVer2( spep_0 + 302, 1010, "", 0, 0, 0, -1);

--向かっていく
SE026 = playSeVer2( spep_0 + 338, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 338, 1117, "",spep_0 + 430, 0, 32, -1);
SE028 = playSeVer2( spep_0 + 338, 1183, "",spep_0 + 402, 0, 28, -1);

--パンチ１
SE029 = playSeVer2( spep_0 + 360, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE029, 60 );
SE030 = playSeVer2( spep_0 + 360, 1110, "", 0, 0, 0, -1);

--連打からアッパー
SE031 = playSeVer2( spep_0 + 384, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 384, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE032, 69 );
SE033 = playSeVer2( spep_0 + 396, 1110, "",spep_0 + 426, 0, 16, -1);
SE034 = playSeVer2( spep_0 + 408, 1000, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 410, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE035, 95 );

--敵飛んでいく
SE036 = playSeVer2( spep_0 + 436, 1121, "",spep_0 + 532, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 436, SE036, 50 );

--瞬間移動
SE037 = playSeVer2( spep_0 + 436, 1109, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 470, 1109, "",spep_0 + 536, 0, 8, -1);

--振りかぶる
SE039 = playSeVer2( spep_0 + 490, 1116, "",spep_0 + 532, 0, 20, -1);

--殴り飛ばす
SE040 = playSeVer2( spep_0 + 500, 1187, "",spep_0 + 553, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 500, SE040, 90 );
SE041 = playSeVer2( spep_0 + 502, 1120, "",spep_0 + 551, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 502, SE041, 87 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0 - 2; --534F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 〆攻撃UP〜フィニッシュ(346F)
-------------------------------------------------

MAX_FRAME_1 = 346;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 〆攻撃UP〜フィニッシュ	ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 〆攻撃UP〜フィニッシュ	ef_002b
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_1 + 98 + OFFSET_X, 1, 1);
setDisp( spep_1 + 222 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 98 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 164 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 98 + OFFSET_X, 1, 10.3, 5.1 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 21, -3.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 31.7, -12.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 42.4, -20.6 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 53.1, -29.2 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 77.4, -43.2 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 98.5, -57.8 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 98.5, -57.8 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 115.6, -76.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 115.6, -76.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 133.7, -88.1 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 133.7, -88.1 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 227.8, -153.6 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 227.8, -153.6 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 138.7, -92.5 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 138.7, -92.5 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 204.2, -135.8 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 204.2, -135.8 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 149.6, -102.5 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 149.6, -102.5 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 148.2, -98.3 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 148.2, -98.3 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 151.5, -101.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 151.5, -101.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 153.2, -100.4 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 153.2, -100.4 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 149.1, -99 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 149.1, -99 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 152.5, -102.2 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 152.5, -102.2 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 154.2, -101.2 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 154.2, -101.2 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 151.9, -104.2 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 151.9, -104.2 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 150.7, -100.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 150.7, -100.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 154.2, -103.5 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 154.2, -103.5 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 156, -102.5 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 156, -102.5 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 153.9, -105.6 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 153.9, -105.6 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 157.1, -106 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 157.1, -106 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 156.4, -105.1 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 156.4, -105.1 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 158.4, -104.2 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 158.4, -104.2 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 156.3, -107.4 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 156.3, -107.4 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 159.8, -107.9 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 159.8, -107.9 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 159.2, -107.1 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 159.2, -107.1 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 161.3, -106.3 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 161.3, -106.3 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 159.4, -109.6 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 159.4, -109.6 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 148.1, -103.4 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 148.1, -103.4 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 264, -130.5 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 262.3, -129.1 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 257.2, -125 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 248.7, -118.2 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 236.9, -108.7 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 221.7, -96.4 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 203.1, -81.4 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 181.1, -63.6 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 155.8, -43.2 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 151.4, -47.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 147, -51.2 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 142.7, -55.3 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 138.3, -59.3 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 133.9, -63.4 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 129.6, -67.4 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 125.2, -71.5 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 120.9, -75.6 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 121.3, -76.1 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 121.8, -76.6 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 122.2, -77.1 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 122.7, -77.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 123.1, -78.1 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 123.6, -78.7 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 124, -79.2 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 124.5, -79.7 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 125, -80.2 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 125.4, -80.7 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 125.9, -81.2 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 126.3, -81.8 , 0 );

setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 163 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 164 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_1 + 166 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_1 + 168 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 186 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_1 + 98 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, 15 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_1 + 168 + OFFSET_X, 1, 14 );
setRotateKey( spep_1 + 170 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_1 + 172 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -0.8 );

-- ** 音 ** --
--オーラ
SE043 = playSeVer2( spep_1 + 0, 1181, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE044, 50 );

--ズームアウト
SE046 = playSeVer2( spep_1 + 12, 1004, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_1 + 18, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE045,  300 );

--オーラ
SE047 = playSeVer2( spep_1 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE047, 50 );
SE049 = playSeVer2( spep_1 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 48, SE049, 50 );

--気弾溜め
SE048 = playSeVer2( spep_1 + 54, 1328, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE048, 168 );
setStartTimeMs( SE048,  133 );
SE050 = playSeVer2( spep_1 + 50, 1345, "",spep_1 + 124, 0, 18, -1);
SE051 = playSeVer2( spep_1 + 54, 1282, "",spep_1 + 124, 0, 16, 0.6);
setSeVolumeByWorkId( spep_1 + 54, SE051, 73 );

--オーラ
SE052 = playSeVer2( spep_1 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE052, 50 );
SE053 = playSeVer2( spep_1 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE053, 50 );

--気弾発射
SE054 = playSeVer2( spep_1 + 106, 1133, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 106, 1146, "", 0, 0, 0, 0.6);

--敵ヒット
SE056 = playSeVer2( spep_1 + 112, 1011, "", 0, 0, 0, -1);

--気弾飛んでいく
SE057 = playSeVer2( spep_1 + 162, 1027, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_1 + 162, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 162, SE058, 248 );
SE059 = playSeVer2( spep_1 + 162, 1121, "",spep_1 + 228, 0, 14, -1);

--爆発
SE060 = playSeVer2( spep_1 + 220, 1159, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_1 + 222, 1024, "", 0, 0, 0, -1);

--風圧
SE062 = playSeVer2( spep_1 + 250, 1259, "", 0, 0, 0, 0.6);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 222); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 終了フレーム 346F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 正面UP〜空中連撃(534F)
-------------------------------------------------
MAX_FRAME_0 = 534

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 正面UP〜空中連撃	ef_001
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

base_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 正面UP〜空中連撃	ef_001b
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
spep_x = spep_0 + 12;

--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -43, 518.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -43, 518.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 144 + OFFSET_X,1,1);
setDisp( spep_0 + 222 + OFFSET_X,1,0);
setDisp( spep_0 + 264 + OFFSET_X,1,1);
setDisp( spep_0 + 311 + OFFSET_X,1,0);
setDisp( spep_0 + 352 + OFFSET_X,1,1);
setDisp( spep_0 + 424 + OFFSET_X,1,0);
setDisp( spep_0 + 463 + OFFSET_X,1,1);
setDisp( spep_0 + 514 + OFFSET_X,1,0);

changeAnime( spep_0 + 144 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 264 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 300 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 362 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 386 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 398 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 410 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 502 + OFFSET_X, 1, 107 );


setMoveKey( spep_0 + 144 + OFFSET_X, 1, 868.8, 343.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 841.7, 325.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 760.5, 271.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 625.1, 182.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 435.6, 57.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 389.9, 27.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 344.3, -2.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 298.6, -32.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 293.5, -36.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 288.9, -39.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 285, -42.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 281.7, -44.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 279, -46.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 276.9, -48.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 275.4, -49.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 274, -50.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 272.8, -50.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 271.6, -51.1 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 270.4, -51.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 269.4, -52 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 268.4, -52.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 267.5, -52.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 266.7, -53.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 266, -53.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 265.3, -53.7 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 264.7, -53.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 264.2, -54.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 263.8, -54.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 263.5, -54.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 263.2, -54.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 263, -54.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 262.9, -54.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 262.5, -54.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 273.4, -63.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 299.1, -97.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 349.3, -148.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 413, -217.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 501.4, -310.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 603.3, -427 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 603.3, -427 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 159.1, -41.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 159.1, -41.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 182.8, -24.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 182.8, -24.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 187, 3.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 187, 3.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 152.4, -1.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 152.4, -1.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 114.5, -8.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 114.5, -8.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 133.5, -3.6 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 133.5, -3.6 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 126.2, -12 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 126.2, -12 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 139.5, -10.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 139.5, -10.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 131.7, 1.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 131.7, 1.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 144.4, 3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 144.4, 3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 136, -6.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 136, -6.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 132.4, 2.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 132.4, 2.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 133.9, 3.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 135.1, 4.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 136.1, 4.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 136.7, 5.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 137.1, 5.5 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 137.3, 5.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 137.3, 5.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 107.9, -4.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 107.9, -4.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 125.1, 16.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 125.1, 16.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 138.3, 29.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 138.3, 29.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 263.2, 219.7 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 263.2, 219.7 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 282.9, 322.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 471.1, 588.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 10, 61.6 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 27.5, 86.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 40, 104.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 47.5, 115 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 50, 118.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 50, 118.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 26.2, 26.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 26.2, 26.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 23.3, 23.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 23.3, 23.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 29.1, 29.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 91.1, 40.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 91.1, 40.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 132.7, 44.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 132.7, 44.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 152.4, 47.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 152.4, 47.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 150, 60.1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 150, 60.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 166.9, 61.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 166.9, 61.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 156.2, 60.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 156.2, 60.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 159.8, 61.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 159.8, 61.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 155.1, 61.7 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 155.1, 61.7 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 244.1, 65.8 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 244.1, 65.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 167.4, 52.3 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 167.4, 52.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 124.3, 50.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 124.3, 50.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 128, 51.7 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 128, 51.7 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 145.9, 55.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 145.9, 55.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 136.2, 45.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 136.2, 45.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 116.4, 84 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 116.4, 84 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 95.9, 79.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 95.9, 79.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 108.9, 76.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 108.9, 76.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 119.7, 83.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 119.7, 83.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 112.6, 73.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 112.6, 73.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 124.1, 74.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 124.1, 74.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 170.5, 331 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 170.5, 331 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 180, 350.7 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 180, 350.7 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 126.4, 247 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 126.4, 247 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 165.9, 325.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 165.9, 325.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 139.1, 273.2 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 139.1, 273.2 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 226.7, 451.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 330, 632.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 407.2, 800.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 696.3, -747.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 589.7, -628.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 482.4, -509 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 374.2, -388.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 265.1, -267.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 155.1, -145.1 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 140.4, -130 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 125.3, -114.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 109.6, -98.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 104.3, -92.8 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 99.4, -87.3 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 95, -82.3 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 90.9, -77.7 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 87.2, -73.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 84, -70 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 81.2, -66.9 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 78.8, -64.2 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 76.8, -61.9 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 75.2, -60.2 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 74, -58.9 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 74, -58.9 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 189.2, -175.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 189.2, -175.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 244.6, -226.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 244.6, -226.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 218.5, -201.4 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 218.5, -201.4 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 186.5, -171.5 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 186.5, -171.5 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 247.7, -227.3 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 417.3, -373.7 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 610.2, -578.6 , 0 );

setScaleKey( spep_0 + 144 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 9.78, 9.78 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 8.3, 8.3 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 6.17, 6.17 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.22, 4.22 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 5.39, 5.39 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 8.1, 8.1 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 9.97, 9.97 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 7.19, 7.19 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_0 + 144 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -44.6 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -82 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -82 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, -59.5 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -30.1 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 234, 0, 26, -1);
SE002 = playSeVer2( spep_0 + 0, 1356, "",spep_0 + 198, 0, 40, -1);
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--土煙あがる
SE008 = playSeVer2( spep_0 + 72, 1168, "",spep_0 + 226, 26, 20, -1);
SE009 = playSeVer2( spep_0 + 82, 1188, "", 0, 26, 0, -1);

--オーラ
SE010 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);

--土煙あがる
SE011 = playSeVer2( spep_0 + 116, 1024, "", 0, 32, 0, -1);
SE012 = playSeVer2( spep_0 + 146, 1258, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE012, 71 );
setStartTimeMs( SE012,  80 );

--オーラ
SE013 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);

--突っ込んでくる
SE015 = playSeVer2( spep_0 + 207, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 207, SE015, 129 );
SE016 = playSeVer2( spep_0 + 207, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 207, SE016, 79 );
SE017 = playSeVer2( spep_0 + 207, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 207, SE017, 63 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 238; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
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
--足払い
SE018 = playSeVer2( spep_0 + 250, 1004, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 266, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 266, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE020, 74 );
SE021 = playSeVer2( spep_0 + 272, 1010, "", 0, 0, 0, -1);

--サマーソルト
SE022 = playSeVer2( spep_0 + 288, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 298, 1005, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 300, 1120, "",spep_0 + 378, 0, 58, -1);
SE025 = playSeVer2( spep_0 + 302, 1010, "", 0, 0, 0, -1);

--向かっていく
SE026 = playSeVer2( spep_0 + 338, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 338, 1117, "",spep_0 + 430, 0, 32, -1);
SE028 = playSeVer2( spep_0 + 338, 1183, "",spep_0 + 402, 0, 28, -1);

--パンチ１
SE029 = playSeVer2( spep_0 + 360, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE029, 60 );
SE030 = playSeVer2( spep_0 + 360, 1110, "", 0, 0, 0, -1);

--連打からアッパー
SE031 = playSeVer2( spep_0 + 384, 1110, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 384, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE032, 69 );
SE033 = playSeVer2( spep_0 + 396, 1110, "",spep_0 + 426, 0, 16, -1);
SE034 = playSeVer2( spep_0 + 408, 1000, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 410, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE035, 95 );

--敵飛んでいく
SE036 = playSeVer2( spep_0 + 436, 1121, "",spep_0 + 532, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 436, SE036, 50 );

--瞬間移動
SE037 = playSeVer2( spep_0 + 436, 1109, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 470, 1109, "",spep_0 + 536, 0, 8, -1);

--振りかぶる
SE039 = playSeVer2( spep_0 + 490, 1116, "",spep_0 + 532, 0, 20, -1);

--殴り飛ばす
SE040 = playSeVer2( spep_0 + 500, 1187, "",spep_0 + 553, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 500, SE040, 90 );
SE041 = playSeVer2( spep_0 + 502, 1120, "",spep_0 + 551, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 502, SE041, 87 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0 - 2; --534F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 〆攻撃UP〜フィニッシュ(346F)
-------------------------------------------------

MAX_FRAME_1 = 346

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 〆攻撃UP〜フィニッシュ	ef_002
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 〆攻撃UP〜フィニッシュ	ef_002b
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --


setDisp( spep_1 + 98 + OFFSET_X, 1, 1);
setDisp( spep_1 + 222 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 98 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 164 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 98 + OFFSET_X, 1, 10.3, 5.1 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 21, -3.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 31.7, -12.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 42.4, -20.6 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 53.1, -29.2 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 77.4, -43.2 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 98.5, -57.8 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 98.5, -57.8 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 115.6, -76.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 115.6, -76.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 133.7, -88.1 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 133.7, -88.1 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 227.8, -153.6 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 227.8, -153.6 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 138.7, -92.5 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 138.7, -92.5 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 204.2, -135.8 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 204.2, -135.8 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 149.6, -102.5 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 149.6, -102.5 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 148.2, -98.3 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 148.2, -98.3 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 151.5, -101.5 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 151.5, -101.5 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 153.2, -100.4 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_X, 1, 153.2, -100.4 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 149.1, -99 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_X, 1, 149.1, -99 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_X, 1, 152.5, -102.2 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_X, 1, 152.5, -102.2 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_X, 1, 154.2, -101.2 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_X, 1, 154.2, -101.2 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_X, 1, 151.9, -104.2 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_X, 1, 151.9, -104.2 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_X, 1, 150.7, -100.2 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_X, 1, 150.7, -100.2 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_X, 1, 154.2, -103.5 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_X, 1, 154.2, -103.5 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_X, 1, 156, -102.5 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_X, 1, 156, -102.5 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_X, 1, 153.9, -105.6 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_X, 1, 153.9, -105.6 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_X, 1, 157.1, -106 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 157.1, -106 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 156.4, -105.1 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 156.4, -105.1 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 158.4, -104.2 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 158.4, -104.2 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 156.3, -107.4 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 156.3, -107.4 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 159.8, -107.9 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 159.8, -107.9 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 159.2, -107.1 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 159.2, -107.1 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 161.3, -106.3 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 161.3, -106.3 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 159.4, -109.6 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_X, 1, 159.4, -109.6 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_X, 1, 148.1, -103.4 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 148.1, -103.4 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 264, -130.5 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_X, 1, 262.3, -129.1 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 257.2, -125 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_X, 1, 248.7, -118.2 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 236.9, -108.7 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_X, 1, 221.7, -96.4 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_X, 1, 203.1, -81.4 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_X, 1, 181.1, -63.6 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_X, 1, 155.8, -43.2 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 151.4, -47.2 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 147, -51.2 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 142.7, -55.3 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 138.3, -59.3 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 133.9, -63.4 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 129.6, -67.4 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 125.2, -71.5 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 120.9, -75.6 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 121.3, -76.1 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 121.8, -76.6 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 122.2, -77.1 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 122.7, -77.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 123.1, -78.1 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 123.6, -78.7 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 124, -79.2 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 124.5, -79.7 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 125, -80.2 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 125.4, -80.7 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 125.9, -81.2 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 126.3, -81.8 , 0 );

setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 124 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 132 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 133 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 134 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 146 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 147 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 148 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 163 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 164 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_1 + 166 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_1 + 168 + OFFSET_X, 1, 5.76, 5.76 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 186 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 192 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_1 + 98 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_1 + 163 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_1 + 164 + OFFSET_X, 1, 15 );
setRotateKey( spep_1 + 166 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_1 + 168 + OFFSET_X, 1, 14 );
setRotateKey( spep_1 + 170 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_1 + 172 + OFFSET_X, 1, 11 );
setRotateKey( spep_1 + 174 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_1 + 176 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_1 + 178 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_1 + 180 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_1 + 222 + OFFSET_X, 1, -0.8 );

-- ** 音 ** --
--オーラ
SE043 = playSeVer2( spep_1 + 0, 1181, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE044, 50 );

--ズームアウト
SE046 = playSeVer2( spep_1 + 12, 1004, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_1 + 18, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE045,  300 );

--オーラ
SE047 = playSeVer2( spep_1 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 24, SE047, 50 );
SE049 = playSeVer2( spep_1 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 48, SE049, 50 );

--気弾溜め
SE048 = playSeVer2( spep_1 + 54, 1328, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_1 + 54, SE048, 168 );
setStartTimeMs( SE048,  133 );
SE050 = playSeVer2( spep_1 + 50, 1345, "",spep_1 + 124, 0, 18, -1);
SE051 = playSeVer2( spep_1 + 54, 1282, "",spep_1 + 124, 0, 16, 0.6);
setSeVolumeByWorkId( spep_1 + 54, SE051, 73 );

--オーラ
SE052 = playSeVer2( spep_1 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 72, SE052, 50 );
SE053 = playSeVer2( spep_1 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 96, SE053, 50 );

--気弾発射
SE054 = playSeVer2( spep_1 + 106, 1133, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_1 + 106, 1146, "", 0, 0, 0, 0.6);

--敵ヒット
SE056 = playSeVer2( spep_1 + 112, 1011, "", 0, 0, 0, -1);

--気弾飛んでいく
SE057 = playSeVer2( spep_1 + 162, 1027, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_1 + 162, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 162, SE058, 248 );
SE059 = playSeVer2( spep_1 + 162, 1121, "",spep_1 + 228, 0, 14, -1);

--爆発
SE060 = playSeVer2( spep_1 + 220, 1159, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_1 + 222, 1024, "", 0, 0, 0, -1);

--風圧
SE062 = playSeVer2( spep_1 + 250, 1259, "", 0, 0, 0, 0.6);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 222); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 終了フレーム 346F

end
