--1030100:UR_天津飯_必殺技：
--sp_effect_a1_00457
--sp2775

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163208;  --敵が見上げる～気功砲構えef_001
SP_01b = 163209;  --敵が見上げる～気功砲構えef_001b
SP_02 = 163212;  --空中に天津飯～爆発ef_002
SP_02b = 163214;  --空中に天津飯～爆発ef_002b

--エフェクト(敵)
SP_01br = 163210;  --敵が見上げる～気功砲構えef_001br
SP_01r = 163211;  --敵が見上げる～気功砲構えef_001r
SP_02r = 163213;  --空中に天津飯～爆発ef_002r


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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 敵が見上げる～気功砲構え
-------------------------------------------------
MAX_FRAME_0 = 352;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵が見上げる～気功砲構え(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 敵が見上げる～気功砲構え(ef_001b)
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
spep_x = spep_0 + 270;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 0, 1, 247.1, -475.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 268.3, -550.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 268.3, -550.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 289.4, -618.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 289.4, -618.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 310.5, -687.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 310.5, -687.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 331.7, -755.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 331.7, -755.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 352.8, -824.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 352.8, -824.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 373.9, -892.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 373.9, -892.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 395.1, -961.3 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 395.1, -961.3 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 416.2, -1029.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 416.2, -1029.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 437.4, -1098.3 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 437.4, -1098.3 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 458.5, -1166.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 458.5, -1166.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 479.6, -1235.3 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 479.6, -1235.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 500.8, -1303.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 500.8, -1303.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 521.9, -1372.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 521.9, -1372.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 543.1, -1440.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 543.1, -1440.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 543.5, -1442.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 543.5, -1442.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 543.9, -1443.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 543.9, -1443.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 544.3, -1445.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 544.3, -1445.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 544.7, -1446.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 544.7, -1446.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 545.1, -1447.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 545.1, -1447.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 545.6, -1449.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 545.6, -1449.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 546, -1450.7 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 546, -1450.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 546.4, -1452.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 546.4, -1452.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 546.8, -1453.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 546.8, -1453.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 547.2, -1455 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 547.2, -1455 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 547.6, -1456.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 547.6, -1456.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 548.1, -1457.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 548.1, -1457.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 548.5, -1459.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 548.5, -1459.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 548.9, -1460.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 548.9, -1460.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 549.3, -1462.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 549.3, -1462.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 673.4, -1798.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 673.4, -1798.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 797.5, -2134.8 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 797.5, -2134.8 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 921.5, -2471.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 921.5, -2471.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 1045.6, -2807.5 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 1045.6, -2807.5 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 1169.6, -3143.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 1169.6, -3143.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 1293.7, -3480.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 1293.7, -3480.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 1417.8, -3816.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 1417.8, -3816.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 1541.8, -4153 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 1541.8, -4153 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 1665.9, -4489.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 1665.9, -4489.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 1790, -4825.8 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 1790, -4825.8 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 1789.5, -4823.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 1789.5, -4823.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 1791.8, -4827.5 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 1791.8, -4827.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 1788.9, -4825.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 1788.9, -4825.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 1790.8, -4825.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 1790.8, -4825.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 1790, -4825.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 9.33, 9.33 );

setRotateKey( spep_0 + 0, 1, 5 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 5 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 2 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 3 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 4 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 5 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 6 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 7 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 146 + OFFSET_X, 1, 255 );

--敵の動き2--

setDisp( spep_0 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 268 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 206 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 206 + OFFSET_X, 1, 1.8, -6.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 1.8, -6.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 1.9, -6.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 1.9, -6.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 2, -6.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 2, -6.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 2.1, -7.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 2.1, -7.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 2.3, -7.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 2.3, -7.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 2.5, -8.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 2.5, -8.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 3.3, -11.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 3.3, -11.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 4.4, -14.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 4.4, -14.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 5.3, -17.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 5.3, -17.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 6, -20.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 6, -20.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 6.7, -22.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 6.7, -22.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 7.2, -24.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 7.2, -24.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 7.7, -25.9 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 7.7, -25.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 8.1, -27.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 8.1, -27.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 8.4, -28.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 8.4, -28.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 8.6, -29.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 8.6, -29.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 8.8, -29.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 8.8, -29.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 9, -30.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 9, -30.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 9.1, -30.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 9.1, -30.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 9.2, -31.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 9.2, -31.1 , 0 );

setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 206 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 268 + OFFSET_X, 1, 255 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--ズーム
SE002 = playSeVer2( spep_0 + 48, 8, "", 0, 0, 0, -1);

--腕の動き
SE003 = playSeVer2( spep_0 + 88, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 116, 1013, "",spep_0 + 134, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 116, SE004, 63 );
SE005 = playSeVer2( spep_0 + 128, 1348, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 174, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE006, 61 );

--手覗く
SE007 = playSeVer2( spep_0 + 198, 1202, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 198, 1191, "",spep_0 + 278, 0, 38, -1);
SE009 = playSeVer2( spep_0 + 198, 1240, "", 270, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 200, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE010, 40 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 264; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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

--電撃
SE012 = playSeVer2( spep_0 + 304, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE012, 60 );

-- ** 白フェード ** --
entryFade( spep_0 + 344, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --352F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 空中に天津飯～爆発
-------------------------------------------------
MAX_FRAME_2 = 268;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 空中に天津飯～爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 空中に天津飯～爆発(ef_002b)
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

setDisp( spep_2 + 90+ OFFSET_X, 1, 1 );
setDisp( spep_2 + 120+ OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90+ OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, -12.1, -233.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -12.1, -233.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -16.8, -238.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -16.8, -238.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -19.9, -235.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -19.9, -235.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -16.8, -240.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -16.8, -240.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -16.8, -239.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -16.8, -239.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -19.9, -241.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -19.9, -241.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -21.4, -245.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -21.4, -245.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -18.2, -248.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -18.2, -248.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -18.2, -250.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -18.2, -250.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -21.3, -249.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -21.3, -249.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -18.2, -255.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -18.2, -255.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -18.1, -250.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -18.1, -250.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -21.2, -254.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -21.2, -254.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -10.5, -261.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -10.5, -261.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -9.8, -258 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -9.8, -258 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -42.9, -290.5 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 63 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 63 );

setBlendColor( spep_2 + 88 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 90 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 120 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 122 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

setAlphaKey( spep_2 + 90 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 91 + OFFSET_X, 1, 244 );
setAlphaKey( spep_2 + 92 + OFFSET_X, 1, 236 );
setAlphaKey( spep_2 + 93 + OFFSET_X, 1, 228 );
setAlphaKey( spep_2 + 94 + OFFSET_X, 1, 220 );
setAlphaKey( spep_2 + 95 + OFFSET_X, 1, 212 );
setAlphaKey( spep_2 + 96 + OFFSET_X, 1, 204 );
setAlphaKey( spep_2 + 97 + OFFSET_X, 1, 196 );
setAlphaKey( spep_2 + 98 + OFFSET_X, 1, 188 );
setAlphaKey( spep_2 + 99 + OFFSET_X, 1, 180 );
setAlphaKey( spep_2 + 100 + OFFSET_X, 1, 172 );
setAlphaKey( spep_2 + 101 + OFFSET_X, 1, 164 );
setAlphaKey( spep_2 + 102 + OFFSET_X, 1, 156 );
setAlphaKey( spep_2 + 103 + OFFSET_X, 1, 148 );
setAlphaKey( spep_2 + 104 + OFFSET_X, 1, 140 );
setAlphaKey( spep_2 + 105 + OFFSET_X, 1, 132 );
setAlphaKey( spep_2 + 106 + OFFSET_X, 1, 124 );
setAlphaKey( spep_2 + 107 + OFFSET_X, 1, 116 );
setAlphaKey( spep_2 + 108 + OFFSET_X, 1, 108 );
setAlphaKey( spep_2 + 109 + OFFSET_X, 1, 100 );
setAlphaKey( spep_2 + 110 + OFFSET_X, 1, 92 );
setAlphaKey( spep_2 + 111 + OFFSET_X, 1, 84 );
setAlphaKey( spep_2 + 112 + OFFSET_X, 1, 76 );
setAlphaKey( spep_2 + 113 + OFFSET_X, 1, 68 );
setAlphaKey( spep_2 + 114 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 115 + OFFSET_X, 1, 52 );
setAlphaKey( spep_2 + 116 + OFFSET_X, 1, 44 );
setAlphaKey( spep_2 + 117 + OFFSET_X, 1, 36 );
setAlphaKey( spep_2 + 118 + OFFSET_X, 1, 28 );
setAlphaKey( spep_2 + 119 + OFFSET_X, 1, 20 );
setAlphaKey( spep_2 + 120 + OFFSET_X, 1, 20 );

-- ** 音 ** --

--気功砲発射
SE014 = playSeVer2( spep_2 + 2, 1025, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 2, 1137, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 2, 1193, "",spep_2 + 240, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 2, SE016, 71 );
SE017 = playSeVer2( spep_2 + 2, 1161, "",spep_2 + 216, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 2, SE017, 60 );
SE018 = playSeVer2( spep_2 + 2, 1182, "", 0, 0, 0, -1);

--爆発
SE019 = playSeVer2( spep_2 + 108, 1159, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 108, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE020, 81 );
SE021 = playSeVer2( spep_2 + 122, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE021, 63 );
SE022 = playSeVer2( spep_2 + 126, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE022, 77 );

-- ** ダメージ表示 ** --

dealDamage( spep_2 + 132); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 268F -2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 敵が見上げる～気功砲構え
-------------------------------------------------
MAX_FRAME_0 = 352;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 敵が見上げる～気功砲構え(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 敵が見上げる～気功砲構え(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 270;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 146 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 0, 1, 247.1, -475.8 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 268.3, -550.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 268.3, -550.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 289.4, -618.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 289.4, -618.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 310.5, -687.3 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 310.5, -687.3 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 331.7, -755.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 331.7, -755.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 352.8, -824.3 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 352.8, -824.3 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 373.9, -892.8 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 373.9, -892.8 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 395.1, -961.3 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 395.1, -961.3 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 416.2, -1029.8 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 416.2, -1029.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 437.4, -1098.3 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 437.4, -1098.3 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 458.5, -1166.8 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 458.5, -1166.8 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 479.6, -1235.3 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 479.6, -1235.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 500.8, -1303.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 500.8, -1303.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 521.9, -1372.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 521.9, -1372.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 543.1, -1440.8 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 543.1, -1440.8 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 543.5, -1442.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 543.5, -1442.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 543.9, -1443.6 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 543.9, -1443.6 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 544.3, -1445.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 544.3, -1445.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 544.7, -1446.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 544.7, -1446.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 545.1, -1447.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 545.1, -1447.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 545.6, -1449.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 545.6, -1449.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 546, -1450.7 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 546, -1450.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 546.4, -1452.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 546.4, -1452.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 546.8, -1453.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 546.8, -1453.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 547.2, -1455 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 547.2, -1455 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 547.6, -1456.4 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 547.6, -1456.4 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 548.1, -1457.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 548.1, -1457.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 548.5, -1459.2 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 548.5, -1459.2 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 548.9, -1460.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 548.9, -1460.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 549.3, -1462.1 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 549.3, -1462.1 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 673.4, -1798.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 673.4, -1798.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 797.5, -2134.8 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 797.5, -2134.8 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 921.5, -2471.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 921.5, -2471.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 1045.6, -2807.5 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 1045.6, -2807.5 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 1169.6, -3143.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 1169.6, -3143.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 1293.7, -3480.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 1293.7, -3480.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 1417.8, -3816.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 1417.8, -3816.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 1541.8, -4153 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 1541.8, -4153 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 1665.9, -4489.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 1665.9, -4489.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 1790, -4825.8 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 1790, -4825.8 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 1789.5, -4823.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 1789.5, -4823.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 1791.8, -4827.5 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 1791.8, -4827.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 1788.9, -4825.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 1788.9, -4825.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 1790.8, -4825.5 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 1790.8, -4825.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 1790, -4825.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 7, 7 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 8.17, 8.17 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 9.33, 9.33 );

setRotateKey( spep_0 + 0, 1, 5 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 5 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 2 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 3 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 4 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 5 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 6 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 7 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 146 + OFFSET_X, 1, 255 );

--敵の動き2--

setDisp( spep_0 + 206 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 268 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 206 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 206 + OFFSET_X, 1, 1.8, -6.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 1.8, -6.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 1.9, -6.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 1.9, -6.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 2, -6.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 2, -6.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 2.1, -7.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 2.1, -7.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 2.3, -7.7 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 2.3, -7.7 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 2.5, -8.5 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 2.5, -8.5 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 3.3, -11.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 3.3, -11.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 4.4, -14.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 4.4, -14.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 5.3, -17.9 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 5.3, -17.9 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 6, -20.4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 6, -20.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 6.7, -22.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 6.7, -22.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 7.2, -24.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 7.2, -24.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 7.7, -25.9 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 7.7, -25.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 8.1, -27.2 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 8.1, -27.2 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 8.4, -28.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 8.4, -28.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 8.6, -29.2 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 8.6, -29.2 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 8.8, -29.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 8.8, -29.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 9, -30.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 9, -30.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 9.1, -30.8 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 9.1, -30.8 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 9.2, -31.1 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 9.2, -31.1 , 0 );

setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 0 );

setAlphaKey( spep_0 + 206 + OFFSET_X, 1, 255 );
setAlphaKey( spep_0 + 268 + OFFSET_X, 1, 255 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--ズーム
SE002 = playSeVer2( spep_0 + 48, 8, "", 0, 0, 0, -1);

--腕の動き
SE003 = playSeVer2( spep_0 + 88, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 116, 1013, "",spep_0 + 134, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 116, SE004, 63 );
SE005 = playSeVer2( spep_0 + 128, 1348, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 174, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE006, 61 );

--手覗く
SE007 = playSeVer2( spep_0 + 198, 1202, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 198, 1191, "",spep_0 + 278, 0, 38, -1);
SE009 = playSeVer2( spep_0 + 198, 1240, "", 270, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 200, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE010, 40 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 264; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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

--電撃
SE012 = playSeVer2( spep_0 + 304, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 304, SE012, 60 );

-- ** 白フェード ** --
entryFade( spep_0 + 344, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --352F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 空中に天津飯～爆発
-------------------------------------------------
MAX_FRAME_2 = 268;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 空中に天津飯～爆発(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 空中に天津飯～爆発(ef_002b)
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

setDisp( spep_2 + 90+ OFFSET_X, 1, 1 );
setDisp( spep_2 + 120+ OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90+ OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, -12.1, -233.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -12.1, -233.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -16.8, -238.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -16.8, -238.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -19.9, -235.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -19.9, -235.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -16.8, -240.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -16.8, -240.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -16.8, -239.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -16.8, -239.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -19.9, -241.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -19.9, -241.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -21.4, -245.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -21.4, -245.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -18.2, -248.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -18.2, -248.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -18.2, -250.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -18.2, -250.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -21.3, -249.7 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -21.3, -249.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -18.2, -255.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -18.2, -255.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -18.1, -250.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -18.1, -250.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -21.2, -254.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -21.2, -254.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -10.5, -261.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -10.5, -261.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -9.8, -258 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -9.8, -258 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -42.9, -290.5 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 63 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 63 );

setBlendColor( spep_2 + 88 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 90 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 120 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 122 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

setAlphaKey( spep_2 + 90 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 91 + OFFSET_X, 1, 244 );
setAlphaKey( spep_2 + 92 + OFFSET_X, 1, 236 );
setAlphaKey( spep_2 + 93 + OFFSET_X, 1, 228 );
setAlphaKey( spep_2 + 94 + OFFSET_X, 1, 220 );
setAlphaKey( spep_2 + 95 + OFFSET_X, 1, 212 );
setAlphaKey( spep_2 + 96 + OFFSET_X, 1, 204 );
setAlphaKey( spep_2 + 97 + OFFSET_X, 1, 196 );
setAlphaKey( spep_2 + 98 + OFFSET_X, 1, 188 );
setAlphaKey( spep_2 + 99 + OFFSET_X, 1, 180 );
setAlphaKey( spep_2 + 100 + OFFSET_X, 1, 172 );
setAlphaKey( spep_2 + 101 + OFFSET_X, 1, 164 );
setAlphaKey( spep_2 + 102 + OFFSET_X, 1, 156 );
setAlphaKey( spep_2 + 103 + OFFSET_X, 1, 148 );
setAlphaKey( spep_2 + 104 + OFFSET_X, 1, 140 );
setAlphaKey( spep_2 + 105 + OFFSET_X, 1, 132 );
setAlphaKey( spep_2 + 106 + OFFSET_X, 1, 124 );
setAlphaKey( spep_2 + 107 + OFFSET_X, 1, 116 );
setAlphaKey( spep_2 + 108 + OFFSET_X, 1, 108 );
setAlphaKey( spep_2 + 109 + OFFSET_X, 1, 100 );
setAlphaKey( spep_2 + 110 + OFFSET_X, 1, 92 );
setAlphaKey( spep_2 + 111 + OFFSET_X, 1, 84 );
setAlphaKey( spep_2 + 112 + OFFSET_X, 1, 76 );
setAlphaKey( spep_2 + 113 + OFFSET_X, 1, 68 );
setAlphaKey( spep_2 + 114 + OFFSET_X, 1, 60 );
setAlphaKey( spep_2 + 115 + OFFSET_X, 1, 52 );
setAlphaKey( spep_2 + 116 + OFFSET_X, 1, 44 );
setAlphaKey( spep_2 + 117 + OFFSET_X, 1, 36 );
setAlphaKey( spep_2 + 118 + OFFSET_X, 1, 28 );
setAlphaKey( spep_2 + 119 + OFFSET_X, 1, 20 );
setAlphaKey( spep_2 + 120 + OFFSET_X, 1, 20 );

-- ** 音 ** --

--気功砲発射
SE014 = playSeVer2( spep_2 + 2, 1025, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 2, 1137, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 2, 1193, "",spep_2 + 240, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 2, SE016, 71 );
SE017 = playSeVer2( spep_2 + 2, 1161, "",spep_2 + 216, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 2, SE017, 60 );
SE018 = playSeVer2( spep_2 + 2, 1182, "", 0, 0, 0, -1);

--爆発
SE019 = playSeVer2( spep_2 + 108, 1159, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 108, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE020, 81 );
SE021 = playSeVer2( spep_2 + 122, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 122, SE021, 63 );
SE022 = playSeVer2( spep_2 + 126, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE022, 77 );

-- ** ダメージ表示 ** --

dealDamage( spep_2 + 132); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 268F -2

end

