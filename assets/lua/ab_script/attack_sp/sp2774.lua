--1029360:LR_超サイヤ人孫悟空&超サイヤ人トランクス(青年期)&超サイヤ人孫悟飯(少年期)_超必殺技：トリプル気功波
--sp_effect_a1_00454
--sp2774

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163189 --前半手前 ef_001
SP_03 = 163191 --後半手前 ef_002
SP_05 = 163193 --KO ef_003

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

setupMovie(0 , SP_01, 0, 1);
spep_0 = 0;


-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 776;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前半手前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵の動き ** --
a = 8

--敵の動き1
setDisp( spep_0 + 170 + OFFSET_X + a, 1, 1 );
setDisp( spep_0 + 216 + OFFSET_X + a, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X + a, 1, 117 );

setMoveKey( spep_0 + 170 + OFFSET_X + a, 1, 280.1, -280.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X + a, 1, 280.1, -280.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X + a, 1, 279, -278.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X + a, 1, 279, -278.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X + a, 1, 275.5, -271.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X + a, 1, 275.5, -271.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X + a, 1, 269.7, -261.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X + a, 1, 269.7, -261.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X + a, 1, 261.5, -247.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X + a, 1, 261.5, -247.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X + a, 1, 251.1, -228.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X + a, 1, 251.1, -228.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X + a, 1, 238.3, -206.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X + a, 1, 238.3, -206.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X + a, 1, 225.5, -183.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X + a, 1, 225.5, -183.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X + a, 1, 215, -165.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X + a, 1, 215, -165.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X + a, 1, 206.9, -150.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X + a, 1, 206.9, -150.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X + a, 1, 201.1, -140.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X + a, 1, 201.1, -140.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X + a, 1, 197.6, -134.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X + a, 1, 197.6, -134.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X + a, 1, 196.4, -132.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X + a, 1, 196.4, -132.5 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X + a, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 193 + OFFSET_X + a, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 194 + OFFSET_X + a, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 195 + OFFSET_X + a, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 196 + OFFSET_X + a, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 197 + OFFSET_X + a, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 198 + OFFSET_X + a, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 199 + OFFSET_X + a, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 200 + OFFSET_X + a, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 201 + OFFSET_X + a, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 202 + OFFSET_X + a, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 203 + OFFSET_X + a, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 204 + OFFSET_X + a, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 205 + OFFSET_X + a, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 206 + OFFSET_X + a, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 207 + OFFSET_X + a, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 208 + OFFSET_X + a, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 209 + OFFSET_X + a, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 210 + OFFSET_X + a, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 211 + OFFSET_X + a, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 212 + OFFSET_X + a, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 216 + OFFSET_X + a, 1, 0.44, 0.44 );

setRotateKey( spep_0 + 170 + OFFSET_X + a, 1, -7.2 );
setRotateKey( spep_0 + 216 + OFFSET_X + a, 1, -7.2 );

--敵の動き2
setDisp( spep_0 + 262 + OFFSET_X + a, 1, 1 );
setDisp( spep_0 + 362 + OFFSET_X + a, 1, 0 );

changeAnime( spep_0 + 262 + OFFSET_X + a, 1, 6 );

setMoveKey( spep_0 + 262 + OFFSET_X + a, 1, -48, -46.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X + a, 1, -48, -46.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X + a, 1, -62.2, -30.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X + a, 1, -62.2, -30.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X + a, 1, -20.6, -67.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X + a, 1, -20.6, -67.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X + a, 1, -28.5, -43.1 , 0 );--手動調整箇所
setMoveKey( spep_0 + 269 + OFFSET_X + a, 1, -28.5, -43.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X + a, 1, 32.7, -45 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X + a, 1, 32.7, -45 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X + a, 1, 41.2, -50.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X + a, 1, 41.2, -50.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X + a, 1, 50.2, -37.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X + a, 1, 50.2, -37.2 , 0 );--手動調整箇所ここまで
setMoveKey( spep_0 + 276 + OFFSET_X + a, 1, 88.5, -51.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X + a, 1, 88.5, -51.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X + a, 1, 102.8, -27.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X + a, 1, 102.8, -27.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X + a, 1, 100.2, -36.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X + a, 1, 100.2, -36.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X + a, 1, 116.3, -34.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X + a, 1, 116.3, -34.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X + a, 1, 97, -29.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X + a, 1, 97, -29.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X + a, 1, 105.2, -39 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X + a, 1, 105.2, -39 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X + a, 1, 104.9, -25.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X + a, 1, 104.9, -25.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X + a, 1, 97.4, -37.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X + a, 1, 97.4, -37.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X + a, 1, 105.6, -30.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X + a, 1, 105.6, -30.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X + a, 1, 99, -37.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X + a, 1, 99, -37.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X + a, 1, 98.7, -28.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X + a, 1, 98.7, -28.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X + a, 1, 99.6, -32.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X + a, 1, 99.6, -32.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X + a, 1, 98.7, -32.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X + a, 1, 98.7, -32.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X + a, 1, 98.1, -31.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X + a, 1, 98.1, -31.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X + a, 1, 97.7, -31.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X + a, 1, 97.7, -31.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X + a, 1, 97.4, -31.5 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X + a, 1, 97.4, -31.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X + a, 1, 97.2, -31.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X + a, 1, 97.2, -31.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X + a, 1, 97, -31.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X + a, 1, 97, -31.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X + a, 1, 524.9, 29.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X + a, 1, 524.9, 29.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X + a, 1, 522.7, 34.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X + a, 1, 522.7, 34.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X + a, 1, 520.7, 39.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X + a, 1, 520.7, 39.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X + a, 1, 518.8, 44.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X + a, 1, 518.8, 44.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X + a, 1, 517.1, 48.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X + a, 1, 517.1, 48.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X + a, 1, 515.5, 52.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X + a, 1, 515.5, 52.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X + a, 1, 514, 55.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X + a, 1, 514, 55.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X + a, 1, 512.7, 59.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X + a, 1, 512.7, 59.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X + a, 1, 511.5, 62 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X + a, 1, 511.5, 62 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X + a, 1, 510.5, 64.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X + a, 1, 510.5, 64.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X + a, 1, 509.6, 66.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X + a, 1, 509.6, 66.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X + a, 1, 508.8, 68.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X + a, 1, 508.8, 68.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X + a, 1, 508.2, 70.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X + a, 1, 508.2, 70.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X + a, 1, 507.7, 71.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X + a, 1, 507.7, 71.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X + a, 1, 507.3, 72.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X + a, 1, 507.3, 72.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X + a, 1, 507.1, 72.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X + a, 1, 507.1, 72.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X + a, 1, 507.1, 72.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X + a, 1, 507.1, 72.8 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X + a, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 265 + OFFSET_X + a, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 266 + OFFSET_X + a, 1, 3.2, 3.2 );--手動調整箇所
setScaleKey( spep_0 + 267 + OFFSET_X + a, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 268 + OFFSET_X + a, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 269 + OFFSET_X + a, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 270 + OFFSET_X + a, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 271 + OFFSET_X + a, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 272 + OFFSET_X + a, 1, 2.0, 2.0 );
setScaleKey( spep_0 + 275 + OFFSET_X + a, 1, 2.0, 2.0 );--手動調整箇所ここまで
setScaleKey( spep_0 + 276 + OFFSET_X + a, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 279 + OFFSET_X + a, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 280 + OFFSET_X + a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 287 + OFFSET_X + a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 288 + OFFSET_X + a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 295 + OFFSET_X + a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 296 + OFFSET_X + a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 303 + OFFSET_X + a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 304 + OFFSET_X + a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 327 + OFFSET_X + a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 328 + OFFSET_X + a, 1, 10.21, 10.21 );
setScaleKey( spep_0 + 362 + OFFSET_X + a, 1, 10.21, 10.21 );

setRotateKey( spep_0 + 262 + OFFSET_X + a, 1, 41.9 );
setRotateKey( spep_0 + 265 + OFFSET_X + a, 1, 41.9 );
setRotateKey( spep_0 + 266 + OFFSET_X + a, 1, 41.8 );
setRotateKey( spep_0 + 267 + OFFSET_X + a, 1, 41.8 );
setRotateKey( spep_0 + 268 + OFFSET_X + a, 1, 41.6 );
setRotateKey( spep_0 + 269 + OFFSET_X + a, 1, 41.6 );
setRotateKey( spep_0 + 270 + OFFSET_X + a, 1, 41.4 );
setRotateKey( spep_0 + 271 + OFFSET_X + a, 1, 41.4 );
setRotateKey( spep_0 + 272 + OFFSET_X + a, 1, 41 );
setRotateKey( spep_0 + 275 + OFFSET_X + a, 1, 41 );
setRotateKey( spep_0 + 276 + OFFSET_X + a, 1, 39.5 );
setRotateKey( spep_0 + 279 + OFFSET_X + a, 1, 39.5 );
setRotateKey( spep_0 + 280 + OFFSET_X + a, 1, 36.5 );
setRotateKey( spep_0 + 283 + OFFSET_X + a, 1, 36.5 );
setRotateKey( spep_0 + 284 + OFFSET_X + a, 1, 34.2 );
setRotateKey( spep_0 + 287 + OFFSET_X + a, 1, 34.2 );
setRotateKey( spep_0 + 288 + OFFSET_X + a, 1, 32.9 );
setRotateKey( spep_0 + 291 + OFFSET_X + a, 1, 32.9 );
setRotateKey( spep_0 + 292 + OFFSET_X + a, 1, 32 );
setRotateKey( spep_0 + 295 + OFFSET_X + a, 1, 32 );
setRotateKey( spep_0 + 296 + OFFSET_X + a, 1, 31.4 );
setRotateKey( spep_0 + 299 + OFFSET_X + a, 1, 31.4 );
setRotateKey( spep_0 + 300 + OFFSET_X + a, 1, 31 );
setRotateKey( spep_0 + 303 + OFFSET_X + a, 1, 31 );
setRotateKey( spep_0 + 304 + OFFSET_X + a, 1, 30.6 );
setRotateKey( spep_0 + 307 + OFFSET_X + a, 1, 30.6 );
setRotateKey( spep_0 + 308 + OFFSET_X + a, 1, 30.4 );
setRotateKey( spep_0 + 311 + OFFSET_X + a, 1, 30.4 );
setRotateKey( spep_0 + 312 + OFFSET_X + a, 1, 30.2 );
setRotateKey( spep_0 + 315 + OFFSET_X + a, 1, 30.2 );
setRotateKey( spep_0 + 316 + OFFSET_X + a, 1, 30.1 );
setRotateKey( spep_0 + 319 + OFFSET_X + a, 1, 30.1 );
setRotateKey( spep_0 + 320 + OFFSET_X + a, 1, 30 );
setRotateKey( spep_0 + 327 + OFFSET_X + a, 1, 30 );
setRotateKey( spep_0 + 328 + OFFSET_X + a, 1, 42 );
setRotateKey( spep_0 + 329 + OFFSET_X + a, 1, 42 );
setRotateKey( spep_0 + 330 + OFFSET_X + a, 1, 41.7 );
setRotateKey( spep_0 + 331 + OFFSET_X + a, 1, 41.7 );
setRotateKey( spep_0 + 332 + OFFSET_X + a, 1, 41.5 );
setRotateKey( spep_0 + 333 + OFFSET_X + a, 1, 41.5 );
setRotateKey( spep_0 + 334 + OFFSET_X + a, 1, 41.3 );
setRotateKey( spep_0 + 335 + OFFSET_X + a, 1, 41.3 );
setRotateKey( spep_0 + 336 + OFFSET_X + a, 1, 41 );
setRotateKey( spep_0 + 337 + OFFSET_X + a, 1, 41 );
setRotateKey( spep_0 + 338 + OFFSET_X + a, 1, 40.8 );
setRotateKey( spep_0 + 339 + OFFSET_X + a, 1, 40.8 );
setRotateKey( spep_0 + 340 + OFFSET_X + a, 1, 40.7 );
setRotateKey( spep_0 + 341 + OFFSET_X + a, 1, 40.7 );
setRotateKey( spep_0 + 342 + OFFSET_X + a, 1, 40.5 );
setRotateKey( spep_0 + 343 + OFFSET_X + a, 1, 40.5 );
setRotateKey( spep_0 + 344 + OFFSET_X + a, 1, 40.4 );
setRotateKey( spep_0 + 345 + OFFSET_X + a, 1, 40.4 );
setRotateKey( spep_0 + 346 + OFFSET_X + a, 1, 40.2 );
setRotateKey( spep_0 + 347 + OFFSET_X + a, 1, 40.2 );
setRotateKey( spep_0 + 348 + OFFSET_X + a, 1, 40.1 );
setRotateKey( spep_0 + 349 + OFFSET_X + a, 1, 40.1 );
setRotateKey( spep_0 + 350 + OFFSET_X + a, 1, 40 );
setRotateKey( spep_0 + 353 + OFFSET_X + a, 1, 40 );
setRotateKey( spep_0 + 354 + OFFSET_X + a, 1, 39.9 );
setRotateKey( spep_0 + 355 + OFFSET_X + a, 1, 39.9 );
setRotateKey( spep_0 + 356 + OFFSET_X + a, 1, 39.8 );
setRotateKey( spep_0 + 362 + OFFSET_X + a, 1, 39.8 );

--敵の動き3
setDisp( spep_0 + 386 + OFFSET_X + a, 1, 1 );
setDisp( spep_0 + 426 + OFFSET_X + a, 1, 0 );

changeAnime( spep_0 + 386 + OFFSET_X + a, 1, 105 );

setMoveKey( spep_0 + 386 + OFFSET_X + a, 1, 116.5, -467.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X + a, 1, 116.5, -467.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X + a, 1, 88.5, -464.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X + a, 1, 88.5, -464.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X + a, 1, 63.8, -384.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X + a, 1, 63.8, -384.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X + a, 1, -68.9, -279.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X + a, 1, -68.9, -279.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X + a, 1, -111.4, -184.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X + a, 1, -111.4, -184.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X + a, 1, -171.1, -164.3 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X + a, 1, -171.1, -164.3 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X + a, 1, -174.6, -124.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X + a, 1, -174.6, -124.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X + a, 1, -194.8, -141.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X + a, 1, -194.8, -141.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X + a, 1, -200.9, -110.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X + a, 1, -200.9, -110.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X + a, 1, -210.8, -120.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X + a, 1, -210.8, -120.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X + a, 1, -215.7, -101.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X + a, 1, -215.7, -101.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X + a, 1, -220.4, -110.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X + a, 1, -220.4, -110.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X + a, 1, -221.3, -96.2 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X + a, 1, -221.3, -96.2 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X + a, 1, -224.1, -106.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X + a, 1, -224.1, -106.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X + a, 1, -227.1, -91.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X + a, 1, -227.1, -91.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X + a, 1, -224.9, -98.9 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X + a, 1, -224.9, -98.9 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X + a, 1, -232, -89.1 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X + a, 1, -232, -89.1 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X + a, 1, -227.1, -93.1 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X + a, 1, -227.1, -93.1 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X + a, 1, -234.1, -93 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X + a, 1, -234.1, -93 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X + a, 1, -228.2, -92.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X + a, 1, -228.2, -92.2 , 0 );

setScaleKey( spep_0 + 386 + OFFSET_X + a, 1, 10.91, 10.91 );
setScaleKey( spep_0 + 387 + OFFSET_X + a, 1, 10.91, 10.91 );
setScaleKey( spep_0 + 388 + OFFSET_X + a, 1, 10.64, 10.64 );
setScaleKey( spep_0 + 389 + OFFSET_X + a, 1, 10.64, 10.64 );
setScaleKey( spep_0 + 390 + OFFSET_X + a, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 391 + OFFSET_X + a, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 392 + OFFSET_X + a, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 393 + OFFSET_X + a, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 394 + OFFSET_X + a, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 395 + OFFSET_X + a, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 396 + OFFSET_X + a, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 397 + OFFSET_X + a, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 398 + OFFSET_X + a, 1, 2, 2 );
setScaleKey( spep_0 + 399 + OFFSET_X + a, 1, 2, 2 );
setScaleKey( spep_0 + 400 + OFFSET_X + a, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 401 + OFFSET_X + a, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 402 + OFFSET_X + a, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 403 + OFFSET_X + a, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 404 + OFFSET_X + a, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 405 + OFFSET_X + a, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 406 + OFFSET_X + a, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 407 + OFFSET_X + a, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 408 + OFFSET_X + a, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 409 + OFFSET_X + a, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 410 + OFFSET_X + a, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 411 + OFFSET_X + a, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 412 + OFFSET_X + a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 413 + OFFSET_X + a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 414 + OFFSET_X + a, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 415 + OFFSET_X + a, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 416 + OFFSET_X + a, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 417 + OFFSET_X + a, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 418 + OFFSET_X + a, 1, 1, 1 );
setScaleKey( spep_0 + 419 + OFFSET_X + a, 1, 1, 1 );
setScaleKey( spep_0 + 420 + OFFSET_X + a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 421 + OFFSET_X + a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 422 + OFFSET_X + a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 423 + OFFSET_X + a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 424 + OFFSET_X + a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 426 + OFFSET_X + a, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 386 + OFFSET_X + a, 1, -36.5 );
setRotateKey( spep_0 + 391 + OFFSET_X + a, 1, -36.5 );
setRotateKey( spep_0 + 392 + OFFSET_X + a, 1, -36.4 );
setRotateKey( spep_0 + 426 + OFFSET_X + a, 1, -36.4 );

--敵の動き4
setDisp( spep_0 + 510 + OFFSET_X + a, 1, 1 );
setDisp( spep_0 + 544 + OFFSET_X + a, 1, 0 );

changeAnime( spep_0 + 510 + OFFSET_X + a, 1, 7 );

setMoveKey( spep_0 + 510 + OFFSET_X + a, 1, -550, 0.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X + a, 1, -550, 0.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X + a, 1, -561.5, -25.6 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X + a, 1, -561.5, -25.6 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X + a, 1, -551.2, 19.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X + a, 1, -551.2, 19.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X + a, 1, -354.5, 12.5 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X + a, 1, -354.5, 12.5 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X + a, 1, -388.7, 40.9 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X + a, 1, -388.7, 40.9 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X + a, 1, -370.8, 4.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X + a, 1, -370.8, 4.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X + a, 1, -354.3, 30.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X + a, 1, -354.3, 30.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X + a, 1, -76, 50.9 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X + a, 1, -76, 50.9 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X + a, 1, -51.1, 74.9 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X + a, 1, -51.1, 74.9 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X + a, 1, -76.5, 61.6 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X + a, 1, -76.5, 61.6 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X + a, 1, -52.1, 50.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X + a, 1, -52.1, 50.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X + a, 1, -72.7, 65.7 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X + a, 1, -72.7, 65.7 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X + a, 1, -154.6, 118 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X + a, 1, -154.6, 118 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X + a, 1, -158.1, 130 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X + a, 1, -158.1, 130 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X + a, 1, -156.3, 116.3 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X + a, 1, -156.3, 116.3 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X + a, 1, -164.7, 126 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X + a, 1, -164.7, 126 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X + a, 1, -153.4, 119.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X + a, 1, -153.4, 119.3 , 0 );

setScaleKey( spep_0 + 510 + OFFSET_X + a, 1, 8.24, 8.24 );
setScaleKey( spep_0 + 515 + OFFSET_X + a, 1, 8.24, 8.24 );
setScaleKey( spep_0 + 516 + OFFSET_X + a, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 523 + OFFSET_X + a, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 524 + OFFSET_X + a, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 533 + OFFSET_X + a, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 534 + OFFSET_X + a, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 544 + OFFSET_X + a, 1, 3.85, 3.85 );

setRotateKey( spep_0 + 510 + OFFSET_X + a, 1, 55 );
setRotateKey( spep_0 + 515 + OFFSET_X + a, 1, 55 );
setRotateKey( spep_0 + 516 + OFFSET_X + a, 1, 55.2 );
setRotateKey( spep_0 + 523 + OFFSET_X + a, 1, 55.2 );
setRotateKey( spep_0 + 524 + OFFSET_X + a, 1, 55.4 );
setRotateKey( spep_0 + 533 + OFFSET_X + a, 1, 55.4 );
setRotateKey( spep_0 + 534 + OFFSET_X + a, 1, 47.8 );
setRotateKey( spep_0 + 544 + OFFSET_X + a, 1, 47.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 158, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--悟飯向かってくる
SE003 = playSeVer2( spep_0 + 82, 1116, "",spep_0 + 124, 0, 22, -1);
SE004 = playSeVer2( spep_0 + 100, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE004, 72 );
SE005 = playSeVer2( spep_0 + 100, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 100, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 112, 1117, "", 0, 0, 0, -1);

--悟飯地面蹴って加速
SE008 = playSeVer2( spep_0 + 152, 1011, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 156, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 168, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 158 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 200;  -- エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

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
--振りかぶる
SE011 = playSeVer2( spep_0 + 210, 1004, "", 0, 0, 0, -1);

--悟飯アッパー
SE012 = playSeVer2( spep_0 + 246, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 254, 1153, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 254, 1110, "", 0, 0, 0, -1);

--トランクス飛んでくる
SE015 = playSeVer2( spep_0 + 286, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE015, 153 );
SE016 = playSeVer2( spep_0 + 288, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE016, 178 );
SE017 = playSeVer2( spep_0 + 288, 63, "",spep_0 + 348, 0, 38, -1);

--トランクス回り込む
SE018 = playSeVer2( spep_0 + 322, 1232, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 322, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 322, 1048, "", 0, 0, 0, -1);

--振りかぶる
SE021 = playSeVer2( spep_0 + 354, 1116, "",spep_0 + 398, 0, 22, -1);
SE022 = playSeVer2( spep_0 + 360, 1004, "", 0, 0, 0, -1);

--トランクス蹴り飛ばす
SE023 = playSeVer2( spep_0 + 382, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE023, 85 );
SE024 = playSeVer2( spep_0 + 382, 1120, "", 0, 0, 0, -1);

--悟空向かってくる
SE025 = playSeVer2( spep_0 + 416, 1116, "",spep_0 + 478, 0, 40, -1);
SE026 = playSeVer2( spep_0 + 436, 1044, "",spep_0 + 536, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 436, SE026, 71 );
SE027 = playSeVer2( spep_0 + 436, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE027, 78 );
SE028 = playSeVer2( spep_0 + 488, 1004, "", 0, 0, 0, -1);

--悟空パンチ
SE030 = playSeVer2( spep_0 + 512, 1110, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 512, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 512, SE031, 69 );
SE032 = playSeVer2( spep_0 + 512, 1187, "", 0, 0, 0, -1);

--悟飯振りかぶる
SE033 = playSeVer2( spep_0 + 542, 1116, "",spep_0 + 574, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 542, SE033, 83 );
SE034 = playSeVer2( spep_0 + 550, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 550, 1119, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE029, 78 );
setStartTimeMs( SE029,  667 );

--二人構える
SE035 = playSeVer2( spep_0 + 580, 1189, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 582, 8, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 588, 1006, "", 0, 0, 0, -1);

--悟空構えながらバックステップ
SE038 = playSeVer2( spep_0 + 630, 1117, "",spep_0 + 692, 0, 40, -1);
SE039 = playSeVer2( spep_0 + 640, 1044, "",spep_0 + 696, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 640, SE039, 140 );
SE040 = playSeVer2( spep_0 + 640, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE040, 75 );
setPitch( spep_0 + 640, SE040, -800 );
setTimeStretch( SE040, 0.47, 30, 4 );
SE041 = playSeVer2( spep_0 + 646, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE041, 56 );
setPitch( spep_0 + 646, SE041, -800 );
setTimeStretch( SE041, 0.47, 30, 4 );
SE042 = playSeVer2( spep_0 + 652, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE042, 40 );
setPitch( spep_0 + 652, SE042, -800 );
setTimeStretch( SE042, 0.47, 30, 4 );
SE043 = playSeVer2( spep_0 + 658, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE043, 29 );
setPitch( spep_0 + 658, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );
SE045 = playSeVer2( spep_0 + 662, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 662, SE045, 28 );
setPitch( spep_0 + 662, SE045, -800 );
setTimeStretch( SE045, 0.47, 30, 4 );

--画面遷移
SE044 = playSeVer2( spep_0 + 680, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE044,  333 );

--気弾溜め
SE046 = playSeVer2( spep_0 + 708, 1307, "",spep_0 + 794, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 708, SE046, 174 );
SE047 = playSeVer2( spep_0 + 708, 1393, "",spep_0 + 794, 0, 24, -1);
SE048 = playSeVer2( spep_0 + 708, 1209, "",spep_0 + 792, 0, 22, -1);
SE049 = playSeVer2( spep_0 + 708, 1296, "",spep_0 + 794, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 776F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--発射予兆
SE051 = playSeVer2( spep_1 + 78, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE051, 63 );
SE052 = playSeVer2( spep_1 + 78, 1116, "",spep_2 + 24, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 78, SE052, 71 );

-------------------------------------------------
-- かめはめ波構え〜KO
-------------------------------------------------
MAX_FRAME_2 = 380;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 後半手前 ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2-2, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2 - 1, finish_0f, 0);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 0);

spep_3 = spep_2 + MAX_FRAME_2-4;

KO = entryEffectLife( spep_3 + 0, SP_05, 90, 0x100, -1, 0, 0, 0); -- KO ef_003
setEffMoveKey( spep_3 + 0, KO, 0, 0 , 0);
setEffMoveKey( spep_3 + 90, KO, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, KO, 1.0, 1.0);
setEffScaleKey( spep_3 + 90, KO, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, KO, 0);
setEffRotateKey( spep_3 + 90, KO, 0);
setEffAlphaKey( spep_3 + 0, KO, 255);
setEffAlphaKey( spep_3 + 90, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 226 + OFFSET_X , 1, 1);
setDisp( spep_2 + 246 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 226 + OFFSET_X , 1, 5);

setMoveKey( spep_2 + 226 + OFFSET_X , 1, -27.3, 598.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, -27.3, 598.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, -27.3, 571.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, -27.3, 571.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, -27.2, 543.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -27.2, 543.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -27.2, 526.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, -27.2, 526.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, -27.3, 520.6 , 0 );

setScaleKey( spep_2 + 226 + OFFSET_X , 1, 0.27, 0.27 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 0.27, 0.27 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 0.22, 0.22 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 0.22, 0.22 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 0.16, 0.16 );

setRotateKey( spep_2 + 226 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 246 + OFFSET_X , 1, 0 );

setBlendColor( spep_2 + 226 + OFFSET_X , 1, 3, 0, 1, 1, 0.25 );
setBlendColor( spep_2 + 246 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--悟空気弾発射
SE053 = playSeVer2( spep_2 + 10, 1133, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 10, 1213, "",spep_2 + 156, 0, 88, -1);
setSeVolumeByWorkId( spep_2 + 10, SE054, 82 );
SE055 = playSeVer2( spep_2 + 10, 1223, "", 0, 0, 0, -1);

--悟飯とトランクス気弾発射
SE056 = playSeVer2( spep_2 + 62, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE056, 80 );
SE057 = playSeVer2( spep_2 + 62, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE057, 80 );
SE058 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE058, 80 );
SE059 = playSeVer2( spep_2 + 62, 1423, "",spep_2 + 256, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 62, SE059, 80 );
SE060 = playSeVer2( spep_2 + 62, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE060, 80 );

--気弾飛んでいく
SE061 = playSeVer2( spep_2 + 126, 1161, "",spep_2 + 268, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 126, SE061, 74 );
SE062 = playSeVer2( spep_2 + 126, 1284, "",spep_2 + 266, 0, 28, -1);
SE063 = playSeVer2( spep_2 + 158, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE063, 272 );

--爆発
SE064 = playSeVer2( spep_2 + 240, 1159, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 240, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE065, 71 );
SE066 = playSeVer2( spep_2 + 252, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 246); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 380F
else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 前半
-------------------------------------------------
MAX_FRAME_0 = 776;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前半手前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵の動き ** --
a = 8

--敵の動き1
setDisp( spep_0 + 170 + OFFSET_X + a, 1, 1 );
setDisp( spep_0 + 216 + OFFSET_X + a, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X + a, 1, 17 );

setMoveKey( spep_0 + 170 + OFFSET_X + a, 1, -280.1, -280.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X + a, 1, -280.1, -280.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X + a, 1, -279, -278.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X + a, 1, -279, -278.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X + a, 1, -275.5, -271.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X + a, 1, -275.5, -271.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X + a, 1, -269.7, -261.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X + a, 1, -269.7, -261.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X + a, 1, -261.5, -247.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X + a, 1, -261.5, -247.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X + a, 1, -251.1, -228.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X + a, 1, -251.1, -228.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X + a, 1, -238.3, -206.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X + a, 1, -238.3, -206.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X + a, 1, -225.5, -183.8 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X + a, 1, -225.5, -183.8 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X + a, 1, -215, -165.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X + a, 1, -215, -165.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X + a, 1, -206.9, -150.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X + a, 1, -206.9, -150.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X + a, 1, -201.1, -140.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X + a, 1, -201.1, -140.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X + a, 1, -197.6, -134.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X + a, 1, -197.6, -134.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X + a, 1, -196.4, -132.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X + a, 1, -196.4, -132.5 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X + a, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 193 + OFFSET_X + a, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 194 + OFFSET_X + a, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 195 + OFFSET_X + a, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 196 + OFFSET_X + a, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 197 + OFFSET_X + a, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 198 + OFFSET_X + a, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 199 + OFFSET_X + a, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 200 + OFFSET_X + a, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 201 + OFFSET_X + a, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 202 + OFFSET_X + a, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 203 + OFFSET_X + a, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 204 + OFFSET_X + a, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 205 + OFFSET_X + a, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 206 + OFFSET_X + a, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 207 + OFFSET_X + a, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 208 + OFFSET_X + a, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 209 + OFFSET_X + a, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 210 + OFFSET_X + a, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 211 + OFFSET_X + a, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 212 + OFFSET_X + a, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 216 + OFFSET_X + a, 1, 0.44, 0.44 );

setRotateKey( spep_0 + 170 + OFFSET_X + a, 1, 7.2 );
setRotateKey( spep_0 + 216 + OFFSET_X + a, 1, 7.2 );

--敵の動き2
setDisp( spep_0 + 262 + OFFSET_X + a, 1, 1 );
setDisp( spep_0 + 362 + OFFSET_X + a, 1, 0 );

changeAnime( spep_0 + 262 + OFFSET_X + a, 1, 106 );

setMoveKey( spep_0 + 262 + OFFSET_X + a, 1, 48, -46.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X + a, 1, 48, -46.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X + a, 1, 62.2, -30.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X + a, 1, 62.2, -30.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X + a, 1, 20.6, -67.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X + a, 1, 20.6, -67.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X + a, 1, 28.5, -43.1 , 0 );--手動調整箇所
setMoveKey( spep_0 + 269 + OFFSET_X + a, 1, 28.5, -43.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X + a, 1, -32.7, -45 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X + a, 1, -32.7, -45 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X + a, 1, -41.2, -50.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X + a, 1, -41.2, -50.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X + a, 1, -50.2, -37.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X + a, 1, -50.2, -37.2 , 0 );--手動調整箇所ここまで
setMoveKey( spep_0 + 276 + OFFSET_X + a, 1, -88.5, -51.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X + a, 1, -88.5, -51.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X + a, 1, -102.8, -27.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X + a, 1, -102.8, -27.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X + a, 1, -100.2, -36.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X + a, 1, -100.2, -36.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X + a, 1, -116.3, -34.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X + a, 1, -116.3, -34.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X + a, 1, -97, -29.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X + a, 1, -97, -29.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X + a, 1, -105.2, -39 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X + a, 1, -105.2, -39 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X + a, 1, -104.9, -25.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X + a, 1, -104.9, -25.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X + a, 1, -97.4, -37.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X + a, 1, -97.4, -37.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X + a, 1, -105.6, -30.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X + a, 1, -105.6, -30.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X + a, 1, -99, -37.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X + a, 1, -99, -37.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X + a, 1, -98.7, -28.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X + a, 1, -98.7, -28.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X + a, 1, -99.6, -32.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X + a, 1, -99.6, -32.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X + a, 1, -98.7, -32.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X + a, 1, -98.7, -32.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X + a, 1, -98.1, -31.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X + a, 1, -98.1, -31.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X + a, 1, -97.7, -31.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X + a, 1, -97.7, -31.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X + a, 1, -97.4, -31.5 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X + a, 1, -97.4, -31.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X + a, 1, -97.2, -31.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X + a, 1, -97.2, -31.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X + a, 1, -97, -31.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X + a, 1, -97, -31.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X + a, 1, -524.9, 29.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X + a, 1, -524.9, 29.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X + a, 1, -522.7, 34.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X + a, 1, -522.7, 34.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X + a, 1, -520.7, 39.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X + a, 1, -520.7, 39.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X + a, 1, -518.8, 44.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X + a, 1, -518.8, 44.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X + a, 1, -517.1, 48.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X + a, 1, -517.1, 48.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X + a, 1, -515.5, 52.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X + a, 1, -515.5, 52.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X + a, 1, -514, 55.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X + a, 1, -514, 55.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X + a, 1, -512.7, 59.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X + a, 1, -512.7, 59.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X + a, 1, -511.5, 62 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X + a, 1, -511.5, 62 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X + a, 1, -510.5, 64.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X + a, 1, -510.5, 64.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X + a, 1, -509.6, 66.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X + a, 1, -509.6, 66.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X + a, 1, -508.8, 68.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X + a, 1, -508.8, 68.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X + a, 1, -508.2, 70.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X + a, 1, -508.2, 70.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X + a, 1, -507.7, 71.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X + a, 1, -507.7, 71.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X + a, 1, -507.3, 72.1 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X + a, 1, -507.3, 72.1 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X + a, 1, -507.1, 72.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X + a, 1, -507.1, 72.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X + a, 1, -507.1, 72.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X + a, 1, -507.1, 72.8 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X + a, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 265 + OFFSET_X + a, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 266 + OFFSET_X + a, 1, 3.2, 3.2 );--手動調整箇所
setScaleKey( spep_0 + 267 + OFFSET_X + a, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 268 + OFFSET_X + a, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 269 + OFFSET_X + a, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 270 + OFFSET_X + a, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 271 + OFFSET_X + a, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 272 + OFFSET_X + a, 1, 2.0, 2.0 );
setScaleKey( spep_0 + 275 + OFFSET_X + a, 1, 2.0, 2.0 );--手動調整箇所ここまで
setScaleKey( spep_0 + 276 + OFFSET_X + a, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 279 + OFFSET_X + a, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 280 + OFFSET_X + a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 287 + OFFSET_X + a, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 288 + OFFSET_X + a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 295 + OFFSET_X + a, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 296 + OFFSET_X + a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 303 + OFFSET_X + a, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 304 + OFFSET_X + a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 327 + OFFSET_X + a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 328 + OFFSET_X + a, 1, 10.21, 10.21 );
setScaleKey( spep_0 + 362 + OFFSET_X + a, 1, 10.21, 10.21 );

setRotateKey( spep_0 + 262 + OFFSET_X + a, 1, -41.9 );
setRotateKey( spep_0 + 265 + OFFSET_X + a, 1, -41.9 );
setRotateKey( spep_0 + 266 + OFFSET_X + a, 1, -41.8 );
setRotateKey( spep_0 + 267 + OFFSET_X + a, 1, -41.8 );
setRotateKey( spep_0 + 268 + OFFSET_X + a, 1, -41.6 );
setRotateKey( spep_0 + 269 + OFFSET_X + a, 1, -41.6 );
setRotateKey( spep_0 + 270 + OFFSET_X + a, 1, -41.4 );
setRotateKey( spep_0 + 271 + OFFSET_X + a, 1, -41.4 );
setRotateKey( spep_0 + 272 + OFFSET_X + a, 1, -41 );
setRotateKey( spep_0 + 275 + OFFSET_X + a, 1, -41 );
setRotateKey( spep_0 + 276 + OFFSET_X + a, 1, -39.5 );
setRotateKey( spep_0 + 279 + OFFSET_X + a, 1, -39.5 );
setRotateKey( spep_0 + 280 + OFFSET_X + a, 1, -36.5 );
setRotateKey( spep_0 + 283 + OFFSET_X + a, 1, -36.5 );
setRotateKey( spep_0 + 284 + OFFSET_X + a, 1, -34.2 );
setRotateKey( spep_0 + 287 + OFFSET_X + a, 1, -34.2 );
setRotateKey( spep_0 + 288 + OFFSET_X + a, 1, -32.9 );
setRotateKey( spep_0 + 291 + OFFSET_X + a, 1, -32.9 );
setRotateKey( spep_0 + 292 + OFFSET_X + a, 1, -32 );
setRotateKey( spep_0 + 295 + OFFSET_X + a, 1, -32 );
setRotateKey( spep_0 + 296 + OFFSET_X + a, 1, -31.4 );
setRotateKey( spep_0 + 299 + OFFSET_X + a, 1, -31.4 );
setRotateKey( spep_0 + 300 + OFFSET_X + a, 1, -31 );
setRotateKey( spep_0 + 303 + OFFSET_X + a, 1, -31 );
setRotateKey( spep_0 + 304 + OFFSET_X + a, 1, -30.6 );
setRotateKey( spep_0 + 307 + OFFSET_X + a, 1, -30.6 );
setRotateKey( spep_0 + 308 + OFFSET_X + a, 1, -30.4 );
setRotateKey( spep_0 + 311 + OFFSET_X + a, 1, -30.4 );
setRotateKey( spep_0 + 312 + OFFSET_X + a, 1, -30.2 );
setRotateKey( spep_0 + 315 + OFFSET_X + a, 1, -30.2 );
setRotateKey( spep_0 + 316 + OFFSET_X + a, 1, -30.1 );
setRotateKey( spep_0 + 319 + OFFSET_X + a, 1, -30.1 );
setRotateKey( spep_0 + 320 + OFFSET_X + a, 1, -30 );
setRotateKey( spep_0 + 327 + OFFSET_X + a, 1, -30 );
setRotateKey( spep_0 + 328 + OFFSET_X + a, 1, -42 );
setRotateKey( spep_0 + 329 + OFFSET_X + a, 1, -42 );
setRotateKey( spep_0 + 330 + OFFSET_X + a, 1, -41.7 );
setRotateKey( spep_0 + 331 + OFFSET_X + a, 1, -41.7 );
setRotateKey( spep_0 + 332 + OFFSET_X + a, 1, -41.5 );
setRotateKey( spep_0 + 333 + OFFSET_X + a, 1, -41.5 );
setRotateKey( spep_0 + 334 + OFFSET_X + a, 1, -41.3 );
setRotateKey( spep_0 + 335 + OFFSET_X + a, 1, -41.3 );
setRotateKey( spep_0 + 336 + OFFSET_X + a, 1, -41 );
setRotateKey( spep_0 + 337 + OFFSET_X + a, 1, -41 );
setRotateKey( spep_0 + 338 + OFFSET_X + a, 1, -40.8 );
setRotateKey( spep_0 + 339 + OFFSET_X + a, 1, -40.8 );
setRotateKey( spep_0 + 340 + OFFSET_X + a, 1, -40.7 );
setRotateKey( spep_0 + 341 + OFFSET_X + a, 1, -40.7 );
setRotateKey( spep_0 + 342 + OFFSET_X + a, 1, -40.5 );
setRotateKey( spep_0 + 343 + OFFSET_X + a, 1, -40.5 );
setRotateKey( spep_0 + 344 + OFFSET_X + a, 1, -40.4 );
setRotateKey( spep_0 + 345 + OFFSET_X + a, 1, -40.4 );
setRotateKey( spep_0 + 346 + OFFSET_X + a, 1, -40.2 );
setRotateKey( spep_0 + 347 + OFFSET_X + a, 1, -40.2 );
setRotateKey( spep_0 + 348 + OFFSET_X + a, 1, -40.1 );
setRotateKey( spep_0 + 349 + OFFSET_X + a, 1, -40.1 );
setRotateKey( spep_0 + 350 + OFFSET_X + a, 1, -40 );
setRotateKey( spep_0 + 353 + OFFSET_X + a, 1, -40 );
setRotateKey( spep_0 + 354 + OFFSET_X + a, 1, -39.9 );
setRotateKey( spep_0 + 355 + OFFSET_X + a, 1, -39.9 );
setRotateKey( spep_0 + 356 + OFFSET_X + a, 1, -39.8 );
setRotateKey( spep_0 + 362 + OFFSET_X + a, 1, -39.8 );

--敵の動き3
setDisp( spep_0 + 386 + OFFSET_X + a, 1, 1 );
setDisp( spep_0 + 426 + OFFSET_X + a, 1, 0 );

changeAnime( spep_0 + 386 + OFFSET_X + a, 1, 5 );

setMoveKey( spep_0 + 386 + OFFSET_X + a, 1, -116.5, -467.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X + a, 1, -116.5, -467.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X + a, 1, -88.5, -464.4 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X + a, 1, -88.5, -464.4 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X + a, 1, -63.8, -384.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X + a, 1, -63.8, -384.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X + a, 1, 68.9, -279.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X + a, 1, 68.9, -279.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X + a, 1, 111.4, -184.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X + a, 1, 111.4, -184.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X + a, 1, 171.1, -164.3 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X + a, 1, 171.1, -164.3 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X + a, 1, 174.6, -124.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X + a, 1, 174.6, -124.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X + a, 1, 194.8, -141.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X + a, 1, 194.8, -141.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X + a, 1, 200.9, -110.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X + a, 1, 200.9, -110.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X + a, 1, 210.8, -120.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X + a, 1, 210.8, -120.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X + a, 1, 215.7, -101.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X + a, 1, 215.7, -101.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X + a, 1, 220.4, -110.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X + a, 1, 220.4, -110.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X + a, 1, 221.3, -96.2 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X + a, 1, 221.3, -96.2 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X + a, 1, 224.1, -106.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X + a, 1, 224.1, -106.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X + a, 1, 227.1, -91.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X + a, 1, 227.1, -91.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X + a, 1, 224.9, -98.9 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X + a, 1, 224.9, -98.9 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X + a, 1, 232, -89.1 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X + a, 1, 232, -89.1 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X + a, 1, 227.1, -93.1 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X + a, 1, 227.1, -93.1 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X + a, 1, 234.1, -93 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X + a, 1, 234.1, -93 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X + a, 1, 228.2, -92.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X + a, 1, 228.2, -92.2 , 0 );

setScaleKey( spep_0 + 386 + OFFSET_X + a, 1, 10.91, 10.91 );
setScaleKey( spep_0 + 387 + OFFSET_X + a, 1, 10.91, 10.91 );
setScaleKey( spep_0 + 388 + OFFSET_X + a, 1, 10.64, 10.64 );
setScaleKey( spep_0 + 389 + OFFSET_X + a, 1, 10.64, 10.64 );
setScaleKey( spep_0 + 390 + OFFSET_X + a, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 391 + OFFSET_X + a, 1, 8.92, 8.92 );
setScaleKey( spep_0 + 392 + OFFSET_X + a, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 393 + OFFSET_X + a, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 394 + OFFSET_X + a, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 395 + OFFSET_X + a, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 396 + OFFSET_X + a, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 397 + OFFSET_X + a, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 398 + OFFSET_X + a, 1, 2, 2 );
setScaleKey( spep_0 + 399 + OFFSET_X + a, 1, 2, 2 );
setScaleKey( spep_0 + 400 + OFFSET_X + a, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 401 + OFFSET_X + a, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 402 + OFFSET_X + a, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 403 + OFFSET_X + a, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 404 + OFFSET_X + a, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 405 + OFFSET_X + a, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 406 + OFFSET_X + a, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 407 + OFFSET_X + a, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 408 + OFFSET_X + a, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 409 + OFFSET_X + a, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 410 + OFFSET_X + a, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 411 + OFFSET_X + a, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 412 + OFFSET_X + a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 413 + OFFSET_X + a, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 414 + OFFSET_X + a, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 415 + OFFSET_X + a, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 416 + OFFSET_X + a, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 417 + OFFSET_X + a, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 418 + OFFSET_X + a, 1, 1, 1 );
setScaleKey( spep_0 + 419 + OFFSET_X + a, 1, 1, 1 );
setScaleKey( spep_0 + 420 + OFFSET_X + a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 421 + OFFSET_X + a, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 422 + OFFSET_X + a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 423 + OFFSET_X + a, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 424 + OFFSET_X + a, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 426 + OFFSET_X + a, 1, 0.9, 0.9 );

setRotateKey( spep_0 + 386 + OFFSET_X + a, 1, 36.5 );
setRotateKey( spep_0 + 391 + OFFSET_X + a, 1, 36.5 );
setRotateKey( spep_0 + 392 + OFFSET_X + a, 1, 36.4 );
setRotateKey( spep_0 + 426 + OFFSET_X + a, 1, 36.4 );

--敵の動き4
setDisp( spep_0 + 510 + OFFSET_X + a, 1, 1 );
setDisp( spep_0 + 544 + OFFSET_X + a, 1, 0 );

changeAnime( spep_0 + 510 + OFFSET_X + a, 1, 107 );

setMoveKey( spep_0 + 510 + OFFSET_X + a, 1, 550, 0.9 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X + a, 1, 550, 0.9 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X + a, 1, 561.5, -25.6 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X + a, 1, 561.5, -25.6 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X + a, 1, 551.2, 19.1 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X + a, 1, 551.2, 19.1 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X + a, 1, 354.5, 12.5 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X + a, 1, 354.5, 12.5 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X + a, 1, 388.7, 40.9 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X + a, 1, 388.7, 40.9 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X + a, 1, 370.8, 4.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X + a, 1, 370.8, 4.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X + a, 1, 354.3, 30.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X + a, 1, 354.3, 30.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X + a, 1, 76, 50.9 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X + a, 1, 76, 50.9 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X + a, 1, 51.1, 74.9 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X + a, 1, 51.1, 74.9 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X + a, 1, 76.5, 61.6 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X + a, 1, 76.5, 61.6 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X + a, 1, 52.1, 50.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X + a, 1, 52.1, 50.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X + a, 1, 72.7, 65.7 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X + a, 1, 72.7, 65.7 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X + a, 1, 154.6, 118 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X + a, 1, 154.6, 118 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X + a, 1, 158.1, 130 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X + a, 1, 158.1, 130 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X + a, 1, 156.3, 116.3 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X + a, 1, 156.3, 116.3 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X + a, 1, 164.7, 126 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X + a, 1, 164.7, 126 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X + a, 1, 153.4, 119.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X + a, 1, 153.4, 119.3 , 0 );

setScaleKey( spep_0 + 510 + OFFSET_X + a, 1, 8.24, 8.24 );
setScaleKey( spep_0 + 515 + OFFSET_X + a, 1, 8.24, 8.24 );
setScaleKey( spep_0 + 516 + OFFSET_X + a, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 523 + OFFSET_X + a, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 524 + OFFSET_X + a, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 533 + OFFSET_X + a, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 534 + OFFSET_X + a, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 544 + OFFSET_X + a, 1, 3.85, 3.85 );

setRotateKey( spep_0 + 510 + OFFSET_X + a, 1, -55 );
setRotateKey( spep_0 + 515 + OFFSET_X + a, 1, -55 );
setRotateKey( spep_0 + 516 + OFFSET_X + a, 1, -55.2 );
setRotateKey( spep_0 + 523 + OFFSET_X + a, 1, -55.2 );
setRotateKey( spep_0 + 524 + OFFSET_X + a, 1, -55.4 );
setRotateKey( spep_0 + 533 + OFFSET_X + a, 1, -55.4 );
setRotateKey( spep_0 + 534 + OFFSET_X + a, 1, -47.8 );
setRotateKey( spep_0 + 544 + OFFSET_X + a, 1, -47.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 158, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--悟飯向かってくる
SE003 = playSeVer2( spep_0 + 82, 1116, "",spep_0 + 124, 0, 22, -1);
SE004 = playSeVer2( spep_0 + 100, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE004, 72 );
SE005 = playSeVer2( spep_0 + 100, 1000, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 100, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 112, 1117, "", 0, 0, 0, -1);

--悟飯地面蹴って加速
SE008 = playSeVer2( spep_0 + 152, 1011, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 156, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 168, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 158 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 200;  -- エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);

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
--振りかぶる
SE011 = playSeVer2( spep_0 + 210, 1004, "", 0, 0, 0, -1);

--悟飯アッパー
SE012 = playSeVer2( spep_0 + 246, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 254, 1153, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 254, 1110, "", 0, 0, 0, -1);

--トランクス飛んでくる
SE015 = playSeVer2( spep_0 + 286, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 286, SE015, 153 );
SE016 = playSeVer2( spep_0 + 288, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE016, 178 );
SE017 = playSeVer2( spep_0 + 288, 63, "",spep_0 + 348, 0, 38, -1);

--トランクス回り込む
SE018 = playSeVer2( spep_0 + 322, 1232, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 322, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 322, 1048, "", 0, 0, 0, -1);

--振りかぶる
SE021 = playSeVer2( spep_0 + 354, 1116, "",spep_0 + 398, 0, 22, -1);
SE022 = playSeVer2( spep_0 + 360, 1004, "", 0, 0, 0, -1);

--トランクス蹴り飛ばす
SE023 = playSeVer2( spep_0 + 382, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE023, 85 );
SE024 = playSeVer2( spep_0 + 382, 1120, "", 0, 0, 0, -1);

--悟空向かってくる
SE025 = playSeVer2( spep_0 + 416, 1116, "",spep_0 + 478, 0, 40, -1);
SE026 = playSeVer2( spep_0 + 436, 1044, "",spep_0 + 536, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 436, SE026, 71 );
SE027 = playSeVer2( spep_0 + 436, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 436, SE027, 78 );
SE028 = playSeVer2( spep_0 + 488, 1004, "", 0, 0, 0, -1);

--悟空パンチ
SE030 = playSeVer2( spep_0 + 512, 1110, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 512, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 512, SE031, 69 );
SE032 = playSeVer2( spep_0 + 512, 1187, "", 0, 0, 0, -1);

--悟飯振りかぶる
SE033 = playSeVer2( spep_0 + 542, 1116, "",spep_0 + 574, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 542, SE033, 83 );
SE034 = playSeVer2( spep_0 + 550, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 550, 1119, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 550, SE029, 78 );
setStartTimeMs( SE029,  667 );

--二人構える
SE035 = playSeVer2( spep_0 + 580, 1189, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 582, 8, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 588, 1006, "", 0, 0, 0, -1);

--悟空構えながらバックステップ
SE038 = playSeVer2( spep_0 + 630, 1117, "",spep_0 + 692, 0, 40, -1);
SE039 = playSeVer2( spep_0 + 640, 1044, "",spep_0 + 696, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 640, SE039, 140 );
SE040 = playSeVer2( spep_0 + 640, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 640, SE040, 75 );
setPitch( spep_0 + 640, SE040, -800 );
setTimeStretch( SE040, 0.47, 30, 4 );
SE041 = playSeVer2( spep_0 + 646, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 646, SE041, 56 );
setPitch( spep_0 + 646, SE041, -800 );
setTimeStretch( SE041, 0.47, 30, 4 );
SE042 = playSeVer2( spep_0 + 652, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE042, 40 );
setPitch( spep_0 + 652, SE042, -800 );
setTimeStretch( SE042, 0.47, 30, 4 );
SE043 = playSeVer2( spep_0 + 658, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE043, 29 );
setPitch( spep_0 + 658, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );
SE045 = playSeVer2( spep_0 + 662, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 662, SE045, 28 );
setPitch( spep_0 + 662, SE045, -800 );
setTimeStretch( SE045, 0.47, 30, 4 );

--画面遷移
SE044 = playSeVer2( spep_0 + 680, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE044,  333 );

--気弾溜め
SE046 = playSeVer2( spep_0 + 708, 1307, "",spep_0 + 794, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 708, SE046, 174 );
SE047 = playSeVer2( spep_0 + 708, 1393, "",spep_0 + 794, 0, 24, -1);
SE048 = playSeVer2( spep_0 + 708, 1209, "",spep_0 + 792, 0, 22, -1);
SE049 = playSeVer2( spep_0 + 708, 1296, "",spep_0 + 794, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 776F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--発射予兆
SE051 = playSeVer2( spep_1 + 78, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE051, 63 );
SE052 = playSeVer2( spep_1 + 78, 1116, "",spep_2 + 24, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 78, SE052, 71 );

-------------------------------------------------
-- かめはめ波構え〜KO
-------------------------------------------------
MAX_FRAME_2 = 380;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 後半手前 ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f,-1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);

-- spep_3 = spep_2 + MAX_FRAME_2-2;

-- KO = entryEffectLife( spep_3 + 0, SP_05, 90, 0x100, -1, 0, 0, 0); -- KO ef_003
-- setEffMoveKey( spep_3 + 0, KO, 0, 0 , 0);
-- setEffMoveKey( spep_3 + 90, KO, 0, 0 , 0);
-- setEffScaleKey( spep_3 + 0, KO, 1.0, 1.0);
-- setEffScaleKey( spep_3 + 90, KO, 1.0, 1.0);
-- setEffRotateKey( spep_3 + 0, KO, 0);
-- setEffRotateKey( spep_3 + 90, KO, 0);
-- setEffAlphaKey( spep_3 + 0, KO, 255);
-- setEffAlphaKey( spep_3 + 90, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 226 + OFFSET_X , 1, 1);
setDisp( spep_2 + 246 + OFFSET_X , 1, 0);

changeAnime( spep_2 + 226 + OFFSET_X , 1, 105 );

setMoveKey( spep_2 + 226 + OFFSET_X , 1, 27.3, 598.6 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, 27.3, 598.6 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, 27.3, 571.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 27.3, 571.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 27.2, 543.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, 27.2, 543.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, 27.2, 526.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, 27.2, 526.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, 27.3, 520.6 , 0 );

setScaleKey( spep_2 + 226 + OFFSET_X , 1, 0.27, 0.27 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 0.27, 0.27 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 0.22, 0.22 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 0.22, 0.22 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 0.16, 0.16 );

setRotateKey( spep_2 + 226 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 246 + OFFSET_X , 1, 0 );

setBlendColor( spep_2 + 226 + OFFSET_X , 1, 3, 0, 1, 1, 0.25 );
setBlendColor( spep_2 + 246 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--悟空気弾発射
SE053 = playSeVer2( spep_2 + 10, 1133, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 10, 1213, "",spep_2 + 156, 0, 88, -1);
setSeVolumeByWorkId( spep_2 + 10, SE054, 82 );
SE055 = playSeVer2( spep_2 + 10, 1223, "", 0, 0, 0, -1);

--悟飯とトランクス気弾発射
SE056 = playSeVer2( spep_2 + 62, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE056, 80 );
SE057 = playSeVer2( spep_2 + 62, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE057, 80 );
SE058 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE058, 80 );
SE059 = playSeVer2( spep_2 + 62, 1423, "",spep_2 + 256, 0, 76, -1);
setSeVolumeByWorkId( spep_2 + 62, SE059, 80 );
SE060 = playSeVer2( spep_2 + 62, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE060, 80 );

--気弾飛んでいく
SE061 = playSeVer2( spep_2 + 126, 1161, "",spep_2 + 268, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 126, SE061, 74 );
SE062 = playSeVer2( spep_2 + 126, 1284, "",spep_2 + 266, 0, 28, -1);
SE063 = playSeVer2( spep_2 + 158, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 158, SE063, 272 );

--爆発
SE064 = playSeVer2( spep_2 + 240, 1159, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 240, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE065, 71 );
SE066 = playSeVer2( spep_2 + 252, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
--hideKoScreen();
dealDamage( spep_2 + 246); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 380F
end