--1034200:LR_超サイヤ人3孫悟空_ﾕﾆｯﾄ必殺技:救世主たちの奮戦
--sp_effect_b4_00451
--sp3054

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164578; --スタート〜フィニッシュ ef_001
SP_02  = 164579; --KOループ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );


ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- スタート〜フィニッシュ
-------------------------------------------------

--固有KO時のみ終了F調整
if ( _IS_DEAD_LAST_ == 1) then

   MAX_FRAME_0 = 1626;

else

   MAX_FRAME_0 = 1490;

end

CARD_FRAME = 1080;
KO_FRAME = 1620;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- スタート〜フィニッシュ (ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

KO = entryEffectLife( KO_FRAME + 0, SP_02, 60, 0x100, -1, 0, 0, 0); -- KOループ(ef_002)
setEffMoveKey( KO_FRAME + 0, KO, 0, 0 , 0);
setEffMoveKey( KO_FRAME + 60, KO, 0, 0 , 0);
setEffScaleKey( KO_FRAME + 0, KO, 1.0, 1.0);
setEffScaleKey( KO_FRAME + 60, KO, 1.0, 1.0);
setEffRotateKey( KO_FRAME + 0, KO, 0);
setEffRotateKey( KO_FRAME + 60, KO, 0);
setEffAlphaKey( KO_FRAME + 0, KO, 255);
setEffAlphaKey( KO_FRAME + 60, KO, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 808; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end
--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------

-- 敵の動き1
setDisp( spep_0 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 408 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 270 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 270 + OFFSET_X, 1, 158, -54 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 158, -54 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 158, -55.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 158, -55.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 158, -60.7 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 158, -60.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 157.9, -68.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 157.9, -68.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 157.9, -79.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 157.9, -79.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 157.8, -92.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 157.8, -92.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 157.7, -107.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 157.7, -107.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 157.6, -124.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 157.6, -124.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 157.5, -143.1 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 157.5, -143.1 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 157.4, -162.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 157.4, -162.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 157.2, -183.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 157.2, -183.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 157.1, -204.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 157.1, -204.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 157, -226 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 157, -226 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 156.9, -247.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 156.9, -247.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 156.8, -268.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 156.8, -268.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 156.6, -289.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 156.6, -289.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 156.5, -308.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 156.5, -308.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 156.4, -331.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 156.4, -331.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 154.3, -344.2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 154.3, -344.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 154.2, -359.4 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 154.2, -359.4 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 154.1, -372.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 154.1, -372.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 152.1, -387.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 152.1, -387.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 152, -395.2 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 152, -395.2 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 152, -400.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 152, -400.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 158, -398 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 158, -398 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 158.1, -399 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 158.1, -399 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 158.3, -401.6 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 158.3, -401.6 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 158.6, -405.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 158.6, -405.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 159, -410.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 159, -410.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 159.4, -417 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 159.4, -417 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 159.9, -423.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 159.9, -423.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 160.5, -431.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 160.5, -431.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 155.1, -443.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 155.1, -443.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 155.7, -452.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 155.7, -452.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 156.3, -461.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 156.3, -461.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 161.2, -468.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 161.2, -468.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 176.3, -467.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 176.3, -467.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 177.5, -478.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 177.5, -478.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 184.7, -505.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 184.7, -505.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 163.9, -516.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 163.9, -516.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 165.1, -527.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 165.1, -527.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 168.2, -523.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 168.2, -523.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 169.2, -532.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 169.2, -532.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 170.1, -538.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 170.1, -538.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 174.8, -563 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 174.8, -563 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 176.4, -558.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 176.4, -558.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 177.5, -557 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 177.5, -557 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 173.9, -545.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 173.9, -545.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 175.4, -541.4 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 175.4, -541.4 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 177.4, -535.9 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 177.4, -535.9 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 179.6, -529.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 179.6, -529.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 182.2, -521 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 182.2, -521 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 185.1, -511.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 185.1, -511.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 182.3, -530.8 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 182.3, -530.8 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 178.1, -524.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 178.1, -524.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 181.9, -511.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 181.9, -511.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 199.3, -475.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 199.3, -475.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 203.9, -460 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 203.9, -460 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 208.9, -443.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 208.9, -443.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 214.2, -410.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 214.2, -410.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 219.8, -392.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 219.8, -392.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 225.5, -374.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 225.5, -374.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 231.5, -359.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 231.5, -359.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 237.5, -336.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 237.5, -336.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 243.4, -319 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 243.4, -319 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 249, -306.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 249, -306.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 255.9, -295 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 255.9, -295 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 259.4, -286.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 259.4, -286.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 262.2, -279.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 262.2, -279.2 , 0 );

setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_0 + 270 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 594 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 618 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 594 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 594 + OFFSET_X, 1, -103.5, 20.2 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -103.5, 20.2 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -94.2, 2.9 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -94.2, 2.9 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -92.1, 1.9 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -92.1, 1.9 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -88.8, 17.1 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -88.8, 17.1 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -89.3, 2.7 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -89.3, 2.7 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -87.2, 1.6 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -87.2, 1.6 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -93.5, 21.5 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -93.5, 21.5 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -91.3, 20.4 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -91.3, 20.4 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -85.5, -0.4 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -85.5, -0.4 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -83.4, -1.4 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -83.4, -1.4 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -76.4, 6.9 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -76.4, 6.9 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -74.3, 5.8 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -74.3, 5.8 , 0 );

setScaleKey( spep_0 + 594 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 0.92, 0.92 );

setRotateKey( spep_0 + 594 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 618 + OFFSET_X, 1, -5 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 1104, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 167, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );

--唾飲み込む
SE004 = playSeVer2( spep_0 + 150, 1134, "",spep_0 + 200, 0, 27, -1);
setSeVolumeByWorkId( spep_0 + 150, SE004, 43 );
setPitch( spep_0 + 150, SE004, 200 );
setTimeStretch( SE004, 1.13, 30, 4 );

--手をのせる
SE005 = playSeVer2( spep_0 + 241, 1301, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 241, SE005, 124 );

--立ち上がる
SE006 = playSeVer2( spep_0 + 282, 1331, "", 0, 0, 0, -1);

--サタン走る
SE007 = playSeVer2( spep_0 + 321, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 321, SE007, 174 );
SE008 = playSeVer2( spep_0 + 348, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE008, 172 );
SE009 = playSeVer2( spep_0 + 375, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 375, SE009, 186 );
SE010 = playSeVer2( spep_0 + 395, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 395, SE010, 164 );

--画面遷移
SE011 = playSeVer2( spep_0 + 402, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE011, 54 );

--環境音
SE012 = playSeVer2( spep_0 + 402, 1175, "",spep_0 + 697, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 402, SE012, 32 );

--サタン走る
SE013 = playSeVer2( spep_0 + 426, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE013, 170 );
SE014 = playSeVer2( spep_0 + 441, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 441, SE014, 184 );
SE015 = playSeVer2( spep_0 + 452, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE015, 180 );
SE016 = playSeVer2( spep_0 + 466, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE016, 197 );
SE017 = playSeVer2( spep_0 + 481, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 481, SE017, 162 );
SE018 = playSeVer2( spep_0 + 495, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 495, SE018, 162 );
SE019 = playSeVer2( spep_0 + 509, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 509, SE019, 158 );

--画面遷移
SE020 = playSeVer2( spep_0 + 514, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE020, 48 );

--サタン走る
SE021 = playSeVer2( spep_0 + 522, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE021, 202 );
SE022 = playSeVer2( spep_0 + 536, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 536, SE022, 160 );
SE023 = playSeVer2( spep_0 + 551, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 551, SE023, 160 );
SE024 = playSeVer2( spep_0 + 566, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 566, SE024, 172 );

--涙光る
SE025 = playSeVer2( spep_0 + 566, 1518, "",spep_0 + 618, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 566, SE025, 44 );
setPitch( spep_0 + 566, SE025, 400 );
setTimeStretch( SE025, 1.27, 30, 4 );
SE026 = playSeVer2( spep_0 + 570, 231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE026, 132 );

--飛び込む音
SE027 = playSeVer2( spep_0 + 595, 1264, "",spep_0 + 684, 0, 41, -1);
setSeVolumeByWorkId( spep_0 + 595, SE027, 50 );

--走る
SE028 = playSeVer2( spep_0 + 621, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 621, SE028, 160 );
SE029 = playSeVer2( spep_0 + 632, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE029, 160 );
SE030 = playSeVer2( spep_0 + 643, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 643, SE030, 155 );
SE031 = playSeVer2( spep_0 + 654, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE031, 172 );

--パンチ振りかぶって止まる
SE032 = playSeVer2( spep_0 + 662, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 673, 1189, "", 0, 0, 0, -1);

--画面遷移
SE034 = playSeVer2( spep_0 + 778, 1232, "", 0, 0, 0, -1);

--オーラ
SE035 = playSeVer2( spep_0 + 782, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 782, SE035, 25 );
SE036 = playSeVer2( spep_0 + 806, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 806, SE036, 25 );

--セリフカットイン
--SE037 = playSeVer2( spep_0 + 812, 1018, "", 0, 0, 0, -1);

--ブウ登場
SE038 = playSeVer2( spep_0 + 864, 44, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 885, 13, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 885, SE039, 76 );
SE040 = playSeVer2( spep_0 + 885, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 885, SE040, 62 );

--気弾溜め
SE041 = playSeVer2( spep_0 + 925, 1248, "", 0, 3, 0, -1);
setStartTimeMs( SE041,  517 );
SE042 = playSeVer2( spep_0 + 925, 1204, "",spep_0 + 1104, 0, 15, -1);
SE043 = playSeVer2( spep_0 + 925, 1262, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 925, 1296, "",spep_0 + 1106, 0, 13, -1);
setSeVolumeByWorkId( spep_0 + 925, SE044, 79 );
setPitch( spep_0 + 925, SE044, -500 );
setTimeStretch( SE044, 0.67, 30, 4 );

--サタン犬にかけよる
SE045 = playSeVer2( spep_0 + 976, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 976, SE045, 176 );

--気弾溜め
SE046 = playSeVer2( spep_0 + 986, 1262, "", 0, 18, 0, -1);
setStartTimeMs( SE046,  100 );

--サタン犬にかけよる
SE047 = playSeVer2( spep_0 + 1022, 1119, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 1022, SE047, 74 );
setStartTimeMs( SE047,  617 );
SE048 = playSeVer2( spep_0 + 993, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 993, SE048, 148 );

--気弾溜め
SE049 = playSeVer2( spep_0 + 1002, 1116, "",spep_0 + 1065, 0, 28, -1);

--サタン犬にかけよる
SE050 = playSeVer2( spep_0 + 1036, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1036, SE050, 148 );
SE051 = playSeVer2( spep_0 + 1038, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1038, SE051, 184 );

--気弾発射
SE053 = playSeVer2( spep_0 + 1187, 1133, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 1187, 1146, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 1187, 1177, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 1209, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1209, SE056, 380 );

--気弾飛んでいく
SE057 = playSeVer2( spep_0 + 1251, 1156, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 1251, 1159, "", 0, 0, 0, -1);

--爆発
SE059 = playSeVer2( spep_0 + 1353, 1067, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 1353, 1128, "", 0, 0, 0, -1);
setPitch( spep_0 + 1353, SE060, -1200 );
setTimeStretch( SE060, 0.2, 30, 4 );
SE061 = playSeVer2( spep_0 + 1353, 1226, "", 0, 0, 0, -1);




-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1000; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

stopAndCancelAllSe( SP_dodge - 12 ); --再生中と再生予定のSEを止める
stopAndCancelAllVoice( SP_dodge - 12 ); --再生中と再生予定のVoiceを止める
playSeNotStoppable( SP_dodge - 12, 1042); --止めないSE

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------


-----------------------------
-- 終了
-----------------------------
hideKoScreen();
dealDamage( spep_0 + 1358 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 1490f

else end