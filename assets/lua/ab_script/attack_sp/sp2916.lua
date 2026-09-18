--1032030:UR_ベジータ(幼年期)_必殺技：爆発波
--sp_effect_a7_00074
--sp2916

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164039; --開始〜ベジータが顔を上げるところまで ef_001
SP_01b = 164040; --開始〜ベジータが顔を上げるところまで ef_001b
SP_02  = 164043; --衝撃を放ち〜フィニッシュ ef_002
SP_02b = 164044; --衝撃を放ち〜フィニッシュ ef_002b

--エフェクト(敵)
SP_01r  = 164041; --開始〜ベジータが顔を上げるところまで ef_001r
SP_01br = 164042; --開始〜ベジータが顔を上げるところまで ef_001br


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
-- 開始〜ベジータが顔を上げるところまで
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜ベジータが顔を上げるところまで(SP_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開始〜ベジータが顔を上げるところまで(SP_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 88;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -100, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -100, 515.5 , 0 );
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
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 16 );

setMoveKey( spep_0 + 0, 1, 207.8, -60.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 212.8, -63.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 212.8, -63.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 215.8, -65.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 215.8, -65.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 217, -66 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 217, -66 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 217.4, -66.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 217.4, -66.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 217.7, -67.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 217.7, -67.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 218.1, -68.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 218.1, -68.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 218.5, -69.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 218.5, -69.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 218.8, -69.8 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 218.8, -69.8 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 218.7, -69.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 218.7, -69.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 217.8, -68.7 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 217.8, -68.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 214.6, -65.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 214.6, -65.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 205.9, -55.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 205.9, -55.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 186.9, -34.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 186.9, -34.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 186.1, -33.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 186.1, -33.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 186.7, -34 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 186.7, -34 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 185.9, -33.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 185.9, -33.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 186.5, -34 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 186.5, -34 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 185.6, -33.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 185.6, -33.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 186.3, -33.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 186.3, -33.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 185.4, -33.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 185.4, -33.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 186.1, -33.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 186.1, -33.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 185.2, -33.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 185.2, -33.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 185.9, -33.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 185.9, -33.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 185, -33.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 185, -33.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 185.7, -33.7 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 185.7, -33.7 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 184.8, -33.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 184.8, -33.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 185.5, -33.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 185.5, -33.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 184.6, -33.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 184.6, -33.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 185.3, -33.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 185.3, -33.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 184.4, -33.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 184.4, -33.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 185.1, -33.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 185.1, -33.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 184.2, -33 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 184.2, -33 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 184.9, -33.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 184.9, -33.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 184, -32.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 184, -32.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 184.7, -33.3 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 184.7, -33.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 183.8, -32.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 183.8, -32.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 184.5, -33.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 184.5, -33.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 183.6, -32.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 183.6, -32.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 184.2, -33.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 184.2, -33.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 183.4, -32.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 183.4, -32.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 184, -33.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 184, -33.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 183.9, -33.1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 183.9, -33.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.13, 1.13 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 204, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--敵向かってくる
SE002 = playSeVer2( spep_0 + 10, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 81 );
SE003 = playSeVer2( spep_0 + 16, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 16, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 45 );
setTimeStretch( SE004, 1.65, 30, 4 );
--顔カットイン
--SE005 = playSeVer2( spep_0 + 98, 1018, "", 0, 0, 0, -1);
--構える
SE006 = playSeVer2( spep_0 + 116, 1013, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 174

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 衝撃を放ち〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 196;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 衝撃を放ち〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 衝撃を放ち〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 46 + OFFSET_X, 1, 0 );

changeAnimeAndStop( spep_2 + 0, 1, 111 ,8);
changeAnime( spep_2 + 38 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 318.9, 6 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 317.7, 5.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 317.7, 5.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 316.6, 5.8 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 316.6, 5.8 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 315.4, 5.8 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 315.4, 5.8 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 314.2, 5.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 314.2, 5.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 313, 5.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 313, 5.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 311.9, 5.6 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 311.9, 5.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 310.7, 5.5 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 310.7, 5.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 309.5, 5.5 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 309.5, 5.5 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 308.3, 5.4 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 308.3, 5.4 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 307.2, 5.3 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 307.2, 5.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 306, 5.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 306, 5.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 304.8, 5.2 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 304.8, 5.2 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 303.6, 5.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 303.6, 5.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 302.5, 5.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 302.5, 5.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 301.3, 5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 301.3, 5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 300.1, 5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 300.1, 5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 299, 4.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 299, 4.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 279.9, 98.7 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 279.9, 98.7 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 298.6, 123.7 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 298.6, 123.7 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 429.9, 298.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 429.9, 298.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 786.2, 774.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 786.2, 774.8 , 0 );


setScaleKey( spep_2 + 0, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 3.74, 3.74 );

setRotateKey( spep_2 + 0, 1, -8.8 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -46.1 );

-- ** 音 ** --

--腕クロスにする
SE008 = playSeVer2( spep_2 + 10, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE008, 141 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 26; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--爆発波
SE009 = playSeVer2( spep_2 + 26, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE009, 133 );
SE010 = playSeVer2( spep_2 + 22, 1007, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 28, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE011, 151 );
SE012 = playSeVer2( spep_2 + 28, 1022, "",spep_2 + 124, 0, 28, -1);
SE013 = playSeVer2( spep_2 + 32, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE013, 63 );
SE014 = playSeVer2( spep_2 + 36, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE014, 63 );

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

spep_N = spep_2 + 88;

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
 
---- 背景差し替えがある場合のみ
--finish_1b = entryEffectLife( spep_N + 0, SP_xx , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_xxx)
--setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
--setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
--setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
--setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
--setEffRotateKey( spep_N + 0, finish_1b, 0 );
--setEffRotateKey( spep_N + 112, finish_1b, 0 );
--setEffAlphaKey( spep_N + 0, finish_1b, 255 );
--setEffAlphaKey( spep_N + 112, finish_1b, 255 );

---- ** 爆発 ** --
--bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
--setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
--setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
--
--setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
--setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
--setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
--setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
--setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
--setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
--setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
--
--setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
--setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
--
--setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
--setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
--shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
--setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
--
--setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
--setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
--
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
----setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
----setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 
--
--setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
--setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
--
--setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
--setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
--setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
--setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
--setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
--setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
--setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
--setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
--setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
--setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
--setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

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
setDisp( spep_N + 0 + OFFSET_X, 1, 1 );
setDisp( spep_N + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_N + 0 + OFFSET_X, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0 + OFFSET_X, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2 + OFFSET_X, 1, -8.2, -19.3 , 0 );
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
setMoveKey( spep_N + 112 + OFFSET_X, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2 + OFFSET_X, 1, 0.2, 0.2 );
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
setScaleKey( spep_N + 112 + OFFSET_X, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0 + OFFSET_X, 1, -354.8 );
setRotateKey( spep_N + 2 + OFFSET_X, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112 + OFFSET_X, 1, 729.5 );
--ここまで

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 2, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 6, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 6, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 196

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始〜ベジータが顔を上げるところまで
-------------------------------------------------
MAX_FRAME_0 = 172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開始〜ベジータが顔を上げるところまで(SP_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開始〜ベジータが顔を上げるところまで(SP_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 88;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -100, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -100, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 16 );

setMoveKey( spep_0 + 0, 1, 207.8, -60.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 212.8, -63.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 212.8, -63.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 215.8, -65.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 215.8, -65.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 217, -66 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 217, -66 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 217.4, -66.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 217.4, -66.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 217.7, -67.5 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 217.7, -67.5 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 218.1, -68.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 218.1, -68.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 218.5, -69.1 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 218.5, -69.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 218.8, -69.8 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 218.8, -69.8 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 218.7, -69.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 218.7, -69.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 217.8, -68.7 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 217.8, -68.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 214.6, -65.1 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 214.6, -65.1 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 205.9, -55.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 205.9, -55.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 186.9, -34.1 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 186.9, -34.1 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 186.1, -33.6 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 186.1, -33.6 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 186.7, -34 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 186.7, -34 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 185.9, -33.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 185.9, -33.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 186.5, -34 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 186.5, -34 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 185.6, -33.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 185.6, -33.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 186.3, -33.9 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 186.3, -33.9 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 185.4, -33.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 185.4, -33.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 186.1, -33.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 186.1, -33.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 185.2, -33.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 185.2, -33.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 185.9, -33.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 185.9, -33.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 185, -33.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 185, -33.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 185.7, -33.7 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 185.7, -33.7 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 184.8, -33.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 184.8, -33.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 185.5, -33.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 185.5, -33.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 184.6, -33.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 184.6, -33.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 185.3, -33.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 185.3, -33.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 184.4, -33.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 184.4, -33.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 185.1, -33.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 185.1, -33.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 184.2, -33 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 184.2, -33 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 184.9, -33.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 184.9, -33.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 184, -32.9 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 184, -32.9 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 184.7, -33.3 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 184.7, -33.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 183.8, -32.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 183.8, -32.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 184.5, -33.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 184.5, -33.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 183.6, -32.8 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 183.6, -32.8 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 184.2, -33.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 184.2, -33.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 183.4, -32.7 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 183.4, -32.7 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 184, -33.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 184, -33.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 183.9, -33.1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 183.9, -33.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.13, 1.13 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );


-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 204, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--敵向かってくる
SE002 = playSeVer2( spep_0 + 10, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 81 );
SE003 = playSeVer2( spep_0 + 16, 1117, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 16, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 45 );
setTimeStretch( SE004, 1.65, 30, 4 );
--顔カットイン
--SE005 = playSeVer2( spep_0 + 98, 1018, "", 0, 0, 0, -1);
--構える
SE006 = playSeVer2( spep_0 + 116, 1013, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 174

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 衝撃を放ち〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 196;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 衝撃を放ち〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 衝撃を放ち〜フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 46 + OFFSET_X, 1, 0 );

changeAnimeAndStop( spep_2 + 0, 1, 111 ,8);
changeAnime( spep_2 + 38 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0, 1, 318.9, 6 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 317.7, 5.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 317.7, 5.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 316.6, 5.8 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 316.6, 5.8 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 315.4, 5.8 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 315.4, 5.8 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 314.2, 5.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 314.2, 5.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 313, 5.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 313, 5.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 311.9, 5.6 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 311.9, 5.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 310.7, 5.5 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 310.7, 5.5 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 309.5, 5.5 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 309.5, 5.5 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 308.3, 5.4 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 308.3, 5.4 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 307.2, 5.3 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 307.2, 5.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 306, 5.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 306, 5.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 304.8, 5.2 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 304.8, 5.2 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 303.6, 5.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 303.6, 5.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 302.5, 5.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 302.5, 5.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 301.3, 5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 301.3, 5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 300.1, 5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 300.1, 5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 299, 4.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 299, 4.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 279.9, 98.7 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 279.9, 98.7 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 298.6, 123.7 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 298.6, 123.7 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 429.9, 298.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 429.9, 298.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 786.2, 774.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 786.2, 774.8 , 0 );


setScaleKey( spep_2 + 0, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 3.74, 3.74 );

setRotateKey( spep_2 + 0, 1, -8.8 );
setRotateKey( spep_2 + 11 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 12 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -49.9 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -48.8 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -46.1 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -46.1 );

-- ** 音 ** --

--腕クロスにする
SE008 = playSeVer2( spep_2 + 10, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE008, 141 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 26; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--爆発波
SE009 = playSeVer2( spep_2 + 26, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE009, 133 );
SE010 = playSeVer2( spep_2 + 22, 1007, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 28, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 28, SE011, 151 );
SE012 = playSeVer2( spep_2 + 28, 1022, "",spep_2 + 124, 0, 28, -1);
SE013 = playSeVer2( spep_2 + 32, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE013, 63 );
SE014 = playSeVer2( spep_2 + 36, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE014, 63 );

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

spep_N = spep_2 + 88;

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

---- 背景差し替えがある場合のみ
--finish_1b = entryEffectLife( spep_N + 0, SP_xx , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_xxx)
--setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
--setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
--setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
--setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
--setEffRotateKey( spep_N + 0, finish_1b, 0 );
--setEffRotateKey( spep_N + 112, finish_1b, 0 );
--setEffAlphaKey( spep_N + 0, finish_1b, 255 );
--setEffAlphaKey( spep_N + 112, finish_1b, 255 );

---- ** 爆発 ** --
--bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
--setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
--setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
--
--setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
--setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
--setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
--setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
--setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
--setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
--setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
--
--setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
--setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
--
--setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
--setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );

-- ** 集中線 ** --
--shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
--setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
--
--setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
--setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
--
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
----setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
----setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9） 
--
--setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
--setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
--
--setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
--setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
--setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
--setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
--setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
--setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
--setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
--setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
--setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
--setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
--setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

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
setDisp( spep_N + 0 + OFFSET_X, 1, 1 );
setDisp( spep_N + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_N + 0 + OFFSET_X, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_N + 0 + OFFSET_X, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2 + OFFSET_X, 1, -8.2, -19.3 , 0 );
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
setMoveKey( spep_N + 112 + OFFSET_X, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2 + OFFSET_X, 1, 0.2, 0.2 );
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
setScaleKey( spep_N + 112 + OFFSET_X, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0 + OFFSET_X, 1, -354.8 );
setRotateKey( spep_N + 2 + OFFSET_X, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112 + OFFSET_X, 1, 729.5 );
--ここまで

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 2, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 6, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 6, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 196


end