--1032450:UR_トランクス(青年期)_必殺技：バーニングアタック
--sp_effect_a1_00517
--sp2955

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164308; --カード前：前面 ef_001
SP_01b = 164309; --カード前：後ろ ef_001b
SP_02  = 164310; --カード後 ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 318;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前：前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前：後(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 54 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 54 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 58 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 94 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 98 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 112 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 116 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 118 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 124 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 202 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 54 + OFFSET_X, 1, 170, -28.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 170, -28.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 144.6, -30 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 144.6, -30 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 221.8, 6.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 221.8, 6.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 142.1, -32.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 142.1, -32.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 229.9, 36.7 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 229.9, 36.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 199.4, 26.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 199.4, 26.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 190.1, 24.7 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 190.1, 24.7 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 202, 30.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 202, 30.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 192.8, 29.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 192.8, 29.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 204.7, 35.3 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 204.7, 35.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 199.1, 17.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 199.1, 17.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 196.8, 35.9 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 196.8, 35.9 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 208.7, 42.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 208.7, 42.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 199.5, 40.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 199.5, 40.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 211.4, 46.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 211.4, 46.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 202.2, 44.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 202.2, 44.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 214, 51.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 214, 51.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 204.8, 49.4 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 204.8, 49.4 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 216.7, 55.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 216.7, 55.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 211.1, 37.8 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 211.1, 37.8 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 142.5, 43.4 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 142.5, 43.4 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 161.8, 75.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 161.8, 75.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 161.3, 76.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 161.3, 76.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 160.8, 77.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 160.8, 77.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 160.3, 78.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 160.3, 78.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 159.9, 79.1 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 159.9, 79.1 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 159.4, 79.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 159.4, 79.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 158.9, 80.8 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 158.9, 80.8 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 86.6, 58.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 86.6, 58.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 92.1, 38.4 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 92.1, 38.4 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 133.3, 29.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 133.3, 29.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 122.5, 38.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 122.5, 38.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 105.5, 38.4 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 105.5, 38.4 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 147.5, 113.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 147.5, 113.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 274.2, 234.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 274.2, 234.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 401, 355.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 401, 355.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 527.7, 476.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 527.7, 476.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 654.5, 597.4 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 654.5, 597.4 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -147.4, -288.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -147.4, -288.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -10.8, -15.8 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -10.8, -15.8 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 33.5, 72.5 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 33.5, 72.5 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 62.3, 130.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 62.3, 130.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 83.4, 172 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 83.4, 172 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 99.5, 204.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 99.5, 204.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 112.3, 229.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 112.3, 229.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 122.6, 250.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 122.6, 250.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 131, 267.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 131, 267.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 138.1, 281.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 138.1, 281.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 144, 293.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 144, 293.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 149.2, 303.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 149.2, 303.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 153.7, 312.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 153.7, 312.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 157.7, 320.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 157.7, 320.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 161.5, 328 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 161.5, 328 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 165.3, 335.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 165.3, 335.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 169.1, 343 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 169.1, 343 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 173.2, 351.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 173.2, 351.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -283.7, -557.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -283.7, -557.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -169.2, -421.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -169.2, -421.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -51.7, -285.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -51.7, -285.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 65.8, -150.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 65.8, -150.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 68.4, -147.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 68.4, -147.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 71, -144.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 71, -144.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 73.6, -142 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 73.6, -142 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 76.2, -139 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 76.2, -139 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 78.8, -136.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 78.8, -136.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 81.4, -133.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 81.4, -133.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 84.1, -130.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 84.1, -130.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 86.7, -127.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 86.7, -127.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 89.3, -124.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 89.3, -124.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 91.9, -121.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 91.9, -121.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 94.5, -118.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 94.5, -118.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 95.7, -88.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 95.7, -88.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 101, -142.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 101, -142.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 133.9, -137.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 133.9, -137.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 153.6, -198.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 153.6, -198.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 145.9, -199.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 145.9, -199.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 153.8, -257.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 153.8, -257.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 161.7, -264.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 161.7, -264.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 172.7, -293.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 172.7, -293.3 , 0 );

setScaleKey( spep_0 + 54 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.07, 3.07 );

setRotateKey( spep_0 + 54 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 61 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 65 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 69 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 73 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, -7 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 47.9 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 48 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 48 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 48.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 48 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 48 );


--敵の動き2
setDisp( spep_0 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 240 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, 163.1, 89.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 163.1, 89.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 113.7, 62.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 113.7, 62.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 85.6, 47.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 85.6, 47.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 65.6, 36.5 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 65.6, 36.5 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 50.2, 28.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 50.2, 28.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 38, 21.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 38, 21.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 28.1, 16.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 28.1, 16.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 20.1, 11.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 20.1, 11.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 13.7, 8.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 13.7, 8.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 8.6, 5.5 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 8.6, 5.5 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 4.7, 3.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 4.7, 3.4 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 12.33, 12.33 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 12.33, 12.33 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 240 + OFFSET_X, 1, 171 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 171 );


-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1019, "",spep_0 + 60, 0, 14, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 34, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 6, SE004, 0);
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
--膝蹴り
SE005 = playSeVer2( spep_0 + 52, 1153, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 52, 1047, "", 0, 0, 0, -1);

--連打
SE007 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 148 );
SE008 = playSeVer2( spep_0 + 90, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 90, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 104, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 104, 1000, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 114, 1000, "", 0, 0, 0, -1);

--蹴り上げる
SE013 = playSeVer2( spep_0 + 114, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_0 + 126, 1183, "",spep_0 + 232, 0, 40, -1);

--瞬間移動
SE015 = playSeVer2( spep_0 + 168, 1109, "", 0, 0, 0, -1);

--叩きつける
SE016 = playSeVer2( spep_0 + 194, 1120, "", 0, 0, 0, -1);

--敵落ちていく
SE017 = playSeVer2( spep_0 + 208, 1121, "",spep_0 + 286, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 208, SE017, 73 );

--地面激突
SE018 = playSeVer2( spep_0 + 256, 1159, "",spep_0 + 340, 0, 16, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 318f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--気弾溜め
SE020 = playSeVer2( spep_1 + 90, 1282, "",spep_2 + 138, 0, 22, -1);
setPitch( spep_1 + 90, SE020, -100 );
setTimeStretch( SE020, 0.93, 30, 4 );
SE021 = playSeVer2( spep_1 + 90, 1124, "",spep_2 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 90, SE021, 63 );
SE022 = playSeVer2( spep_1 + 90, 1274, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 90, 1296, "",spep_2 + 130, 0, 20, -1);


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 320;

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- カード後(ef_002)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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


-- ** 音 ** --
--気弾発射
SE025 = playSeVer2( spep_2 + 106, 1145, "",spep_2 + 232, 0, 28, -1);
SE026 = playSeVer2( spep_2 + 106, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 106, 1177, "",spep_2 + 228, 0, 26, -1);

--気弾飛んでいく
SE028 = playSeVer2( spep_2 + 156, 1021, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_2 + 198, 1067, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 198, 1188, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 206); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 320f -0f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 318;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード前：前面(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- カード前：後(ef_001b)
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 54 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 218 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 54 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 58 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 94 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 98 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 112 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 116 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 118 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 124 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 202 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 54 + OFFSET_X, 1, -170, -28.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -170, -28.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -144.6, -30 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -144.6, -30 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -221.8, 6.3 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -221.8, 6.3 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -142.1, -32.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -142.1, -32.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -229.9, 36.7 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -229.9, 36.7 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -199.4, 26.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -199.4, 26.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -190.1, 24.7 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -190.1, 24.7 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -202, 30.9 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -202, 30.9 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -192.8, 29.2 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -192.8, 29.2 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -204.7, 35.3 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -204.7, 35.3 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -199.1, 17.5 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -199.1, 17.5 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -196.8, 35.9 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -196.8, 35.9 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -208.7, 42.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -208.7, 42.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -199.5, 40.4 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -199.5, 40.4 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -211.4, 46.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -211.4, 46.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -202.2, 44.9 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -202.2, 44.9 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -214, 51.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -214, 51.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -204.8, 49.4 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -204.8, 49.4 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -216.7, 55.6 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -216.7, 55.6 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -211.1, 37.8 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -211.1, 37.8 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -142.5, 43.4 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -142.5, 43.4 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -161.8, 75.6 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -161.8, 75.6 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -161.3, 76.5 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -161.3, 76.5 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -160.8, 77.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -160.8, 77.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -160.3, 78.2 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -160.3, 78.2 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -159.9, 79.1 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -159.9, 79.1 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -159.4, 79.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -159.4, 79.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -158.9, 80.8 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -158.9, 80.8 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -86.6, 58.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -86.6, 58.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -92.1, 38.4 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -92.1, 38.4 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -133.3, 29.4 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -133.3, 29.4 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -122.5, 38.4 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -122.5, 38.4 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -105.5, 38.4 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -105.5, 38.4 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -147.5, 113.9 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -147.5, 113.9 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -274.2, 234.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -274.2, 234.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -401, 355.6 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -401, 355.6 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -527.7, 476.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -527.7, 476.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -654.5, 597.4 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -654.5, 597.4 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 147.4, -288.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 147.4, -288.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 10.8, -15.8 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 10.8, -15.8 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -33.5, 72.5 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -33.5, 72.5 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -62.3, 130.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -62.3, 130.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -83.4, 172 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -83.4, 172 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -99.5, 204.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -99.5, 204.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -112.3, 229.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -112.3, 229.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -122.6, 250.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -122.6, 250.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -131, 267.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -131, 267.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -138.1, 281.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -138.1, 281.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -144, 293.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -144, 293.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -149.2, 303.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -149.2, 303.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -153.7, 312.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -153.7, 312.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -157.7, 320.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -157.7, 320.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -161.5, 328 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -161.5, 328 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -165.3, 335.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -165.3, 335.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -169.1, 343 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -169.1, 343 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -173.2, 351.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -173.2, 351.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 286.7, -556.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 286.7, -556.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 169.2, -421.1 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 169.2, -421.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 51.7, -285.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 51.7, -285.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -65.8, -150.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -65.8, -150.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -68.4, -147.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -68.4, -147.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -71, -144.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -71, -144.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -73.6, -142 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -73.6, -142 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -76.2, -139 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -76.2, -139 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -78.8, -136.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -78.8, -136.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -81.4, -133.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -81.4, -133.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -84.1, -130.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -84.1, -130.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -86.7, -127.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -86.7, -127.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -89.3, -124.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -89.3, -124.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -91.9, -121.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -91.9, -121.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -94.5, -118.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -94.5, -118.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -95.7, -88.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -95.7, -88.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -101, -142.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -101, -142.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -133.9, -137.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -133.9, -137.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -153.6, -198.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -153.6, -198.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -145.9, -199.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -145.9, -199.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -153.8, -257.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -153.8, -257.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -161.7, -264.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -161.7, -264.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -172.7, -293.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -172.7, -293.3 , 0 );

setScaleKey( spep_0 + 54 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 4.65, 4.65 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.07, 3.07 );

setRotateKey( spep_0 + 54 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 61 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 62 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 65 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_0 + 69 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 73 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_0 + 85 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_0 + 86 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 30 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -48.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -48 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -48 );


--敵の動き2
setDisp( spep_0 + 240 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 240 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 240 + OFFSET_X, 1, -163.1, 89.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -163.1, 89.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -113.7, 62.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -113.7, 62.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -85.6, 47.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -85.6, 47.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -65.6, 36.5 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -65.6, 36.5 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -50.2, 28.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -50.2, 28.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -38, 21.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -38, 21.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -28.1, 16.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -28.1, 16.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -20.1, 11.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -20.1, 11.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -13.7, 8.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -13.7, 8.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -8.6, 5.5 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -8.6, 5.5 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -4.7, 3.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -4.7, 3.4 , 0 );

setScaleKey( spep_0 + 240 + OFFSET_X, 1, 12.33, 12.33 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 12.33, 12.33 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 240 + OFFSET_X, 1, -171 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -171 );


-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1019, "",spep_0 + 60, 0, 14, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 34, 1109, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 6, SE004, 0);
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
--膝蹴り
SE005 = playSeVer2( spep_0 + 52, 1153, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 52, 1047, "", 0, 0, 0, -1);

--連打
SE007 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE007, 148 );
SE008 = playSeVer2( spep_0 + 90, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 90, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 104, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 104, 1000, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 114, 1000, "", 0, 0, 0, -1);

--蹴り上げる
SE013 = playSeVer2( spep_0 + 114, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_0 + 126, 1183, "",spep_0 + 232, 0, 40, -1);

--瞬間移動
SE015 = playSeVer2( spep_0 + 168, 1109, "", 0, 0, 0, -1);

--叩きつける
SE016 = playSeVer2( spep_0 + 194, 1120, "", 0, 0, 0, -1);

--敵落ちていく
SE017 = playSeVer2( spep_0 + 208, 1121, "",spep_0 + 286, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 208, SE017, 73 );

--地面激突
SE018 = playSeVer2( spep_0 + 256, 1159, "",spep_0 + 340, 0, 16, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 318f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--気弾溜め
SE020 = playSeVer2( spep_1 + 90, 1282, "",spep_2 + 138, 0, 22, -1);
setPitch( spep_1 + 90, SE020, -100 );
setTimeStretch( SE020, 0.93, 30, 4 );
SE021 = playSeVer2( spep_1 + 90, 1124, "",spep_2 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 90, SE021, 63 );
SE022 = playSeVer2( spep_1 + 90, 1274, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 90, 1296, "",spep_2 + 130, 0, 20, -1);


-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 320;

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- カード後(ef_002)
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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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


-- ** 音 ** --
--気弾発射
SE025 = playSeVer2( spep_2 + 106, 1145, "",spep_2 + 232, 0, 28, -1);
SE026 = playSeVer2( spep_2 + 106, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 106, 1177, "",spep_2 + 228, 0, 26, -1);

--気弾飛んでいく
SE028 = playSeVer2( spep_2 + 156, 1021, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_2 + 198, 1067, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 198, 1188, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 206); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 320f -0f

end