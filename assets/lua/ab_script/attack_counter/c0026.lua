--4029060:LR_孫悟空(身勝手の極意)_回避カウンター
--sp_effect_b1_00285
--c0026

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162971; --ef_001
SP_01b = 162972; --ef_001b

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
 
ENABLE_AUTO_TIME_STRETCH(0.9);
 
OFFSET_X = -1;
 
------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------
 
 
spep_0 = 28; --冒頭顔カットイン入るため28F固定
 
 
------------------------------------------------------
-- ef_001
------------------------------------------------------
 
MAX_FRAME_0 = 504;
 
-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
 
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
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
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
--setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 11 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 220 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 226 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 240 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 256 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 266 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 272 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 276 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 292 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 296 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 302 + OFFSET_X, 1, 108 );

--敵の高さ調整用
OFFSET_Y = -20;

setMoveKey( spep_0 + 88 + OFFSET_X, 1, 160.8, 37 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 160.8, 37 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 161.1, 36.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 161.1, 36.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 161.4, 36.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 161.4, 36.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 161.7, 36.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 161.7, 36.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 162, 36.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 162, 36.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 162.3, 36.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 162.3, 36.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 162.6, 36.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 162.6, 36.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 162.9, 36.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 162.9, 36.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 163.2, 36.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 163.2, 36.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 163.5, 35.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 163.5, 35.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 163.8, 35.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 163.8, 35.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 164.1, 35.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 164.1, 35.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 164.4, 35.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 164.4, 35.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 164.8, 35.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 164.8, 35.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 165.1, 35.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 165.1, 35.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 165.4, 35.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 165.4, 35.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 165.7, 35.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 165.7, 35.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 166, 35 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 166, 35 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 166.3, 34.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 166.3, 34.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 166.6, 34.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 166.6, 34.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 166.9, 34.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 166.9, 34.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 167.2, 34.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 167.2, 34.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 167.5, 34.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 167.5, 34.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 167.8, 34.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 167.8, 34.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 168.1, 34.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 168.1, 34.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 168.4, 34.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 168.4, 34.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 168.7, 34 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 168.7, 34 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 169, 33.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 169, 33.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 169.3, 33.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 169.3, 33.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 169.6, 33.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 169.6, 33.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 169.9, 33.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 169.9, 33.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 170.2, 33.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 170.2, 33.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 170.5, 33.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 170.5, 33.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 170.9, 33.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 170.9, 33.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 171.2, 33.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 171.2, 33.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 171.5, 33 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 171.5, 33 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 171.8, 32.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 171.8, 32.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 172.1, 32.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 172.1, 32.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 172.4, 32.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 172.4, 32.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 172.7, 32.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 172.7, 32.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 173, 32.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 173, 32.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 173.3, 32.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 173.3, 32.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 173.6, 32.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 173.6, 32.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 173.9, 32.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 173.9, 32.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 174.2, 31.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 174.2, 31.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 174.5, 31.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 174.5, 31.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 174.8, 31.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 174.8, 31.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 175.1, 31.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 175.1, 31.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 175.4, 31.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 175.4, 31.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 175.7, 31.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 175.7, 31.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 176, 31.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 176, 31.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 176.3, 31.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 176.3, 31.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 176.7, 31 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 176.7, 31 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 177, 30.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 177, 30.9 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 177.3, 30.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 177.3, 30.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 206.2, 73.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 206.2, 73.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 196.1, 38.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 196.1, 38.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 226.5, 104.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 226.5, 104.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 217.3, 74.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 217.3, 74.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 209.4, 42.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 209.4, 42.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 216.3, 86.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 216.3, 86.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 216.4, 64.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 216.4, 64.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 209.2, 91.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 209.2, 91.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 194, 72.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 194, 72.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 197.9, 89.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 197.9, 89.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 186.6, 80 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 186.6, 80 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 186.6, 53.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 186.6, 53.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 161, 66.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 161, 66.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 188.4, 99.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 188.4, 99.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 165.1, 80.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 165.1, 80.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 153.7, 129.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 153.7, 129.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 208.4, 66.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 208.4, 66.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 217.5, 89.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 217.5, 89.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 203.3, 69.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 203.3, 69.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 212.5, 94.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 212.5, 94.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 173.9, 57.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 173.9, 57.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 145, 93 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 145, 93 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 193.7, 75.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 193.7, 75.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 192.6, 103.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 192.6, 103.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 208.5, 60.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 208.5, 60.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 219.8, 84.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 219.8, 84.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 136.7, 58.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 136.7, 58.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 187.5, 83.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 187.5, 83.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 198.9, 84.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 198.9, 84.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 202.3, 80.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 202.3, 80.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 176.7, 107.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 176.7, 107.4 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 179.6, 41.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 179.6, 41.5 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 193.7, 82.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 193.7, 82.2 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 218.4, 53.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 218.4, 53.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 201.8, 104.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 201.8, 104.1 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 148.7, 81.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 148.7, 81.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 179.5, 113.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 179.5, 113.7 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 175.5, 87.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 175.5, 87.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 176.2, 117.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 176.2, 117.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 146.6, 89.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 146.6, 89.8 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 291.4, 72.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 291.4, 72.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 290.4, 54.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 290.4, 54.6 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 491.2, -41.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 491.2, -41.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 475.2, -49.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 475.2, -49.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 700.2, -49.3 + OFFSET_Y , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 700.2, -49.3 + OFFSET_Y , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 1.03, 1.03 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 91 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 95 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 96 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 97 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 98 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 17.2 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 17.3 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 17.4 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 17.6 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 17.8 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 17.9 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 18.5 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 18.6 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, 18.9 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 19 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, 64.9 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 78.2 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 78.2 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 93.4 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 93.4 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 58.9 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 58.9 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 83.1 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 58.1 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, 26.1 );

--敵の動き2
setDisp( spep_0 + 358 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 358 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 358 + OFFSET_X, 1, -431, 537.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -431, 537.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -367.9, 489.8 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -367.9, 489.8 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -304.8, 442.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -304.8, 442.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -241.6, 395.2 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -241.6, 395.2 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -178.5, 347.8 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -178.5, 347.8 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -115.4, 300.5 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -115.4, 300.5 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -52.2, 253.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -52.2, 253.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 10.9, 205.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 10.9, 205.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 74, 158.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 74, 158.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 137.2, 111.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 137.2, 111.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 200.3, 63.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 200.3, 63.9 , 0 );

setScaleKey( spep_0 + 358 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 358 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 43.1 );


-- ** 音 ** --
--ズーム
SE001 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 112, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 98 );
SE002 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 53 );
setTimeStretch( SE002, 1.65, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1304, "",spep_0 + 122, 0, 34, -1);
SE004 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 102, 0, 40, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------
 
if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
     
    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
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
--身体光る
SE005 = playSeVer2( spep_0 + 66, 1374, "", 0, 18, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 66, SE005, 109 );
setStartTimeMs( SE005,  733 );
SE006 = playSeVer2( spep_0 + 74, 1426, "", 0, 8, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 74, SE006, 105 );
setStartTimeMs( SE006,  200 );
SE007 = playSeVer2( spep_0 + 62, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 127 );
SE008 = playSeVer2( spep_0 + 76, 1238, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 82, 1181, "",spep_0 + 230, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 82, SE009, 184 );

--連続打撃
SE010 = playSeVer2( spep_0 + 188, 1425, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 188, SE010, 75 );
SE011 = playSeVer2( spep_0 + 188, 1009, "", 0, 0, 0, 0.5);
SE012 = playSeVer2( spep_0 + 188, 1032, "",spep_0 + 226, 0, 16, 0.5);
SE013 = playSeVer2( spep_0 + 198, 1032, "",spep_0 + 234, 0, 12, 0.5);
stopSeIfDoubleSpeed( spep_0 + 198, SE013);
SE014 = playSeVer2( spep_0 + 212, 1032, "",spep_0 + 244, 0, 12, 0.5);
SE015 = playSeVer2( spep_0 + 226, 1032, "",spep_0 + 260, 0, 14, 0.5);
stopSeIfDoubleSpeed( spep_0 + 226, SE015);
SE016 = playSeVer2( spep_0 + 236, 1032, "",spep_0 + 270, 0, 12, 0.5);
SE017 = playSeVer2( spep_0 + 240, 1010, "", 0, 0, 0, 0.5);
SE018 = playSeVer2( spep_0 + 248, 1032, "",spep_0 + 278, 0, 10, 0.5);
SE019 = playSeVer2( spep_0 + 262, 1032, "",spep_0 + 290, 0, 8, 0.5);
stopSeIfDoubleSpeed( spep_0 + 262, SE019);
SE020 = playSeVer2( spep_0 + 268, 1110, "", 0, 0, 0, 0.5);
SE021 = playSeVer2( spep_0 + 272, 1032, "",spep_0 + 304, 0, 10, 0.5);
SE022 = playSeVer2( spep_0 + 276, 1110, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 276, SE022);
SE023 = playSeVer2( spep_0 + 286, 1110, "", 0, 0, 0, 0.5);
SE024 = playSeVer2( spep_0 + 286, 1032, "",spep_0 + 318, 0, 12, 0.5);
--敵吹き飛ぶ
SE025 = playSeVer2( spep_0 + 294, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE025, 100 );
SE026 = playSeVer2( spep_0 + 298, 1121, "",spep_0 + 400, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 298, SE026, 68 );
SE027 = playSeVer2( spep_0 + 298, 1183, "",spep_0 + 402, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 298, SE027, 79 );

------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 348, SE020, 0 );
    stopSe( spep_0 + 348, SE021, 0 );
    stopSe( spep_0 + 348, SE022, 0 );
    stopSe( spep_0 + 348, SE023, 0 );
    stopSe( spep_0 + 348, SE024, 0 );
    stopSe( spep_0 + 348, SE025, 0 );
    stopSe( spep_0 + 348, SE026, 0 );
    stopSe( spep_0 + 348, SE027, 0 );

    setDisp( spep_0 + 348, 1, 1 );
    endPhase( spep_0 + 350 );
     
else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

-- ** 音 ** --
--壁激突
SE028 = playSeVer2( spep_0 + 368, 1159, "", 0, 0, 0, -1)
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_0 + 380 ); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0 ); -- 504

end