-- 4029110: LR_ジレン(フルパワー)_超必殺技(変身後)：オメガヒート・マグネトロン
-- sp_effect_b4_00332
-- sp2731

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163057;  -- 開始～カードカットイン前 ef_001
--SP_001b = 163058;  -- 開始～カードカットイン前 ef_001b
SP_002 = 163059;  -- カードカットイン後～フィニッシュまで ef_002
--SP_002b = 163060;  -- カードカットイン後～フィニッシュまで ef_002b

-- 敵側
--SP_002r = 163061;  -- カードカットイン後～フィニッシュまで（敵側・反転） ef_002r
--SP_002br = 163062;  -- カードカットイン後～フィニッシュまで（敵側・反転） ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始～カードカットイン前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 418;
MAX_FRAME_2 = 678;

MAX_FRAME_ALL = MAX_FRAME_0 + 94 + MAX_FRAME_2;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開始～カードカットイン前 ef_001
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
-- 敵の動き1
setDisp( spep_0 + 110 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 150 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 110 + OFFSET_X , 1, 103 );

setMoveKey( spep_0 + 110 + OFFSET_X , 1, 277, 79.1 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X , 1, 277, 79.1 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X , 1, 273.2, 75.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X , 1, 273.2, 75.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X , 1, 269.4, 72.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X , 1, 269.4, 72.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X , 1, 265.6, 68.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X , 1, 265.6, 68.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X , 1, 250.3, 67.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X , 1, 250.3, 67.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X , 1, 235, 66.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X , 1, 235, 66.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X , 1, 219.7, 65.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X , 1, 219.7, 65.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X , 1, 211.8, 67 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X , 1, 211.8, 67 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X , 1, 203.9, 68.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X , 1, 203.9, 68.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X , 1, 196, 69.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X , 1, 196, 69.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X , 1, 193.9, 64.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X , 1, 193.9, 64.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X , 1, 191.9, 58.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X , 1, 191.9, 58.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X , 1, 189.9, 52.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X , 1, 189.9, 52.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X , 1, 174.1, 52.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X , 1, 174.1, 52.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X , 1, 158.3, 52.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X , 1, 158.3, 52.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X , 1, 142.5, 53.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X , 1, 142.5, 53.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X , 1, 138.7, 51.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X , 1, 138.7, 51.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X , 1, 134.8, 50.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X , 1, 134.8, 50.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X , 1, 131, 48.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X , 1, 131, 48.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X , 1, 118.4, 49.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X , 1, 118.4, 49.2 , 0 );

setScaleKey( spep_0 + 110 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 150 + OFFSET_X , 1, 0.7, 0.7 );

setRotateKey( spep_0 + 110 + OFFSET_X , 1, -31.7 );
setRotateKey( spep_0 + 150 + OFFSET_X , 1, -31.7 );

-- 敵の動き2
setDisp( spep_0 + 220 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 310 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 220 + OFFSET_X , 1, 104 );
changeAnime( spep_0 + 228 + OFFSET_X , 1, 108 );
changeAnime( spep_0 + 276 + OFFSET_X , 1, 106 );

setMoveKey( spep_0 + 220 + OFFSET_X , 1, 23.9, -199.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X , 1, 23.9, -199.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X , 1, 49.3, -123.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X , 1, 49.3, -123.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X , 1, 89.9, -94 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X , 1, 89.9, -94 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X , 1, 96.2, -156.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X , 1, 96.2, -156.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X , 1, 103.2, -123 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X , 1, 103.2, -123 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X , 1, 127.8, -98.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X , 1, 127.8, -98.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, 107.2, -117.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X , 1, 107.2, -117.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X , 1, 86.8, -94 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X , 1, 86.8, -94 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X , 1, 110.6, -115.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X , 1, 110.6, -115.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X , 1, 132.8, -135.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X , 1, 132.8, -135.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X , 1, 112.4, -113.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, 112.4, -113.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, 101.4, -124.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, 101.4, -124.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, 113.6, -112.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, 113.6, -112.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, 113.9, -96.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X , 1, 113.9, -96.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X , 1, 114.2, -111.4 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X , 1, 114.2, -111.4 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X , 1, 114.4, -111.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X , 1, 114.4, -111.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X , 1, 114.5, -111.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X , 1, 114.5, -111.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X , 1, 114.5, -111 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X , 1, 114.5, -111 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X , 1, 114.6, -110.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X , 1, 114.6, -110.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X , 1, 114.8, -110.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X , 1, 114.8, -110.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X , 1, 115.1, -110 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X , 1, 115.1, -110 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X , 1, 115.4, -109.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X , 1, 115.4, -109.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X , 1, 115.9, -108.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X , 1, 115.9, -108.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X , 1, 117.3, -105.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X , 1, 117.3, -105.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X , 1, 0.1, -113.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X , 1, 0.1, -113.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, 0.4, -217.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X , 1, 0.4, -217.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X , 1, -32.8, -116.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X , 1, -32.8, -116.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X , 1, 34.1, -195.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X , 1, 34.1, -195.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X , 1, 0.1, -158.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X , 1, 0.1, -158.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X , 1, -0.1, -125.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X , 1, -0.1, -125.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X , 1, -0.3, -180.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X , 1, -0.3, -180.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X , 1, 22.6, -127.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X , 1, 22.6, -127.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X , 1, -17.6, -163.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X , 1, -17.6, -163.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X , 1, -25.7, -116.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X , 1, -25.7, -116.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X , 1, 15.1, -151.8 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X , 1, 15.1, -151.8 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X , 1, 26.6, -98.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X , 1, 26.6, -98.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X , 1, -3.1, -119.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X , 1, -3.1, -119.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X , 1, -21, -93 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X , 1, -21, -93 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X , 1, -5.5, -99.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X , 1, -5.5, -99.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X , 1, -5.9, -92.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X , 1, -5.9, -92.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X , 1, -6.9, -76.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X , 1, -6.9, -76.5 , 0 );

setScaleKey( spep_0 + 220 + OFFSET_X , 1, 5.86, 5.86 );
setScaleKey( spep_0 + 227 + OFFSET_X , 1, 5.86, 5.86 );
setScaleKey( spep_0 + 228 + OFFSET_X , 1, 6.85, 6.85 );
setScaleKey( spep_0 + 229 + OFFSET_X , 1, 6.85, 6.85 );
setScaleKey( spep_0 + 230 + OFFSET_X , 1, 6.13, 6.13 );
setScaleKey( spep_0 + 231 + OFFSET_X , 1, 6.13, 6.13 );
setScaleKey( spep_0 + 232 + OFFSET_X , 1, 6.02, 6.02 );
setScaleKey( spep_0 + 233 + OFFSET_X , 1, 6.02, 6.02 );
setScaleKey( spep_0 + 234 + OFFSET_X , 1, 5.56, 5.56 );
setScaleKey( spep_0 + 235 + OFFSET_X , 1, 5.56, 5.56 );
setScaleKey( spep_0 + 236 + OFFSET_X , 1, 5.38, 5.38 );
setScaleKey( spep_0 + 237 + OFFSET_X , 1, 5.38, 5.38 );
setScaleKey( spep_0 + 238 + OFFSET_X , 1, 5.25, 5.25 );
setScaleKey( spep_0 + 239 + OFFSET_X , 1, 5.25, 5.25 );
setScaleKey( spep_0 + 240 + OFFSET_X , 1, 5.15, 5.15 );
setScaleKey( spep_0 + 241 + OFFSET_X , 1, 5.15, 5.15 );
setScaleKey( spep_0 + 242 + OFFSET_X , 1, 5.07, 5.07 );
setScaleKey( spep_0 + 243 + OFFSET_X , 1, 5.07, 5.07 );
setScaleKey( spep_0 + 244 + OFFSET_X , 1, 5, 5 );
setScaleKey( spep_0 + 245 + OFFSET_X , 1, 5, 5 );
setScaleKey( spep_0 + 246 + OFFSET_X , 1, 4.95, 4.95 );
setScaleKey( spep_0 + 247 + OFFSET_X , 1, 4.95, 4.95 );
setScaleKey( spep_0 + 248 + OFFSET_X , 1, 4.91, 4.91 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 4.91, 4.91 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 4.87, 4.87 );
setScaleKey( spep_0 + 251 + OFFSET_X , 1, 4.87, 4.87 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 4.85, 4.85 );
setScaleKey( spep_0 + 253 + OFFSET_X , 1, 4.85, 4.85 );
setScaleKey( spep_0 + 254 + OFFSET_X , 1, 4.83, 4.83 );
setScaleKey( spep_0 + 255 + OFFSET_X , 1, 4.83, 4.83 );
setScaleKey( spep_0 + 256 + OFFSET_X , 1, 4.82, 4.82 );
setScaleKey( spep_0 + 257 + OFFSET_X , 1, 4.82, 4.82 );
setScaleKey( spep_0 + 258 + OFFSET_X , 1, 4.81, 4.81 );
setScaleKey( spep_0 + 259 + OFFSET_X , 1, 4.81, 4.81 );
setScaleKey( spep_0 + 260 + OFFSET_X , 1, 4.82, 4.82 );
setScaleKey( spep_0 + 261 + OFFSET_X , 1, 4.82, 4.82 );
setScaleKey( spep_0 + 262 + OFFSET_X , 1, 4.83, 4.83 );
setScaleKey( spep_0 + 263 + OFFSET_X , 1, 4.83, 4.83 );
setScaleKey( spep_0 + 264 + OFFSET_X , 1, 4.85, 4.85 );
setScaleKey( spep_0 + 265 + OFFSET_X , 1, 4.85, 4.85 );
setScaleKey( spep_0 + 266 + OFFSET_X , 1, 4.87, 4.87 );
setScaleKey( spep_0 + 267 + OFFSET_X , 1, 4.87, 4.87 );
setScaleKey( spep_0 + 268 + OFFSET_X , 1, 4.91, 4.91 );
setScaleKey( spep_0 + 269 + OFFSET_X , 1, 4.91, 4.91 );
setScaleKey( spep_0 + 270 + OFFSET_X , 1, 4.96, 4.96 );
setScaleKey( spep_0 + 271 + OFFSET_X , 1, 4.96, 4.96 );
setScaleKey( spep_0 + 272 + OFFSET_X , 1, 5.04, 5.04 );
setScaleKey( spep_0 + 273 + OFFSET_X , 1, 5.04, 5.04 );
setScaleKey( spep_0 + 274 + OFFSET_X , 1, 5.25, 5.25 );
setScaleKey( spep_0 + 275 + OFFSET_X , 1, 5.25, 5.25 );
setScaleKey( spep_0 + 276 + OFFSET_X , 1, 5.76, 5.76 );
setScaleKey( spep_0 + 285 + OFFSET_X , 1, 5.76, 5.76 );
setScaleKey( spep_0 + 286 + OFFSET_X , 1, 5.75, 5.75 );
setScaleKey( spep_0 + 287 + OFFSET_X , 1, 5.75, 5.75 );
setScaleKey( spep_0 + 288 + OFFSET_X , 1, 5.74, 5.74 );
setScaleKey( spep_0 + 289 + OFFSET_X , 1, 5.74, 5.74 );
setScaleKey( spep_0 + 290 + OFFSET_X , 1, 5.72, 5.72 );
setScaleKey( spep_0 + 291 + OFFSET_X , 1, 5.72, 5.72 );
setScaleKey( spep_0 + 292 + OFFSET_X , 1, 5.69, 5.69 );
setScaleKey( spep_0 + 293 + OFFSET_X , 1, 5.69, 5.69 );
setScaleKey( spep_0 + 294 + OFFSET_X , 1, 5.66, 5.66 );
setScaleKey( spep_0 + 295 + OFFSET_X , 1, 5.66, 5.66 );
setScaleKey( spep_0 + 296 + OFFSET_X , 1, 5.63, 5.63 );
setScaleKey( spep_0 + 297 + OFFSET_X , 1, 5.63, 5.63 );
setScaleKey( spep_0 + 298 + OFFSET_X , 1, 5.59, 5.59 );
setScaleKey( spep_0 + 299 + OFFSET_X , 1, 5.59, 5.59 );
setScaleKey( spep_0 + 300 + OFFSET_X , 1, 5.54, 5.54 );
setScaleKey( spep_0 + 301 + OFFSET_X , 1, 5.54, 5.54 );
setScaleKey( spep_0 + 302 + OFFSET_X , 1, 5.49, 5.49 );
setScaleKey( spep_0 + 303 + OFFSET_X , 1, 5.49, 5.49 );
setScaleKey( spep_0 + 304 + OFFSET_X , 1, 5.43, 5.43 );
setScaleKey( spep_0 + 305 + OFFSET_X , 1, 5.43, 5.43 );
setScaleKey( spep_0 + 306 + OFFSET_X , 1, 5.37, 5.37 );
setScaleKey( spep_0 + 307 + OFFSET_X , 1, 5.37, 5.37 );
setScaleKey( spep_0 + 308 + OFFSET_X , 1, 5.3, 5.3 );
setScaleKey( spep_0 + 310 + OFFSET_X , 1, 5.3, 5.3 );

setRotateKey( spep_0 + 220 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 227 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 228 + OFFSET_X , 1, 12.9 );
setRotateKey( spep_0 + 229 + OFFSET_X , 1, 12.9 );
setRotateKey( spep_0 + 230 + OFFSET_X , 1, 14.9 );
setRotateKey( spep_0 + 231 + OFFSET_X , 1, 14.9 );
setRotateKey( spep_0 + 232 + OFFSET_X , 1, 15.2 );
setRotateKey( spep_0 + 233 + OFFSET_X , 1, 15.2 );
setRotateKey( spep_0 + 234 + OFFSET_X , 1, 14.3 );
setRotateKey( spep_0 + 235 + OFFSET_X , 1, 14.3 );
setRotateKey( spep_0 + 236 + OFFSET_X , 1, 13.9 );
setRotateKey( spep_0 + 237 + OFFSET_X , 1, 13.9 );
setRotateKey( spep_0 + 238 + OFFSET_X , 1, 13.7 );
setRotateKey( spep_0 + 239 + OFFSET_X , 1, 13.7 );
setRotateKey( spep_0 + 240 + OFFSET_X , 1, 13.5 );
setRotateKey( spep_0 + 241 + OFFSET_X , 1, 13.5 );
setRotateKey( spep_0 + 242 + OFFSET_X , 1, 13.3 );
setRotateKey( spep_0 + 243 + OFFSET_X , 1, 13.3 );
setRotateKey( spep_0 + 244 + OFFSET_X , 1, 13.2 );
setRotateKey( spep_0 + 245 + OFFSET_X , 1, 13.2 );
setRotateKey( spep_0 + 246 + OFFSET_X , 1, 13.1 );
setRotateKey( spep_0 + 247 + OFFSET_X , 1, 13.1 );
setRotateKey( spep_0 + 248 + OFFSET_X , 1, 13 );
setRotateKey( spep_0 + 251 + OFFSET_X , 1, 13 );
setRotateKey( spep_0 + 252 + OFFSET_X , 1, 12.9 );
setRotateKey( spep_0 + 255 + OFFSET_X , 1, 12.9 );
setRotateKey( spep_0 + 256 + OFFSET_X , 1, 12.8 );
setRotateKey( spep_0 + 265 + OFFSET_X , 1, 12.8 );
setRotateKey( spep_0 + 266 + OFFSET_X , 1, 12.7 );
setRotateKey( spep_0 + 267 + OFFSET_X , 1, 12.7 );
setRotateKey( spep_0 + 268 + OFFSET_X , 1, 12.6 );
setRotateKey( spep_0 + 269 + OFFSET_X , 1, 12.6 );
setRotateKey( spep_0 + 270 + OFFSET_X , 1, 12.5 );
setRotateKey( spep_0 + 271 + OFFSET_X , 1, 12.5 );
setRotateKey( spep_0 + 272 + OFFSET_X , 1, 12.3 );
setRotateKey( spep_0 + 273 + OFFSET_X , 1, 12.3 );
setRotateKey( spep_0 + 274 + OFFSET_X , 1, 11.7 );
setRotateKey( spep_0 + 275 + OFFSET_X , 1, 11.7 );
setRotateKey( spep_0 + 276 + OFFSET_X , 1, -43.4 );
setRotateKey( spep_0 + 310 + OFFSET_X , 1, -43.4 );

-- 敵の動き3
setDisp( spep_0 + 370 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 418 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 370 + OFFSET_X , 1, 108 );

setMoveKey( spep_0 + 370 + OFFSET_X , 1, 61, 47.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X , 1, 61, 47.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X , 1, 93.5, -0.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X , 1, 93.5, -0.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X , 1, 105.9, -19.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X , 1, 105.9, -19.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X , 1, 114.6, 17.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X , 1, 114.6, 17.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X , 1, 120.2, -78.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X , 1, 120.2, -78.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X , 1, 124.3, -50.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X , 1, 124.3, -50.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X , 1, 149.1, -34.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X , 1, 149.1, -34.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X , 1, 129.3, -61.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X , 1, 129.3, -61.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X , 1, 105.2, -39.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X , 1, 105.2, -39.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X , 1, 131, -67.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X , 1, 131, -67.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X , 1, 114.8, -84.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X , 1, 114.8, -84.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X , 1, 130, -69.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X , 1, 130, -69.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X , 1, 140.6, -81.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X , 1, 140.6, -81.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X , 1, 127.7, -69.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X , 1, 127.7, -69.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X , 1, 117.3, -60.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X , 1, 117.3, -60.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X , 1, 125.4, -69.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X , 1, 125.4, -69.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X , 1, 124.2, -61.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X , 1, 124.2, -61.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X , 1, 123.1, -69.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X , 1, 123.1, -69.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X , 1, 121.9, -69.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X , 1, 121.9, -69.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X , 1, 120.8, -69.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X , 1, 120.8, -69.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X , 1, 119.6, -69.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X , 1, 119.6, -69.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X , 1, 118.5, -69.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X , 1, 118.5, -69.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X , 1, 117.3, -69.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X , 1, 117.3, -69.6 , 0 );

setScaleKey( spep_0 + 370 + OFFSET_X , 1, 1.78, 1.78 );
setScaleKey( spep_0 + 373 + OFFSET_X , 1, 1.78, 1.78 );
setScaleKey( spep_0 + 374 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_0 + 375 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_0 + 376 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_0 + 377 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_0 + 378 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 379 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 380 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 381 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 382 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 383 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 384 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 385 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 386 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 387 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 388 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 389 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 390 + OFFSET_X , 1, 0.24, 0.24 );
setScaleKey( spep_0 + 391 + OFFSET_X , 1, 0.24, 0.24 );
setScaleKey( spep_0 + 392 + OFFSET_X , 1, 0.22, 0.22 );
setScaleKey( spep_0 + 401 + OFFSET_X , 1, 0.22, 0.22 );
setScaleKey( spep_0 + 402 + OFFSET_X , 1, 0.21, 0.21 );
setScaleKey( spep_0 + 418 + OFFSET_X , 1, 0.21, 0.21 );

setRotateKey( spep_0 + 370 + OFFSET_X , 1, 17 );
setRotateKey( spep_0 + 373 + OFFSET_X , 1, 17 );
setRotateKey( spep_0 + 374 + OFFSET_X , 1, 22.3 );
setRotateKey( spep_0 + 375 + OFFSET_X , 1, 22.3 );
setRotateKey( spep_0 + 376 + OFFSET_X , 1, 24.4 );
setRotateKey( spep_0 + 377 + OFFSET_X , 1, 24.4 );
setRotateKey( spep_0 + 378 + OFFSET_X , 1, 25.8 );
setRotateKey( spep_0 + 379 + OFFSET_X , 1, 25.8 );
setRotateKey( spep_0 + 380 + OFFSET_X , 1, 26.9 );
setRotateKey( spep_0 + 381 + OFFSET_X , 1, 26.9 );
setRotateKey( spep_0 + 382 + OFFSET_X , 1, 27.8 );
setRotateKey( spep_0 + 383 + OFFSET_X , 1, 27.8 );
setRotateKey( spep_0 + 384 + OFFSET_X , 1, 28.5 );
setRotateKey( spep_0 + 385 + OFFSET_X , 1, 28.5 );
setRotateKey( spep_0 + 386 + OFFSET_X , 1, 29 );
setRotateKey( spep_0 + 387 + OFFSET_X , 1, 29 );
setRotateKey( spep_0 + 388 + OFFSET_X , 1, 29.4 );
setRotateKey( spep_0 + 389 + OFFSET_X , 1, 29.4 );
setRotateKey( spep_0 + 390 + OFFSET_X , 1, 29.7 );
setRotateKey( spep_0 + 391 + OFFSET_X , 1, 29.7 );
setRotateKey( spep_0 + 392 + OFFSET_X , 1, 29.8 );
setRotateKey( spep_0 + 393 + OFFSET_X , 1, 29.8 );
setRotateKey( spep_0 + 394 + OFFSET_X , 1, 29.9 );
setRotateKey( spep_0 + 418 + OFFSET_X , 1, 29.9 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1267, "",spep_0 + 180, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 150 );
SE002 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 180, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 83 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 180, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 58 );

--構える
SE004 = playSeVer2( spep_0 + 22, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 22, 1233, "", 0, 0, 0, -1);

--向かっていく
SE006 = playSeVer2( spep_0 + 94, 1121, "",spep_0 + 242, 14, 26, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );
setStartTimeMs( SE006,  567 );
setPitch( spep_0 + 94, SE006, 400 );
setTimeStretch( SE006, 1.27, 30, 4 );
SE010 = playSeVer2( spep_0 + 100, 1183, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 68, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE007, 72 );
SE008 = playSeVer2( spep_0 + 68, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 68, 9, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 106, 1232, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 138, 1011, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 170, 1182, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE013, 124 );
setStartTimeMs( SE013,  133 );
SE014 = playSeVer2( spep_0 + 174, 1116, "",spep_0 + 220, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 174, SE014, 129 );

--オーラ2
SE061 = playSeVer2( spep_0 + 180, 1267, "",spep_0 + 250, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE061, 150 );
SE062 = playSeVer2( spep_0 + 180, 1268, "",spep_0 + 252, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE062, 83 );
SE063 = playSeVer2( spep_0 + 180, 1176, "",spep_0 + 256, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 58 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 200;  -- エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE061, 0);
    stopSe( SP_dodge - 12, SE062, 0);
    stopSe( SP_dodge - 12, SE063, 0);

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
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ
SE015 = playSeVer2( spep_0 + 222, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 222, 1359, "", 0, 0, 0, -1);

--アッパー
SE017 = playSeVer2( spep_0 + 260, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 268, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 268, 1187, "",spep_0 + 324, 0, 36, -1);

--振りかぶる
SE020 = playSeVer2( spep_0 + 306, 1116, "",spep_0 + 358, 0, 26, -1);
SE021 = playSeVer2( spep_0 + 312, 1117, "",spep_0 + 362, 0, 22, -1);
SE022 = playSeVer2( spep_0 + 314, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 344, 1188, "",spep_0 + 388, 12, 18, -1);
setStartTimeMs( SE023,  200 );
SE024 = playSeVer2( spep_0 + 344, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE025 = playSeVer2( spep_0 + 360, 1123, "",spep_0 + 444, 0, 22, -1);
SE026 = playSeVer2( spep_0 + 364, 1153, "", 0, 0, 0, -1);

--敵飛んでいく
SE027 = playSeVer2( spep_0 + 388, 1121, "",spep_0 + 444, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 418

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--飛び上がる
SE029 = playSeVer2( spep_1 + 82, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE029, 70 );
SE030 = playSeVer2( spep_1 + 82, 1245, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 82, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE031, 63 );

------------------------------------------------------
-- カードカットイン後～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 678;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- カードカットイン後～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
--SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- カードカットイン後～フィニッシュまで ef_002b
--setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
--setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
--setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
--setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
--setEffRotateKey( spep_2 + 0, SP_02b, 0 );
--setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
--setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
--setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 250;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 190 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 260 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 190 + OFFSET_X , 1, 107 );

setMoveKey( spep_2 + 190 + OFFSET_X , 1, -4.2, -136.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, -4.2, -136.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, -4.3, -121.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, -4.3, -121.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, -21.6, -136.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, -21.6, -136.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, -14.8, -126.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, -14.8, -126.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, 8.5, -149.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, 8.5, -149.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, -16.3, -149 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, -16.3, -149 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, -6.8, -67 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X , 1, -6.8, -67 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, -4.3, -204.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, -4.3, -204.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, 22.1, -155.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, 22.1, -155.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, -4.1, -82.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, -4.1, -82.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, -4.3, -203.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, -4.3, -203.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, 31.9, -173.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, 31.9, -173.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, 33.4, -99.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 33.4, -99.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, -41.3, -99.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -41.3, -99.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, 48.4, -136.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, 48.4, -136.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, -4.3, -182.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, -4.3, -182.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X , 1, -52.6, -136.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, -52.6, -136.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X , 1, -4.3, -89.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, -4.3, -89.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, 31.1, -172.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, 31.1, -172.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, -4.3, -136.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, -4.3, -136.9 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_2 + 191 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_2 + 192 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 193 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 194 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 195 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 196 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 199 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 200 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 201 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 202 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 203 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 204 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 207 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 208 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 209 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 211 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 212 + OFFSET_X , 1, 1.02, 1.02 );
setScaleKey( spep_2 + 215 + OFFSET_X , 1, 1.02, 1.02 );
setScaleKey( spep_2 + 216 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 217 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 218 + OFFSET_X , 1, 1.04, 1.04 );
setScaleKey( spep_2 + 219 + OFFSET_X , 1, 1.04, 1.04 );
setScaleKey( spep_2 + 220 + OFFSET_X , 1, 1.05, 1.05 );
setScaleKey( spep_2 + 221 + OFFSET_X , 1, 1.05, 1.05 );
setScaleKey( spep_2 + 222 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_2 + 225 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_2 + 226 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 227 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 228 + OFFSET_X , 1, 1.08, 1.08 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 1.08, 1.08 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 1.09, 1.09 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 1.09, 1.09 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 1.11, 1.11 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 1.11, 1.11 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 241 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_2 + 243 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_2 + 244 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 245 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 1.15, 1.15 );
setScaleKey( spep_2 + 249 + OFFSET_X , 1, 1.15, 1.15 );
setScaleKey( spep_2 + 250 + OFFSET_X , 1, 1.16, 1.16 );
setScaleKey( spep_2 + 251 + OFFSET_X , 1, 1.16, 1.16 );
setScaleKey( spep_2 + 252 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 257 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 258 + OFFSET_X , 1, 1.19, 1.19 );
setScaleKey( spep_2 + 260 + OFFSET_X , 1, 1.19, 1.19 );

setRotateKey( spep_2 + 190 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 260 + OFFSET_X , 1, 0 );

setBlendColor( spep_2 + 190 + OFFSET_X , 1, 3, 0, 0, 0, 0.0 );
setBlendColor( spep_2 + 196 + OFFSET_X , 1, 3, 0, 0, 0, 0.05 );
setBlendColor( spep_2 + 202 + OFFSET_X , 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_2 + 208 + OFFSET_X , 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_2 + 214 + OFFSET_X , 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 220 + OFFSET_X , 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_2 + 226 + OFFSET_X , 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 230 + OFFSET_X , 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_2 + 234 + OFFSET_X , 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 238 + OFFSET_X , 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_2 + 242 + OFFSET_X , 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_2 + 246 + OFFSET_X , 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 250 + OFFSET_X , 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_2 + 254 + OFFSET_X , 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 258 + OFFSET_X , 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 260 + OFFSET_X , 1, 3, 0, 0, 0, 0.0 );

-- 敵の動き2
setDisp( spep_2 + 348 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 420 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 348 + OFFSET_X , 1, 108 );

setMoveKey( spep_2 + 348 + OFFSET_X , 1, 100.4, -14 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X , 1, 100.4, -14 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X , 1, 107.5, -14.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X , 1, 107.5, -14.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X , 1, 114.6, -28.2 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X , 1, 114.6, -28.2 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X , 1, 128.6, -35.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X , 1, 128.6, -35.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X , 1, 128.9, -42.4 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X , 1, 128.9, -42.4 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X , 1, 132, -45.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X , 1, 132, -45.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X , 1, 143.1, -56.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X , 1, 143.1, -56.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X , 1, 145, -69 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X , 1, 145, -69 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X , 1, 157.4, -70.8 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X , 1, 157.4, -70.8 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X , 1, 170.7, -84.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X , 1, 170.7, -84.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X , 1, 171.7, -85 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X , 1, 171.7, -85 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X , 1, 182.8, -88.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X , 1, 182.8, -88.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X , 1, 185.9, -99.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X , 1, 185.9, -99.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X , 1, 186.3, -99.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X , 1, 186.3, -99.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X , 1, 200.2, -65.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X , 1, 200.2, -65.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X , 1, 214.8, -158.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X , 1, 214.8, -158.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X , 1, 235.4, -106.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X , 1, 235.4, -106.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X , 1, 184.2, -134.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X , 1, 184.2, -134.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X , 1, 250.4, -163.5 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X , 1, 250.4, -163.5 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X , 1, 221.4, -134.5 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X , 1, 221.4, -134.5 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X , 1, 243, -156 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X , 1, 243, -156 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X , 1, 242.4, -170.9 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X , 1, 242.4, -170.9 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X , 1, 257.2, -170.2 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X , 1, 257.2, -170.2 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X , 1, 264.4, -165.6 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X , 1, 264.4, -165.6 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X , 1, 271.5, -184.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X , 1, 271.5, -184.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X , 1, 291.6, -191.5 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X , 1, 291.6, -191.5 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X , 1, 285.8, -198.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X , 1, 285.8, -198.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X , 1, 308.2, -205.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X , 1, 308.2, -205.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X , 1, 300, -212.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X , 1, 300, -212.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X , 1, 307.2, -208.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X , 1, 307.2, -208.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X , 1, 314.3, -227 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X , 1, 314.3, -227 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X , 1, 308.1, -234.1 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X , 1, 308.1, -234.1 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X , 1, 328.6, -241.2 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X , 1, 328.6, -241.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X , 1, 335.7, -266.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X , 1, 335.7, -266.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X , 1, 342.8, -255.4 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X , 1, 342.8, -255.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X , 1, 369, -243.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X , 1, 369, -243.4 , 0 );

setScaleKey( spep_2 + 348 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 420 + OFFSET_X , 1, 1.18, 1.18 );

setRotateKey( spep_2 + 348 + OFFSET_X , 1, 24.3 );
setRotateKey( spep_2 + 420 + OFFSET_X , 1, 24.3 );

-- ** 音 ** --
--飛び上がる
SE032 = playSeVer2( spep_2 + 4, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE032, 122 );

--気弾溜め
SE033 = playSeVer2( spep_2 + 76, 1371, "",spep_2 + 190, 18, 42, -1);
setSeVolumeByWorkId( spep_2 + 76, SE033, 63 );
setStartTimeMs( SE033,  1000 );
SE035 = playSeVer2( spep_2 + 76, 1443, "",spep_2 + 186, 10, 38, -1);
setSeVolumeByWorkId( spep_2 + 76, SE035, 150 );
setStartTimeMs( SE035,  533 );
SE036 = playSeVer2( spep_2 + 84, 1263, "",spep_2 + 184, 6, 34, -1);
setSeVolumeByWorkId( spep_2 + 84, SE036, 126 );
setStartTimeMs( SE036,  567 );
SE037 = playSeVer2( spep_2 + 82, 1440, "", 0, 0, 0, -1);

--画面遷移
SE034 = playSeVer2( spep_2 + 44, 1232, "", 0, 0, 0, -1);

--気弾発射
SE038 = playSeVer2( spep_2 + 140, 1146, "",spep_2 + 288, 0, 32, -1);
SE039 = playSeVer2( spep_2 + 140, 1177, "",spep_2 + 288, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 140, SE039, 82 );
SE040 = playSeVer2( spep_2 + 140, 1213, "",spep_2 + 280, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 140, SE040, 83 );
SE041 = playSeVer2( spep_2 + 140, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE041, 207 );

--気弾飛んでいく
SE042 = playSeVer2( spep_2 + 148, 1215, "",spep_2 + 280, 0, 26, -1);
SE043 = playSeVer2( spep_2 + 166, 1422, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE043, 130 );

--画面遷移
SE044 = playSeVer2( spep_2 + 238, 8, "", 0, 0, 0, -1);

--オーラ
SE046 = playSeVer2( spep_2 + 264, 1267, "",spep_2 + 384, 0, 32, -1);
SE047 = playSeVer2( spep_2 + 264, 1268, "",spep_2 + 384, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 264, SE047, 72 );
SE048 = playSeVer2( spep_2 + 264, 1176, "",spep_2 + 382, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 264, SE048, 52 );

--気弾落ちていく
SE049 = playSeVer2( spep_2 + 338, 1193, "",spep_2 + 494, 14, 56, -1);
setStartTimeMs( SE049,  967 );
SE052 = playSeVer2( spep_2 + 338, 1226, "",spep_2 + 600, 0, 10, -1);
SE053 = playSeVer2( spep_2 + 338, 1213, "",spep_2 + 502, 24, 56, -1);
SE054 = playSeVer2( spep_2 + 338, 1356, "",spep_2 + 468, 0, 40, -1);

--拳握る
SE050 = playSeVer2( spep_2 + 302, 1189, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 308, 1006, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_2 + 420, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 420, 1427, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 426, 1067, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 438, 1024, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 474, 1268, "", 0, 36, 0, -1);
setSeVolumeByWorkId( spep_2 + 474, SE059, 288 );

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_2 + 470 );
endPhase( spep_2 + MAX_FRAME_2 - 96);  -- 678 - 96

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始～カードカットイン前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 418;
MAX_FRAME_2 = 678;

MAX_FRAME_ALL = MAX_FRAME_0 + 94 + MAX_FRAME_2;

setupMovie(0 , SP_001, 0, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開始～カードカットイン前 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
--SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開始～カードカットイン前 ef_001b
--setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
--setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
--setEffScaleKey( spep_0 + 0, SP_01b, -1.0, 1.0 );
--setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, -1.0, 1.0 );
--setEffRotateKey( spep_0 + 0, SP_01b, 0 );
--setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
--setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
--setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 110 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 150 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 110 + OFFSET_X , 1,3 );

setMoveKey( spep_0 + 110 + OFFSET_X , 1, -277, 79.1 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X , 1, -277, 79.1 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X , 1, -273.2, 75.7 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X , 1, -273.2, 75.7 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X , 1, -269.4, 72.2 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X , 1, -269.4, 72.2 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X , 1, -265.6, 68.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X , 1, -265.6, 68.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X , 1, -250.3, 67.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X , 1, -250.3, 67.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X , 1, -235, 66.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X , 1, -235, 66.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X , 1, -219.7, 65.5 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X , 1, -219.7, 65.5 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X , 1, -211.8, 67 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X , 1, -211.8, 67 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X , 1, -203.9, 68.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X , 1, -203.9, 68.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X , 1, -196, 69.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X , 1, -196, 69.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X , 1, -193.9, 64.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X , 1, -193.9, 64.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X , 1, -191.9, 58.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X , 1, -191.9, 58.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X , 1, -189.9, 52.4 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X , 1, -189.9, 52.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X , 1, -174.1, 52.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X , 1, -174.1, 52.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X , 1, -158.3, 52.9 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X , 1, -158.3, 52.9 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X , 1, -142.5, 53.1 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X , 1, -142.5, 53.1 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X , 1, -138.7, 51.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X , 1, -138.7, 51.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X , 1, -134.8, 50.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X , 1, -134.8, 50.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X , 1, -131, 48.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X , 1, -131, 48.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X , 1, -118.4, 49.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X , 1, -118.4, 49.2 , 0 );

setScaleKey( spep_0 + 110 + OFFSET_X , 1, 0.7, 0.7 );
setScaleKey( spep_0 + 150 + OFFSET_X , 1, 0.7, 0.7 );

setRotateKey( spep_0 + 110 + OFFSET_X , 1, 31.7 );
setRotateKey( spep_0 + 150 + OFFSET_X , 1, 31.7 );

-- 敵の動き2
setDisp( spep_0 + 220 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 310 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 220 + OFFSET_X , 1,4 );
changeAnime( spep_0 + 228 + OFFSET_X , 1,8 );
changeAnime( spep_0 + 276 + OFFSET_X , 1,6 );

setMoveKey( spep_0 + 220 + OFFSET_X , 1, -23.9, -199.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X , 1, -23.9, -199.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X , 1, -49.3, -123.8 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X , 1, -49.3, -123.8 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X , 1, -89.9, -94 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X , 1, -89.9, -94 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X , 1, -96.2, -156.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X , 1, -96.2, -156.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X , 1, -103.2, -123 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X , 1, -103.2, -123 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X , 1, -127.8, -98.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X , 1, -127.8, -98.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, -107.2, -117.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X , 1, -107.2, -117.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X , 1, -86.8, -94 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X , 1, -86.8, -94 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X , 1, -110.6, -115.3 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X , 1, -110.6, -115.3 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X , 1, -132.8, -135.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X , 1, -132.8, -135.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X , 1, -112.4, -113.4 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, -112.4, -113.4 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, -101.4, -124.3 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, -101.4, -124.3 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, -113.6, -112.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, -113.6, -112.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, -113.9, -96.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X , 1, -113.9, -96.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X , 1, -114.2, -111.4 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X , 1, -114.2, -111.4 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X , 1, -114.4, -111.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X , 1, -114.4, -111.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X , 1, -114.5, -111.1 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X , 1, -114.5, -111.1 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X , 1, -114.5, -111 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X , 1, -114.5, -111 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X , 1, -114.6, -110.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X , 1, -114.6, -110.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X , 1, -114.8, -110.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X , 1, -114.8, -110.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X , 1, -115.1, -110 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X , 1, -115.1, -110 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X , 1, -115.4, -109.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X , 1, -115.4, -109.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X , 1, -115.9, -108.5 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X , 1, -115.9, -108.5 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X , 1, -117.3, -105.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X , 1, -117.3, -105.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X , 1, -0.1, -113.7 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X , 1, -0.1, -113.7 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, -0.4, -217.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X , 1, -0.4, -217.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X , 1, -32.8, -116.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X , 1, -32.8, -116.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X , 1, -34.1, -195.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X , 1, -34.1, -195.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X , 1, -0.1, -158.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X , 1, -0.1, -158.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X , 1, -0.1, -125.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X , 1, -0.1, -125.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X , 1, -0.3, -180.2 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X , 1, -0.3, -180.2 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X , 1, -22.6, -127.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X , 1, -22.6, -127.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X , 1, -17.6, -163.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X , 1, -17.6, -163.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X , 1, -25.7, -116.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X , 1, -25.7, -116.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X , 1, -15.1, -151.8 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X , 1, -15.1, -151.8 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X , 1, -26.6, -98.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X , 1, -26.6, -98.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X , 1, -3.1, -119.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X , 1, -3.1, -119.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X , 1, -21, -93 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X , 1, -21, -93 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X , 1, -5.5, -99.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X , 1, -5.5, -99.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X , 1, -5.9, -92.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X , 1, -5.9, -92.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X , 1, -6.9, -76.5 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X , 1, -6.9, -76.5 , 0 );

setScaleKey( spep_0 + 220 + OFFSET_X , 1, 5.86, 5.86 );
setScaleKey( spep_0 + 227 + OFFSET_X , 1, 5.86, 5.86 );
setScaleKey( spep_0 + 228 + OFFSET_X , 1, 6.85, 6.85 );
setScaleKey( spep_0 + 229 + OFFSET_X , 1, 6.85, 6.85 );
setScaleKey( spep_0 + 230 + OFFSET_X , 1, 6.13, 6.13 );
setScaleKey( spep_0 + 231 + OFFSET_X , 1, 6.13, 6.13 );
setScaleKey( spep_0 + 232 + OFFSET_X , 1, 6.02, 6.02 );
setScaleKey( spep_0 + 233 + OFFSET_X , 1, 6.02, 6.02 );
setScaleKey( spep_0 + 234 + OFFSET_X , 1, 5.56, 5.56 );
setScaleKey( spep_0 + 235 + OFFSET_X , 1, 5.56, 5.56 );
setScaleKey( spep_0 + 236 + OFFSET_X , 1, 5.38, 5.38 );
setScaleKey( spep_0 + 237 + OFFSET_X , 1, 5.38, 5.38 );
setScaleKey( spep_0 + 238 + OFFSET_X , 1, 5.25, 5.25 );
setScaleKey( spep_0 + 239 + OFFSET_X , 1, 5.25, 5.25 );
setScaleKey( spep_0 + 240 + OFFSET_X , 1, 5.15, 5.15 );
setScaleKey( spep_0 + 241 + OFFSET_X , 1, 5.15, 5.15 );
setScaleKey( spep_0 + 242 + OFFSET_X , 1, 5.07, 5.07 );
setScaleKey( spep_0 + 243 + OFFSET_X , 1, 5.07, 5.07 );
setScaleKey( spep_0 + 244 + OFFSET_X , 1, 5, 5 );
setScaleKey( spep_0 + 245 + OFFSET_X , 1, 5, 5 );
setScaleKey( spep_0 + 246 + OFFSET_X , 1, 4.95, 4.95 );
setScaleKey( spep_0 + 247 + OFFSET_X , 1, 4.95, 4.95 );
setScaleKey( spep_0 + 248 + OFFSET_X , 1, 4.91, 4.91 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 4.91, 4.91 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 4.87, 4.87 );
setScaleKey( spep_0 + 251 + OFFSET_X , 1, 4.87, 4.87 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 4.85, 4.85 );
setScaleKey( spep_0 + 253 + OFFSET_X , 1, 4.85, 4.85 );
setScaleKey( spep_0 + 254 + OFFSET_X , 1, 4.83, 4.83 );
setScaleKey( spep_0 + 255 + OFFSET_X , 1, 4.83, 4.83 );
setScaleKey( spep_0 + 256 + OFFSET_X , 1, 4.82, 4.82 );
setScaleKey( spep_0 + 257 + OFFSET_X , 1, 4.82, 4.82 );
setScaleKey( spep_0 + 258 + OFFSET_X , 1, 4.81, 4.81 );
setScaleKey( spep_0 + 259 + OFFSET_X , 1, 4.81, 4.81 );
setScaleKey( spep_0 + 260 + OFFSET_X , 1, 4.82, 4.82 );
setScaleKey( spep_0 + 261 + OFFSET_X , 1, 4.82, 4.82 );
setScaleKey( spep_0 + 262 + OFFSET_X , 1, 4.83, 4.83 );
setScaleKey( spep_0 + 263 + OFFSET_X , 1, 4.83, 4.83 );
setScaleKey( spep_0 + 264 + OFFSET_X , 1, 4.85, 4.85 );
setScaleKey( spep_0 + 265 + OFFSET_X , 1, 4.85, 4.85 );
setScaleKey( spep_0 + 266 + OFFSET_X , 1, 4.87, 4.87 );
setScaleKey( spep_0 + 267 + OFFSET_X , 1, 4.87, 4.87 );
setScaleKey( spep_0 + 268 + OFFSET_X , 1, 4.91, 4.91 );
setScaleKey( spep_0 + 269 + OFFSET_X , 1, 4.91, 4.91 );
setScaleKey( spep_0 + 270 + OFFSET_X , 1, 4.96, 4.96 );
setScaleKey( spep_0 + 271 + OFFSET_X , 1, 4.96, 4.96 );
setScaleKey( spep_0 + 272 + OFFSET_X , 1, 5.04, 5.04 );
setScaleKey( spep_0 + 273 + OFFSET_X , 1, 5.04, 5.04 );
setScaleKey( spep_0 + 274 + OFFSET_X , 1, 5.25, 5.25 );
setScaleKey( spep_0 + 275 + OFFSET_X , 1, 5.25, 5.25 );
setScaleKey( spep_0 + 276 + OFFSET_X , 1, 5.76, 5.76 );
setScaleKey( spep_0 + 285 + OFFSET_X , 1, 5.76, 5.76 );
setScaleKey( spep_0 + 286 + OFFSET_X , 1, 5.75, 5.75 );
setScaleKey( spep_0 + 287 + OFFSET_X , 1, 5.75, 5.75 );
setScaleKey( spep_0 + 288 + OFFSET_X , 1, 5.74, 5.74 );
setScaleKey( spep_0 + 289 + OFFSET_X , 1, 5.74, 5.74 );
setScaleKey( spep_0 + 290 + OFFSET_X , 1, 5.72, 5.72 );
setScaleKey( spep_0 + 291 + OFFSET_X , 1, 5.72, 5.72 );
setScaleKey( spep_0 + 292 + OFFSET_X , 1, 5.69, 5.69 );
setScaleKey( spep_0 + 293 + OFFSET_X , 1, 5.69, 5.69 );
setScaleKey( spep_0 + 294 + OFFSET_X , 1, 5.66, 5.66 );
setScaleKey( spep_0 + 295 + OFFSET_X , 1, 5.66, 5.66 );
setScaleKey( spep_0 + 296 + OFFSET_X , 1, 5.63, 5.63 );
setScaleKey( spep_0 + 297 + OFFSET_X , 1, 5.63, 5.63 );
setScaleKey( spep_0 + 298 + OFFSET_X , 1, 5.59, 5.59 );
setScaleKey( spep_0 + 299 + OFFSET_X , 1, 5.59, 5.59 );
setScaleKey( spep_0 + 300 + OFFSET_X , 1, 5.54, 5.54 );
setScaleKey( spep_0 + 301 + OFFSET_X , 1, 5.54, 5.54 );
setScaleKey( spep_0 + 302 + OFFSET_X , 1, 5.49, 5.49 );
setScaleKey( spep_0 + 303 + OFFSET_X , 1, 5.49, 5.49 );
setScaleKey( spep_0 + 304 + OFFSET_X , 1, 5.43, 5.43 );
setScaleKey( spep_0 + 305 + OFFSET_X , 1, 5.43, 5.43 );
setScaleKey( spep_0 + 306 + OFFSET_X , 1, 5.37, 5.37 );
setScaleKey( spep_0 + 307 + OFFSET_X , 1, 5.37, 5.37 );
setScaleKey( spep_0 + 308 + OFFSET_X , 1, 5.3, 5.3 );
setScaleKey( spep_0 + 310 + OFFSET_X , 1, 5.3, 5.3 );

setRotateKey( spep_0 + 220 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 227 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 228 + OFFSET_X , 1, -12.9 );
setRotateKey( spep_0 + 229 + OFFSET_X , 1, -12.9 );
setRotateKey( spep_0 + 230 + OFFSET_X , 1, -14.9 );
setRotateKey( spep_0 + 231 + OFFSET_X , 1, -14.9 );
setRotateKey( spep_0 + 232 + OFFSET_X , 1, -15.2 );
setRotateKey( spep_0 + 233 + OFFSET_X , 1, -15.2 );
setRotateKey( spep_0 + 234 + OFFSET_X , 1, -14.3 );
setRotateKey( spep_0 + 235 + OFFSET_X , 1, -14.3 );
setRotateKey( spep_0 + 236 + OFFSET_X , 1, -13.9 );
setRotateKey( spep_0 + 237 + OFFSET_X , 1, -13.9 );
setRotateKey( spep_0 + 238 + OFFSET_X , 1, -13.7 );
setRotateKey( spep_0 + 239 + OFFSET_X , 1, -13.7 );
setRotateKey( spep_0 + 240 + OFFSET_X , 1, -13.5 );
setRotateKey( spep_0 + 241 + OFFSET_X , 1, -13.5 );
setRotateKey( spep_0 + 242 + OFFSET_X , 1, -13.3 );
setRotateKey( spep_0 + 243 + OFFSET_X , 1, -13.3 );
setRotateKey( spep_0 + 244 + OFFSET_X , 1, -13.2 );
setRotateKey( spep_0 + 245 + OFFSET_X , 1, -13.2 );
setRotateKey( spep_0 + 246 + OFFSET_X , 1, -13.1 );
setRotateKey( spep_0 + 247 + OFFSET_X , 1, -13.1 );
setRotateKey( spep_0 + 248 + OFFSET_X , 1, -13 );
setRotateKey( spep_0 + 251 + OFFSET_X , 1, -13 );
setRotateKey( spep_0 + 252 + OFFSET_X , 1, -12.9 );
setRotateKey( spep_0 + 255 + OFFSET_X , 1, -12.9 );
setRotateKey( spep_0 + 256 + OFFSET_X , 1, -12.8 );
setRotateKey( spep_0 + 265 + OFFSET_X , 1, -12.8 );
setRotateKey( spep_0 + 266 + OFFSET_X , 1, -12.7 );
setRotateKey( spep_0 + 267 + OFFSET_X , 1, -12.7 );
setRotateKey( spep_0 + 268 + OFFSET_X , 1, -12.6 );
setRotateKey( spep_0 + 269 + OFFSET_X , 1, -12.6 );
setRotateKey( spep_0 + 270 + OFFSET_X , 1, -12.5 );
setRotateKey( spep_0 + 271 + OFFSET_X , 1, -12.5 );
setRotateKey( spep_0 + 272 + OFFSET_X , 1, -12.3 );
setRotateKey( spep_0 + 273 + OFFSET_X , 1, -12.3 );
setRotateKey( spep_0 + 274 + OFFSET_X , 1, -11.7 );
setRotateKey( spep_0 + 275 + OFFSET_X , 1, -11.7 );
setRotateKey( spep_0 + 276 + OFFSET_X , 1, 43.4 );
setRotateKey( spep_0 + 310 + OFFSET_X , 1, 43.4 );

-- 敵の動き3
setDisp( spep_0 + 370 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 418 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 370 + OFFSET_X , 1,8 );

setMoveKey( spep_0 + 370 + OFFSET_X , 1, -61, 47.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X , 1, -61, 47.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X , 1, -93.5, -0.8 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X , 1, -93.5, -0.8 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X , 1, -105.9, -19.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X , 1, -105.9, -19.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X , 1, -114.6, 17.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X , 1, -114.6, 17.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X , 1, -120.2, -78.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X , 1, -120.2, -78.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X , 1, -124.3, -50.4 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X , 1, -124.3, -50.4 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X , 1, -149.1, -34.8 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X , 1, -149.1, -34.8 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X , 1, -129.3, -61.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X , 1, -129.3, -61.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X , 1, -105.2, -39.7 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X , 1, -105.2, -39.7 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X , 1, -131, -67.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X , 1, -131, -67.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X , 1, -114.8, -84.9 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X , 1, -114.8, -84.9 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X , 1, -130, -69.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X , 1, -130, -69.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X , 1, -140.6, -81.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X , 1, -140.6, -81.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X , 1, -127.7, -69.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X , 1, -127.7, -69.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X , 1, -117.3, -60.2 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X , 1, -117.3, -60.2 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X , 1, -125.4, -69.5 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X , 1, -125.4, -69.5 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X , 1, -124.2, -61.1 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X , 1, -124.2, -61.1 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X , 1, -123.1, -69.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X , 1, -123.1, -69.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X , 1, -121.9, -69.5 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X , 1, -121.9, -69.5 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X , 1, -120.8, -69.6 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X , 1, -120.8, -69.6 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X , 1, -119.6, -69.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X , 1, -119.6, -69.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X , 1, -118.5, -69.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X , 1, -118.5, -69.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X , 1, -117.3, -69.6 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X , 1, -117.3, -69.6 , 0 );

setScaleKey( spep_0 + 370 + OFFSET_X , 1, 1.78, 1.78 );
setScaleKey( spep_0 + 373 + OFFSET_X , 1, 1.78, 1.78 );
setScaleKey( spep_0 + 374 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_0 + 375 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_0 + 376 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_0 + 377 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_0 + 378 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 379 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_0 + 380 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 381 + OFFSET_X , 1, 0.58, 0.58 );
setScaleKey( spep_0 + 382 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 383 + OFFSET_X , 1, 0.47, 0.47 );
setScaleKey( spep_0 + 384 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 385 + OFFSET_X , 1, 0.39, 0.39 );
setScaleKey( spep_0 + 386 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 387 + OFFSET_X , 1, 0.33, 0.33 );
setScaleKey( spep_0 + 388 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 389 + OFFSET_X , 1, 0.28, 0.28 );
setScaleKey( spep_0 + 390 + OFFSET_X , 1, 0.24, 0.24 );
setScaleKey( spep_0 + 391 + OFFSET_X , 1, 0.24, 0.24 );
setScaleKey( spep_0 + 392 + OFFSET_X , 1, 0.22, 0.22 );
setScaleKey( spep_0 + 401 + OFFSET_X , 1, 0.22, 0.22 );
setScaleKey( spep_0 + 402 + OFFSET_X , 1, 0.21, 0.21 );
setScaleKey( spep_0 + 418 + OFFSET_X , 1, 0.21, 0.21 );

setRotateKey( spep_0 + 370 + OFFSET_X , 1, -17 );
setRotateKey( spep_0 + 373 + OFFSET_X , 1, -17 );
setRotateKey( spep_0 + 374 + OFFSET_X , 1, -22.3 );
setRotateKey( spep_0 + 375 + OFFSET_X , 1, -22.3 );
setRotateKey( spep_0 + 376 + OFFSET_X , 1, -24.4 );
setRotateKey( spep_0 + 377 + OFFSET_X , 1, -24.4 );
setRotateKey( spep_0 + 378 + OFFSET_X , 1, -25.8 );
setRotateKey( spep_0 + 379 + OFFSET_X , 1, -25.8 );
setRotateKey( spep_0 + 380 + OFFSET_X , 1, -26.9 );
setRotateKey( spep_0 + 381 + OFFSET_X , 1, -26.9 );
setRotateKey( spep_0 + 382 + OFFSET_X , 1, -27.8 );
setRotateKey( spep_0 + 383 + OFFSET_X , 1, -27.8 );
setRotateKey( spep_0 + 384 + OFFSET_X , 1, -28.5 );
setRotateKey( spep_0 + 385 + OFFSET_X , 1, -28.5 );
setRotateKey( spep_0 + 386 + OFFSET_X , 1, -29 );
setRotateKey( spep_0 + 387 + OFFSET_X , 1, -29 );
setRotateKey( spep_0 + 388 + OFFSET_X , 1, -29.4 );
setRotateKey( spep_0 + 389 + OFFSET_X , 1, -29.4 );
setRotateKey( spep_0 + 390 + OFFSET_X , 1, -29.7 );
setRotateKey( spep_0 + 391 + OFFSET_X , 1, -29.7 );
setRotateKey( spep_0 + 392 + OFFSET_X , 1, -29.8 );
setRotateKey( spep_0 + 393 + OFFSET_X , 1, -29.8 );
setRotateKey( spep_0 + 394 + OFFSET_X , 1, -29.9 );
setRotateKey( spep_0 + 418 + OFFSET_X , 1, -29.9 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1267, "",spep_0 + 180, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 150 );
SE002 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 180, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 83 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 180, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 58 );

--構える
SE004 = playSeVer2( spep_0 + 22, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 22, 1233, "", 0, 0, 0, -1);

--向かっていく
SE006 = playSeVer2( spep_0 + 94, 1121, "",spep_0 + 242, 14, 26, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );
setStartTimeMs( SE006,  567 );
setPitch( spep_0 + 94, SE006, 400 );
setTimeStretch( SE006, 1.27, 30, 4 );
SE010 = playSeVer2( spep_0 + 100, 1183, "", 0, 0, 0, -1);

--向かってくる
SE007 = playSeVer2( spep_0 + 68, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE007, 72 );
SE008 = playSeVer2( spep_0 + 68, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 68, 9, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 106, 1232, "", 0, 0, 0, -1);

--振りかぶる
SE012 = playSeVer2( spep_0 + 138, 1011, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 170, 1182, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE013, 124 );
setStartTimeMs( SE013,  133 );
SE014 = playSeVer2( spep_0 + 174, 1116, "",spep_0 + 220, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 174, SE014, 129 );

--オーラ2
SE061 = playSeVer2( spep_0 + 180, 1267, "",spep_0 + 250, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE061, 150 );
SE062 = playSeVer2( spep_0 + 180, 1268, "",spep_0 + 252, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE062, 83 );
SE063 = playSeVer2( spep_0 + 180, 1176, "",spep_0 + 256, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 58 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 200;  -- エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE061, 0);
    stopSe( SP_dodge - 12, SE062, 0);
    stopSe( SP_dodge - 12, SE063, 0);

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
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ
SE015 = playSeVer2( spep_0 + 222, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 222, 1359, "", 0, 0, 0, -1);

--アッパー
SE017 = playSeVer2( spep_0 + 260, 1004, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 268, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 268, 1187, "",spep_0 + 324, 0, 36, -1);

--振りかぶる
SE020 = playSeVer2( spep_0 + 306, 1116, "",spep_0 + 358, 0, 26, -1);
SE021 = playSeVer2( spep_0 + 312, 1117, "",spep_0 + 362, 0, 22, -1);
SE022 = playSeVer2( spep_0 + 314, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 344, 1188, "",spep_0 + 388, 12, 18, -1);
setStartTimeMs( SE023,  200 );
SE024 = playSeVer2( spep_0 + 344, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE025 = playSeVer2( spep_0 + 360, 1123, "",spep_0 + 444, 0, 22, -1);
SE026 = playSeVer2( spep_0 + 364, 1153, "", 0, 0, 0, -1);

--敵飛んでいく
SE027 = playSeVer2( spep_0 + 388, 1121, "",spep_0 + 444, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 2;  -- 418

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

--飛び上がる
SE029 = playSeVer2( spep_1 + 86, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE029, 80 );
SE030 = playSeVer2( spep_1 + 86, 1245, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 86, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE031, 63 );

------------------------------------------------------
-- カードカットイン後～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 678;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- カードカットイン後～フィニッシュまで（敵側・反転） ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
--SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- カードカットイン後～フィニッシュまで（敵側・反転） ef_002br
--setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
--setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
--setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
--setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
--setEffRotateKey( spep_2 + 0, SP_02b, 0 );
--setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
--setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
--setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 250;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 190 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 260 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 190 + OFFSET_X , 1,7 );

setMoveKey( spep_2 + 190 + OFFSET_X , 1, 4.2, -136.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, 4.2, -136.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, 4.3, -121.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, 4.3, -121.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, 21.6, -136.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, 21.6, -136.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, 14.8, -126.3 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, 14.8, -126.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, -8.5, -149.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, -8.5, -149.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, 16.3, -149 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, 16.3, -149 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, 6.8, -67 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X , 1, 6.8, -67 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, 4.3, -204.7 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, 4.3, -204.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, -22.1, -155.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, -22.1, -155.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, 4.1, -82.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, 4.1, -82.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, 4.3, -203.2 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, 4.3, -203.2 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, -31.9, -173.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, -31.9, -173.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, -33.4, -99.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, -33.4, -99.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, 41.3, -99.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, 41.3, -99.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, -48.4, -136.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, -48.4, -136.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, 4.3, -182.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, 4.3, -182.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X , 1, 52.6, -136.9 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, 52.6, -136.9 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X , 1, 4.3, -89.8 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, 4.3, -89.8 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, -31.1, -172.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, -31.1, -172.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, 4.3, -136.9 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, 4.3, -136.9 , 0 );

setScaleKey( spep_2 + 190 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_2 + 191 + OFFSET_X , 1, 0.93, 0.93 );
setScaleKey( spep_2 + 192 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 193 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 194 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 195 + OFFSET_X , 1, 0.95, 0.95 );
setScaleKey( spep_2 + 196 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 199 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 200 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 201 + OFFSET_X , 1, 0.97, 0.97 );
setScaleKey( spep_2 + 202 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 203 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 204 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 207 + OFFSET_X , 1, 0.99, 0.99 );
setScaleKey( spep_2 + 208 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 209 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 211 + OFFSET_X , 1, 1.01, 1.01 );
setScaleKey( spep_2 + 212 + OFFSET_X , 1, 1.02, 1.02 );
setScaleKey( spep_2 + 215 + OFFSET_X , 1, 1.02, 1.02 );
setScaleKey( spep_2 + 216 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 217 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 218 + OFFSET_X , 1, 1.04, 1.04 );
setScaleKey( spep_2 + 219 + OFFSET_X , 1, 1.04, 1.04 );
setScaleKey( spep_2 + 220 + OFFSET_X , 1, 1.05, 1.05 );
setScaleKey( spep_2 + 221 + OFFSET_X , 1, 1.05, 1.05 );
setScaleKey( spep_2 + 222 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_2 + 225 + OFFSET_X , 1, 1.06, 1.06 );
setScaleKey( spep_2 + 226 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 227 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 228 + OFFSET_X , 1, 1.08, 1.08 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 1.08, 1.08 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 1.09, 1.09 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 1.09, 1.09 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 1.11, 1.11 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 1.11, 1.11 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 241 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 242 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_2 + 243 + OFFSET_X , 1, 1.13, 1.13 );
setScaleKey( spep_2 + 244 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 245 + OFFSET_X , 1, 1.14, 1.14 );
setScaleKey( spep_2 + 246 + OFFSET_X , 1, 1.15, 1.15 );
setScaleKey( spep_2 + 249 + OFFSET_X , 1, 1.15, 1.15 );
setScaleKey( spep_2 + 250 + OFFSET_X , 1, 1.16, 1.16 );
setScaleKey( spep_2 + 251 + OFFSET_X , 1, 1.16, 1.16 );
setScaleKey( spep_2 + 252 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 253 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 254 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 257 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 258 + OFFSET_X , 1, 1.19, 1.19 );
setScaleKey( spep_2 + 260 + OFFSET_X , 1, 1.19, 1.19 );

setRotateKey( spep_2 + 190 + OFFSET_X , 1, 0 );
setRotateKey( spep_2 + 260 + OFFSET_X , 1, 0 );

setBlendColor( spep_2 + 190 + OFFSET_X , 1, 3, 0, 0, 0, 0.0 );
setBlendColor( spep_2 + 196 + OFFSET_X , 1, 3, 0, 0, 0, 0.05 );
setBlendColor( spep_2 + 202 + OFFSET_X , 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_2 + 208 + OFFSET_X , 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_2 + 214 + OFFSET_X , 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 220 + OFFSET_X , 1, 3, 0, 0, 0, 0.25 );
setBlendColor( spep_2 + 226 + OFFSET_X , 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 230 + OFFSET_X , 1, 3, 0, 0, 0, 0.35 );
setBlendColor( spep_2 + 234 + OFFSET_X , 1, 3, 0, 0, 0, 0.4 );
setBlendColor( spep_2 + 238 + OFFSET_X , 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_2 + 242 + OFFSET_X , 1, 3, 0, 0, 0, 0.55 );
setBlendColor( spep_2 + 246 + OFFSET_X , 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_2 + 250 + OFFSET_X , 1, 3, 0, 0, 0, 0.75 );
setBlendColor( spep_2 + 254 + OFFSET_X , 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 258 + OFFSET_X , 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 260 + OFFSET_X , 1, 3, 0, 0, 0, 0.0 );

-- 敵の動き2
setDisp( spep_2 + 348 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 420 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 348 + OFFSET_X , 1,8 );

setMoveKey( spep_2 + 348 + OFFSET_X , 1, -100.4, -14 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X , 1, -100.4, -14 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X , 1, -107.5, -14.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X , 1, -107.5, -14.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X , 1, -114.6, -28.2 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X , 1, -114.6, -28.2 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X , 1, -128.6, -35.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X , 1, -128.6, -35.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X , 1, -128.9, -42.4 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X , 1, -128.9, -42.4 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X , 1, -132, -45.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X , 1, -132, -45.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X , 1, -143.1, -56.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X , 1, -143.1, -56.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X , 1, -145, -69 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X , 1, -145, -69 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X , 1, -157.4, -70.8 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X , 1, -157.4, -70.8 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X , 1, -170.7, -84.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X , 1, -170.7, -84.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X , 1, -171.7, -85 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X , 1, -171.7, -85 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X , 1, -182.8, -88.1 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X , 1, -182.8, -88.1 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X , 1, -185.9, -99.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X , 1, -185.9, -99.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X , 1, -186.3, -99.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X , 1, -186.3, -99.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X , 1, -200.2, -65.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X , 1, -200.2, -65.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X , 1, -214.8, -158.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X , 1, -214.8, -158.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X , 1, -235.4, -106.7 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X , 1, -235.4, -106.7 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X , 1, -184.2, -134.7 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X , 1, -184.2, -134.7 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X , 1, -250.4, -163.5 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X , 1, -250.4, -163.5 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X , 1, -221.4, -134.5 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X , 1, -221.4, -134.5 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X , 1, -243, -156 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X , 1, -243, -156 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X , 1, -242.4, -170.9 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X , 1, -242.4, -170.9 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X , 1, -257.2, -170.2 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X , 1, -257.2, -170.2 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X , 1, -264.4, -165.6 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X , 1, -264.4, -165.6 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X , 1, -271.5, -184.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X , 1, -271.5, -184.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X , 1, -291.6, -191.5 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X , 1, -291.6, -191.5 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X , 1, -285.8, -198.6 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X , 1, -285.8, -198.6 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X , 1, -308.2, -205.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X , 1, -308.2, -205.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X , 1, -300, -212.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X , 1, -300, -212.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X , 1, -307.2, -208.1 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X , 1, -307.2, -208.1 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X , 1, -314.3, -227 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X , 1, -314.3, -227 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X , 1, -308.1, -234.1 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X , 1, -308.1, -234.1 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X , 1, -328.6, -241.2 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X , 1, -328.6, -241.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X , 1, -335.7, -266.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X , 1, -335.7, -266.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X , 1, -342.8, -255.4 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X , 1, -342.8, -255.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X , 1, -369, -243.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X , 1, -369, -243.4 , 0 );

setScaleKey( spep_2 + 348 + OFFSET_X , 1, 1.18, 1.18 );
setScaleKey( spep_2 + 420 + OFFSET_X , 1, 1.18, 1.18 );

setRotateKey( spep_2 + 348 + OFFSET_X , 1, -24.3 );
setRotateKey( spep_2 + 420 + OFFSET_X , 1, -24.3 );

-- ** 音 ** --
--飛び上がる
SE032 = playSeVer2( spep_2 + 4, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE032, 122 );

--気弾溜め
SE033 = playSeVer2( spep_2 + 76, 1371, "",spep_2 + 190, 18, 42, -1);
setSeVolumeByWorkId( spep_2 + 76, SE033, 63 );
setStartTimeMs( SE033,  1000 );
SE035 = playSeVer2( spep_2 + 76, 1443, "",spep_2 + 186, 10, 38, -1);
setSeVolumeByWorkId( spep_2 + 76, SE035, 150 );
setStartTimeMs( SE035,  533 );
SE036 = playSeVer2( spep_2 + 84, 1263, "",spep_2 + 184, 6, 34, -1);
setSeVolumeByWorkId( spep_2 + 84, SE036, 126 );
setStartTimeMs( SE036,  567 );
SE037 = playSeVer2( spep_2 + 82, 1440, "", 0, 0, 0, -1);

--画面遷移
SE034 = playSeVer2( spep_2 + 44, 1232, "", 0, 0, 0, -1);

--気弾発射
SE038 = playSeVer2( spep_2 + 140, 1146, "",spep_2 + 288, 0, 32, -1);
SE039 = playSeVer2( spep_2 + 140, 1177, "",spep_2 + 288, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 140, SE039, 82 );
SE040 = playSeVer2( spep_2 + 140, 1213, "",spep_2 + 280, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 140, SE040, 83 );
SE041 = playSeVer2( spep_2 + 140, 1424, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE041, 207 );

--気弾飛んでいく
SE042 = playSeVer2( spep_2 + 148, 1215, "",spep_2 + 280, 0, 26, -1);
SE043 = playSeVer2( spep_2 + 166, 1422, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE043, 130 );

--画面遷移
SE044 = playSeVer2( spep_2 + 238, 8, "", 0, 0, 0, -1);

--オーラ
SE046 = playSeVer2( spep_2 + 264, 1267, "",spep_2 + 384, 0, 32, -1);
SE047 = playSeVer2( spep_2 + 264, 1268, "",spep_2 + 384, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 264, SE047, 72 );
SE048 = playSeVer2( spep_2 + 264, 1176, "",spep_2 + 382, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 264, SE048, 52 );

--気弾落ちていく
SE049 = playSeVer2( spep_2 + 338, 1193, "",spep_2 + 494, 14, 56, -1);
setStartTimeMs( SE049,  967 );
SE052 = playSeVer2( spep_2 + 338, 1226, "",spep_2 + 600, 0, 10, -1);
SE053 = playSeVer2( spep_2 + 338, 1213, "",spep_2 + 502, 24, 56, -1);
SE054 = playSeVer2( spep_2 + 338, 1356, "",spep_2 + 468, 0, 40, -1);

--拳握る
SE050 = playSeVer2( spep_2 + 302, 1189, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 308, 1006, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_2 + 420, 1159, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 420, 1427, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 426, 1067, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 438, 1024, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 474, 1268, "", 0, 36, 0, -1);
setSeVolumeByWorkId( spep_2 + 474, SE059, 288 );

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_2 + 470 );
endPhase( spep_2 + MAX_FRAME_2 - 96);  -- 678 - 96

end