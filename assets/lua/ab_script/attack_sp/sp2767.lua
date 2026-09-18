--1029700:LR_孫悟飯(幼年期)/ピッコロ_超必殺技：フルパワー魔閃光
--sp_effect_a1_00456
--sp2767

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163230 --開始～腕を押さえて気弾を作成するまで ef_001
SP_02 = 163231 --開始～腕を押さえて気弾を作成するまで ef_001b
SP_03 = 163232 --気弾を放つ～フィニッシュまで ef_002
SP_04 = 163233 --気弾を放つ～フィニッシュまで ef_002b

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
-- 開始～腕を押さえて気弾を作成するまで
-------------------------------------------------
MAX_FRAME_0 = 544;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～腕を押さえて気弾を作成するまで ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 開始～腕を押さえて気弾を作成するまで ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 460;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵の動き ** --
--敵の動き1
setDisp( spep_0 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 216 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 174 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 196 + OFFSET_X, 1, 108 );

yy = -70

setMoveKey( spep_0 + 170 + OFFSET_X, 1, 61.1, 20 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 61.1, 20 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 105.3, 28+yy , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 105.3, 28+yy , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 37.6, 91.4+yy , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 37.6, 91.4+yy , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 66.1, -9.6+yy , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 66.1, -9.6+yy , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 76.5, 15.6+yy , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 76.5, 15.6+yy , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 98.3, -21+yy , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 98.3, -21+yy , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 119.1, -7+yy , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 119.1, -7+yy , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 113.4, -30.6+yy , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 113.4, -30.6+yy , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 121.2, -27.6+yy , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 121.2, -27.6+yy , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 124.6, -42.1+yy , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 124.6, -42.1+yy , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 123.6, -44.2+yy , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 123.6, -44.2+yy , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 130.1, -45.8+yy , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 130.1, -45.8+yy , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 191.3, -52.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 191.3, -52.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 196.4, -48.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 196.4, -48.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 189.6, -48.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 189.6, -48.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 194.8, -45.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 194.8, -45.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 195.9, -51.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 195.9, -51.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 199.1, -52 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 199.1, -52 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 198.2, -50.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 198.2, -50.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 199.4, -50.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 199.4, -50.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 200.5, -51.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 200.5, -51.2 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.4, 3.4 );

setRotateKey( spep_0 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -41.7 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 3.3 );

--敵の動き2
setDisp( spep_0 + 292 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 292 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 292 + OFFSET_X, 1, 53.2, 266.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 53.2, 266.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 57.4, 266.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 57.4, 266.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 61.7, 218 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 61.7, 218 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 49.9, 218 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 49.9, 218 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 83.9, 201.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 83.9, 201.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 74.6, 190.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 74.6, 190.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 79, 163.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 79, 163.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 83.3, 152.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 83.3, 152.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 87.6, 138.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 87.6, 138.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 91.9, 122.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 91.9, 122.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 96.2, 106.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 96.2, 106.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 100.5, 89.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 100.5, 89.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 104.8, 73.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 104.8, 73.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 109.1, 57.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 109.1, 57.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 113.4, 41.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 113.4, 41.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 117.7, 24.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 117.7, 24.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 122, 8.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 122, 8.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 126.4, -7.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 126.4, -7.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 130.6, -23.9 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 130.6, -23.9 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 134.9, -40.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 134.9, -40.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 139.3, -56.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 139.3, -56.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 143.6, -72.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 143.6, -72.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 147.9, -88.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 147.9, -88.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 152.2, -105.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 152.2, -105.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 156.5, -121.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 156.5, -121.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 160.8, -137.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 160.8, -137.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 165.1, -153.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 165.1, -153.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 169.4, -170.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 169.4, -170.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 173.7, -186.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 173.7, -186.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 178, -202.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 178, -202.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 182.4, -218.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 182.4, -218.9 , 0 );

setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.31, 1.31 );

setRotateKey( spep_0 + 292 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -20 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1229, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE003 = playSeVer2( spep_0 + 0, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 53 );

--顔アップ
SE004 = playSeVer2( spep_0 + 50, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 148 );
SE005 = playSeVer2( spep_0 + 62, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 79 );
SE006 = playSeVer2( spep_0 + 62, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE006, 60 );
SE007 = playSeVer2( spep_0 + 62, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 56 );

--飛び込んでくる
SE008 = playSeVer2( spep_0 + 120, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 120, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE009, 72 );
SE010 = playSeVer2( spep_0 + 120, 1117, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 150;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);   
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
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
--蹴り
SE011 = playSeVer2( spep_0 + 156, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE011, 200 );
SE012 = playSeVer2( spep_0 + 164, 1187, "", 0, 0, 0, -1);

--振り返る
SE013 = playSeVer2( spep_0 + 234, 1003, "", 0, 0, 0, -1);

--飛び立つ
SE014 = playSeVer2( spep_0 + 260, 1022, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 260, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE015, 72 );
SE016 = playSeVer2( spep_0 + 260, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 292, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 63 );

--腕あげる
SE018 = playSeVer2( spep_0 + 390, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE019 = playSeVer2( spep_0 + 410, 1296, "",spep_0 + 544, 0, 12, -1);
SE020 = playSeVer2( spep_0 + 410, 1295, "",spep_0 + 548, 0, 18, -1);
SE021 = playSeVer2( spep_0 + 410, 1255, "",spep_0 + 548, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 544F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 気弾を放つ～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 518;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 気弾を放つ～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- 気弾を放つ～フィニッシュまで ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, -11.1, 34.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -11.1, 34.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -11.2, 34.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -11.2, 34.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -11.3, 42.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -11.3, 42.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -11.4, 26.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -11.4, 26.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -19.4, 34.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -19.4, 34.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -3.5, 34.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -3.5, 34.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -11.6, 42.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -11.6, 42.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -11.6, 26.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -11.6, 26.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -19.6, 34.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -19.6, 34.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -3.8, 34.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -3.8, 34.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -11.8, 42.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -11.8, 42.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -11.9, 26.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -11.9, 26.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -19.9, 33.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -19.9, 33.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -4, 33.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -4, 33.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -12.1, 41.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -12.1, 41.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -12.2, 24.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -12.2, 24.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -20.2, 32.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -20.2, 32.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -4.3, 31.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -4.3, 31.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -12.3, 43.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -12.3, 43.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -12.4, 18.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -12.4, 18.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -24.4, 30.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -24.4, 30.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -0.5, 29.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -0.5, 29.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -12.5, 40.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -12.5, 40.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -12.5, 15.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -12.5, 15.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -24.4, 26.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -24.4, 26.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -0.5, 25.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -0.5, 25.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -12.5, 36.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -12.5, 36.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -12.5, 11.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -12.5, 11.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -24.4, 22.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -24.4, 22.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -0.5, 21.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -0.5, 21.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -12.5, 31.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -12.5, 31.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -12.5, 10.7 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.12, 1.12 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾発射
SE024 = playSeVer2( spep_2 + 10, 1177, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 10, 1146, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 10, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE026, 77 );
SE027 = playSeVer2( spep_2 + 10, 1211, "",spep_2 + 424, 50, 30, -1);
setSeVolumeByWorkId( spep_2 + 10, SE027, 263 );
SE028 = playSeVer2( spep_2 + 10, 1215, "",spep_2 + 160, 0, 40, -1);

--気弾発射２
SE029 = playSeVer2( spep_2 + 110, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE029, 72 );
SE030 = playSeVer2( spep_2 + 120, 1145, "", 0, 0, 0, -1);

--気弾中
SE031 = playSeVer2( spep_2 + 168, 1213, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 218, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE032, 73 );

--爆発
SE033 = playSeVer2( spep_2 + 360, 1188, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 384, 1024, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 432, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 400); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 518F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始～腕を押さえて気弾を作成するまで
-------------------------------------------------
MAX_FRAME_0 = 544;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始～腕を押さえて気弾を作成するまで ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 開始～腕を押さえて気弾を作成するまで ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 460;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵の動き ** --
--敵の動き1
setDisp( spep_0 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 216 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X, 1, 1 );
changeAnime( spep_0 + 174 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 196 + OFFSET_X, 1, 8 );

yy = -70

setMoveKey( spep_0 + 170 + OFFSET_X, 1, -61.1, 20 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -61.1, 20 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -105.3, 28+yy , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -105.3, 28+yy , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -37.6, 91.4+yy , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -37.6, 91.4+yy , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -66.1, -9.6+yy , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -66.1, -9.6+yy , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -76.5, 15.6+yy , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -76.5, 15.6+yy , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -98.3, -21+yy , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -98.3, -21+yy , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -119.1, -7+yy , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -119.1, -7+yy , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -113.4, -30.6+yy , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -113.4, -30.6+yy , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -121.2, -27.6+yy , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -121.2, -27.6+yy , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -124.6, -42.1+yy , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -124.6, -42.1+yy , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -123.6, -44.2+yy , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -123.6, -44.2+yy , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -130.1, -45.8+yy , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -130.1, -45.8+yy , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -191.3, -52.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -191.3, -52.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -196.4, -48.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -196.4, -48.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -189.6, -48.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -189.6, -48.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -194.8, -45.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -194.8, -45.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -195.9, -51.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -195.9, -51.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -199.1, -52 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -199.1, -52 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -198.2, -50.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -198.2, -50.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -199.4, -50.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -199.4, -50.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -200.5, -51.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -200.5, -51.2 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.4, 3.4 );

setRotateKey( spep_0 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -3.3 );

--敵の動き2
setDisp( spep_0 + 292 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 292 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 292 + OFFSET_X, 1, -53.2, 266.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -53.2, 266.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -57.4, 266.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -57.4, 266.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -61.7, 218 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -61.7, 218 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -49.9, 218 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -49.9, 218 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -83.9, 201.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -83.9, 201.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -74.6, 190.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -74.6, 190.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -79, 163.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -79, 163.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -83.3, 152.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -83.3, 152.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -87.6, 138.7 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -87.6, 138.7 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -91.9, 122.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -91.9, 122.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -96.2, 106.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -96.2, 106.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -100.5, 89.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -100.5, 89.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -104.8, 73.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -104.8, 73.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -109.1, 57.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -109.1, 57.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -113.4, 41.2 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -113.4, 41.2 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -117.7, 24.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -117.7, 24.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -122, 8.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -122, 8.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -126.4, -7.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -126.4, -7.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -130.6, -23.9 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -130.6, -23.9 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -134.9, -40.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -134.9, -40.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -139.3, -56.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -139.3, -56.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -143.6, -72.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -143.6, -72.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -147.9, -88.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -147.9, -88.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -152.2, -105.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -152.2, -105.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -156.5, -121.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -156.5, -121.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -160.8, -137.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -160.8, -137.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -165.1, -153.9 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -165.1, -153.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -169.4, -170.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -169.4, -170.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -173.7, -186.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -173.7, -186.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -178, -202.6 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -178, -202.6 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -182.4, -218.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -182.4, -218.9 , 0 );

setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.31, 1.31 );

setRotateKey( spep_0 + 292 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 20 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1229, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE003 = playSeVer2( spep_0 + 0, 1344, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 53 );

--顔アップ
SE004 = playSeVer2( spep_0 + 50, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 148 );
SE005 = playSeVer2( spep_0 + 62, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 79 );
SE006 = playSeVer2( spep_0 + 62, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE006, 60 );
SE007 = playSeVer2( spep_0 + 62, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 56 );

--飛び込んでくる
SE008 = playSeVer2( spep_0 + 120, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 120, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE009, 72 );
SE010 = playSeVer2( spep_0 + 120, 1117, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 150;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);   
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
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
--蹴り
SE011 = playSeVer2( spep_0 + 156, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE011, 200 );
SE012 = playSeVer2( spep_0 + 164, 1187, "", 0, 0, 0, -1);

--振り返る
SE013 = playSeVer2( spep_0 + 234, 1003, "", 0, 0, 0, -1);

--飛び立つ
SE014 = playSeVer2( spep_0 + 260, 1022, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 260, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE015, 72 );
SE016 = playSeVer2( spep_0 + 260, 1117, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 292, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 63 );

--腕あげる
SE018 = playSeVer2( spep_0 + 390, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE019 = playSeVer2( spep_0 + 410, 1296, "",spep_0 + 544, 0, 12, -1);
SE020 = playSeVer2( spep_0 + 410, 1295, "",spep_0 + 548, 0, 18, -1);
SE021 = playSeVer2( spep_0 + 410, 1255, "",spep_0 + 548, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 544F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 気弾を放つ～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 518;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- 気弾を放つ～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- 気弾を放つ～フィニッシュまで ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 11.1, 34.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 11.1, 34.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 11.2, 34.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 11.2, 34.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 11.3, 42.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 11.3, 42.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 11.4, 26.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 11.4, 26.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 19.4, 34.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 19.4, 34.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 3.5, 34.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 3.5, 34.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 11.6, 42.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 11.6, 42.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 11.6, 26.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 11.6, 26.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 19.6, 34.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 19.6, 34.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 3.8, 34.5 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 3.8, 34.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 11.8, 42.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 11.8, 42.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 11.9, 26.1 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 11.9, 26.1 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 19.9, 33.9 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 19.9, 33.9 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 4, 33.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 4, 33.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 12.1, 41.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 12.1, 41.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 12.2, 24.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 12.2, 24.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 20.2, 32.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 20.2, 32.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 4.3, 31.9 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 4.3, 31.9 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 12.3, 43.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 12.3, 43.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 12.4, 18.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 12.4, 18.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 24.4, 30.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 24.4, 30.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0.5, 29.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 0.5, 29.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 12.5, 40.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 12.5, 40.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 12.5, 15.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 12.5, 15.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 24.4, 26.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 24.4, 26.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 0.5, 25.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 0.5, 25.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 12.5, 36.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 12.5, 36.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 12.5, 11.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 12.5, 11.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 24.4, 22.3 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 24.4, 22.3 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 0.5, 21.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 0.5, 21.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 12.5, 31.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 12.5, 31.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 12.5, 10.7 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.12, 1.12 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気弾発射
SE024 = playSeVer2( spep_2 + 10, 1177, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 10, 1146, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 10, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE026, 77 );
SE027 = playSeVer2( spep_2 + 10, 1211, "",spep_2 + 424, 50, 30, -1);
setSeVolumeByWorkId( spep_2 + 10, SE027, 263 );
SE028 = playSeVer2( spep_2 + 10, 1215, "",spep_2 + 160, 0, 40, -1);

--気弾発射２
SE029 = playSeVer2( spep_2 + 110, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE029, 72 );
SE030 = playSeVer2( spep_2 + 120, 1145, "", 0, 0, 0, -1);

--気弾中
SE031 = playSeVer2( spep_2 + 168, 1213, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 218, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE032, 73 );

--爆発
SE033 = playSeVer2( spep_2 + 360, 1188, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 384, 1024, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 432, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 400); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 518F

end