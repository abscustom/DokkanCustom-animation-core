--4030810:LR_ピッコロ大魔王_必殺技：魔光線
--sp_effect_a1_00480
--sp2831

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163642;  -- 対峙〜蹴り〜見上げる ef_001
SP_01b = 163643;  -- 対峙〜蹴り〜見上げる ef_001b
SP_02 = 163645;  -- 魔光線 ef_002
SP_02b = 163646;  -- 魔光線 ef_002b
SP_03b = 163647;  --  背景のみ ef_003b

--エフェクト(敵)
SP_01r = 163644;  -- 対峙〜蹴り〜見上げる ef_001r


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
]]
ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 対峙〜蹴り〜見上げる
-------------------------------------------------
MAX_FRAME_0 = 400;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 対峙〜蹴り〜見上げる(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 対峙〜蹴り〜見上げる(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 124;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
setDisp( spep_0 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 232, -135 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 232.2, -135 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 232.2, -135 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 232.4, -135 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 232.4, -135 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 232.7, -135 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 232.7, -135 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 232.9, -135 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 233.1, -135 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 233.1, -135 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 233.3, -135 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 233.3, -135 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 233.6, -135 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 233.6, -135 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 233.8, -135 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 233.8, -135 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 234, -135 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 234, -135 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 234.2, -135 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 234.2, -135 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 234.5, -135 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 234.5, -135 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 234.7, -135 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 234.7, -135 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 234.9, -135 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 234.9, -135 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 235.1, -135 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 235.1, -135 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 235.4, -135 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 235.4, -135 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 235.6, -135 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 235.6, -135 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 235.8, -135 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 235.8, -135 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 236, -135 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 236, -135 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 236.3, -135 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 236.3, -135 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 236.5, -135 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 236.5, -135 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 236.7, -135 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 236.7, -135 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 236.9, -135 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 236.9, -135 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 237.2, -135 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 237.2, -135 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 237.4, -135 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 237.4, -135 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 237.6, -135 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 237.6, -135 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 237.8, -135 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 237.8, -135 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 238.1, -135 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 238.1, -135 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 238.3, -135 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 238.3, -135 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 238.5, -135 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 238.5, -135 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 238.7, -135 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 238.7, -135 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 239, -135 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 239, -135 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 239.2, -135 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 239.2, -135 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 239.4, -135 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 239.4, -135 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 239.6, -135 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 239.6, -135 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 239.9, -135 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 239.9, -135 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 240.1, -135 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 240.1, -135 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 240.3, -135 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 240.3, -135 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 240.5, -135 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 240.5, -135 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 240.8, -135 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 240.8, -135 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 241, -135 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 241, -135 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 241.2, -135 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 241.2, -135 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 241.4, -135 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 241.4, -135 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 241.7, -135 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 241.7, -135 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 241.9, -135 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 241.9, -135 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 242.1, -135 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 242.1, -135 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 242.3, -135 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 242.3, -135 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 242.6, -135 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 242.6, -135 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 242.8, -135 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 242.8, -135 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 243, -135 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 243, -135 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 243.2, -135 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 243.2, -135 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 243.5, -135 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 243.5, -135 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 243.7, -135 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 243.7, -135 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 243.9, -135 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 243.9, -135 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 244.1, -135 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 244.1, -135 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 244.4, -135 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 244.4, -135 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 244.6, -135 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 244.6, -135 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 244.8, -135 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 244.8, -135 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 245, -135 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 245, -135 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 245.3, -135 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 245.3, -135 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 0, 1, -3 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -3 );

--敵の動き2

setDisp( spep_0 + 220 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 270 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 220 + OFFSET_X, 1, 252.9, -114.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 252.9, -114.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 252.9, -115.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 252.9, -115.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 252.9, -115.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 252.9, -115.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 252.9, -115.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 252.9, -115.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 252.9, -116 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 252.9, -116 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 252.9, -116.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 252.9, -116.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 252.9, -116.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 252.9, -116.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 252.9, -117 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 252.9, -117 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 252.9, -117.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 252.9, -117.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 252.8, -117.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 252.8, -117.4 , 0 );

setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.12, 1.12 );

setRotateKey( spep_0 + 220 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -2.8 );

--敵の動き3

setDisp( spep_0 + 334 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 400 + OFFSET_X, 1, 1 );

changeAnime( spep_0 + 334 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 334 + OFFSET_X, 1, 277, -9.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 277, -9.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 291.3, 59.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 291.3, 59.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 276.5, 103.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 276.5, 103.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 272.5, 112.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 272.5, 112.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 270.3, 142.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 270.3, 142.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 268.7, 145.6 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 268.7, 145.6 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 267, 170.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 267, 170.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 265.3, 169.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 265.3, 169.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 263.7, 189.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 263.7, 189.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 262, 186.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 262, 186.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 260.3, 202.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 260.3, 202.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 260.5, 196.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 260.5, 196.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 260.9, 209.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 260.9, 209.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 261.7, 214.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 261.7, 214.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 263, 238.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 263, 238.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 264.8, 260.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 264.8, 260.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 267, 296.1 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 267, 296.1 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 269.3, 325.7 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 269.3, 325.7 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 271.5, 361.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 271.5, 361.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 273.4, 385 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 273.4, 385 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 275, 411.3 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 275, 411.3 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 276.3, 428.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 276.3, 428.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 277.5, 447.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 277.5, 447.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 278.4, 458.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 278.4, 458.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 279.2, 472.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 279.2, 472.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 279.9, 479.6 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 279.9, 479.6 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 280.4, 489.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 280.4, 489.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 280.9, 494.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 280.9, 494.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 281.2, 501.7 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 281.2, 501.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 281.5, 504.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 281.5, 504.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 281.7, 509.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 281.7, 509.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 281.9, 510.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 281.9, 510.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 282, 513.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 282, 513.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 282.1, 513.5 , 0 );

setScaleKey( spep_0 + 334 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.42, 0.42 );

setRotateKey( spep_0 + 334 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -57.8 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -57.8 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -69.3 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -69.3 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -73.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -73.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -75.1 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -75.1 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -78.5 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -78.5 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -79.3 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -79.3 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -79.9 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -79.9 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -81.5 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -81.5 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -81.7 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -81.7 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -81.9 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
setTimeStretch( SE001, 1.41, 30, 4 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 328, 0, 106, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--暗雲たちこめる
SE003 = playSeVer2( spep_0 + 88, 1229, "",spep_0 + 236, 0, 54, -1);
SE004 = playSeVer2( spep_0 + 100, 8, "", 0, 0, 0, -1);

--構える
SE006 = playSeVer2( spep_0 + 204, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE006, 71 );

--向かってくる
SE007 = playSeVer2( spep_0 + 236, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 238, 9, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 246, 1019, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 268, 1232, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 274, 1116, "",spep_0 + 322, 0, 24, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 298, 1116, "",spep_0 + 340, 0, 20, -1);
SE013 = playSeVer2( spep_0 + 306, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 320; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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

--けりあげる
SE014 = playSeVer2( spep_0 + 330, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 352, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 356, 1121, "",spep_0 + 360, 0, 42, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --400F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

--力む
SE018 = playSeVer2( spep_1 + 82, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE018, 79 );

--背景集中線
SE019 = playSeVer2( spep_1 + 92, 1271, "",spep_1 + 214, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 92, SE019, 85 );

-------------------------------------------------
-- 魔光線
-------------------------------------------------
MAX_FRAME_2 = 224;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 魔光線(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 魔光線(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 0, 1515 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 0, 1515 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 0, 1518.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 0, 1518.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0, 1515 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 0, 1515 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 0, 1457 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 0, 1457 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 0, 1445.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 0, 1445.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 0, 1409.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 0, 1409.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 0, 1341 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 0, 1341 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 0, 1261.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 0, 1261.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 0, 1135.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 0, 1135.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 0, 1009.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 0, 1009.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 0, 852 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 0, 852 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 0, 712.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 0, 712.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 0, 568.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 0, 568.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 0, 448.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 0, 448.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 0.3, 346.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 0.3, 346.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -2.5, 256.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -2.5, 256.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 2.1, 195.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 2.1, 195.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -1.7, 141.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -1.7, 141.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -2.5, 108.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -2.5, 108.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 2.1, 95 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 2.1, 95 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 0, 80 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 0, 80 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 7.7, 66.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 7.7, 66.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -11, 46.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -11, 46.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 9.4, 61.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 9.4, 61.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 6.2, 38 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 6.2, 38 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -11.2, 54 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -11.2, 54 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 3.7, 38.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 3.7, 38.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -9.9, 42.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -9.9, 42.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 1.3, 47.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 1.3, 47.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -2.5, 42.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -2.5, 42.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -3.3, 42.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -3.3, 42.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 1.3, 47.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 1.3, 47.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -0.8, 45.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -0.8, 45.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -0.5, 48 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -0.5, 48 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -3.3, 43 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -3.3, 43 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 1.3, 47.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 1.3, 47.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -2.5, 43 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -2.5, 43 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -3.4, 43.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -3.4, 43.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1.2, 47.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 1.2, 47.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -0.8, 45.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -0.8, 45.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -0.5, 48.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -0.5, 48.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -3.4, 43.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -3.4, 43.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 1.2, 48.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 1.2, 48.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -2.6, 43.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -2.6, 43.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -3.4, 43.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -3.4, 43.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -0.6, 48.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -0.6, 48.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -3.4, 43.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -3.4, 43.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 1.1, 48.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 1.1, 48.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -3.5, 43.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -3.5, 43.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 1.1, 48.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 1.1, 48.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -0.9, 46.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -0.9, 46.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -0.6, 48.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -0.6, 48.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -3.5, 44 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -3.5, 44 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 1.1, 48.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 1.1, 48.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -2.7, 44 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -2.7, 44 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -3.5, 44.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -3.5, 44.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -0.7, 49.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -0.7, 49.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -3.5, 44.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -3.5, 44.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 1.1, 49.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 1.1, 49.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -2.8, 44.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -2.8, 44.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -3.6, 44.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -3.6, 44.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 1, 49.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 1, 49.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -1, 47.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -1, 47.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -0.7, 49.6 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.38, 1.38 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -83.8 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -87 );

setBlendColor( spep_2 + 138 + OFFSET_X, 1, 3, 0.45, 0.105, 0.337, 0.7 );

-- ** 音 ** --

--背景集中線
SE020 = playSeVer2( spep_2 + 30, 1264, "",spep_2 + 122, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 30, SE020, 63 );
setPitch( spep_2 + 30, SE020, -500 );
setTimeStretch( SE020, 0.67, 30, 4 );
SE021 = playSeVer2( spep_2 + 30, 1391, "",spep_2 + 118, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 30, SE021, 77 );

--気弾発射
SE022 = playSeVer2( spep_2 + 90, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 96, 1145, "", 0, 0, 0, -1);
setTimeStretch( SE023, 0.66, 30, 4 );
SE024 = playSeVer2( spep_2 + 96, 1022, "", 0, 0, 0, -1);
setTimeStretch( SE024, 0.66, 30, 4 );
SE025 = playSeVer2( spep_2 + 96, 1177, "",spep_2 + 198, 0, 64, -1);

--敵ヒット
SE026 = playSeVer2( spep_2 + 130, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE026, 170 );
SE027 = playSeVer2( spep_2 + 130, 1011, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 140, 1024, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_2 + 204, 1023, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; --224F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
 
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_03b , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 背景のみ(ef003b)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
 
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  
 
--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景
 
  -- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

setBlendColor( spep_N + 0, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 108F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 対峙〜蹴り〜見上げる
-------------------------------------------------
MAX_FRAME_0 = 400;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 対峙〜蹴り〜見上げる(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 対峙〜蹴り〜見上げる(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 124;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
setDisp( spep_0 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 232, -135 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 232.2, -135 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 232.2, -135 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 232.4, -135 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 232.4, -135 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 232.7, -135 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 232.7, -135 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 232.9, -135 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 233.1, -135 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 233.1, -135 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 233.3, -135 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 233.3, -135 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 233.6, -135 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 233.6, -135 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 233.8, -135 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 233.8, -135 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 234, -135 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 234, -135 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 234.2, -135 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 234.2, -135 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 234.5, -135 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 234.5, -135 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 234.7, -135 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 234.7, -135 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 234.9, -135 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 234.9, -135 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 235.1, -135 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 235.1, -135 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 235.4, -135 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 235.4, -135 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 235.6, -135 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 235.6, -135 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 235.8, -135 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 235.8, -135 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 236, -135 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 236, -135 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 236.3, -135 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 236.3, -135 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 236.5, -135 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 236.5, -135 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 236.7, -135 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 236.7, -135 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 236.9, -135 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 236.9, -135 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 237.2, -135 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 237.2, -135 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 237.4, -135 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 237.4, -135 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 237.6, -135 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 237.6, -135 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 237.8, -135 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 237.8, -135 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 238.1, -135 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 238.1, -135 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 238.3, -135 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 238.3, -135 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 238.5, -135 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 238.5, -135 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 238.7, -135 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 238.7, -135 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 239, -135 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 239, -135 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 239.2, -135 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 239.2, -135 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 239.4, -135 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 239.4, -135 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 239.6, -135 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 239.6, -135 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 239.9, -135 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 239.9, -135 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 240.1, -135 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 240.1, -135 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 240.3, -135 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 240.3, -135 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 240.5, -135 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 240.5, -135 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 240.8, -135 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 240.8, -135 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 241, -135 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 241, -135 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 241.2, -135 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 241.2, -135 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 241.4, -135 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 241.4, -135 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 241.7, -135 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 241.7, -135 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 241.9, -135 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 241.9, -135 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 242.1, -135 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 242.1, -135 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 242.3, -135 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 242.3, -135 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 242.6, -135 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 242.6, -135 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 242.8, -135 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 242.8, -135 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 243, -135 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 243, -135 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 243.2, -135 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 243.2, -135 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 243.5, -135 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 243.5, -135 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 243.7, -135 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 243.7, -135 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 243.9, -135 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 243.9, -135 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 244.1, -135 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 244.1, -135 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 244.4, -135 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 244.4, -135 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 244.6, -135 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 244.6, -135 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 244.8, -135 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 244.8, -135 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 245, -135 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 245, -135 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 245.3, -135 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 245.3, -135 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 0, 1, -3 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1 , -3 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -3 );

--敵の動き2

setDisp( spep_0 + 220 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 270 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 220 + OFFSET_X, 1, 252.9, -114.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 252.9, -114.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 252.9, -115.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 252.9, -115.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 252.9, -115.3 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 252.9, -115.3 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 252.9, -115.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 252.9, -115.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 252.9, -116 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 252.9, -116 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 252.9, -116.4 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 252.9, -116.4 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 252.9, -116.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 252.9, -116.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 252.9, -117 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 252.9, -117 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 252.9, -117.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 252.9, -117.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 252.8, -117.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 252.8, -117.4 , 0 );

setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 1.12, 1.12 );

setRotateKey( spep_0 + 220 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -2.8 );

--敵の動き3

setDisp( spep_0 + 334 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 400 + OFFSET_X, 1, 1 );

changeAnime( spep_0 + 334 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 334 + OFFSET_X, 1, 277, -9.5 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 277, -9.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 291.3, 59.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 291.3, 59.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 276.5, 103.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 276.5, 103.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 272.5, 112.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 272.5, 112.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 270.3, 142.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 270.3, 142.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 268.7, 145.6 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 268.7, 145.6 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 267, 170.6 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 267, 170.6 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 265.3, 169.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 265.3, 169.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 263.7, 189.4 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 263.7, 189.4 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 262, 186.3 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 262, 186.3 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 260.3, 202.6 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 260.3, 202.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 260.5, 196.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 260.5, 196.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 260.9, 209.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 260.9, 209.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 261.7, 214.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 261.7, 214.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 263, 238.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 263, 238.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 264.8, 260.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 264.8, 260.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 267, 296.1 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 267, 296.1 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 269.3, 325.7 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 269.3, 325.7 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 271.5, 361.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 271.5, 361.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 273.4, 385 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 273.4, 385 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 275, 411.3 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 275, 411.3 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 276.3, 428.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 276.3, 428.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 277.5, 447.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 277.5, 447.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 278.4, 458.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 278.4, 458.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 279.2, 472.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 279.2, 472.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 279.9, 479.6 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 279.9, 479.6 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 280.4, 489.9 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 280.4, 489.9 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 280.9, 494.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 280.9, 494.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 281.2, 501.7 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 281.2, 501.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 281.5, 504.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 281.5, 504.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 281.7, 509.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 281.7, 509.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 281.9, 510.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 281.9, 510.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 282, 513.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 282, 513.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 282.1, 513.5 , 0 );

setScaleKey( spep_0 + 334 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 3.38, 3.38 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.42, 0.42 );

setRotateKey( spep_0 + 334 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -46.7 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -56.8 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -57.8 );
setRotateKey( spep_0 + 361 + OFFSET_X, 1, -57.8 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -64 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -66.8 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -69.3 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -69.3 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -71.6 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -73.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -73.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -75.1 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -75.1 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, -76.4 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -78.5 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -78.5 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -79.3 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -79.3 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -79.9 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -79.9 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -80.5 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -80.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -81.3 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -81.5 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -81.5 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -81.7 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -81.7 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -81.9 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -81.9 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
setTimeStretch( SE001, 1.41, 30, 4 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 328, 0, 106, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--暗雲たちこめる
SE003 = playSeVer2( spep_0 + 88, 1229, "",spep_0 + 236, 0, 54, -1);
SE004 = playSeVer2( spep_0 + 100, 8, "", 0, 0, 0, -1);

--構える
SE006 = playSeVer2( spep_0 + 204, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE006, 71 );

--向かってくる
SE007 = playSeVer2( spep_0 + 236, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 238, 9, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 246, 1019, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 268, 1232, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 274, 1116, "",spep_0 + 322, 0, 24, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 298, 1116, "",spep_0 + 340, 0, 20, -1);
SE013 = playSeVer2( spep_0 + 306, 1004, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 320; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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

--けりあげる
SE014 = playSeVer2( spep_0 + 330, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 352, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 356, 1121, "",spep_0 + 360, 0, 42, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --400F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--けりあげる
SE014 = playSeVer2( spep_0 + 330, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 352, 1027, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 356, 1121, "",spep_0 + 360, 0, 42, -1);

-------------------------------------------------
-- 魔光線
-------------------------------------------------
MAX_FRAME_2 = 224;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 魔光線(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 魔光線(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 0, 1515 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 0, 1515 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 0, 1518.3 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 0, 1518.3 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0, 1515 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 0, 1515 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 0, 1457 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 0, 1457 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 0, 1445.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 0, 1445.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 0, 1409.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 0, 1409.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 0, 1341 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 0, 1341 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 0, 1261.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 0, 1261.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 0, 1135.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 0, 1135.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 0, 1009.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 0, 1009.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 0, 852 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 0, 852 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 0, 712.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 0, 712.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 0, 568.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 0, 568.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 0, 448.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 0, 448.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -0.3, 346.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -0.3, 346.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 2.5, 256.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 2.5, 256.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -2.1, 195.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -2.1, 195.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 1.7, 141.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 1.7, 141.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 2.5, 108.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 2.5, 108.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -2.1, 95 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -2.1, 95 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 0, 80 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 0, 80 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -7.7, 66.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -7.7, 66.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 11, 46.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 11, 46.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -9.4, 61.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -9.4, 61.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -6.2, 38 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -6.2, 38 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 11.2, 54 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 11.2, 54 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -3.7, 38.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -3.7, 38.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 9.9, 42.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 9.9, 42.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -1.3, 47.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -1.3, 47.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 2.5, 42.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 2.5, 42.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 3.3, 42.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 3.3, 42.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -1.3, 47.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -1.3, 47.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 0.8, 45.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 0.8, 45.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 0.5, 48 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 0.5, 48 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 3.3, 43 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 3.3, 43 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -1.3, 47.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -1.3, 47.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 2.5, 43 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 2.5, 43 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 3.4, 43.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 3.4, 43.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -1.2, 47.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -1.2, 47.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 0.8, 45.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 0.8, 45.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 0.5, 48.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 0.5, 48.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 3.4, 43.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 3.4, 43.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -1.2, 48.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -1.2, 48.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 2.6, 43.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 2.6, 43.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 3.4, 43.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 3.4, 43.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 0.6, 48.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 0.6, 48.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 3.4, 43.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 3.4, 43.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -1.1, 48.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -1.1, 48.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 3.5, 43.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 3.5, 43.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -1.1, 48.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -1.1, 48.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 0.9, 46.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 0.9, 46.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 0.6, 48.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 0.6, 48.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 3.5, 44 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 3.5, 44 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -1.1, 48.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -1.1, 48.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 2.7, 44 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 2.7, 44 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 3.5, 44.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 3.5, 44.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 0.7, 49.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 0.7, 49.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 3.5, 44.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 3.5, 44.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -1.1, 49.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -1.1, 49.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 2.8, 44.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 2.8, 44.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 3.6, 44.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 3.6, 44.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -1, 49.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -1, 49.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 1, 47.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 1, 47.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 0.7, 49.6 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.38, 1.38 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 83.8 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 87 );

setBlendColor( spep_2 + 138 + OFFSET_X, 1, 3, 0.45, 0.105, 0.337, 0.7 );

-- ** 音 ** --

--背景集中線
SE020 = playSeVer2( spep_2 + 30, 1264, "",spep_2 + 122, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 30, SE020, 63 );
setPitch( spep_2 + 30, SE020, -500 );
setTimeStretch( SE020, 0.67, 30, 4 );
SE021 = playSeVer2( spep_2 + 30, 1391, "",spep_2 + 118, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 30, SE021, 77 );

--気弾発射
SE022 = playSeVer2( spep_2 + 90, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 96, 1145, "", 0, 0, 0, -1);
setTimeStretch( SE023, 0.66, 30, 4 );
SE024 = playSeVer2( spep_2 + 96, 1022, "", 0, 0, 0, -1);
setTimeStretch( SE024, 0.66, 30, 4 );
SE025 = playSeVer2( spep_2 + 96, 1177, "",spep_2 + 198, 0, 64, -1);

--敵ヒット
SE026 = playSeVer2( spep_2 + 130, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE026, 170 );
SE027 = playSeVer2( spep_2 + 130, 1011, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 140, 1024, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_2 + 204, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2; --224F

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------
 
-- ** 画面手前衝突(ガッ)演出のテンプレ ** --
 
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_03b , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 背景のみ(ef003b)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
 
-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
 
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
 
-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );  
 
--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒 背景
 
  -- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );

setBlendColor( spep_N + 0, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);
 
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 108F


end
