--1030220:UR_孫悟飯(幼年期)_必殺技：魔閃光
--sp_effect_a1_00461
--sp2789

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163353; --登場〜両腕を掲げる_手前 ef_001
SP_01b = 163354; --登場〜両腕を掲げる_奥 ef_001b
SP_02  = 163357; --気弾発射〜爆発してフィニッシュ_手前 ef_002
SP_02b = 163358; --気弾発射〜爆発してフィニッシュ_奥 ef_002b

--エフェクト(敵)
SP_01r  = 163355; --登場〜両腕を掲げる_手前 ef_001r
SP_01br = 163356; --登場〜両腕を掲げる_奥 ef_001br
SP_02r  = 163359; --気弾発射〜爆発してフィニッシュ_手前 ef_002r
SP_02br = 163360; --気弾発射〜爆発してフィニッシュ_奥 ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]--

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜両腕を掲げる
-------------------------------------------------
MAX_FRAME_0 = 444;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場〜両腕を掲げる_手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場〜両腕を掲げる_奥(ef_001b)
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
spep_x = spep_0 + 152;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -107, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -107, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 275.8, -1.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 275.7, -1.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 275.7, -1.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 275.6, -1.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 275.6, -1.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 275.4, -2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 275.4, -2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 275.1, -2.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 275.1, -2.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 274.7, -2.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 274.7, -2.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 274.3, -2.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 274.3, -2.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 273.8, -3.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 273.8, -3.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 273.2, -3.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 273.2, -3.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 272.5, -4.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 272.5, -4.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 271.7, -4.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 271.7, -4.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 270.9, -5.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 270.9, -5.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 269.9, -5.9 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 269.9, -5.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 268.9, -6.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 268.9, -6.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 268, -7.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 268, -7.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 267.1, -7.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 267.1, -7.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 266.4, -8.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 266.4, -8.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 265.7, -8.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 265.7, -8.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 265.1, -9.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 265.1, -9.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 264.6, -9.7 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 264.6, -9.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 264.1, -10 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 264.1, -10 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 263.7, -10.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 263.7, -10.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 263.5, -10.5 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 263.5, -10.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 263.3, -10.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 263.3, -10.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 263.1, -10.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 263.1, -10.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 263.1, -10.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 263.1, -10.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 332.5, -30.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 332.5, -30.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 540.8, -88.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 540.8, -88.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 888, -186.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 888, -186.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 1339.3, -312.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 1339.3, -312.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 7.38, 7.38 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 7.38, 7.38 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 10.58, 10.58 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 10.58, 10.58 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 272 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 336 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 272 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 320 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 272 + OFFSET_X, 1, 250, 10 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 250, 10 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 224.2, 10 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 224.2, 10 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 198.5, 10 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 198.5, 10 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 172.8, 10 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 172.8, 10 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 147.1, 10 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 147.1, 10 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 121.4, 10 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 121.4, 10 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 95.7, 10 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 95.7, 10 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 70, 10 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 70, 10 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 55, 18.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 55, 18.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 110, 53.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 110, 53.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 72.3, -8.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 72.3, -8.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 123.3, 11.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 123.3, 11.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 97.7, 27.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 97.7, 27.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 109.5, 1.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 109.5, 1.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 118.4, 20 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 118.4, 20 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 111.5, 5.7 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 111.5, 5.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 126.6, 11.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 126.6, 11.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 123.8, 13.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 123.8, 13.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 126.4, 13.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 126.4, 13.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 129, 13.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 129, 13.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 131.6, 12.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 131.6, 12.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 134.1, 12.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 134.1, 12.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 136.7, 12.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 136.7, 12.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 139.3, 12.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 139.3, 12.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 59.4, -10.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 59.4, -10.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 131.1, 71.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 131.1, 71.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 106.9, 20.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 106.9, 20.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 194, 57.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 194, 57.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 227, 98.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 227, 98.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 319.9, 102.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 319.9, 102.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 432.5, 158.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 432.5, 158.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 561, 94.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 561, 94.7 , 0 );

setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2.73, 2.73 );

setRotateKey( spep_0 + 272 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -12.8 );


-- ** 音 ** --
--羽ばたく
SE001 = playSeVer2( spep_0 + 0, 1333, "", 0, 4, 0, -1);
setStartTimeMs( SE001,  476 );
SE002 = playSeVer2( spep_0 + 0, 1138, "",spep_0 + 12, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 174 );
SE003 = playSeVer2( spep_0 + 26, 1333, "", 0, 6, 0, -1);
setStartTimeMs( SE003,  467 );
SE004 = playSeVer2( spep_0 + 48, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE004,  467 );
SE005 = playSeVer2( spep_0 + 26, 1138, "",spep_0 + 40, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 176 );
SE006 = playSeVer2( spep_0 + 80, 1333, "", 0, 6, 0, -1);
setStartTimeMs( SE006,  467 );
SE007 = playSeVer2( spep_0 + 56, 1138, "",spep_0 + 70, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 168 );

--集中線
SE008 = playSeVer2( spep_0 + 58, 1237, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 58, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE009, 66 );

--羽ばたく
SE010 = playSeVer2( spep_0 + 104, 1333, "", 0, 6, 0, -1);
setStartTimeMs( SE010,  467 );
SE011 = playSeVer2( spep_0 + 84, 1138, "",spep_0 + 98, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 84, SE011, 191 );

--悟飯おりる
SE012 = playSeVer2( spep_0 + 96, 1207, "",spep_0 + 146, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 96, SE012, 71 );
SE013 = playSeVer2( spep_0 + 96, 63, "",spep_0 + 164, 0, 24, -1);

--羽ばたく
SE014 = playSeVer2( spep_0 + 130, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE014,  467 );
SE015 = playSeVer2( spep_0 + 110, 1138, "",spep_0 + 124, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 110, SE015, 188 );
SE016 = playSeVer2( spep_0 + 158, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE016,  467 );
SE017 = playSeVer2( spep_0 + 138, 1138, "",spep_0 + 152, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 138, SE017, 193 );

--羽ばたく
SE019 = playSeVer2( spep_0 + 190, 1333, "", 0, 6, 0, -1);
setStartTimeMs( SE019,  467 );
SE020 = playSeVer2( spep_0 + 166, 1138, "",spep_0 + 180, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 166, SE020, 178 );
SE021 = playSeVer2( spep_0 + 220, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE021,  467 );
SE022 = playSeVer2( spep_0 + 198, 1138, "",spep_0 + 212, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 198, SE022, 184 );
SE023 = playSeVer2( spep_0 + 228, 1138, "",spep_0 + 242, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 228, SE023, 184 );

--向かってくる
SE024 = playSeVer2( spep_0 + 242, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 242, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 258; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
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
SE026 = playSeVer2( spep_0 + 280, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE026, 164 );
SE027 = playSeVer2( spep_0 + 286, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 286, 1009, "", 0, 0, 0, -1);

--蹴り飛ばす
SE029 = playSeVer2( spep_0 + 316, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE029, 136 );
SE030 = playSeVer2( spep_0 + 318, 1120, "", 0, 0, 0, -1);

--背景音
SE031 = playSeVer2( spep_0 + 368, 1264, "",spep_0 + 456, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 368, SE031, 58 );

--腕あげる
SE032 = playSeVer2( spep_0 + 390, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 444f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_1 + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_1 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -28 );
--setEffScaleKey( spep_1 + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_1 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, housha, 0 );
setEffRotateKey( spep_1 + 90, housha, 0 );
setEffAlphaKey( spep_1 + 0, housha, 255 );
setEffAlphaKey( spep_1 + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);
 
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


-------------------------------------------------
-- 気弾発射〜爆発してフィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 306;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射〜爆発してフィニッシュ 手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾発射〜爆発してフィニッシュ 奥(ef_002b)
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
setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 172 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, 400.1, 457.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 400.1, 457.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 377.2, 430.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 377.2, 430.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 354.3, 403.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 354.3, 403.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 331.4, 376.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 331.4, 376.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 308.5, 349.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 308.5, 349.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 285.6, 322.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 285.6, 322.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 262.6, 296.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 262.6, 296.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 259.2, 292.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 259.2, 292.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 255.6, 289.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 255.6, 289.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 251.6, 285.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 251.6, 285.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 247.4, 281.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 247.4, 281.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 242.9, 277.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 242.9, 277.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 238.1, 272.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 238.1, 272.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 233, 267.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 233, 267.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 227.6, 262.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 227.6, 262.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 200.4, 231.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 200.4, 231.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 175, 202.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 175, 202.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 151.7, 175.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 151.7, 175.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 130.2, 150.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 130.2, 150.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 110.7, 127.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 110.7, 127.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 93, 107.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 93, 107.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 77.2, 89 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 77.2, 89 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 63.4, 72.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 63.4, 72.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 51.4, 58.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 51.4, 58.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 41.2, 46.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 41.2, 46.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 44, 62.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 44, 62.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 18.6, -2.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 18.6, -2.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 31.7, 50.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 31.7, 50.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 13.3, 2.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 13.3, 2.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 27.9, 47.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 27.9, 47.1 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 15 );


-- ** 音 ** --
--気弾発射
SE034 = playSeVer2( spep_2 + 0, 1145, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 0, 1177, "", 0, 0, 0, 0.6);
SE036 = playSeVer2( spep_2 + 0, 1284, "", 0, 0, 0, 0.6);

--気弾飛んでいく
SE037 = playSeVer2( spep_2 + 120, 1202, "",spep_2 + 192, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 120, SE037, 182 );

--爆発
SE038 = playSeVer2( spep_2 + 170, 1024, "", 0, 0, 0, -1);

--羽ばたく
SE039 = playSeVer2( spep_2 + 234, 1333, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE039, 119 );
setStartTimeMs( SE039,  467 );

--画面遷移
SE040 = playSeVer2( spep_2 + 220, 8, "", 0, 0, 0, -1);

--羽ばたく
SE041 = playSeVer2( spep_2 + 260, 1333, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE041, 114 );
setStartTimeMs( SE041,  467 );
SE042 = playSeVer2( spep_2 + 236, 1138, "",spep_2 + 250, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 236, SE042, 108 );
SE043 = playSeVer2( spep_2 + 260, 1138, "",spep_2 + 276, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 260, SE043, 127 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 172); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 306f


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜両腕を掲げる
-------------------------------------------------
MAX_FRAME_0 = 444;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 登場〜両腕を掲げる_手前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 登場〜両腕を掲げる_奥(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 152;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -107, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -107, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 60 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 275.8, -1.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 275.7, -1.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 275.7, -1.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 275.6, -1.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 275.6, -1.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 275.4, -2 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 275.4, -2 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 275.1, -2.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 275.1, -2.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 274.7, -2.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 274.7, -2.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 274.3, -2.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 274.3, -2.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 273.8, -3.2 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 273.8, -3.2 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 273.2, -3.6 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 273.2, -3.6 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 272.5, -4.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 272.5, -4.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 271.7, -4.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 271.7, -4.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 270.9, -5.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 270.9, -5.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 269.9, -5.9 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 269.9, -5.9 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 268.9, -6.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 268.9, -6.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 268, -7.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 268, -7.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 267.1, -7.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 267.1, -7.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 266.4, -8.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 266.4, -8.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 265.7, -8.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 265.7, -8.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 265.1, -9.3 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 265.1, -9.3 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 264.6, -9.7 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 264.6, -9.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 264.1, -10 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 264.1, -10 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 263.7, -10.3 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 263.7, -10.3 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 263.5, -10.5 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 263.5, -10.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 263.3, -10.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 263.3, -10.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 263.1, -10.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 263.1, -10.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 263.1, -10.8 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 263.1, -10.8 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 332.5, -30.2 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 332.5, -30.2 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 540.8, -88.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 540.8, -88.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 888, -186.2 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 888, -186.2 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 1339.3, -312.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 1339.3, -312.9 , 0 );

setScaleKey( spep_0 + 0, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 4.93, 4.93 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 7.38, 7.38 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 7.38, 7.38 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 10.58, 10.58 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 10.58, 10.58 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 272 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 336 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 272 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 320 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 272 + OFFSET_X, 1, 250, 10 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 250, 10 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 224.2, 10 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 224.2, 10 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 198.5, 10 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 198.5, 10 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 172.8, 10 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 172.8, 10 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 147.1, 10 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 147.1, 10 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 121.4, 10 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 121.4, 10 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 95.7, 10 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 95.7, 10 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 70, 10 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 70, 10 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 55, 18.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 55, 18.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 110, 53.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 110, 53.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 72.3, -8.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 72.3, -8.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 123.3, 11.1 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 123.3, 11.1 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 97.7, 27.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 97.7, 27.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 109.5, 1.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 109.5, 1.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 118.4, 20 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 118.4, 20 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 111.5, 5.7 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 111.5, 5.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 126.6, 11.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 126.6, 11.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 123.8, 13.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 123.8, 13.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 126.4, 13.3 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 126.4, 13.3 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 129, 13.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 129, 13.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 131.6, 12.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 131.6, 12.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 134.1, 12.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 134.1, 12.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 136.7, 12.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 136.7, 12.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 139.3, 12.3 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 139.3, 12.3 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 59.4, -10.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 59.4, -10.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 131.1, 71.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 131.1, 71.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 106.9, 20.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 106.9, 20.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 194, 57.9 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 194, 57.9 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 227, 98.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 227, 98.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 319.9, 102.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 319.9, 102.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 432.5, 158.8 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 432.5, 158.8 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 561, 94.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 561, 94.7 , 0 );

setScaleKey( spep_0 + 272 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2.73, 2.73 );

setRotateKey( spep_0 + 272 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -6.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -2 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -12.8 );


-- ** 音 ** --
--羽ばたく
SE001 = playSeVer2( spep_0 + 0, 1333, "", 0, 4, 0, -1);
setStartTimeMs( SE001,  476 );
SE002 = playSeVer2( spep_0 + 0, 1138, "",spep_0 + 12, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 174 );
SE003 = playSeVer2( spep_0 + 26, 1333, "", 0, 6, 0, -1);
setStartTimeMs( SE003,  467 );
SE004 = playSeVer2( spep_0 + 48, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE004,  467 );
SE005 = playSeVer2( spep_0 + 26, 1138, "",spep_0 + 40, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 26, SE005, 176 );
SE006 = playSeVer2( spep_0 + 80, 1333, "", 0, 6, 0, -1);
setStartTimeMs( SE006,  467 );
SE007 = playSeVer2( spep_0 + 56, 1138, "",spep_0 + 70, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 168 );

--集中線
SE008 = playSeVer2( spep_0 + 58, 1237, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 58, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE009, 66 );

--羽ばたく
SE010 = playSeVer2( spep_0 + 104, 1333, "", 0, 6, 0, -1);
setStartTimeMs( SE010,  467 );
SE011 = playSeVer2( spep_0 + 84, 1138, "",spep_0 + 98, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 84, SE011, 191 );

--悟飯おりる
SE012 = playSeVer2( spep_0 + 96, 1207, "",spep_0 + 146, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 96, SE012, 71 );
SE013 = playSeVer2( spep_0 + 96, 63, "",spep_0 + 164, 0, 24, -1);

--羽ばたく
SE014 = playSeVer2( spep_0 + 130, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE014,  467 );
SE015 = playSeVer2( spep_0 + 110, 1138, "",spep_0 + 124, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 110, SE015, 188 );
SE016 = playSeVer2( spep_0 + 158, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE016,  467 );
SE017 = playSeVer2( spep_0 + 138, 1138, "",spep_0 + 152, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 138, SE017, 193 );

--羽ばたく
SE019 = playSeVer2( spep_0 + 190, 1333, "", 0, 6, 0, -1);
setStartTimeMs( SE019,  467 );
SE020 = playSeVer2( spep_0 + 166, 1138, "",spep_0 + 180, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 166, SE020, 178 );
SE021 = playSeVer2( spep_0 + 220, 1333, "", 0, 8, 0, -1);
setStartTimeMs( SE021,  467 );
SE022 = playSeVer2( spep_0 + 198, 1138, "",spep_0 + 212, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 198, SE022, 184 );
SE023 = playSeVer2( spep_0 + 228, 1138, "",spep_0 + 242, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 228, SE023, 184 );

--向かってくる
SE024 = playSeVer2( spep_0 + 242, 1182, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 242, 1117, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 258; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE024, 0);
stopSe( SP_dodge - 12, SE025, 0);
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
SE026 = playSeVer2( spep_0 + 280, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 280, SE026, 164 );
SE027 = playSeVer2( spep_0 + 286, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 286, 1009, "", 0, 0, 0, -1);

--蹴り飛ばす
SE029 = playSeVer2( spep_0 + 316, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE029, 136 );
SE030 = playSeVer2( spep_0 + 318, 1120, "", 0, 0, 0, -1);

--背景音
SE031 = playSeVer2( spep_0 + 368, 1264, "",spep_0 + 456, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 368, SE031, 58 );

--腕あげる
SE032 = playSeVer2( spep_0 + 390, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 444f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1513, 90, 0x100, -1, 0, 0, 0 ); -- カード
setEffScaleKey( spep_1 + 0, speff2, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_1 + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

spname = entryEffectLife( spep_1 + 0, 1512, 90, 0x100, -1, 0, 0, -28 );
setEffScaleKey( spep_1 + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_1 + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_1 + 0, 1511, 90, 0x100, -1, 0, 0, 0 ); --黄色放射
setEffMoveKey( spep_1 + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, housha, 0 );
setEffRotateKey( spep_1 + 90, housha, 0 );
setEffAlphaKey( spep_1 + 0, housha, 255 );
setEffAlphaKey( spep_1 + 90, housha, 255 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 ); --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_1 + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


-------------------------------------------------
-- 気弾発射〜爆発してフィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 306;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気弾発射〜爆発してフィニッシュ 手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 気弾発射〜爆発してフィニッシュ 奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 172 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, 400.1, 457.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 400.1, 457.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 377.2, 430.3 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 377.2, 430.3 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 354.3, 403.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 354.3, 403.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 331.4, 376.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 331.4, 376.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 308.5, 349.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 308.5, 349.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 285.6, 322.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 285.6, 322.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 262.6, 296.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 262.6, 296.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 259.2, 292.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 259.2, 292.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 255.6, 289.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 255.6, 289.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 251.6, 285.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 251.6, 285.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 247.4, 281.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 247.4, 281.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 242.9, 277.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 242.9, 277.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 238.1, 272.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 238.1, 272.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 233, 267.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 233, 267.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 227.6, 262.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 227.6, 262.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 200.4, 231.1 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 200.4, 231.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 175, 202.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 175, 202.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 151.7, 175.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 151.7, 175.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 130.2, 150.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 130.2, 150.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 110.7, 127.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 110.7, 127.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 93, 107.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 93, 107.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 77.2, 89 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 77.2, 89 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 63.4, 72.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 63.4, 72.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 51.4, 58.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 51.4, 58.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 41.2, 46.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 41.2, 46.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 44, 62.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 44, 62.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 18.6, -2.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 18.6, -2.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 31.7, 50.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 31.7, 50.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 13.3, 2.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 13.3, 2.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 27.9, 47.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 27.9, 47.1 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 15 );


-- ** 音 ** --
--気弾発射
SE034 = playSeVer2( spep_2 + 0, 1145, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 0, 1177, "", 0, 0, 0, 0.6);
SE036 = playSeVer2( spep_2 + 0, 1284, "", 0, 0, 0, 0.6);

--気弾飛んでいく
SE037 = playSeVer2( spep_2 + 120, 1202, "",spep_2 + 192, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 120, SE037, 182 );

--爆発
SE038 = playSeVer2( spep_2 + 170, 1024, "", 0, 0, 0, -1);

--羽ばたく
SE039 = playSeVer2( spep_2 + 234, 1333, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_2 + 234, SE039, 119 );
setStartTimeMs( SE039,  467 );

--画面遷移
SE040 = playSeVer2( spep_2 + 220, 8, "", 0, 0, 0, -1);

--羽ばたく
SE041 = playSeVer2( spep_2 + 260, 1333, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE041, 114 );
setStartTimeMs( SE041,  467 );
SE042 = playSeVer2( spep_2 + 236, 1138, "",spep_2 + 250, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 236, SE042, 108 );
SE043 = playSeVer2( spep_2 + 260, 1138, "",spep_2 + 276, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 260, SE043, 127 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 172); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 306f


end