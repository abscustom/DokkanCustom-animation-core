-- 1028490: UR_べジータ_必殺技：マキシマムフラッシャー
-- sp_effect_a1_00429
-- sp2672

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162718;  -- 向かい合うベジータと敵〜画面奥に飛ぶ敵	ef_001
SP_002 = 162720;  -- 向かい合うベジータと敵〜画面奥に飛ぶ敵	ef_001b
SP_003 = 162721;  -- ベジータ顔アップ〜フィニッシュ	ef_002
SP_004 = 162722;  -- ベジータ顔アップ〜フィニッシュ	ef_002b

-- 敵側
SP_001r = 162719;  -- 向かい合うベジータと敵〜画面奥に飛ぶ敵	ef_001r
SP_002r = 162720;  -- 向かい合うベジータと敵〜画面奥に飛ぶ敵	ef_001b
SP_003r = 162721;  -- ベジータ顔アップ〜フィニッシュ	ef_002
SP_004r = 162722;  -- ベジータ顔アップ〜フィニッシュ	ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 向かい合うベジータと敵〜画面奥に飛ぶ敵 ef_001
------------------------------------------------------
MAX_FRAME_0 = 504;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );-- 向かい合うベジータと敵〜画面奥に飛ぶ敵 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002, 0x80, -1, 0, 0, 0 );-- 向かい合うベジータと敵〜画面奥に飛ぶ敵　裏 ef_001b
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 56;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-40, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
OFFSET_Y = -80;--敵位置調整用

-- 敵の動き1
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 64 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 102 );

setMoveKey( spep_0, 1, 193.2, -48.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 194.3, -48.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 194.3, -48.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 195.3, -48.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 195.3, -48.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 196.3, -48.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 196.3, -48.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 197.4, -48.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 197.4, -48.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 198.4, -48.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 198.4, -48.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 199.3, -49.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 199.3, -49.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 200.3, -49.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 200.3, -49.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 201.2, -49.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 201.2, -49.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 202.2, -49.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 202.2, -49.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 203.1, -49.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 203.1, -49.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 203.9, -49.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 203.9, -49.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 204.8, -49.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 204.8, -49.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 205.7, -49.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 205.7, -49.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 206.5, -50 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 206.5, -50 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 207.3, -50 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 207.3, -50 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 208.1, -50.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 208.1, -50.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 208.8, -50.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 208.8, -50.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 209.6, -50.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 209.6, -50.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 210.3, -50.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 210.3, -50.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 211, -50.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 211, -50.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 211.7, -50.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 211.7, -50.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 212.3, -50.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 212.3, -50.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 213, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 213, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 213.6, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 213.6, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 214.2, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 214.2, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 214.7, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 214.7, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 215.3, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 215.3, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 215.8, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 215.8, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 216.3, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 216.3, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 216.8, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 216.8, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 217.3, -50.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 217.3, -50.8 + OFFSET_Y , 0 );

setScaleKey( spep_0, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 3.78, 3.78 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0 );

setBlendColor( spep_0, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 3 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 4 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 5 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 6 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 7 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 64 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- 敵の動き2
OFFSET_Z = 0.2;--敵位置調整用

setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 284 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 123, -84.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 123, -84.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 91.8, -144.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 91.8, -144.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 60.7, -204.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 60.7, -204.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 29.6, -264.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 29.6, -264.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 26.1, -271.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 26.1, -271.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 22.9, -277.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 22.9, -277.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 20, -283 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 20, -283 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 17.3, -288.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 17.3, -288.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 14.8, -293 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 14.8, -293 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 12.5, -297.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 12.5, -297.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 10.5, -301.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 10.5, -301.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 8.7, -304.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 8.7, -304.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 7.2, -307.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 7.2, -307.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 5.9, -310.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 5.9, -310.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 4.8, -312.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 4.8, -312.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 4, -313.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 4, -313.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 3.4, -315 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 3.4, -315 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 3.1, -315.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 3.1, -315.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 3, -315.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 3, -315.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 24.4, -170.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 24.4, -170.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 123.8, -451.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 123.8, -451.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 88.1, -315.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 88.1, -315.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 53.6, -178.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 53.6, -178.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 93.5, -369.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 93.5, -369.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 70.4, -278.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 70.4, -278.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 48.2, -185.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 48.2, -185.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 46.9, -186.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 46.9, -186.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 32.1, -201 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 32.1, -201 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -75.3, -363.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -75.3, -363.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -199.5, -513.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -199.5, -513.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -305.5, -673.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -305.5, -673.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -419, -831.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -419, -831.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 401.8, 193.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 401.8, 193.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 339.1, 154 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 339.1, 154 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 268.6, 105.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 268.6, 105.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 202.8, 68 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 202.8, 68 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 141.7, 21.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 141.7, 21.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 136.2, 22.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 136.2, 22.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 136.9, 24 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 136.9, 24 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 129.8, 16.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 129.8, 16.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 127.4, 19.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 127.4, 19.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 129.7, 12.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 129.7, 12.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 124.2, 14.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 124.2, 14.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 124.9, 15.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 124.9, 15.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 117.8, 8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 117.8, 8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 115.4, 11.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 115.4, 11.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 117.6, 4.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 117.6, 4.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 112.1, 6.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 112.1, 6.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 112.8, 7.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 112.8, 7.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 105.8, -0.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 105.8, -0.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 103.4, 2.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 103.4, 2.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 105.6, -3.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 105.6, -3.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 100.1, -1.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 100.1, -1.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 100.8, -0.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 100.8, -0.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 93.7, -8.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 93.7, -8.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 91.3, -5.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 91.3, -5.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 93.6, -11.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 93.6, -11.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 88.1, -10.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 88.1, -10.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 88.8, -8.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 88.8, -8.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 81.7, -16.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 81.7, -16.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 79.3, -13.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 79.3, -13.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 81.5, -19.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 81.5, -19.7 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 3.25 + OFFSET_Z, 3.25 + OFFSET_Z );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 3.25 + OFFSET_Z, 3.25 + OFFSET_Z );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 3.29 + OFFSET_Z, 3.29 + OFFSET_Z );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 3.29 + OFFSET_Z, 3.29 + OFFSET_Z );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 7.12 + OFFSET_Z, 7.12 + OFFSET_Z );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 7.12 + OFFSET_Z, 7.12 + OFFSET_Z );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 5.59 + OFFSET_Z, 5.59 + OFFSET_Z );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 5.59 + OFFSET_Z, 5.59 + OFFSET_Z );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.07 + OFFSET_Z, 4.07 + OFFSET_Z );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 4.07 + OFFSET_Z, 4.07 + OFFSET_Z );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 6.1 + OFFSET_Z, 6.1 + OFFSET_Z );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 6.1 + OFFSET_Z, 6.1 + OFFSET_Z );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 5.08 + OFFSET_Z, 5.08 + OFFSET_Z );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 5.08 + OFFSET_Z, 5.08 + OFFSET_Z );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.07 + OFFSET_Z, 4.07 + OFFSET_Z );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 4.07 + OFFSET_Z, 4.07 + OFFSET_Z );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.7 + OFFSET_Z, 2.7 + OFFSET_Z );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.7 + OFFSET_Z, 2.7 + OFFSET_Z );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -132.6 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -132.6 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 162.2 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 162.2 );

-- 敵の動き3
setDisp( spep_0 + 324 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 324 + OFFSET_X, 1, -163, 35.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -163, 35.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -160.2, 40.3 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -160.2, 40.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -661.3, 70.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -661.3, 70.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -414.3, 55.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -414.3, 55.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -165.8, 40.3 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -165.8, 40.3 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -467.7, 60.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -467.7, 60.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -320.1, 50.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -320.1, 50.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -171.5, 40.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -171.5, 40.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -389.1, 70.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -389.1, 70.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -283.9, 55.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -283.9, 55.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -177.2, 40.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -177.2, 40.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -171.3, 48 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -171.3, 48 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -188.8, 32.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -188.8, 32.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -190.7, 48 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -190.7, 48 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -176.9, 32.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -176.9, 32.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -34.3, -9.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -34.3, -9.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 116.2, -58.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 116.2, -58.7 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 6.25, 6.25 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 6.25, 6.25 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 4.79, 4.79 );

setRotateKey( spep_0 + 324 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -64.7 );

-- 敵の動き4
setDisp( spep_0 + 410 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 446 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 410 + OFFSET_X, 1, -1047.4, 164.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -1047.4, 164.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -652.4, -15.2 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -652.4, -15.2 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -323.3, -141.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -323.3, -141.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -543.9, -141 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -543.9, -141 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -389.6, -177 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -389.6, -177 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -235.3, -212.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -235.3, -212.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -353, -321.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -353, -321.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -294.2, -267.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -294.2, -267.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -235.3, -212.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -235.3, -212.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -550.7, -280.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -550.7, -280.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -227.8, -205.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -227.8, -205.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -242.8, -220.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -242.8, -220.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -242.8, -205.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -242.8, -205.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -227.8, -220.4 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -227.8, -220.4 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 60.7, -423.3 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 60.7, -423.3 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 334.3, -656.2 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 334.3, -656.2 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 622.8, -859.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 622.8, -859.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 926.4, -1091.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 926.4, -1091.9 , 0 );

setScaleKey( spep_0 + 410 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 7.15, 7.15 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 7.15, 7.15 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 7.8, 7.8 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 7.8, 7.8 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 7.8, 7.8 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 7.8, 7.8 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 5.2, 5.2 );

setRotateKey( spep_0 + 410 + OFFSET_X, 1, -61 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -61 );

-- 敵の動き5
setDisp( spep_0 + 462 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 506 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 462 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 462 + OFFSET_X, 1, -299.1, 67.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -299.1, 67.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -178.7, 38.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -178.7, 38.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -52.5, 15.5 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -52.5, 15.5 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 56.2, -25.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 56.2, -25.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 176.6, -42.6 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 176.6, -42.6 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 187.6, -43.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 187.6, -43.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 178.2, -53.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 178.2, -53.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 178.5, -43.8 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 178.5, -43.8 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 188.6, -53.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 188.6, -53.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 184, -48.9 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 184, -48.9 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 184.3, -49 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 184.3, -49 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 184.5, -49.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 184.5, -49.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 184.8, -49.1 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 184.8, -49.1 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 185, -49.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 185, -49.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 185.2, -49.3 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 185.2, -49.3 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 185.4, -49.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 185.4, -49.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 185.6, -49.4 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 185.6, -49.4 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 185.8, -49.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 185.8, -49.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 186, -49.5 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 186, -49.5 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 186.1, -49.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 186.1, -49.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 186.3, -49.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 186.3, -49.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 186.4, -49.6 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 186.4, -49.6 , 0 );

setScaleKey( spep_0 + 462 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_0 + 462 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--瞬間移動
SE003 = playSeVer2( spep_0 + 112, 1109, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 140, 1109, "", 0, 0, 0, -1);
--振りかぶる
SE005 = playSeVer2( spep_0 + 154, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE005, 75 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 174;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE00X, 0);

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
--ひじ打ち
SE006 = playSeVer2( spep_0 + 180, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 184, 1359, "",spep_0 + 216, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 184, SE007, 79 );
SE008 = playSeVer2( spep_0 + 186, 1187, "", 0, 0, 0, -1);
--敵飛んでいく
SE009 = playSeVer2( spep_0 + 206, 1121, "",spep_0 + 336, 0, 42, -1);
--追い越す
SE010 = playSeVer2( spep_0 + 224, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE010, 126 );
SE011 = playSeVer2( spep_0 + 224, 1117, "",spep_0 + 322, 0, 24, -1);
--顔アップ
SE012 = playSeVer2( spep_0 + 264, 1182, "",spep_0 + 332, 16, 14, -1);
setStartTimeMs( SE012,  33 );
SE013 = playSeVer2( spep_0 + 262, 1116, "",spep_0 + 312, 0, 14, -1);
--パンチ
SE014 = playSeVer2( spep_0 + 304, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 310, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 310, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 310, 1414, "", 0, 0, 0, -1);
--飛び上がる
SE018 = playSeVer2( spep_0 + 334, 44, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 336, 1117, "", 0, 0, 0, -1);
--蹴る
SE020 = playSeVer2( spep_0 + 396, 1120, "",spep_0 + 502, 0, 8, -1);
SE021 = playSeVer2( spep_0 + 396, 1187, "",spep_0 + 502, 0, 8, -1);
--敵飛んでいく
SE022 = playSeVer2( spep_0 + 450, 1183, "",spep_0 + 514, 0, 10, -1);
SE023 = playSeVer2( spep_0 + 450, 1027, "",spep_0 + 514, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 504

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ベジータ顔アップ〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 344;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x100, -1, 0, 0, 0 );-- ベジータ顔アップ〜フィニッシュ	 ef_002
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
SP_04 = entryEffect( spep_2 + 0, SP_004, 0x80, -1, 0, 0, 0 );-- ベジータ顔アップ〜フィニッシュ	 裏 ef_002b
setEffMoveKey( spep_2 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_04, 0 );
setEffAlphaKey( spep_2 + 0, SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_04, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 338 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, 256.8, -15.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 256.8, -15.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 260.8, -12.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 260.8, -12.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 253.2, -30.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 253.2, -30.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 258.5, -24.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 258.5, -24.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 270.3, -30.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 270.3, -30.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 277, -34.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 277, -34.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 270.3, -23.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 270.3, -23.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 263.4, -30.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 263.4, -30.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 263.5, -23.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 263.5, -23.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 270.4, -30.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 270.4, -30.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 266.9, -27.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 266.9, -27.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 270.4, -23.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 270.4, -23.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 263.5, -30.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 263.5, -30.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 263.5, -23.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 263.5, -23.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 270.4, -30.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 270.4, -30.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 266.9, -27.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 266.9, -27.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 270.4, -23.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 270.4, -23.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 263.5, -30.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 263.5, -30.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 263.5, -23.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 263.5, -23.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 270.4, -30.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 270.4, -30.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 267, -27.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 267, -27.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 270.4, -24 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 270.4, -24 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 263.5, -30.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 263.5, -30.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 263.5, -24 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 263.5, -24 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 270.4, -30.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 270.4, -30.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 267, -27.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 267, -27.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 264.2, -52.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 264.2, -52.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 262.7, -31.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 262.7, -31.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 272.8, -33.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 272.8, -33.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 261.2, -31 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 261.2, -31 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 270, -23.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 270, -23.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 261.1, -33.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 261.1, -33.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 261.1, -21.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 261.1, -21.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 272.9, -33.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 272.9, -33.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 272.9, -21.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 272.9, -21.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 261.2, -33.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 261.2, -33.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 261.2, -21.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 261.2, -21.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 272.9, -33.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 272.9, -33.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 272.9, -21.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 272.9, -21.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 261.2, -33.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 261.2, -33.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 267, -27.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 267, -27.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 270.5, -24.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 270.5, -24.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 263.6, -31.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 263.6, -31.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 263.6, -24.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 263.6, -24.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 270.5, -31.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 270.5, -31.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 267.1, -27.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 267.1, -27.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 270.5, -24.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 270.5, -24.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 263.6, -31.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 263.6, -31.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 263.6, -24.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 263.6, -24.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 270.5, -31.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 270.5, -31.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 267.1, -27.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 267.1, -27.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 270.5, -24.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 270.5, -24.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 263.6, -31.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 263.6, -31.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 263.7, -24.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 263.7, -24.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -28.6, -24.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -28.6, -24.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -30.4, -21 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -30.4, -21 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -25.2, -17.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -25.2, -17.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -30.4, -25.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -30.4, -25.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -28.6, -18.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -28.6, -18.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -20, -25.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -20, -25.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -21.7, -22.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -21.7, -22.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -16.6, -19.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -16.6, -19.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -21.7, -26.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -21.7, -26.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -20, -20.4 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -20, -20.4 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -11.4, -27.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -11.4, -27.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -13.1, -24.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -13.1, -24.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -7.9, -21.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -7.9, -21.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -13.1, -28.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -13.1, -28.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -11.4, -22.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -11.4, -22.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -2.8, -29.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -2.8, -29.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -4.5, -26.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -4.5, -26.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 0.7, -23.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 0.7, -23.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -4.5, -30.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -4.5, -30.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -2.8, -23.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -2.8, -23.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 5.9, -31.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 5.9, -31.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 46.9, -81.5 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 46.9, -81.5 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 53, -75.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 53, -75.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 41.9, -87.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 41.9, -87.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 42.9, -76.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 42.9, -76.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 56, -88.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 56, -88.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 51.9, -83.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 51.9, -83.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 59.9, -77.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 59.9, -77.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 71.7, -96.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 71.7, -96.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 92.8, -90.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 92.8, -90.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 123.2, -107.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 123.2, -107.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 133.7, -106.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 133.7, -106.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 153.5, -104.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 153.5, -104.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 153.3, -119.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 153.3, -119.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 155, -108.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 155, -108.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 168.3, -120.4 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 168.3, -120.4 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 164.2, -115.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 164.2, -115.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 171.7, -109.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 171.7, -109.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 161.6, -122 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 161.6, -122 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 163.2, -110.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 163.2, -110.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 176.5, -123 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 176.5, -123 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 172.2, -117.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 172.2, -117.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 179.5, -112.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 179.5, -112.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 169.4, -124.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 169.4, -124.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 170.9, -113.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 170.9, -113.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 184, -125.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 184, -125.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 179.6, -120.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 179.6, -120.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 186.9, -114.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 186.9, -114.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 176.6, -126.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 176.6, -126.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 178, -115.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 178, -115.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 191.1, -127.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 191.1, -127.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 186.5, -122.3 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 186.5, -122.3 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 193.7, -116.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 193.7, -116.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 183.3, -129 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 183.3, -129 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 184.6, -117.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 184.6, -117.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 197.8, -130 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 197.8, -130 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 286 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 288 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 290 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 338 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--空中構える
SE025 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 34, 0, 16, -1);
SE026 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 0, 1019, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 14, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 36, 1019, "",spep_2 + 110, 0, 24, -1);
--気弾発射
SE030 = playSeVer2( spep_2 + 64, 1109, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 68, 1177, "",spep_2 + 144, 0, 24, -1);
SE032 = playSeVer2( spep_2 + 68, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE032, 73 );
--敵ヒット
SE033 = playSeVer2( spep_2 + 90, 1011, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 90, 1024, "", 0, 0, 0, -1);
--気弾弾ける
SE035 = playSeVer2( spep_2 + 144, 1067, "", 0, 0, 0, -1);
--気弾中
SE036 = playSeVer2( spep_2 + 154, 1213, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE036, 83 );
setStartTimeMs( SE036,  33 );
SE037 = playSeVer2( spep_2 + 202, 1161, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 202, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE038, 158 );
--敵呑まれる
SE039 = playSeVer2( spep_2 + 248, 1258, "",spep_2 + 328, 14, 16, -1);
setStartTimeMs( SE039,  200 );

-- ** おわり ** --
dealDamage( spep_2 + 240 );
endPhase( spep_2 +  MAX_FRAME_2 - 2 );  -- 344

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 向かい合うベジータと敵〜画面奥に飛ぶ敵 ef_001
------------------------------------------------------
MAX_FRAME_0 = 504;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );-- 向かい合うベジータと敵〜画面奥に飛ぶ敵 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_02 = entryEffect( spep_0 + 0, SP_002r, 0x80, -1, 0, 0, 0 );-- 向かい合うベジータと敵〜画面奥に飛ぶ敵　裏 ef_001b
setEffMoveKey( spep_0 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_02, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_02, 0 );
setEffAlphaKey( spep_0 + 0, SP_02, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 56;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-40, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
OFFSET_Y = -80;--敵位置調整用

-- 敵の動き1
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 64 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 102 );

setMoveKey( spep_0, 1, 193.2, -48.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 194.3, -48.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 194.3, -48.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 195.3, -48.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 195.3, -48.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 196.3, -48.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 196.3, -48.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 197.4, -48.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 197.4, -48.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 198.4, -48.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 198.4, -48.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 199.3, -49.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 199.3, -49.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 200.3, -49.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 200.3, -49.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 201.2, -49.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 201.2, -49.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 202.2, -49.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 202.2, -49.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 203.1, -49.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 203.1, -49.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 203.9, -49.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 203.9, -49.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 204.8, -49.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 204.8, -49.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 205.7, -49.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 205.7, -49.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 206.5, -50 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 206.5, -50 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 207.3, -50 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 207.3, -50 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 208.1, -50.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 208.1, -50.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 208.8, -50.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 208.8, -50.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 209.6, -50.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 209.6, -50.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 210.3, -50.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 210.3, -50.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 211, -50.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 211, -50.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 211.7, -50.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 211.7, -50.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 212.3, -50.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 212.3, -50.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 213, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 213, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 213.6, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 213.6, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 214.2, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 214.2, -50.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 214.7, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 214.7, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 215.3, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 215.3, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 215.8, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 215.8, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 216.3, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 216.3, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 216.8, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 216.8, -50.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 217.3, -50.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 217.3, -50.8 + OFFSET_Y , 0 );

setScaleKey( spep_0, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 3.78, 3.78 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0 );

setBlendColor( spep_0, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 3 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 4 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 5 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 6 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 7 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 64 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- 敵の動き2
OFFSET_Z = 0.2;--敵位置調整用

setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 284 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 123, -84.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 123, -84.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 91.8, -144.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 91.8, -144.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 60.7, -204.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 60.7, -204.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 29.6, -264.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 29.6, -264.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 26.1, -271.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 26.1, -271.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 22.9, -277.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 22.9, -277.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 20, -283 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 20, -283 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 17.3, -288.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 17.3, -288.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 14.8, -293 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 14.8, -293 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 12.5, -297.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 12.5, -297.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 10.5, -301.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 10.5, -301.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 8.7, -304.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 8.7, -304.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 7.2, -307.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 7.2, -307.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 5.9, -310.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 5.9, -310.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 4.8, -312.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 4.8, -312.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 4, -313.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 4, -313.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 3.4, -315 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 3.4, -315 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 3.1, -315.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 3.1, -315.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 3, -315.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 3, -315.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 24.4, -170.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 24.4, -170.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 123.8, -451.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 123.8, -451.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 88.1, -315.8 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 88.1, -315.8 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 53.6, -178.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 53.6, -178.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 93.5, -369.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 93.5, -369.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 70.4, -278.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 70.4, -278.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 48.2, -185.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 48.2, -185.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 46.9, -186.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 46.9, -186.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 32.1, -201 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 32.1, -201 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -75.3, -363.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -75.3, -363.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -199.5, -513.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -199.5, -513.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -305.5, -673.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -305.5, -673.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -419, -831.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -419, -831.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 401.8, 193.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 401.8, 193.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 339.1, 154 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 339.1, 154 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 268.6, 105.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 268.6, 105.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 202.8, 68 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 202.8, 68 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 141.7, 21.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 141.7, 21.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 136.2, 22.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 136.2, 22.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 136.9, 24 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 136.9, 24 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 129.8, 16.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 129.8, 16.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 127.4, 19.2 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 127.4, 19.2 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 129.7, 12.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 129.7, 12.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 124.2, 14.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 124.2, 14.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 124.9, 15.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 124.9, 15.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 117.8, 8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 117.8, 8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 115.4, 11.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 115.4, 11.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 117.6, 4.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 117.6, 4.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 112.1, 6.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 112.1, 6.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 112.8, 7.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 112.8, 7.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 105.8, -0.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 105.8, -0.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 103.4, 2.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 103.4, 2.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 105.6, -3.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 105.6, -3.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 100.1, -1.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 100.1, -1.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 100.8, -0.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 100.8, -0.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 93.7, -8.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 93.7, -8.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 91.3, -5.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 91.3, -5.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 93.6, -11.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 93.6, -11.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 88.1, -10.1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 88.1, -10.1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 88.8, -8.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 88.8, -8.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 81.7, -16.4 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 81.7, -16.4 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 79.3, -13.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 79.3, -13.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 81.5, -19.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 81.5, -19.7 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 3.25 + OFFSET_Z, 3.25 + OFFSET_Z );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 3.25 + OFFSET_Z, 3.25 + OFFSET_Z );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 3.29 + OFFSET_Z, 3.29 + OFFSET_Z );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 3.29 + OFFSET_Z, 3.29 + OFFSET_Z );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 7.12 + OFFSET_Z, 7.12 + OFFSET_Z );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 7.12 + OFFSET_Z, 7.12 + OFFSET_Z );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 5.59 + OFFSET_Z, 5.59 + OFFSET_Z );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 5.59 + OFFSET_Z, 5.59 + OFFSET_Z );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.07 + OFFSET_Z, 4.07 + OFFSET_Z );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 4.07 + OFFSET_Z, 4.07 + OFFSET_Z );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 6.1 + OFFSET_Z, 6.1 + OFFSET_Z );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 6.1 + OFFSET_Z, 6.1 + OFFSET_Z );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 5.08 + OFFSET_Z, 5.08 + OFFSET_Z );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 5.08 + OFFSET_Z, 5.08 + OFFSET_Z );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.07 + OFFSET_Z, 4.07 + OFFSET_Z );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 4.07 + OFFSET_Z, 4.07 + OFFSET_Z );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.7 + OFFSET_Z, 2.7 + OFFSET_Z );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.7 + OFFSET_Z, 2.7 + OFFSET_Z );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -132.6 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -132.6 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 162.2 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 162.2 );

-- 敵の動き3
setDisp( spep_0 + 324 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 324 + OFFSET_X, 1, -163, 35.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -163, 35.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -160.2, 40.3 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -160.2, 40.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -661.3, 70.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -661.3, 70.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -414.3, 55.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -414.3, 55.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -165.8, 40.3 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -165.8, 40.3 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -467.7, 60.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -467.7, 60.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -320.1, 50.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -320.1, 50.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -171.5, 40.3 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -171.5, 40.3 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -389.1, 70.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -389.1, 70.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -283.9, 55.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -283.9, 55.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -177.2, 40.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -177.2, 40.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -171.3, 48 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -171.3, 48 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -188.8, 32.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -188.8, 32.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -190.7, 48 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -190.7, 48 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -176.9, 32.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -176.9, 32.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -34.3, -9.3 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -34.3, -9.3 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 116.2, -58.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 116.2, -58.7 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 6.25, 6.25 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 6.25, 6.25 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 6.87, 6.87 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 4.79, 4.79 );

setRotateKey( spep_0 + 324 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -64.7 );

-- 敵の動き4
setDisp( spep_0 + 410 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 446 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 410 + OFFSET_X, 1, -1047.4, 164.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -1047.4, 164.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -652.4, -15.2 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -652.4, -15.2 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -323.3, -141.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -323.3, -141.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -543.9, -141 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -543.9, -141 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -389.6, -177 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -389.6, -177 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -235.3, -212.9 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -235.3, -212.9 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -353, -321.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -353, -321.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -294.2, -267.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -294.2, -267.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -235.3, -212.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -235.3, -212.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -550.7, -280.9 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -550.7, -280.9 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -227.8, -205.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -227.8, -205.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -242.8, -220.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -242.8, -220.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -242.8, -205.4 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -242.8, -205.4 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -227.8, -220.4 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -227.8, -220.4 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 60.7, -423.3 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 60.7, -423.3 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 334.3, -656.2 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 334.3, -656.2 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 622.8, -859.1 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 622.8, -859.1 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 926.4, -1091.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 926.4, -1091.9 , 0 );

setScaleKey( spep_0 + 410 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 7.15, 7.15 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 7.15, 7.15 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 7.8, 7.8 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 7.8, 7.8 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 7.8, 7.8 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 7.8, 7.8 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 5.2, 5.2 );

setRotateKey( spep_0 + 410 + OFFSET_X, 1, -61 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -61 );

-- 敵の動き5
setDisp( spep_0 + 462 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 506 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 462 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 462 + OFFSET_X, 1, -299.1, 67.2 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -299.1, 67.2 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -178.7, 38.5 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -178.7, 38.5 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -52.5, 15.5 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -52.5, 15.5 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 56.2, -25.2 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 56.2, -25.2 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 176.6, -42.6 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 176.6, -42.6 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 187.6, -43.6 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 187.6, -43.6 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 178.2, -53.5 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 178.2, -53.5 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 178.5, -43.8 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 178.5, -43.8 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 188.6, -53.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 188.6, -53.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 184, -48.9 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 184, -48.9 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 184.3, -49 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 184.3, -49 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 184.5, -49.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 184.5, -49.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 184.8, -49.1 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 184.8, -49.1 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 185, -49.2 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 185, -49.2 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 185.2, -49.3 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 185.2, -49.3 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 185.4, -49.3 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 185.4, -49.3 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 185.6, -49.4 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 185.6, -49.4 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 185.8, -49.4 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 185.8, -49.4 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 186, -49.5 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 186, -49.5 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 186.1, -49.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 186.1, -49.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 186.3, -49.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 186.3, -49.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 186.4, -49.6 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 186.4, -49.6 , 0 );

setScaleKey( spep_0 + 462 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 6, 6 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 465 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 467 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 489 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 491 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 492 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 493 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_0 + 462 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--瞬間移動
SE003 = playSeVer2( spep_0 + 112, 1109, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 140, 1109, "", 0, 0, 0, -1);
--振りかぶる
SE005 = playSeVer2( spep_0 + 154, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE005, 75 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 174;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE00X, 0);

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
--ひじ打ち
SE006 = playSeVer2( spep_0 + 180, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 184, 1359, "",spep_0 + 216, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 184, SE007, 79 );
SE008 = playSeVer2( spep_0 + 186, 1187, "", 0, 0, 0, -1);
--敵飛んでいく
SE009 = playSeVer2( spep_0 + 206, 1121, "",spep_0 + 336, 0, 42, -1);
--追い越す
SE010 = playSeVer2( spep_0 + 224, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE010, 126 );
SE011 = playSeVer2( spep_0 + 224, 1117, "",spep_0 + 322, 0, 24, -1);
--顔アップ
SE012 = playSeVer2( spep_0 + 264, 1182, "",spep_0 + 332, 16, 14, -1);
setStartTimeMs( SE012,  33 );
SE013 = playSeVer2( spep_0 + 262, 1116, "",spep_0 + 312, 0, 14, -1);
--パンチ
SE014 = playSeVer2( spep_0 + 304, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 310, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 310, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 310, 1414, "", 0, 0, 0, -1);
--飛び上がる
SE018 = playSeVer2( spep_0 + 334, 44, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 336, 1117, "", 0, 0, 0, -1);
--蹴る
SE020 = playSeVer2( spep_0 + 396, 1120, "",spep_0 + 502, 0, 8, -1);
SE021 = playSeVer2( spep_0 + 396, 1187, "",spep_0 + 502, 0, 8, -1);
--敵飛んでいく
SE022 = playSeVer2( spep_0 + 450, 1183, "",spep_0 + 514, 0, 10, -1);
SE023 = playSeVer2( spep_0 + 450, 1027, "",spep_0 + 514, 0, 10, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 504

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ベジータ顔アップ〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 344;

-- ** エフェクト等 ** --
SP_03 = entryEffect( spep_2 + 0, SP_003r, 0x100, -1, 0, 0, 0 );-- ベジータ顔アップ〜フィニッシュ	 ef_002
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
SP_04 = entryEffect( spep_2 + 0, SP_004r, 0x80, -1, 0, 0, 0 );-- ベジータ顔アップ〜フィニッシュ	 裏 ef_002b
setEffMoveKey( spep_2 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_04, 0 );
setEffAlphaKey( spep_2 + 0, SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_04, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 338 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 268 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, 256.8, -15.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 256.8, -15.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 260.8, -12.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 260.8, -12.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 253.2, -30.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 253.2, -30.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 258.5, -24.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 258.5, -24.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 270.3, -30.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 270.3, -30.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 277, -34.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 277, -34.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 270.3, -23.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 270.3, -23.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 263.4, -30.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 263.4, -30.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 263.5, -23.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 263.5, -23.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 270.4, -30.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 270.4, -30.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 266.9, -27.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 266.9, -27.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 270.4, -23.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 270.4, -23.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 263.5, -30.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 263.5, -30.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 263.5, -23.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 263.5, -23.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 270.4, -30.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 270.4, -30.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 266.9, -27.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 266.9, -27.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 270.4, -23.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 270.4, -23.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 263.5, -30.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 263.5, -30.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 263.5, -23.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 263.5, -23.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 270.4, -30.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 270.4, -30.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 267, -27.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 267, -27.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 270.4, -24 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 270.4, -24 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 263.5, -30.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 263.5, -30.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 263.5, -24 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 263.5, -24 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 270.4, -30.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 270.4, -30.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 267, -27.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 267, -27.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 264.2, -52.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 264.2, -52.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 262.7, -31.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 262.7, -31.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 272.8, -33.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 272.8, -33.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 261.2, -31 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 261.2, -31 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 270, -23.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 270, -23.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 261.1, -33.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 261.1, -33.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 261.1, -21.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 261.1, -21.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 272.9, -33.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 272.9, -33.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 272.9, -21.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 272.9, -21.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 261.2, -33.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 261.2, -33.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 261.2, -21.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 261.2, -21.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 272.9, -33.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 272.9, -33.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 272.9, -21.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 272.9, -21.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 261.2, -33.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 261.2, -33.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 267, -27.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 267, -27.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 267, -27.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 270.5, -24.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 270.5, -24.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 263.6, -31.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 263.6, -31.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 263.6, -24.2 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 263.6, -24.2 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 270.5, -31.2 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 270.5, -31.2 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 267.1, -27.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 267.1, -27.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 270.5, -24.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 270.5, -24.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 263.6, -31.2 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 263.6, -31.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 263.6, -24.3 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 263.6, -24.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 270.5, -31.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 270.5, -31.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 267.1, -27.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 267.1, -27.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 270.5, -24.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 270.5, -24.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 263.6, -31.2 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 263.6, -31.2 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 263.7, -24.3 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 263.7, -24.3 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -28.6, -24.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -28.6, -24.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -30.4, -21 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -30.4, -21 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -25.2, -17.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -25.2, -17.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -30.4, -25.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -30.4, -25.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -28.6, -18.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -28.6, -18.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -20, -25.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -20, -25.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -21.7, -22.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -21.7, -22.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -16.6, -19.7 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -16.6, -19.7 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -21.7, -26.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -21.7, -26.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -20, -20.4 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -20, -20.4 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -11.4, -27.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -11.4, -27.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -13.1, -24.5 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -13.1, -24.5 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -7.9, -21.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -7.9, -21.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -13.1, -28.6 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -13.1, -28.6 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -11.4, -22.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -11.4, -22.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -2.8, -29.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -2.8, -29.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -4.5, -26.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -4.5, -26.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 0.7, -23.1 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 0.7, -23.1 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -4.5, -30.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -4.5, -30.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -2.8, -23.8 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -2.8, -23.8 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 5.9, -31.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 5.9, -31.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 46.9, -81.5 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 46.9, -81.5 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 53, -75.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 53, -75.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 41.9, -87.6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 41.9, -87.6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 42.9, -76.2 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 42.9, -76.2 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 56, -88.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 56, -88.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 51.9, -83.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 51.9, -83.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 59.9, -77.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 59.9, -77.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 71.7, -96.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 71.7, -96.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 92.8, -90.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 92.8, -90.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 123.2, -107.6 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 123.2, -107.6 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 133.7, -106.3 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 133.7, -106.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 153.5, -104.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 153.5, -104.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 153.3, -119.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 153.3, -119.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 155, -108.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 155, -108.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 168.3, -120.4 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 168.3, -120.4 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 164.2, -115.1 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 164.2, -115.1 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 171.7, -109.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 171.7, -109.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 161.6, -122 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 161.6, -122 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 163.2, -110.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 163.2, -110.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 176.5, -123 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 176.5, -123 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 172.2, -117.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 172.2, -117.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 179.5, -112.3 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 179.5, -112.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 169.4, -124.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 169.4, -124.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 170.9, -113.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 170.9, -113.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 184, -125.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 184, -125.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 179.6, -120.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 179.6, -120.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 186.9, -114.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 186.9, -114.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 176.6, -126.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 176.6, -126.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 178, -115.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 178, -115.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 191.1, -127.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 191.1, -127.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 186.5, -122.3 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 186.5, -122.3 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 193.7, -116.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 193.7, -116.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 183.3, -129 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 183.3, -129 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 184.6, -117.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 184.6, -117.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 197.8, -130 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 197.8, -130 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 11 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 286 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 288 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 290 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 338 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--空中構える
SE025 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 34, 0, 16, -1);
SE026 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 0, 1019, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 14, 1003, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 36, 1019, "",spep_2 + 110, 0, 24, -1);
--気弾発射
SE030 = playSeVer2( spep_2 + 64, 1109, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 68, 1177, "",spep_2 + 144, 0, 24, -1);
SE032 = playSeVer2( spep_2 + 68, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 68, SE032, 73 );
--敵ヒット
SE033 = playSeVer2( spep_2 + 90, 1011, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 90, 1024, "", 0, 0, 0, -1);
--気弾弾ける
SE035 = playSeVer2( spep_2 + 144, 1067, "", 0, 0, 0, -1);
--気弾中
SE036 = playSeVer2( spep_2 + 154, 1213, "", 0, 48, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE036, 83 );
setStartTimeMs( SE036,  33 );
SE037 = playSeVer2( spep_2 + 202, 1161, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 202, 1211, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE038, 158 );
--敵呑まれる
SE039 = playSeVer2( spep_2 + 248, 1258, "",spep_2 + 328, 14, 16, -1);
setStartTimeMs( SE039,  200 );

-- ** おわり ** --
dealDamage( spep_2 + 240 );
endPhase( spep_2 +  MAX_FRAME_2 - 2 );  -- 344

end