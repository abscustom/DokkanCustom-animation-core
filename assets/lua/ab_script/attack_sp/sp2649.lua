--1028160:UR_ヒルデガーン_必殺技：幻魔槌
--sp_effect_b1_00270
--sp2649

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162558;  --ef_001
SP_01b = 162560;  --ef_002
SP_02  = 162562;  --ef_003
SP_02b = 162564;  --ef_004

--エフェクト(敵)
SP_01r  = 162559;  --ef_001r
SP_01br = 162561;  --ef_002r
SP_02r  = 162563;  --ef_003r
SP_02br = 162565;  --ef_004r

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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 470;
        spep_2 = spep_1 + 94;

        timing_skip = 0;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 敵キャラクター ** --
        --敵の動き
        setMoveKey( spep_2 + 0, 1, 0, -5000, 0 );  -- スキップ時に敵が映り込むため記載

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 470;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 90);  --黒 通常背景

-- ** 敵キャラクター ** --
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 102 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 102 );
changeAnime( spep_0 + 60 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 78 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 80 + OFFSET_X, 1, 107 );

setMoveKey( spep_0, 1, 118.9, 71.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 119.2, 71.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 119.2, 71.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 119.5, 71.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 119.5, 71.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 119.7, 71.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 119.7, 71.7 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 120, 71.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 120, 71.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 120.3, 71.7 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 120.3, 71.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 120.6, 71.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 120.6, 71.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 120.8, 71.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 120.8, 71.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 121.1, 71.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 121.1, 71.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 121.4, 71.7 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 121.4, 71.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 121.7, 71.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 121.7, 71.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 121.9, 71.7 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 121.9, 71.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 122.2, 71.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 122.2, 71.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 122.5, 71.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 122.5, 71.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 122.8, 71.7 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 122.8, 71.7 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 123, 71.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 123, 71.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 123.3, 71.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 123.3, 71.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 123.6, 71.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 123.6, 71.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 123.9, 71.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 123.9, 71.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 124.1, 71.7 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 124.1, 71.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 124.4, 71.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 124.4, 71.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 124.7, 71.7 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 124.7, 71.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 125, 71.7 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 125, 71.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 125.2, 71.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 125.2, 71.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 125.5, 71.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 125.5, 71.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 125.8, 71.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 125.8, 71.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 126.1, 71.7 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 126.1, 71.7 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 126.3, 71.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 126.3, 71.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 126.6, 71.7 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 126.6, 71.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 126.9, 71.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 126.9, 71.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 135.1, -121.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 135.1, -121.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 136, -124.3 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 136, -124.3 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 137, -127.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 137, -127.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 137.9, -130 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 137.9, -130 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 138.8, -132.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 138.8, -132.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 139.8, -135.8 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 139.8, -135.8 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 140.7, -138.7 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 140.7, -138.7 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 141.6, -141.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 141.6, -141.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 142.6, -144.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 143.5, -147.3 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 143.5, -147.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 163.3, -173.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 163.3, -173.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 204, -210 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 204, -210 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 205, -176.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 205, -176.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 222.2, -173.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 222.2, -173.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 240, -169.7 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 240, -169.7 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 221, -155 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 221, -155 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 225, -169.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 225, -169.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 205, -176.9 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 205, -176.9 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 579.2, -452.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 579.2, -452.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 929.6, -713.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 929.6, -713.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 1305.1, -990.4 , 0 );

setScaleKey( spep_0, 1, 1, 1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_0, 1, -20.8 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 59 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 61 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 63 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 65 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 67 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 69 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 71 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 73 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 76 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 79 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 324 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 470 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 350 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 382 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 400 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 430 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 446 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 324 + OFFSET_X, 1, -1, 43.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -1, 43.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -6.3, 35.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -6.3, 35.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -11.7, 27.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -11.7, 27.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -17, 19.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -17, 19.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -22.3, 11.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -22.3, 11.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -27.7, 3.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -27.7, 3.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -33, -4.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -33, -4.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -38.3, -12.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -38.3, -12.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -43.7, -20.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -43.7, -20.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -49, -28.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -49, -28.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -54.3, -36.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -54.3, -36.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -59.7, -44.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -59.7, -44.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -65, -52.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -65, -52.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -97, -452.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -97, -452.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -123.4, -823.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -123.4, -823.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -149.8, -1195.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -149.8, -1195.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -176.2, -1566.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -176.2, -1566.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -202.6, -1937.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -202.6, -1937.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -229, -2309 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -229, -2309 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -454, 770.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -454, 770.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -378.8, 606.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -378.8, 606.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -303.5, 442.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -303.5, 442.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -228.3, 278.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -228.3, 278.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -153.1, 114.7 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -153.1, 114.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -75.2, -53.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -75.2, -53.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 6.7, -242.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 6.7, -242.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 1.4, -233.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 1.4, -233.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -7.1, -206.2 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -7.1, -206.2 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -9.6, -199.3 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -9.6, -199.3 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -16.1, -206.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -16.1, -206.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -15.7, -200.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -15.7, -200.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -15.3, -195.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -15.3, -195.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -14.9, -190.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -14.9, -190.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -14.5, -185 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -14.5, -185 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -14.1, -179.7 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -14.1, -179.7 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -13.7, -174.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -13.7, -174.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -13.3, -169 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -13.3, -169 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -12.9, -163.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -12.9, -163.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -12.5, -158.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -12.5, -158.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -12.1, -153.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -12.1, -153.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -11.7, -147.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -11.7, -147.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 23, -243.4 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 23, -243.4 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 27.7, -257.2 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 27.7, -257.2 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -7.5, -226.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -7.5, -226.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -2.8, -240.6 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -2.8, -240.6 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 9.9, -270.3 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 9.9, -270.3 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 14.6, -284 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 14.6, -284 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -8.7, -251.7 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -8.7, -251.7 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -7.5, -253.2 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -7.5, -253.2 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -4.4, -268.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -4.4, -268.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -9.2, -262.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -9.2, -262.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -0.2, -265.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -0.2, -265.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -0.2, -262.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -0.2, -262.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -0.7, -251.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -0.7, -251.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 1.8, -254.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 1.8, -254.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 8.3, -263.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 8.3, -263.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 10.8, -266.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 10.8, -266.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 8.8, -258.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 8.8, -258.7 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.01, 1.01 );

setRotateKey( spep_0 + 324 + OFFSET_X, 1, 90 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 90 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 11.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
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
--殴る
SE004 = playSeVer2( spep_0 + 66, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 74, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 83 );
SE006 = playSeVer2( spep_0 + 74, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 89 );
--霧になる
SE002 = playSeVer2( spep_0 + 148, 1204, "", 0, 8, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 148, SE002, 188 );
setStartTimeMs( SE002,  1733 );
setPitch( spep_0 + 148, SE002, -1000 );
setTimeStretch( SE002, 0.33, 30, 4 );
SE003 = playSeVer2( spep_0 + 148, 1391, "",spep_0 + 300, 8, 56, 0.6);
setSeVolumeByWorkId( spep_0 + 148, SE003, 141 );
setStartTimeMs( SE003,  1633 );
SE007 = playSeVer2( spep_0 + 122, 1278, "",spep_0 + 254, 0, 66, 0.6);
setSeVolumeByWorkId( spep_0 + 122, SE007, 75 );
SE008 = playSeVer2( spep_0 + 146, 1116, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 146, SE008, 126 );
setPitch( spep_0 + 146, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
--実在化
SE009 = playSeVer2( spep_0 + 266, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE009, 50 );
SE010 = playSeVer2( spep_0 + 270, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE010,  67 );
--振りかぶる
SE012 = playSeVer2( spep_0 + 306, 9, "", 0, 0, 0, -1);
--パンチ
SE013 = playSeVer2( spep_0 + 338, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE013, 79 );
SE014 = playSeVer2( spep_0 + 340, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE014, 79 );
--敵落ちる
SE011 = playSeVer2( spep_0 + 364, 1121, "",spep_0 + 398, 4, 10, -1);
setStartTimeMs( SE011,  1100 );
SE015 = playSeVer2( spep_0 + 348, 1183, "",spep_0 + 398, 0, 8, -1);
--敵地面落ちる
SE016 = playSeVer2( spep_0 + 386, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 392, 1014, "",spep_0 + 466, 0, 8, -1);
SE018 = playSeVer2( spep_0 + 396, 1025, "",spep_0 + 466, 0, 8, -1);
--着地
SE019 = playSeVer2( spep_0 + 418, 1182, "",spep_0 + 480, 0, 8, -1);
SE020 = playSeVer2( spep_0 + 422, 20, "",spep_0 + 480, 0, 10, -1);
SE021 = playSeVer2( spep_0 + 426, 1011, "",spep_0 + 480, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --470

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


------------------------------------------------
-- 咆哮～ラスト
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 314;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 90);  --黒 通常背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 142 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 172 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, 8.7, -335.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 8.7, -335.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 10.7, -379.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 10.7, -379.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 10.7, -363.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 10.7, -363.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 10.7, -361.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 10.7, -361.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 10.7, -379.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 10.7, -379.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 10.7, -365.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 10.7, -365.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 10.7, -381.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 10.7, -381.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 14.7, -357.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 14.7, -357.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 6.7, -349.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 6.7, -349.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 64.4, -295.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 64.4, -295.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 345.4, -152.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 345.4, -152.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 626.4, 16.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 626.4, 16.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 905.5, 231.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 905.5, 231.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 1186.5, 400.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1186.5, 400.7 , 0 );


setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.15, 1.15 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 26.7 );

-- ** 音 ** --
--叫ぶ
SE024 = playSeVer2( spep_2 + 8, 1068, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 8, 1264, "",spep_2 + 128, 0, 62, -1);
setPitch( spep_2 + 8, SE025, -1000 );
setTimeStretch( SE025, 0.33, 30, 4 );
--画面遷移
SE026 = playSeVer2( spep_2 + 70, 8, "", 0, 0, 0, -1);
--振りかぶる
SE027 = playSeVer2( spep_2 + 100, 1151, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 102, 1004, "", 0, 0, 0, -1);
--尻尾叩きつける
SE029 = playSeVer2( spep_2 + 110, 1067, "",spep_2 + 226, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 110, SE029, 78 );
SE030 = playSeVer2( spep_2 + 110, 1156, "",spep_2 + 230, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 110, SE030, 87 );
SE031 = playSeVer2( spep_2 + 110, 1159, "",spep_2 + 310, 0, 100, -1);
setSeVolumeByWorkId( spep_2 + 110, SE031, 82 );
SE032 = playSeVer2( spep_2 + 110, 1044, "",spep_2 + 214, 50, 40, -1);
setSeVolumeByWorkId( spep_2 + 110, SE032, 211 );
--環境音
SE033 = playSeVer2( spep_2 + 134, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE033, 25 );
--地面裂ける
SE034 = playSeVer2( spep_2 + 148, 1427, "",spep_2 + 286, 0, 60, -1);
setPitch( spep_2 + 148, SE034, -600 );
setTimeStretch( SE034, 0.6, 30, 4 );
SE035 = playSeVer2( spep_2 + 176, 1188, "", 0, 0, 0, -1);
--弾ける
SE036 = playSeVer2( spep_2 + 212, 1033, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 212, 1011, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 200 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );  -- 314

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭～
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 470;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001r
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_002r
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 90);  --黒 通常背景

-- ** 敵キャラクター ** --
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 102 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 102 );
changeAnime( spep_0 + 60 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 78 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 80 + OFFSET_X, 1, 107 );

setMoveKey( spep_0, 1, 118.9, 71.7 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 119.2, 71.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 119.2, 71.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 119.5, 71.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 119.5, 71.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 119.7, 71.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 119.7, 71.7 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 120, 71.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 120, 71.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 120.3, 71.7 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 120.3, 71.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 120.6, 71.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 120.6, 71.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 120.8, 71.7 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 120.8, 71.7 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 121.1, 71.7 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 121.1, 71.7 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 121.4, 71.7 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 121.4, 71.7 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 121.7, 71.7 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 121.7, 71.7 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 121.9, 71.7 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 121.9, 71.7 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 122.2, 71.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 122.2, 71.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 122.5, 71.7 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 122.5, 71.7 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 122.8, 71.7 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 122.8, 71.7 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 123, 71.7 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 123, 71.7 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 123.3, 71.7 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 123.3, 71.7 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 123.6, 71.7 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 123.6, 71.7 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 123.9, 71.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 123.9, 71.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 124.1, 71.7 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 124.1, 71.7 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 124.4, 71.7 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 124.4, 71.7 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 124.7, 71.7 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 124.7, 71.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 125, 71.7 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 125, 71.7 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 125.2, 71.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 125.2, 71.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 125.5, 71.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 125.5, 71.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 125.8, 71.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 125.8, 71.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 126.1, 71.7 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 126.1, 71.7 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 126.3, 71.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 126.3, 71.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 126.6, 71.7 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 126.6, 71.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 126.9, 71.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 126.9, 71.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 135.1, -121.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 135.1, -121.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 136, -124.3 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 136, -124.3 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 137, -127.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 137, -127.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 137.9, -130 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 137.9, -130 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 138.8, -132.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 138.8, -132.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 139.8, -135.8 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 139.8, -135.8 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 140.7, -138.7 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 140.7, -138.7 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 141.6, -141.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 141.6, -141.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 142.6, -144.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 143.5, -147.3 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 143.5, -147.3 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 163.3, -173.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 163.3, -173.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 204, -210 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 204, -210 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 205, -176.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 205, -176.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 222.2, -173.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 222.2, -173.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 240, -169.7 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 240, -169.7 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 221, -155 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 221, -155 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 225, -169.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 225, -169.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 205, -176.9 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 205, -176.9 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 579.2, -452.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 579.2, -452.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 929.6, -713.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 929.6, -713.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 1305.1, -990.4 , 0 );

setScaleKey( spep_0, 1, 1, 1 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_0, 1, -20.8 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 59 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 61 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 63 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 64 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 65 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 67 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 69 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 71 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 73 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 76 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 79 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 324 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 470 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 324 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 350 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 382 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 400 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 430 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 446 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 324 + OFFSET_X, 1, -1, 43.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -1, 43.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -6.3, 35.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -6.3, 35.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -11.7, 27.6 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -11.7, 27.6 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -17, 19.6 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -17, 19.6 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -22.3, 11.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -22.3, 11.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -27.7, 3.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -27.7, 3.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -33, -4.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -33, -4.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -38.3, -12.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -38.3, -12.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -43.7, -20.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -43.7, -20.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -49, -28.4 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -49, -28.4 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -54.3, -36.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -54.3, -36.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -59.7, -44.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -59.7, -44.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -65, -52.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -65, -52.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -97, -452.5 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -97, -452.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -123.4, -823.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -123.4, -823.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -149.8, -1195.1 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -149.8, -1195.1 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -176.2, -1566.4 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -176.2, -1566.4 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -202.6, -1937.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -202.6, -1937.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -229, -2309 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -229, -2309 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -454, 770.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -454, 770.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -378.8, 606.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -378.8, 606.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -303.5, 442.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -303.5, 442.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -228.3, 278.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -228.3, 278.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -153.1, 114.7 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -153.1, 114.7 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -75.2, -53.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -75.2, -53.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 6.7, -242.5 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 6.7, -242.5 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 1.4, -233.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 1.4, -233.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -7.1, -206.2 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -7.1, -206.2 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -9.6, -199.3 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -9.6, -199.3 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -16.1, -206.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -16.1, -206.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -15.7, -200.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -15.7, -200.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -15.3, -195.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -15.3, -195.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -14.9, -190.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -14.9, -190.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -14.5, -185 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -14.5, -185 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -14.1, -179.7 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -14.1, -179.7 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -13.7, -174.4 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -13.7, -174.4 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -13.3, -169 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -13.3, -169 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -12.9, -163.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -12.9, -163.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -12.5, -158.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -12.5, -158.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -12.1, -153.1 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -12.1, -153.1 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -11.7, -147.8 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -11.7, -147.8 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 23, -243.4 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 23, -243.4 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 27.7, -257.2 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 27.7, -257.2 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -7.5, -226.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -7.5, -226.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -2.8, -240.6 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -2.8, -240.6 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 9.9, -270.3 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 9.9, -270.3 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 14.6, -284 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 14.6, -284 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -8.7, -251.7 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -8.7, -251.7 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -7.5, -253.2 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -7.5, -253.2 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -4.4, -268.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -4.4, -268.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -9.2, -262.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -9.2, -262.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -0.2, -265.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -0.2, -265.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -0.2, -262.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -0.2, -262.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -0.7, -251.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -0.7, -251.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 1.8, -254.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 1.8, -254.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 8.3, -263.7 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 8.3, -263.7 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 10.8, -266.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 10.8, -266.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 8.8, -258.7 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 8.8, -258.7 , 0 );

setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 1.01, 1.01 );

setRotateKey( spep_0 + 324 + OFFSET_X, 1, 90 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 90 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 64.4 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, 70 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 11.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
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
--殴る
SE004 = playSeVer2( spep_0 + 66, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 74, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 83 );
SE006 = playSeVer2( spep_0 + 74, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 89 );
--霧になる
SE002 = playSeVer2( spep_0 + 148, 1204, "", 0, 8, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 148, SE002, 188 );
setStartTimeMs( SE002,  1733 );
setPitch( spep_0 + 148, SE002, -1000 );
setTimeStretch( SE002, 0.33, 30, 4 );
SE003 = playSeVer2( spep_0 + 148, 1391, "",spep_0 + 300, 8, 56, 0.6);
setSeVolumeByWorkId( spep_0 + 148, SE003, 141 );
setStartTimeMs( SE003,  1633 );
SE007 = playSeVer2( spep_0 + 122, 1278, "",spep_0 + 254, 0, 66, 0.6);
setSeVolumeByWorkId( spep_0 + 122, SE007, 75 );
SE008 = playSeVer2( spep_0 + 146, 1116, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 146, SE008, 126 );
setPitch( spep_0 + 146, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
--実在化
SE009 = playSeVer2( spep_0 + 266, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE009, 50 );
SE010 = playSeVer2( spep_0 + 270, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE010,  67 );
--振りかぶる
SE012 = playSeVer2( spep_0 + 306, 9, "", 0, 0, 0, -1);
--パンチ
SE013 = playSeVer2( spep_0 + 338, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE013, 79 );
SE014 = playSeVer2( spep_0 + 340, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE014, 79 );
--敵落ちる
SE011 = playSeVer2( spep_0 + 364, 1121, "",spep_0 + 398, 4, 10, -1);
setStartTimeMs( SE011,  1100 );
SE015 = playSeVer2( spep_0 + 348, 1183, "",spep_0 + 398, 0, 8, -1);
--敵地面落ちる
SE016 = playSeVer2( spep_0 + 386, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 392, 1014, "",spep_0 + 466, 0, 8, -1);
SE018 = playSeVer2( spep_0 + 396, 1025, "",spep_0 + 466, 0, 8, -1);
--着地
SE019 = playSeVer2( spep_0 + 418, 1182, "",spep_0 + 480, 0, 8, -1);
SE020 = playSeVer2( spep_0 + 422, 20, "",spep_0 + 480, 0, 10, -1);
SE021 = playSeVer2( spep_0 + 426, 1011, "",spep_0 + 480, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --470

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


------------------------------------------------
-- 咆哮～ラスト
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 314;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_003r
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_004r
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 90);  --黒 通常背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 142 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 172 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, 8.7, -335.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 8.7, -335.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 10.7, -379.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 10.7, -379.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 10.7, -363.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 10.7, -363.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 10.7, -361.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 10.7, -361.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 10.7, -379.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 10.7, -379.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 10.7, -365.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 10.7, -365.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 10.7, -381.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 10.7, -381.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 14.7, -357.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 14.7, -357.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 6.7, -349.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 6.7, -349.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 64.4, -295.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 64.4, -295.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 345.4, -152.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 345.4, -152.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 626.4, 16.4 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 626.4, 16.4 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 905.5, 231.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 905.5, 231.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 1186.5, 400.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1186.5, 400.7 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.15, 1.15 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 26.7 );

-- ** 音 ** --
--叫ぶ
SE024 = playSeVer2( spep_2 + 8, 1068, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 8, 1264, "",spep_2 + 128, 0, 62, -1);
setPitch( spep_2 + 8, SE025, -1000 );
setTimeStretch( SE025, 0.33, 30, 4 );
--画面遷移
SE026 = playSeVer2( spep_2 + 70, 8, "", 0, 0, 0, -1);
--振りかぶる
SE027 = playSeVer2( spep_2 + 100, 1151, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 102, 1004, "", 0, 0, 0, -1);
--尻尾叩きつける
SE029 = playSeVer2( spep_2 + 110, 1067, "",spep_2 + 226, 0, 48, -1);
setSeVolumeByWorkId( spep_2 + 110, SE029, 78 );
SE030 = playSeVer2( spep_2 + 110, 1156, "",spep_2 + 230, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 110, SE030, 87 );
SE031 = playSeVer2( spep_2 + 110, 1159, "",spep_2 + 310, 0, 100, -1);
setSeVolumeByWorkId( spep_2 + 110, SE031, 82 );
SE032 = playSeVer2( spep_2 + 110, 1044, "",spep_2 + 214, 50, 40, -1);
setSeVolumeByWorkId( spep_2 + 110, SE032, 211 );
--環境音
SE033 = playSeVer2( spep_2 + 134, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE033, 25 );
--地面裂ける
SE034 = playSeVer2( spep_2 + 148, 1427, "",spep_2 + 286, 0, 60, -1);
setPitch( spep_2 + 148, SE034, -600 );
setTimeStretch( SE034, 0.6, 30, 4 );
SE035 = playSeVer2( spep_2 + 176, 1188, "", 0, 0, 0, -1);
--弾ける
SE036 = playSeVer2( spep_2 + 212, 1033, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 212, 1011, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 200 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );  -- 314

end
