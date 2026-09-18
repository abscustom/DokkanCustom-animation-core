--1028520:UR_ベジータ王_必殺技：オーガブラスター
--sp_effect_a9_00128
--sp2671

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162734;	--カードカットイン前　敵前面	ef_001
SP_01b = 162735;	--カードカットイン前　敵背面	ef_001b
SP_02 = 162738;	--カードカットイン後　敵前面	ef_002
SP_02b = 162739;	--カードカットイン後　敵背面	ef_002b

--エフェクト(てき)
SP_01r = 162736;	--カードカットイン前　敵前面　敵側	ef_001r
SP_01br = 162737;	--カードカットイン前　敵背面　敵側	ef_001br
SP_02r = 162740;	--カードカットイン後　敵前面　敵側	ef_002r
SP_02br = 162741;	--カードカットイン後　敵背面　敵側	ef_002br


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

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットイン前
-------------------------------------------------

MAX_FRAME_0 = 340;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 敵背面(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -80, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 160 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, 128.7, -178 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 128.7, -178 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 146.1, -200.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 146.1, -200.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 156, -202.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 156, -202.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -377, 7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -377, 7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -377.6, 13.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -377.6, 13.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -623.3, 159.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -623.3, 159.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -619.7, 175 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -619.7, 175 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.56, 2.56 );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 10.5 );

-- 敵の動き2
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 334 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 268 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 312 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, 389.1, -262 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 389.1, -262 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 296.9, -217.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 296.9, -217.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 204.8, -172.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 204.8, -172.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 199.7, -169.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 199.7, -169.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 194.6, -166.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 194.6, -166.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 189.5, -163.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 189.5, -163.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 184.4, -160.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 184.4, -160.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 179.3, -157.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 179.3, -157.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 174.1, -154.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 174.1, -154.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 169, -151.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 169, -151.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 163.9, -148.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 163.9, -148.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 158.8, -145.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 158.8, -145.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 153.7, -142.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 153.7, -142.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 148.6, -139.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 148.6, -139.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 143.5, -136.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 143.5, -136.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 138.3, -134 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 138.3, -134 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 133.2, -131.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 133.2, -131.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 128.1, -128.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 128.1, -128.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 123, -125.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 123, -125.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 117.9, -122.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 117.9, -122.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 112.8, -119.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 112.8, -119.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 106.7, -107.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 106.7, -107.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 95.6, -399.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 95.6, -399.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 92.6, -380.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 92.6, -380.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 83.4, -396.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 83.4, -396.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 98.7, -390 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 98.7, -390 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 89.5, -396.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 89.5, -396.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 89.5, -390 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 89.5, -390 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 395, -349.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 395, -349.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 700.4, -308.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 700.4, -308.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 1005.9, -268.2 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 1005.9, -268.2 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 7.66, 7.66 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 7.66, 7.66 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -31.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 198, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--走る
SE003 = playSeVer2( spep_0 + 4, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 158 );
SE004 = playSeVer2( spep_0 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 150 );
SE005 = playSeVer2( spep_0 + 42, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 158 );
SE006 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 150 );

--フレームアウト
SE007 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, -1);

--飛び上がる
SE008 = playSeVer2( spep_0 + 90, 1116, "",spep_0 + 180, 0, 16, -1);
SE009 = playSeVer2( spep_0 + 90, 1117, "",spep_0 + 182, 0, 18, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
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
--敵払い飛ばす
SE010 = playSeVer2( spep_0 + 148, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE010, 209 );
SE011 = playSeVer2( spep_0 + 158, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 158, 1187, "", 0, 0, 0, -1);

--マント翻す
SE013 = playSeVer2( spep_0 + 198, 1331, "",spep_0 + 276, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 150 );
SE014 = playSeVer2( spep_0 + 208, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE014, 83 );
SE015 = playSeVer2( spep_0 + 214, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE015, 141 );

--着地
SE016 = playSeVer2( spep_0 + 244, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE016, 182 );

--向かってくる
SE017 = playSeVer2( spep_0 + 256, 63, "",spep_0 + 340, 0, 24, -1);
SE018 = playSeVer2( spep_0 + 256, 1207, "",spep_0 + 342, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 256, SE018, 68 );

--殴り飛ばす
SE019 = playSeVer2( spep_0 + 302, 1187, "",spep_0 + 354, 0, 12, -1);
SE020 = playSeVer2( spep_0 + 302, 1110, "",spep_0 + 356, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --340F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--振りかぶる
SE022 = playSeVer2( spep_c + 84, 1278, "",spep_c + 196, 0, 38, -1);
setSeVolumeByWorkId( spep_c + 84, SE022, 63 );
SE023 = playSeVer2( spep_c + 88, 1116, "",spep_c + 140, 0, 20, -1);


-------------------------------------------------
-- カードカットイン後
-------------------------------------------------

MAX_FRAME_1 = 356;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 敵前面(ef_002)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 敵背面(ef_002b)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 白フェード ** --
entryFade( spep_1 + 218 + OFFSET_X, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 146 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 160 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 146 + OFFSET_X, 1, 497.2, 147.9 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 497.2, 147.9 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 450.2, 134.5 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 450.2, 134.5 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 403.2, 121.1 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 403.2, 121.1 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 356.2, 107.7 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 356.2, 107.7 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 309.3, 94.3 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 309.3, 94.3 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 262.3, 80.9 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 262.3, 80.9 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 215.3, 67.5 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 215.3, 67.5 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 26.9, -21 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 26.9, -21 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 26.8, -21 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 26.8, -21 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 26.7, -21 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 26.7, -21 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 26.8, -21 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 26.8, -21 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 26.8, -20.9 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 26.8, -20.9 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 26.7, -20.9 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 26.7, -20.9 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 26.8, -20.9 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 26.8, -20.9 , 0 );

setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 161 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 162 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 163 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 164 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 165 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 166 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 167 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 168 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 169 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 171 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 175 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 177 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 181 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 183 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 187 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 189 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 193 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_1 + 146 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, 10.5 );

setBlendColor( spep_1 + 170 + OFFSET_X, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_1 + 174 + OFFSET_X, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_1 + 178 + OFFSET_X, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_1 + 182 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_1 + 184 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_1 + 217 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_1 + 218 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--気弾溜め
SE024 = playSeVer2( spep_1 + 30, 1248, "",spep_1 + 86, 8, 8, -1);
setStartTimeMs( SE024,  333 );
SE025 = playSeVer2( spep_1 + 26, 1239, "",spep_1 + 86, 0, 8, -1);
SE026 = playSeVer2( spep_1 + 30, 1296, "",spep_1 + 86, 0, 8, -1);

--気弾発射
SE027 = playSeVer2( spep_1 + 68, 1177, "", 0, 0, 0, 0.6);
SE028 = playSeVer2( spep_1 + 68, 1423, "",spep_1 + 280, 0, 52, -1);
SE029 = playSeVer2( spep_1 + 70, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 70, 1109, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 70, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE031, 79 );

--気弾向かってくる
SE032 = playSeVer2( spep_1 + 102, 1215, "",spep_1 + 268, 0, 40, -1);

--気弾に飲まれる
SE033 = playSeVer2( spep_1 + 162, 1258, "",spep_1 + 270, 36, 62, -1);
setSeVolumeByWorkId( spep_1 + 162, SE033, 65 );

--画面遷移
SE034 = playSeVer2( spep_1 + 220, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 220, SE034, 116 );

--環境音
SE035 = playSeVer2( spep_1 + 228, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 228, SE035, 25 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 244); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 356F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カードカットイン前
-------------------------------------------------

MAX_FRAME_0 = 340;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 敵前面 敵側 (ef_001r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 敵背面 敵側 (ef_001br)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -80, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 160 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, 128.7, -178 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 128.7, -178 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 146.1, -200.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 146.1, -200.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 156, -202.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 156, -202.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -377, 7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -377, 7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -377.6, 13.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -377.6, 13.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -623.3, 159.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -623.3, 159.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -619.7, 175 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -619.7, 175 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.56, 2.56 );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 10.5 );

-- 敵の動き2
setDisp( spep_0 + 268 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 334 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 268 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 312 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 268 + OFFSET_X, 1, 389.1, -262 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 389.1, -262 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 296.9, -217.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 296.9, -217.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 204.8, -172.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 204.8, -172.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 199.7, -169.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 199.7, -169.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 194.6, -166.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 194.6, -166.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 189.5, -163.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 189.5, -163.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 184.4, -160.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 184.4, -160.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 179.3, -157.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 179.3, -157.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 174.1, -154.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 174.1, -154.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 169, -151.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 169, -151.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 163.9, -148.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 163.9, -148.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 158.8, -145.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 158.8, -145.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 153.7, -142.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 153.7, -142.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 148.6, -139.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 148.6, -139.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 143.5, -136.9 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 143.5, -136.9 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 138.3, -134 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 138.3, -134 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 133.2, -131.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 133.2, -131.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 128.1, -128.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 128.1, -128.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 123, -125.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 123, -125.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 117.9, -122.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 117.9, -122.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 112.8, -119.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 112.8, -119.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 106.7, -107.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 106.7, -107.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 95.6, -399.2 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 95.6, -399.2 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 92.6, -380.9 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 92.6, -380.9 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 83.4, -396.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 83.4, -396.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 98.7, -390 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 98.7, -390 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 89.5, -396.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 89.5, -396.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 89.5, -390 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 89.5, -390 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 395, -349.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 395, -349.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 700.4, -308.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 700.4, -308.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 1005.9, -268.2 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 1005.9, -268.2 , 0 );

setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 7.33, 7.33 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 7.66, 7.66 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 7.66, 7.66 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_0 + 268 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -31.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 198, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--走る
SE003 = playSeVer2( spep_0 + 4, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 158 );
SE004 = playSeVer2( spep_0 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 150 );
SE005 = playSeVer2( spep_0 + 42, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 158 );
SE006 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 150 );

--フレームアウト
SE007 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, -1);

--飛び上がる
SE008 = playSeVer2( spep_0 + 90, 1116, "",spep_0 + 180, 0, 16, -1);
SE009 = playSeVer2( spep_0 + 90, 1117, "",spep_0 + 182, 0, 18, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
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
--敵払い飛ばす
SE010 = playSeVer2( spep_0 + 148, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE010, 209 );
SE011 = playSeVer2( spep_0 + 158, 1009, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 158, 1187, "", 0, 0, 0, -1);

--マント翻す
SE013 = playSeVer2( spep_0 + 198, 1331, "",spep_0 + 276, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 150 );
SE014 = playSeVer2( spep_0 + 208, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 208, SE014, 83 );
SE015 = playSeVer2( spep_0 + 214, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE015, 141 );

--着地
SE016 = playSeVer2( spep_0 + 244, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE016, 182 );

--向かってくる
SE017 = playSeVer2( spep_0 + 256, 63, "",spep_0 + 340, 0, 24, -1);
SE018 = playSeVer2( spep_0 + 256, 1207, "",spep_0 + 342, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 256, SE018, 68 );

--殴り飛ばす
SE019 = playSeVer2( spep_0 + 302, 1187, "",spep_0 + 354, 0, 12, -1);
SE020 = playSeVer2( spep_0 + 302, 1110, "",spep_0 + 356, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --340F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-- ** 音 ** --
--振りかぶる
SE022 = playSeVer2( spep_c + 84, 1278, "",spep_c + 196, 0, 38, -1);
setSeVolumeByWorkId( spep_c + 84, SE022, 63 );
SE023 = playSeVer2( spep_c + 88, 1116, "",spep_c + 140, 0, 20, -1);


-------------------------------------------------
-- カードカットイン後
-------------------------------------------------

MAX_FRAME_1 = 356;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 敵前面 敵側 (ef_002r)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 敵背面 敵側 (ef_002br)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 白フェード ** --
entryFade( spep_1 + 218 + OFFSET_X, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 146 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 160 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 146 + OFFSET_X, 1, 497.2, 147.9 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_X, 1, 497.2, 147.9 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_X, 1, 450.2, 134.5 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_X, 1, 450.2, 134.5 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_X, 1, 403.2, 121.1 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_X, 1, 403.2, 121.1 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_X, 1, 356.2, 107.7 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_X, 1, 356.2, 107.7 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_X, 1, 309.3, 94.3 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_X, 1, 309.3, 94.3 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_X, 1, 262.3, 80.9 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_X, 1, 262.3, 80.9 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_X, 1, 215.3, 67.5 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_X, 1, 215.3, 67.5 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_X, 1, 26.9, -21 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_X, 1, 26.9, -21 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_X, 1, 26.8, -21 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_X, 1, 26.8, -21 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_X, 1, 26.7, -21 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_X, 1, 26.7, -21 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_X, 1, 26.8, -21 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_X, 1, 26.8, -21 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_X, 1, 26.8, -20.9 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 26.8, -20.9 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 26.7, -20.9 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 26.7, -20.9 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 26.8, -20.9 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 26.8, -20.9 , 0 );

setScaleKey( spep_1 + 146 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 161 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_1 + 162 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 163 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 164 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 165 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 166 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 167 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 168 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 169 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 170 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 171 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 172 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 173 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 174 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 175 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 176 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 177 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 178 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 179 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 180 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 181 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_1 + 182 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 183 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 184 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 187 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_1 + 188 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 189 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 190 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 193 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 194 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 1.5, 1.5 );

setRotateKey( spep_1 + 146 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_1 + 218 + OFFSET_X, 1, 10.5 );

setBlendColor( spep_1 + 170 + OFFSET_X, 1, 3, 0, 0, 0, 0.1);
setBlendColor( spep_1 + 174 + OFFSET_X, 1, 3, 0, 0, 0, 0.2);
setBlendColor( spep_1 + 178 + OFFSET_X, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_1 + 182 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_1 + 184 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_1 + 217 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_1 + 218 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--気弾溜め
SE024 = playSeVer2( spep_1 + 30, 1248, "",spep_1 + 86, 8, 8, -1);
setStartTimeMs( SE024,  333 );
SE025 = playSeVer2( spep_1 + 26, 1239, "",spep_1 + 86, 0, 8, -1);
SE026 = playSeVer2( spep_1 + 30, 1296, "",spep_1 + 86, 0, 8, -1);

--気弾発射
SE027 = playSeVer2( spep_1 + 68, 1177, "", 0, 0, 0, 0.6);
SE028 = playSeVer2( spep_1 + 68, 1423, "",spep_1 + 280, 0, 52, -1);
SE029 = playSeVer2( spep_1 + 70, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 70, 1109, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 70, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE031, 79 );

--気弾向かってくる
SE032 = playSeVer2( spep_1 + 102, 1215, "",spep_1 + 268, 0, 40, -1);

--気弾に飲まれる
SE033 = playSeVer2( spep_1 + 162, 1258, "",spep_1 + 270, 36, 62, -1);
setSeVolumeByWorkId( spep_1 + 162, SE033, 65 );

--画面遷移
SE034 = playSeVer2( spep_1 + 220, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 220, SE034, 116 );

--環境音
SE035 = playSeVer2( spep_1 + 228, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 228, SE035, 25 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 244); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 356F-4

end
