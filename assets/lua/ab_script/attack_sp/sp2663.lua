--1028230:UR_ゴールデンフリーザ_必殺技：デスビーム
--sp_effect_a3_00106
--sp2663

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162537;  --ef_001  開幕カットイン～敵吹き飛ばし着地まで
SP_01b = 162538;  --ef_001b 開幕カットイン～敵吹き飛ばし着地まで
SP_02  = 162541;  --ef_002  カードカットイン～デスビーム、フィニッシュ
SP_02b = 162542;  --ef_002b カードカットイン～デスビーム、フィニッシュ

--エフェクト(てき)
SP_01r  = 162539;  --ef_001r  開幕カットイン～敵吹き飛ばし着地まで
SP_01br = 162540;  --ef_001br 開幕カットイン～敵吹き飛ばし着地まで
SP_02r  = 162543;  --ef_002r  カードカットイン～デスビーム、フィニッシュ
SP_02br = 162544;  --ef_002br カードカットイン～デスビーム、フィニッシュ

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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕カットイン～敵吹き飛ばし着地まで
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 416;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 250 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 418 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 250 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 306 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 336 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 340 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 250 + OFFSET_X, 1, 198.3, 243.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 198.3, 243.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 188.6, 221.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 188.6, 221.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 179, 199.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 179, 199.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 169.3, 177.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 169.3, 177.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 159.7, 155.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 159.7, 155.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 150.1, 133.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 150.1, 133.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 140.4, 111.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 140.4, 111.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 130.8, 89.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 130.8, 89.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 121.2, 68 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 121.2, 68 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 111.5, 46 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 111.5, 46 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 101.9, 24.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 101.9, 24.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 92.3, 2.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 92.3, 2.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 82.6, -19.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 82.6, -19.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 73, -41.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 73, -41.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 131.3, 144.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 131.3, 144.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 95.5, 95.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 95.5, 95.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 95.9, 144.1 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 95.9, 144.1 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 132.7, 110.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 132.7, 110.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 115.9, 131.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 115.9, 131.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 116.3, 133.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 116.3, 133.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 116.8, 136.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 116.8, 136.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 117.2, 138.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 117.2, 138.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 117.7, 140.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 117.7, 140.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 118.2, 143 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 118.2, 143 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 118.6, 145.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 118.6, 145.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 119.1, 147.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 119.1, 147.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 136.1, 58.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 136.1, 58.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 100.5, 6.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 100.5, 6.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 101.3, 52.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 101.3, 52.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 138.4, 15.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 138.4, 15.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 121.9, 33.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 121.9, 33.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 122.7, 33 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 122.7, 33 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 123.5, 32.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 123.5, 32.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 124.3, 31.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 124.3, 31.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 125.1, 31.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 125.1, 31.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 125.9, 30.4 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 125.9, 30.4 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 126.7, 29.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 126.7, 29.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 127.5, 29.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 127.5, 29.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 128.2, 28.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 128.2, 28.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 129, 27.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 129, 27.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 129.8, 27.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 129.8, 27.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 126.9, 174.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 126.9, 174.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 164, 169.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 164, 169.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 218.5, 186.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 218.5, 186.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 184, 134.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 184, 134.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 185.8, 180.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 185.8, 180.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 223.8, 143.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 223.8, 143.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 208.1, 161.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 208.1, 161.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 209.8, 160.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 209.8, 160.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 211.3, 160.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 211.3, 160.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 212.8, 159.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 212.8, 159.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 214.3, 159 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 214.3, 159 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 215.7, 158.4 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 215.7, 158.4 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 217.1, 157.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 217.1, 157.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 216.4, 153.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 216.4, 153.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 215.5, 148.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 215.5, 148.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 214.6, 144.5 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 214.6, 144.5 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 213.6, 140.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 213.6, 140.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 212.6, 135.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 212.6, 135.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 211.4, 131.5 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 211.4, 131.5 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 210.2, 127.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 210.2, 127.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 209, 123 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 209, 123 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 207.6, 118.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 207.6, 118.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 206.3, 114.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 206.3, 114.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 204.8, 110.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 204.8, 110.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 203.3, 106.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 203.3, 106.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 201.8, 102.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 201.8, 102.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 200.1, 98 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 200.1, 98 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 198.5, 93.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 198.5, 93.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 196.7, 89.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 196.7, 89.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 195, 85.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 195, 85.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 193.1, 81.8 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 193.1, 81.8 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 191.2, 77.8 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 191.2, 77.8 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 189.3, 73.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 189.3, 73.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 187.3, 69.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 187.3, 69.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 185.3, 66 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 185.3, 66 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 183.2, 62.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 183.2, 62.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 181.1, 58.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 181.1, 58.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 179, 54.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 179, 54.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 176.8, 50.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 176.8, 50.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 174.6, 46.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 174.6, 46.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 172.3, 42.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 172.3, 42.7 , 0 );

setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 100.1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 100.1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 100 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 100 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 99.9 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 99.9 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 99.8 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 99.8 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 99.7 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 99.7 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 99.6 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 99.6 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 99.4 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 99.4 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 99.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 99.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 99.2 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 99.2 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 99.1 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 99.1 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 240, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 45 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 38, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE004, 141 );
SE005 = playSeVer2( spep_0 + 40, 1170, "",spep_0 + 94, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 56 );

--炎燃え上がる
SE006 = playSeVer2( spep_0 + 94, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );
SE007 = playSeVer2( spep_0 + 102, 1258, "",spep_0 + 248, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 102, SE007, 77 );
SE008 = playSeVer2( spep_0 + 102, 1268, "",spep_0 + 242, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 102, SE008, 302 );

--画面遷移
SE009 = playSeVer2( spep_0 + 176, 8, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 230; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);

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
--飛び上がる
SE010 = playSeVer2( spep_0 + 214, 1135, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 214, 1117, "",spep_0 + 292, 0, 10, -1);
SE012 = playSeVer2( spep_0 + 214, 1011, "",spep_0 + 292, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 214, SE012, 74 );

--蹴り上げ
SE013 = playSeVer2( spep_0 + 260, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE013, 141 );
SE014 = playSeVer2( spep_0 + 268, 1153, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 268, 1110, "", 0, 0, 0, -1);

--尻尾アタック
SE016 = playSeVer2( spep_0 + 282, 1003, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 288, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE017, 69 );
SE018 = playSeVer2( spep_0 + 292, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 292, 1005, "", 0, 0, 0, -1);

--蹴り飛ばす
SE020 = playSeVer2( spep_0 + 318, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 326, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE022 = playSeVer2( spep_0 + 336, 1183, "",spep_0 + 428, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 336, SE022, 58 );

--着地
SE023 = playSeVer2( spep_0 + 364, 1135, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 364, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE024, 141 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--腕出す
SE026 = playSeVer2( spep_1 + 82, 1116, "",spep_1 + 130, 0, 20, -1);

-------------------------------------------------
-- カードカットイン～デスビーム、フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 396;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002   突進〜フィニッシュ 敵前面
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002_b   突進〜フィニッシュ 敵背面
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 202 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 202 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 202 + OFFSET_X, 1, 103.2, 141.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 103.2, 141.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 105.9, 135 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 105.9, 135 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 108.6, 128.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 108.6, 128.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 111.3, 121.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 111.3, 121.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 114, 114.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 114, 114.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 116.8, 108 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 116.8, 108 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 119.4, 101.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 119.4, 101.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 122.1, 94.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 122.1, 94.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 124.8, 87.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 124.8, 87.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 127.4, 81.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 127.4, 81.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 130.1, 74.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 130.1, 74.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 132.8, 67.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 132.8, 67.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 135.4, 61.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 135.4, 61.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 138.1, 54.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 138.1, 54.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 140.7, 48.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 140.7, 48.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 143.4, 41.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 143.4, 41.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 146, 34.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 146, 34.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 145.8, 33.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 145.8, 33.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 145.6, 32.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 145.6, 32.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 145.4, 30.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 145.4, 30.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 145.3, 29.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 145.3, 29.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 145.1, 28.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 145.1, 28.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 144.9, 26.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 144.9, 26.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 144.7, 25.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 144.7, 25.5 , 0 );

setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 202 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--指出す
SE027 = playSeVer2( spep_2 + 10, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE027, 158 );
SE028 = playSeVer2( spep_2 + 14, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE028, 74 );

--画面まわる
SE029 = playSeVer2( spep_2 + 24, 1188, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE029, 58 );
setStartTimeMs( SE029,  67 );
SE030 = playSeVer2( spep_2 + 24, 1278, "",spep_2 + 146, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 24, SE030, 69 );	
SE031 = playSeVer2( spep_2 + 24, 1183, "",spep_2 + 136, 0, 32, -1);

--指さす
SE032 = playSeVer2( spep_2 + 116, 1135, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 116, 1006, "", 0, 0, 0, -1);

--気弾溜める
SE034 = playSeVer2( spep_2 + 130, 1282, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 130, 1281, "",spep_2 + 186, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 130, SE035, 116 );

--気弾発射
SE036 = playSeVer2( spep_2 + 214, 1306, "",spep_2 + 266, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 214, SE036, 132 );
SE037 = playSeVer2( spep_2 + 214, 1256, "",spep_2 + 266, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 214, SE037, 141 );
SE038 = playSeVer2( spep_2 + 214, 1424, "",spep_2 + 266, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 214, SE038, 164 );
SE039 = playSeVer2( spep_2 + 214, 1302, "", 0, 0, 0, -1);
setBandpassFilter( spep_2 + 214, SE039, 24, 4220 );

--爆発
SE040 = playSeVer2( spep_2 + 244, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 254, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 276); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム --396


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕カットイン～敵吹き飛ばし着地まで
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 416;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 28;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_0 + 250 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 418 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 250 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 306 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 336 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 340 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 250 + OFFSET_X, 1, 198.3, 243.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 198.3, 243.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 188.6, 221.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 188.6, 221.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 179, 199.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 179, 199.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 169.3, 177.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 169.3, 177.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 159.7, 155.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 159.7, 155.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 150.1, 133.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 150.1, 133.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 140.4, 111.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 140.4, 111.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 130.8, 89.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 130.8, 89.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 121.2, 68 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 121.2, 68 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 111.5, 46 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 111.5, 46 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 101.9, 24.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 101.9, 24.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 92.3, 2.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 92.3, 2.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 82.6, -19.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 82.6, -19.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 73, -41.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 73, -41.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 131.3, 144.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 131.3, 144.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 95.5, 95.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 95.5, 95.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 95.9, 144.1 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 95.9, 144.1 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 132.7, 110.1 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 132.7, 110.1 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 115.9, 131.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 115.9, 131.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 116.3, 133.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 116.3, 133.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 116.8, 136.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 116.8, 136.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 117.2, 138.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 117.2, 138.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 117.7, 140.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 117.7, 140.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 118.2, 143 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 118.2, 143 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 118.6, 145.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 118.6, 145.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 119.1, 147.6 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 119.1, 147.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 136.1, 58.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 136.1, 58.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 100.5, 6.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 100.5, 6.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 101.3, 52.3 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 101.3, 52.3 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 138.4, 15.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 138.4, 15.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 121.9, 33.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 121.9, 33.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 122.7, 33 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 122.7, 33 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 123.5, 32.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 123.5, 32.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 124.3, 31.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 124.3, 31.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 125.1, 31.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 125.1, 31.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 125.9, 30.4 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 125.9, 30.4 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 126.7, 29.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 126.7, 29.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 127.5, 29.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 127.5, 29.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 128.2, 28.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 128.2, 28.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 129, 27.7 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 129, 27.7 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 129.8, 27.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 129.8, 27.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 126.9, 174.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 126.9, 174.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 164, 169.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 164, 169.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 218.5, 186.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 218.5, 186.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 184, 134.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 184, 134.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 185.8, 180.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 185.8, 180.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 223.8, 143.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 223.8, 143.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 208.1, 161.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 208.1, 161.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 209.8, 160.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 209.8, 160.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 211.3, 160.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 211.3, 160.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 212.8, 159.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 212.8, 159.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 214.3, 159 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 214.3, 159 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 215.7, 158.4 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 215.7, 158.4 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 217.1, 157.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 217.1, 157.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 216.4, 153.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 216.4, 153.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 215.5, 148.9 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 215.5, 148.9 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 214.6, 144.5 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 214.6, 144.5 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 213.6, 140.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 213.6, 140.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 212.6, 135.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 212.6, 135.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 211.4, 131.5 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 211.4, 131.5 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 210.2, 127.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 210.2, 127.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 209, 123 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 209, 123 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 207.6, 118.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 207.6, 118.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 206.3, 114.6 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 206.3, 114.6 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 204.8, 110.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 204.8, 110.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 203.3, 106.2 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 203.3, 106.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 201.8, 102.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 201.8, 102.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 200.1, 98 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 200.1, 98 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 198.5, 93.9 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 198.5, 93.9 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 196.7, 89.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 196.7, 89.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 195, 85.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 195, 85.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 193.1, 81.8 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 193.1, 81.8 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 191.2, 77.8 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 191.2, 77.8 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 189.3, 73.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 189.3, 73.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 187.3, 69.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 187.3, 69.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 185.3, 66 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 185.3, 66 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 183.2, 62.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 183.2, 62.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 181.1, 58.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 181.1, 58.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 179, 54.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 179, 54.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 176.8, 50.4 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 176.8, 50.4 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 174.6, 46.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 174.6, 46.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 172.3, 42.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 172.3, 42.7 , 0 );

setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -33 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 100.1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 100.1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 100 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 100 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 99.9 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 99.9 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 99.8 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 99.8 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 99.7 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 99.7 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 99.6 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 99.6 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 99.4 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 99.4 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 99.3 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 99.3 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 99.2 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 99.2 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 99.1 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 99.1 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 240, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 45 );
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 38, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE004, 141 );
SE005 = playSeVer2( spep_0 + 40, 1170, "",spep_0 + 94, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 56 );

--炎燃え上がる
SE006 = playSeVer2( spep_0 + 94, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );
SE007 = playSeVer2( spep_0 + 102, 1258, "",spep_0 + 248, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 102, SE007, 77 );
SE008 = playSeVer2( spep_0 + 102, 1268, "",spep_0 + 242, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 102, SE008, 302 );

--画面遷移
SE009 = playSeVer2( spep_0 + 176, 8, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 230; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);

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
--飛び上がる
SE010 = playSeVer2( spep_0 + 214, 1135, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 214, 1117, "",spep_0 + 292, 0, 10, -1);
SE012 = playSeVer2( spep_0 + 214, 1011, "",spep_0 + 292, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 214, SE012, 74 );

--蹴り上げ
SE013 = playSeVer2( spep_0 + 260, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE013, 141 );
SE014 = playSeVer2( spep_0 + 268, 1153, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 268, 1110, "", 0, 0, 0, -1);

--尻尾アタック
SE016 = playSeVer2( spep_0 + 282, 1003, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 288, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE017, 69 );
SE018 = playSeVer2( spep_0 + 292, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 292, 1005, "", 0, 0, 0, -1);

--蹴り飛ばす
SE020 = playSeVer2( spep_0 + 318, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 326, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE022 = playSeVer2( spep_0 + 336, 1183, "",spep_0 + 428, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 336, SE022, 58 );

--着地
SE023 = playSeVer2( spep_0 + 364, 1135, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 364, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE024, 141 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--腕出す
SE026 = playSeVer2( spep_1 + 82, 1116, "",spep_1 + 130, 0, 20, -1);

-------------------------------------------------
-- カードカットイン～デスビーム、フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 396;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002   突進〜フィニッシュ 敵前面
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002_b   突進〜フィニッシュ 敵背面
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 202 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 202 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 202 + OFFSET_X, 1, 103.2, 141.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 103.2, 141.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 105.9, 135 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 105.9, 135 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 108.6, 128.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 108.6, 128.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 111.3, 121.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 111.3, 121.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 114, 114.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 114, 114.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 116.8, 108 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 116.8, 108 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 119.4, 101.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 119.4, 101.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 122.1, 94.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 122.1, 94.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 124.8, 87.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 124.8, 87.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 127.4, 81.2 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 127.4, 81.2 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 130.1, 74.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 130.1, 74.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 132.8, 67.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 132.8, 67.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 135.4, 61.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 135.4, 61.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 138.1, 54.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 138.1, 54.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 140.7, 48.1 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 140.7, 48.1 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 143.4, 41.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 143.4, 41.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 146, 34.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 146, 34.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 145.8, 33.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 145.8, 33.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 145.6, 32.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 145.6, 32.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 145.4, 30.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 145.4, 30.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 145.3, 29.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 145.3, 29.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 145.1, 28.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 145.1, 28.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 144.9, 26.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 144.9, 26.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 144.7, 25.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 144.7, 25.5 , 0 );

setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.19, 0.19 );

setRotateKey( spep_2 + 202 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--指出す
SE027 = playSeVer2( spep_2 + 10, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE027, 158 );
SE028 = playSeVer2( spep_2 + 14, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE028, 74 );

--画面まわる
SE029 = playSeVer2( spep_2 + 24, 1188, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE029, 58 );
setStartTimeMs( SE029,  67 );
SE030 = playSeVer2( spep_2 + 24, 1278, "",spep_2 + 146, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 24, SE030, 69 );	
SE031 = playSeVer2( spep_2 + 24, 1183, "",spep_2 + 136, 0, 32, -1);

--指さす
SE032 = playSeVer2( spep_2 + 116, 1135, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 116, 1006, "", 0, 0, 0, -1);

--気弾溜める
SE034 = playSeVer2( spep_2 + 130, 1282, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 130, 1281, "",spep_2 + 186, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 130, SE035, 116 );

--気弾発射
SE036 = playSeVer2( spep_2 + 214, 1306, "",spep_2 + 266, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 214, SE036, 132 );
SE037 = playSeVer2( spep_2 + 214, 1256, "",spep_2 + 266, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 214, SE037, 141 );
SE038 = playSeVer2( spep_2 + 214, 1424, "",spep_2 + 266, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 214, SE038, 164 );
SE039 = playSeVer2( spep_2 + 214, 1302, "", 0, 0, 0, -1);
setBandpassFilter( spep_2 + 214, SE039, 24, 4220 );

--爆発
SE040 = playSeVer2( spep_2 + 244, 1159, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 254, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 276); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム --396


end
