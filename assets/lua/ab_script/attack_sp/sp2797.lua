--1029830:LR_超サイヤ人バーダック_超必殺技：
--sp_effect_b1_00301
--sp2797

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163371;  --カードカットインまで　前面 ef_001
SP_01b = 163372;  --カードカットインまで　前面 ef_001b
SP_02 = 163373;  --カードカットイン以降　前面 ef_002
SP_02b = 163374;  --カードカットイン以降　前面 ef_002b



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
-- カードカットインまで　前面
-------------------------------------------------
MAX_FRAME_0 = 358;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カードカットインまで　前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カードカットインまで　前面(ef_001b)
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
spep_x = spep_0 + 0;

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

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 242 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 242 + OFFSET_X, 1, 558.6, -5.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 558.6, -5.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 423.8, -5.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 423.8, -5.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 355.8, -5.8 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 355.8, -5.8 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 252.1, -5.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 252.1, -5.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 95.8, -5.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 95.8, -5.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 84.5, 25.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 84.5, 25.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 76.3, 18.9 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 76.3, 18.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 89.4, -5.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 89.4, -5.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 68, -7.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 68, -7.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 89.4, 22.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 89.4, 22.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 86.1, 7.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 86.1, 7.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 87.8, 15.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 87.8, 15.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 87.8, 14 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 87.8, 14 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 99.6, 164.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 99.6, 164.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 81.8, 278.7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 81.8, 278.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 74, 358.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 74, 358.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 56.4, 476.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 56.4, 476.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 40.8, 560.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 40.8, 560.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 32.1, 670.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 32.1, 670.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 14.2, 757 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 14.2, 757 , 0 );

setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.04, 2.04 );

setRotateKey( spep_0 + 242 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -46.5 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -52 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -52 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -62.9 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -62.9 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -68.4 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -68.4 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -73.9 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -73.9 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -79.4 );

--敵の動き2

setDisp( spep_0 + 322 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 360 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 322 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 322 + OFFSET_X, 1, 187.7, -88.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 187.7, -88.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 187.5, -87.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 187.5, -87.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 187.2, -87.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 187.2, -87.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 186.6, -87 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 186.6, -87 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 185.8, -86.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 185.8, -86.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 184.9, -85.3 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 184.9, -85.3 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 183.8, -84.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 183.8, -84.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 182.5, -82.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 182.5, -82.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 181.1, -81.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 181.1, -81.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 179.6, -80 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 179.6, -80 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 177.9, -78.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 177.9, -78.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 176.2, -76.6 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 176.2, -76.6 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 174.3, -74.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 174.3, -74.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 172.3, -72.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 172.3, -72.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 170.2, -70.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 170.2, -70.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 168, -68.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 168, -68.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 165.7, -66 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 165.7, -66 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 163.3, -63.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 163.3, -63.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 160.8, -61.1 , 0 );

setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.05, 0.04 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.05, 0.04 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.06, 0.05 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.06, 0.05 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.07, 0.06 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.07, 0.06 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.08, 0.07 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.08, 0.07 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.09, 0.08 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.09, 0.08 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.1, 0.09 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.1, 0.09 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.11, 0.1 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.11, 0.1 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.13, 0.12 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.13, 0.12 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.14, 0.13 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.14, 0.13 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.16, 0.15 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.16, 0.15 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.17, 0.16 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.17, 0.16 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.19, 0.18 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.19, 0.18 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.21, 0.2 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.21, 0.2 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.23, 0.22 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.23, 0.22 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.25, 0.24 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.25, 0.24 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.27, 0.26 );

setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 18, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 78 );

--力こめる
SE004 = playSeVer2( spep_0 + 86, 1344, "",spep_0 + 156, 0, 38, -1);
SE005 = playSeVer2( spep_0 + 88, 1189, "", 0, 0, 0, -1);

--集中線
SE006 = playSeVer2( spep_0 + 124, 63, "",spep_0 + 212, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 124, SE006, 89 );
SE007 = playSeVer2( spep_0 + 128, 1264, "",spep_0 + 270, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 128, SE007, 71 );

--向かってくる
SE008 = playSeVer2( spep_0 + 162, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 162, 9, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 174, 1121, "",spep_0 + 312, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 174, SE010, 67 );
SE011 = playSeVer2( spep_0 + 174, 1066, "",spep_0 + 312, 0, 48, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 252; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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

--パンチ
SE012 = playSeVer2( spep_0 + 252, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE012, 133 );
SE013 = playSeVer2( spep_0 + 260, 1187, "",spep_0 + 376, 0, 20, -1);

--アッパー
SE014 = playSeVer2( spep_0 + 282, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 292, 1120, "",spep_0 + 380, 0, 18, -1);

--敵飛んでくる
SE016 = playSeVer2( spep_0 + 304, 1183, "",spep_0 + 380, 0, 16, -1);

--瞬間移動
SE017 = playSeVer2( spep_0 + 332, 1109, "",spep_0 + 380, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --358F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かってくる2
SE019 = playSeVer2( spep_1 + 84, 9, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 84, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE020, 53 );
setTimeStretch( SE020, 1.52, 30, 4 );

-------------------------------------------------
-- カードカットイン以降　前面
-------------------------------------------------
MAX_FRAME_2 = 248;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン以降　前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン以降　前面(ef_002b)
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

setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, 0, -93.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 0, -93.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 0, -115.6 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 0, -115.6 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 0, -137.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 0, -137.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 0, -159.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 0, -159.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 0, -180.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 0, -180.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 0, -202.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 0, -202.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 0, -224.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 0, -224.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 0, -246 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 0, -246 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 0, -267.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 0, -267.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 0, -289.5 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 0, -289.5 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 0, -311.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 0, -311.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 0, -333 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 0, -333 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 0, -354.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 0, -354.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 0, -376.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 0, -376.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 0, -398.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 0, -398.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 0, -419.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 0, -419.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 0, -441.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 0, -441.6 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, -90 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -90 );

--敵の動き2

setDisp( spep_2 + 102 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 250 + OFFSET_X, 1, 1 );

setMoveKey( spep_2 + 102 + OFFSET_X, 1, -9, -263.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -9, -263.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -18.1, -250.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -18.1, -250.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -7.5, -266.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -7.5, -266.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 3, -282.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 3, -282.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 13.5, -298.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 13.5, -298.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 11.5, -282.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 11.5, -282.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 9.5, -267.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 9.5, -267.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 0.8, -282.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 0.8, -282.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -7.8, -297.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -7.8, -297.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -8, -258.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -8, -258.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 5.6, -298.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 5.6, -298.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -0.6, -272 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -0.6, -272 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 3.5, -283.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 3.5, -283.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 2.7, -285.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 2.7, -285.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 0.2, -279.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 0.2, -279.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 0.2, -285.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 0.2, -285.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 1.4, -281.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 1.4, -281.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 0.2, -284.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 0.2, -284.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -2.3, -277.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -2.3, -277.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 2.7, -288.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 2.7, -288.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 0.2, -282.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 0.2, -282.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 0.2, -287.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 0.2, -287.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 1.4, -284.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 1.4, -284.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 0.2, -287.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 0.2, -287.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -2.3, -280.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -2.3, -280.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 2.7, -290.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 2.7, -290.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 0.2, -285 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 0.2, -285 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 0.2, -290.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 0.2, -290.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 1.4, -287.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 1.4, -287.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 0.2, -290.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 0.2, -290.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -2.3, -283 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -2.3, -283 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 2.7, -293.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 2.7, -293.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 0.2, -287.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 0.2, -287.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 0.2, -293.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 0.2, -293.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 1.4, -289.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 1.4, -289.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 0.2, -292.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 0.2, -292.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -2.3, -285.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -2.3, -285.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 2.7, -296.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 2.7, -296.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 0.2, -290.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 0.2, -290.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 0.2, -295.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 0.2, -295.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 1.4, -292.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 1.4, -292.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 0.2, -295.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 0.2, -295.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -2.3, -288.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -2.3, -288.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 2.7, -298.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 2.7, -298.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 0.2, -292.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 0.2, -292.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 0.2, -298.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 0.2, -298.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 1.4, -295 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 1.4, -295 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 0.2, -298 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 0.2, -298 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -2.3, -290.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -2.3, -290.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 0.2, -295.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 0.2, -295.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 0.2, -300.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 0.2, -300.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 1.4, -297.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 1.4, -297.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 0.2, -300.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 0.2, -300.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -2.3, -293.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -2.3, -293.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 0.2, -297.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 0.2, -297.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 0.2, -302.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 0.2, -302.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 1.4, -299.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 1.4, -299.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 0.2, -302.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 0.2, -302.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -2.3, -295.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -2.3, -295.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -2.3, -295.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -2.3, -295.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -2.3, -296.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -2.3, -296.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -2.3, -296.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -2.3, -296.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -2.3, -297.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -2.3, -297.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -2.3, -297.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -2.3, -297.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -2.3, -297.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -2.3, -297.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -2.3, -298.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -2.3, -298.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -2.3, -298.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -2.3, -298.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -2.3, -299.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -2.3, -299.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -2.3, -299.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -2.3, -299.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -2.3, -300.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -2.3, -300.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -2.3, -300.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -2.3, -300.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -2.3, -301 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -2.3, -301 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -2.3, -301.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -2.3, -301.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -2.3, -301.9 , 0 );

setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 102 + OFFSET_X, 1, -87.2 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -87.2 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -87.1 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -87.1 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -86.9 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -86.9 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -86.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -86.8 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -86.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -86.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -86.4 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -86.4 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -86.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -86.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -86.2 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -86.2 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -86.1 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -86.1 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -86 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -85.9 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -85.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -85.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -85.6 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -85.6 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -85.5 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -85.5 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -85.4 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -85.4 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -85.3 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -85.3 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -85.2 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -85.2 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -85.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -85.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -85 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -85 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -84.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -84.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -84.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -84.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -84.6 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -84.6 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -84.4 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -84.4 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -84.3 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -84.3 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -84.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -84.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -84.1 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -83.9 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -83.9 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -83.7 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -83.7 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -83.6 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -83.6 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -83.5 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -83.5 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -83.4 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -83.4 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -83.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -83.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -83.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -83 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -82.9 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -82.9 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -82.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -82.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -82.6 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -82.6 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -82.5 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -82.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -82.4 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -82.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -82.1 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -82.1 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -82 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -82 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -81.8 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -81.7 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -81.7 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -81.6 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -81.6 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -81.4 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -81.4 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -81.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -81.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -81.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -80.8 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -80.8 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -80.4 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -80.4 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -80.3 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -80.3 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -80.2 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -80.2 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -80.1 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -80.1 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -79.9 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -79.9 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -79.8 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -79.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -79.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -79.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -79.5 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -79.5 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -79.4 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -79.4 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -79.3 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -79.3 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -79.2 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -79.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -79.1 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -79.1 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -79 );

-- ** 音 ** --

--向かってくる2
SE021 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);

--追いつく
SE022 = playSeVer2( spep_2 + 40, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE022, 162 );
SE023 = playSeVer2( spep_2 + 40, 1422, "",spep_2 + 132, 0, 34, -1);

--地面激突
SE024 = playSeVer2( spep_2 + 84, 1159, "", 0, 0, 0, -1);

--オーラ
SE025 = playSeVer2( spep_2 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE025, 63 );

--地面激突
SE026 = playSeVer2( spep_2 + 96, 1067, "", 0, 0, 0, -1);

--風圧
SE027 = playSeVer2( spep_2 + 114, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE027, 63 );

--オーラ
SE028 = playSeVer2( spep_2 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE028, 63 );
SE029 = playSeVer2( spep_2 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE029, 63 );
SE030 = playSeVer2( spep_2 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE030, 63 );
SE031 = playSeVer2( spep_2 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE031, 63 );
SE032 = playSeVer2( spep_2 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE032, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 126); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 248F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- カードカットインまで　前面
-------------------------------------------------
MAX_FRAME_0 = 358;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カードカットインまで　前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カードカットインまで　前面(ef_001b)
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
spep_x = spep_0 + 0;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 242 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 242 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 242 + OFFSET_X, 1, -558.6, -5.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -558.6, -5.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -423.8, -5.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -423.8, -5.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -355.8, -5.8 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -355.8, -5.8 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -252.1, -5.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -252.1, -5.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -95.8, -5.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -95.8, -5.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -84.5, 25.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -84.5, 25.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -76.3, 18.9 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -76.3, 18.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -89.4, -5.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -89.4, -5.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -68, -7.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -68, -7.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -89.4, 22.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -89.4, 22.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -86.1, 7.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -86.1, 7.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -87.8, 15.6 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -87.8, 15.6 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -87.8, 14 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -87.8, 14 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -99.6, 164.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -99.6, 164.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -81.8, 278.7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -81.8, 278.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -74, 358.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -74, 358.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -56.4, 476.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -56.4, 476.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -40.8, 560.4 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -40.8, 560.4 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -32.1, 670.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -32.1, 670.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -14.2, 757 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -14.2, 757 , 0 );

setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.04, 2.04 );

setRotateKey( spep_0 + 242 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 46.5 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 46.5 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 52 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 52 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 57.5 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 57.5 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 68.4 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 68.4 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 73.9 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 73.9 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 79.4 );

--敵の動き2

setDisp( spep_0 + 322 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 360 + OFFSET_X, 1, 1 );

changeAnime( spep_0 + 322 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 322 + OFFSET_X, 1, -187.7, -88.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -187.7, -88.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -187.5, -87.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -187.5, -87.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -187.2, -87.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -187.2, -87.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -186.6, -87 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -186.6, -87 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -185.8, -86.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -185.8, -86.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -184.9, -85.3 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -184.9, -85.3 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -183.8, -84.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -183.8, -84.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -182.5, -82.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -182.5, -82.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -181.1, -81.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -181.1, -81.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -179.6, -80 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -179.6, -80 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -177.9, -78.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -177.9, -78.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -176.2, -76.6 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -176.2, -76.6 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -174.3, -74.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -174.3, -74.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -172.3, -72.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -172.3, -72.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -170.2, -70.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -170.2, -70.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -168, -68.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -168, -68.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -165.7, -66 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -165.7, -66 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -163.3, -63.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -163.3, -63.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -160.8, -61.1 , 0 );

setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.05, 0.04 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.05, 0.04 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.06, 0.05 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.06, 0.05 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.07, 0.06 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.07, 0.06 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.08, 0.07 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.08, 0.07 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.09, 0.08 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.09, 0.08 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.1, 0.09 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.1, 0.09 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.11, 0.1 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.11, 0.1 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.13, 0.12 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.13, 0.12 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.14, 0.13 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.14, 0.13 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.16, 0.15 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.16, 0.15 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.17, 0.16 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.17, 0.16 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.19, 0.18 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.19, 0.18 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.21, 0.2 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.21, 0.2 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.23, 0.22 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.23, 0.22 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.25, 0.24 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.25, 0.24 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.27, 0.26 );

setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 0 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 18, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 78 );

--力こめる
SE004 = playSeVer2( spep_0 + 86, 1344, "",spep_0 + 156, 0, 38, -1);
SE005 = playSeVer2( spep_0 + 88, 1189, "", 0, 0, 0, -1);

--集中線
SE006 = playSeVer2( spep_0 + 124, 63, "",spep_0 + 212, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 124, SE006, 89 );
SE007 = playSeVer2( spep_0 + 128, 1264, "",spep_0 + 270, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 128, SE007, 71 );

--向かってくる
SE008 = playSeVer2( spep_0 + 162, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 162, 9, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 174, 1121, "",spep_0 + 312, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 174, SE010, 67 );
SE011 = playSeVer2( spep_0 + 174, 1066, "",spep_0 + 312, 0, 48, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 252; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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

--パンチ
SE012 = playSeVer2( spep_0 + 252, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE012, 133 );
SE013 = playSeVer2( spep_0 + 260, 1187, "",spep_0 + 376, 0, 20, -1);

--アッパー
SE014 = playSeVer2( spep_0 + 282, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 292, 1120, "",spep_0 + 380, 0, 18, -1);

--敵飛んでくる
SE016 = playSeVer2( spep_0 + 304, 1183, "",spep_0 + 380, 0, 16, -1);

--瞬間移動
SE017 = playSeVer2( spep_0 + 332, 1109, "",spep_0 + 380, 0, 16, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --358F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かってくる2
SE019 = playSeVer2( spep_1 + 84, 9, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 84, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE020, 53 );
setTimeStretch( SE020, 1.52, 30, 4 );

-------------------------------------------------
-- カードカットイン以降　前面
-------------------------------------------------
MAX_FRAME_2 = 248;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン以降　前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- カードカットイン以降　前面(ef_002b)
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

setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, 0, -93.8 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 0, -93.8 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 0, -115.6 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 0, -115.6 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 0, -137.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 0, -137.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 0, -159.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 0, -159.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 0, -180.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 0, -180.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 0, -202.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 0, -202.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 0, -224.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 0, -224.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 0, -246 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 0, -246 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 0, -267.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 0, -267.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 0, -289.5 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 0, -289.5 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 0, -311.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 0, -311.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 0, -333 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 0, -333 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 0, -354.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 0, -354.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 0, -376.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 0, -376.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 0, -398.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 0, -398.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 0, -419.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 0, -419.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 0, -441.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 0, -441.6 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 90 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 90 );

--敵の動き2

setDisp( spep_2 + 102 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 250 + OFFSET_X, 1, 1 );

setMoveKey( spep_2 + 102 + OFFSET_X, 1, 9, -263.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 9, -263.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 18.1, -250.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 18.1, -250.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 7.5, -266.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 7.5, -266.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -3, -282.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -3, -282.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -13.5, -298.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -13.5, -298.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -11.5, -282.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -11.5, -282.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -9.5, -267.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -9.5, -267.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -0.8, -282.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -0.8, -282.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 7.8, -297.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 7.8, -297.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 8, -258.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 8, -258.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -5.6, -298.6 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -5.6, -298.6 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 0.6, -272 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 0.6, -272 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -3.5, -283.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -3.5, -283.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -2.7, -285.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -2.7, -285.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -0.2, -279.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -0.2, -279.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -0.2, -285.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -0.2, -285.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -1.4, -281.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -1.4, -281.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -0.2, -284.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -0.2, -284.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 2.3, -277.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 2.3, -277.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -2.7, -288.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -2.7, -288.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -0.2, -282.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -0.2, -282.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -0.2, -287.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -0.2, -287.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -1.4, -284.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -1.4, -284.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -0.2, -287.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -0.2, -287.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 2.3, -280.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 2.3, -280.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -2.7, -290.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -2.7, -290.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -0.2, -285 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -0.2, -285 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -0.2, -290.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -0.2, -290.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -1.4, -287.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -1.4, -287.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -0.2, -290.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -0.2, -290.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 2.3, -283 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 2.3, -283 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -2.7, -293.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -2.7, -293.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -0.2, -287.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -0.2, -287.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -0.2, -293.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -0.2, -293.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -1.4, -289.8 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -1.4, -289.8 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -0.2, -292.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -0.2, -292.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 2.3, -285.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 2.3, -285.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -2.7, -296.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -2.7, -296.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -0.2, -290.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -0.2, -290.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -0.2, -295.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -0.2, -295.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -1.4, -292.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -1.4, -292.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -0.2, -295.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -0.2, -295.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 2.3, -288.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 2.3, -288.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -2.7, -298.7 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -2.7, -298.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -0.2, -292.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -0.2, -292.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -0.2, -298.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -0.2, -298.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -1.4, -295 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -1.4, -295 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -0.2, -298 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -0.2, -298 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 2.3, -290.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 2.3, -290.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -0.2, -295.1 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -0.2, -295.1 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -0.2, -300.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -0.2, -300.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -1.4, -297.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -1.4, -297.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -0.2, -300.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -0.2, -300.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 2.3, -293.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 2.3, -293.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -0.2, -297.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -0.2, -297.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -0.2, -302.7 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -0.2, -302.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -1.4, -299.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -1.4, -299.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -0.2, -302.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -0.2, -302.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 2.3, -295.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 2.3, -295.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 2.3, -295.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 2.3, -295.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 2.3, -296.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 2.3, -296.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 2.3, -296.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 2.3, -296.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 2.3, -297.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 2.3, -297.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 2.3, -297.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 2.3, -297.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 2.3, -297.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 2.3, -297.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 2.3, -298.4 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 2.3, -298.4 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 2.3, -298.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 2.3, -298.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 2.3, -299.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 2.3, -299.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 2.3, -299.7 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 2.3, -299.7 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 2.3, -300.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 2.3, -300.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 2.3, -300.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 2.3, -300.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 2.3, -301 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 2.3, -301 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 2.3, -301.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 2.3, -301.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 2.3, -301.9 , 0 );

setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 102 + OFFSET_X, 1, 87.2 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 87.2 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 87.1 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 87.1 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 86.9 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 86.9 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 86.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 86.8 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 86.7 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 86.7 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 86.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 86.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 86.4 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 86.4 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 86.3 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 86.3 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 86.2 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 86.2 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 86.1 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 86.1 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 86 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 86 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 85.9 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 85.9 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 85.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 85.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 85.6 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 85.6 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 85.5 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 85.5 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 85.4 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 85.4 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 85.2 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 85.2 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 85.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 85.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 85 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 85 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 84.8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 84.8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 84.7 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 84.6 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 84.6 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 84.4 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 84.4 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 84.3 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 84.3 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 84.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 84.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 84.1 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 84.1 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 83.9 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 83.9 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 83.7 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 83.7 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 83.5 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 83.5 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 83.4 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 83.4 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 83.3 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 83.3 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 83 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 83 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 82.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 82.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 82.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 82.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 82.6 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 82.6 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 82.2 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 82.2 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 82.1 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 82.1 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 82 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 82 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 81.9 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 81.9 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 81.8 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 81.7 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 81.7 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 81.6 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 81.6 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 81.4 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 81.4 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 81.3 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 81.3 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 81.2 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 81.2 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 81.1 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 81.1 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 81 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 81 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 80.8 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 80.8 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 80.5 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 80.5 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 80.3 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 80.3 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 80.2 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 80.2 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 80.1 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 80.1 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 80 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 80 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 79.9 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 79.9 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 79.8 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 79.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 79.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 79.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 79.5 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 79.5 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 79.4 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 79.4 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 79.3 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 79.3 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 79.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 79 );

-- ** 音 ** --

--向かってくる2
SE021 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);

--追いつく
SE022 = playSeVer2( spep_2 + 40, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE022, 162 );
SE023 = playSeVer2( spep_2 + 40, 1422, "",spep_2 + 132, 0, 34, -1);

--地面激突
SE024 = playSeVer2( spep_2 + 84, 1159, "", 0, 0, 0, -1);

--オーラ
SE025 = playSeVer2( spep_2 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE025, 63 );

--地面激突
SE026 = playSeVer2( spep_2 + 96, 1067, "", 0, 0, 0, -1);

--風圧
SE027 = playSeVer2( spep_2 + 114, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE027, 63 );

--オーラ
SE028 = playSeVer2( spep_2 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE028, 63 );
SE029 = playSeVer2( spep_2 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE029, 63 );
SE030 = playSeVer2( spep_2 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE030, 63 );
SE031 = playSeVer2( spep_2 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE031, 63 );
SE032 = playSeVer2( spep_2 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE032, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 126); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 248F

end
