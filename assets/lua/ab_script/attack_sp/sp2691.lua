--4028500:UR_超サイヤ人ベジータ_必殺技：フォトンボンバー
--sp_effect_a1_00426
--sp2691

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 162680;  --ef_001 空中叩き落としまで：前面
SP_02  = 162682;  --ef_002 ビーム→ラスト爆発：前面

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
-- 空中叩き落としまで
-------------------------------------------------
MAX_FRAME_0 = 516;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 空中叩き落としまで:前面(ef_001)
setEffMoveKey( spep_0 + 0, attack_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, attack_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, attack_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, attack_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, attack_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, attack_f, 0);
setEffAlphaKey( spep_0 + 0, attack_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, attack_f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
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
]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 160 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, 214.6, -229.8 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 214.6, -229.8 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 214, -229.8 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 214, -229.8 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 213.5, -229.8 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 213.5, -229.8 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 212.9, -229.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 212.9, -229.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 212.3, -229.8 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 212.3, -229.8 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 211.8, -229.8 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 211.8, -229.8 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 211.2, -229.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 211.2, -229.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 210.6, -229.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 210.6, -229.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 210, -229.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 210, -229.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 209.5, -229.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 209.5, -229.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 208.9, -229.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 208.9, -229.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 208.3, -229.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 208.3, -229.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 207.8, -229.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 207.8, -229.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 207.2, -229.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 207.2, -229.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 206.6, -229.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 206.6, -229.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 206.1, -229.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 206.1, -229.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 205.5, -229.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 205.5, -229.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 204.9, -229.9 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 204.9, -229.9 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 204.4, -230 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 204.4, -230 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 203.8, -230 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 203.8, -230 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 203.2, -230 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 203.2, -230 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 202.7, -230 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 202.7, -230 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 202.1, -230 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 202.1, -230 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 201.5, -230 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 201.5, -230 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 200.9, -230 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 200.9, -230 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 200.4, -230 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 200.4, -230 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 199.8, -230 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 199.8, -230 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 199.2, -230 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 199.2, -230 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 198.7, -230 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 198.7, -230 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 198.1, -230 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 198.1, -230 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 272 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 486 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 272 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 324 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 374 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 458 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 272 + OFFSET_X, 1, -361.7, 101.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -361.7, 101.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -273.8, 77.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -273.8, 77.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -209.9, 29.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -209.9, 29.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -297, 37.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -297, 37.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -614, 179.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -614, 179.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -398.1, 73.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -398.1, 73.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -175.9, -1.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -175.9, -1.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -360.5, 40.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -360.5, 40.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 320.7, -38.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 320.7, -38.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 976, -105.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 976, -105.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 1660.3, -192.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 1660.3, -192.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -168.6, 53.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -168.6, 53.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -165, 58.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -165, 58.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -161.1, 63.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -161.1, 63.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -157, 69.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -157, 69.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -152.6, 75.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -152.6, 75.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -148.2, 80.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -148.2, 80.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -143.7, 86.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -143.7, 86.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -139.2, 92 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -139.2, 92 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -134.8, 97.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -134.8, 97.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -130.7, 102 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -130.7, 102 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -126.7, 106.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -126.7, 106.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -123.2, 110.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -123.2, 110.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -120, 113.8 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -120, 113.8 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -117.3, 116.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -117.3, 116.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -115.5, 117.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -115.5, 117.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -49.8, 262.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -49.8, 262.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -38.1, 250.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -38.1, 250.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -27.3, 238 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -27.3, 238 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -17.3, 224.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -17.3, 224.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -8.2, 211.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -8.2, 211.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -0.1, 197.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -0.1, 197.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 7.2, 183.6 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 7.2, 183.6 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 13.5, 169.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 13.5, 169.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 18.7, 154.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 18.7, 154.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 23, 139.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 23, 139.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 26.4, 124.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 26.4, 124.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 28.7, 109.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 28.7, 109.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 30.2, 94.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 30.2, 94.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 30.7, 80 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 30.7, 80 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 30.2, 65.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 30.2, 65.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 8.2, 286.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 8.2, 286.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 12.3, 263.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 12.3, 263.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 16.3, 241.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 16.3, 241.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -73.6, 368.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -73.6, 368.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -95.7, 387.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -95.7, 387.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 38.4, 219.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 38.4, 219.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -49.1, 393 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -49.1, 393 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -100.9, 341.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -100.9, 341.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -64.5, 340.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -64.5, 340.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -60, 363.6 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -60, 363.6 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -190.3, 82.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -190.3, 82.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -175.5, 83.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -175.5, 83.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -195.7, 49.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -195.7, 49.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -191.4, 58.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -191.4, 58.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -168.8, 44.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -168.8, 44.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -177.8, 35.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -177.8, 35.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -172.5, 54.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -172.5, 54.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -191.4, 39.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -191.4, 39.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -173.3, 37.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -173.3, 37.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -186.8, 58 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -186.8, 58 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -173.3, 44.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -173.3, 44.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -195.9, 49 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -195.9, 49 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -186.8, 35.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -186.8, 35.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -181, 61.3 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -181, 61.3 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -173.2, 49 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -173.2, 49 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -453.7, 111.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -453.7, 111.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -454.2, 97.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -454.2, 97.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -454.9, 83 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -454.9, 83 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -455.4, 68.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -455.4, 68.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -456, 54 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -456, 54 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -456.6, 39.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -456.6, 39.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -457.2, 25 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -457.2, 25 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -457.7, 10.3 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -457.7, 10.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -458.3, -4.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -458.3, -4.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -459, -19 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -459, -19 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -459.5, -33.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -459.5, -33.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -460.1, -48.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -460.1, -48.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -460.6, -63.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -460.6, -63.7 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -461.3, -78.5 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -461.3, -78.5 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -461.9, -93.7 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -461.9, -93.7 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -462.5, -108.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -462.5, -108.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -463.2, -124 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -463.2, -124 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -463.8, -139.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -463.8, -139.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -464.3, -154.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -464.3, -154.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -465, -170.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -465, -170.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -465.6, -186.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -465.6, -186.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -466.3, -202 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -466.3, -202 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -466.8, -218.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -466.8, -218.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -467.5, -234.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -467.5, -234.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -468.2, -250.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -468.2, -250.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -469.2, -267.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -469.2, -267.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 193.5, -322.6 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 193.5, -322.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 124.6, -531.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 124.6, -531.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 232.1, -721.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 232.1, -721.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 229, -897.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 229, -897.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 343.5, -951.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 343.5, -951.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 220.3, -803.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 220.3, -803.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 346.5, -956.7 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 346.5, -956.7 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 200, -858.3 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 200, -858.3 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 311.2, -912.7 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 311.2, -912.7 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 252.9, -833.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 252.9, -833.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 239.7, -860.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 239.7, -860.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 342.7, -861.9 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 342.7, -861.9 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 704.1, -1419.6 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 704.1, -1419.6 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 1084, -1986.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 1084, -1986.8 , 0 );


setScaleKey( spep_0 + 272 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 8.94, 8.94 );


setRotateKey( spep_0 + 272 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 31.3 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 32 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 32 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 115 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 115 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 117.2 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 117.2 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 119.4 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 119.4 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 121.6 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 121.6 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 123.8 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 123.8 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 126 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 126 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 128.3 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 128.3 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 130.5 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 130.5 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 132.3 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 132.3 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 134.2 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, 134.2 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 136.1 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 136.1 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 138 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, 138 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 139.9 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 139.9 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 141.8 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 141.8 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 143.6 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 143.6 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 130.9 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 130.9 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 65.5 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 65.1 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 65.1 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 64.8 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 64.8 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 64 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 64 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 63.6 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 63.6 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 63.3 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 62.9 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 62.5 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 62.2 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 61.8 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 61.8 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 61 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 61 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 39.5 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 39.4 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 39.2 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 39.1 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 38.3 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 124.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 124.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 123.8 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 123.8 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 126.1 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 126.1 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 128.4 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 128.4 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 270, 0, 32, -1);
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 71 );
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 71 );
SE006 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 71 );
SE007 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE007, 71 );
SE009 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE009, 71 );
SE010 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE010, 71 );
SE014 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE014, 71 );
SE015 = playSeVer2( spep_0 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE015, 71 );
SE017 = playSeVer2( spep_0 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE017, 71 );

--画面遷移
SE008 = playSeVer2( spep_0 + 86, 8, "", 0, 0, 0, -1);

--顔アップで力む
SE011 = playSeVer2( spep_0 + 150, 1232, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 150, 1330, "",spep_0 + 222, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 150, SE012, 58 );
SE013 = playSeVer2( spep_0 + 150, 1226, "",spep_0 + 270, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 150, SE013, 62 );

--叫ぶ
SE016 = playSeVer2( spep_0 + 198, 20, "",spep_0 + 264, 14, 18, -1);
setSeVolumeByWorkId( spep_0 + 198, SE016, 81 );
SE018 = playSeVer2( spep_0 + 204, 1116, "",spep_0 + 260, 0, 22, -1);

--向かっていく
SE019 = playSeVer2( spep_0 + 230, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 230, 1117, "",spep_0 + 292, 0, 16, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 252; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
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
--エルボー
SE021 = playSeVer2( spep_0 + 260, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE021, 151 );
SE022 = playSeVer2( spep_0 + 266, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 266, 1187, "", 0, 0, 0, -1);

--ブリッジで地面着く
SE024 = playSeVer2( spep_0 + 314, 1117, "", 0, 4, 0, -1);
setStartTimeMs( SE024,  260 );
SE025 = playSeVer2( spep_0 + 312, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 328, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE026, 211 );
SE027 = playSeVer2( spep_0 + 330, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE027, 193 );


--蹴り上げる
SE028 = playSeVer2( spep_0 + 348, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 354, 1187, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 354, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE031 = playSeVer2( spep_0 + 370, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE031, 72 );
SE032 = playSeVer2( spep_0 + 370, 1121, "",spep_0 + 474, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 370, SE032, 69 );
SE033 = playSeVer2( spep_0 + 370, 1183, "",spep_0 + 474, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 370, SE033, 79 );

--瞬間移動
SE034 = playSeVer2( spep_0 + 412, 1109, "", 0, 0, 0, -1);

--叩きつける
SE035 = playSeVer2( spep_0 + 446, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE035, 150 );
SE036 = playSeVer2( spep_0 + 450, 1123, "",spep_0 + 526, 0, 8, -1);
SE037 = playSeVer2( spep_0 + 454, 1110, "",spep_0 + 526, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --516f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE039 = playSeVer2( spep_1 + 86, 1173, "",spep_1 + 156, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 86, SE039, 115 );

-------------------------------------------------
-- ビーム→ラスト爆発
-------------------------------------------------
MAX_FRAME_2 = 328;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム→ラスト爆発：前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 330 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 240 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 240 + OFFSET_X, 1, 126.2, -424 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 126.2, -424 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 71.8, -386.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 71.8, -386.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 87.3, -288 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 87.3, -288 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 153.8, -344.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 153.8, -344.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 150.3, -276.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 150.3, -276.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 82.2, -344.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 82.2, -344.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 152.7, -343.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 152.7, -343.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 85.5, -275.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 85.5, -275.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 150.4, -294.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 150.4, -294.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 94.5, -341.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 94.5, -341.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 118.9, -276.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 118.9, -276.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 125.9, -354.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 125.9, -354.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 71.4, -316 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 71.4, -316 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 157.5, -314.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 157.5, -314.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 89.8, -285.5 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 89.8, -285.5 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 152.8, -342.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 152.8, -342.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 150.4, -275.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 150.4, -275.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 104.3, -345.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 104.3, -345.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 78.6, -301.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 78.6, -301.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 146.9, -344.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 146.9, -344.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 101.8, -275.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 101.8, -275.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 131.2, -348.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 131.2, -348.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 78.4, -300.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 78.4, -300.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 154.1, -337.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 154.1, -337.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 126.4, -276.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 126.4, -276.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 121.5, -346.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 121.5, -346.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 78.5, -323.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 78.5, -323.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 151.6, -297.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 151.6, -297.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 150, -276.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 150, -276.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 75.7, -299.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 75.7, -299.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 152.6, -323.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 152.6, -323.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 106.9, -282 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 106.9, -282 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 129.7, -348.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 129.7, -348.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 150, -345.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 150, -345.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 81.8, -406.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 81.8, -406.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 152.3, -371.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 152.3, -371.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 81.8, -355.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 81.8, -355.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 133.5, -402.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 133.5, -402.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 91.2, -364.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 91.2, -364.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 142.9, -357.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 142.9, -357.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 79.5, -392.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 79.5, -392.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 154.7, -378.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 154.7, -378.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 103, -355.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 103, -355.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 121.8, -418.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 121.8, -418.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 126.5, -352.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 126.5, -352.9 , 0 );

setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 240 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 20.3 );

setBlendColor( spep_2 + 240 + OFFSET_X, 1, 3, 0.05, 0.52, 0.7, 1.0 );
setBlendColor( spep_2 + 323 + OFFSET_X, 1, 3, 0.05, 0.52, 0.7, 1.0 );
setBlendColor( spep_2 + 324 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--オーラ
SE040 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE040, 63 );
SE044 = playSeVer2( spep_2 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE044, 63 );
SE045 = playSeVer2( spep_2 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE045, 63 );
SE046 = playSeVer2( spep_2 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE046, 63 );
SE049 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE049, 63 );
SE050 = playSeVer2( spep_2 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE050, 63 );
SE052 = playSeVer2( spep_2 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE052, 63 );
SE053 = playSeVer2( spep_2 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE053, 63 );

--気弾溜め
SE041 = playSeVer2( spep_2 + 6, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE041, 94 );
SE042 = playSeVer2( spep_2 + 6, 1243, "",spep_2 + 200, 0, 18, -1);
SE043 = playSeVer2( spep_2 + 6, 1262, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE043, 130 );
setTimeStretch( SE043, 2, 30, 4 );

--カメラズームアウト
SE047 = playSeVer2( spep_2 + 80, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE047,  60 );
SE048 = playSeVer2( spep_2 + 80, 8, "", 0, 0, 0, -1);

--気弾発射
SE051 = playSeVer2( spep_2 + 172, 1177, "",spep_2 + 280, 20, 20, -1);
setSeVolumeByWorkId( spep_2 + 172, SE051, 127 );
setStartTimeMs( SE051,  760 );
SE054 = playSeVer2( spep_2 + 170, 1133, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 170, 1145, "", 0, 0, 0, -1);

--爆発
SE056 = playSeVer2( spep_2 + 234, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 254, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 242); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  328f -4


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 空中叩き落としまで
-------------------------------------------------
MAX_FRAME_0 = 516;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 空中叩き落としまで:前面(ef_001)
setEffMoveKey( spep_0 + 0, attack_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, attack_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, attack_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, attack_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, attack_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, attack_f, 0);
setEffAlphaKey( spep_0 + 0, attack_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, attack_f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
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
]]--

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 160 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 100 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 100 + OFFSET_X, 1, -214.6, -229.8 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -214.6, -229.8 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -214, -229.8 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -214, -229.8 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -213.5, -229.8 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -213.5, -229.8 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -212.9, -229.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -212.9, -229.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -212.3, -229.8 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -212.3, -229.8 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -211.8, -229.8 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -211.8, -229.8 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -211.2, -229.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -211.2, -229.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -210.6, -229.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -210.6, -229.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -210, -229.9 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -210, -229.9 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -209.5, -229.9 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -209.5, -229.9 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -208.9, -229.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -208.9, -229.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -208.3, -229.9 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -208.3, -229.9 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -207.8, -229.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -207.8, -229.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -207.2, -229.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -207.2, -229.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -206.6, -229.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -206.6, -229.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -206.1, -229.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -206.1, -229.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -205.5, -229.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -205.5, -229.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -204.9, -229.9 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -204.9, -229.9 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -204.4, -230 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -204.4, -230 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -203.8, -230 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -203.8, -230 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -203.2, -230 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -203.2, -230 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -202.7, -230 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -202.7, -230 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -202.1, -230 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -202.1, -230 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -201.5, -230 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -201.5, -230 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -200.9, -230 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -200.9, -230 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -200.4, -230 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -200.4, -230 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -199.8, -230 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -199.8, -230 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -199.2, -230 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -199.2, -230 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -198.7, -230 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -198.7, -230 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -198.1, -230 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -198.1, -230 , 0 );

setScaleKey( spep_0 + 100 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 100 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 272 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 486 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 272 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 294 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 324 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 374 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 458 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 272 + OFFSET_X, 1, 361.7, 101.3 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 361.7, 101.3 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 273.8, 77.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 273.8, 77.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 209.9, 29.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 209.9, 29.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 297, 37.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 297, 37.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 614, 179.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 614, 179.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 398.1, 73.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 398.1, 73.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 175.9, -1.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 175.9, -1.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 360.5, 40.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 360.5, 40.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -320.7, -38.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -320.7, -38.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -976, -105.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -976, -105.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -1660.3, -192.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -1660.3, -192.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 168.6, 53.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 168.6, 53.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 165, 58.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 165, 58.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 161.1, 63.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 161.1, 63.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 157, 69.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 157, 69.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 152.6, 75.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 152.6, 75.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 148.2, 80.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 148.2, 80.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 143.7, 86.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 143.7, 86.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 139.2, 92 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 139.2, 92 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 134.8, 97.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 134.8, 97.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 130.7, 102 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 130.7, 102 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 126.7, 106.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 126.7, 106.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 123.2, 110.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 123.2, 110.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 120, 113.8 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 120, 113.8 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 117.3, 116.7 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 117.3, 116.7 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 115.5, 117.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 115.5, 117.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 49.8, 262.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 49.8, 262.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 38.1, 250.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 38.1, 250.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 27.3, 238 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 27.3, 238 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 17.3, 224.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 17.3, 224.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 8.2, 211.5 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 8.2, 211.5 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 0.1, 197.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 0.1, 197.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -7.2, 183.6 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -7.2, 183.6 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -13.5, 169.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -13.5, 169.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -18.7, 154.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -18.7, 154.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -23, 139.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -23, 139.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -26.4, 124.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -26.4, 124.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -28.7, 109.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -28.7, 109.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -30.2, 94.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -30.2, 94.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -30.7, 80 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -30.7, 80 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -30.2, 65.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -30.2, 65.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -8.2, 286.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -8.2, 286.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -12.3, 263.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -12.3, 263.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -16.3, 241.2 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -16.3, 241.2 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 73.6, 368.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 73.6, 368.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 95.7, 387.8 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 95.7, 387.8 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -38.4, 219.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -38.4, 219.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 49.1, 393 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 49.1, 393 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 100.9, 341.2 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 100.9, 341.2 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 64.5, 340.9 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 64.5, 340.9 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 60, 363.6 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 60, 363.6 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 190.3, 82.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 190.3, 82.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 175.5, 83.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 175.5, 83.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 195.7, 49.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 195.7, 49.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 191.4, 58.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 191.4, 58.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 168.8, 44.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 168.8, 44.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 177.8, 35.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 177.8, 35.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 172.5, 54.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 172.5, 54.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 191.4, 39.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 191.4, 39.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 173.3, 37.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 173.3, 37.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 186.8, 58 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 186.8, 58 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 173.3, 44.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 173.3, 44.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 195.9, 49 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 195.9, 49 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 186.8, 35.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 186.8, 35.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 181, 61.3 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 181, 61.3 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 173.2, 49 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 173.2, 49 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 453.7, 111.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 453.7, 111.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 454.2, 97.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 454.2, 97.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 454.9, 83 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 454.9, 83 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 455.4, 68.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 455.4, 68.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 456, 54 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 456, 54 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 456.6, 39.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 456.6, 39.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 457.2, 25 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 457.2, 25 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 457.7, 10.3 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 457.7, 10.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 458.3, -4.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 458.3, -4.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 459, -19 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 459, -19 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 459.5, -33.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 459.5, -33.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 460.1, -48.7 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 460.1, -48.7 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 460.6, -63.7 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 460.6, -63.7 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 461.3, -78.5 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 461.3, -78.5 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 461.9, -93.7 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 461.9, -93.7 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 462.5, -108.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 462.5, -108.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 463.2, -124 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 463.2, -124 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 463.8, -139.4 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 463.8, -139.4 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 464.3, -154.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 464.3, -154.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 465, -170.6 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 465, -170.6 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 465.6, -186.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 465.6, -186.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 466.3, -202 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 466.3, -202 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 466.8, -218.1 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 466.8, -218.1 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 467.5, -234.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 467.5, -234.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 468.2, -250.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 468.2, -250.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 469.2, -267.8 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 469.2, -267.8 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -193.5, -322.6 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -193.5, -322.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -124.6, -531.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -124.6, -531.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -232.1, -721.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -232.1, -721.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -229, -897.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -229, -897.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -343.5, -951.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -343.5, -951.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -220.3, -803.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -220.3, -803.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -346.5, -956.7 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -346.5, -956.7 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -200, -858.3 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -200, -858.3 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -311.2, -912.7 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -311.2, -912.7 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -252.9, -833.7 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -252.9, -833.7 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -239.7, -860.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -239.7, -860.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -342.7, -861.9 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -342.7, -861.9 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -704.1, -1419.6 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -704.1, -1419.6 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -1084, -1986.8 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -1084, -1986.8 , 0 );


setScaleKey( spep_0 + 272 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 7.17, 7.17 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 6.7, 6.7 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 6.6, 6.6 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 6.41, 6.41 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 6.8, 6.8 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.49, 6.49 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 5.56, 5.56 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 9.88, 9.88 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 6.53, 6.53 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 6.55, 6.55 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 6.56, 6.56 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 6.57, 6.57 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 5.94, 5.94 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 5.24, 5.24 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 8.94, 8.94 );


setRotateKey( spep_0 + 272 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -32 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -32 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -115 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -115 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -117.2 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -117.2 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -119.4 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -119.4 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -121.6 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -121.6 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -123.8 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -123.8 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -126 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -126 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -128.3 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -128.3 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -130.5 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -130.5 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -132.3 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -132.3 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -134.2 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -134.2 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -136.1 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -136.1 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -138 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -138 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -139.9 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -139.9 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -141.8 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -141.8 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -143.6 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -143.6 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -130.9 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -130.9 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -65.1 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -63.6 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -62.9 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -62.9 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -62.5 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -62.5 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -61 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -61 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -39.5 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -39.1 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -124.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -124.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -123.8 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -123.8 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -126.1 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -126.1 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -128.4 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -128.4 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 270, 0, 32, -1);
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 71 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 71 );
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 71 );
SE006 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 71 );
SE007 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE007, 71 );
SE009 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE009, 71 );
SE010 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE010, 71 );
SE014 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE014, 71 );
SE015 = playSeVer2( spep_0 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE015, 71 );
SE017 = playSeVer2( spep_0 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE017, 71 );

--画面遷移
SE008 = playSeVer2( spep_0 + 86, 8, "", 0, 0, 0, -1);

--顔アップで力む
SE011 = playSeVer2( spep_0 + 150, 1232, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 150, 1330, "",spep_0 + 222, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 150, SE012, 58 );
SE013 = playSeVer2( spep_0 + 150, 1226, "",spep_0 + 270, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 150, SE013, 62 );

--叫ぶ
SE016 = playSeVer2( spep_0 + 198, 20, "",spep_0 + 264, 14, 18, -1);
setSeVolumeByWorkId( spep_0 + 198, SE016, 81 );
SE018 = playSeVer2( spep_0 + 204, 1116, "",spep_0 + 260, 0, 22, -1);

--向かっていく
SE019 = playSeVer2( spep_0 + 230, 1182, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 230, 1117, "",spep_0 + 292, 0, 16, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 252; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE020, 0);
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
--エルボー
SE021 = playSeVer2( spep_0 + 260, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 260, SE021, 151 );
SE022 = playSeVer2( spep_0 + 266, 1153, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 266, 1187, "", 0, 0, 0, -1);

--ブリッジで地面着く
SE024 = playSeVer2( spep_0 + 314, 1117, "", 0, 4, 0, -1);
setStartTimeMs( SE024,  260 );
SE025 = playSeVer2( spep_0 + 312, 1004, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 328, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE026, 211 );
SE027 = playSeVer2( spep_0 + 330, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE027, 193 );


--蹴り上げる
SE028 = playSeVer2( spep_0 + 348, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 354, 1187, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 354, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE031 = playSeVer2( spep_0 + 370, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE031, 72 );
SE032 = playSeVer2( spep_0 + 370, 1121, "",spep_0 + 474, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 370, SE032, 69 );
SE033 = playSeVer2( spep_0 + 370, 1183, "",spep_0 + 474, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 370, SE033, 79 );

--瞬間移動
SE034 = playSeVer2( spep_0 + 412, 1109, "", 0, 0, 0, -1);

--叩きつける
SE035 = playSeVer2( spep_0 + 446, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE035, 150 );
SE036 = playSeVer2( spep_0 + 450, 1123, "",spep_0 + 526, 0, 8, -1);
SE037 = playSeVer2( spep_0 + 454, 1110, "",spep_0 + 526, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --516f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE039 = playSeVer2( spep_1 + 86, 1173, "",spep_1 + 156, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 86, SE039, 115 );

-------------------------------------------------
-- ビーム→ラスト爆発
-------------------------------------------------
MAX_FRAME_2 = 328;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム→ラスト爆発：前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 330 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 240 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 240 + OFFSET_X, 1, -126.2, -424 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -126.2, -424 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -71.8, -386.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -71.8, -386.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -87.3, -288 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -87.3, -288 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -153.8, -344.8 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -153.8, -344.8 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -150.3, -276.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -150.3, -276.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -82.2, -344.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -82.2, -344.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -152.7, -343.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -152.7, -343.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -85.5, -275.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -85.5, -275.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -150.4, -294.2 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -150.4, -294.2 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -94.5, -341.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -94.5, -341.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -118.9, -276.6 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -118.9, -276.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -125.9, -354.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -125.9, -354.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -71.4, -316 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -71.4, -316 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -157.5, -314.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -157.5, -314.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -89.8, -285.5 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -89.8, -285.5 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -152.8, -342.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -152.8, -342.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -150.4, -275.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -150.4, -275.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -104.3, -345.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -104.3, -345.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -78.6, -301.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -78.6, -301.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -146.9, -344.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -146.9, -344.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -101.8, -275.5 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -101.8, -275.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -131.2, -348.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -131.2, -348.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -78.4, -300.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -78.4, -300.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -154.1, -337.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -154.1, -337.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -126.4, -276.2 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -126.4, -276.2 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -121.5, -346.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -121.5, -346.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -78.5, -323.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -78.5, -323.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -151.6, -297.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -151.6, -297.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -150, -276.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -150, -276.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -75.7, -299.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -75.7, -299.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -152.6, -323.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -152.6, -323.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -106.9, -282 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -106.9, -282 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -129.7, -348.6 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -129.7, -348.6 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -150, -345.8 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -150, -345.8 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -81.8, -406.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -81.8, -406.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -152.3, -371.7 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -152.3, -371.7 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -81.8, -355.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -81.8, -355.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -133.5, -402.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -133.5, -402.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -91.2, -364.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -91.2, -364.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -142.9, -357.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -142.9, -357.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -79.5, -392.8 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -79.5, -392.8 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -154.7, -378.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -154.7, -378.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -103, -355.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -103, -355.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -121.8, -418.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -121.8, -418.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -126.5, -352.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -126.5, -352.9 , 0 );

setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.56, 1.56 );

setRotateKey( spep_2 + 240 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -20.3 );

setBlendColor( spep_2 + 240 + OFFSET_X, 1, 3, 0.05, 0.52, 0.7, 1.0 );
setBlendColor( spep_2 + 323 + OFFSET_X, 1, 3, 0.05, 0.52, 0.7, 1.0 );
setBlendColor( spep_2 + 324 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--オーラ
SE040 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE040, 63 );
SE044 = playSeVer2( spep_2 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE044, 63 );
SE045 = playSeVer2( spep_2 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE045, 63 );
SE046 = playSeVer2( spep_2 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 66, SE046, 63 );
SE049 = playSeVer2( spep_2 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE049, 63 );
SE050 = playSeVer2( spep_2 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE050, 63 );
SE052 = playSeVer2( spep_2 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE052, 63 );
SE053 = playSeVer2( spep_2 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE053, 63 );

--気弾溜め
SE041 = playSeVer2( spep_2 + 6, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE041, 94 );
SE042 = playSeVer2( spep_2 + 6, 1243, "",spep_2 + 200, 0, 18, -1);
SE043 = playSeVer2( spep_2 + 6, 1262, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 6, SE043, 130 );
setTimeStretch( SE043, 2, 30, 4 );

--カメラズームアウト
SE047 = playSeVer2( spep_2 + 80, 1182, "", 0, 12, 0, -1);
setStartTimeMs( SE047,  60 );
SE048 = playSeVer2( spep_2 + 80, 8, "", 0, 0, 0, -1);

--気弾発射
SE051 = playSeVer2( spep_2 + 172, 1177, "",spep_2 + 280, 20, 20, -1);
setSeVolumeByWorkId( spep_2 + 172, SE051, 127 );
setStartTimeMs( SE051,  760 );
SE054 = playSeVer2( spep_2 + 170, 1133, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 170, 1145, "", 0, 0, 0, -1);

--爆発
SE056 = playSeVer2( spep_2 + 234, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 254, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 242); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  328f -4


end