-- 1028890: LR_アルティメット孫悟飯_ユニット超必殺技：アルティメットコンビネーション
-- sp_effect_a1_00441
-- sp2708

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162892;  -- 敵と対峙～２人が手を前にかざす	ef_001
SP_001b = 162893;  -- 敵と対峙～２人が手を前にかざす	ef_001b
SP_002 = 162896;  -- 気溜め～フィニッシュ	ef_002
SP_002b = 162897;  -- 気溜め～フィニッシュ	ef_002b

-- 敵側
SP_001r = 162894;  -- ２人が手を前にかざす	ef_001r
SP_001br = 162895;  -- ２人が手を前にかざす	ef_001br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

--[[
--setDisp( 0, 1, 0);
--changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
]]--

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 敵と対峙～２人が手を前にかざす
------------------------------------------------------
MAX_FRAME_0 = 792;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );     -- 敵と対峙～２人が手を前にかざす	ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );    -- 敵と対峙～２人が手を前にかざす	ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 70;

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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 50 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 117 );

setMoveKey( spep_0, 1, 210.2, 101 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 210.5, 101 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 210.5, 101 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 210.7, 101 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 210.7, 101 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 210.9, 101 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 210.9, 101 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 211.1, 101 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 211.1, 101 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 211.3, 101 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 211.3, 101 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 211.6, 101 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 211.6, 101 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 211.8, 101 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 211.8, 101 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 212, 101 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 212, 101 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 212.2, 101 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 212.2, 101 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 212.4, 101 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 212.4, 101 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 212.7, 101 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 212.7, 101 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 212.9, 101 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 212.9, 101 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 213.1, 101 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 213.1, 101 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 213.3, 101 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 213.3, 101 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 213.5, 101 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 213.5, 101 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 213.8, 101 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 213.8, 101 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 214, 101 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 214, 101 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 214.2, 101 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 214.2, 101 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 214.4, 101 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 214.4, 101 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 214.7, 101 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 214.7, 101 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 214.9, 101 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 214.9, 101 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 215.1, 101 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 215.1, 101 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 215.3, 101 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 215.3, 101 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 215.5, 101 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 215.5, 101 , 0 );

setScaleKey( spep_0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 234 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 284 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 234 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 238 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 234 + OFFSET_X, 1, -83.4, -69.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -83.4, -69.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -66.9, -67.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -66.9, -67.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 124.8, 44.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 124.8, 44.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 184, 14.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 184, 14.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 112.1, 75.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 112.1, 75.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 163.6, 56.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 163.6, 56.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 142.1, 35.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 142.1, 35.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 140.6, 53.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 140.6, 53.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 156.3, 39.3 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 156.3, 39.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 149.8, 46.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 149.8, 46.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 150.5, 43.4 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 150.5, 43.4 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 152.6, 45.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 152.6, 45.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 177.5, 28 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 177.5, 28 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 520.9, 0.2 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 520.9, 0.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 675.9, -13.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 675.9, -13.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 964.7, -37.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 964.7, -37.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 1016.1, -42.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 1016.1, -42.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 1046.6, -46.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 1046.6, -46.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 1065.3, -48.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 1065.3, -48.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 1076.9, -50.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 1076.9, -50.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 1083.9, -51.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 1083.9, -51.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 1088.1, -52.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 1088.1, -52.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 1090.6, -52.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 1090.6, -52.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 1092.1, -53 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 1092.1, -53 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 1093.1, -53.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 1093.1, -53.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 1094.2, -53.4 , 0 );

setScaleKey( spep_0 + 234 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.62, 2.62 );

setRotateKey( spep_0 + 234 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 1.9 );

--敵の動き3
setDisp( spep_0 + 346 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 672 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 346 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 366 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 420 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 494 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 568 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 622 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 346 + OFFSET_X, 1, -85, -121.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -85, -121.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -84.4, -121.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -84.4, -121.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -82.8, -121.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -82.8, -121.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -80, -122 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -80, -122 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -76, -122.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -76, -122.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -70.7, -122.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -70.7, -122.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -63.9, -123.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -63.9, -123.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -55.4, -124.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -55.4, -124.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -44.9, -125.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -44.9, -125.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -31.7, -126.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -31.7, -126.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 87.8, -101.1 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 87.8, -101.1 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 128.4, -119.8 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 128.4, -119.8 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 206, -77.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 206, -77.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 279.5, -109 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 279.5, -109 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 142, -76.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 142, -76.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 207.8, -76 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 207.8, -76 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 174.8, -83.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 174.8, -83.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 193.7, -127.8 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 193.7, -127.8 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 154.9, -89.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 154.9, -89.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 194.2, -89.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 194.2, -89.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 185.3, -119.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 185.3, -119.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 167.6, -116.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 167.6, -116.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 182.1, -101.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 182.1, -101.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 179.7, -109 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 179.7, -109 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 172.4, -106.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 172.4, -106.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 158.2, -68.5 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 158.2, -68.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 154.5, -67.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 154.5, -67.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 151, -66.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 151, -66.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 154.1, -57.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 154.1, -57.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 157.3, -49.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 157.3, -49.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 160.7, -41.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 160.7, -41.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 164.2, -33.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 164.2, -33.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 167.9, -26.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 167.9, -26.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 171.8, -19.1 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 171.8, -19.1 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 176, -11.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 176, -11.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 180.5, -4.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 180.5, -4.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 185.3, 2.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 185.3, 2.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 190.4, 9.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 190.4, 9.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 190.2, 9.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 190.2, 9.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 196, 16.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 196, 16.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 201.7, 23.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 201.7, 23.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 207.4, 30.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 207.4, 30.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 213.2, 37.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 213.2, 37.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 218.9, 44.4 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 218.9, 44.4 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 222.8, 49.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 222.8, 49.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 226.7, 54.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 226.7, 54.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 173, 28.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 173, 28.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 112.4, 20 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 112.4, 20 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 170, -37.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 170, -37.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 109.4, -34.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 109.4, -34.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 107.9, -9.4 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 107.9, -9.4 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 99.2, -10.4 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 99.2, -10.4 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 95.3, -10.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 95.3, -10.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 93.1, -11.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 93.1, -11.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 91.8, -11.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 91.8, -11.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 91.1, -11.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 91.1, -11.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 90.7, -11.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 90.7, -11.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 90.5, -11.4 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 90.5, -11.4 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -461.5, 11 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -461.5, 11 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -457.9, 11.2 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -457.9, 11.2 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -445.9, 9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -445.9, 9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -425.4, 4.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -425.4, 4.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -396.4, -2.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -396.4, -2.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -358.7, -12.6 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -358.7, -12.6 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -318.1, -28 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -318.1, -28 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -295.3, -36.1 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -295.3, -36.1 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -281.4, -40.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -281.4, -40.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -272, -43.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -272, -43.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -265.2, -44.6 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -265.2, -44.6 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -260.1, -45.4 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -260.1, -45.4 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -256.1, -45.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -256.1, -45.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -252.8, -45.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -252.8, -45.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -250.2, -45.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -250.2, -45.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -248, -45.3 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -248, -45.3 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -246.2, -44.7 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -246.2, -44.7 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -244.6, -44.1 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -244.6, -44.1 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -243.3, -73 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -243.3, -73 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -242.2, -22.1 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -242.2, -22.1 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -240.7, -54.3 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -240.7, -54.3 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -238, -35.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -238, -35.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -233.9, -46.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -233.9, -46.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -228.3, -44.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -228.3, -44.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -221, -45.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -221, -45.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -211.6, -46.2 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -211.6, -46.2 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -199.5, -47.3 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -199.5, -47.3 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -183.6, -48.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -183.6, -48.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -160.7, -50.7 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -160.7, -50.7 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -100.4, -55.9 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, -100.4, -55.9 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -509.4, -4.9 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -509.4, -4.9 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -479.3, -8.1 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -479.3, -8.1 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -446, -11.4 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -446, -11.4 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -409.2, -14.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -409.2, -14.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -368.2, -18 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -368.2, -18 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -321.6, -21.3 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -321.6, -21.3 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -265.4, -24.6 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -265.4, -24.6 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -117.8, 143.4 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -117.8, 143.4 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -19.9, 46.6 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -19.9, 46.6 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -32.3, 146.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -32.3, 146.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -131, 50 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -131, 50 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -99.6, 121 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -99.6, 121 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -53.6, 80.4 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -53.6, 80.4 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -58.2, 118.4 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -58.2, 118.4 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -91.3, 82.9 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -91.3, 82.9 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -90, 111.7 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -90, 111.7 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -53.6, 80.4 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -53.6, 80.4 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -28.4, 107.8 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -28.4, 107.8 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -56.4, 91.4 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -56.4, 91.4 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -54.3, 144 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -54.3, 144 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -23.5, 145.2 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -23.5, 145.2 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -28.1, 172 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -28.1, 172 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -48, 151.3 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -48, 151.3 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -45.7, 180.1 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -45.7, 180.1 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -30.1, 170.1 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -30.1, 170.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -33.2, 187.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -33.2, 187.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -43.4, 187.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -43.4, 187.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -46.1, 203.6 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -46.1, 203.6 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -41.1, 206.7 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -41.1, 206.7 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -45, 222.9 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -45, 222.9 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -55.1, 228.1 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -55.1, 228.1 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -60.2, 246 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -60.2, 246 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -121.3, 316.8 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -121.3, 316.8 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -556.1, 809.6 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -556.1, 809.6 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 449, -627.8 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 449, -627.8 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 362.1, -493.5 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 362.1, -493.5 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 255.6, -329.6 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 255.6, -329.6 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 2.4, 59.6 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 2.4, 59.6 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -43.1, 134.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -43.1, 134.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -61, 163.5 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -61, 163.5 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -73.8, 184.5 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -73.8, 184.5 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -83.9, 200.9 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -83.9, 200.9 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -92, 214.4 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -92, 214.4 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -98.9, 225.5 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -98.9, 225.5 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -104.6, 235 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -104.6, 235 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -109.5, 242.8 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -109.5, 242.8 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -113.6, 249.6 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -113.6, 249.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -117, 255.1 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -117, 255.1 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -119.8, 259.6 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -119.8, 259.6 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -122, 263.3 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -122, 263.3 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -123.7, 266.1 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -123.7, 266.1 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -124.9, 268 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -124.9, 268 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -125.6, 269.2 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -125.6, 269.2 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -125.9, 269.6 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -125.9, 269.6 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -126.3, 270.4 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -126.3, 270.4 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -126.7, 271.3 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -126.7, 271.3 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -127.1, 272.1 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -127.1, 272.1 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -127.5, 272.9 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -127.5, 272.9 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -128, 273.7 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -128, 273.7 , 0 );

setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 7.24, 7.24 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 7.24, 7.24 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 651 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 653 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 657 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 658 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 661 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 665 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 669 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 670 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_0 + 346 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 41.4 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 41.4 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 629 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 630 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 651 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 656 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 672 + OFFSET_X, 1, -20.7 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 85 );
--ゴテンクス着地
SE002 = playSeVer2( spep_0 + 42, 63, "",spep_0 + 88, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 42, SE002, 78 );
SE003 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE003, 148 );
SE004 = playSeVer2( spep_0 + 62, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE004, 78 );
--画面遷移
SE006 = playSeVer2( spep_0 + 158, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE006, 66 );
--オーラ
SE007 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE007, 40 );
--イナヅマ
SE008 = playSeVer2( spep_0 + 180, 1043, "", 0, 0, 0, -1);
--ゴテンクス向かってくる
SE009 = playSeVer2( spep_0 + 180, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 180, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE010, 63 );
--オーラ
SE011 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 40 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 210;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);


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
--頭突き
SE012 = playSeVer2( spep_0 + 224, 1049, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 230, 1187, "", 0, 0, 0, -1);
--悟飯突っ込んでくる
SE014 = playSeVer2( spep_0 + 278, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 278, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 280, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 280, 1121, "",spep_0 + 392, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 280, SE017, 78 );	
setPitch( spep_0 + 280, SE017, 500 );
setTimeStretch( SE017, 1.33, 30, 4 );
SE018 = playSeVer2( spep_0 + 344, 1019, "",spep_0 + 390, 0, 20, -1);
--蹴りヒット
SE019 = playSeVer2( spep_0 + 352, 1153, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 356, 1187, "", 0, 0, 0, -1);
--回転する
SE021 = playSeVer2( spep_0 + 416, 63, "",spep_0 + 476, 0, 16, -1);
--蹴り飛ばす
SE022 = playSeVer2( spep_0 + 446, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 456, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 458, 1110, "", 0, 0, 0, -1);
--ゴテンクス着地
SE025 = playSeVer2( spep_0 + 490, 63, "",spep_0 + 542, 0, 16, -1);
SE026 = playSeVer2( spep_0 + 508, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE026, 151 );
SE027 = playSeVer2( spep_0 + 516, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 516, SE027, 160 );
--ゴテンクス向かっていく
SE028 = playSeVer2( spep_0 + 522, 1182, "",spep_0 + 592, 0, 24, -1);
SE029 = playSeVer2( spep_0 + 522, 1117, "",spep_0 + 592, 0, 26, -1);
--蹴り上げる
SE030 = playSeVer2( spep_0 + 550, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 558, 1120, "", 0, 0, 0, -1);
--敵飛んでいく
SE032 = playSeVer2( spep_0 + 614, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE032, 77 );
SE033 = playSeVer2( spep_0 + 614, 9, "",spep_0 + 736, 0, 80, -1);
SE034 = playSeVer2( spep_0 + 618, 1121, "",spep_0 + 734, 0, 70, -1);
SE035 = playSeVer2( spep_0 + 646, 1277, "", 0, 0, 0, -1);
--腕前に出す
SE036 = playSeVer2( spep_0 + 670, 1006, "", 0, 0, 0, -1);
--カメラパン
SE037 = playSeVer2( spep_0 + 708, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 708, SE037, 85 );
setBandpassFilter( spep_0 + 708, SE037, 24, 2850 );
SE038 = playSeVer2( spep_0 + 716, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 792

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE040 = playSeVer2( spep_1 + 82, 1154, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 82, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE041, 74 );
SE042 = playSeVer2( spep_1 + 82, 1296, "",spep_2 + 124, 0, 32, -1);

------------------------------------------------------
-- 気溜め～フィニッシュ	
------------------------------------------------------
MAX_FRAME_2 = 320;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );    -- 気溜め～フィニッシュ	ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );   -- 気溜め～フィニッシュ	ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 144 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 144 + OFFSET_X, 1, -115.8, 85.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -115.8, 85.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -150.2, 115 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -150.2, 115 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -152.5, 117.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -152.5, 117.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -166.3, 128.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -166.3, 128.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -166.7, 133.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -166.7, 133.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -188, 133.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -188, 133.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -193.1, 152.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -193.1, 152.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -182.9, 139.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -182.9, 139.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -182.9, 160.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -182.9, 160.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -209.1, 146.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -209.1, 146.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -210.2, 167 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -210.2, 167 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -193.7, 149.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -193.7, 149.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -194.3, 172.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -194.3, 172.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -217.2, 153.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -217.2, 153.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -218.9, 175.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -218.9, 175.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -199.8, 155.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -199.8, 155.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -202.5, 177.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -202.5, 177.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -221.7, 156.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -221.7, 156.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -221.7, 178.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -221.7, 178.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -202.4, 159.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -202.4, 159.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -204.4, 180.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -204.4, 180.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -225.5, 160.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -225.5, 160.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -224.2, 181.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -224.2, 181.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -206.3, 161.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -206.3, 161.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -206.6, 180.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -206.6, 180.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -225.9, 159.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -225.9, 159.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -224.9, 180 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -224.9, 180 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -207.9, 160.6 , 0 );

setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_2 + 144 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 34 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 34 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 29.5 );

--敵の動き2
setDisp( spep_2 + 234 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 234 + OFFSET_X, 1, -91.7, 59.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -91.7, 59.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -93.7, 60.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -93.7, 60.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -95.7, 60.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -95.7, 60.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -93.2, 54.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -93.2, 54.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -94.4, 63.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -94.4, 63.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -91.8, 60.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -91.8, 60.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -93.2, 63.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -93.2, 63.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -90.6, 61.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -90.6, 61.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -91.7, 59.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -91.7, 59.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -93.7, 58.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -93.7, 58.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -91.2, 60.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -91.2, 60.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -89.6, 64.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -89.6, 64.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -90.5, 59.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -90.5, 59.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -89.3, 62.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -89.3, 62.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -93.4, 55 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -93.4, 55 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -91.6, 60.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -91.6, 60.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -91.2, 59.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -91.2, 59.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -97.3, 57.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -97.3, 57.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -88.2, 56.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -88.2, 56.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -92, 57.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -92, 57.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -95.9, 58.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -95.9, 58.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -94, 60.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -94, 60.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -88.4, 64.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -88.4, 64.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -88, 56.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -88, 56.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -90.3, 59.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -90.3, 59.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -91.5, 59.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -91.5, 59.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -94, 59.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -94, 59.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -89.3, 64.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -89.3, 64.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -89.8, 63.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -89.8, 63.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -91.7, 59.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -91.7, 59.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -93.2, 59.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -93.2, 59.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -91.1, 59.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -91.1, 59.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -87.1, 61.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -87.1, 61.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -90.8, 60.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -90.8, 60.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -92.9, 62.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -92.9, 62.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -91.9, 65.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -91.9, 65.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -93.2, 58.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -93.2, 58.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -91.4, 62.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -91.4, 62.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -93.7, 58.6 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -93.7, 58.6 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -96.8, 62.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -96.8, 62.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -91.5, 59.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -91.5, 59.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -92.4, 57.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -92.4, 57.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -89.9, 55.9 , 0 );

setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.21, 2.21 );

setRotateKey( spep_2 + 234 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 32.5 );

setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 318 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾発射
SE043 = playSeVer2( spep_2 + 68, 1133, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 68, 1146, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 68, 1213, "",spep_2 + 304, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 68, SE045, 68 );
--気弾中
SE046 = playSeVer2( spep_2 + 132, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE046, 182 );
SE047 = playSeVer2( spep_2 + 132, 1161, "", 0, 0, 0, -1);
--爆発
SE048 = playSeVer2( spep_2 + 194, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 200, 1067, "", 0, 0, 0, -1);
--飲みこまれる
SE050 = playSeVer2( spep_2 + 206, 1258, "", 0, 32, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 200 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 320 -2

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

------------------------------------------------------
-- 敵と対峙～２人が手を前にかざす
------------------------------------------------------
MAX_FRAME_0 = 792;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );     -- 敵と対峙～２人が手を前にかざす	ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );    -- 敵と対峙～２人が手を前にかざす	ef_001br
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 70;

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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 50 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 17 );

setMoveKey( spep_0, 1, -210.2, 101 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -210.5, 101 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -210.5, 101 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -210.7, 101 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -210.7, 101 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -210.9, 101 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -210.9, 101 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -211.1, 101 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -211.1, 101 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -211.3, 101 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -211.3, 101 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -211.6, 101 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -211.6, 101 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -211.8, 101 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -211.8, 101 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -212, 101 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -212, 101 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -212.2, 101 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -212.2, 101 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -212.4, 101 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -212.4, 101 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -212.7, 101 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -212.7, 101 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -212.9, 101 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -212.9, 101 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -213.1, 101 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -213.1, 101 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -213.3, 101 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -213.3, 101 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -213.5, 101 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -213.5, 101 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -213.8, 101 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -213.8, 101 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -214, 101 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -214, 101 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -214.2, 101 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -214.2, 101 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -214.4, 101 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -214.4, 101 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -214.7, 101 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -214.7, 101 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -214.9, 101 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -214.9, 101 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -215.1, 101 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -215.1, 101 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -215.3, 101 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -215.3, 101 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -215.5, 101 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -215.5, 101 , 0 );

setScaleKey( spep_0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 234 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 284 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 234 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 238 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 234 + OFFSET_X, 1, -83.4, -69.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -83.4, -69.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -66.9, -67.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -66.9, -67.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 124.8, 44.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 124.8, 44.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 184, 14.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 184, 14.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 112.1, 75.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 112.1, 75.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 163.6, 56.3 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 163.6, 56.3 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 142.1, 35.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 142.1, 35.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 140.6, 53.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 140.6, 53.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 156.3, 39.3 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 156.3, 39.3 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 149.8, 46.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 149.8, 46.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 150.5, 43.4 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 150.5, 43.4 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 152.6, 45.4 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 152.6, 45.4 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 177.5, 28 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 177.5, 28 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 520.9, 0.2 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 520.9, 0.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 675.9, -13.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 675.9, -13.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 964.7, -37.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 964.7, -37.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 1016.1, -42.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 1016.1, -42.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 1046.6, -46.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 1046.6, -46.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 1065.3, -48.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 1065.3, -48.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 1076.9, -50.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 1076.9, -50.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 1083.9, -51.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 1083.9, -51.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 1088.1, -52.1 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 1088.1, -52.1 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 1090.6, -52.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 1090.6, -52.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 1092.1, -53 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 1092.1, -53 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 1093.1, -53.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 1093.1, -53.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 1094.2, -53.4 , 0 );

setScaleKey( spep_0 + 234 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.62, 2.62 );

setRotateKey( spep_0 + 234 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 1.9 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 1.9 );

--敵の動き3
setDisp( spep_0 + 346 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 672 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 346 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 366 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 420 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 494 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 568 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 622 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 346 + OFFSET_X, 1, -85, -121.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -85, -121.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -84.4, -121.6 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -84.4, -121.6 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -82.8, -121.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -82.8, -121.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -80, -122 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -80, -122 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -76, -122.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -76, -122.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -70.7, -122.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -70.7, -122.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -63.9, -123.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -63.9, -123.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -55.4, -124.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -55.4, -124.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -44.9, -125.2 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -44.9, -125.2 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -31.7, -126.4 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -31.7, -126.4 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 87.8, -101.1 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 87.8, -101.1 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 128.4, -119.8 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 128.4, -119.8 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 206, -77.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 206, -77.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 279.5, -109 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 279.5, -109 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 142, -76.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 142, -76.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 207.8, -76 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 207.8, -76 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 174.8, -83.1 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 174.8, -83.1 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 193.7, -127.8 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 193.7, -127.8 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 154.9, -89.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 154.9, -89.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 194.2, -89.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 194.2, -89.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 185.3, -119.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 185.3, -119.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 167.6, -116.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 167.6, -116.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 182.1, -101.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 182.1, -101.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 179.7, -109 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 179.7, -109 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 172.4, -106.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 172.4, -106.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 174.8, -109 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 158.2, -68.5 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 158.2, -68.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 154.5, -67.4 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 154.5, -67.4 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 151, -66.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 151, -66.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 154.1, -57.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 154.1, -57.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 157.3, -49.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 157.3, -49.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 160.7, -41.6 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 160.7, -41.6 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 164.2, -33.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 164.2, -33.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 167.9, -26.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 167.9, -26.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 171.8, -19.1 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 171.8, -19.1 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 176, -11.9 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 176, -11.9 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 180.5, -4.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 180.5, -4.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 185.3, 2.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 185.3, 2.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 190.4, 9.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 190.4, 9.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 190.2, 9.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 190.2, 9.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 196, 16.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 196, 16.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 201.7, 23.3 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 201.7, 23.3 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 207.4, 30.3 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 207.4, 30.3 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 213.2, 37.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 213.2, 37.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 218.9, 44.4 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 218.9, 44.4 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 222.8, 49.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 222.8, 49.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 226.7, 54.6 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 226.7, 54.6 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 173, 28.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 173, 28.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 112.4, 20 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 112.4, 20 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 170, -37.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 170, -37.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 138.2, -5.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 109.4, -34.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 109.4, -34.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 107.9, -9.4 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 107.9, -9.4 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 99.2, -10.4 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 99.2, -10.4 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 95.3, -10.9 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 95.3, -10.9 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 93.1, -11.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 93.1, -11.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 91.8, -11.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 91.8, -11.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 91.1, -11.4 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 91.1, -11.4 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 90.7, -11.4 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 90.7, -11.4 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 90.5, -11.4 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 90.5, -11.4 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -461.5, 11 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -461.5, 11 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -457.9, 11.2 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -457.9, 11.2 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -445.9, 9 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -445.9, 9 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -425.4, 4.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -425.4, 4.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -396.4, -2.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -396.4, -2.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -358.7, -12.6 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -358.7, -12.6 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -318.1, -28 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -318.1, -28 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -295.3, -36.1 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -295.3, -36.1 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -281.4, -40.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -281.4, -40.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -272, -43.1 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -272, -43.1 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -265.2, -44.6 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -265.2, -44.6 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -260.1, -45.4 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -260.1, -45.4 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -256.1, -45.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -256.1, -45.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -252.8, -45.8 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -252.8, -45.8 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -250.2, -45.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -250.2, -45.6 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, -248, -45.3 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, -248, -45.3 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -246.2, -44.7 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -246.2, -44.7 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, -244.6, -44.1 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, -244.6, -44.1 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, -243.3, -73 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, -243.3, -73 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, -242.2, -22.1 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, -242.2, -22.1 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, -240.7, -54.3 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, -240.7, -54.3 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, -238, -35.5 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, -238, -35.5 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, -233.9, -46.2 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, -233.9, -46.2 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -228.3, -44.5 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -228.3, -44.5 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, -221, -45.3 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, -221, -45.3 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, -211.6, -46.2 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, -211.6, -46.2 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, -199.5, -47.3 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, -199.5, -47.3 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, -183.6, -48.7 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, -183.6, -48.7 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, -160.7, -50.7 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, -160.7, -50.7 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, -100.4, -55.9 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, -100.4, -55.9 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, -509.4, -4.9 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, -509.4, -4.9 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, -479.3, -8.1 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, -479.3, -8.1 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, -446, -11.4 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, -446, -11.4 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, -409.2, -14.7 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, -409.2, -14.7 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, -368.2, -18 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, -368.2, -18 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, -321.6, -21.3 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, -321.6, -21.3 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, -265.4, -24.6 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, -265.4, -24.6 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, -117.8, 143.4 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, -117.8, 143.4 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, -19.9, 46.6 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, -19.9, 46.6 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, -32.3, 146.9 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, -32.3, 146.9 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, -131, 50 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, -131, 50 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, -99.6, 121 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, -99.6, 121 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, -53.6, 80.4 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, -53.6, 80.4 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, -58.2, 118.4 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, -58.2, 118.4 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, -91.3, 82.9 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, -91.3, 82.9 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, -90, 111.7 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, -90, 111.7 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, -53.6, 80.4 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, -53.6, 80.4 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, -28.4, 107.8 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, -28.4, 107.8 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, -56.4, 91.4 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, -56.4, 91.4 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, -54.3, 144 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, -54.3, 144 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, -23.5, 145.2 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, -23.5, 145.2 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, -28.1, 172 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, -28.1, 172 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, -48, 151.3 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, -48, 151.3 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, -45.7, 180.1 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, -45.7, 180.1 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, -30.1, 170.1 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, -30.1, 170.1 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, -33.2, 187.8 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, -33.2, 187.8 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, -43.4, 187.1 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, -43.4, 187.1 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, -46.1, 203.6 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, -46.1, 203.6 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, -41.1, 206.7 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, -41.1, 206.7 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, -45, 222.9 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, -45, 222.9 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, -55.1, 228.1 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, -55.1, 228.1 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, -60.2, 246 , 0 );
setMoveKey( spep_0 + 617 + OFFSET_X, 1, -60.2, 246 , 0 );
setMoveKey( spep_0 + 618 + OFFSET_X, 1, -121.3, 316.8 , 0 );
setMoveKey( spep_0 + 619 + OFFSET_X, 1, -121.3, 316.8 , 0 );
setMoveKey( spep_0 + 620 + OFFSET_X, 1, -556.1, 809.6 , 0 );
setMoveKey( spep_0 + 621 + OFFSET_X, 1, -556.1, 809.6 , 0 );
setMoveKey( spep_0 + 622 + OFFSET_X, 1, 449, -627.8 , 0 );
setMoveKey( spep_0 + 623 + OFFSET_X, 1, 449, -627.8 , 0 );
setMoveKey( spep_0 + 624 + OFFSET_X, 1, 362.1, -493.5 , 0 );
setMoveKey( spep_0 + 625 + OFFSET_X, 1, 362.1, -493.5 , 0 );
setMoveKey( spep_0 + 626 + OFFSET_X, 1, 255.6, -329.6 , 0 );
setMoveKey( spep_0 + 627 + OFFSET_X, 1, 255.6, -329.6 , 0 );
setMoveKey( spep_0 + 628 + OFFSET_X, 1, 2.4, 59.6 , 0 );
setMoveKey( spep_0 + 629 + OFFSET_X, 1, 2.4, 59.6 , 0 );
setMoveKey( spep_0 + 630 + OFFSET_X, 1, -43.1, 134.2 , 0 );
setMoveKey( spep_0 + 631 + OFFSET_X, 1, -43.1, 134.2 , 0 );
setMoveKey( spep_0 + 632 + OFFSET_X, 1, -61, 163.5 , 0 );
setMoveKey( spep_0 + 633 + OFFSET_X, 1, -61, 163.5 , 0 );
setMoveKey( spep_0 + 634 + OFFSET_X, 1, -73.8, 184.5 , 0 );
setMoveKey( spep_0 + 635 + OFFSET_X, 1, -73.8, 184.5 , 0 );
setMoveKey( spep_0 + 636 + OFFSET_X, 1, -83.9, 200.9 , 0 );
setMoveKey( spep_0 + 637 + OFFSET_X, 1, -83.9, 200.9 , 0 );
setMoveKey( spep_0 + 638 + OFFSET_X, 1, -92, 214.4 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, -92, 214.4 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, -98.9, 225.5 , 0 );
setMoveKey( spep_0 + 641 + OFFSET_X, 1, -98.9, 225.5 , 0 );
setMoveKey( spep_0 + 642 + OFFSET_X, 1, -104.6, 235 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, -104.6, 235 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, -109.5, 242.8 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, -109.5, 242.8 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, -113.6, 249.6 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, -113.6, 249.6 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, -117, 255.1 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, -117, 255.1 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -119.8, 259.6 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -119.8, 259.6 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -122, 263.3 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -122, 263.3 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -123.7, 266.1 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -123.7, 266.1 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -124.9, 268 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -124.9, 268 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -125.6, 269.2 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, -125.6, 269.2 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -125.9, 269.6 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, -125.9, 269.6 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, -126.3, 270.4 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, -126.3, 270.4 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, -126.7, 271.3 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -126.7, 271.3 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -127.1, 272.1 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -127.1, 272.1 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -127.5, 272.9 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -127.5, 272.9 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -128, 273.7 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -128, 273.7 , 0 );

setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 587 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 588 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 589 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 590 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 591 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 592 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 593 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 594 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 595 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 596 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 597 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 598 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 599 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 600 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 601 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 602 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 603 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 604 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 605 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 606 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 607 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 608 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 609 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 610 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 611 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 612 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 613 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 614 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 615 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 617 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 618 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 619 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 620 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 621 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_0 + 622 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_0 + 623 + OFFSET_X, 1, 8.59, 8.59 );
setScaleKey( spep_0 + 624 + OFFSET_X, 1, 7.24, 7.24 );
setScaleKey( spep_0 + 625 + OFFSET_X, 1, 7.24, 7.24 );
setScaleKey( spep_0 + 626 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 627 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 628 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 629 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 630 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 631 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 632 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 633 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 634 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 635 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 636 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 637 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 638 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 641 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 642 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 643 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 644 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 647 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 648 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 651 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 652 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 653 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 657 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 658 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 661 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 662 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 665 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 666 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 669 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 670 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_0 + 346 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 553 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 554 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 555 + OFFSET_X, 1, 41 );
setRotateKey( spep_0 + 556 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_0 + 557 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_0 + 558 + OFFSET_X, 1, 41.4 );
setRotateKey( spep_0 + 559 + OFFSET_X, 1, 41.4 );
setRotateKey( spep_0 + 560 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 561 + OFFSET_X, 1, 41.6 );
setRotateKey( spep_0 + 562 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 563 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 564 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_0 + 565 + OFFSET_X, 1, 42.1 );
setRotateKey( spep_0 + 566 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_0 + 567 + OFFSET_X, 1, 42.3 );
setRotateKey( spep_0 + 568 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 621 + OFFSET_X, 1, 42.5 );
setRotateKey( spep_0 + 622 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 629 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 630 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 631 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 632 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 633 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 634 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_0 + 635 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_0 + 636 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 637 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 638 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 641 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 642 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 643 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 644 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 645 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_0 + 646 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 647 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 648 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 651 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 652 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 655 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_0 + 656 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 672 + OFFSET_X, 1, -20.7 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 85 );
--ゴテンクス着地
SE002 = playSeVer2( spep_0 + 42, 63, "",spep_0 + 88, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 42, SE002, 78 );
SE003 = playSeVer2( spep_0 + 58, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE003, 148 );
SE004 = playSeVer2( spep_0 + 62, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE004, 78 );
--画面遷移
SE006 = playSeVer2( spep_0 + 158, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE006, 66 );
--オーラ
SE007 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE007, 40 );
--イナヅマ
SE008 = playSeVer2( spep_0 + 180, 1043, "", 0, 0, 0, -1);
--ゴテンクス向かってくる
SE009 = playSeVer2( spep_0 + 180, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 180, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE010, 63 );
--オーラ
SE011 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE011, 40 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 210;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);


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
--頭突き
SE012 = playSeVer2( spep_0 + 224, 1049, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 230, 1187, "", 0, 0, 0, -1);
--悟飯突っ込んでくる
SE014 = playSeVer2( spep_0 + 278, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 278, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 280, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 280, 1121, "",spep_0 + 392, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 280, SE017, 78 );	
setPitch( spep_0 + 280, SE017, 500 );
setTimeStretch( SE017, 1.33, 30, 4 );
SE018 = playSeVer2( spep_0 + 344, 1019, "",spep_0 + 390, 0, 20, -1);
--蹴りヒット
SE019 = playSeVer2( spep_0 + 352, 1153, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 356, 1187, "", 0, 0, 0, -1);
--回転する
SE021 = playSeVer2( spep_0 + 416, 63, "",spep_0 + 476, 0, 16, -1);
--蹴り飛ばす
SE022 = playSeVer2( spep_0 + 446, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 456, 1187, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 458, 1110, "", 0, 0, 0, -1);
--ゴテンクス着地
SE025 = playSeVer2( spep_0 + 490, 63, "",spep_0 + 542, 0, 16, -1);
SE026 = playSeVer2( spep_0 + 508, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE026, 151 );
SE027 = playSeVer2( spep_0 + 516, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 516, SE027, 160 );
--ゴテンクス向かっていく
SE028 = playSeVer2( spep_0 + 522, 1182, "",spep_0 + 592, 0, 24, -1);
SE029 = playSeVer2( spep_0 + 522, 1117, "",spep_0 + 592, 0, 26, -1);
--蹴り上げる
SE030 = playSeVer2( spep_0 + 550, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 558, 1120, "", 0, 0, 0, -1);
--敵飛んでいく
SE032 = playSeVer2( spep_0 + 614, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE032, 77 );
SE033 = playSeVer2( spep_0 + 614, 9, "",spep_0 + 736, 0, 80, -1);
SE034 = playSeVer2( spep_0 + 618, 1121, "",spep_0 + 734, 0, 70, -1);
SE035 = playSeVer2( spep_0 + 646, 1277, "", 0, 0, 0, -1);
--腕前に出す
SE036 = playSeVer2( spep_0 + 670, 1006, "", 0, 0, 0, -1);
--カメラパン
SE037 = playSeVer2( spep_0 + 708, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 708, SE037, 85 );
setBandpassFilter( spep_0 + 708, SE037, 24, 2850 );
SE038 = playSeVer2( spep_0 + 716, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 792

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE040 = playSeVer2( spep_1 + 82, 1154, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 82, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE041, 74 );
SE042 = playSeVer2( spep_1 + 82, 1296, "",spep_2 + 124, 0, 32, -1);

------------------------------------------------------
-- 気溜め～フィニッシュ	
------------------------------------------------------
MAX_FRAME_2 = 320;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );    -- 気溜め～フィニッシュ	ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );   -- 気溜め～フィニッシュ	ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 144 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 144 + OFFSET_X, 1, 115.8, 85.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 115.8, 85.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 150.2, 115 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 150.2, 115 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 152.5, 117.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 152.5, 117.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 166.3, 128.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 166.3, 128.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 166.7, 133.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 166.7, 133.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 188, 133.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 188, 133.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 193.1, 152.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 193.1, 152.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 182.9, 139.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 182.9, 139.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 182.9, 160.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 182.9, 160.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 209.1, 146.7 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 209.1, 146.7 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 210.2, 167 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 210.2, 167 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 193.7, 149.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 193.7, 149.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 194.3, 172.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 194.3, 172.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 217.2, 153.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 217.2, 153.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 218.9, 175.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 218.9, 175.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 199.8, 155.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 199.8, 155.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 202.5, 177.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 202.5, 177.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 221.7, 156.1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 221.7, 156.1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 221.7, 178.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 221.7, 178.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 202.4, 159.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 202.4, 159.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 204.4, 180.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 204.4, 180.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 225.5, 160.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 225.5, 160.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 224.2, 181.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 224.2, 181.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 206.3, 161.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 206.3, 161.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 206.6, 180.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 206.6, 180.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 225.9, 159.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 225.9, 159.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 224.9, 180 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 224.9, 180 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 207.9, 160.6 , 0 );

setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_2 + 144 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -30.4 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -30.1 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -29.5 );

--敵の動き2
setDisp( spep_2 + 234 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 234 + OFFSET_X, 1, 91.7, 59.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 91.7, 59.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 93.7, 60.3 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 93.7, 60.3 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 95.7, 60.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 95.7, 60.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 93.2, 54.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 93.2, 54.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 94.4, 63.4 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 94.4, 63.4 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 91.8, 60.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 91.8, 60.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 93.2, 63.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 93.2, 63.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 90.6, 61.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 90.6, 61.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 91.7, 59.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 91.7, 59.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 93.7, 58.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 93.7, 58.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 91.2, 60.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 91.2, 60.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 89.6, 64.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 89.6, 64.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 90.5, 59.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 90.5, 59.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 89.3, 62.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 89.3, 62.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 93.4, 55 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 93.4, 55 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 91.6, 60.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 91.6, 60.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 91.2, 59.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 91.2, 59.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 97.3, 57.8 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 97.3, 57.8 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 88.2, 56.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 88.2, 56.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 92, 57.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 92, 57.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 95.9, 58.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 95.9, 58.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 94, 60.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 94, 60.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 88.4, 64.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 88.4, 64.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 88, 56.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 88, 56.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 90.3, 59.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 90.3, 59.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 91.5, 59.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 91.5, 59.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 94, 59.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 94, 59.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 89.3, 64.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 89.3, 64.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 89.8, 63.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 89.8, 63.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 91.7, 59.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 91.7, 59.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 93.2, 59.9 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 93.2, 59.9 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 91.1, 59.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 91.1, 59.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 87.1, 61.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 87.1, 61.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 90.8, 60.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 90.8, 60.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 92.9, 62.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 92.9, 62.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 91.9, 65.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 91.9, 65.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 93.2, 58.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 93.2, 58.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 91.4, 62.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 91.4, 62.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 93.7, 58.6 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 93.7, 58.6 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 96.8, 62.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 96.8, 62.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 91.5, 59.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 91.5, 59.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 92.4, 57.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 92.4, 57.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 89.9, 55.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 89.9, 55.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 96.2, 61.1 , 0 );

setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.21, 2.21 );

setRotateKey( spep_2 + 234 + OFFSET_X, 1, -32.5 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -32.5 );

setBlendColor( spep_2 + 234 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 318 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--気弾発射
SE043 = playSeVer2( spep_2 + 68, 1133, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 68, 1146, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 68, 1213, "",spep_2 + 304, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 68, SE045, 68 );
--気弾中
SE046 = playSeVer2( spep_2 + 132, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE046, 182 );
SE047 = playSeVer2( spep_2 + 132, 1161, "", 0, 0, 0, -1);
--爆発
SE048 = playSeVer2( spep_2 + 194, 1159, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 200, 1067, "", 0, 0, 0, -1);
--飲みこまれる
SE050 = playSeVer2( spep_2 + 206, 1258, "", 0, 32, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 200 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 320 -2

end
