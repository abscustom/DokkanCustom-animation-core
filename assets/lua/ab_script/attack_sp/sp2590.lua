--1027220:LR_合体ザマス_超必殺技：神の鉄槌
--sp_effect_b1_00263
--sp2590

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162146 --突進〜高速移動で現れるザマス ef_001
SP_02 = 162147 --突進〜高速移動で現れるザマス ef_001b
SP_03 = 162148 --右腕を振りかぶる〜フィニッシュ ef_002
SP_04 = 162149 --右腕を振りかぶる〜フィニッシュ ef_002b

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
-- 突進〜高速移動で現れるザマス(412F)
-------------------------------------------------
MAX_FRAME_0 = 412;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --突進〜高速移動で現れるザマス ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --突進〜高速移動で現れるザマス ef_001b
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
spep_x = spep_0 + 2;
  
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -20, 515.5 , 0 );
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
setDisp( spep_0 + 126 + OFFSET_X, 1, 1);
setDisp( spep_0 + 228 + OFFSET_X, 1, 0);
setDisp( spep_0 + 280 + OFFSET_X, 1, 1);
setDisp( spep_0 + 320 + OFFSET_X, 1, 0);
setDisp( spep_0 + 360 + OFFSET_X, 1, 1);
setDisp( spep_0 + 414 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 126 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 148 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 176 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 194 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 206 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 126 + OFFSET_X, 1, 97.7, -38.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 103.5, -32.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 103.1, -32.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 102.3, -31.8 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 96.4, -32.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 86.1, -32.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 83, -32.7 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 79.6, -32.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 76, -32.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 72.2, -32.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 68.1, -31.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 68.1, -31.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 141.3, -5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 141.3, -5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 119.8, -1.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 119.8, -1.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 133.6, 0.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 133.6, 0.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 122.9, 2.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 122.9, 2.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 124, 3.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 124, 3.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 124.8, 4.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 124.8, 4.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 125.2, 5.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 125.2, 5.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 125.4, 5.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 125.4, 5.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 167.5, 42.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 167.5, 42.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 144.4, 44.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 144.4, 44.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 163, 56.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 163, 56.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 150.9, 56.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 150.9, 56.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 152.5, 59.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 152.5, 59.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 153, 60.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 153, 60.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 163.8, 42.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 163.8, 42.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 139.2, 37.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 139.2, 37.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 155.8, 43.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 155.8, 43.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 143.6, 41.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 143.6, 41.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 145.3, 42.6 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 146.5, 43.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 147.5, 44.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 148, 44.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 148.2, 45 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 148.2, 45 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 178, 63.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 178, 63.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 150.1, 58.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 150.1, 58.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 166.7, 68.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 166.7, 68.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 152.5, 65.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 152.5, 65.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 153.1, 67.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 153.1, 67.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 153.3, 67.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 153.3, 67.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 165.5, 79.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 165.5, 79.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 142.2, 70.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 142.2, 70.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 160.5, 81.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 160.5, 81.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 149.1, 77.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 149.1, 77.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 151.8, 79.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 154, 81.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 155.8, 83.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 157, 84.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 157.7, 85.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 158, 85.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 158, 85.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -0.9, -143.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -0.9, -133.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -0.9, -124.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -0.9, -115.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -0.9, -106 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -0.9, -96.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -0.9, -87.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -0.9, -78.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -1.2, -86.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -1.2, -86.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 5.5, -52.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 5.5, -52.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -6.2, -21.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -6.2, -21.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -6.2, -24.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -6.2, -24.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -0.1, -13.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -0.1, -13.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -0.1, -9.6 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -0.1, -9.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -0.1, -6.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -0.1, -6.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 0, -3.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 0, -1.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 0, -0.8 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 0, -0.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 0, -0.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -12.6, -470.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -11.3, -427.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -10.1, -387 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -8.9, -348.7 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -7.8, -312.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -6.8, -279.2 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -5.9, -247.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -5, -219.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -4.2, -192.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -3.5, -168.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -2.9, -146.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -2.8, -143.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -2.7, -139.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -2.6, -136.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -2.5, -133.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -2.4, -130.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -2.3, -127.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -2.2, -124.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -2.1, -121.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -2, -118.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -2, -115.4 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -1.9, -112.7 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -1.8, -110 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -1.7, -107.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -1.7, -104.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -1.5, -102.1 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -1.5, -102.1 , 0 );

setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1.93, 1.93 );

setRotateKey( spep_0 + 126 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -34 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -15.5 );

setBlendColor( spep_0 + 126, 1, 0, 0, 0, 0, 0);
setBlendColor( spep_0 + 413, 1, 0, 0, 0, 0, 0);

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 0, 1344, "",spep_0 + 96, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );
SE003 = playSeVer2( spep_0 + 6, 1007, "", 0, 0, 0, -1);

--向かってくる
SE004 = playSeVer2( spep_0 + 98, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 104, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 104, 9, "",spep_0 + 162, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 104, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 47 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 138; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
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
--ラッシュ
SE008 = playSeVer2( spep_0 + 146, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 146, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 162, 1110, "",spep_0 + 182, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 162, 1153, "",spep_0 + 198, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 162, SE011, 79 );
SE012 = playSeVer2( spep_0 + 174, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1110, "",spep_0 + 194, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 192, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE014, 83 );
SE015 = playSeVer2( spep_0 + 192, 1169, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 204, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE016, 76 );

--振り返り回転
SE017 = playSeVer2( spep_0 + 230, 1116, "",spep_0 + 276, 0, 20, -1);
SE018 = playSeVer2( spep_0 + 234, 1190, "", 0, 8, 0, -1);
setStartTimeMs( SE018,  67 );
SE019 = playSeVer2( spep_0 + 236, 1004, "", 0, 0, 0, -1);

--空気斬
SE020 = playSeVer2( spep_0 + 244, 1212, "",spep_0 + 270, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 244, SE020, 65 );
SE021 = playSeVer2( spep_0 + 244, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE021, 123 );
SE022 = playSeVer2( spep_0 + 244, 1026, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 254, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE023, 108 );

--敵吹き飛ぶ
SE024 = playSeVer2( spep_0 + 280, 1258, "",spep_0 + 350, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 280, SE024, 69 );
SE025 = playSeVer2( spep_0 + 280, 1121, "",spep_0 + 330, 0, 12, -1);
SE027 = playSeVer2( spep_0 + 294, 1011, "", 0, 0, 0, -1);

--壁激突
SE028 = playSeVer2( spep_0 + 316, 1159, "",spep_0 + 414, 0, 14, -1);
SE029 = playSeVer2( spep_0 + 316, 1023, "",spep_0 + 416, 0, 12, -1);

--いわなだれ
SE026 = playSeVer2( spep_0 + 332, 1168, "",spep_0 + 426, 24, 12, -1);
setStartTimeMs( SE026,  700 );

--瞬間移動
SE030 = playSeVer2( spep_0 + 380, 1235, "",spep_0 + 432, 0, 20, -1);
SE031 = playSeVer2( spep_0 + 380, 1245, "",spep_0 + 426, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 380, SE031, 67 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 412F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 右腕を振りかぶる〜フィニッシュ(280F)
-------------------------------------------------
MAX_FRAME_2 = 280;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --右腕を振りかぶる〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); --右腕を振りかぶる〜フィニッシュ ef_002b
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
setDisp( spep_2 + 74 + OFFSET_X, 1, 1);
setDisp( spep_2 + 162 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 74 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 138 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, -57.8, -20 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -57.8, -20 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -57, -19.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -54.8, -18 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -51, -15.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -45.7, -12 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -38.9, -7.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 24.2, -53.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 24.2, -53.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 8.2, -156.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 8.2, -156.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 40.2, -211.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 40.2, -211.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 40.2, -69.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 40.2, -69.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 8.2, -43.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 8.2, -43.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 24.2, -65.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 24.2, -65.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 8.2, -88 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 8.2, -88 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 40.2, -62.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 40.2, -62.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 40.2, -100.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 40.2, -100.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 8.3, -74.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 8.3, -74.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 24.3, -96.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 24.3, -96.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 8.3, -118.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 8.3, -118.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 40.3, -93 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 40.3, -93 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 40.3, -131.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 40.3, -131.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 8.3, -105.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 8.3, -105.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 24.4, -127.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 24.4, -127.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 8.4, -149.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 8.4, -149.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 24.4, -139.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 24.4, -139.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 17.6, -168.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 17.6, -168.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 30.4, -178.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 30.4, -178.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 30.4, -213.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 30.4, -213.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 17.5, -469.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 17.5, -469.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 23.9, -745.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 23.9, -745.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 17.6, -832 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 17.6, -832 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 24.2, -911.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 24.2, -911.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 47.5, -159.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 47.5, -159.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 62, -181.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 76.6, -203 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 91.1, -224.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 105.7, -246.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 120.2, -268 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 134.7, -289.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 149.3, -311.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 163.8, -333.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 178.4, -354.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 192.9, -376.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 225.7, -416.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 225.7, -416.3 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 68.7 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 68.7 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 91.7 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 91.7 );

setBlendColor( spep_2 + 74, 1, 0, 0, 0, 0, 0);
setBlendColor( spep_2 + 86, 1, 0, 0, 0, 0, 0);
setBlendColor( spep_2 + 87, 1, 2, 1, 0, 0, 0.5);
setBlendColor( spep_2 + 122, 1, 2, 1, 0, 0, 0.5);
setBlendColor( spep_2 + 123, 1, 0, 0, 0, 0, 0);
setBlendColor( spep_2 + 413, 1, 0, 0, 0, 0, 0);

-- ** 音 ** --
--目光る
SE033 = playSeVer2( spep_2 + 2, 1153, "",spep_2 + 58, 8, 26, 0.6);
setSeVolumeByWorkId( spep_2 + 2, SE033, 80 );
setPitch( spep_2 + 2, SE033, 400 );
setTimeStretch( SE033, 1.27, 30, 4 );
SE034 = playSeVer2( spep_2 + 2, 1134, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 2, SE034, 100 );
setPitch( spep_2 + 2, SE034, 300 );
setTimeStretch( SE034, 1.2, 30, 4 );
SE035 = playSeVer2( spep_2 + 2, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE035, 120 );

--振りかぶる
SE036 = playSeVer2( spep_2 + 36, 1116, "",spep_2 + 84, 0, 22, -1);
SE037 = playSeVer2( spep_2 + 42, 1004, "", 0, 0, 0, -1);

--叩きつける
SE038 = playSeVer2( spep_2 + 86, 1359, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 86, 1187, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 86, 1011, "", 0, 0, 0, -1);

--堕ちていく
SE041 = playSeVer2( spep_2 + 86, 1422, "",spep_2 + 184, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 86, SE041, 355 );
SE042 = playSeVer2( spep_2 + 104, 1121, "",spep_2 + 184, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 104, SE042, 45 );
SE043 = playSeVer2( spep_2 + 104, 1183, "",spep_2 + 184, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 104, SE043, 63 );

--爆発
SE044 = playSeVer2( spep_2 + 160, 1024, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 160, 1159, "", 0, 0, 0, -1);

--風圧音
SE046 = playSeVer2( spep_2 + 162, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE046, 73 );
setPitch( spep_2 + 162, SE046, -600 );
setTimeStretch( SE046, 0.6, 30, 4 );

--爆発
SE047 = playSeVer2( spep_2 + 192, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE047, 76 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 88 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2 ); -- 終了フレーム 280F

else
 
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 突進〜高速移動で現れるザマス(412F)
-------------------------------------------------
MAX_FRAME_0 = 412;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); --突進〜高速移動で現れるザマス ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --突進〜高速移動で現れるザマス ef_001b
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
spep_x = spep_0 + 2;
  
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -20, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
setDisp( spep_0 + 126 + OFFSET_X, 1, 1);
setDisp( spep_0 + 228 + OFFSET_X, 1, 0);
setDisp( spep_0 + 280 + OFFSET_X, 1, 1);
setDisp( spep_0 + 320 + OFFSET_X, 1, 0);
setDisp( spep_0 + 360 + OFFSET_X, 1, 1);
setDisp( spep_0 + 414 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 126 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 148 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 176 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 194 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 206 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 126 + OFFSET_X, 1, -97.7, -38.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -103.5, -32.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -103.1, -32.3 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -102.3, -31.8 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -96.4, -32.2 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -86.1, -32.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -83, -32.7 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -79.6, -32.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -76, -32.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -72.2, -32.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -68.1, -31.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -68.1, -31.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -141.3, -5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -141.3, -5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -119.8, -1.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -119.8, -1.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -133.6, 0.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -133.6, 0.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -122.9, 2.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -122.9, 2.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -124, 3.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -124, 3.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -124.8, 4.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -124.8, 4.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -125.2, 5.5 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -125.2, 5.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -125.4, 5.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -125.4, 5.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -167.5, 42.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -167.5, 42.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -144.4, 44.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -144.4, 44.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -163, 56.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -163, 56.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -150.9, 56.8 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -150.9, 56.8 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -152.5, 59.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -152.5, 59.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -153, 60.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -153, 60.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -163.8, 42.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -163.8, 42.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -139.2, 37.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -139.2, 37.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -155.8, 43.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -155.8, 43.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -143.6, 41.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -143.6, 41.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -145.3, 42.6 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -146.5, 43.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -147.5, 44.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -148, 44.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -148.2, 45 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -148.2, 45 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -178, 63.5 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -178, 63.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -150.1, 58.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -150.1, 58.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -166.7, 68.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -166.7, 68.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -152.5, 65.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -152.5, 65.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -153.1, 67.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -153.1, 67.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -153.3, 67.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -153.3, 67.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -165.5, 79.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -165.5, 79.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -142.2, 70.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -142.2, 70.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -160.5, 81.5 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -160.5, 81.5 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -149.1, 77.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -149.1, 77.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -151.8, 79.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -154, 81.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -155.8, 83.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -157, 84.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -157.7, 85.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -158, 85.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -158, 85.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 0.9, -143.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 0.9, -133.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 0.9, -124.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 0.9, -115.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 0.9, -106 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 0.9, -96.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 0.9, -87.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 0.9, -78.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 1.2, -86.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 1.2, -86.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -5.5, -52.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -5.5, -52.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 6.2, -21.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 6.2, -21.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 6.2, -24.5 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 6.2, -24.5 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 0.1, -13.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 0.1, -13.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 0.1, -9.6 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 0.1, -9.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 0.1, -6.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 0.1, -6.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 0, -3.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 0, -1.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 0, -0.8 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 0, -0.4 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 0, -0.4 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 12.6, -470.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 11.3, -427.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 10.1, -387 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 8.9, -348.7 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 7.8, -312.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 6.8, -279.2 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 5.9, -247.9 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 5, -219.1 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 4.2, -192.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 3.5, -168.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 2.9, -146.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 2.8, -143.2 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 2.7, -139.8 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 2.6, -136.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 2.5, -133.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 2.4, -130.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 2.3, -127.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 2.2, -124.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 2.1, -121.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 2, -118.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 2, -115.4 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 1.9, -112.7 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 1.8, -110 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 1.7, -107.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 1.7, -104.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 1.5, -102.1 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 1.5, -102.1 , 0 );

setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 5.16, 5.16 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 5.02, 5.02 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1.93, 1.93 );

setRotateKey( spep_0 + 126 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 34 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 34 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 33.3 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 48 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 48 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 15.5 );

setBlendColor( spep_0 + 126, 1, 0, 0, 0, 0, 0);
setBlendColor( spep_0 + 413, 1, 0, 0, 0, 0, 0);

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 0, 1344, "",spep_0 + 96, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );
SE003 = playSeVer2( spep_0 + 6, 1007, "", 0, 0, 0, -1);

--向かってくる
SE004 = playSeVer2( spep_0 + 98, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 104, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 104, 9, "",spep_0 + 162, 0, 12, -1);
SE007 = playSeVer2( spep_0 + 104, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE007, 47 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 138; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
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
--ラッシュ
SE008 = playSeVer2( spep_0 + 146, 1187, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 146, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 162, 1110, "",spep_0 + 182, 0, 10, -1);
SE011 = playSeVer2( spep_0 + 162, 1153, "",spep_0 + 198, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 162, SE011, 79 );
SE012 = playSeVer2( spep_0 + 174, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1110, "",spep_0 + 194, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 192, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE014, 83 );
SE015 = playSeVer2( spep_0 + 192, 1169, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 204, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE016, 76 );

--振り返り回転
SE017 = playSeVer2( spep_0 + 230, 1116, "",spep_0 + 276, 0, 20, -1);
SE018 = playSeVer2( spep_0 + 234, 1190, "", 0, 8, 0, -1);
setStartTimeMs( SE018,  67 );
SE019 = playSeVer2( spep_0 + 236, 1004, "", 0, 0, 0, -1);

--空気斬
SE020 = playSeVer2( spep_0 + 244, 1212, "",spep_0 + 270, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 244, SE020, 65 );
SE021 = playSeVer2( spep_0 + 244, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 244, SE021, 123 );
SE022 = playSeVer2( spep_0 + 244, 1026, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 254, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE023, 108 );

--敵吹き飛ぶ
SE024 = playSeVer2( spep_0 + 280, 1258, "",spep_0 + 350, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 280, SE024, 69 );
SE025 = playSeVer2( spep_0 + 280, 1121, "",spep_0 + 330, 0, 12, -1);
SE027 = playSeVer2( spep_0 + 294, 1011, "", 0, 0, 0, -1);

--壁激突
SE028 = playSeVer2( spep_0 + 316, 1159, "",spep_0 + 414, 0, 14, -1);
SE029 = playSeVer2( spep_0 + 316, 1023, "",spep_0 + 416, 0, 12, -1);

--いわなだれ
SE026 = playSeVer2( spep_0 + 332, 1168, "",spep_0 + 426, 24, 12, -1);
setStartTimeMs( SE026,  700 );

--瞬間移動
SE030 = playSeVer2( spep_0 + 380, 1235, "",spep_0 + 432, 0, 20, -1);
SE031 = playSeVer2( spep_0 + 380, 1245, "",spep_0 + 426, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 380, SE031, 67 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 412F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 右腕を振りかぶる〜フィニッシュ(280F)
-------------------------------------------------
MAX_FRAME_2 = 280;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); --右腕を振りかぶる〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); --右腕を振りかぶる〜フィニッシュ ef_002b
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
setDisp( spep_2 + 74 + OFFSET_X, 1, 1);
setDisp( spep_2 + 162 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 74 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 138 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, 57.8, -20 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 57.8, -20 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 57, -19.5 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 54.8, -18 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 51, -15.5 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 45.7, -12 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 38.9, -7.6 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -24.2, -53.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -24.2, -53.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -8.2, -156.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -8.2, -156.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -40.2, -211.5 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -40.2, -211.5 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -40.2, -69.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -40.2, -69.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -8.2, -43.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -8.2, -43.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -24.2, -65.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -24.2, -65.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -8.2, -88 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -8.2, -88 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -40.2, -62.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -40.2, -62.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -40.2, -100.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -40.2, -100.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -8.3, -74.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -8.3, -74.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -24.3, -96.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -24.3, -96.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -8.3, -118.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -8.3, -118.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -40.3, -93 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -40.3, -93 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -40.3, -131.2 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -40.3, -131.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -8.3, -105.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -8.3, -105.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -24.4, -127.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -24.4, -127.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -8.4, -149.7 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -8.4, -149.7 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -24.4, -139.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -24.4, -139.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -17.6, -168.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -17.6, -168.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -30.4, -178.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -30.4, -178.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -30.4, -213.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -30.4, -213.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -17.5, -469.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -17.5, -469.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -23.9, -745.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -23.9, -745.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -17.6, -832 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -17.6, -832 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -24.2, -911.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -24.2, -911.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -47.5, -159.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -47.5, -159.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -62, -181.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -76.6, -203 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -91.1, -224.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -105.7, -246.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -120.2, -268 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -134.7, -289.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -149.3, -311.4 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -163.8, -333.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -178.4, -354.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -192.9, -376.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -225.7, -416.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -225.7, -416.3 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 5.6, 5.6 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 7.43, 7.43 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -68.7 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -68.7 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -91.7 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -91.7 );

setBlendColor( spep_2 + 74, 1, 0, 0, 0, 0, 0);
setBlendColor( spep_2 + 86, 1, 0, 0, 0, 0, 0);
setBlendColor( spep_2 + 87, 1, 2, 1, 0, 0, 0.5);
setBlendColor( spep_2 + 122, 1, 2, 1, 0, 0, 0.5);
setBlendColor( spep_2 + 123, 1, 0, 0, 0, 0, 0);
setBlendColor( spep_2 + 413, 1, 0, 0, 0, 0, 0);

-- ** 音 ** --
--目光る
SE033 = playSeVer2( spep_2 + 2, 1153, "",spep_2 + 58, 8, 26, 0.6);
setSeVolumeByWorkId( spep_2 + 2, SE033, 80 );
setPitch( spep_2 + 2, SE033, 400 );
setTimeStretch( SE033, 1.27, 30, 4 );
SE034 = playSeVer2( spep_2 + 2, 1134, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 2, SE034, 100 );
setPitch( spep_2 + 2, SE034, 300 );
setTimeStretch( SE034, 1.2, 30, 4 );
SE035 = playSeVer2( spep_2 + 2, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE035, 120 );

--振りかぶる
SE036 = playSeVer2( spep_2 + 36, 1116, "",spep_2 + 84, 0, 22, -1);
SE037 = playSeVer2( spep_2 + 42, 1004, "", 0, 0, 0, -1);

--叩きつける
SE038 = playSeVer2( spep_2 + 86, 1359, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 86, 1187, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 86, 1011, "", 0, 0, 0, -1);

--堕ちていく
SE041 = playSeVer2( spep_2 + 86, 1422, "",spep_2 + 184, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 86, SE041, 355 );
SE042 = playSeVer2( spep_2 + 104, 1121, "",spep_2 + 184, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 104, SE042, 45 );
SE043 = playSeVer2( spep_2 + 104, 1183, "",spep_2 + 184, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 104, SE043, 63 );

--爆発
SE044 = playSeVer2( spep_2 + 160, 1024, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 160, 1159, "", 0, 0, 0, -1);

--風圧音
SE046 = playSeVer2( spep_2 + 162, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE046, 73 );
setPitch( spep_2 + 162, SE046, -600 );
setTimeStretch( SE046, 0.6, 30, 4 );

--爆発
SE047 = playSeVer2( spep_2 + 192, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE047, 76 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 88 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2 ); -- 終了フレーム 280F

end