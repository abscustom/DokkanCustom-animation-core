--1034340:LR_孫悟飯(ビースト)_超必殺技：爆裂乱魔
--sp_effect_b4_00438
--sp3027

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164521; --最初〜最後まで ef_001

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



ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    setupMovie(0, SP_01, 0, 1);

else

    setupMovie(0, SP_01, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; -- 敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------

MAX_FRAME_0 = 1280;

CARD_FRAME = 778;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2; --spep名とフレーム数を置き換える

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
setDisp( spep_0 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 162 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 124 + OFFSET_X, 1, 8 );
changeAnimeBySide( spep_0 + 134 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 124 + OFFSET_X, 1, -139.9 * mirror, 200 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -139.9 * mirror, 200 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -184 * mirror, 277.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -184 * mirror, 277.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -154 * mirror, 278 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -154 * mirror, 278 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -163.9 * mirror, 293.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -163.9 * mirror, 293.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -211.9 * mirror, 264 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -211.9 * mirror, 264 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -215.9 * mirror, 294 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -215.9 * mirror, 294 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -185.9 * mirror, 299.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -185.9 * mirror, 299.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -211.9 * mirror, 357.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -211.9 * mirror, 357.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -257.8 * mirror, 406 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -257.8 * mirror, 406 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -271.8 * mirror, 427.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -271.8 * mirror, 427.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -273.8 * mirror, 437.9 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -273.8 * mirror, 437.9 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -273.8 * mirror, 435.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -273.8 * mirror, 435.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -279.9 * mirror, 443.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -279.9 * mirror, 443.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -285.8 * mirror, 449.8 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -285.8 * mirror, 449.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -291.8 * mirror, 454 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -291.8 * mirror, 454 , 0 );

setScaleKey( spep_0 + 124 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 124 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 15 * mirror );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -5 * mirror );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -5 * mirror );

setBlendColor( spep_0 + 140 + OFFSET_X, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_0 + 142 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_0 + 144 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 148 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_0 + 152 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 );


-- 敵の動き2
setDisp( spep_0 + 294 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 386 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 294 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 328 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 336 + OFFSET_X, 1, 7 );
changeAnimeBySide( spep_0 + 346 + OFFSET_X, 1, 6 );
changeAnimeBySide( spep_0 + 366 + OFFSET_X, 1, 107 );
changeAnimeBySide( spep_0 + 370 + OFFSET_X, 1, 7 );


y = -450;


setMoveKey( spep_0 + 294 + OFFSET_X, 1, -21.8 * mirror, 184.3 + y , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -21.8 * mirror, 184.3 + y , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -30.8 * mirror, -100.8 + y , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -30.8 * mirror, -100.8 + y , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -35.9 * mirror, -264.5 + y , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -35.9 * mirror, -264.5 + y , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -35.9 * mirror, -257 + y , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -35.9 * mirror, -257 + y , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -36 * mirror, -248.1 + y , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -36 * mirror, -248.1 + y , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -36 * mirror, -238.9 + y , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -36 * mirror, -238.9 + y , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -36 * mirror, -229.7 + y , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -36 * mirror, -229.7 + y , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -36 * mirror, -220.3 + y , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -36 * mirror, -220.3 + y , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -36 * mirror, -205.7 + y , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -36 * mirror, -205.7 + y , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -36 * mirror, -191.6 + y , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -36 * mirror, -191.6 + y , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -36.1 * mirror, -178.8 + y , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -36.1 * mirror, -178.8 + y , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -36.1 * mirror, -166.8 + y , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -36.1 * mirror, -166.8 + y , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -35.9 * mirror, -156.2 + y , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -35.9 * mirror, -156.2 + y , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -36 * mirror, -147.4 + y , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -36 * mirror, -147.4 + y , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -36.2 * mirror, -141 + y , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -36.2 * mirror, -141 + y , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -36 * mirror, -137.1 + y , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -36 * mirror, -137.1 + y , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -36.2 * mirror, -136.7 + y , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -36.2 * mirror, -136.7 + y , 0 );

setMoveKey( spep_0 + 328 + OFFSET_X, 1, -44.5 * mirror, -148.1 , 0 ); -- 検証_敵位置調整のため1Fのみ調整
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -44.5 * mirror, -148.1 + y , 0 );

setMoveKey( spep_0 + 330 + OFFSET_X, 1, -105.8 * mirror, -114.6 + y , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -105.8 * mirror, -114.6 + y , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -14 * mirror, -257.8 + y , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -14 * mirror, -257.8 + y , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -187.3 * mirror, -211.5 + y , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -187.3 * mirror, -211.5 + y , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -25.8 * mirror, -17.2 + y , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -25.8 * mirror, -17.2 + y , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -148.6 * mirror, -166.3 + y , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -148.6 * mirror, -166.3 + y , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -181.9 * mirror, -185.7 + y , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -181.9 * mirror, -185.7 + y , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -234.5 * mirror, -257 + y , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -234.5 * mirror, -257 + y , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -418 * mirror, -500.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -418 * mirror, -500.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -194.3 * mirror, -345.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -194.3 * mirror, -345.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -152.7 * mirror, -297.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -152.7 * mirror, -297.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -60.8 * mirror, -296.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -60.8 * mirror, -296.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -184.5 * mirror, -236.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -184.5 * mirror, -236.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -104.7 * mirror, -208.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -104.7 * mirror, -208.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 19.3 * mirror, -185.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 19.3 * mirror, -185.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -12.5 * mirror, -113 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -12.5 * mirror, -113 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -88.3 * mirror, -5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -88.3 * mirror, -5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -160.4 * mirror, 98.9 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -160.4 * mirror, 98.9 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -48.5 * mirror, 118.8 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -48.5 * mirror, 118.8 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 239.5 * mirror, 58.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 239.5 * mirror, 58.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 171.5 * mirror, -15.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 171.5 * mirror, -15.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 23.6 * mirror, 8.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 23.6 * mirror, 8.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 121.5 * mirror, -19.2 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 121.5 * mirror, -19.2 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 153.5 * mirror, -23.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 153.5 * mirror, -23.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 651.3 * mirror, -1 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 651.3 * mirror, -1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 139.3 * mirror, -52.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 139.3 * mirror, -52.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 139.4 * mirror, -52.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 139.4 * mirror, -52.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -220.3 * mirror, 227 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -220.3 * mirror, 227 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -527.4 * mirror, 567.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -527.4 * mirror, 567.4 , 0 );

setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.59, 1.6 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.59, 1.6 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.69, 1.7 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 1.69, 1.7 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 3.49, 3.5 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 3.49, 3.5 );

setRotateKey( spep_0 + 294 + OFFSET_X, 1, -60 * mirror );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -60 * mirror );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -130 * mirror );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -130 * mirror );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -70 * mirror );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -70 * mirror );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -60 * mirror );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -60 * mirror );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -50 * mirror );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -50 * mirror );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -55 * mirror );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -55 * mirror );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -70 * mirror );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -70 * mirror );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 100 * mirror );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, 100 * mirror );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 110 * mirror );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 110 * mirror );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -65 * mirror );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -65 * mirror );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -75 * mirror );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -75 * mirror );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -10 * mirror );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 10 * mirror );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 10 * mirror );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 30 * mirror );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 30 * mirror );

setBlendColor( spep_0 + 294 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_0 + 340 + OFFSET_X, 1, 5, 0.7, 0.1, 0.1, 1 );
setBlendColor( spep_0 + 342 + OFFSET_X, 1, 5, 0.9, 0.1, 0.1, 1 );
setBlendColor( spep_0 + 386 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 184, 0, 55, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕伸ばす
SE003 = playSeVer2( spep_0 + 74, 1004, "", 0, 0, 0, -1);

--電気走る
SE004 = playSeVer2( spep_0 + 74, 1148, "",spep_0 + 140, 0, 15, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
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
--敵吹き飛ぶ
SE005 = playSeVer2( spep_0 + 114, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE005, 133 );
SE006 = playSeVer2( spep_0 + 114, 20, "",spep_0 + 230, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 114, SE006, 66 );
SE007 = playSeVer2( spep_0 + 120, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE007, 133 );

--敵飛んでいく
SE008 = playSeVer2( spep_0 + 128, 1121, "",spep_0 + 228, 0, 57, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 60 );

--カメラパン
SE009 = playSeVer2( spep_0 + 162, 44, "", 0, 0, 0, -1);

--構える
SE010 = playSeVer2( spep_0 + 200, 1233, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 211, 1072, "", 0, 0, 0, -1);

--地面えぐれる
SE012 = playSeVer2( spep_0 + 240, 1258, "",spep_0 + 294, 0, 17, -1);
SE013 = playSeVer2( spep_0 + 244, 1159, "",spep_0 + 297, 0, 20, -1);

--飛び立つ
SE014 = playSeVer2( spep_0 + 270, 1452, "",spep_0 + 329, 0, 25, -1);
SE015 = playSeVer2( spep_0 + 270, 1068, "",spep_0 + 327, 0, 31, -1);
SE016 = playSeVer2( spep_0 + 270, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE016, 178 );
SE017 = playSeVer2( spep_0 + 286, 1245, "",spep_0 + 331, 0, 9, -1);
SE018 = playSeVer2( spep_0 + 303, 1513, "",spep_0 + 354, 0, 13, -1);
setSeVolumeByWorkId( spep_0 + 303, SE018, 117 );

--殴りつける
SE019 = playSeVer2( spep_0 + 319, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 321, 1123, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 321, 1049, "", 0, 0, 0, -1);

--敵落ちていく
SE022 = playSeVer2( spep_0 + 336, 1121, "",spep_0 + 453, 0, 68, -1);
setPitch( spep_0 + 336, SE022, 200 );
setTimeStretch( SE022, 1.13, 30, 4 );

--気弾溜め
SE023 = playSeVer2( spep_0 + 382, 1489, "",spep_0 + 446, 0, 15, -1);
SE024 = playSeVer2( spep_0 + 387, 1204, "",spep_0 + 450, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 387, SE024, 148 );
SE025 = playSeVer2( spep_0 + 387, 1445, "",spep_0 + 446, 0, 17, -1);

--気弾発射
SE026 = playSeVer2( spep_0 + 421, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 421, 1145, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 421, 1511, "", 0, 0, 0, -1);

--気弾追っていく
SE029 = playSeVer2( spep_0 + 453, 1212, "",spep_0 + 520, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 453, SE029, 68 );

--爆発
SE030 = playSeVer2( spep_0 + 477, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 486, 1068, "", 0, 0, 0, -1);

--気弾溜め
SE032 = playSeVer2( spep_0 + 570, 1468, "",spep_0 + 810, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 570, SE032, 76 );
SE033 = playSeVer2( spep_0 + 574, 1488, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 574, SE033, 67 );
SE034 = playSeVer2( spep_0 + 574, 1445, "", 0, 0, 0, -1);
setPitch( spep_0 + 574, SE034, 300 );
setTimeStretch( SE034, 1.2, 30, 4 );

--画面遷移
SE035 = playSeVer2( spep_0 + 577, 8, "", 0, 0, 0, -1);

--気弾溜め
SE036_02 = playSeVer2( spep_0 + 590, 1522, "",spep_0 + 808, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 590, SE036_02, 300 );
--[[
--SE036 = playSeVer2( spep_0 + 590, 1513, "",spep_0 + 807, 0, 16, -1);
--SE037 = playSeVer2( spep_0 + 591, 1296, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 591, SE037, 68 );
setPitch( spep_0 + 591, SE037, -600 );
setTimeStretch( SE037, 0.6, 30, 4 );
--SE038 = playSeVer2( spep_0 + 591, 1281, "",spep_0 + 808, 0, 17, -1);
setSeVolumeByWorkId( spep_0 + 591, SE038, 59 );
setPitch( spep_0 + 591, SE038, -500 );
setTimeStretch( SE038, 0.67, 30, 4 );
--SE039 = playSeVer2( spep_0 + 601, 1255, "",spep_0 + 808, 0, 22, -1);
]]
SE040 = playSeVer2( spep_0 + 601, 1507, "", 0, 0, 0, -1);

--発射前溜め
SE039_02 = playSeVer2( spep_0 + 863, 1522, "",spep_0 + 1050, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 863, SE039_02, 300 );

--SE042 = playSeVer2( spep_0 + 862, 1513, "",spep_0 + 1051, 0, 31, -1);
SE043 = playSeVer2( spep_0 + 863, 1255, "",spep_0 + 1054, 0, 33, -1);
--[[
--SE044 = playSeVer2( spep_0 + 863, 1296, "",spep_0 + 1048, 0, 25, -1);
setSeVolumeByWorkId( spep_0 + 863, SE044, 68 );
--SE045 = playSeVer2( spep_0 + 863, 1281, "",spep_0 + 1050, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 863, SE045, 58 );
]]

SE046 = playSeVer2( spep_0 + 865, 1443, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 865, SE046, 160 );

--振りかぶる
SE047 = playSeVer2( spep_0 + 898, 1116, "",spep_0 + 953, 0, 15, -1);

--気弾発射
SE048 = playSeVer2( spep_0 + 987, 44, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 1010, 1120, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 1010, 1146, "",spep_0 + 1159, 0, 47, -1);
SE051 = playSeVer2( spep_0 + 1012, 1512, "",spep_0 + 1157, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 1012, SE051, 71 );

--爆発
SE052 = playSeVer2( spep_0 + 1070, 1069, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE052, 120 );
SE053 = playSeVer2( spep_0 + 1098, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE053, 120 );

--風圧
SE054 = playSeVer2( spep_0 + 1122, 1427, "", 0, 0, 0, -1);

--飛んでくる
SE055 = playSeVer2( spep_0 + 1206, 1508, "",spep_0 + 1281, 0, 19, -1);
setSeVolumeByWorkId( spep_0 + 1206, SE055, 44 );
SE056 = playSeVer2( spep_0 + 1206, 63, "",spep_0 + 1286, 0, 23, -1);
setSeVolumeByWorkId( spep_0 + 1206, SE056, 87 );


-----------------------------
-- 終了
-----------------------------
dealDamage( spep_0 + 1100); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1280F