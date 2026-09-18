--4028650:LR_ビルス(パジャマ)_必殺技：拡散破壊玉
--sp_effect_a2_00237
--sp2679

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162662;  --ef_001  ビルスの寝起き～叫び
SP_02  = 162664;  --ef_002  ビルスの気弾生成～爆発 手前側
SP_02b = 162665;  --ef_003  ビルスの気弾生成～爆発 奥側

--エフェクト(敵)
SP_01r = 162663;  --ef_001r  ビルスの寝起き～叫び 敵側
SP_02r = 162666;  --ef_002r  ビルスの気弾生成～爆発 手前側 敵側


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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- ビルスの寝起き～叫び
-------------------------------------------------
MAX_FRAME_0 = 176;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ビルスの寝起き～叫び(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 94;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -65, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 198, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--震える
SE002 = playSeVer2( spep_0 + 4, 1229, "",spep_0 + 112, 0, 22, -1);
SE003 = playSeVer2( spep_0 + 16, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 45 );

--怒る
SE004 = playSeVer2( spep_0 + 82, 1067, "",spep_0 + 194, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 82, SE004, 87 );
SE005 = playSeVer2( spep_0 + 82, 20, "",spep_0 + 192, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 82, SE005, 87 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --176f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- ビルスの寝起き～叫び
-------------------------------------------------
MAX_FRAME_2 = 408;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビルスの気弾生成～爆発 手前側(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ビルスの気弾生成～爆発 奥側(ef_002b)
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
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 408 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 242 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, 136.2, -322.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 136.2, -322.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 113.2, -309.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 113.2, -309.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 167.7, -287.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 167.7, -287.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 216.7, -276.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 216.7, -276.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 129.9, -215.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 129.9, -215.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 269, -193.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 269, -193.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 228.3, -143.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 228.3, -143.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 217.1, -150.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 217.1, -150.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 243.9, -83.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 243.9, -83.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 268.8, -72.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 268.8, -72.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 177.6, -46 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 177.6, -46 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 311.9, -28.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 311.9, -28.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 261.5, 10.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 261.5, 10.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 294.3, 12.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 294.3, 12.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 234.8, 71.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 234.8, 71.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 269.6, 47.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 269.6, 47.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 32.3, -371.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 32.3, -371.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 36.7, -369.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 36.7, -369.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 41, -366.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 41, -366.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 45.3, -364.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 45.3, -364.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 49.7, -361.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 49.7, -361.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 54, -359.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 54, -359.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 58.3, -357 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 58.3, -357 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 62.6, -354.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 62.6, -354.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 66.9, -352.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 66.9, -352.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 71.2, -349.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 71.2, -349.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 75.5, -347.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 75.5, -347.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 79.7, -344.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 79.7, -344.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 84, -342.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 84, -342.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 88.2, -340 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 88.2, -340 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 92.5, -337.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 92.5, -337.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 96.7, -335.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 96.7, -335.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 100.9, -332.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 100.9, -332.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 105.1, -330.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 105.1, -330.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 109.4, -327.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 109.4, -327.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 113.5, -325.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 113.5, -325.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 117.7, -323 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 117.7, -323 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 173.4, -402.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 173.4, -402.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 104.1, -331.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 104.1, -331.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 123.1, -330.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 123.1, -330.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 65.4, -357.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 65.4, -357.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 126.5, -343.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 126.5, -343.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 71.9, -307.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 71.9, -307.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 125.8, -299 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 125.8, -299 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 91.3, -331.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 91.3, -331.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 103.2, -281.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 103.2, -281.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 168.1, -289.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 168.1, -289.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 109.2, -281 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 109.2, -281 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 137.1, -289.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 137.1, -289.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 106.8, -263.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 106.8, -263.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 151, -269.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 151, -269.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 171.2, -269.5 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 171.2, -269.5 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 114.6, -298.5 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 114.6, -298.5 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 176.8, -285.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 176.8, -285.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 123.4, -250.3 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 123.4, -250.3 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 178.4, -243.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 178.4, -243.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 145, -277.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 145, -277.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 158, -228.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 158, -228.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 224, -237.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 224, -237.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 165.2, -229.2 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 165.2, -229.2 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 193.1, -237.7 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 193.1, -237.7 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 162.8, -211.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 162.8, -211.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 202.3, -222 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 202.3, -222 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 217.8, -226.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 217.8, -226.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 156.6, -259.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 156.6, -259.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 214.1, -250.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 214.1, -250.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 156, -220.2 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 156, -220.2 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 199.5, -226.8 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 199.5, -226.8 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 177.7, -245.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 177.7, -245.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 180.9, -229.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 180.9, -229.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 199.1, -234.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 199.1, -234.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 190.1, -244.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 190.1, -244.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 181.2, -244.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 181.2, -244.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 185.8, -238.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 185.8, -238.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 184.8, -242.7 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 184.8, -242.7 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 183.8, -238.6 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 183.8, -238.6 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 184.6, -245.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 184.6, -245.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 183.5, -240.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 183.5, -240.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 187.5, -242.4 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 187.5, -242.4 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 184.6, -240.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 184.6, -240.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 186.7, -239 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 186.7, -239 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 183.8, -245.5 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 183.8, -245.5 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 184.6, -240.3 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 184.6, -240.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 186.7, -239 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 186.7, -239 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 183.8, -245.5 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 183.8, -245.5 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 185.4, -240.4 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 31.8 );

-- ** 音 ** --
--気弾溜め
SE008 = playSeVer2( spep_2 + 2, 1374, "", 0, 10, 0, 0.7);
setStartTimeMs( SE008,  767 );
SE009 = playSeVer2( spep_2 + 2, 1334, "", 0, 0, 0, 0.7);
setTimeStretch( SE009, 1.24, 30, 4 );
SE010 = playSeVer2( spep_2 + 2, 1265, "",spep_2 + 218, 0, 30, 0.7);
SE011 = playSeVer2( spep_2 + 2, 1371, "",spep_2 + 220, 0, 30, 0.7);
setSeVolumeByWorkId( spep_2 + 2, SE011, 84 );

--腕を挙げる
SE012 = playSeVer2( spep_2 + 132, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE012, 69 );

--連続気弾投げ
SE013 = playSeVer2( spep_2 + 248, 1121, "",spep_2 + 328, 12, 16, -1);
setSeVolumeByWorkId( spep_2 + 248, SE013, 67 );
setStartTimeMs( SE013,  1500 );

--腕おろす
SE014 = playSeVer2( spep_2 + 168, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 190; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);

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
--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 180, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 180, 1177, "",spep_2 + 268, 0, 18, -1);
SE017 = playSeVer2( spep_2 + 180, 1424, "",spep_2 + 266, 0, 16, -1);

--敵ヒット
SE018 = playSeVer2( spep_2 + 228, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 238, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE019, 87 );

--連続気弾投げ
SE020 = playSeVer2( spep_2 + 256, 1118, "",spep_2 + 332, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 256, SE020, 51 );
SE021 = playSeVer2( spep_2 + 256, 1424, "",spep_2 + 332, 0, 14, -1);

--連続爆発
SE022 = playSeVer2( spep_2 + 302, 1024, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 310, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 318, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 306); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2  -2); -- 終了フレーム  408f -2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- ビルスの寝起き～叫び
-------------------------------------------------
MAX_FRAME_0 = 176;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- ビルスの寝起き～叫び(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 94;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 65, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 65, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 65, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 198, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--震える
SE002 = playSeVer2( spep_0 + 4, 1229, "",spep_0 + 112, 0, 22, -1);
SE003 = playSeVer2( spep_0 + 16, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 45 );

--怒る
SE004 = playSeVer2( spep_0 + 82, 1067, "",spep_0 + 194, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 82, SE004, 87 );
SE005 = playSeVer2( spep_0 + 82, 20, "",spep_0 + 192, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 82, SE005, 87 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --176f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- ビルスの寝起き～叫び
-------------------------------------------------
MAX_FRAME_2 = 408;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ビルスの気弾生成～爆発 手前側(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ビルスの気弾生成～爆発 奥側(ef_002b)
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
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 408 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 242 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, 136.2, -322.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 136.2, -322.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 113.2, -309.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 113.2, -309.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 167.7, -287.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 167.7, -287.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 216.7, -276.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 216.7, -276.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 129.9, -215.7 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 129.9, -215.7 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 269, -193.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 269, -193.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 228.3, -143.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 228.3, -143.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 217.1, -150.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 217.1, -150.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 243.9, -83.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 243.9, -83.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 268.8, -72.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 268.8, -72.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 177.6, -46 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 177.6, -46 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 311.9, -28.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 311.9, -28.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 261.5, 10.9 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 261.5, 10.9 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 294.3, 12.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 294.3, 12.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 234.8, 71.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 234.8, 71.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 269.6, 47.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 269.6, 47.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 32.3, -371.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 32.3, -371.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 36.7, -369.2 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 36.7, -369.2 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 41, -366.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 41, -366.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 45.3, -364.3 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 45.3, -364.3 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 49.7, -361.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 49.7, -361.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 54, -359.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 54, -359.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 58.3, -357 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 58.3, -357 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 62.6, -354.6 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 62.6, -354.6 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 66.9, -352.2 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 66.9, -352.2 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 71.2, -349.7 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 71.2, -349.7 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 75.5, -347.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 75.5, -347.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 79.7, -344.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 79.7, -344.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 84, -342.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 84, -342.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 88.2, -340 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 88.2, -340 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 92.5, -337.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 92.5, -337.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 96.7, -335.1 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 96.7, -335.1 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 100.9, -332.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 100.9, -332.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 105.1, -330.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 105.1, -330.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 109.4, -327.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 109.4, -327.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 113.5, -325.4 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 113.5, -325.4 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 117.7, -323 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 117.7, -323 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 173.4, -402.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 173.4, -402.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 104.1, -331.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 104.1, -331.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 123.1, -330.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 123.1, -330.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 65.4, -357.8 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 65.4, -357.8 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 126.5, -343.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 126.5, -343.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 71.9, -307.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 71.9, -307.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 125.8, -299 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 125.8, -299 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 91.3, -331.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 91.3, -331.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 103.2, -281.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 103.2, -281.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 168.1, -289.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 168.1, -289.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 109.2, -281 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 109.2, -281 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 137.1, -289.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 137.1, -289.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 106.8, -263.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 106.8, -263.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 151, -269.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 151, -269.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 171.2, -269.5 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 171.2, -269.5 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 114.6, -298.5 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 114.6, -298.5 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 176.8, -285.2 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 176.8, -285.2 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 123.4, -250.3 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 123.4, -250.3 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 178.4, -243.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 178.4, -243.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 145, -277.3 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 145, -277.3 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 158, -228.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 158, -228.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 224, -237.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 224, -237.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 165.2, -229.2 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 165.2, -229.2 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 193.1, -237.7 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 193.1, -237.7 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 162.8, -211.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 162.8, -211.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 202.3, -222 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 202.3, -222 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 217.8, -226.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 217.8, -226.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 156.6, -259.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 156.6, -259.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 214.1, -250.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 214.1, -250.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 156, -220.2 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 156, -220.2 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 199.5, -226.8 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 199.5, -226.8 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 177.7, -245.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 177.7, -245.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 180.9, -229.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 180.9, -229.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 199.1, -234.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 199.1, -234.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 190.1, -244.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 190.1, -244.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 181.2, -244.2 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 181.2, -244.2 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 185.8, -238.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 185.8, -238.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 184.8, -242.7 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 184.8, -242.7 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 183.8, -238.6 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 183.8, -238.6 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 184.6, -245.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 184.6, -245.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 183.5, -240.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 183.5, -240.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 187.5, -242.4 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 187.5, -242.4 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 184.6, -240.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 184.6, -240.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 186.7, -239 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 186.7, -239 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 183.8, -245.5 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 183.8, -245.5 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 184.6, -240.3 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 184.6, -240.3 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 186.7, -239 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 186.7, -239 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 183.8, -245.5 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 183.8, -245.5 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 185.4, -240.4 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 263 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 265 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 33.5 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 269 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 271 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 272 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -23.3 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 277 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 278 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 279 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_2 + 280 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 285 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 286 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 289 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 291 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 292 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 31.8 );

-- ** 音 ** --
--気弾溜め
SE008 = playSeVer2( spep_2 + 2, 1374, "", 0, 10, 0, 0.7);
setStartTimeMs( SE008,  767 );
SE009 = playSeVer2( spep_2 + 2, 1334, "", 0, 0, 0, 0.7);
setTimeStretch( SE009, 1.24, 30, 4 );
SE010 = playSeVer2( spep_2 + 2, 1265, "",spep_2 + 218, 0, 30, 0.7);
SE011 = playSeVer2( spep_2 + 2, 1371, "",spep_2 + 220, 0, 30, 0.7);
setSeVolumeByWorkId( spep_2 + 2, SE011, 84 );

--腕を挙げる
SE012 = playSeVer2( spep_2 + 132, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE012, 69 );

--連続気弾投げ
SE013 = playSeVer2( spep_2 + 248, 1121, "",spep_2 + 328, 12, 16, -1);
setSeVolumeByWorkId( spep_2 + 248, SE013, 67 );
setStartTimeMs( SE013,  1500 );

--腕おろす
SE014 = playSeVer2( spep_2 + 168, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 190; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);

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
--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 180, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 180, 1177, "",spep_2 + 268, 0, 18, -1);
SE017 = playSeVer2( spep_2 + 180, 1424, "",spep_2 + 266, 0, 16, -1);

--敵ヒット
SE018 = playSeVer2( spep_2 + 228, 1023, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 238, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 238, SE019, 87 );

--連続気弾投げ
SE020 = playSeVer2( spep_2 + 256, 1118, "",spep_2 + 332, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 256, SE020, 51 );
SE021 = playSeVer2( spep_2 + 256, 1424, "",spep_2 + 332, 0, 14, -1);

--連続爆発
SE022 = playSeVer2( spep_2 + 302, 1024, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 310, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 318, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 306); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2  -2); -- 終了フレーム  408f -2


end
