-- 1027290: LR_超サイヤ人トランクス(未来)_超必殺技：シャイニングスラッシュ
-- sp_effect_b2_00057
-- sp2601

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162227;  -- 開始、敵と向かい合う～カードカットインまで ef_001
SP_002 = 162229;  -- カードカットイン～フィニッシュ ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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
ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始、敵と向かい合う～カードカットインまで ef_001 (516F)
------------------------------------------------------
MAX_FRAME_0 = 516;

setupMovie(0, SP_001, 0, 1);

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );

spep_x = spep_0 + 10;

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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 130 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 184 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 222 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 274 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 300 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 316 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 390 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 430 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 450 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 466 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 494 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 516, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );
changeAnime( spep_0 + 184 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 258 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 300 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 450 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 0, 1, 400.6, -89.5 , 0 );
setMoveKey( spep_0 + 1 + OFFSET_X, 1, 400.6, -89.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 510.8, -102.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 510.8, -102.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 621, -116.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 621, -116.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 731.2, -129.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 731.2, -129.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 841.4, -142.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 841.4, -142.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 951.6, -156.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 951.6, -156.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 1061.8, -169.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 1061.8, -169.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 1172, -182.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 1172, -182.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 1282.2, -196.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 1282.2, -196.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 1392.4, -209.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 1392.4, -209.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 1395.7, -209.2 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 1395.7, -209.2 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 1399.1, -209 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 1399.1, -209 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 1402.5, -208.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 1402.5, -208.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 1405.8, -208.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 1405.8, -208.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1409.2, -208.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 1409.2, -208.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1412.5, -208.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 1412.5, -208.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 1415.9, -208 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 1415.9, -208 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 1419.3, -207.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 1419.3, -207.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 1422.6, -207.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 1422.6, -207.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 1426, -207.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 1426, -207.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 1429.4, -207.2 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 1429.4, -207.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 1432.7, -207 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 1432.7, -207 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 1436.1, -206.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 1436.1, -206.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 1439.5, -206.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 1439.5, -206.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 1442.8, -206.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 1442.8, -206.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 1446.2, -206.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 1446.2, -206.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 1449.6, -206 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 1449.6, -206 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 1452.9, -205.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 1452.9, -205.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 1456.2, -205.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 1456.2, -205.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 1459.6, -205.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 1459.6, -205.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 1463, -205.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 1463, -205.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 1466.3, -205 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 1466.3, -205 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 1469.7, -204.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 1469.7, -204.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 1473, -204.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 1473, -204.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 1476.4, -204.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 1476.4, -204.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 1479.8, -204.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 1479.8, -204.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 1483.1, -204 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 1483.1, -204 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 1486.5, -203.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 1486.5, -203.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 1489.9, -203.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 1489.9, -203.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 1493.2, -203.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 1493.2, -203.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 1496.6, -203.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 1496.6, -203.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 1500, -203 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 1500, -203 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 1503.3, -202.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 1503.3, -202.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 1506.7, -202.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 1506.7, -202.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 1510.1, -202.4 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 1510.1, -202.4 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 1513.4, -202.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 1513.4, -202.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 1516.8, -202 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 1516.8, -202 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 1520.1, -201.8 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 1520.1, -201.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 1523.5, -201.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 1523.5, -201.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 1526.9, -201.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 1526.9, -201.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 1530.2, -201.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 1530.2, -201.2 , 0 );
--
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 260.3, -163.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 260.3, -163.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 214.4, -142 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 214.4, -142 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 278.4, -161.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 278.4, -161.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 254.2, -182.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 254.2, -182.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 257.3, -177.8 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 257.3, -177.8 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 260.3, -174 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 260.3, -174 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 263.1, -170.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 263.1, -170.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 265.7, -167.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 265.7, -167.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 268.2, -164.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 268.2, -164.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 270.4, -162.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 270.4, -162.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 272.5, -160.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 272.5, -160.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 274.5, -158.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 274.5, -158.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 276.2, -157.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 276.2, -157.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 277.8, -156.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 277.8, -156.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 279.2, -156.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 279.2, -156.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 280.3, -156.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 280.3, -156.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 331.9, -245.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 331.9, -245.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 386.5, -324.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 386.5, -324.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 444.6, -392.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 444.6, -392.1 , 0 );
--
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 945.7, -380.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 945.7, -380.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 746, -332.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 746, -332.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 640.9, -168.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 640.9, -168.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 686.3, -204 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 686.3, -204 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 833.2, -333.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 833.2, -333.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 908.4, -358 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 908.4, -358 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 1002.5, -410 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 1002.5, -410 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 1096.4, -461.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 1096.4, -461.9 , 0 );
--
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 785.8, -414.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 785.8, -414.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 586.6, -286 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 586.6, -286 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 286.3, -217.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 286.3, -217.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 487.3, -338.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 487.3, -338.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 616.4, -353.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 616.4, -353.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 764.4, -397 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 764.4, -397 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 911.9, -439.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 911.9, -439.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 1059.1, -482.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 1059.1, -482.7 , 0 );
--
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 220.4, 7.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 220.4, 7.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 222.2, 7.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 222.2, 7.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 224.1, 8.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 224.1, 8.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 225.9, 8.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 225.9, 8.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 227.8, 8.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 227.8, 8.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 229.6, 8.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 229.6, 8.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 231.5, 9.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 231.5, 9.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 233.4, 9.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 233.4, 9.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 235.3, 9.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 235.3, 9.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 201.5, -34 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 201.5, -34 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 255.7, 43.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 255.7, 43.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 244.6, 91.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 244.6, 91.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 304.7, 10.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 304.7, 10.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 340.2, 86.6 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 340.2, 86.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 249.1, 46.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 249.1, 46.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 248.8, -28.5 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 248.8, -28.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 488.4, 10.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 488.4, 10.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 569.1, 61.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 569.1, 61.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 633.9, 70 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 633.9, 70 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 655, 73 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 655, 73 , 0 );
--
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -2.4, -310.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -2.4, -310.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -1.7, -250.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -1.7, -250.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -1.1, -196 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -1.1, -196 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -0.6, -149.4 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -0.6, -149.4 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -0.1, -111.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -0.1, -111.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 0.2, -83.4 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 0.2, -83.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 0.5, -66.4 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 0.5, -66.4 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -35.2, -105.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -35.2, -105.4 , 0 );
--
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 0, -64.4 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 0, -64.4 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 0.1, -62 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 0.1, -62 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 0.3, -59.8 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 0.3, -59.8 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 0.4, -57.6 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 0.4, -57.6 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 0.5, -55.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 0.5, -55.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 0.6, -53.5 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 0.6, -53.5 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 0.6, -51.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 0.6, -51.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 0.8, -49.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 0.8, -49.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 0.9, -48.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 0.9, -48.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 0.9, -47 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 0.9, -47 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 1, -45.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 1, -45.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 1.1, -44.8 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 1.1, -44.8 , 0 );

setScaleKey( spep_0 + 0, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 1 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 6.07, 6.07 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 6.07, 6.07 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 8.03, 8.03 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 8.03, 8.03 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 8.74, 8.74 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 8.74, 8.74 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 8.76, 8.76 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 8.76, 8.76 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 8.81, 8.81 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 8.81, 8.81 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 8.85, 8.85 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 8.85, 8.85 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 9.04, 9.04 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 9.04, 9.04 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 9.06, 9.06 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 9.06, 9.06 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 9.08, 9.08 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 9.08, 9.08 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 9.15, 9.15 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 9.15, 9.15 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 9.19, 9.19 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 9.19, 9.19 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 9.25, 9.25 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 9.25, 9.25 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 9.27, 9.27 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 9.27, 9.27 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 9.29, 9.29 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 9.29, 9.29 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 9.31, 9.31 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 9.31, 9.31 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 9.34, 9.34 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 9.34, 9.34 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 9.42, 9.42 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 9.42, 9.42 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 9.44, 9.44 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 9.44, 9.44 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 9.46, 9.46 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 9.46, 9.46 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 9.55, 9.55 );
--
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 7.66, 7.66 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 7.66, 7.66 );
--
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 7.19, 7.19 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 7.19, 7.19 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 7.01, 7.01 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 7.01, 7.01 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 7.94, 7.94 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 7.94, 7.94 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 8.41, 8.41 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 8.41, 8.41 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 9.33, 9.33 );
--
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 8.99, 8.99 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 8.99, 8.99 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 9.09, 9.09 );
--
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.95, 1.95 );
--
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 8.16, 8.16 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 8.16, 8.16 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.67, 1.67 );
--
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.42, 1.42 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 0 );
--
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -38.5 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -36.3 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -33.2 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -30.9 );
--
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 18.8 );
--
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -23 );
--
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -56.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -56.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -45.3 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, -45.3 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -43.4 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -41.8 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -40.2 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -40.2 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -8 );
--
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, 22.8 );
--
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 516, 1, 22.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 458, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ズーム
SE002 = playSeVer2( spep_0 + 2, 1232, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 100, 1109, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 130, 1109, "", spep_0 + 174, 0, 4, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
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
--環境音
SE001_02 = playSeVer2( spep_0 + 300, 1269, "",spep_0 + 458, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 300, SE001_02, 25 );

--飛び込んでくる
SE006 = playSeVer2( spep_0 + 144, 1116, "",spep_0 + 200, 0, 24, -1);
SE007 = playSeVer2( spep_0 + 144, 1117, "",spep_0 + 200, 0, 22, -1);

--斬る
SE008 = playSeVer2( spep_0 + 166, 1004, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 176, 1143, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 176, 1153, "",spep_0 + 214, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 178, SE010, 79 );
SE011 = playSeVer2( spep_0 + 180, 1032, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 210, 1003, "", 0, 0, 0, -1);

--連続斬り１
SE013 = playSeVer2( spep_0 + 234, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 244, 1141, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 244, 1032, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 244, 1009, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 244, SE016 );

--連続斬り２
SE017 = playSeVer2( spep_0 + 260, 1141, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 260, 1031, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 260, 1010, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 260, SE019 );

--連続斬り３
SE020 = playSeVer2( spep_0 + 274, 1141, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 274, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 274, 1009, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 274, SE022 );

--横斬り
SE023 = playSeVer2( spep_0 + 294, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 300, 1143, "", spep_0 + 348, 0, 2, -1);
SE025 = playSeVer2( spep_0 + 300, 1032, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 300, 1187, "",spep_0 + 366, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 300, SE026, 65 );

--斬り返し
SE027 = playSeVer2( spep_0 + 348, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 348, 1187, "",spep_0 + 414, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 348, SE028, 65 );
SE029 = playSeVer2( spep_0 + 348, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE029, 79 );
SE030 = playSeVer2( spep_0 + 350, 1061, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 354, 1141, "", 0, 0, 0, -1);

--振りかぶる
SE032 = playSeVer2( spep_0 + 384, 1004, "",spep_0 + 418, 0, 18, -1);

--蹴り飛ばす
SE033 = playSeVer2( spep_0 + 410, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 410, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 420, 1121, "",spep_0 + 484, 0, 20, -1);

--壁激突
SE036 = playSeVer2( spep_0 + 464, 1159, "",spep_0 + 512 + 14, 0, 14, -1);

--壁破壊して敵とんでいく
SE037 = playSeVer2( spep_0 + 492, 1068, "",spep_0 + 512 + 14, 0, 12, -1);
SE038 = playSeVer2( spep_0 + 492, 1027, "",spep_0 + 512 + 16, 0, 14, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 516

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- カードカットイン～フィニッシュ ef_002 (358F)
------------------------------------------------------
MAX_FRAME_2 = 358;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 160 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 224 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, 228.1, -519.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 228.1, -519.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 193.7, -374.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 193.7, -374.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 159.4, -229.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 159.4, -229.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 156.2, -229.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 156.2, -229.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 153.2, -230 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 153.2, -230 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 150, -230.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 150, -230.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 146.9, -230.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 146.9, -230.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 143.8, -231.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 143.8, -231.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 140.7, -231.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 140.7, -231.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 137.6, -232.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 137.6, -232.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 134.5, -232.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 134.5, -232.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 131.3, -233.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 131.3, -233.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 128.3, -233.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 128.3, -233.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 125.1, -233.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 125.1, -233.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 122, -234.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 122, -234.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 118.9, -234.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 118.9, -234.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 115.8, -235.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 115.8, -235.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 112.7, -235.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 112.7, -235.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 109.6, -236.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 109.6, -236.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 106.4, -236.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 106.4, -236.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 103.4, -236.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 103.4, -236.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 100.2, -237.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 100.2, -237.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 97.1, -237.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 97.1, -237.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 94, -238.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 94, -238.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 90.9, -238.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 90.9, -238.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 87.8, -239.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 87.8, -239.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 84.6, -239.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 84.6, -239.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 81.6, -240 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 81.6, -240 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 120.9, -390.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 120.9, -390.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 160.2, -541 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 160.2, -541 , 0 );
--
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 272.4, 771.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 272.4, 771.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 239.6, 622.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 239.6, 622.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 203.6, 463.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 203.6, 463.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 164.4, 293.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 164.4, 293.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 121.9, 114.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 121.9, 114.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 76.2, -75.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 76.2, -75.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 64.9, -111.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 64.9, -111.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 54.2, -148.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 54.2, -148.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 44.2, -185.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 44.2, -185.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 34.7, -222.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 34.7, -222.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 40.5, -226.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 40.5, -226.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 46.3, -230.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 46.3, -230.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 52.1, -234.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 52.1, -234.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 57.8, -238.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 57.8, -238.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 63.6, -242.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 63.6, -242.5 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 7.08, 7.08 );
--
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 7.04, 7.04 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 7.04, 7.04 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 7.5, 7.5 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -25 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -21.6 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 0 );
--
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -37.8 );


-- ** 音 ** --
--向かってくる
SE040 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 52, 0, 14, -1);

--斬る
SE043 = playSeVer2( spep_2 + 74, 1319, "",spep_2 + 200, 8, 28, -1);
setSeVolumeByWorkId( spep_2 + 74, SE043, 66 );
setStartTimeMs( SE043,  300 );

--振りかぶる
SE044 = playSeVer2( spep_2 + 60, 1004, "", 0, 0, 0, -1);

--斬る
SE045 = playSeVer2( spep_2 + 74, 1032, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 74, 1187, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 78, 1143, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 86, 1141, "", 0, 0, 0, -1);

--画面遷移
SE049 = playSeVer2( spep_2 + 86, 8, "", 0, 0, 0, -1);

--構えて向かっていく
SE050 = playSeVer2( spep_2 + 152, 1314, "",spep_2 + 234, 0, 34, -1);
SE051 = playSeVer2( spep_2 + 152, 1116, "",spep_2 + 206, 0, 28, -1);

--突き刺す
SE052 = playSeVer2( spep_2 + 202, 1061, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 206, 1120, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 210, 1143, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_2 + 242, 1067, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 242, 1024, "", 0, 0, 0, -1);

--風圧
SE057 = playSeVer2( spep_2 + 242, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE057, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 258 );
endPhase( spep_2 +  MAX_FRAME_2 );  -- 358

else

------------------------------------------------------
-- 敵側
------------------------------------------------------


spep_0 = 0;

------------------------------------------------------
-- 開始、敵と向かい合う～カードカットインまで ef_001 (516F)
------------------------------------------------------
MAX_FRAME_0 = 516;

setupMovie(0, SP_001, 0, 1);

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );

spep_x = spep_0 + 10;
--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
]]
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 130 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 184 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 222 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 274 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 300 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 316 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 390 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 430 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 450 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 466 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 494 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 516, 1, 0 );
changeAnime( spep_0 + 0, 1, 18  );
changeAnime( spep_0 + 184 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 258 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 300 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 450 + OFFSET_X, 1, 105  );

setMoveKey( spep_0 + 0, 1, -400.6, -89.5 , 0 );
setMoveKey( spep_0 + 1 + OFFSET_X, 1, -400.6, -89.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -510.8, -102.8 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -510.8, -102.8 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -621, -116.2 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -621, -116.2 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -731.2, -129.5 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -731.2, -129.5 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -841.4, -142.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -841.4, -142.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -951.6, -156.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -951.6, -156.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -1061.8, -169.5 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -1061.8, -169.5 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -1172, -182.8 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -1172, -182.8 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -1282.2, -196.1 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -1282.2, -196.1 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -1392.4, -209.5 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -1392.4, -209.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -1395.7, -209.2 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -1395.7, -209.2 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -1399.1, -209 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -1399.1, -209 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -1402.5, -208.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -1402.5, -208.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -1405.8, -208.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -1405.8, -208.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -1409.2, -208.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -1409.2, -208.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -1412.5, -208.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -1412.5, -208.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -1415.9, -208 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -1415.9, -208 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -1419.3, -207.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -1419.3, -207.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -1422.6, -207.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -1422.6, -207.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -1426, -207.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -1426, -207.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -1429.4, -207.2 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -1429.4, -207.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -1432.7, -207 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -1432.7, -207 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -1436.1, -206.8 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -1436.1, -206.8 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -1439.5, -206.6 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -1439.5, -206.6 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -1442.8, -206.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -1442.8, -206.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -1446.2, -206.2 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -1446.2, -206.2 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -1449.6, -206 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -1449.6, -206 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -1452.9, -205.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -1452.9, -205.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -1456.2, -205.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -1456.2, -205.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -1459.6, -205.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -1459.6, -205.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -1463, -205.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -1463, -205.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -1466.3, -205 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -1466.3, -205 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -1469.7, -204.8 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -1469.7, -204.8 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -1473, -204.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -1473, -204.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -1476.4, -204.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -1476.4, -204.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -1479.8, -204.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -1479.8, -204.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -1483.1, -204 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -1483.1, -204 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -1486.5, -203.8 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -1486.5, -203.8 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -1489.9, -203.6 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -1489.9, -203.6 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -1493.2, -203.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -1493.2, -203.4 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -1496.6, -203.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -1496.6, -203.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -1500, -203 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -1500, -203 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -1503.3, -202.8 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -1503.3, -202.8 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -1506.7, -202.6 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -1506.7, -202.6 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -1510.1, -202.4 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -1510.1, -202.4 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -1513.4, -202.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -1513.4, -202.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -1516.8, -202 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -1516.8, -202 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -1520.1, -201.8 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -1520.1, -201.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -1523.5, -201.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -1523.5, -201.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -1526.9, -201.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -1526.9, -201.4 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -1530.2, -201.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -1530.2, -201.2 , 0 );
--
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -260.3, -163.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -260.3, -163.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -214.4, -142 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -214.4, -142 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -278.4, -161.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -278.4, -161.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -254.2, -182.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -254.2, -182.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -257.3, -177.8 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -257.3, -177.8 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -260.3, -174 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -260.3, -174 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -263.1, -170.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -263.1, -170.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -265.7, -167.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -265.7, -167.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -268.2, -164.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -268.2, -164.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -270.4, -162.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -270.4, -162.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -272.5, -160.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -272.5, -160.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -274.5, -158.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -274.5, -158.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -276.2, -157.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -276.2, -157.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -277.8, -156.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -277.8, -156.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -279.2, -156.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -279.2, -156.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -280.3, -156.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -280.3, -156.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -331.9, -245.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -331.9, -245.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -386.5, -324.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -386.5, -324.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -444.6, -392.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -444.6, -392.1 , 0 );
--
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -945.7, -380.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -945.7, -380.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -746, -332.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -746, -332.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -640.9, -168.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -640.9, -168.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -686.3, -204 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -686.3, -204 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -833.2, -333.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -833.2, -333.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -908.4, -358 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -908.4, -358 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -1002.5, -410 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -1002.5, -410 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -1096.4, -461.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -1096.4, -461.9 , 0 );
--
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -785.8, -414.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -785.8, -414.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -586.6, -286 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -586.6, -286 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -286.3, -217.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -286.3, -217.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -487.3, -338.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -487.3, -338.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -616.4, -353.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -616.4, -353.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -764.4, -397 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -764.4, -397 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -911.9, -439.9 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -911.9, -439.9 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -1059.1, -482.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -1059.1, -482.7 , 0 );
--
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -220.4, 7.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -220.4, 7.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -222.2, 7.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -222.2, 7.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -224.1, 8.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -224.1, 8.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -225.9, 8.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -225.9, 8.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -227.8, 8.6 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -227.8, 8.6 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -229.6, 8.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -229.6, 8.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -231.5, 9.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -231.5, 9.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -233.4, 9.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -233.4, 9.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -235.3, 9.7 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -235.3, 9.7 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -201.5, -34 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -201.5, -34 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -255.7, 43.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -255.7, 43.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -244.6, 91.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -244.6, 91.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -304.7, 10.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -304.7, 10.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -340.2, 86.6 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -340.2, 86.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -249.1, 46.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -249.1, 46.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -248.8, -28.5 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -248.8, -28.5 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -488.4, 10.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -488.4, 10.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -569.1, 61.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -569.1, 61.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -633.9, 70 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -633.9, 70 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -655, 73 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -655, 73 , 0 );
--
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 2.4, -310.5 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 2.4, -310.5 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 1.7, -250.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 1.7, -250.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 1.1, -196 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 1.1, -196 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 0.6, -149.4 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 0.6, -149.4 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 0.1, -111.5 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 0.1, -111.5 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -0.2, -83.4 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -0.2, -83.4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -0.5, -66.4 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -0.5, -66.4 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 35.2, -105.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 35.2, -105.4 , 0 );
--
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 0, -64.4 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 0, -64.4 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -0.1, -62 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -0.1, -62 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -0.3, -59.8 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -0.3, -59.8 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -0.4, -57.6 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -0.4, -57.6 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -0.5, -55.5 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -0.5, -55.5 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -0.6, -53.5 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -0.6, -53.5 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -0.6, -51.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -0.6, -51.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -0.8, -49.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -0.8, -49.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -0.9, -48.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -0.9, -48.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -0.9, -47 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -0.9, -47 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -1, -45.8 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -1, -45.8 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -1.1, -44.8 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -1.1, -44.8 , 0 );

setScaleKey( spep_0 + 0, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 1 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 5.42, 5.42 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 6.07, 6.07 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 6.07, 6.07 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 7.37, 7.37 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 8.03, 8.03 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 8.03, 8.03 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 8.74, 8.74 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 8.74, 8.74 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 8.76, 8.76 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 8.76, 8.76 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 8.81, 8.81 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 8.81, 8.81 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 8.85, 8.85 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 8.85, 8.85 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 8.93, 8.93 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 8.95, 8.95 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 9, 9 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 9.04, 9.04 );
setScaleKey( spep_0 + 53 + OFFSET_X, 1, 9.04, 9.04 );
setScaleKey( spep_0 + 54 + OFFSET_X, 1, 9.06, 9.06 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 9.06, 9.06 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 9.08, 9.08 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 9.08, 9.08 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 9.1, 9.1 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 9.12, 9.12 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 9.15, 9.15 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 9.15, 9.15 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 9.19, 9.19 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 9.19, 9.19 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 9.23, 9.23 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 9.25, 9.25 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 9.25, 9.25 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 9.27, 9.27 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 9.27, 9.27 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 9.29, 9.29 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 9.29, 9.29 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 9.31, 9.31 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 9.31, 9.31 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 9.34, 9.34 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 9.34, 9.34 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 9.42, 9.42 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 9.42, 9.42 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 9.44, 9.44 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 9.44, 9.44 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 9.46, 9.46 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 9.46, 9.46 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 9.48, 9.48 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 9.55, 9.55 );
--
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 5.98, 5.98 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 6.93, 6.93 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 7.66, 7.66 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 7.66, 7.66 );
--
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 7.19, 7.19 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 7.19, 7.19 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 7.01, 7.01 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 7.01, 7.01 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 7.94, 7.94 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 7.94, 7.94 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 8.41, 8.41 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 8.41, 8.41 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 9.33, 9.33 );
--
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 6.84, 6.84 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 7.72, 7.72 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 8.7, 8.7 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 8.89, 8.89 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 8.99, 8.99 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 8.99, 8.99 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 9.09, 9.09 );
--
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.95, 1.95 );
--
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 8.16, 8.16 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 8.16, 8.16 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 6.58, 6.58 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 1.67, 1.67 );
--
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 497 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 498 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.42, 1.42 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 0 );
--
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 38.5 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 36.7 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 30.9 );
--
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -18.8 );
--
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 23 );
--
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 56.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 56.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 55.6 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 55.6 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 50.5 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 50.5 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 46.6 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 45.3 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, 45.3 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 43.4 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 41.8 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 40.2 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, 8 );
--
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 465 + OFFSET_X, 1, -22.8 );
--
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 516, 1, -22.8 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 458, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ズーム
SE002 = playSeVer2( spep_0 + 2, 1232, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 100, 1109, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 130, 1109, "", spep_0 + 174, 0, 4, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 160; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
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
--環境音
SE001_02 = playSeVer2( spep_0 + 300, 1269, "",spep_0 + 458, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 300, SE001_02, 25 );

--飛び込んでくる
SE006 = playSeVer2( spep_0 + 144, 1116, "",spep_0 + 200, 0, 24, -1);
SE007 = playSeVer2( spep_0 + 144, 1117, "",spep_0 + 200, 0, 22, -1);

--斬る
SE008 = playSeVer2( spep_0 + 166, 1004, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 176, 1143, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 176, 1153, "",spep_0 + 214, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 178, SE010, 79 );
SE011 = playSeVer2( spep_0 + 180, 1032, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 210, 1003, "", 0, 0, 0, -1);

--連続斬り１
SE013 = playSeVer2( spep_0 + 234, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 244, 1141, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 244, 1032, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 244, 1009, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 244, SE016 );

--連続斬り２
SE017 = playSeVer2( spep_0 + 260, 1141, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 260, 1031, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 260, 1010, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 260, SE019 );

--連続斬り３
SE020 = playSeVer2( spep_0 + 274, 1141, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 274, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 274, 1009, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 274, SE022 );

--横斬り
SE023 = playSeVer2( spep_0 + 294, 1189, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 300, 1143, "", spep_0 + 348, 0, 2, -1);
SE025 = playSeVer2( spep_0 + 300, 1032, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 300, 1187, "",spep_0 + 366, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 300, SE026, 65 );

--斬り返し
SE027 = playSeVer2( spep_0 + 348, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 348, 1187, "",spep_0 + 414, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 348, SE028, 65 );
SE029 = playSeVer2( spep_0 + 348, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE029, 79 );
SE030 = playSeVer2( spep_0 + 350, 1061, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 354, 1141, "", 0, 0, 0, -1);

--振りかぶる
SE032 = playSeVer2( spep_0 + 384, 1004, "",spep_0 + 418, 0, 18, -1);

--蹴り飛ばす
SE033 = playSeVer2( spep_0 + 410, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 410, 1010, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_0 + 420, 1121, "",spep_0 + 484, 0, 20, -1);

--壁激突
SE036 = playSeVer2( spep_0 + 464, 1159, "",spep_0 + 512 + 14, 0, 14, -1);

--壁破壊して敵とんでいく
SE037 = playSeVer2( spep_0 + 492, 1068, "",spep_0 + 512 + 14, 0, 12, -1);
SE038 = playSeVer2( spep_0 + 492, 1027, "",spep_0 + 512 + 16, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 516

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- カードカットイン～フィニッシュ ef_002 (358F)
------------------------------------------------------
MAX_FRAME_2 = 358;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 100 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 160 + OFFSET_X, 1, 0 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 224 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 100 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 100 + OFFSET_X, 1, -228.1, -519.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -228.1, -519.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -193.7, -374.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -193.7, -374.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -159.4, -229.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -159.4, -229.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -156.2, -229.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -156.2, -229.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -153.2, -230 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -153.2, -230 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -150, -230.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -150, -230.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -146.9, -230.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -146.9, -230.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -143.8, -231.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -143.8, -231.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -140.7, -231.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -140.7, -231.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -137.6, -232.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -137.6, -232.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -134.5, -232.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -134.5, -232.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -131.3, -233.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -131.3, -233.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -128.3, -233.5 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -128.3, -233.5 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -125.1, -233.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -125.1, -233.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -122, -234.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -122, -234.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -118.9, -234.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -118.9, -234.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -115.8, -235.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -115.8, -235.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -112.7, -235.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -112.7, -235.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -109.6, -236.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -109.6, -236.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -106.4, -236.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -106.4, -236.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -103.4, -236.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -103.4, -236.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -100.2, -237.4 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -100.2, -237.4 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -97.1, -237.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -97.1, -237.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -94, -238.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -94, -238.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -90.9, -238.7 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -90.9, -238.7 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -87.8, -239.1 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -87.8, -239.1 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -84.6, -239.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -84.6, -239.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -81.6, -240 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -81.6, -240 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -120.9, -390.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -120.9, -390.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -160.2, -541 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -160.2, -541 , 0 );
--
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -272.4, 771.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -272.4, 771.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -239.6, 622.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -239.6, 622.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -203.6, 463.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -203.6, 463.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -164.4, 293.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -164.4, 293.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -121.9, 114.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -121.9, 114.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -76.2, -75.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -76.2, -75.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -64.9, -111.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -64.9, -111.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -54.2, -148.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -54.2, -148.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -44.2, -185.1 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -44.2, -185.1 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -34.7, -222.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -34.7, -222.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -40.5, -226.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -40.5, -226.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -46.3, -230.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -46.3, -230.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -52.1, -234.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -52.1, -234.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -57.8, -238.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -57.8, -238.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -63.6, -242.5 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -63.6, -242.5 , 0 );

setScaleKey( spep_2 + 100 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 5.2, 5.2 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 4.01, 4.01 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 3.74, 3.74 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 7.08, 7.08 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 7.08, 7.08 );
--
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 5.84, 5.84 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 6.24, 6.24 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 7.04, 7.04 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 7.04, 7.04 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 7.44, 7.44 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 7.45, 7.45 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 7.47, 7.47 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 7.48, 7.48 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 7.49, 7.49 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 7.5, 7.5 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 7.5, 7.5 );

setRotateKey( spep_2 + 100 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 30.7 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 23.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 0 );
--
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 37.1 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 37.8 );

-- ** 音 ** --
--向かってくる
SE040 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 52, 0, 14, -1);

--斬る
SE043 = playSeVer2( spep_2 + 74, 1319, "",spep_2 + 200, 8, 28, -1);
setSeVolumeByWorkId( spep_2 + 74, SE043, 66 );
setStartTimeMs( SE043,  300 );

--振りかぶる
SE044 = playSeVer2( spep_2 + 60, 1004, "", 0, 0, 0, -1);

--斬る
SE045 = playSeVer2( spep_2 + 74, 1032, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 74, 1187, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 78, 1143, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 86, 1141, "", 0, 0, 0, -1);

--画面遷移
SE049 = playSeVer2( spep_2 + 86, 8, "", 0, 0, 0, -1);

--構えて向かっていく
SE050 = playSeVer2( spep_2 + 152, 1314, "",spep_2 + 234, 0, 34, -1);
SE051 = playSeVer2( spep_2 + 152, 1116, "",spep_2 + 206, 0, 28, -1);

--突き刺す
SE052 = playSeVer2( spep_2 + 202, 1061, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 206, 1120, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 210, 1143, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_2 + 242, 1067, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 242, 1024, "", 0, 0, 0, -1);

--風圧
SE057 = playSeVer2( spep_2 + 242, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 242, SE057, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 258 );
endPhase( spep_2 +  MAX_FRAME_2 );  -- 358


end
