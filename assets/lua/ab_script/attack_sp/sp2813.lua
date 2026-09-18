-- 1030570: LR_超サイヤ人ゴッドSSベジータ(進化)_超必殺技：ファイナルフラッシュ
-- sp_effect_a1_00472
-- sp2813

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 共通
SP_001 = 163538;  -- ベジータ敵に向かってジャンプ〜敵が岩山に激突 ef_001
SP_002 = 163540;  -- 煙からベジータの腕〜フィニッシュ ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ベジータ敵に向かってジャンプ〜敵が岩山に激突 ef_001
------------------------------------------------------
MAX_FRAME_0 = 428;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- ベジータ敵に向かってジャンプ〜敵が岩山に激突 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 68 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 0 , 1, 100 );

setMoveKey( spep_0 + 0 , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X , 1, 205.2, -40.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X , 1, 205.2, -40.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X , 1, 221.2, -0.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X , 1, 221.2, -0.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X , 1, 216.7, -5.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X , 1, 216.7, -5.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X , 1, 206.7, -33.1 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X , 1, 206.7, -33.1 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X , 1, 210.4, -30 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X , 1, 210.4, -30 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X , 1, 216.5, -12.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X , 1, 216.5, -12.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X , 1, 206, -21.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X , 1, 206, -21.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X , 1, 212, -11.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X , 1, 212, -11.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X , 1, 206.5, -18.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X , 1, 206.5, -18.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X , 1, 210.5, -6.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X , 1, 210.5, -6.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X , 1, 212.4, 0.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X , 1, 212.4, 0.9 , 0 );

setScaleKey( spep_0 + 0 , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 7 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 68 + OFFSET_X , 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 68 + OFFSET_X , 1, 0 );

--敵の動き2
setDisp( spep_0 + 146 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 172 + OFFSET_X , 1, 0 );

setMoveKey( spep_0 + 146 + OFFSET_X , 1, 671.4, -67.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X , 1, 671.4, -67.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X , 1, 671.2, -67.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X , 1, 671.2, -67.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X , 1, 669, -67.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X , 1, 669, -67.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X , 1, 659, -67.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X , 1, 659, -67.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X , 1, 632.2, -67.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X , 1, 632.2, -67.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X , 1, 575.8, -67.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X , 1, 575.8, -67.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X , 1, 473.2, -67.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X , 1, 473.2, -67.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X , 1, 370.5, -67.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X , 1, 370.5, -67.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X , 1, 314.1, -67.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X , 1, 314.1, -67.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X , 1, 287.3, -67.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X , 1, 287.3, -67.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X , 1, 277.3, -67.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X , 1, 277.3, -67.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X , 1, 275.1, -67.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X , 1, 275.1, -67.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X , 1, 274.9, -67.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X , 1, 274.9, -67.9 , 0 );

setScaleKey( spep_0 + 146 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 149 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 150 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 151 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 152 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_0 + 153 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_0 + 154 + OFFSET_X , 1, 1.23, 1.23 );
setScaleKey( spep_0 + 155 + OFFSET_X , 1, 1.23, 1.23 );
setScaleKey( spep_0 + 156 + OFFSET_X , 1, 1.55, 1.55 );
setScaleKey( spep_0 + 157 + OFFSET_X , 1, 1.55, 1.55 );
setScaleKey( spep_0 + 158 + OFFSET_X , 1, 2.15, 2.15 );
setScaleKey( spep_0 + 159 + OFFSET_X , 1, 2.15, 2.15 );
setScaleKey( spep_0 + 160 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_0 + 161 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_0 + 162 + OFFSET_X , 1, 3.07, 3.07 );
setScaleKey( spep_0 + 163 + OFFSET_X , 1, 3.07, 3.07 );
setScaleKey( spep_0 + 164 + OFFSET_X , 1, 3.23, 3.23 );
setScaleKey( spep_0 + 165 + OFFSET_X , 1, 3.23, 3.23 );
setScaleKey( spep_0 + 166 + OFFSET_X , 1, 3.29, 3.29 );
setScaleKey( spep_0 + 167 + OFFSET_X , 1, 3.29, 3.29 );
setScaleKey( spep_0 + 168 + OFFSET_X , 1, 3.3, 3.3 );
setScaleKey( spep_0 + 172 + OFFSET_X , 1, 3.3, 3.3 );

setRotateKey( spep_0 + 146 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 172 + OFFSET_X , 1, 0 );

--敵の動き3
setDisp( spep_0 + 180 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 238 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 180 + OFFSET_X , 1, 106 );

setMoveKey( spep_0 + 180 + OFFSET_X , 1, 220.7, -68 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X , 1, 220.7, -68 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X , 1, 223.7, -63.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X , 1, 223.7, -63.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X , 1, 216.4, -49.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X , 1, 216.4, -49.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X , 1, 235.3, -52.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X , 1, 235.3, -52.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X , 1, 215, -49.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X , 1, 215, -49.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X , 1, 231.8, -49.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X , 1, 231.8, -49.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X , 1, 222.5, -46.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X , 1, 222.5, -46.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X , 1, 233.6, -40.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X , 1, 233.6, -40.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X , 1, 226.6, -44 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X , 1, 226.6, -44 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X , 1, 234.9, -37.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X , 1, 234.9, -37.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X , 1, 230.2, -41.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X , 1, 230.2, -41.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X , 1, 235.7, -34.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X , 1, 235.7, -34.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X , 1, 234.6, -37.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X , 1, 234.6, -37.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X , 1, 234.1, -34.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X , 1, 234.1, -34.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X , 1, 235.4, -36.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X , 1, 235.4, -36.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X , 1, 253.7, -54.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X , 1, 253.7, -54.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X , 1, 256.7, -70.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X , 1, 256.7, -70.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X , 1, 268.9, -100.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X , 1, 268.9, -100.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X , 1, 278.1, -112.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X , 1, 278.1, -112.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X , 1, 284.2, -112.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X , 1, 284.2, -112.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X , 1, 287.2, -109.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X , 1, 287.2, -109.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X , 1, 293.3, -103.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X , 1, 293.3, -103.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X , 1, 256.7, -39.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, 256.7, -39.7 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 238 + OFFSET_X , 1, 3.5, 3.5 );

setRotateKey( spep_0 + 180 + OFFSET_X , 1, -45 );
setRotateKey( spep_0 + 238 + OFFSET_X , 1, -45 );

--敵の動き4
setDisp( spep_0 + 248 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 248 + OFFSET_X , 1, 105 );

setMoveKey( spep_0 + 248 + OFFSET_X , 1, 152.8, -2.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, 152.8, -2.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, 175.3, -4.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, 175.3, -4.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, 230.7, 101.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X , 1, 230.7, 101.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X , 1, 261.5, 133.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X , 1, 261.5, 133.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X , 1, 267.5, 138.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X , 1, 267.5, 138.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X , 1, 265.8, 158.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X , 1, 265.8, 158.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X , 1, 273.9, 158.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X , 1, 273.9, 158.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X , 1, 282.6, 164.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X , 1, 282.6, 164.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X , 1, 278.9, 165.5 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X , 1, 278.9, 165.5 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X , 1, 288.7, 168.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X , 1, 288.7, 168.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X , 1, 281.1, 165.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X , 1, 281.1, 165.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X , 1, 285.2, 173.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X , 1, 285.2, 173.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X , 1, 287.3, 168.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X , 1, 287.3, 168.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X , 1, 284.8, 173.7 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X , 1, 284.8, 173.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X , 1, 288, 171 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X , 1, 288, 171 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, 284.5, 170.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X , 1, 284.5, 170.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X , 1, 287.3, 175 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X , 1, 287.3, 175 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X , 1, 285.5, 171.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X , 1, 285.5, 171.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X , 1, 286.6, 174.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X , 1, 286.6, 174.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X , 1, 287.5, 172.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X , 1, 287.5, 172.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X , 1, 285.7, 174 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X , 1, 285.7, 174 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X , 1, 287.5, 172.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X , 1, 287.5, 172.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X , 1, 287.1, 174.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X , 1, 287.1, 174.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X , 1, 286.6, 172.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X , 1, 286.6, 172.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X , 1, 286.8, 173.7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X , 1, 286.8, 173.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X , 1, 287.1, 173.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X , 1, 287.1, 173.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X , 1, 309.9, 183.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X , 1, 309.9, 183.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X , 1, -324.9, -595 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X , 1, -324.9, -595 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X , 1, -295.1, -549.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X , 1, -295.1, -549.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X , 1, -193.9, -362.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X , 1, -193.9, -362.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X , 1, -49, -113.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X , 1, -49, -113.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X , 1, -23.2, -63.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X , 1, -23.2, -63.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X , 1, -7.9, -31.3 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X , 1, -7.9, -31.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X , 1, 0.6, -23.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X , 1, 0.6, -23.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X , 1, 7, -4.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X , 1, 7, -4.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X , 1, 12.3, -6.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X , 1, 12.3, -6.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X , 1, 14.1, 7.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X , 1, 14.1, 7.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X , 1, 17.4, 5.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X , 1, 17.4, 5.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X , 1, 15.5, 12.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X , 1, 15.5, 12.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X , 1, 18.7, 11.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X , 1, 18.7, 11.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X , 1, 21, 15.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X , 1, 21, 15.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X , 1, 21.6, 13.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X , 1, 21.6, 13.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X , 1, 20.6, 18.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X , 1, 20.6, 18.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X , 1, 22.6, 16.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X , 1, 22.6, 16.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X , 1, 21.7, 17.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X , 1, 21.7, 17.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X , 1, 21.9, 18.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X , 1, 21.9, 18.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X , 1, 22, 18.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X , 1, 22, 18.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X , 1, 22.1, 18.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X , 1, 22.1, 18.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X , 1, 22.2, 18.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X , 1, 22.2, 18.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X , 1, 22.3, 18.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X , 1, 22.3, 18.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X , 1, 22.3, 18.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X , 1, 22.3, 18.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X , 1, 22.4, 18.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X , 1, 22.4, 18.8 , 0 );

setScaleKey( spep_0 + 248 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 3.38, 3.38 );
setScaleKey( spep_0 + 251 + OFFSET_X , 1, 3.38, 3.38 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 1.52, 1.52 );
setScaleKey( spep_0 + 253 + OFFSET_X , 1, 1.52, 1.52 );
setScaleKey( spep_0 + 254 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_0 + 255 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_0 + 256 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 257 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 258 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 259 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 260 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 261 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 262 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 263 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 264 + OFFSET_X , 1, 0.29, 0.29 );
setScaleKey( spep_0 + 265 + OFFSET_X , 1, 0.29, 0.29 );
setScaleKey( spep_0 + 266 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 267 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 268 + OFFSET_X , 1, 0.23, 0.23 );
setScaleKey( spep_0 + 269 + OFFSET_X , 1, 0.23, 0.23 );
setScaleKey( spep_0 + 270 + OFFSET_X , 1, 0.2, 0.2 );
setScaleKey( spep_0 + 271 + OFFSET_X , 1, 0.2, 0.2 );
setScaleKey( spep_0 + 272 + OFFSET_X , 1, 0.19, 0.19 );
setScaleKey( spep_0 + 273 + OFFSET_X , 1, 0.19, 0.19 );
setScaleKey( spep_0 + 274 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_0 + 275 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_0 + 276 + OFFSET_X , 1, 0.17, 0.17 );
setScaleKey( spep_0 + 277 + OFFSET_X , 1, 0.17, 0.17 );
setScaleKey( spep_0 + 278 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_0 + 281 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_0 + 282 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 301 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 302 + OFFSET_X , 1, 10, 10 );
setScaleKey( spep_0 + 303 + OFFSET_X , 1, 10, 10 );
setScaleKey( spep_0 + 304 + OFFSET_X , 1, 9.58, 9.58 );
setScaleKey( spep_0 + 305 + OFFSET_X , 1, 9.58, 9.58 );
setScaleKey( spep_0 + 306 + OFFSET_X , 1, 6.32, 6.32 );
setScaleKey( spep_0 + 307 + OFFSET_X , 1, 6.32, 6.32 );
setScaleKey( spep_0 + 308 + OFFSET_X , 1, 2.27, 2.27 );
setScaleKey( spep_0 + 309 + OFFSET_X , 1, 2.27, 2.27 );
setScaleKey( spep_0 + 310 + OFFSET_X , 1, 1.39, 1.39 );
setScaleKey( spep_0 + 311 + OFFSET_X , 1, 1.39, 1.39 );
setScaleKey( spep_0 + 312 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_0 + 313 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_0 + 314 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 315 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 316 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 317 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 318 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_0 + 319 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_0 + 320 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_0 + 321 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_0 + 322 + OFFSET_X , 1, 0.29, 0.29 );
setScaleKey( spep_0 + 323 + OFFSET_X , 1, 0.29, 0.29 );
setScaleKey( spep_0 + 324 + OFFSET_X , 1, 0.24, 0.24 );
setScaleKey( spep_0 + 325 + OFFSET_X , 1, 0.24, 0.24 );
setScaleKey( spep_0 + 326 + OFFSET_X , 1, 0.2, 0.2 );
setScaleKey( spep_0 + 327 + OFFSET_X , 1, 0.2, 0.2 );
setScaleKey( spep_0 + 328 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_0 + 329 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_0 + 330 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 331 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 332 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 333 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 334 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 335 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 336 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 337 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 338 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 341 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 342 + OFFSET_X , 1, 0.1, 0.1 );
setScaleKey( spep_0 + 356 + OFFSET_X , 1, 0.1, 0.1 );

setRotateKey( spep_0 + 248 + OFFSET_X , 1, 15 );
setRotateKey( spep_0 + 301 + OFFSET_X , 1, 15 );
setRotateKey( spep_0 + 302 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 303 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 304 + OFFSET_X , 1, 0.9 );
setRotateKey( spep_0 + 305 + OFFSET_X , 1, 0.9 );
setRotateKey( spep_0 + 306 + OFFSET_X , 1, 7.4 );
setRotateKey( spep_0 + 307 + OFFSET_X , 1, 7.4 );
setRotateKey( spep_0 + 308 + OFFSET_X , 1, 15.6 );
setRotateKey( spep_0 + 309 + OFFSET_X , 1, 15.6 );
setRotateKey( spep_0 + 310 + OFFSET_X , 1, 17.4 );
setRotateKey( spep_0 + 311 + OFFSET_X , 1, 17.4 );
setRotateKey( spep_0 + 312 + OFFSET_X , 1, 18.2 );
setRotateKey( spep_0 + 313 + OFFSET_X , 1, 18.2 );
setRotateKey( spep_0 + 314 + OFFSET_X , 1, 18.8 );
setRotateKey( spep_0 + 315 + OFFSET_X , 1, 18.8 );
setRotateKey( spep_0 + 316 + OFFSET_X , 1, 19.1 );
setRotateKey( spep_0 + 317 + OFFSET_X , 1, 19.1 );
setRotateKey( spep_0 + 318 + OFFSET_X , 1, 19.3 );
setRotateKey( spep_0 + 319 + OFFSET_X , 1, 19.3 );
setRotateKey( spep_0 + 320 + OFFSET_X , 1, 19.5 );
setRotateKey( spep_0 + 321 + OFFSET_X , 1, 19.5 );
setRotateKey( spep_0 + 322 + OFFSET_X , 1, 19.6 );
setRotateKey( spep_0 + 323 + OFFSET_X , 1, 19.6 );
setRotateKey( spep_0 + 324 + OFFSET_X , 1, 19.7 );
setRotateKey( spep_0 + 325 + OFFSET_X , 1, 19.7 );
setRotateKey( spep_0 + 326 + OFFSET_X , 1, 19.8 );
setRotateKey( spep_0 + 329 + OFFSET_X , 1, 19.8 );
setRotateKey( spep_0 + 330 + OFFSET_X , 1, 19.9 );
setRotateKey( spep_0 + 335 + OFFSET_X , 1, 19.9 );
setRotateKey( spep_0 + 336 + OFFSET_X , 1, 20 );
setRotateKey( spep_0 + 356 + OFFSET_X , 1, 20 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 210, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 133 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 212, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 38 );
SE004 = playSeVer2( spep_0 + 0, 1474, "",spep_0 + 214, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 464 );

--顔アップ
SE005 = playSeVer2( spep_0 + 62, 1336, "",spep_0 + 170, 16, 26, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 77 );
setStartTimeMs( SE005,  1000 );
setPitch( spep_0 + 62, SE005, 600 );
setTimeStretch( SE005, 1.4, 30, 4 );
SE009 = playSeVer2( spep_0 + 68, 1264, "",spep_0 + 282, 0, 96, -1);
setSeVolumeByWorkId( spep_0 + 68, SE009, 71 );

--向かっていく
SE006 = playSeVer2( spep_0 + 34, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 34, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 44, 1277, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ
SE010 = playSeVer2( spep_0 + 146, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 170, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 174, 1359, "", 0, 0, 0, -1);

--蹴り
SE013 = playSeVer2( spep_0 + 228, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE013, 178 );
SE014 = playSeVer2( spep_0 + 238, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 238, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_0 + 250, 1121, "",spep_0 + 402, 0, 54, -1);
SE017 = playSeVer2( spep_0 + 292, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 78 );

--岩激突
SE018 = playSeVer2( spep_0 + 342, 1427, "",spep_0 + 446, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 342, SE018, 63 );
SE019 = playSeVer2( spep_0 + 356, 1159, "",spep_0 + 444, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 356, SE019, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 428

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--煙あける
SE020 = playSeVer2( spep_1 + 60, 1159, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE020, 63 );
setStartTimeMs( SE020,  1333 );
SE021 = playSeVer2( spep_1 + 64, 1168, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE021, 67 );
setStartTimeMs( SE021,  1400 );
SE023 = playSeVer2( spep_1 + 68, 1219, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE023, 67 );
setStartTimeMs( SE023,  667 );

--オーラ
SE024 = playSeVer2( spep_1 + 80, 1181, "",spep_2 + 278, 26, 36, -1);
setSeVolumeByWorkId( spep_1 + 80, SE024, 145 );
SE025 = playSeVer2( spep_1 + 80, 1176, "",spep_2 + 278, 28, 36, -1);
setSeVolumeByWorkId( spep_1 + 80, SE025, 33 );
SE026 = playSeVer2( spep_1 + 80, 1474, "",spep_2 + 280, 30, 38, -1);
setSeVolumeByWorkId( spep_1 + 80, SE026, 441 );

------------------------------------------------------
-- 煙からベジータの腕〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 598;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 煙からベジータの腕〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 134;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--気弾溜め
SE027 = playSeVer2( spep_2 + 106, 1210, "",spep_2 + 318, 56, 36, -1);
setSeVolumeByWorkId( spep_2 + 106, SE027, 74 );
setStartTimeMs( SE027,  2000 );

--腕前に出す
SE028 = playSeVer2( spep_2 + 30, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 38, 1006, "", 0, 0, 0, -1);

--イナヅマ走る
SE030 = playSeVer2( spep_2 + 58, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE030, 74 );

--地響き
SE031 = playSeVer2( spep_2 + 98, 1226, "",spep_2 + 314, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 98, SE031, 69 );

--気弾溜め
SE032 = playSeVer2( spep_2 + 106, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE032, 72 );
SE033 = playSeVer2( spep_2 + 110, 1296, "",spep_2 + 250, 0, 90, -1);
setSeVolumeByWorkId( spep_2 + 110, SE033, 67 );
SE035 = playSeVer2( spep_2 + 130, 1158, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE035, 62 );

--気弾発射
SE036 = playSeVer2( spep_2 + 264, 1258, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 268, 1423, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 268, 1213, "",spep_2 + 486, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 268, SE038, 67 );
SE039 = playSeVer2( spep_2 + 268, 1266, "",spep_2 + 468, 0, 28, -1);

--気弾飛んでいく
SE040 = playSeVer2( spep_2 + 348, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 348, SE040, 133 );

--気弾飛んでいく２
SE041 = playSeVer2( spep_2 + 464, 1212, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 464, SE041, 75 );
setStartTimeMs( SE041,  667 );
SE042 = playSeVer2( spep_2 + 432, 1305, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE042, 146 );
SE046 = playSeVer2( spep_2 + 460, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 460, SE046, 83 );
SE047 = playSeVer2( spep_2 + 470, 1124, "", 0, 32, 0, -1);

--岩爆発
SE043 = playSeVer2( spep_2 + 432, 1061, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 436, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 436, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 490 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 598

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ベジータ敵に向かってジャンプ〜敵が岩山に激突 ef_001
------------------------------------------------------
MAX_FRAME_0 = 428;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- ベジータ敵に向かってジャンプ〜敵が岩山に激突 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 68 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 0 , 1, 0 );

setMoveKey( spep_0 + 0 , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X , 1, -205.2, -40.9 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X , 1, -205.2, -40.9 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X , 1, -221.2, -0.9 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X , 1, -221.2, -0.9 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X , 1, -216.7, -5.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X , 1, -216.7, -5.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X , 1, -206.7, -33.1 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X , 1, -206.7, -33.1 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X , 1, -210.4, -30 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X , 1, -210.4, -30 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X , 1, -216.5, -12.9 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X , 1, -216.5, -12.9 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X , 1, -206, -21.5 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X , 1, -206, -21.5 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X , 1, -212, -11.5 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X , 1, -212, -11.5 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X , 1, -206.5, -18.5 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X , 1, -206.5, -18.5 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X , 1, -210.5, -6.5 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X , 1, -210.5, -6.5 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X , 1, -212.4, 0.9 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X , 1, -212.4, 0.9 , 0 );

setScaleKey( spep_0 + 0 , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 2 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 3 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 4 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 5 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 6 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 7 + OFFSET_X , 1, 0.5, 0.5 );
setScaleKey( spep_0 + 68 + OFFSET_X , 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 68 + OFFSET_X , 1, 0 );

--敵の動き2
setDisp( spep_0 + 146 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 172 + OFFSET_X , 1, 0 );

setMoveKey( spep_0 + 146 + OFFSET_X , 1, -671.4, -67.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X , 1, -671.4, -67.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X , 1, -671.2, -67.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X , 1, -671.2, -67.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X , 1, -669, -67.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X , 1, -669, -67.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X , 1, -659, -67.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X , 1, -659, -67.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X , 1, -632.2, -67.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X , 1, -632.2, -67.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X , 1, -575.8, -67.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X , 1, -575.8, -67.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X , 1, -473.2, -67.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X , 1, -473.2, -67.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X , 1, -370.5, -67.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X , 1, -370.5, -67.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X , 1, -314.1, -67.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X , 1, -314.1, -67.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X , 1, -287.3, -67.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X , 1, -287.3, -67.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X , 1, -277.3, -67.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X , 1, -277.3, -67.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X , 1, -275.1, -67.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X , 1, -275.1, -67.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X , 1, -274.9, -67.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X , 1, -274.9, -67.9 , 0 );

setScaleKey( spep_0 + 146 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 149 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_0 + 150 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 151 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_0 + 152 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_0 + 153 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_0 + 154 + OFFSET_X , 1, 1.23, 1.23 );
setScaleKey( spep_0 + 155 + OFFSET_X , 1, 1.23, 1.23 );
setScaleKey( spep_0 + 156 + OFFSET_X , 1, 1.55, 1.55 );
setScaleKey( spep_0 + 157 + OFFSET_X , 1, 1.55, 1.55 );
setScaleKey( spep_0 + 158 + OFFSET_X , 1, 2.15, 2.15 );
setScaleKey( spep_0 + 159 + OFFSET_X , 1, 2.15, 2.15 );
setScaleKey( spep_0 + 160 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_0 + 161 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_0 + 162 + OFFSET_X , 1, 3.07, 3.07 );
setScaleKey( spep_0 + 163 + OFFSET_X , 1, 3.07, 3.07 );
setScaleKey( spep_0 + 164 + OFFSET_X , 1, 3.23, 3.23 );
setScaleKey( spep_0 + 165 + OFFSET_X , 1, 3.23, 3.23 );
setScaleKey( spep_0 + 166 + OFFSET_X , 1, 3.29, 3.29 );
setScaleKey( spep_0 + 167 + OFFSET_X , 1, 3.29, 3.29 );
setScaleKey( spep_0 + 168 + OFFSET_X , 1, 3.3, 3.3 );
setScaleKey( spep_0 + 172 + OFFSET_X , 1, 3.3, 3.3 );

setRotateKey( spep_0 + 146 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 172 + OFFSET_X , 1, 0 );

--敵の動き3
setDisp( spep_0 + 180 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 238 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 180 + OFFSET_X , 1, 6 );

setMoveKey( spep_0 + 180 + OFFSET_X , 1, -220.7, -68 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X , 1, -220.7, -68 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X , 1, -223.7, -63.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X , 1, -223.7, -63.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X , 1, -216.4, -49.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X , 1, -216.4, -49.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X , 1, -235.3, -52.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X , 1, -235.3, -52.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X , 1, -215, -49.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X , 1, -215, -49.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X , 1, -231.8, -49.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X , 1, -231.8, -49.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X , 1, -222.5, -46.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X , 1, -222.5, -46.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X , 1, -233.6, -40.2 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X , 1, -233.6, -40.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X , 1, -226.6, -44 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X , 1, -226.6, -44 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X , 1, -234.9, -37.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X , 1, -234.9, -37.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X , 1, -230.2, -41.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X , 1, -230.2, -41.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X , 1, -235.7, -34.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X , 1, -235.7, -34.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X , 1, -234.6, -37.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X , 1, -234.6, -37.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X , 1, -234.1, -34.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X , 1, -234.1, -34.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X , 1, -235.4, -36.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X , 1, -235.4, -36.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X , 1, -253.7, -54.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X , 1, -253.7, -54.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X , 1, -256.7, -70.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X , 1, -256.7, -70.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X , 1, -268.9, -100.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X , 1, -268.9, -100.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X , 1, -278.1, -112.9 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X , 1, -278.1, -112.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X , 1, -284.2, -112.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X , 1, -284.2, -112.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X , 1, -287.2, -109.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X , 1, -287.2, -109.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X , 1, -293.3, -103.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X , 1, -293.3, -103.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X , 1, -256.7, -39.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, -256.7, -39.7 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 238 + OFFSET_X , 1, 3.5, 3.5 );

setRotateKey( spep_0 + 180 + OFFSET_X , 1, 45 );
setRotateKey( spep_0 + 238 + OFFSET_X , 1, 45 );

--敵の動き4
setDisp( spep_0 + 248 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 248 + OFFSET_X , 1, 5 );

setMoveKey( spep_0 + 248 + OFFSET_X , 1, -152.8, -2.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, -152.8, -2.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, -175.3, -4.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, -175.3, -4.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, -230.7, 101.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X , 1, -230.7, 101.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X , 1, -261.5, 133.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X , 1, -261.5, 133.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X , 1, -267.5, 138.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X , 1, -267.5, 138.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X , 1, -265.8, 158.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X , 1, -265.8, 158.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X , 1, -273.9, 158.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X , 1, -273.9, 158.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X , 1, -282.6, 164.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X , 1, -282.6, 164.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X , 1, -278.9, 165.5 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X , 1, -278.9, 165.5 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X , 1, -288.7, 168.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X , 1, -288.7, 168.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X , 1, -281.1, 165.7 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X , 1, -281.1, 165.7 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X , 1, -285.2, 173.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X , 1, -285.2, 173.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X , 1, -287.3, 168.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X , 1, -287.3, 168.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X , 1, -284.8, 173.7 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X , 1, -284.8, 173.7 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X , 1, -288, 171 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X , 1, -288, 171 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, -284.5, 170.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X , 1, -284.5, 170.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X , 1, -287.3, 175 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X , 1, -287.3, 175 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X , 1, -285.5, 171.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X , 1, -285.5, 171.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X , 1, -286.6, 174.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X , 1, -286.6, 174.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X , 1, -287.5, 172.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X , 1, -287.5, 172.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X , 1, -285.7, 174 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X , 1, -285.7, 174 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X , 1, -287.5, 172.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X , 1, -287.5, 172.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X , 1, -287.1, 174.7 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X , 1, -287.1, 174.7 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X , 1, -286.6, 172.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X , 1, -286.6, 172.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X , 1, -286.8, 173.7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X , 1, -286.8, 173.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X , 1, -287.1, 173.1 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X , 1, -287.1, 173.1 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X , 1, -309.9, 183.2 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X , 1, -309.9, 183.2 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X , 1, 324.9, -595 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X , 1, 324.9, -595 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X , 1, 295.1, -549.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X , 1, 295.1, -549.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X , 1, 193.9, -362.1 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X , 1, 193.9, -362.1 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X , 1, 49, -113.5 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X , 1, 49, -113.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X , 1, 23.2, -63.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X , 1, 23.2, -63.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X , 1, 7.9, -31.3 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X , 1, 7.9, -31.3 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X , 1, -0.6, -23.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X , 1, -0.6, -23.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X , 1, -7, -4.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X , 1, -7, -4.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X , 1, -12.3, -6.1 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X , 1, -12.3, -6.1 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X , 1, -14.1, 7.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X , 1, -14.1, 7.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X , 1, -17.4, 5.4 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X , 1, -17.4, 5.4 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X , 1, -15.5, 12.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X , 1, -15.5, 12.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X , 1, -18.7, 11.7 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X , 1, -18.7, 11.7 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X , 1, -21, 15.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X , 1, -21, 15.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X , 1, -21.6, 13.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X , 1, -21.6, 13.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X , 1, -20.6, 18.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X , 1, -20.6, 18.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X , 1, -22.6, 16.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X , 1, -22.6, 16.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X , 1, -21.7, 17.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X , 1, -21.7, 17.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X , 1, -21.9, 18.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X , 1, -21.9, 18.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X , 1, -22, 18.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X , 1, -22, 18.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X , 1, -22.1, 18.6 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X , 1, -22.1, 18.6 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X , 1, -22.2, 18.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X , 1, -22.2, 18.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X , 1, -22.3, 18.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X , 1, -22.3, 18.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X , 1, -22.3, 18.9 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X , 1, -22.3, 18.9 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X , 1, -22.4, 18.8 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X , 1, -22.4, 18.8 , 0 );

setScaleKey( spep_0 + 248 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 3.5, 3.5 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 3.38, 3.38 );
setScaleKey( spep_0 + 251 + OFFSET_X , 1, 3.38, 3.38 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 1.52, 1.52 );
setScaleKey( spep_0 + 253 + OFFSET_X , 1, 1.52, 1.52 );
setScaleKey( spep_0 + 254 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_0 + 255 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_0 + 256 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 257 + OFFSET_X , 1, 0.68, 0.68 );
setScaleKey( spep_0 + 258 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 259 + OFFSET_X , 1, 0.52, 0.52 );
setScaleKey( spep_0 + 260 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 261 + OFFSET_X , 1, 0.42, 0.42 );
setScaleKey( spep_0 + 262 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 263 + OFFSET_X , 1, 0.34, 0.34 );
setScaleKey( spep_0 + 264 + OFFSET_X , 1, 0.29, 0.29 );
setScaleKey( spep_0 + 265 + OFFSET_X , 1, 0.29, 0.29 );
setScaleKey( spep_0 + 266 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 267 + OFFSET_X , 1, 0.25, 0.25 );
setScaleKey( spep_0 + 268 + OFFSET_X , 1, 0.23, 0.23 );
setScaleKey( spep_0 + 269 + OFFSET_X , 1, 0.23, 0.23 );
setScaleKey( spep_0 + 270 + OFFSET_X , 1, 0.2, 0.2 );
setScaleKey( spep_0 + 271 + OFFSET_X , 1, 0.2, 0.2 );
setScaleKey( spep_0 + 272 + OFFSET_X , 1, 0.19, 0.19 );
setScaleKey( spep_0 + 273 + OFFSET_X , 1, 0.19, 0.19 );
setScaleKey( spep_0 + 274 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_0 + 275 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_0 + 276 + OFFSET_X , 1, 0.17, 0.17 );
setScaleKey( spep_0 + 277 + OFFSET_X , 1, 0.17, 0.17 );
setScaleKey( spep_0 + 278 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_0 + 281 + OFFSET_X , 1, 0.16, 0.16 );
setScaleKey( spep_0 + 282 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 301 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 302 + OFFSET_X , 1, 10, 10 );
setScaleKey( spep_0 + 303 + OFFSET_X , 1, 10, 10 );
setScaleKey( spep_0 + 304 + OFFSET_X , 1, 9.58, 9.58 );
setScaleKey( spep_0 + 305 + OFFSET_X , 1, 9.58, 9.58 );
setScaleKey( spep_0 + 306 + OFFSET_X , 1, 6.32, 6.32 );
setScaleKey( spep_0 + 307 + OFFSET_X , 1, 6.32, 6.32 );
setScaleKey( spep_0 + 308 + OFFSET_X , 1, 2.27, 2.27 );
setScaleKey( spep_0 + 309 + OFFSET_X , 1, 2.27, 2.27 );
setScaleKey( spep_0 + 310 + OFFSET_X , 1, 1.39, 1.39 );
setScaleKey( spep_0 + 311 + OFFSET_X , 1, 1.39, 1.39 );
setScaleKey( spep_0 + 312 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_0 + 313 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_0 + 314 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 315 + OFFSET_X , 1, 0.72, 0.72 );
setScaleKey( spep_0 + 316 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 317 + OFFSET_X , 1, 0.55, 0.55 );
setScaleKey( spep_0 + 318 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_0 + 319 + OFFSET_X , 1, 0.43, 0.43 );
setScaleKey( spep_0 + 320 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_0 + 321 + OFFSET_X , 1, 0.35, 0.35 );
setScaleKey( spep_0 + 322 + OFFSET_X , 1, 0.29, 0.29 );
setScaleKey( spep_0 + 323 + OFFSET_X , 1, 0.29, 0.29 );
setScaleKey( spep_0 + 324 + OFFSET_X , 1, 0.24, 0.24 );
setScaleKey( spep_0 + 325 + OFFSET_X , 1, 0.24, 0.24 );
setScaleKey( spep_0 + 326 + OFFSET_X , 1, 0.2, 0.2 );
setScaleKey( spep_0 + 327 + OFFSET_X , 1, 0.2, 0.2 );
setScaleKey( spep_0 + 328 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_0 + 329 + OFFSET_X , 1, 0.18, 0.18 );
setScaleKey( spep_0 + 330 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 331 + OFFSET_X , 1, 0.15, 0.15 );
setScaleKey( spep_0 + 332 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 333 + OFFSET_X , 1, 0.14, 0.14 );
setScaleKey( spep_0 + 334 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 335 + OFFSET_X , 1, 0.13, 0.13 );
setScaleKey( spep_0 + 336 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 337 + OFFSET_X , 1, 0.12, 0.12 );
setScaleKey( spep_0 + 338 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 341 + OFFSET_X , 1, 0.11, 0.11 );
setScaleKey( spep_0 + 342 + OFFSET_X , 1, 0.1, 0.1 );
setScaleKey( spep_0 + 356 + OFFSET_X , 1, 0.1, 0.1 );

setRotateKey( spep_0 + 248 + OFFSET_X , 1, -15 );
setRotateKey( spep_0 + 301 + OFFSET_X , 1, -15 );
setRotateKey( spep_0 + 302 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 303 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 304 + OFFSET_X , 1, -0.9 );
setRotateKey( spep_0 + 305 + OFFSET_X , 1, -0.9 );
setRotateKey( spep_0 + 306 + OFFSET_X , 1, -7.4 );
setRotateKey( spep_0 + 307 + OFFSET_X , 1, -7.4 );
setRotateKey( spep_0 + 308 + OFFSET_X , 1, -15.6 );
setRotateKey( spep_0 + 309 + OFFSET_X , 1, -15.6 );
setRotateKey( spep_0 + 310 + OFFSET_X , 1, -17.4 );
setRotateKey( spep_0 + 311 + OFFSET_X , 1, -17.4 );
setRotateKey( spep_0 + 312 + OFFSET_X , 1, -18.2 );
setRotateKey( spep_0 + 313 + OFFSET_X , 1, -18.2 );
setRotateKey( spep_0 + 314 + OFFSET_X , 1, -18.8 );
setRotateKey( spep_0 + 315 + OFFSET_X , 1, -18.8 );
setRotateKey( spep_0 + 316 + OFFSET_X , 1, -19.1 );
setRotateKey( spep_0 + 317 + OFFSET_X , 1, -19.1 );
setRotateKey( spep_0 + 318 + OFFSET_X , 1, -19.3 );
setRotateKey( spep_0 + 319 + OFFSET_X , 1, -19.3 );
setRotateKey( spep_0 + 320 + OFFSET_X , 1, -19.5 );
setRotateKey( spep_0 + 321 + OFFSET_X , 1, -19.5 );
setRotateKey( spep_0 + 322 + OFFSET_X , 1, -19.6 );
setRotateKey( spep_0 + 323 + OFFSET_X , 1, -19.6 );
setRotateKey( spep_0 + 324 + OFFSET_X , 1, -19.7 );
setRotateKey( spep_0 + 325 + OFFSET_X , 1, -19.7 );
setRotateKey( spep_0 + 326 + OFFSET_X , 1, -19.8 );
setRotateKey( spep_0 + 329 + OFFSET_X , 1, -19.8 );
setRotateKey( spep_0 + 330 + OFFSET_X , 1, -19.9 );
setRotateKey( spep_0 + 335 + OFFSET_X , 1, -19.9 );
setRotateKey( spep_0 + 336 + OFFSET_X , 1, -20 );
setRotateKey( spep_0 + 356 + OFFSET_X , 1, -20 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 210, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 133 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 212, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 38 );
SE004 = playSeVer2( spep_0 + 0, 1474, "",spep_0 + 214, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 464 );

--顔アップ
SE005 = playSeVer2( spep_0 + 62, 1336, "",spep_0 + 170, 16, 26, -1);
setSeVolumeByWorkId( spep_0 + 62, SE005, 77 );
setStartTimeMs( SE005,  1000 );
setPitch( spep_0 + 62, SE005, 600 );
setTimeStretch( SE005, 1.4, 30, 4 );
SE009 = playSeVer2( spep_0 + 68, 1264, "",spep_0 + 282, 0, 96, -1);
setSeVolumeByWorkId( spep_0 + 68, SE009, 71 );

--向かっていく
SE006 = playSeVer2( spep_0 + 34, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 34, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 44, 1277, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 130;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ
SE010 = playSeVer2( spep_0 + 146, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 170, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 174, 1359, "", 0, 0, 0, -1);

--蹴り
SE013 = playSeVer2( spep_0 + 228, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE013, 178 );
SE014 = playSeVer2( spep_0 + 238, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 238, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE016 = playSeVer2( spep_0 + 250, 1121, "",spep_0 + 402, 0, 54, -1);
SE017 = playSeVer2( spep_0 + 292, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE017, 78 );

--岩激突
SE018 = playSeVer2( spep_0 + 342, 1427, "",spep_0 + 446, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 342, SE018, 63 );
SE019 = playSeVer2( spep_0 + 356, 1159, "",spep_0 + 444, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 356, SE019, 79 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 428

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--煙あける
SE020 = playSeVer2( spep_1 + 60, 1159, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_1 + 60, SE020, 63 );
setStartTimeMs( SE020,  1333 );
SE021 = playSeVer2( spep_1 + 64, 1168, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE021, 67 );
setStartTimeMs( SE021,  1400 );
SE023 = playSeVer2( spep_1 + 68, 1219, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_1 + 68, SE023, 67 );
setStartTimeMs( SE023,  667 );

--オーラ
SE024 = playSeVer2( spep_1 + 80, 1181, "",spep_2 + 278, 26, 36, -1);
setSeVolumeByWorkId( spep_1 + 80, SE024, 145 );
SE025 = playSeVer2( spep_1 + 80, 1176, "",spep_2 + 278, 28, 36, -1);
setSeVolumeByWorkId( spep_1 + 80, SE025, 33 );
SE026 = playSeVer2( spep_1 + 80, 1474, "",spep_2 + 280, 30, 38, -1);
setSeVolumeByWorkId( spep_1 + 80, SE026, 441 );

------------------------------------------------------
-- 煙からベジータの腕〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 598;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 煙からベジータの腕〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_2 + 134;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--気弾溜め
SE027 = playSeVer2( spep_2 + 106, 1210, "",spep_2 + 318, 56, 36, -1);
setSeVolumeByWorkId( spep_2 + 106, SE027, 74 );
setStartTimeMs( SE027,  2000 );

--腕前に出す
SE028 = playSeVer2( spep_2 + 30, 1189, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 38, 1006, "", 0, 0, 0, -1);

--イナヅマ走る
SE030 = playSeVer2( spep_2 + 58, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE030, 74 );

--地響き
SE031 = playSeVer2( spep_2 + 98, 1226, "",spep_2 + 314, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 98, SE031, 69 );

--気弾溜め
SE032 = playSeVer2( spep_2 + 106, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE032, 72 );
SE033 = playSeVer2( spep_2 + 110, 1296, "",spep_2 + 250, 0, 90, -1);
setSeVolumeByWorkId( spep_2 + 110, SE033, 67 );
SE035 = playSeVer2( spep_2 + 130, 1158, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE035, 62 );

--気弾発射
SE036 = playSeVer2( spep_2 + 264, 1258, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 268, 1423, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 268, 1213, "",spep_2 + 486, 0, 42, -1);
setSeVolumeByWorkId( spep_2 + 268, SE038, 67 );
SE039 = playSeVer2( spep_2 + 268, 1266, "",spep_2 + 468, 0, 28, -1);

--気弾飛んでいく
SE040 = playSeVer2( spep_2 + 348, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 348, SE040, 133 );

--気弾飛んでいく２
SE041 = playSeVer2( spep_2 + 464, 1212, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 464, SE041, 75 );
setStartTimeMs( SE041,  667 );
SE042 = playSeVer2( spep_2 + 432, 1305, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE042, 146 );
SE046 = playSeVer2( spep_2 + 460, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 460, SE046, 83 );
SE047 = playSeVer2( spep_2 + 470, 1124, "", 0, 32, 0, -1);

--岩爆発
SE043 = playSeVer2( spep_2 + 432, 1061, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 436, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 436, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 490 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 598

end