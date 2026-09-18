-- 1028020: LR_超サイヤ人ブロリー_登場時演出
-- sp_effect_b4_00315
-- pse0043

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162596;  -- ブロリー叫ぶ～ ef_001

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

OFFSET_X = -1;

ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 登場時演出
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 748;

setupMovie( spep_0+0, SP_01, 2, 1 );

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ブロリー叫ぶ～ ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 114 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 210 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 114 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 114 + OFFSET_X, 1, 12.8, -57.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 12.8, -57.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 23.3, -50.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 23.3, -50.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 18.2, -53.1 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 18.2, -53.1 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 12, -46.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 12, -46.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 26, -57.8 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 26, -57.8 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 21.5, -46.5 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 21.5, -46.5 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 12.8, -53.8 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 12.8, -53.8 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 23.3, -46.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 23.3, -46.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 18.2, -49.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 18.2, -49.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 12, -42.2 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 12, -42.2 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 26, -53.9 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 26, -53.9 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 21.5, -42.5 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 21.5, -42.5 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 12.8, -49.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 12.8, -49.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 23.3, -42.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 23.3, -42.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 18.2, -45.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 18.2, -45.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 12.8, -47.9 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 12.8, -47.9 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 23.3, -40.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 23.3, -40.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 18.2, -43.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 18.2, -43.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 12, -36.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 12, -36.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 21.5, -37.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 21.5, -37.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 12.8, -44.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 12.8, -44.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 23.3, -37.5 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 23.3, -37.5 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 18.2, -39.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 18.2, -39.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 12, -33 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 12, -33 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 26, -44.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 26, -44.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 21.5, -33.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 21.5, -33.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 12.8, -40.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 12.8, -40.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 23.3, -33.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 23.3, -33.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 18.2, -35.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 18.2, -35.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 12.8, -38.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 12.8, -38.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 23.3, -31.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 23.3, -31.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 18.2, -33.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 18.2, -33.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 12, -27 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 12, -27 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 26, -38.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 26, -38.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 21.5, -27.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 21.5, -27.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 12.8, -34.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 12.8, -34.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 23.3, -27.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 23.3, -27.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 18.2, -29.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 18.2, -29.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 12, -23.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 12, -23.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 26, -34.7 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 26, -34.7 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 21.5, -23.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 21.5, -23.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 23.3, -24.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 23.3, -24.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 18.2, -26.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 18.2, -26.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 12.8, -29.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 12.8, -29.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 23.3, -22.3 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 23.3, -22.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 18.2, -24.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 18.2, -24.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 12, -17.8 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 12, -17.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 26, -29.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 26, -29.4 , 0 );

setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_0 + 114 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 336 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 460 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 336 + OFFSET_X, 1, 196.9, -382.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 196.9, -382.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 202.7, -381 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 202.7, -381 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 199.9, -377.5 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 199.9, -377.5 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 199.9, -387.1 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 199.9, -387.1 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 196.9, -380.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 196.9, -380.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 202.7, -378.7 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 202.7, -378.7 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 199.8, -380.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 199.8, -380.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 198.4, -380.3 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 198.4, -380.3 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 200.6, -381.5 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 200.6, -381.5 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 199.4, -376.5 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 199.4, -376.5 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 202.6, -378.9 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 202.6, -378.9 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 195, -362.7 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 195, -362.7 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 208.2, -393.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 208.2, -393.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 203.8, -357.6 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 203.8, -357.6 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 193.1, -395.6 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 193.1, -395.6 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 205.6, -355.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 205.6, -355.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 202.6, -375.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 202.6, -375.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 198.3, -372.7 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 198.3, -372.7 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 199, -373.7 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 199, -373.7 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 198.4, -373.4 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 198.4, -373.4 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 200.6, -374.6 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 200.6, -374.6 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 199.4, -369.7 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 199.4, -369.7 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 202.6, -372 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 202.6, -372 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 198.3, -369.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 198.3, -369.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 199, -370.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 199, -370.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 193.7, -372.6 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 193.7, -372.6 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 205.6, -373.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 205.6, -373.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 199.4, -364 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 199.4, -364 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 204.3, -368.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 204.3, -368.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 195.7, -364.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 195.7, -364.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 197.8, -368.2 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 197.8, -368.2 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 203.6, -365.3 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 203.6, -365.3 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 200.6, -369.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 200.6, -369.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 196.6, -360.1 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 196.6, -360.1 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 205.5, -364.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 205.5, -364.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 196.4, -360.4 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 196.4, -360.4 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 196.8, -365.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 196.8, -365.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 202.7, -358.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 202.7, -358.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 199.1, -366.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 199.1, -366.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 200.7, -354 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 200.7, -354 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 196.4, -357.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 196.4, -357.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 196.8, -362.4 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 196.8, -362.4 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 202.7, -356 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 202.7, -356 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 199.1, -363.6 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 199.1, -363.6 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 196.4, -355.2 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 196.4, -355.2 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 216.3, -346.4 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 216.3, -346.4 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 195.1, -387.6 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 195.1, -387.6 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 159.7, -302.3 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 159.7, -302.3 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 254.2, -387.1 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 254.2, -387.1 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 200.2, -277 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 200.2, -277 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 138.1, -427 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 138.1, -427 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 214.5, -334.3 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 214.5, -334.3 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 173.4, -361.2 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 173.4, -361.2 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 212.1, -377 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 212.1, -377 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 206.2, -333.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 206.2, -333.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 187.4, -391.2 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 187.4, -391.2 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 199.4, -347.4 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 199.4, -347.4 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 204.3, -352.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 204.3, -352.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 195.7, -348.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 195.7, -348.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 197.8, -351.5 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 197.8, -351.5 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 203.6, -348.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 203.6, -348.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 200.6, -353.1 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 200.6, -353.1 , 0 );

setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.92, 0.92 );

setRotateKey( spep_0 + 336 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--気盛り上がる
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 120, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
SE002 = playSeVer2( spep_0 + 0, 1228, "",spep_0 + 160, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 74 );
setTimeStretch( SE002, 2, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 126, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 112 );
setPitch( spep_0 + 0, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 104, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 83 );
setPitch( spep_0 + 0, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );

--セリフカットイン
SE005 = playSeVer2( spep_0 + 20, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 63 );

--画面遷移
SE006 = playSeVer2( spep_0 + 44, 1232, "", 0, 0, 0, -1);

--気爆発する
SE007 = playSeVer2( spep_0 + 72, 1163, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 129 );
setStartTimeMs( SE007,  267 );
SE008 = playSeVer2( spep_0 + 76, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 77 );
setPitch( spep_0 + 76, SE008, -600 );
setTimeStretch( SE008, 0.6, 30, 4 );
SE009 = playSeVer2( spep_0 + 76, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE009, 67 );

--円広がる１
SE010 = playSeVer2( spep_0 + 102, 1274, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE010, 136 );
setStartTimeMs( SE010,  367 );
setPitch( spep_0 + 102, SE010, -300 );
setTimeStretch( SE010, 0.8, 30, 4 );
SE011 = playSeVer2( spep_0 + 100, 1240, "",spep_0 + 174, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 100, SE011, 75 );
SE012 = playSeVer2( spep_0 + 100, 1222, "",spep_0 + 172, 0, 34, -1);

--円広がる２
SE013 = playSeVer2( spep_0 + 142, 1274, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 142, SE013, 135 );
setStartTimeMs( SE013,  333 );
setPitch( spep_0 + 142, SE013, -300 );
setTimeStretch( SE013, 0.8, 30, 4 );
SE014 = playSeVer2( spep_0 + 142, 1240, "",spep_0 + 214, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 142, SE014, 69 );
SE015 = playSeVer2( spep_0 + 142, 1222, "",spep_0 + 212, 0, 32, -1);

--目弾ける
SE016 = playSeVer2( spep_0 + 298, 1437, "",spep_0 + 368, 4, 42, -1);
setStartTimeMs( SE016,  2300 );

--円広がる３
SE017 = playSeVer2( spep_0 + 184, 1274, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 184, SE017, 135 );
setStartTimeMs( SE017,  367 );
setPitch( spep_0 + 184, SE017, -300 );
setTimeStretch( SE017, 0.8, 30, 4 );
SE018 = playSeVer2( spep_0 + 182, 1240, "",spep_0 + 256, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 182, SE018, 72 );
SE019 = playSeVer2( spep_0 + 182, 1222, "",spep_0 + 254, 0, 34, -1);

--顔アップ
SE020 = playSeVer2( spep_0 + 210, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE020,  67 );
SE024 = playSeVer2( spep_0 + 220, 1116, "",spep_0 + 268, 0, 24, -1);

--環境音
SE021 = playSeVer2( spep_0 + 206, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE021, 73 );
setPitch( spep_0 + 206, SE021, -600 );
setTimeStretch( SE021, 0.6, 30, 4 );
SE022 = playSeVer2( spep_0 + 206, 1226, "",spep_0 + 468, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 206, SE022, 72 );
SE023 = playSeVer2( spep_0 + 206, 1227, "",spep_0 + 468, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 206, SE023, 145 );

--目弾ける
SE025 = playSeVer2( spep_0 + 304, 1026, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 304, SE025, 1139, 24000 );
setSeVolumeByWorkId( spep_0 + 304, SE025, 115 );
SE026 = playSeVer2( spep_0 + 304, 1371, "",spep_0 + 374, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 304, SE026, 96 );

--気が昇る
SE027 = playSeVer2( spep_0 + 336, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE027, 170 );
setPitch( spep_0 + 336, SE027, -300 );
setTimeStretch( SE027, 0.8, 30, 4 );
SE028 = playSeVer2( spep_0 + 336, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE028, 76 );

--地響きとオーラ
SE029 = playSeVer2( spep_0 + 462, 1371, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE029, 53 );
setStartTimeMs( SE029,  2100 );
setPitch( spep_0 + 462, SE029, -200 );
setTimeStretch( SE029, 0.87, 30, 4 );

--気が膨らむ
SE030 = playSeVer2( spep_0 + 370, 1356, "",spep_0 + 466, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 370, SE030, 71 );
setPitch( spep_0 + 370, SE030, -800 );
setTimeStretch( SE030, 0.47, 30, 4 );
SE031 = playSeVer2( spep_0 + 370, 1334, "",spep_0 + 464, 0, 36, -1);
setPitch( spep_0 + 370, SE031, -400 );
setTimeStretch( SE031, 0.73, 30, 4 );
SE032 = playSeVer2( spep_0 + 370, 1311, "",spep_0 + 460, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 370, SE032, 158 );

--気が爆発して立ち上る
SE033 = playSeVer2( spep_0 + 422, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE033, 89 );
SE034 = playSeVer2( spep_0 + 422, 1213, "",spep_0 + 542, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 422, SE034, 71 );
SE035 = playSeVer2( spep_0 + 422, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE035, 178 );
setPitch( spep_0 + 422, SE035, 500 );
setTimeStretch( SE035, 1.33, 30, 4 );

--地響きとオーラ
SE036 = playSeVer2( spep_0 + 462, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE036, 63 );
SE037 = playSeVer2( spep_0 + 462, 1227, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 464, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE038, 59 );
SE039 = playSeVer2( spep_0 + 464, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE039, 251 );

--ブロリー荒ぶる
SE040 = playSeVer2( spep_0 + 588, 1066, "",spep_0 + 678, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 588, SE040, 88 );
setPitch( spep_0 + 588, SE040, -600 );
setTimeStretch( SE040, 0.6, 30, 4 );
SE041 = playSeVer2( spep_0 + 598, 1116, "",spep_0 + 652, 0, 22, -1);
SE042 = playSeVer2( spep_0 + 636, 1159, "",spep_0 + 740, 22, 38, -1);
setStartTimeMs( SE042,  333 );

--ラスト決め
SE043 = playSeVer2( spep_0 + 716, 1369, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「おおおおおああーっ!!」
playVoice( spep_0 + 16, 747 );
setVoiceVolume( spep_0 + 16, 747, 100 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0 ); -- 748

else end
