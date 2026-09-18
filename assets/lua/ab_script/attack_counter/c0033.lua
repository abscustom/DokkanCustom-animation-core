--1031920:LR_ブロリー(怒り)_格闘カウンター
--sp_effect_b4_00392
--c0033

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164082; -- ef_001 敵掴む〜振り回す〜叩きつける
SP_01b = 164083; -- ef_001b 敵掴む〜振り回す〜叩きつける

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
 
ENABLE_AUTO_TIME_STRETCH(0.86);
 
OFFSET_X = -1;
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- 敵掴む〜振り回す〜叩きつける
------------------------------------------------------
 
MAX_FRAME_0 = 420;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵掴む〜振り回す〜叩きつける ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 敵掴む〜振り回す〜叩きつける ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 212 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 109 );
changeAnime( spep_0 + 72 + OFFSET_X, 1, 110 );
changeAnime( spep_0 + 116 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 136 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 180 + OFFSET_X, 1, 6 );

a = -50

setMoveKey( spep_0 + 0, 1, 2476.1, -400.3 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 2198.2, -400.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 2198.2, -400.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 2031.5, -400.3 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 2031.5, -400.3 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 1975.9, -400.3 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 1975.9, -400.3 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 1927.9, -424.4 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 1927.9, -424.4 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 1979.9, -288.4 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 1979.9, -288.4 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 1959.9, -440.4 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 1959.9, -440.4 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 2000, -360.4 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 2000, -360.4 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 2003.9, -472.4 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 2003.9, -472.4 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1907.9, -328.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 1907.9, -328.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1927.9, -412.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 1927.9, -412.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 1976, -304.3 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 1976, -304.3 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 1927.9, -388.4 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 1927.9, -388.4 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 1895.9, -312.4 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 1895.9, -312.4 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 1972, -396.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 1972, -396.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 1988, -300.3 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 1988, -300.3 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 1927.9, -376.4 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 1927.9, -376.4 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 1879.9, -324.3 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 1879.9, -324.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 1927.9, -368.3 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 1927.9, -368.3 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 1955.9, -332.4 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 1955.9, -332.4 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 1927.9, -368.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 1927.9, -368.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 1907.9, -340.4 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 1907.9, -340.4 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 1927.9, -368.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 1927.9, -368.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 1947.9, -360.4 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 1947.9, -360.4 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 1939.9, -380.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 1939.9, -380.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 1911.9, -360.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 1911.9, -360.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 1927.9, -376.3 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 1927.9, -376.3 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 1939.9, -360.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 1939.9, -360.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 1927.9, -376.3 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 1927.9, -376.3 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 1923.9, -360.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 1923.9, -360.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 1935.9, -376.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 1935.9, -376.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 636.4 + a, 293.9 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 636.4 + a, 293.9 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 654.4 + a, 300.9 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 654.4 + a, 300.9 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 634.4 + a, 286.4 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 634.4 + a, 286.4 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 628.7 + a, 304.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 628.7 + a, 304.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 643.4 + a, 289.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 643.4 + a, 289.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 652.4 + a, 300.9 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 652.4 + a, 300.9 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 637.4 + a, 294.4 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 637.4 + a, 294.4 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 626.7 + a, 305.7 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 626.7 + a, 305.7 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 637.4 + a, 295.4 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 637.4 + a, 295.4 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 651.4 + a, 305.9 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 651.4 + a, 305.9 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 633.4 + a, 295.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 633.4 + a, 295.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 626.7 + a, 307.7 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 626.7 + a, 307.7 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 637.4 + a, 298.4 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 637.4 + a, 298.4 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 643.4 + a, 280.9 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 643.4 + a, 280.9 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 629.4 + a, 276.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 629.4 + a, 276.4 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 620.7 + a, 288.7 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 620.7 + a, 288.7 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 593.4, 271.4 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 593.4, 271.4 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 593.4, 270.4 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 593.4, 270.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 586.9, 254.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 586.9, 254.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 471.3, 220.8 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 471.3, 220.8 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 475.2, 221.6 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 475.2, 221.6 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 479, 222.4 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 479, 222.4 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 266.6, 99.1 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 266.6, 99.1 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 270.5, 99.8 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 270.5, 99.8 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 274.3, 100.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 274.3, 100.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 26.3, 265.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 26.3, 265.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 30.1, 266.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 30.1, 266.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -97.9, 247.3 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -97.9, 247.3 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -94.1, 248.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -94.1, 248.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -186.7, 40.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -186.7, 40.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -203, 37 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -203, 37 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -219.5, 33.5 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -219.5, 33.5 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -506.8, 217.8 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -506.8, 217.8 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -527.2, 206.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -527.2, 206.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -575.3, 233.7 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -575.3, 233.7 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -555.7, 194.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -555.7, 194.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -540.1, 226.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -540.1, 226.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -489.7, 192 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -489.7, 192 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -467.1, 186.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -467.1, 186.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -452.6, 189 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -452.6, 189 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -448, 161.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -448, 161.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -445.4, 164.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -445.4, 164.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -442.8, 146.8 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -442.8, 146.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -440.1, 129.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -440.1, 129.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -437.4, 112.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -437.4, 112.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -625.2, 315.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -625.2, 315.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -627.2, 291.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -627.2, 291.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -629.2, 267.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -629.2, 267.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -491.3, 197.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -491.3, 197.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -471.2, -36 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -471.2, -36 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -627.2, -198 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -627.2, -198 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -629.9, -196.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -629.9, -196.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -632.5, -195.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -632.5, -195.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -635.2, -194 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -635.2, -194 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -526.3, -677.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -526.3, -677.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -530.3, -641.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -530.3, -641.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -420.4, -756.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -420.4, -756.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -400.3, -744.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -400.3, -744.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -420.3, -736.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -420.3, -736.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -412.3, -704.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -412.3, -704.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -380.3, -676.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -380.3, -676.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -364.4, -616.2 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -364.4, -616.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -384.3, 33.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -384.3, 33.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -260.3, 1669.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -260.3, 1669.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -136.2, 3306.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -136.2, 3306.3 , 0 );

setScaleKey( spep_0 + 0, 1, 17.98, 17.98 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 17.98, 17.98 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 8, 8 );

setRotateKey( spep_0 + 0, 1, -19.3 );
setRotateKey( spep_0 + 71 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 72 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -92.6 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -92.6 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -97.8 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -97.8 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -100 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -100 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -100.7 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -100.7 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -101.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -101.1 );

setBlendColor( spep_0 + 146 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.4 );
setBlendColor( spep_0 + 152 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_0 + 211 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.5 );
setBlendColor( spep_0 + 212 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

--敵の動き2
setDisp( spep_0 + 274 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 424 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 274 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 274 + OFFSET_X, 1, 215.2, -27.4 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 215.2, -27.4 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 281.4, -53.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 281.4, -53.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 101.5, -113.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 101.5, -113.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 333.5, 331.1 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 333.5, 331.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 105.4, 116.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 105.4, 116.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 125.9, 140 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 125.9, 140 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 37.2, 12.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 37.2, 12.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 58.4, 69.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 58.4, 69.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 44.6, 37.1 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 44.6, 37.1 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 55.9, 68.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 55.9, 68.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 30.7, 18.5 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 30.7, 18.5 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 95.6, 48.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 95.6, 48.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 77.4, 16.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 77.4, 16.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 109.7, 49.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 109.7, 49.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 96.4, 13.7 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 96.4, 13.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 115.2, 18.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 115.2, 18.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 100, 3.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 100, 3.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 115.1, 6.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 115.1, 6.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 108.4, 2.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 108.4, 2.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 114.9, 6.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 114.9, 6.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 110, 2.2 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 110, 2.2 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 113.7, 4.8 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 113.7, 4.8 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 108.1, 2.5 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 108.1, 2.5 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 114.4, 6.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 114.4, 6.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 109.6, 2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 109.6, 2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 113.3, 4.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 113.3, 4.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 107.7, 2.3 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 107.7, 2.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 114, 6.1 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 114, 6.1 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 109.2, 1.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 109.2, 1.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 112.9, 4.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 112.9, 4.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 107.3, 2.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 107.3, 2.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 113.6, 5.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 113.6, 5.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 108.8, 1.6 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 112.5, 4.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 112.5, 4.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 106.9, 1.9 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 106.9, 1.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 113.2, 5.6 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 113.2, 5.6 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 108.4, 1.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 108.4, 1.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 112.1, 4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 112.1, 4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 106.5, 1.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 106.5, 1.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 112.8, 5.4 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 112.8, 5.4 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 108, 1.2 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 108, 1.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 111.7, 3.8 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 111.7, 3.8 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 106.1, 1.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 106.1, 1.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 112.4, 5.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 112.4, 5.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 107.6, 1 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 107.6, 1 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 111.2, 3.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 111.2, 3.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 105.7, 1.2 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 105.7, 1.2 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 112, 5 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 112, 5 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 107.2, 0.8 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 107.2, 0.8 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 110.8, 3.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 110.8, 3.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 105.3, 1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 105.3, 1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 111.6, 4.8 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 111.6, 4.8 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 106.8, 0.6 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 106.8, 0.6 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 110.4, 3.1 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 110.4, 3.1 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 104.9, 0.8 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 104.9, 0.8 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 111.1, 4.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 111.1, 4.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 106.4, 0.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 106.4, 0.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 110, 2.9 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 110, 2.9 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 104.5, 0.6 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 104.5, 0.6 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 110.7, 4.3 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 110.7, 4.3 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 106, 0.2 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 106, 0.2 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 109.6, 2.7 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 109.6, 2.7 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 104.2, 0.4 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 104.2, 0.4 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 110.3, 4.1 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 110.3, 4.1 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 105.6, 0 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 105.6, 0 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 109.2, 2.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 109.2, 2.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 103.8, 0.2 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 103.8, 0.2 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 109.9, 3.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 109.9, 3.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 105.2, -0.2 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 105.2, -0.2 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 108.8, 2.3 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 108.8, 2.3 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 103.4, 0 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 103.4, 0 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 109.5, 3.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 109.5, 3.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 104.8, -0.4 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 104.8, -0.4 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 108.4, 2.1 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 108.4, 2.1 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 103, -0.2 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 103, -0.2 , 0 );

setScaleKey( spep_0 + 274 + OFFSET_X, 1, 9.99, 9.99 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 9.99, 9.99 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 6.36, 6.36 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.65, 1.65 );

setRotateKey( spep_0 + 274 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -29.1 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -35.1 );

-- ** 音 ** --
--攻撃受け止める
SE001 = playSeVer2( spep_0 + 2, 1189, "", 0, 0, 0, 1.0);
SE002 = playSeVer2( spep_0 + 10, 1006, "", 0, 0, 0, 1.0);
SE003 = playSeVer2( spep_0 + 10, 1010, "",spep_0 + 40, 0, 14, 1.0);
SE004 = playSeVer2( spep_0 + 10, 1190, "", 0, 0, 0, 1.0);

--地響き
SE006 = playSeVer2( spep_0 + 34, 1226, "",spep_0 + 292, 0, 110, -1);
setSeVolumeByWorkId( spep_0 + 34, SE006, 52 );

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 94; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
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
--振りかぶる
SE005 = playSeVer2( spep_0 + 96, 1278, "",spep_0 + 300, 24, 60, -1);
setSeVolumeByWorkId( spep_0 + 96, SE005, 58 );
setStartTimeMs( SE005,  1433 );
SE007 = playSeVer2( spep_0 + 100, 1116, "",spep_0 + 168, 0, 36, -1);
SE008 = playSeVer2( spep_0 + 112, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE008, 73 );
SE009 = playSeVer2( spep_0 + 126, 1004, "", 0, 0, 0, -1);

--持ち上げる
SE010 = playSeVer2( spep_0 + 190, 1258, "",spep_0 + 306, 0, 24, -1);
SE011 = playSeVer2( spep_0 + 208, 1304, "",spep_0 + 332, 0, 70, -1);
setSeVolumeByWorkId( spep_0 + 208, SE011, 69 );
SE012 = playSeVer2( spep_0 + 224, 1072, "", 0, 0, 0, -1);

--地面に叩きつける
SE013 = playSeVer2( spep_0 + 280, 1041, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 280, 1159, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 284, 1061, "", 0, 0, 0, -1);

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 340, SE013, 0 );
    stopSe( spep_0 + 340, SE014, 0 );
    stopSe( spep_0 + 340, SE015, 0 );


    setDisp( spep_0 + 340, 1, 1 );
    endPhase( spep_0 + 342 );

     
else

------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------


-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 290 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 420F

end