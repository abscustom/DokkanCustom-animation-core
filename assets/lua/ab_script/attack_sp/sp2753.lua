--1029510:LR_孫悟飯(じいちゃん)_超必殺技_かめはめ波
--sp_effect_a1_00459
--sp2753

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163240; --登場〜連続攻撃 ef_001
SP_01b = 163241; --登場〜連続攻撃_裏 ef_001b
SP_02  = 163244; --かめはめ波 ef_002
SP_02b = 163245; --かめはめ波_裏 ef_002b

--エフェクト(敵)
SP_01r  = 163243; --登場〜連続攻撃_敵側 ef_001r
SP_01br = 163242; --登場〜連続攻撃_裏敵側 ef_001br
SP_02r  = 163247; --かめはめ波_敵側 ef_002r
SP_02br = 163246; --かめはめ波_裏敵側 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜連続攻撃
-------------------------------------------------
MAX_FRAME_0 = 534;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場〜連続攻撃(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場〜連続攻撃_敵(ef_001b)
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
spep_x = spep_0 + 436;
 
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
 
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -31.5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -31.5, 515.5 , 0 );
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
setDisp( spep_0 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );
changeAnime( spep_0 + 78 + OFFSET_X, 1, 116 );

setMoveKey( spep_0 + 0, 1, 252.1, -80 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 251.2, -80 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 251.2, -80 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 250.3, -80 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 250.3, -80 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 249.4, -80 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 249.4, -80 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 248.5, -80 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 248.5, -80 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 247.6, -80 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 247.6, -80 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 246.7, -80 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 246.7, -80 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 245.8, -80 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 245.8, -80 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 244.9, -80 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 244.9, -80 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 244, -80 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 244, -80 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 243.1, -80 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 243.1, -80 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 242.2, -80 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 242.2, -80 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 241.3, -80 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 241.3, -80 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 240.4, -80 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 240.4, -80 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 239.6, -80 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 239.6, -80 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 238.7, -80 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 238.7, -80 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 237.8, -80 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 237.8, -80 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 236.9, -80 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 236.9, -80 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 236, -80 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 236, -80 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 235.1, -80 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 235.1, -80 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 234.2, -80 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 234.2, -80 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 233.3, -80 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 233.3, -80 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 232.4, -80 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 232.4, -80 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 231.5, -80 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 231.5, -80 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 230.6, -80 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 230.6, -80 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 229.7, -80 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 229.7, -80 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 228.8, -80 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 228.8, -80 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 227.9, -80 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 227.9, -80 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 227, -80 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 227, -80 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 226.1, -80 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 226.1, -80 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 225.2, -80 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 225.2, -80 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 224.3, -80 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 224.3, -80 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 223.4, -80 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 223.4, -80 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 222.6, -80 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 222.6, -80 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 221.7, -80 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 221.7, -80 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 220.8, -80 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 220.8, -80 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 219.9, -80 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 219.9, -80 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 219, -80 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 219, -80 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 218.1, -80 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 218.1, -80 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 24.2, -109.6 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 24.2, -109.6 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 19.9, -90.3 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 19.9, -90.3 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 33, -87 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 33, -87 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 21.8, -86.4 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 21.8, -86.4 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 28.3, -95.8 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 28.3, -95.8 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 32.7, -83.3 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 32.7, -83.3 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 25, -80.7 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 25, -80.7 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 29.3, -80 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 29.3, -80 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 29.4, -77.4 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 29.4, -77.4 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 29.7, -74.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 29.7, -74.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 29.8, -72.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 29.8, -72.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 29.9, -69.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 29.9, -69.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 30.1, -67 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 30.1, -67 , 0 );

setScaleKey( spep_0 + 0, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 4.94, 4.94 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -45 );


--敵の動き2
setDisp( spep_0 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 154 + OFFSET_X, 1, 103 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 154 + OFFSET_X, 1, 298.8, -151 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 298.8, -151 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 301.6, -151 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 301.6, -151 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 301.8, -151 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 301.8, -151 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 299.3, -151 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 299.3, -151 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 294.1, -151 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 294.1, -151 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 286.2, -151 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 286.2, -151 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 275.7, -151 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 275.7, -151 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 262.4, -151 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 262.4, -151 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 246.5, -151 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 246.5, -151 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 247.7, -129 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 247.7, -129 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 235.9, -89 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 235.9, -89 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 221.2, -125 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 221.2, -125 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 256, -97 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 256, -97 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 247.3, -115 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 247.3, -115 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 279.8, -83 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 279.8, -83 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 318.6, -97 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 318.6, -97 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 326.1, -83 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 326.1, -83 , 0 );

setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_0 + 154 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_0 + 264 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 302 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 264 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 264 + OFFSET_X, 1, -98.6, -22.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -98.6, -22.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -139.3, -22.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -139.3, -22.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -55.8, -63.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -55.8, -63.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -10.3, -28 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -10.3, -28 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -11.3, -35.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -11.3, -35.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 2.8, -63.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 2.8, -63.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 41.1, -61.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 41.1, -61.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 15.5, -53.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 15.5, -53.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 7.5, -53.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 7.5, -53.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 140.9, 34.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 140.9, 34.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 29.4, 0.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 29.4, 0.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 14.2, 51.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 14.2, 51.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -5.4, -0.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -5.4, -0.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -5, 36.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -5, 36.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -27.6, 48.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -27.6, 48.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -45.9, 3.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -45.9, 3.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -33.2, 23.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -33.2, 23.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -45.8, 21.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -45.8, 21.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -50.1, 21.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -50.1, 21.2 , 0 );

setScaleKey( spep_0 + 264 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 3.47, 3.47 );

setRotateKey( spep_0 + 264 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -7.2 );


--敵の動き4
setDisp( spep_0 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 410 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 364 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 364 + OFFSET_X, 1, 23.1, -155.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 23.1, -155.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 22.9, -155.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 22.9, -155.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 27.3, -144.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 27.3, -144.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 29.1, -139.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 29.1, -139.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 30, -136.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 30, -136.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 30.7, -135 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 30.7, -135 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 31.1, -133.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 31.1, -133.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 31.5, -132.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 31.5, -132.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 31.7, -131.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 31.7, -131.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 32, -130.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 32, -130.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 32.2, -130 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 32.2, -130 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 32.4, -129.3 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 32.4, -129.3 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 32.5, -128.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 32.5, -128.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 32.7, -128.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 32.7, -128.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 32.9, -127.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 32.9, -127.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 33, -127.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 33, -127.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 33.2, -127 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 33.2, -127 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 33.3, -126.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 33.3, -126.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 33.4, -126.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 33.4, -126.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 33.6, -125.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 33.6, -125.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 33.7, -125.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 33.7, -125.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 33.9, -125.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 33.9, -125.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 34, -124.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 34, -124.7 , 0 );

setScaleKey( spep_0 + 364 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.91, 0.91 );

setRotateKey( spep_0 + 364 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 30 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--敵向かってくる
SE002 = playSeVer2( spep_0 + 74, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 74, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 74, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE004, 38 );

--手あげる
SE005 = playSeVer2( spep_0 + 114, 1003, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 146; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
SE006 = playSeVer2( spep_0 + 164, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 168, 1009, "", 0, 0, 0, -1);

--パンチ２
SE009 = playSeVer2( spep_0 + 192, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 200, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 200, 1010, "", 0, 0, 0, -1);

--パンチ３
SE012 = playSeVer2( spep_0 + 234, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 234, 1009, "", 0, 0, 0, -1);

--パンチ４
SE014 = playSeVer2( spep_0 + 258, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 262, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 262, 1010, "", 0, 0, 0, -1);

--パンチ５
SE017 = playSeVer2( spep_0 + 278, 1000, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 278, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE019 = playSeVer2( spep_0 + 318, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 328, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_0 + 354, 1121, "",spep_0 + 516, 0, 116, -1);
setSeVolumeByWorkId( spep_0 + 354, SE021, 68 );
SE022 = playSeVer2( spep_0 + 354, 1183, "",spep_0 + 504, 0, 80, -1);
SE023 = playSeVer2( spep_0 + 360, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE023, 72 );

--構える
SE025 = playSeVer2( spep_0 + 450, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 450, 1233, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 458, 1006, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 534f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- かめはめ波
-------------------------------------------------
MAX_FRAME_2 = 382;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波_裏(ef_002b)
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
setDisp( spep_2 + 128 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 270 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 128 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 128 + OFFSET_X, 1, 22.6, -191.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 22.6, -191.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 22.9, -166.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 22.9, -166.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 23.2, -150.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 23.2, -150.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 23.3, -139.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 23.3, -139.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 23.5, -131.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 23.5, -131.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 23.6, -125.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 23.6, -125.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 23.6, -120.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 23.6, -120.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 23.7, -115.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 23.7, -115.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 23.8, -112.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 23.8, -112.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 23.8, -108.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 23.8, -108.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 29.9, -105.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 29.9, -105.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 21.9, -64.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 21.9, -64.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 31.9, -135 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 31.9, -135 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 60.8, -109.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 60.8, -109.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 25.7, -99.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 25.7, -99.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 80, -87.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 80, -87.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 43.8, -115.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 43.8, -115.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 65.1, -119.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 65.1, -119.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 76.1, -82.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 76.1, -82.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 40.8, -81.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 40.8, -81.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 75.3, -129.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 75.3, -129.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 89.6, -82.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 89.6, -82.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 23.8, -92.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 23.8, -92.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 83.9, -134.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 83.9, -134.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 102, -94.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 102, -94.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 50, -68.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 50, -68.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 44.1, -140.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 44.1, -140.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 36.1, -110.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 36.1, -110.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 64.1, -100.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 64.1, -100.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 44.1, -140.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 44.1, -140.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 36.1, -110.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 36.1, -110.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 5.2, -73.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 5.2, -73.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 5.6, -69.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 5.6, -69.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 12, -46.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 12, -46.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 8.4, -74.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 8.4, -74.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -5.1, -51.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -5.1, -51.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 17.3, -45.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 17.3, -45.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 3.8, -64.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 3.8, -64.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 24.2, -50.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 24.2, -50.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -3.4, -35.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -3.4, -35.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 15, -33.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 15, -33.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 13.4, -48.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 13.4, -48.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -0.2, -27.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -0.2, -27.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 20.2, -22.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 20.2, -22.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 6.5, -41.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 6.5, -41.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 26.9, -28.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 26.9, -28.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -0.8, -14.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -0.8, -14.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 17.5, -13.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 17.5, -13.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 15.8, -29.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 15.8, -29.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 2.1, -8.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 2.1, -8.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 22.4, -4.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 22.4, -4.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 8.6, -24.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 8.6, -24.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 28.9, -12.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 28.9, -12.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 19.1, -0.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 19.1, -0.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 17.3, -16.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 17.3, -16.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 3.5, 2.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 3.5, 2.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 23.7, 6.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 23.7, 6.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 9.9, -14.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 9.9, -14.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 14, -0.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 14, -0.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 14.2, 0.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 14.2, 0.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 14.4, 1.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 14.4, 1.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 14.5, 2.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 14.5, 2.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 14.6, 3.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 14.6, 3.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 14.7, 4.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 14.7, 4.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 14.8, 5.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 14.8, 5.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 14.9, 6.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 14.9, 6.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 15, 7.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 15, 7.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 15.1, 8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 15.1, 8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 15.2, 8.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 15.2, 8.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 15.3, 9.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 15.3, 9.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 15.4, 9.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 15.4, 9.7 , 0 );

setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.84, 0.84 );

setRotateKey( spep_2 + 128 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 20.7 );

setBlendColor( spep_2 + 128 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 270 + OFFSET_X, 1, 2, 0, 0, 0, 0 );

-- ** 音 ** --
--かめはめ波溜め
SE029 = playSeVer2( spep_2 + 14, 1210, "",spep_2 + 138, 20, 28, -1);
setSeVolumeByWorkId( spep_2 + 14, SE029, 49 );
setStartTimeMs( SE029,  1100 );
SE030 = playSeVer2( spep_2 + 12, 1336, "",spep_2 + 126, 36, 18, -1);
setStartTimeMs( SE030,  400 );
SE031 = playSeVer2( spep_2 + 6, 1209, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 6, 1391, "",spep_2 + 130, 0, 26, -1);

--かめはめ波発射
SE033 = playSeVer2( spep_2 + 88, 1146, "",spep_2 + 304, 0, 62, -1);
SE034 = playSeVer2( spep_2 + 88, 1177, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 88, 1213, "",spep_2 + 284, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 88, SE035, 56 );

--かめはめ波飛んでいく
SE036 = playSeVer2( spep_2 + 142, 1161, "",spep_2 + 284, 0, 48, -1);

--敵呑まれる
SE037 = playSeVer2( spep_2 + 166, 1258, "",spep_2 + 326, 32, 82, -1);

--画面遷移
SE038 = playSeVer2( spep_2 + 260, 8, "", 0, 0, 0, -1);

--環境音
SE039 = playSeVer2( spep_2 + 260, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE039, 25 );

--構えとく
SE040 = playSeVer2( spep_2 + 338, 1013, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 272); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 382f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場〜連続攻撃
-------------------------------------------------
MAX_FRAME_0 = 534;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 登場〜連続攻撃(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 登場〜連続攻撃_敵(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 436;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 31.5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 31.5, 515.5 , 0 );
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
setDisp( spep_0 + 104 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );
changeAnime( spep_0 + 78 + OFFSET_X, 1, 116 );

setMoveKey( spep_0 + 0, 1, 252.1, -80 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 251.2, -80 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 251.2, -80 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 250.3, -80 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 250.3, -80 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 249.4, -80 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 249.4, -80 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 248.5, -80 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 248.5, -80 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 247.6, -80 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 247.6, -80 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 246.7, -80 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 246.7, -80 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 245.8, -80 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 245.8, -80 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 244.9, -80 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 244.9, -80 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 244, -80 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 244, -80 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 243.1, -80 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 243.1, -80 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 242.2, -80 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 242.2, -80 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 241.3, -80 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 241.3, -80 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 240.4, -80 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 240.4, -80 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 239.6, -80 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 239.6, -80 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 238.7, -80 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 238.7, -80 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 237.8, -80 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 237.8, -80 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 236.9, -80 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 236.9, -80 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 236, -80 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 236, -80 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 235.1, -80 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 235.1, -80 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 234.2, -80 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 234.2, -80 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 233.3, -80 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 233.3, -80 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 232.4, -80 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 232.4, -80 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 231.5, -80 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 231.5, -80 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 230.6, -80 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 230.6, -80 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 229.7, -80 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 229.7, -80 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 228.8, -80 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 228.8, -80 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 227.9, -80 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 227.9, -80 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 227, -80 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 227, -80 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 226.1, -80 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 226.1, -80 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 225.2, -80 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 225.2, -80 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 224.3, -80 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 224.3, -80 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 223.4, -80 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 223.4, -80 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 222.6, -80 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 222.6, -80 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 221.7, -80 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 221.7, -80 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 220.8, -80 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 220.8, -80 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 219.9, -80 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 219.9, -80 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 219, -80 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 219, -80 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 218.1, -80 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 218.1, -80 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 24.2, -109.6 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 24.2, -109.6 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 19.9, -90.3 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 19.9, -90.3 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 33, -87 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 33, -87 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 21.8, -86.4 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 21.8, -86.4 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 28.3, -95.8 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 28.3, -95.8 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 32.7, -83.3 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 32.7, -83.3 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 25, -80.7 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 25, -80.7 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 29.3, -80 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 29.3, -80 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 29.4, -77.4 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 29.4, -77.4 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 29.7, -74.8 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 29.7, -74.8 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 29.8, -72.2 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 29.8, -72.2 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 29.9, -69.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 29.9, -69.6 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 30.1, -67 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 30.1, -67 , 0 );

setScaleKey( spep_0 + 0, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 4.94, 4.94 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -45 );


--敵の動き2
setDisp( spep_0 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 154 + OFFSET_X, 1, 103 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 154 + OFFSET_X, 1, 298.8, -151 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 298.8, -151 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 301.6, -151 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 301.6, -151 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 301.8, -151 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 301.8, -151 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 299.3, -151 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 299.3, -151 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 294.1, -151 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 294.1, -151 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 286.2, -151 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 286.2, -151 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 275.7, -151 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 275.7, -151 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 262.4, -151 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 262.4, -151 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 246.5, -151 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 246.5, -151 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 247.7, -129 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 247.7, -129 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 235.9, -89 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 235.9, -89 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 221.2, -125 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 221.2, -125 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 256, -97 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 256, -97 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 247.3, -115 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 247.3, -115 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 279.8, -83 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 279.8, -83 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 318.6, -97 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 318.6, -97 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 326.1, -83 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 326.1, -83 , 0 );

setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_0 + 154 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_0 + 264 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 302 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 264 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 282 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 264 + OFFSET_X, 1, -98.6, -22.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -98.6, -22.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -139.3, -22.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -139.3, -22.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -55.8, -63.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -55.8, -63.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -10.3, -28 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -10.3, -28 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -11.3, -35.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -11.3, -35.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 2.8, -63.3 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 2.8, -63.3 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 41.1, -61.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 41.1, -61.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 15.5, -53.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 15.5, -53.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 7.5, -53.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 7.5, -53.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 140.9, 34.2 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 140.9, 34.2 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 29.4, 0.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 29.4, 0.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 14.2, 51.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 14.2, 51.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -5.4, -0.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -5.4, -0.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -5, 36.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -5, 36.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -27.6, 48.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -27.6, 48.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -45.9, 3.9 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -45.9, 3.9 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -33.2, 23.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -33.2, 23.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -45.8, 21.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -45.8, 21.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -50.1, 21.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -50.1, 21.2 , 0 );

setScaleKey( spep_0 + 264 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 3.47, 3.47 );

setRotateKey( spep_0 + 264 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -7.2 );


--敵の動き4
setDisp( spep_0 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 410 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 364 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 364 + OFFSET_X, 1, 23.1, -155.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 23.1, -155.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 22.9, -155.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 22.9, -155.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 27.3, -144.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 27.3, -144.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 29.1, -139.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 29.1, -139.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 30, -136.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 30, -136.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 30.7, -135 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 30.7, -135 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 31.1, -133.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 31.1, -133.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 31.5, -132.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 31.5, -132.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 31.7, -131.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 31.7, -131.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 32, -130.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 32, -130.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 32.2, -130 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 32.2, -130 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 32.4, -129.3 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 32.4, -129.3 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 32.5, -128.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 32.5, -128.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 32.7, -128.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 32.7, -128.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 32.9, -127.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 32.9, -127.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 33, -127.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 33, -127.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 33.2, -127 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 33.2, -127 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 33.3, -126.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 33.3, -126.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 33.4, -126.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 33.4, -126.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 33.6, -125.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 33.6, -125.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 33.7, -125.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 33.7, -125.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 33.9, -125.1 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 33.9, -125.1 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 34, -124.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 34, -124.7 , 0 );

setScaleKey( spep_0 + 364 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 6.26, 6.26 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.91, 0.91 );

setRotateKey( spep_0 + 364 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 30 );


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--敵向かってくる
SE002 = playSeVer2( spep_0 + 74, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 74, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 74, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE004, 38 );

--手あげる
SE005 = playSeVer2( spep_0 + 114, 1003, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 146; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
SE006 = playSeVer2( spep_0 + 164, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 168, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 168, 1009, "", 0, 0, 0, -1);

--パンチ２
SE009 = playSeVer2( spep_0 + 192, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 200, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 200, 1010, "", 0, 0, 0, -1);

--パンチ３
SE012 = playSeVer2( spep_0 + 234, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 234, 1009, "", 0, 0, 0, -1);

--パンチ４
SE014 = playSeVer2( spep_0 + 258, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 262, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 262, 1010, "", 0, 0, 0, -1);

--パンチ５
SE017 = playSeVer2( spep_0 + 278, 1000, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 278, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE019 = playSeVer2( spep_0 + 318, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 328, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE021 = playSeVer2( spep_0 + 354, 1121, "",spep_0 + 516, 0, 116, -1);
setSeVolumeByWorkId( spep_0 + 354, SE021, 68 );
SE022 = playSeVer2( spep_0 + 354, 1183, "",spep_0 + 504, 0, 80, -1);
SE023 = playSeVer2( spep_0 + 360, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE023, 72 );

--構える
SE025 = playSeVer2( spep_0 + 450, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 450, 1233, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 458, 1006, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 534f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- かめはめ波
-------------------------------------------------
MAX_FRAME_2 = 382;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- かめはめ波(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- かめはめ波_裏(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
setDisp( spep_2 + 128 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 270 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 128 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 128 + OFFSET_X, 1, 22.6, -191.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 22.6, -191.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 22.9, -166.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 22.9, -166.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 23.2, -150.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 23.2, -150.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 23.3, -139.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 23.3, -139.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 23.5, -131.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 23.5, -131.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 23.6, -125.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 23.6, -125.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 23.6, -120.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 23.6, -120.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 23.7, -115.8 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 23.7, -115.8 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 23.8, -112.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 23.8, -112.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 23.8, -108.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 23.8, -108.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 29.9, -105.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 29.9, -105.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 21.9, -64.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 21.9, -64.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 31.9, -135 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 31.9, -135 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 60.8, -109.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 60.8, -109.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 25.7, -99.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 25.7, -99.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 80, -87.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 80, -87.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 43.8, -115.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 43.8, -115.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 65.1, -119.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 65.1, -119.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 76.1, -82.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 76.1, -82.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 40.8, -81.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 40.8, -81.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 75.3, -129.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 75.3, -129.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 89.6, -82.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 89.6, -82.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 23.8, -92.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 23.8, -92.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 83.9, -134.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 83.9, -134.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 102, -94.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 102, -94.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 50, -68.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 50, -68.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 44.1, -140.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 44.1, -140.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 36.1, -110.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 36.1, -110.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 64.1, -100.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 64.1, -100.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 44.1, -140.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 44.1, -140.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 36.1, -110.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 36.1, -110.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 5.2, -73.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 5.2, -73.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 5.6, -69.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 5.6, -69.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 12, -46.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 12, -46.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 8.4, -74.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 8.4, -74.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -5.1, -51.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -5.1, -51.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 17.3, -45.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 17.3, -45.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 3.8, -64.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 3.8, -64.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 24.2, -50.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 24.2, -50.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -3.4, -35.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -3.4, -35.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 15, -33.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 15, -33.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 13.4, -48.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 13.4, -48.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -0.2, -27.6 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -0.2, -27.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 20.2, -22.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 20.2, -22.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 6.5, -41.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 6.5, -41.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 26.9, -28.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 26.9, -28.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -0.8, -14.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -0.8, -14.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 17.5, -13.5 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 17.5, -13.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 15.8, -29.1 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 15.8, -29.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 2.1, -8.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 2.1, -8.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 22.4, -4.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 22.4, -4.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 8.6, -24.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 8.6, -24.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 28.9, -12.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 28.9, -12.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 19.1, -0.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 19.1, -0.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 17.3, -16.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 17.3, -16.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 3.5, 2.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 3.5, 2.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 23.7, 6.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 23.7, 6.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 9.9, -14.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 9.9, -14.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 14, -0.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 14, -0.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 14.2, 0.5 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 14.2, 0.5 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 14.4, 1.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 14.4, 1.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 14.5, 2.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 14.5, 2.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 14.6, 3.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 14.6, 3.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 14.7, 4.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 14.7, 4.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 14.8, 5.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 14.8, 5.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 14.9, 6.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 14.9, 6.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 15, 7.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 15, 7.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 15.1, 8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 15.1, 8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 15.2, 8.6 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 15.2, 8.6 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 15.3, 9.2 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 15.3, 9.2 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 15.4, 9.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 15.4, 9.7 , 0 );

setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.84, 0.84 );

setRotateKey( spep_2 + 128 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 27.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 270 + OFFSET_X, 1, 20.7 );

setBlendColor( spep_2 + 128 + OFFSET_X, 1, 2, 0, 0, 0, 0 );
setBlendColor( spep_2 + 190 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 270 + OFFSET_X, 1, 2, 0, 0, 0, 0 );

-- ** 音 ** --
--かめはめ波溜め
SE029 = playSeVer2( spep_2 + 14, 1210, "",spep_2 + 138, 20, 28, -1);
setSeVolumeByWorkId( spep_2 + 14, SE029, 49 );
setStartTimeMs( SE029,  1100 );
SE030 = playSeVer2( spep_2 + 12, 1336, "",spep_2 + 126, 36, 18, -1);
setStartTimeMs( SE030,  400 );
SE031 = playSeVer2( spep_2 + 6, 1209, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 6, 1391, "",spep_2 + 130, 0, 26, -1);

--かめはめ波発射
SE033 = playSeVer2( spep_2 + 88, 1146, "",spep_2 + 304, 0, 62, -1);
SE034 = playSeVer2( spep_2 + 88, 1177, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 88, 1213, "",spep_2 + 284, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 88, SE035, 56 );

--かめはめ波飛んでいく
SE036 = playSeVer2( spep_2 + 142, 1161, "",spep_2 + 284, 0, 48, -1);

--敵呑まれる
SE037 = playSeVer2( spep_2 + 166, 1258, "",spep_2 + 326, 32, 82, -1);

--画面遷移
SE038 = playSeVer2( spep_2 + 260, 8, "", 0, 0, 0, -1);

--環境音
SE039 = playSeVer2( spep_2 + 260, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE039, 25 );

--構えとく
SE040 = playSeVer2( spep_2 + 338, 1013, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 272); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 382f

end