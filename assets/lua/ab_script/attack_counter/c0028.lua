--4030450:LR_超ベジット_通常技カウンター
--sp_effect_b1_00309
--c0028

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163511; --ef_001 連続攻撃
SP_01b = 163512; --ef_001b 連続攻撃 裏

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

ENABLE_AUTO_TIME_STRETCH(0.78);
 
OFFSET_X = -1;
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- カウンター
------------------------------------------------------
 
MAX_FRAME_0 = 290;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001 連続攻撃
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
 
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b 連続攻撃 裏
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 103 );
changeAnime( spep_0 + 16 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 17 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 18 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 19 + OFFSET_X, 1, 111 );
changeAnime( spep_0 + 20 + OFFSET_X, 1, 111 ); -- ここでパンチモーション切り替え
changeAnime( spep_0 + 32 + OFFSET_X, 1, 114 );
changeAnime( spep_0 + 42 + OFFSET_X, 1, 110 );
changeAnime( spep_0 + 52 + OFFSET_X, 1, 113 );
changeAnime( spep_0 + 62 + OFFSET_X, 1, 111 ); -- 90〜91F パンチモーション切り替え
changeAnime( spep_0 + 72 + OFFSET_X, 1, 114 );
changeAnime( spep_0 + 82 + OFFSET_X, 1, 110 );
changeAnime( spep_0 + 92 + OFFSET_X, 1, 113 );
changeAnime( spep_0 + 102 + OFFSET_X, 1, 111 ); -- 130〜131F パンチモーション切り替え
changeAnime( spep_0 + 152 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 0 , 1, 314.2, 35.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 289.2, 36.4 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 289.2, 36.4 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 264.8, 37.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 264.8, 37.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 241.5, 38.1 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 241.5, 38.1 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 220, 39 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 220, 39 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 200.8, 39.9 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 200.8, 39.9 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 184.5, 40.7 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 184.5, 40.7 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 171.8, 41.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 171.8, 41.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 136.2, 34.5 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 136.2, 34.5 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 140, 36.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 140, 36.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 149, 37.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 149, 37.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 191.2, 52.5 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 191.2, 52.5 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 197.4, 46.5 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 197.4, 46.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 187.6, 47.5 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 187.6, 47.5 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 188.8, 48.5 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 188.8, 48.5 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 185.1, 41.5 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 185.1, 41.5 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 204.8, 25.5 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 204.8, 25.5 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 217, 36.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 217, 36.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 205.2, 37.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 205.2, 37.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 206.5, 35.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 206.5, 35.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 201.7, 32.5 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 201.7, 32.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 133.9, 46 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 133.9, 46 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 140.1, 63 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 140.1, 63 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 141.4, 64 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 141.4, 64 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 137.6, 57 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 137.6, 57 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 129.8, 58 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 129.8, 58 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 143.5, 50.5 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 143.5, 50.5 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 143.8, 43.5 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 143.8, 43.5 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 145, 41.5 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 145, 41.5 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 140.2, 38.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 140.2, 38.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 137.4, 41.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 137.4, 41.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 108.7, 56.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 108.7, 56.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 120.9, 48.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 120.9, 48.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 117.1, 41.5 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 117.1, 41.5 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 113.4, 43.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 113.4, 43.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 110.6, 46.5 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 110.6, 46.5 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 98.8, 78.5 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 98.8, 78.5 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 110, 66.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 110, 66.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 106.3, 59.5 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 106.3, 59.5 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 98.5, 60.5 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 98.5, 60.5 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 102.7, 65.5 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 102.7, 65.5 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 87.9, 27.5 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 87.9, 27.5 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 92.2, 41.5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 92.2, 41.5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 86.4, 39.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 86.4, 39.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 78.6, 42.5 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 78.6, 42.5 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 79.8, 43.5 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 79.8, 43.5 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 61.1, 50.5 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 61.1, 50.5 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 68.3, 37.5 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 68.3, 37.5 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 72.5, 42.5 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 72.5, 42.5 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 59.7, 42.5 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 59.7, 42.5 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 61, 43.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 61, 43.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 37.2, 30.5 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 37.2, 30.5 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 41.4, 42.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 41.4, 42.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 45.6, 47.5 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 45.6, 47.5 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 33.9, 48.5 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 33.9, 48.5 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 35.1, 46.5 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 35.1, 46.5 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 431.7, -127.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 431.7, -127.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 403.5, -106.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 403.5, -106.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 375.3, -86.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 375.3, -86.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 347.9, -68.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 347.9, -68.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 322.5, -51.1 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 322.5, -51.1 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 299.7, -36.1 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 299.7, -36.1 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 279.8, -23.1 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 279.8, -23.1 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 262.4, -11.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 262.4, -11.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 247.1, -1.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 247.1, -1.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 233.6, 6.6 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 233.6, 6.6 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 221.4, 13.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 221.4, 13.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 210.4, 20.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 210.4, 20.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 200.2, 25.9 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 200.2, 25.9 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 190.8, 30.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 190.8, 30.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 182, 35.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 182, 35.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 173.7, 38.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 173.7, 38.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 165.9, 42.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 165.9, 42.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 158.4, 45.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 158.4, 45.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 151.2, 48.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 151.2, 48.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 144.6, 50.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 144.6, 50.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 67, 36.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 67, 36.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 69, 36.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 69, 36.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 186.2, -60 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 186.2, -60 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 253.5, -86.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 253.5, -86.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 342.1, -143.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 342.1, -143.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 359.5, -211.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 359.5, -211.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 379.5, -230 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 379.5, -230 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 467.6, -329 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 467.6, -329 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 461.2, -335.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 461.2, -335.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 479.6, -337.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 479.6, -337.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 789.4, -357.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 789.4, -357.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 809.6, -364.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 809.6, -364.4 , 0 );

setScaleKey( spep_0 + 0 , 1, 1.19, 1.19 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 11 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 15 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 17 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 19 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.49, 2.49 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -46 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -46 );

-- ** 音 ** --
--敵向かってくる
SE001 = playSeVer2( spep_0 + 0, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
SE002 = playSeVer2( spep_0 + 0, 1117, "",spep_0 + 32, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );

--敵の攻撃受ける
SE003 = playSeVer2( spep_0 + 12, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 18, 1012, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 18, 1006, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 24, 1012, "",spep_0 + 42, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 24, SE006, 75 );
setPitch( spep_0 + 24, SE006, -100 );
setTimeStretch( SE006, 0.93, 30, 4 );
SE007 = playSeVer2( spep_0 + 34, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 75 );
SE008 = playSeVer2( spep_0 + 36, 1007, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 44, 1012, "",spep_0 + 64, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 44, SE009, 83 );
setPitch( spep_0 + 44, SE009, 100 );
setTimeStretch( SE009, 1.07, 30, 4 );
SE010 = playSeVer2( spep_0 + 50, 1012, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 50, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE011, 81 );
SE012 = playSeVer2( spep_0 + 58, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE012, 59 );
SE013 = playSeVer2( spep_0 + 64, 1012, "",spep_0 + 88, 0, 12, -1);
setPitch( spep_0 + 64, SE013, -100 );
setTimeStretch( SE013, 0.93, 30, 4 );
SE014 = playSeVer2( spep_0 + 64, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 64, SE014, 79 );
SE015 = playSeVer2( spep_0 + 78, 1012, "",spep_0 + 98, 0, 6, -1);
SE016 = playSeVer2( spep_0 + 84, 1012, "",spep_0 + 102, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 84, SE016, 73 );
SE017 = playSeVer2( spep_0 + 90, 1012, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 90, 1013, "", 0, 0, 0, -1);

--画面遷移
SE019 = playSeVer2( spep_0 + 100, 8, "",spep_0 + 176, 0, 36, 0.6);

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    stopSe( SP_dodge - 10, SE019, 0 );
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
--反撃
SE020 = playSeVer2( spep_0 + 142, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 150, 1120, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 150, 1187, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 198, SE019, 0 );
    stopSe( spep_0 + 198, SE020, 0 );
    stopSe( spep_0 + 198, SE021, 0 );
    stopSe( spep_0 + 198, SE022, 0 );

    setDisp( spep_0 + 198, 1, 1 );
    endPhase( spep_0 + 200 );

else

------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 166 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 290

end