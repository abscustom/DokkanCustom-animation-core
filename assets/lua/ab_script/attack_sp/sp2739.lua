--4029060:LR_孫悟空(身勝手の極意)_超必殺技(変身後)：超極限かめはめ波
--sp_effect_a1_00443
--sp2739

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(共通)
SP_01 = 162986	--悟空振り向く〜敵を手前に吹き飛ばす ef_001
SP_02 = 162987	--悟空振り向く〜敵を手前に吹き飛ばす(背景) ef_001b
SP_03 = 162988	--かめはめ波構え〜KO ef_002
SP_04 = 162989	--かめはめ波構え〜KO(背景) ef_002b
SP_05 = 162990	--KOループ	ef_003

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
-- 悟空振り向く〜敵を手前に吹き飛ばす
-------------------------------------------------
MAX_FRAME_0 = 732;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 悟空振り向く〜敵を手前に吹き飛ばす ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 悟空振り向く〜敵を手前に吹き飛ばす(背景) ef_001b
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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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

-- ** 敵の動き ** --
--敵の動き_1
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 162 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 126 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, 257.1, 47.5 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 257.1, 47.5 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 254.6, 47.5 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 254.6, 47.5 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 252.2, 47.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 252.2, 47.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 249.7, 47.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 249.7, 47.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 247.3, 47.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 247.3, 47.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 244.8, 47.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 244.8, 47.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 242.4, 47.6 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 242.4, 47.6 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 239.9, 47.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 239.9, 47.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 237.5, 47.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 237.5, 47.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 270.6, 133.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 270.6, 133.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 266.1, 133.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 266.1, 133.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 261.6, 133.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 261.6, 133.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 257.1, 133.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 257.1, 133.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 252.6, 133.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 252.6, 133.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 248.2, 133.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 248.2, 133.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 243.7, 133.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 243.7, 133.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 239.2, 133.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 239.2, 133.7 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 0 );

--敵の動き_2
setDisp( spep_0 + 220 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 220 + OFFSET_X, 1, 16 );
changeAnime( spep_0 + 266 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 302 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 220 + OFFSET_X, 1, 298.1, -214.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 298.1, -214.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 297.8, -214.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 297.8, -214.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 296.8, -214.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 296.8, -214.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 292.9, -214.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 292.9, -214.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 287.1, -214.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 287.1, -214.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 273.2, -214.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 273.2, -214.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 247.4, -214.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 247.4, -214.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 195.8, -214.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 195.8, -214.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 144.1, -214.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 144.1, -214.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 122.8, -214.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 122.8, -214.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 114.3, -214.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 114.3, -214.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 106.9, -214.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 106.9, -214.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 104.6, -214.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 104.6, -214.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 104, -214 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 104, -214 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 104, -244 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 104, -244 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 108, -214 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 108, -214 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -77.9, 36.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -77.9, 36.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -75.5, 36.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -75.5, 36.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -72.6, 36.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -72.6, 36.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -70.6, 36.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -70.6, 36.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -70.3, 36.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -70.3, 36.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 83.7, -97.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 83.7, -97.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 292.7, -224.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 292.7, -224.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 294.5, -252.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 294.5, -252.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 290.9, -232.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 290.9, -232.2 , 0 );

setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 220 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 60 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 60 );

--敵の動き_3
setDisp( spep_0 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 368 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 348 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 326 + OFFSET_X, 1, -354, -136.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -354, -136.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -195.1, -69 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -195.1, -69 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -56.6, -20.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -56.6, -20.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 25.1, 31.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 25.1, 31.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 82.1, 55.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 82.1, 55.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 99, 59.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 99, 59.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 102.2, 50.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 102.2, 50.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 89.1, 82 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 89.1, 82 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 106.1, 34.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 106.1, 34.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 123.2, 104.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 123.2, 104.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 129.2, 63.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 129.2, 63.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 135.4, 94.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 135.4, 94.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 157.5, 92.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 157.5, 92.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 157.4, 102.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 157.4, 102.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 161.7, 105.3 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 161.7, 105.3 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 151.7, 115.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 151.7, 115.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 162.4, 102.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 162.4, 102.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 162.4, 112.9 , 0 );

setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 326 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -15 );

setBlendColor( spep_0 + 348 + OFFSET_X, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_0 + 352 + OFFSET_X, 1, 3, 1, 1, 1, 0.5 );
setBlendColor( spep_0 + 356 + OFFSET_X, 1, 3, 1, 1, 1, 0.6 );
setBlendColor( spep_0 + 358 + OFFSET_X, 1, 3, 1, 1, 1, 0.7 );
setBlendColor( spep_0 + 360 + OFFSET_X, 1, 3, 1, 1, 1, 0.8 );
setBlendColor( spep_0 + 366 + OFFSET_X, 1, 3, 1, 1, 1, 0.9 );
setBlendColor( spep_0 + 368 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き_4
setDisp( spep_0 + 460 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 494 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 460 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 460 + OFFSET_X, 1, 24.9, 24 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 24.9, 24 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 26.7, 11.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 26.7, 11.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 30.3, -12.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 30.3, -12.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 32, -25.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 32, -25.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 10.4, -45 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 10.4, -45 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -0.3, -54.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -0.3, -54.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -28.1, -41 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -28.1, -41 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -42, -34 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -42, -34 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -48.6, 6 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -48.6, 6 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -41.2, 39.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -41.2, 39.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 1.2, -0.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 1.2, -0.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 1.2, -50.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 1.2, -50.5 , 0 );

setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 460 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, 55.6 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, 55.6 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 95 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, 95 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, 130 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 130 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 170 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 170 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 180 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 180 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 230 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, 230 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 260 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, 260 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 0 );

--敵の動き_5
setDisp( spep_0 + 516 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 596 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 516 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 528 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 546 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 548 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 552 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 556 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 562 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 566 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 568 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 572 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 578 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 580 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 582 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 586 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 590 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 516 + OFFSET_X, 1, -55.4, -198.6 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -55.4, -198.6 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -55.4, -233.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -55.4, -233.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -51.4, -192.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -51.4, -192.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -55.4, -198.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -55.4, -198.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -51.4, -208.6 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -51.4, -208.6 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 122.1, -159.1 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 122.1, -159.1 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 167.1, -148.1 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 167.1, -148.1 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 197.1, -136.1 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 197.1, -136.1 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 213.8, -122.9 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 213.8, -122.9 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 226.3, -119.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 226.3, -119.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 233.7, -117.4 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 233.7, -117.4 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 241.8, -132.8 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 241.8, -132.8 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 247.3, -121.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 247.3, -121.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 241.9, -129.9 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 241.9, -129.9 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 305.9, -105.9 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 305.9, -105.9 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 301.9, -119.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 301.9, -119.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 221.9, -111.7 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 221.9, -111.7 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 241.9, -126.7 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 241.9, -126.7 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 251.9, -111.7 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 251.9, -111.7 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 251.9, -128.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 251.9, -128.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 241.9, -121.9 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 241.9, -121.9 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 241.9, -111.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 241.9, -111.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 285.9, -125.2 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 285.9, -125.2 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 201.9, -125.2 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 201.9, -125.2 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 201.9, -134.1 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 201.9, -134.1 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 241.9, -113 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 241.9, -113 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 253.9, -113 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 253.9, -113 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 253.9, -124.6 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 253.9, -124.6 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 241.9, -107.6 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 241.9, -107.6 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 281.9, -134.6 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 281.9, -134.6 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 221.9, -107.6 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 221.9, -107.6 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 221.9, -121.1 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 221.9, -121.1 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 221.9, -107.6 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 221.9, -107.6 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 241.9, -117.1 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 241.9, -117.1 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 241.9, -103.6 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 241.9, -103.6 , 0 );

setScaleKey( spep_0 + 516 + OFFSET_X, 1, 4.0, 4.0 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 4.0, 4.0 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_0 + 516 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, -30 );

--敵の動き_6
setDisp( spep_0 + 678 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 732 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 688 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 678 + OFFSET_X, 1, 3.9, -20 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 3.9, -20 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -16.1, -30 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -16.1, -30 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -1.1, -20 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -1.1, -20 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 3.9, -3.6 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 3.9, -3.6 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 10.9, -14.6 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 10.9, -14.6 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 6.9, 11.1 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, 6.9, 11.1 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -3.1, -25.9 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -3.1, -25.9 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -3.1, -11.3 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -3.1, -11.3 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -5.1, 24.7 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -5.1, 24.7 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 4.8, 1.9 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, 4.8, 1.9 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -8.2, 31.9 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -8.2, 31.9 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, 5.8, 6.4 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, 5.8, 6.4 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, 5.9, 59.2 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 5.9, 59.2 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 5.9, 78.2 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, 5.9, 78.2 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, 1.8, 72.7 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, 1.8, 72.7 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 4.8, 114.7 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 4.8, 114.7 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 8.7, 141.8 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 8.7, 141.8 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -1.2, 188 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -1.2, 188 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -3.2, 189 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -3.2, 189 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -4.3, 255.1 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -4.3, 255.1 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 6.4, 350.9 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 6.4, 350.9 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -2.7, 506.6 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -2.7, 506.6 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -3.2, 796.4 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -3.2, 796.4 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -3.5, 1009.9 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -3.5, 1009.9 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -3.5, 973.9 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -3.5, 973.9 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 0.5, 1081.3 , 0 );

setScaleKey( spep_0 + 678 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 691 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 678 + OFFSET_X, 1, -120 );
setRotateKey( spep_0 + 687 + OFFSET_X, 1, -120 );
setRotateKey( spep_0 + 688 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, -45 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 286, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 54 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 286, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 155 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 288, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 160 );

--振り返る
SE005 = playSeVer2( spep_0 + 44, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 82 );
setPitch( spep_0 + 44, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );

--画面遷移
SE006 = playSeVer2( spep_0 + 116, 1232, "", 0, 0, 0, -1);

--顔アップ
SE007 = playSeVer2( spep_0 + 180, 1237, "",spep_0 + 278, 0, 58, -1);
setStartTimeMs( SE007,  167 );
setPitch( spep_0 + 180, SE007, -300 );
setTimeStretch( SE007, 0.73, 30, 4 );
setSeVolumeByWorkId( spep_0 + 180, SE007, 130 );
SE008 = playSeVer2( spep_0 + 182, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE008, 43 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 200;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

--敵飛んでくる
SE009 = playSeVer2( spep_0 + 214, 1117, "", 0, 0, 0, -1);

--避ける
SE010 = playSeVer2( spep_0 + 234, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE010, 56 );

--回り込んでパンチ
SE011 = playSeVer2( spep_0 + 262, 1359, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 266, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 266, 1187, "",spep_0 + 308, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 266, SE013, 82 );

--蹴り飛ばす
SE014 = playSeVer2( spep_0 + 296, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 296, 1187, "", 0, 0, 0, -1);

--岩激突
SE016 = playSeVer2( spep_0 + 328, 1061, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 336, 1024, "", 0, 0, 0, -1);

--光って弾ける
SE018 = playSeVer2( spep_0 + 366, 1042, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 380, 1026, "", 0, 0, 0, -1);

--向かってくる
SE020 = playSeVer2( spep_0 + 384, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 384, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE021, 48 );
setTimeStretch( SE021, 1.65, 30, 4 );
SE022 = playSeVer2( spep_0 + 432, 1278, "",spep_0 + 536, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 432, SE022, 74 );

--振りかぶる
SE023 = playSeVer2( spep_0 + 488, 1116, "",spep_0 + 534, 0, 22, -1);
SE024 = playSeVer2( spep_0 + 492, 1004, "", 0, 0, 0, -1);

--パンチヒット
SE025 = playSeVer2( spep_0 + 510, 1359, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 514, 1187, "", 0, 0, 0, -1);

--連打
SE027 = playSeVer2( spep_0 + 528, 1189, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 528, SE027, 158 );
SE028 = playSeVer2( spep_0 + 536, 1110, "", 0, 0, 0, 0.5);
SE029 = playSeVer2( spep_0 + 542, 1110, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_0 + 542, 1359, "",spep_0 + 578, 0, 14, 0.5);
SE031 = playSeVer2( spep_0 + 546, 1110, "", 0, 0, 0, 0.5);
SE032 = playSeVer2( spep_0 + 552, 1110, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 552, SE032);
SE033 = playSeVer2( spep_0 + 552, 1359, "",spep_0 + 586, 0, 12, 0.5);
setSeVolumeByWorkId( spep_0 + 552, SE033, 76 );
SE034 = playSeVer2( spep_0 + 558, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 558, SE034, 78 );
SE035 = playSeVer2( spep_0 + 564, 1110, "", 0, 0, 0, 0.5);
SE036 = playSeVer2( spep_0 + 566, 1359, "",spep_0 + 600, 0, 12, 0.5);
setSeVolumeByWorkId( spep_0 + 566, SE036, 76 );
SE037 = playSeVer2( spep_0 + 572, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 572, SE037, 77 );
SE038 = playSeVer2( spep_0 + 578, 1110, "", 0, 0, 0, 0.5);
SE039 = playSeVer2( spep_0 + 592, 1425, "",spep_0 + 700, 0, 16, 0.5);
setPitch( spep_0 + 592, SE039, -300 );
setTimeStretch( SE039, 0.8, 30, 4 );
SE040 = playSeVer2( spep_0 + 596, 1359, "",spep_0 + 630, 0, 12, 0.5);
setSeVolumeByWorkId( spep_0 + 596, SE040, 81 );
SE041 = playSeVer2( spep_0 + 606, 1359, "",spep_0 + 642, 0, 14, 0.5);
setSeVolumeByWorkId( spep_0 + 606, SE041, 71 );
SE042 = playSeVer2( spep_0 + 642, 1359, "",spep_0 + 678, 0, 14, 0.5);
setSeVolumeByWorkId( spep_0 + 642, SE042, 67 );

--吹き飛ばす
SE043 = playSeVer2( spep_0 + 676, 1258, "",spep_0 + 738, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 676, SE043, 67 );
SE044 = playSeVer2( spep_0 + 684, 1359, "",spep_0 + 718, 0, 12, -1);
SE045 = playSeVer2( spep_0 + 684, 1187, "",spep_0 + 736, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 732

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--オーラ
SE048 = playSeVer2( spep_1 + 84, 1176, "",spep_2 + 104, 0, 14, -1);
setPitch( spep_1 + 84, SE048, -500 );
setTimeStretch( SE048, 0.67, 30, 4 );
SE049 = playSeVer2( spep_1 + 84, 1407, "",spep_2 + 110, 0, 16, -1);
SE050 = playSeVer2( spep_1 + 84, 1181, "",spep_2 + 114, 0, 24, -1);

--かめはめ波溜め
SE047 = playSeVer2( spep_1 + 90 , 1210, "",spep_2 + 160, 44, 60, -1);
setSeVolumeByWorkId( spep_1 + 90, SE047, 120 );
setStartTimeMs( SE047,  967 );

--吹き飛ばす
SE051 = playSeVer2( spep_1 + 90, 1004, "", 0, 0, 0, -1);
-------------------------------------------------
-- かめはめ波構え〜KO
-------------------------------------------------
MAX_FRAME_2 = 420;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- かめはめ波構え〜KO ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- かめはめ波構え〜KO(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

spep_3 = spep_2 + MAX_FRAME_2-36;

KO = entryEffectLife( spep_3 + 0, SP_05, 90,0x100, -1, 0, 0, 0); -- かめはめ波構え〜KO(背景) ef_002b
setEffMoveKey( spep_3 + 0, KO, 0, 0 , 0);
setEffMoveKey( spep_3 + 90, KO, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, KO, 1.0, 1.0);
setEffScaleKey( spep_3 + 90, KO, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, KO, 0);
setEffRotateKey( spep_3 + 90, KO, 0);
setEffAlphaKey( spep_3 + 0, KO, 0);
setEffAlphaKey( spep_3 + 33, KO, 0);
setEffAlphaKey( spep_3 + 34, KO, 255);
setEffAlphaKey( spep_3 + 90, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 156 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 270 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 156 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 158 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 156 + OFFSET_X, 1, 28.8, 9.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 28.8, 9.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 25, 2.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 25, 2.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 21.2, -5.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 21.2, -5.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 34.8, 11.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 34.8, 11.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 26.9, 2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 26.9, 2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 36.5, 16.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 36.5, 16.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 30.3, 0.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 30.3, 0.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 75.8, 26.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 75.8, 26.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 76.6, 30.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 76.6, 30.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 112, 34.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 112, 34.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 110, 64.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 110, 64.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 179.7, 51.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 179.7, 51.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 165.9, 69.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 165.9, 69.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 173.5, 60 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 173.5, 60 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 170.9, 75.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 170.9, 75.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 170.2, 75.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 170.2, 75.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 169.5, 74.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 169.5, 74.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 168.8, 73.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 168.8, 73.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -3.7, -21.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -3.7, -21.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 11, -20.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 11, -20.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -2.2, 12.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -2.2, 12.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 18.4, 12.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 18.4, 12.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -0.2, -63.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -0.2, -63.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -0.7, -38.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -0.7, -38.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 3.8, -44.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 3.8, -44.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -4.7, -38.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -4.7, -38.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -6.3, -7.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -6.3, -7.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 3.2, -10.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 3.2, -10.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -1.3, 20.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -1.3, 20.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 10.1, -38.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 10.1, -38.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 21.6, -17.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 21.6, -17.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 23.1, -37.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 23.1, -37.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 18.6, -16.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 18.6, -16.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 9, -11.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 9, -11.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 30.5, 1.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 30.5, 1.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 38, -27.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 38, -27.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 33.5, -21 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 33.5, -21 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 41.9, -40.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 41.9, -40.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 43.4, -39.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 43.4, -39.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 44.9, 11.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 44.9, 11.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 54.3, -1.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 54.3, -1.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 65.8, -30.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 65.8, -30.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 61.3, -10 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 61.3, -10 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 58.8, 0.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 58.8, 0.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 70.2, 31.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 70.2, 31.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 71.7, 42.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 71.7, 42.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 79.2, -6.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 79.2, -6.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 74.7, 14.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 74.7, 14.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 79.7, -5.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 79.7, -5.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 83.7, -20.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 83.7, -20.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 76.7, -0.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 76.7, -0.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 79.7, 6.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 79.7, 6.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 69.7, -3.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 69.7, -3.8 , 0 );

setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 156 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -29.5 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -27.5 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -26.8 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, -25 );

setBlendColor( spep_2 + 158 + OFFSET_X, 1, 3, 0.56, 0.8, 1, 0.7 );
setBlendColor( spep_2 + 218 + OFFSET_X, 1, 3, 0.58, 0.81, 1, 0.73 );
setBlendColor( spep_2 + 220 + OFFSET_X, 1, 3, 0.6, 0.82, 1, 0.745 );
setBlendColor( spep_2 + 222 + OFFSET_X, 1, 3, 0.62, 0.83, 1, 0.76 );
setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 0.64, 0.84, 1, 0.775 );
setBlendColor( spep_2 + 226 + OFFSET_X, 1, 3, 0.66, 0.85, 1, 0.79 );
setBlendColor( spep_2 + 228 + OFFSET_X, 1, 3, 0.68, 0.86, 1, 0.805 );
setBlendColor( spep_2 + 230 + OFFSET_X, 1, 3, 0.7, 0.87, 1, 0.82 );
setBlendColor( spep_2 + 232 + OFFSET_X, 1, 3, 0.72, 0.88, 1, 0.835 );
setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 0.74, 0.89, 1, 0.85 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0.76, 0.90, 1, 0.865 );
setBlendColor( spep_2 + 238 + OFFSET_X, 1, 3, 0.78, 0.91, 1, 0.88 );
setBlendColor( spep_2 + 240 + OFFSET_X, 1, 3, 0.8, 0.92, 1, 0.895 );
setBlendColor( spep_2 + 242 + OFFSET_X, 1, 3, 0.82, 0.93, 1, 0.91 );
setBlendColor( spep_2 + 244 + OFFSET_X, 1, 3, 0.84, 0.94, 1, 0.925 );
setBlendColor( spep_2 + 246 + OFFSET_X, 1, 3, 0.86, 0.95, 1, 0.94 );
setBlendColor( spep_2 + 248 + OFFSET_X, 1, 3, 0.88, 0.96, 1, 0.955 );
setBlendColor( spep_2 + 250 + OFFSET_X, 1, 3, 0.9, 0.97, 1, 0.97 );
setBlendColor( spep_2 + 252 + OFFSET_X, 1, 3, 0.92, 0.98, 1, 0.985 );
setBlendColor( spep_2 + 254 + OFFSET_X, 1, 3, 0.94, 0.99, 1, 1 );
setBlendColor( spep_2 + 256 + OFFSET_X, 1, 3, 0.96, 1, 1, 1 );
setBlendColor( spep_2 + 258 + OFFSET_X, 1, 3, 1, 1, 1, 1 );
setBlendColor( spep_2 + 270 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--かめはめ波溜め
SE052 = playSeVer2( spep_2 + 16, 1209, "",spep_2 + 154, 0, 64, -1);

--顔アップ
SE053 = playSeVer2( spep_2 + 48, 1116, "",spep_2 + 100, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 48, SE053, 166 );

--かめはめ波発射
SE054 = playSeVer2( spep_2 + 84, 1223, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 84, 1213, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 84, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 88, 1284, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 140, 1146, "", 0, 0, 0, -1);

--気弾中
SE059 = playSeVer2( spep_2 + 188, 1211, "",spep_2 + 342, 0, 28, -1);

--かめはめ波飛んでいく
SE060 = playSeVer2( spep_2 + 258, 1258, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 262, 1161, "",spep_2 + 360, 0, 28, -1);

--ラスト爆発
SE062 = playSeVer2( spep_2 + 310, 1024, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 318, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_2 + 390 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

hideKoScreen();
dealDamage( spep_2 + 292); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 420F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 悟空振り向く〜敵を手前に吹き飛ばす
-------------------------------------------------
MAX_FRAME_0 = 732;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 悟空振り向く〜敵を手前に吹き飛ばす ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 悟空振り向く〜敵を手前に吹き飛ばす(背景) ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -35, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -35, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -35, 515.5 , 0 );
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

-- ** 敵の動き ** --
--敵の動き_1
setDisp( spep_0 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 162 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 90 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 126 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 90 + OFFSET_X, 1, -257.1, 47.5 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -257.1, 47.5 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -254.6, 47.5 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -254.6, 47.5 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -252.2, 47.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -252.2, 47.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -249.7, 47.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -249.7, 47.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -247.3, 47.6 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -247.3, 47.6 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -244.8, 47.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -244.8, 47.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -242.4, 47.6 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -242.4, 47.6 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -239.9, 47.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -239.9, 47.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -237.5, 47.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -237.5, 47.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -270.6, 133.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -270.6, 133.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -266.1, 133.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -266.1, 133.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -261.6, 133.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -261.6, 133.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -257.1, 133.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -257.1, 133.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -252.6, 133.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -252.6, 133.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -248.2, 133.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -248.2, 133.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -243.7, 133.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -243.7, 133.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -239.2, 133.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -239.2, 133.7 , 0 );

setScaleKey( spep_0 + 90 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.3, 0.3 );

setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 0 );

--敵の動き_2
setDisp( spep_0 + 220 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 220 + OFFSET_X, 1, 116 );
changeAnime( spep_0 + 266 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 274 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 302 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 220 + OFFSET_X, 1, -298.1, -214.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -298.1, -214.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -297.8, -214.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -297.8, -214.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -296.8, -214.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -296.8, -214.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -292.9, -214.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -292.9, -214.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -287.1, -214.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -287.1, -214.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -273.2, -214.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -273.2, -214.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -247.4, -214.1 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -247.4, -214.1 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -195.8, -214.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -195.8, -214.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -144.1, -214.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -144.1, -214.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -122.8, -214.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -122.8, -214.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -114.3, -214.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -114.3, -214.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -106.9, -214.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -106.9, -214.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -104.6, -214.1 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -104.6, -214.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -104, -214 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -104, -214 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -104, -244 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -104, -244 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -108, -214 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -108, -214 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 77.9, 36.9 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 77.9, 36.9 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 75.5, 36.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 75.5, 36.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 72.6, 36.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 72.6, 36.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 70.6, 36.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 70.6, 36.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 70.3, 36.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 70.3, 36.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -83.7, -97.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -83.7, -97.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -292.7, -224.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -292.7, -224.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -294.5, -252.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -294.5, -252.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -290.9, -232.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -290.9, -232.2 , 0 );

setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 220 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -60 );

--敵の動き_3
setDisp( spep_0 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 368 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 348 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 326 + OFFSET_X, 1, 354, -136.1 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 354, -136.1 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 195.1, -69 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 195.1, -69 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 56.6, -20.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 56.6, -20.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -25.1, 31.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -25.1, 31.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -82.1, 55.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -82.1, 55.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -99, 59.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -99, 59.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -102.2, 50.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -102.2, 50.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -89.1, 82 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -89.1, 82 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -106.1, 34.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -106.1, 34.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -123.2, 104.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -123.2, 104.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -129.2, 63.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -129.2, 63.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -135.4, 94.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -135.4, 94.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -157.5, 92.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -157.5, 92.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -157.4, 102.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -157.4, 102.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -161.7, 105.3 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -161.7, 105.3 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -151.7, 115.3 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -151.7, 115.3 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -162.4, 102.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -162.4, 102.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -162.4, 112.9 , 0 );

setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 0.63, 0.63 );

setRotateKey( spep_0 + 326 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 15 );

setBlendColor( spep_0 + 348 + OFFSET_X, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_0 + 352 + OFFSET_X, 1, 3, 1, 1, 1, 0.5 );
setBlendColor( spep_0 + 356 + OFFSET_X, 1, 3, 1, 1, 1, 0.6 );
setBlendColor( spep_0 + 358 + OFFSET_X, 1, 3, 1, 1, 1, 0.7 );
setBlendColor( spep_0 + 360 + OFFSET_X, 1, 3, 1, 1, 1, 0.8 );
setBlendColor( spep_0 + 366 + OFFSET_X, 1, 3, 1, 1, 1, 0.9 );
setBlendColor( spep_0 + 368 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き_4
setDisp( spep_0 + 460 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 494 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 460 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 460 + OFFSET_X, 1, -24.9, 24 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -24.9, 24 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -26.7, 11.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -26.7, 11.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -30.3, -12.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -30.3, -12.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -32, -25.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -32, -25.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -10.4, -45 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -10.4, -45 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 0.3, -54.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 0.3, -54.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 28.1, -41 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 28.1, -41 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 42, -34 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 42, -34 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 48.6, 6 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 48.6, 6 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 41.2, 39.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 41.2, 39.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -1.2, -0.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -1.2, -0.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -1.2, -50.5 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -1.2, -50.5 , 0 );

setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 460 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -15 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -70 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -70 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -95 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -95 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -130 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -130 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -170 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -170 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -180 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -180 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -230 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -230 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -260 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -260 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 0 );

--敵の動き_5
setDisp( spep_0 + 516 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 596 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 516 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 528 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 546 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 548 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 552 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 556 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 562 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 566 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 568 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 572 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 578 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 580 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 582 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 586 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 590 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 516 + OFFSET_X, 1, 55.4, -198.6 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 55.4, -198.6 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 55.4, -233.1 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 55.4, -233.1 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 51.4, -192.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 51.4, -192.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 55.4, -198.6 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 55.4, -198.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 51.4, -208.6 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 51.4, -208.6 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -122.1, -159.1 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -122.1, -159.1 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -167.1, -148.1 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -167.1, -148.1 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -197.1, -136.1 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -197.1, -136.1 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -213.8, -122.9 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -213.8, -122.9 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -226.3, -119.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -226.3, -119.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -233.7, -117.4 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -233.7, -117.4 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -241.8, -132.8 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -241.8, -132.8 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -247.3, -121.8 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -247.3, -121.8 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -241.9, -129.9 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -241.9, -129.9 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -305.9, -105.9 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -305.9, -105.9 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -301.9, -119.9 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -301.9, -119.9 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -221.9, -111.7 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -221.9, -111.7 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -241.9, -126.7 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -241.9, -126.7 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -251.9, -111.7 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -251.9, -111.7 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -251.9, -128.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -251.9, -128.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -241.9, -121.9 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -241.9, -121.9 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -241.9, -111.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -241.9, -111.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -285.9, -125.2 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -285.9, -125.2 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -201.9, -125.2 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -201.9, -125.2 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -201.9, -134.1 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -201.9, -134.1 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -241.9, -113 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -241.9, -113 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -253.9, -113 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -253.9, -113 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -253.9, -124.6 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -253.9, -124.6 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -241.9, -107.6 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -241.9, -107.6 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -281.9, -134.6 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -281.9, -134.6 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -221.9, -107.6 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -221.9, -107.6 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -221.9, -121.1 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -221.9, -121.1 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -221.9, -107.6 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -221.9, -107.6 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -241.9, -117.1 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -241.9, -117.1 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -241.9, -103.6 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -241.9, -103.6 , 0 );

setScaleKey( spep_0 + 516 + OFFSET_X, 1, 4.0, 4.0 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 4.0, 4.0 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 535 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 536 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.7, 1.7 );

setRotateKey( spep_0 + 516 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 527 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 528 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 545 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 546 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 547 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 548 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 551 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 552 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 571 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 572 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 577 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 578 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 579 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 580 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 581 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 582 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 585 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 586 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 589 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 590 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 596 + OFFSET_X, 1, 30 );

--敵の動き_6
setDisp( spep_0 + 678 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 732 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 688 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 678 + OFFSET_X, 1, -3.9, -20 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -3.9, -20 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 16.1, -30 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 16.1, -30 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 1.1, -20 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 1.1, -20 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -3.9, -3.6 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -3.9, -3.6 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -10.9, -14.6 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -10.9, -14.6 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -6.9, 11.1 , 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -6.9, 11.1 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 3.1, -25.9 , 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, 3.1, -25.9 , 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, 3.1, -11.3 , 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, 3.1, -11.3 , 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, 5.1, 24.7 , 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, 5.1, 24.7 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -4.8, 1.9 , 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -4.8, 1.9 , 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, 8.2, 31.9 , 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, 8.2, 31.9 , 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -5.8, 6.4 , 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -5.8, 6.4 , 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -5.9, 59.2 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -5.9, 59.2 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -5.9, 78.2 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -5.9, 78.2 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -1.8, 72.7 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -1.8, 72.7 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -4.8, 114.7 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -4.8, 114.7 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -8.7, 141.8 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -8.7, 141.8 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 1.2, 188 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 1.2, 188 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 3.2, 189 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 3.2, 189 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 4.3, 255.1 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 4.3, 255.1 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -6.4, 350.9 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -6.4, 350.9 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 2.7, 506.6 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 2.7, 506.6 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 3.2, 796.4 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 3.2, 796.4 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 3.5, 1009.9 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 3.5, 1009.9 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 3.5, 973.9 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 3.5, 973.9 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -0.5, 1081.3 , 0 );

setScaleKey( spep_0 + 678 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 691 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 699 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 678 + OFFSET_X, 1, 120 );
setRotateKey( spep_0 + 687 + OFFSET_X, 1, 120 );
setRotateKey( spep_0 + 688 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, 45 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 286, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 54 );
setPitch( spep_0 + 0, SE001, -500 );
setTimeStretch( SE001, 0.67, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 286, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 155 );
SE003 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 288, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 160 );

--振り返る
SE005 = playSeVer2( spep_0 + 44, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 82 );
setPitch( spep_0 + 44, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );

--画面遷移
SE006 = playSeVer2( spep_0 + 116, 1232, "", 0, 0, 0, -1);

--顔アップ
SE007 = playSeVer2( spep_0 + 180, 1237, "",spep_0 + 278, 0, 58, -1);
setStartTimeMs( SE007,  167 );
setPitch( spep_0 + 180, SE007, -300 );
setTimeStretch( SE007, 0.73, 30, 4 );
setSeVolumeByWorkId( spep_0 + 180, SE007, 130 );
SE008 = playSeVer2( spep_0 + 182, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE008, 43 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 200;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    endPhase( SP_dodge+10);

    do return end
    else end

-----------------------------
--回避しなかった場合
-----------------------------

--敵飛んでくる
SE009 = playSeVer2( spep_0 + 214, 1117, "", 0, 0, 0, -1);

--避ける
SE010 = playSeVer2( spep_0 + 234, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE010, 56 );

--回り込んでパンチ
SE011 = playSeVer2( spep_0 + 262, 1359, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 266, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 266, 1187, "",spep_0 + 308, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 266, SE013, 82 );

--蹴り飛ばす
SE014 = playSeVer2( spep_0 + 296, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 296, 1187, "", 0, 0, 0, -1);

--岩激突
SE016 = playSeVer2( spep_0 + 328, 1061, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 336, 1024, "", 0, 0, 0, -1);

--光って弾ける
SE018 = playSeVer2( spep_0 + 366, 1042, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 380, 1026, "", 0, 0, 0, -1);

--向かってくる
SE020 = playSeVer2( spep_0 + 384, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 384, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE021, 48 );
setTimeStretch( SE021, 1.65, 30, 4 );
SE022 = playSeVer2( spep_0 + 432, 1278, "",spep_0 + 536, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 432, SE022, 74 );

--振りかぶる
SE023 = playSeVer2( spep_0 + 488, 1116, "",spep_0 + 534, 0, 22, -1);
SE024 = playSeVer2( spep_0 + 492, 1004, "", 0, 0, 0, -1);

--パンチヒット
SE025 = playSeVer2( spep_0 + 510, 1359, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 514, 1187, "", 0, 0, 0, -1);

--連打
SE027 = playSeVer2( spep_0 + 528, 1189, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 528, SE027, 158 );
SE028 = playSeVer2( spep_0 + 536, 1110, "", 0, 0, 0, 0.5);
SE029 = playSeVer2( spep_0 + 542, 1110, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_0 + 542, 1359, "",spep_0 + 578, 0, 14, 0.5);
SE031 = playSeVer2( spep_0 + 546, 1110, "", 0, 0, 0, 0.5);
SE032 = playSeVer2( spep_0 + 552, 1110, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 552, SE032);
SE033 = playSeVer2( spep_0 + 552, 1359, "",spep_0 + 586, 0, 12, 0.5);
setSeVolumeByWorkId( spep_0 + 552, SE033, 76 );
SE034 = playSeVer2( spep_0 + 558, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 558, SE034, 78 );
SE035 = playSeVer2( spep_0 + 564, 1110, "", 0, 0, 0, 0.5);
SE036 = playSeVer2( spep_0 + 566, 1359, "",spep_0 + 600, 0, 12, 0.5);
setSeVolumeByWorkId( spep_0 + 566, SE036, 76 );
SE037 = playSeVer2( spep_0 + 572, 1110, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 572, SE037, 77 );
SE038 = playSeVer2( spep_0 + 578, 1110, "", 0, 0, 0, 0.5);
SE039 = playSeVer2( spep_0 + 592, 1425, "",spep_0 + 700, 0, 16, 0.5);
setPitch( spep_0 + 592, SE039, -300 );
setTimeStretch( SE039, 0.8, 30, 4 );
SE040 = playSeVer2( spep_0 + 596, 1359, "",spep_0 + 630, 0, 12, 0.5);
setSeVolumeByWorkId( spep_0 + 596, SE040, 81 );
SE041 = playSeVer2( spep_0 + 606, 1359, "",spep_0 + 642, 0, 14, 0.5);
setSeVolumeByWorkId( spep_0 + 606, SE041, 71 );
SE042 = playSeVer2( spep_0 + 642, 1359, "",spep_0 + 678, 0, 14, 0.5);
setSeVolumeByWorkId( spep_0 + 642, SE042, 67 );

--吹き飛ばす
SE043 = playSeVer2( spep_0 + 676, 1258, "",spep_0 + 738, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 676, SE043, 67 );
SE044 = playSeVer2( spep_0 + 684, 1359, "",spep_0 + 718, 0, 12, -1);
SE045 = playSeVer2( spep_0 + 684, 1187, "",spep_0 + 736, 0, 8, -1);
-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 732

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--オーラ
SE048 = playSeVer2( spep_1 + 84, 1176, "",spep_2 + 104, 0, 14, -1);
setPitch( spep_1 + 84, SE048, -500 );
setTimeStretch( SE048, 0.67, 30, 4 );
SE049 = playSeVer2( spep_1 + 84, 1407, "",spep_2 + 110, 0, 16, -1);
SE050 = playSeVer2( spep_1 + 84, 1181, "",spep_2 + 114, 0, 24, -1);

--かめはめ波溜め
SE047 = playSeVer2( spep_1 + 90 , 1210, "",spep_2 + 160, 44, 60, -1);
setSeVolumeByWorkId( spep_1 + 90, SE047, 120 );
setStartTimeMs( SE047,  967 );

--吹き飛ばす
SE051 = playSeVer2( spep_1 + 90, 1004, "", 0, 0, 0, -1);

-------------------------------------------------
-- かめはめ波構え〜KO
-------------------------------------------------
MAX_FRAME_2 = 420;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- かめはめ波構え〜KO ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- かめはめ波構え〜KO(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

spep_3 = spep_2 + MAX_FRAME_2-36;

KO = entryEffectLife( spep_3 + 0, SP_05, 90,0x100, -1, 0, 0, 0); -- かめはめ波構え〜KO(背景) ef_002b
setEffMoveKey( spep_3 + 0, KO, 0, 0 , 0);
setEffMoveKey( spep_3 + 90, KO, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, KO, -1.0, 1.0);
setEffScaleKey( spep_3 + 90, KO, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, KO, 0);
setEffRotateKey( spep_3 + 90, KO, 0);
setEffAlphaKey( spep_3 + 0, KO, 0);
setEffAlphaKey( spep_3 + 33, KO, 0);
setEffAlphaKey( spep_3 + 34, KO, 255);
setEffAlphaKey( spep_3 + 90, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_2 + 156 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 270 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 156 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 158 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 198 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 156 + OFFSET_X, 1, -28.8, 9.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -28.8, 9.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -25, 2.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -25, 2.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -21.2, -5.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -21.2, -5.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -34.8, 11.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -34.8, 11.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -26.9, 2 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -26.9, 2 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -36.5, 16.7 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -36.5, 16.7 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -30.3, 0.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -30.3, 0.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -75.8, 26.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -75.8, 26.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -76.6, 30.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -76.6, 30.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -112, 34.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -112, 34.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -110, 64.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -110, 64.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -179.7, 51.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -179.7, 51.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -165.9, 69.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -165.9, 69.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -173.5, 60 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -173.5, 60 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -170.9, 75.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -170.9, 75.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -170.2, 75.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -170.2, 75.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -169.5, 74.5 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -169.5, 74.5 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -168.8, 73.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -168.8, 73.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 3.7, -21.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 3.7, -21.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -11, -20.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -11, -20.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 2.2, 12.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 2.2, 12.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -18.4, 12.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -18.4, 12.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 0.2, -63.5 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 0.2, -63.5 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 0.7, -38.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 0.7, -38.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -3.8, -44.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -3.8, -44.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 4.7, -38.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 4.7, -38.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 6.3, -7.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 6.3, -7.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -3.2, -10.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -3.2, -10.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 1.3, 20.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 1.3, 20.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -10.1, -38.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -10.1, -38.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -21.6, -17.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -21.6, -17.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -23.1, -37.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -23.1, -37.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -18.6, -16.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -18.6, -16.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -9, -11.4 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -9, -11.4 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -30.5, 1.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -30.5, 1.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -38, -27.8 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -38, -27.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -33.5, -21 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -33.5, -21 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -41.9, -40.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -41.9, -40.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -43.4, -39.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -43.4, -39.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -44.9, 11.5 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -44.9, 11.5 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -54.3, -1.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -54.3, -1.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -65.8, -30.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -65.8, -30.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -61.3, -10 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -61.3, -10 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -58.8, 0.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -58.8, 0.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -70.2, 31.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -70.2, 31.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -71.7, 42.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -71.7, 42.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -79.2, -6.7 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -79.2, -6.7 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -74.7, 14.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -74.7, 14.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -79.7, -5.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -79.7, -5.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -83.7, -20.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -83.7, -20.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -76.7, -0.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -76.7, -0.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -79.7, 6.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -79.7, 6.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -69.7, -3.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -69.7, -3.8 , 0 );

setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 156 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 27 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 25 );

setBlendColor( spep_2 + 158 + OFFSET_X, 1, 3, 0.56, 0.8, 1, 0.7 );
setBlendColor( spep_2 + 218 + OFFSET_X, 1, 3, 0.58, 0.81, 1, 0.73 );
setBlendColor( spep_2 + 220 + OFFSET_X, 1, 3, 0.6, 0.82, 1, 0.745 );
setBlendColor( spep_2 + 222 + OFFSET_X, 1, 3, 0.62, 0.83, 1, 0.76 );
setBlendColor( spep_2 + 224 + OFFSET_X, 1, 3, 0.64, 0.84, 1, 0.775 );
setBlendColor( spep_2 + 226 + OFFSET_X, 1, 3, 0.66, 0.85, 1, 0.79 );
setBlendColor( spep_2 + 228 + OFFSET_X, 1, 3, 0.68, 0.86, 1, 0.805 );
setBlendColor( spep_2 + 230 + OFFSET_X, 1, 3, 0.7, 0.87, 1, 0.82 );
setBlendColor( spep_2 + 232 + OFFSET_X, 1, 3, 0.72, 0.88, 1, 0.835 );
setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 0.74, 0.89, 1, 0.85 );
setBlendColor( spep_2 + 236 + OFFSET_X, 1, 3, 0.76, 0.90, 1, 0.865 );
setBlendColor( spep_2 + 238 + OFFSET_X, 1, 3, 0.78, 0.91, 1, 0.88 );
setBlendColor( spep_2 + 240 + OFFSET_X, 1, 3, 0.8, 0.92, 1, 0.895 );
setBlendColor( spep_2 + 242 + OFFSET_X, 1, 3, 0.82, 0.93, 1, 0.91 );
setBlendColor( spep_2 + 244 + OFFSET_X, 1, 3, 0.84, 0.94, 1, 0.925 );
setBlendColor( spep_2 + 246 + OFFSET_X, 1, 3, 0.86, 0.95, 1, 0.94 );
setBlendColor( spep_2 + 248 + OFFSET_X, 1, 3, 0.88, 0.96, 1, 0.955 );
setBlendColor( spep_2 + 250 + OFFSET_X, 1, 3, 0.9, 0.97, 1, 0.97 );
setBlendColor( spep_2 + 252 + OFFSET_X, 1, 3, 0.92, 0.98, 1, 0.985 );
setBlendColor( spep_2 + 254 + OFFSET_X, 1, 3, 0.94, 0.99, 1, 1 );
setBlendColor( spep_2 + 256 + OFFSET_X, 1, 3, 0.96, 1, 1, 1 );
setBlendColor( spep_2 + 258 + OFFSET_X, 1, 3, 1, 1, 1, 1 );
setBlendColor( spep_2 + 272 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--かめはめ波溜め
SE052 = playSeVer2( spep_2 + 16, 1209, "",spep_2 + 154, 0, 64, -1);

--顔アップ
SE053 = playSeVer2( spep_2 + 48, 1116, "",spep_2 + 100, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 48, SE053, 166 );

--かめはめ波発射
SE054 = playSeVer2( spep_2 + 84, 1223, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 84, 1213, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 84, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 88, 1284, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 140, 1146, "", 0, 0, 0, -1);

--気弾中
SE059 = playSeVer2( spep_2 + 188, 1211, "",spep_2 + 342, 0, 28, -1);

--かめはめ波飛んでいく
SE060 = playSeVer2( spep_2 + 258, 1258, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_2 + 262, 1161, "",spep_2 + 360, 0, 28, -1);

--ラスト爆発
SE062 = playSeVer2( spep_2 + 310, 1024, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_2 + 318, 1067, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_2 + 390 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

hideKoScreen();
dealDamage( spep_2 + 292); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 420F

end