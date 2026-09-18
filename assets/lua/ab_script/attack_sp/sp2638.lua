--1027470:LR_セル(完全体)(GT)&フリーザ(最終形態)(GT)_必殺技：ヘルズサプライズ
--sp_effect_a1_00415
--sp2638

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162499;  --ef_001
SP_01b = 162501;  --ef_002 敵味方共通
SP_02  = 162502;  --ef_003
SP_02b = 162504;  --ef_004 敵味方共通

--エフェクト(敵)
SP_01r  = 162500;  --ef_001r
SP_01br = 162501;  --ef_002 敵味方共通
SP_02r  = 162503;  --ef_003r
SP_02br = 162504;  --ef_004 敵味方共通


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭～
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 614;

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

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_002 敵味方共通
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 492;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
--敵の動き１
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 100 );
changeAnime( spep_0 + 78 + OFFSET_X, 1, 102 );

setMoveKey( spep_0, 1, 122.8, -16.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 123.3, -16.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 123.3, -16.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 123.8, -16.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 123.8, -16.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 124.3, -16.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 124.3, -16.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 124.9, -16.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 124.9, -16.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 125.4, -16.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 125.4, -16.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 125.9, -16.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 125.9, -16.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 126.4, -16.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 126.4, -16.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 126.9, -16.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 126.9, -16.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 127.4, -16.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 127.4, -16.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 127.9, -16.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 127.9, -16.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 128.4, -16.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 128.4, -16.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 129, -16.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 129, -16.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 129.5, -16.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 129.5, -16.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 130, -16.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 130, -16.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 130.5, -16.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 130.5, -16.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 131, -16.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 131, -16.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 131.5, -16.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 131.5, -16.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 132, -16.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 132, -16.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 132.5, -16.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 132.5, -16.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 133.1, -16.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 133.1, -16.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 133.6, -16.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 133.6, -16.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 134.1, -16.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 134.1, -16.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 134.6, -16.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 134.6, -16.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 135.1, -16.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 135.1, -16.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 135.6, -16.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 135.6, -16.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 136.1, -16.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 136.1, -16.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 136.6, -16.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 136.6, -16.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 137.2, -16.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 137.2, -16.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 137.7, -16.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 137.7, -16.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 138.2, -16.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 138.2, -16.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 138.7, -16.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 138.7, -16.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 139.2, -16.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 139.2, -16.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 139.7, -16.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 139.7, -16.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 140.2, -16.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 140.2, -16.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 140.8, -16.4 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 140.8, -16.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 141.3, -16.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 141.3, -16.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 141.8, -16.4 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 141.8, -16.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 142.3, -16.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 142.3, -16.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 189.2, -91.9 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 189.2, -91.9 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 188.5, -91.9 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 188.5, -91.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 187.8, -91.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 187.8, -91.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 187.1, -91.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 187.1, -91.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 186.4, -91.9 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 186.4, -91.9 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 185.6, -91.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 185.6, -91.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 184.9, -91.9 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 184.9, -91.9 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 184.2, -91.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 184.2, -91.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 183.5, -91.9 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 183.5, -91.9 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 182.8, -91.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 182.8, -91.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 182.1, -91.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 182.1, -91.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 181.3, -91.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 181.3, -91.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 180.6, -91.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 180.6, -91.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 179.9, -92 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 179.9, -92 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 179.2, -92 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 179.2, -92 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 178.5, -92 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 178.5, -92 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 177.8, -92 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 177.8, -92 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 177, -92 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 177, -92 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 176.3, -92 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 176.3, -92 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 175.6, -92 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 175.6, -92 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 174.9, -92 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 174.9, -92 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 174.2, -92 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 174.2, -92 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 173.5, -92 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 173.5, -92 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 172.7, -92 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 172.7, -92 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 172, -92 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 172, -92 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 171.3, -92 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 171.3, -92 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 170.6, -92 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 170.6, -92 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 169.9, -92 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 169.9, -92 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 169.2, -92 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 169.2, -92 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 168.4, -92 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 168.4, -92 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 167.7, -92 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 167.7, -92 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 167, -92 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 167, -92 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 166.3, -92 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 166.3, -92 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 165.6, -92 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 165.6, -92 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 164.8, -92 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 164.8, -92 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 164.1, -92 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 164.1, -92 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 163.4, -92 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 163.4, -92 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 162.7, -92 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 162.7, -92 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 162, -92 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 162, -92 , 0 );

setScaleKey( spep_0, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 3.5, 3.5 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -5 );

--敵の動き2
setDisp( spep_0 + 322 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 462 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 322 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 322 + OFFSET_X, 1, 175.8, -199.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 175.8, -199.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 175.8, -199.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 175.8, -199.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 175.8, -200 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 175.8, -200 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 175.8, -200.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 175.8, -200.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 175.8, -200.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 175.8, -200.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 175.8, -201.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 175.8, -201.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 175.8, -201.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 175.8, -201.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 175.8, -201.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 175.8, -201.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 175.8, -202.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 175.8, -202.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 175.8, -202.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 175.8, -202.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 175.8, -202.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 175.8, -202.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 175.8, -203.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 175.8, -203.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 175.8, -203.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 175.8, -203.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 175.8, -203.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 175.8, -203.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 175.8, -204.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 175.8, -204.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 175.8, -204.5 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 175.8, -204.5 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 175.8, -204.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 175.8, -204.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 175.8, -205.2 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 175.8, -205.2 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 175.8, -205.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 175.8, -205.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 175.8, -205.9 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 175.8, -205.9 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 175.8, -206.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 175.8, -206.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 175.8, -206.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 175.8, -206.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 175.8, -207 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 175.8, -207 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 175.8, -207.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 175.8, -207.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 175.8, -207.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 175.8, -207.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 175.8, -208 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 175.8, -208 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 175.8, -208.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 175.8, -208.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 175.8, -208.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 175.8, -208.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 175.8, -209.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 175.8, -209.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 175.8, -209.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 175.8, -209.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 175.8, -209.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 175.8, -209.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 175.8, -210.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 175.8, -210.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 175.8, -210.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 175.8, -210.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 175.8, -210.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 175.8, -210.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 175.8, -211.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 175.8, -211.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 175.8, -211.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 175.8, -211.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 175.8, -211.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 175.8, -211.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 175.8, -212.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 175.8, -212.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 175.8, -212.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 175.8, -212.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 175.8, -212.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 175.8, -212.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 175.8, -213.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 175.8, -213.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 175.8, -213.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 175.8, -213.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 175.8, -213.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 175.8, -213.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 175.8, -214.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 175.8, -214.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 175.8, -214.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 175.8, -214.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 175.8, -215 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 175.8, -215 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 175.8, -215.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 175.8, -215.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 175.8, -215.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 175.8, -215.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 175.8, -216 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 175.8, -216 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 175.8, -216.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 175.8, -216.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 175.8, -216.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 175.8, -216.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 175.8, -217.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 175.8, -217.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 175.8, -217.4 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 175.8, -217.4 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 175.8, -217.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 175.8, -217.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 175.8, -218.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 175.8, -218.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 175.8, -218.5 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 175.8, -218.5 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 175.8, -218.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 175.8, -218.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 175.8, -219.2 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 175.8, -219.2 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 175.8, -219.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 175.8, -219.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 175.8, -219.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 175.8, -219.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 175.8, -220.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 175.8, -220.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 175.8, -220.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 175.8, -220.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 175.8, -220.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 175.8, -220.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 175.8, -221.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 175.8, -221.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 175.8, -221.6 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 175.8, -221.6 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 175.8, -222 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 175.8, -222 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 175.8, -222.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 175.8, -222.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 175.8, -222.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 175.8, -222.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 175.8, -223 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 175.8, -223 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 175.8, -223.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 175.8, -223.4 , 0 );

setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_0 + 322 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -44.7 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 230, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 30 );
--画面遷移
SE003 = playSeVer2( spep_0 + 40, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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

--フリーザ構える
SE004 = playSeVer2( spep_0 + 162, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 170, 1135, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 170, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE006, 61 );
--フリーザ飛び上がる
SE007 = playSeVer2( spep_0 + 188, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 188, 1109, "", 0, 0, 0, -1);
--ズームする
SE009 = playSeVer2( spep_0 + 208, 44, "", 0, 0, 0, -1);
--集中線
SE010 = playSeVer2( spep_0 + 224, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE010, 66 );
SE011 = playSeVer2( spep_0 + 224, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE011, 75 );
--セル太陽拳
SE012 = playSeVer2( spep_0 + 266, 1127, "",spep_0 + 418, 0, 64, 0.6);
SE013 = playSeVer2( spep_0 + 266, 1264, "",spep_0 + 506, 0, 162, 0.6);
--画面遷移
SE014 = playSeVer2( spep_0 + 374, 8, "", 0, 0, 0, -1);
--腕あげる
SE015 = playSeVer2( spep_0 + 482, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 486, 1003, "", 0, 0, 0, -1);
--気弾溜め
SE018 = playSeVer2( spep_0 + 510, 1296, "",spep_0 + 624, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 510, 1282, "",spep_0 + 624, 0, 14, -1);
SE020 = playSeVer2( spep_0 + 510, 1341, "",spep_0 + 624, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --614

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


------------------------------------------------
-- 発射～ラスト
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 234;

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

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_004 敵味方共通
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

-- ** 敵キャラクター ** --
setDisp( spep_2, 1, 1 );
setDisp( spep_2 + 56 + OFFSET_X, 1, 0 );

changeAnime( spep_2, 1, 106 );

setMoveKey( spep_2, 1, 128.6, -243.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 128.9, -243.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 128.9, -243.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 129.2, -243.8 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 129.2, -243.8 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 129.5, -244 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 129.5, -244 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 129.8, -244.2 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 129.8, -244.2 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 130.1, -244.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 130.1, -244.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 130.4, -244.6 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 130.4, -244.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 130.7, -244.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 130.7, -244.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 131, -244.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 131, -244.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 131.3, -245.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 131.3, -245.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 131.6, -245.3 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 131.6, -245.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 131.9, -245.5 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 131.9, -245.5 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 132.2, -245.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 132.2, -245.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 132.5, -245.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 132.5, -245.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 132.8, -246 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 132.8, -246 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 133.1, -246.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 133.1, -246.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 133.4, -246.4 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 133.4, -246.4 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 133.7, -246.6 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 133.7, -246.6 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 134, -246.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 134, -246.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 134.3, -247 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 134.3, -247 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 134.6, -247.2 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 134.6, -247.2 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 134.9, -247.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 134.9, -247.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 135.2, -247.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 135.2, -247.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 135.5, -247.7 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 135.5, -247.7 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 135.8, -247.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 135.8, -247.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 136.1, -248.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 136.1, -248.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 136.4, -248.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 136.4, -248.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 136.7, -248.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 136.7, -248.5 , 0 );

setScaleKey( spep_2, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.41, 2.41 );

setRotateKey( spep_2, 1, -42 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -42 );

-- ** 音 ** --
--気弾発射
SE022 = playSeVer2( spep_2 + 0, 1177, "",spep_2 + 94, 0, 28, -1);
SE023 = playSeVer2( spep_2 + 0, 1213, "",spep_2 + 94, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 0, SE023, 60 );
SE024 = playSeVer2( spep_2 + 0, 1193, "",spep_2 + 94, 0, 26, -1);
--爆発
SE025 = playSeVer2( spep_2 + 60, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 74, 1067, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 84, 1188, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 88, 1044, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 120 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );  -- 234

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 冒頭～
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 614;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001   
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_002 敵味方共通
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 492;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
--敵の動き１
setDisp( spep_0, 1, 1 );
setDisp( spep_0 + 156 + OFFSET_X, 1, 0 );

changeAnime( spep_0, 1, 100 );
changeAnime( spep_0 + 78 + OFFSET_X, 1, 102 );

setMoveKey( spep_0, 1, 122.8, -16.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 123.3, -16.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 123.3, -16.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 123.8, -16.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 123.8, -16.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 124.3, -16.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 124.3, -16.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 124.9, -16.4 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 124.9, -16.4 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 125.4, -16.4 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 125.4, -16.4 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 125.9, -16.4 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 125.9, -16.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 126.4, -16.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 126.4, -16.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 126.9, -16.4 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 126.9, -16.4 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 127.4, -16.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 127.4, -16.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 127.9, -16.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 127.9, -16.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 128.4, -16.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 128.4, -16.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 129, -16.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 129, -16.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 129.5, -16.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 129.5, -16.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 130, -16.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 130, -16.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 130.5, -16.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 130.5, -16.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 131, -16.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 131, -16.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 131.5, -16.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 131.5, -16.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 132, -16.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 132, -16.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 132.5, -16.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 132.5, -16.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 133.1, -16.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 133.1, -16.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 133.6, -16.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 133.6, -16.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 134.1, -16.4 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 134.1, -16.4 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 134.6, -16.4 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 134.6, -16.4 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 135.1, -16.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 135.1, -16.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 135.6, -16.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 135.6, -16.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 136.1, -16.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 136.1, -16.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 136.6, -16.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 136.6, -16.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 137.2, -16.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 137.2, -16.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 137.7, -16.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 137.7, -16.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 138.2, -16.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 138.2, -16.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 138.7, -16.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 138.7, -16.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 139.2, -16.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 139.2, -16.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 139.7, -16.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 139.7, -16.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 140.2, -16.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 140.2, -16.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 140.8, -16.4 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 140.8, -16.4 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 141.3, -16.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 141.3, -16.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 141.8, -16.4 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 141.8, -16.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 142.3, -16.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 142.3, -16.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 189.2, -91.9 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 189.2, -91.9 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 188.5, -91.9 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 188.5, -91.9 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 187.8, -91.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 187.8, -91.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 187.1, -91.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 187.1, -91.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 186.4, -91.9 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 186.4, -91.9 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 185.6, -91.9 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 185.6, -91.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 184.9, -91.9 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 184.9, -91.9 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 184.2, -91.9 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 184.2, -91.9 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 183.5, -91.9 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 183.5, -91.9 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 182.8, -91.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 182.8, -91.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 182.1, -91.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 182.1, -91.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 181.3, -91.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 181.3, -91.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 180.6, -91.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 180.6, -91.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 179.9, -92 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 179.9, -92 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 179.2, -92 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 179.2, -92 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 178.5, -92 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 178.5, -92 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 177.8, -92 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 177.8, -92 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 177, -92 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 177, -92 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 176.3, -92 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 176.3, -92 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 175.6, -92 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 175.6, -92 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 174.9, -92 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 174.9, -92 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 174.2, -92 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 174.2, -92 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 173.5, -92 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 173.5, -92 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 172.7, -92 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 172.7, -92 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 172, -92 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 172, -92 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 171.3, -92 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 171.3, -92 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 170.6, -92 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 170.6, -92 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 169.9, -92 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 169.9, -92 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 169.2, -92 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 169.2, -92 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 168.4, -92 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 168.4, -92 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 167.7, -92 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 167.7, -92 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 167, -92 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 167, -92 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 166.3, -92 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 166.3, -92 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 165.6, -92 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 165.6, -92 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 164.8, -92 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 164.8, -92 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 164.1, -92 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 164.1, -92 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 163.4, -92 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 163.4, -92 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 162.7, -92 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 162.7, -92 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 162, -92 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 162, -92 , 0 );

setScaleKey( spep_0, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 3.5, 3.5 );

setRotateKey( spep_0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -5 );

--敵の動き2
setDisp( spep_0 + 322 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 462 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 322 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 322 + OFFSET_X, 1, 175.8, -199.3 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 175.8, -199.3 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 175.8, -199.7 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 175.8, -199.7 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 175.8, -200 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 175.8, -200 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 175.8, -200.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 175.8, -200.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 175.8, -200.7 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 175.8, -200.7 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 175.8, -201.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 175.8, -201.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 175.8, -201.4 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 175.8, -201.4 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 175.8, -201.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 175.8, -201.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 175.8, -202.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 175.8, -202.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 175.8, -202.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 175.8, -202.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 175.8, -202.8 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 175.8, -202.8 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 175.8, -203.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 175.8, -203.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 175.8, -203.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 175.8, -203.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 175.8, -203.8 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 175.8, -203.8 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 175.8, -204.2 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 175.8, -204.2 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 175.8, -204.5 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 175.8, -204.5 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 175.8, -204.9 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 175.8, -204.9 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 175.8, -205.2 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 175.8, -205.2 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 175.8, -205.6 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 175.8, -205.6 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 175.8, -205.9 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 175.8, -205.9 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 175.8, -206.3 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 175.8, -206.3 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 175.8, -206.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 175.8, -206.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 175.8, -207 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 175.8, -207 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 175.8, -207.3 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 175.8, -207.3 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 175.8, -207.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 175.8, -207.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 175.8, -208 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 175.8, -208 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 175.8, -208.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 175.8, -208.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 175.8, -208.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 175.8, -208.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 175.8, -209.1 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 175.8, -209.1 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 175.8, -209.4 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 175.8, -209.4 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 175.8, -209.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 175.8, -209.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 175.8, -210.1 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 175.8, -210.1 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 175.8, -210.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 175.8, -210.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 175.8, -210.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 175.8, -210.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 175.8, -211.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 175.8, -211.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 175.8, -211.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 175.8, -211.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 175.8, -211.9 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 175.8, -211.9 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 175.8, -212.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 175.8, -212.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 175.8, -212.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 175.8, -212.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 175.8, -212.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 175.8, -212.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 175.8, -213.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 175.8, -213.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 175.8, -213.6 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 175.8, -213.6 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 175.8, -213.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 175.8, -213.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 175.8, -214.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 175.8, -214.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 175.8, -214.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 175.8, -214.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 175.8, -215 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 175.8, -215 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 175.8, -215.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 175.8, -215.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 175.8, -215.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 175.8, -215.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 175.8, -216 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 175.8, -216 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 175.8, -216.4 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 175.8, -216.4 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 175.8, -216.7 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 175.8, -216.7 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 175.8, -217.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 175.8, -217.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 175.8, -217.4 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 175.8, -217.4 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 175.8, -217.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 175.8, -217.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 175.8, -218.1 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 175.8, -218.1 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 175.8, -218.5 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 175.8, -218.5 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 175.8, -218.8 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 175.8, -218.8 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 175.8, -219.2 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 175.8, -219.2 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 175.8, -219.5 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 175.8, -219.5 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 175.8, -219.9 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 175.8, -219.9 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 175.8, -220.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 175.8, -220.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 175.8, -220.6 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 175.8, -220.6 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 175.8, -220.9 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 175.8, -220.9 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 175.8, -221.3 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 175.8, -221.3 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 175.8, -221.6 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 175.8, -221.6 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 175.8, -222 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 175.8, -222 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 175.8, -222.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 175.8, -222.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 175.8, -222.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 175.8, -222.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 175.8, -223 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 175.8, -223 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 175.8, -223.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 175.8, -223.4 , 0 );

setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_0 + 322 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -44.7 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
--環境音
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 230, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 30 );
--画面遷移
SE003 = playSeVer2( spep_0 + 40, 1072, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
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

--フリーザ構える
SE004 = playSeVer2( spep_0 + 162, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 170, 1135, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 170, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE006, 61 );
--フリーザ飛び上がる
SE007 = playSeVer2( spep_0 + 188, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 188, 1109, "", 0, 0, 0, -1);
--ズームする
SE009 = playSeVer2( spep_0 + 208, 44, "", 0, 0, 0, -1);
--集中線
SE010 = playSeVer2( spep_0 + 224, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE010, 66 );
SE011 = playSeVer2( spep_0 + 224, 1369, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE011, 75 );
--セル太陽拳
SE012 = playSeVer2( spep_0 + 266, 1127, "",spep_0 + 418, 0, 64, 0.6);
SE013 = playSeVer2( spep_0 + 266, 1264, "",spep_0 + 506, 0, 162, 0.6);
--画面遷移
SE014 = playSeVer2( spep_0 + 374, 8, "", 0, 0, 0, -1);
--腕あげる
SE015 = playSeVer2( spep_0 + 482, 1004, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 486, 1003, "", 0, 0, 0, -1);
--気弾溜め
SE018 = playSeVer2( spep_0 + 510, 1296, "",spep_0 + 624, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 510, 1282, "",spep_0 + 624, 0, 14, -1);
SE020 = playSeVer2( spep_0 + 510, 1341, "",spep_0 + 624, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --614

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


------------------------------------------------
-- 発射～ラスト
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 234;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_003  
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_004 敵味方共通
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

-- ** 敵キャラクター ** --
setDisp( spep_2, 1, 1 );
setDisp( spep_2 + 56 + OFFSET_X, 1, 0 );

changeAnime( spep_2, 1, 106 );

setMoveKey( spep_2, 1, 128.6, -243.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 128.9, -243.6 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 128.9, -243.6 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 129.2, -243.8 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 129.2, -243.8 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 129.5, -244 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 129.5, -244 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 129.8, -244.2 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 129.8, -244.2 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 130.1, -244.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 130.1, -244.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 130.4, -244.6 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 130.4, -244.6 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 130.7, -244.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 130.7, -244.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 131, -244.9 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 131, -244.9 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 131.3, -245.1 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 131.3, -245.1 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 131.6, -245.3 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 131.6, -245.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 131.9, -245.5 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 131.9, -245.5 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 132.2, -245.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 132.2, -245.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 132.5, -245.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 132.5, -245.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 132.8, -246 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 132.8, -246 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 133.1, -246.2 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 133.1, -246.2 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 133.4, -246.4 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 133.4, -246.4 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 133.7, -246.6 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 133.7, -246.6 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 134, -246.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 134, -246.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 134.3, -247 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 134.3, -247 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 134.6, -247.2 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 134.6, -247.2 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 134.9, -247.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 134.9, -247.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 135.2, -247.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 135.2, -247.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 135.5, -247.7 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 135.5, -247.7 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 135.8, -247.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 135.8, -247.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 136.1, -248.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 136.1, -248.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 136.4, -248.3 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 136.4, -248.3 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 136.7, -248.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 136.7, -248.5 , 0 );

setScaleKey( spep_2, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.41, 2.41 );

setRotateKey( spep_2, 1, -42 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -42 );

-- ** 音 ** --
--気弾発射
SE022 = playSeVer2( spep_2 + 0, 1177, "",spep_2 + 94, 0, 28, -1);
SE023 = playSeVer2( spep_2 + 0, 1213, "",spep_2 + 94, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 0, SE023, 60 );
SE024 = playSeVer2( spep_2 + 0, 1193, "",spep_2 + 94, 0, 26, -1);
--爆発
SE025 = playSeVer2( spep_2 + 60, 1159, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 74, 1067, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 84, 1188, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 88, 1044, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 120 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );  -- 234


end
