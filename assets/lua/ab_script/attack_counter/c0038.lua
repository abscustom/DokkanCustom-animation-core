--1034220:UR_ビルス_格闘カウンター
--sp_effect_b1_00370
--c0038

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164493; --開始〜フィニッシュ ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------


spep_0 = 28; --冒頭顔カットイン入るため28F固定

setupMovie(spep_0 , SP_01, 0, 1);

------------------------------------------------------
-- 開始〜フィニッシュ
------------------------------------------------------

MAX_FRAME_0 = 544;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開始〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);
-------------------------------------------------
-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 254 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 109 );
changeAnime( spep_0 + 116 + OFFSET_X, 1, 2 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 0, 1, 745.9, -268.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 663.3, -252.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 663.3, -252.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 563.1, -232.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 563.1, -232.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 451.6, -211.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 451.6, -211.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 360, -193.2 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 360, -193.2 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 298.1, -181.1 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 298.1, -181.1 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 254.8, -172.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 254.8, -172.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 222.3, -166.4 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 222.3, -166.4 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 196.3, -161.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 196.3, -161.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 174.9, -157.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 174.9, -157.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 156.5, -153.5 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 156.5, -153.5 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 140.5, -150.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 140.5, -150.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 126.3, -147.7 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 126.3, -147.7 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 113.6, -145.2 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 113.6, -145.2 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 102, -142.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 102, -142.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 91.3, -140.8 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 91.3, -140.8 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 81.5, -138.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 81.5, -138.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 72.3, -137.1 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 72.3, -137.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 63.7, -135.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 63.7, -135.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 55.7, -133.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 55.7, -133.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 47.5, -132.4 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 47.5, -132.4 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 6.5, -156.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 6.5, -156.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -11.3, -158.2 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -11.3, -158.2 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -33.3, -195.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -33.3, -195.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -59.7, -187.6 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -59.7, -187.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -58.5, -202.6 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -58.5, -202.6 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -67.7, -202.5 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -67.7, -202.5 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -79.9, -211.7 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -79.9, -211.7 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -84.6, -212.6 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -84.6, -212.6 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -237.1, -1051.7 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -237.1, -1051.7 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -246.8, -1052.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -246.8, -1052.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -257, -1053 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -257, -1053 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -267.7, -1053.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -267.7, -1053.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -278.9, -1054.9 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -278.9, -1054.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -290.6, -1056.2 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -290.6, -1056.2 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -302.8, -1057.6 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -302.8, -1057.6 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -315.5, -1059.2 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -315.5, -1059.2 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -328.7, -1061 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -328.7, -1061 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -342.4, -1063 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -342.4, -1063 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -356.7, -1065.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -356.7, -1065.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -371.5, -1067.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -371.5, -1067.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -386.9, -1069.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -386.9, -1069.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -402.8, -1072.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -402.8, -1072.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -419.3, -1075.4 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -419.3, -1075.4 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -435.9, -1078.3 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -435.9, -1078.3 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -452, -1080.9 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -452, -1080.9 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -467.7, -1083.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -467.7, -1083.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -483, -1085.8 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -483, -1085.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -497.8, -1087.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -497.8, -1087.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -512.2, -1089.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -512.2, -1089.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -526.1, -1091.7 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -526.1, -1091.7 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -529.4, -1092.9 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -529.4, -1092.9 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -532.3, -1093.8 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -532.3, -1093.8 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -534.6, -1094.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -534.6, -1094.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -536.5, -1095.2 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -536.5, -1095.2 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -537.7, -1095.7 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -537.7, -1095.7 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -538.5, -1096 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -538.5, -1096 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -538.8, -1096 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -538.8, -1096 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 225.4, -147.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 225.4, -147.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 155.3, -159.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 155.3, -159.4 , 0 );

setScaleKey( spep_0 + 0, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 13 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 4.85, 4.85 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 10.68, 10.68 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 10.68, 10.68 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 10.72, 10.72 );
setScaleKey( spep_0 + 61 + OFFSET_X, 1, 10.72, 10.72 );
setScaleKey( spep_0 + 62 + OFFSET_X, 1, 10.75, 10.75 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 10.75, 10.75 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 10.79, 10.79 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 10.84, 10.84 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 10.84, 10.84 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 10.89, 10.89 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 10.89, 10.89 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 10.94, 10.94 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 10.94, 10.94 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 10.99, 10.99 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 10.99, 10.99 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 11.05, 11.05 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 11.05, 11.05 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 11.11, 11.11 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 11.11, 11.11 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 11.17, 11.17 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 11.17, 11.17 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 11.24, 11.24 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 11.24, 11.24 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 11.31, 11.31 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 11.31, 11.31 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 11.39, 11.39 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 11.39, 11.39 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 11.47, 11.47 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 11.47, 11.47 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 11.55, 11.55 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 11.55, 11.55 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 11.62, 11.62 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 11.62, 11.62 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 11.69, 11.69 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 11.69, 11.69 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 11.76, 11.76 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 11.76, 11.76 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 11.83, 11.83 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 11.83, 11.83 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 11.89, 11.89 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 11.89, 11.89 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 11.95, 11.95 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 11.95, 11.95 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 11.98, 11.98 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 11.98, 11.98 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 11.99, 11.99 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 11.99, 11.99 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 12.01, 12.01 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 12.01, 12.01 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 12.02, 12.02 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 12.02, 12.02 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 12.03, 12.03 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 12.03, 12.03 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 12.04, 12.04 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 12.04, 12.04 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.92, 2.92 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 43 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 44 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 45 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 46 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 47 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 49 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 51 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 53 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 54 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 55 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 56 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 57 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 0 );


--敵の動き2
setDisp( spep_0 + 348 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 390 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 348 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 370 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 348 + OFFSET_X, 1, 47.1, -74 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 47.1, -74 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 122.9, -102.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 122.9, -102.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 150.9, -130.6 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 150.9, -130.6 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 112.9, -78.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 112.9, -78.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 232.5, -122.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 232.5, -122.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 369.4, -88.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 369.4, -88.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 421.6, -83 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 421.6, -83 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 501, -109.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 501, -109.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 559.8, -89 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 559.8, -89 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 559.9, -110.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 559.9, -110.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 567.2, -82.3 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 567.2, -82.3 , 0 );

setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 2.42, 2.42 );

setRotateKey( spep_0 + 348 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, -30.9 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -28.5 );


--敵の動き3
setDisp( spep_0 + 408 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 428 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 408 + OFFSET_X, 1, 87, -161.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 87, -161.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 90.6, -162.7 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 90.6, -162.7 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 97, -164.9 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 97, -164.9 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 108.2, -157.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 108.2, -157.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 82.4, -155.6 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 82.4, -155.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 74.4, -192.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 74.4, -192.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 97.1, -189.6 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 97.1, -189.6 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 79.5, -161.5 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 79.5, -161.5 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 35.4, -163.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 35.4, -163.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 22.6, -205.4 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 22.6, -205.4 , 0 );

setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_0 + 408 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 23.7 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 30.5 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 30.5 );


-- ** 音 ** --
--飛び越える
SE001 = playSeVer2( spep_0 + 3, 1117, "",spep_0 + 101, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 3, SE001, 72 );

--敵振りかぶる
SE002 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 68 );

--飛び越える
SE003 = playSeVer2( spep_0 + 32, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 63 );
SE004 = playSeVer2( spep_0 + 32, 1000, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 32, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE005, 148 );
SE006 = playSeVer2( spep_0 + 40, 1497, "",spep_0 + 109, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 52 );
SE007 = playSeVer2( spep_0 + 55, 1508, "", 0, 0, 0, -1);

--着地
SE008 = playSeVer2( spep_0 + 116, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE008, 200 );
SE009 = playSeVer2( spep_0 + 124, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE009, 174 );

--敵驚く
SE010 = playSeVer2( spep_0 + 133, 48, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 133, SE010, 75 );

--瞬間移動
SE011 = playSeVer2( spep_0 + 192, 1109, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 192, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE012, 56 );
SE013 = playSeVer2( spep_0 + 226, 1109, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 226, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE014, 55 );

--集中線
SE015 = playSeVer2( spep_0 + 254, 1175, "",spep_0 + 386, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 254, SE015, 50 );
SE016 = playSeVer2( spep_0 + 254, 1174, "",spep_0 + 382, 0, 15, -1);
SE017 = playSeVer2( spep_0 + 254, 1475, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 254, 1264, "",spep_0 + 384, 0, 33, -1);
setSeVolumeByWorkId( spep_0 + 254, SE018, 65 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 310; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
    pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
    stopMovie( SP_dodge + 9 ); -- 停止

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    pauseAll( SP_dodge, 67 );

    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

do return end
else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 音 ** --
--デコピン
SE019 = playSeVer2( spep_0 + 352, 1189, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 360, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE020, 140 );
SE021 = playSeVer2( spep_0 + 360, 1006, "", 0, 0, 0, -1);

--地面激突
SE022 = playSeVer2( spep_0 + 404, 1159, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 404, 1168, "", 0, 0, 0, -1);


------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 542, SE022, 0 );
    stopSe( spep_0 + 542, SE023, 0 );
    stopMovie( spep_0 + 542 ); -- 停止

    setDisp( spep_0 + 542, 1, 1 );
    changeAnime( spep_0 + 542, 1, 107 );

    endPhase( spep_0 + 544 );

else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------
-- ** 音 ** --


-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 408 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 -4 ); -- 544F -4F

end