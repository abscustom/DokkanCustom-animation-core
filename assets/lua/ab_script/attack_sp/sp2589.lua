-- 1027220: LR_合体ザマス_必殺技_悪を滅せぬ弱き神は不要なり！
-- sp_effect_a2_00220
-- sp2589

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162130;  -- 開幕～アッパー攻撃 ef_001
SP_01b = 162131;  -- 開幕～アッパー攻撃 ef_001b
SP_02 = 162132;  -- 気弾を打つ～フィニッシュ ef_002
SP_02b = 162133;  -- 気弾を打つ～フィニッシュ ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～アッパー攻撃 ef_001 (356F)
------------------------------------------------------
MAX_FRAME_0 = 356;

-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01, 255 );
entry_SP_01b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
speff1 = entryEffect( spep_x + 6, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- 構えから飛ばされる
setDisp( spep_0 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 201 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 134 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 134 + OFFSET_X, 1, 210.3, -111.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 224.1, -118.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 237.9, -126 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 251.7, -133.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 265.5, -140.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 279.3, -148 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 293.1, -155.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 306.9, -162.6 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 308.1, -163.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 309.3, -163.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 310.5, -164.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 311.7, -165.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 312.9, -165.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 314.1, -166.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 315.3, -167 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 230.1, -172.8 , 0 ); --画面揺れのため184fまで補完
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 230.1, -172.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 275.9, -145.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 275.9, -145.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 217.1, -217.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 217.1, -217.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 261.9, -137.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 261.9, -137.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 318.4, -225.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 318.4, -225.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 278.4, -173.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 278.4, -173.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 326, -205.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 326, -205.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 331.2, -180.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 331.2, -180.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 301.9, -216.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 301.9, -216.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 338.1, -193.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 338.1, -193.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 348, -210.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 357.3, -213.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 366.2, -216.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 374.6, -219.7 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 382.6, -222.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 390, -224.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 397, -227.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 403.5, -229.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 403.5, -229.6 , 0 );

setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.59, 1.59 ); --画面揺れのため184fまで補完
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.99, 1.99 );

setRotateKey( spep_0 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, 10 );

-- 彼方へ飛ばされる
setDisp( spep_0 + 280 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 280 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 280 + OFFSET_X, 1, 22.3, 101.4 , 0 ); --画面揺れのため298fまで補完
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 22.3, 101.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 38.9, 78.4 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 38.9, 78.4 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 58.6, 239.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 58.6, 239.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 203, 257 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 203, 257 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 221.4, 402.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 221.4, 402.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 272.5, 445.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 272.5, 445.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 191.4, 356.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 191.4, 356.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 206.2, 447.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 206.2, 447.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 272.9, 362.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 272.9, 362.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 235.5, 417.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 238, 419.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 240.4, 422.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 242.7, 424.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 244.8, 426.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 246.9, 428.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 248.9, 430.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 250.8, 432.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 252.5, 434.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 254.2, 436.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 255.7, 437.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 257.2, 439 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 258.6, 440.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 259.9, 441.4 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 261, 442.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 262.1, 443.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 263.1, 444.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 263.9, 445 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 264.7, 445.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 265.4, 446 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 266, 446.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 266.5, 446.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 266.9, 446.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 267.2, 446.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 267.4, 446.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 267.5, 446.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 267.6, 446.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 267.5, 446.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 267.3, 445.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 267.1, 445.1 , 0 );

setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.41, 2.41 );--画面揺れのため298fまで補完
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_0 + 280 + OFFSET_X, 1, 23.2 );--画面揺れのため288fまで補完
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 34.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 34.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 42.8 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 42.9 );

-- ** 音 ** --
--振りかぶる
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 36, 0, 18, -1);

--手刀オーラまとう
SE003 = playSeVer2( spep_0 + 30, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 1142, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 38, 1289, "",spep_0 + 162, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 38, SE005, 41 );
setPitch( spep_0 + 38, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );
SE006 = playSeVer2( spep_0 + 38, 1282, "",spep_0 + 164, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 48 );
setPitch( spep_0 + 38, SE006, -1000 );
setTimeStretch( SE006, 0.33, 30, 4 );
SE007 = playSeVer2( spep_0 + 38, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE007, 86 );
SE008 = playSeVer2( spep_0 + 38, 1374, "",spep_0 + 120, 0, 16, -1);

--向かってくる
SE009 = playSeVer2( spep_0 + 94, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 94, 9, "", 0, 0, 0, -1);

--向かってくる2
SE011 = playSeVer2( spep_0 + 130, 1117, "",spep_0 + 170, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 146; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
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
--振りかぶる
SE012 = playSeVer2( spep_0 + 148, 1003, "", 0, 0, 0, -1);

--斬りつける
SE013 = playSeVer2( spep_0 + 156, 1313, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE013, 58 );
setStartTimeMs( SE013,  200 );
SE014 = playSeVer2( spep_0 + 156, 1133, "",spep_0 + 192, 0, 24, -1);
SE015 = playSeVer2( spep_0 + 156, 1142, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 158, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE016, 110 );
SE017 = playSeVer2( spep_0 + 162, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE017, 110 );

--大きく振りかぶる
SE018 = playSeVer2( spep_0 + 206, 1182, "", 0, 4, 0, -1);
setStartTimeMs( SE018,  100 );
SE019 = playSeVer2( spep_0 + 204, 1004, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 204, SE019 );

--大きく振りかぶる2
SE020 = playSeVer2( spep_0 + 230, 1373, "",spep_0 + 284, 8, 12, -1);
setStartTimeMs( SE020,  233 );
setPitch( spep_0 + 230, SE020, -500 );
setTimeStretch( SE020, 0.67, 30, 4 );
SE021 = playSeVer2( spep_0 + 238, 1116, "",spep_0 + 286, 0, 24, -1);
SE022 = playSeVer2( spep_0 + 242, 9, "",spep_0 + 288, 16, 8, -1);
setStartTimeMs( SE022,  67 );
setPitch( spep_0 + 242, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );

--アッパー
SE023 = playSeVer2( spep_0 + 278, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE023, 77 );
SE024 = playSeVer2( spep_0 + 278, 1187, "",356 + 18, 0, 12, -1);
SE025 = playSeVer2( spep_0 + 278, 1120, "",356 + 16, 0, 10, -1);

--敵飛んでいく
SE026 = playSeVer2( spep_0 + 282, 1121, "",356 + 16, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 282, SE026, 40 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 356

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 気弾を打つ～フィニッシュ ef_002 (340F)
------------------------------------------------------
MAX_FRAME_2 = 340;

-- ** エフェクト等 ** --
entry_SP_02 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02, 255 );
entry_SP_02b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 86 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 86 + OFFSET_X, 1, 168.5, 337.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 168.5, 338.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 167.9, 337.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 166.4, 335.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 164.2, 333.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 161.3, 329.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 157.5, 324.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 152.9, 319.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 147.6, 312.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 141.5, 304.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 134.6, 295.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 126.9, 285.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 118.3, 274.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 109, 262.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 98.8, 249.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 87.8, 235 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 76, 219.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 63.2, 202.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 49.7, 185.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 35.3, 166.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 20, 146.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 3.8, 125.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -13.2, 102.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -13.2, 103.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -13.3, 103.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -13.3, 103.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -13.3, 104 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -13.4, 104.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -13.4, 104.5 , 0 );

setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.81, 3.81 );

setRotateKey( spep_2 + 86 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 22.5 );

-- ** 音 ** --
--気弾溜め
SE028 = playSeVer2( spep_1 + 92, 1290, "",spep_2 + 16, 2, 4, -1);
setSeVolumeByWorkId( spep_1 + 92, SE028, 100 );
setStartTimeMs( SE028,  167 );
setPitch( spep_1 + 92, SE028, -1000 );
setTimeStretch( SE028, 0.33, 30, 4 );
SE029 = playSeVer2( spep_1 + 86, 1116, "",spep_2 + 64, 0, 34, -1);
SE030 = playSeVer2( spep_2 + 8, 1290, "",spep_2 + 64, 2, 22, -1);
setSeVolumeByWorkId( spep_2 + 8, SE030, 100 );
setStartTimeMs( SE030,  167 );
setPitch( spep_2 + 8, SE030, -1000 );
setTimeStretch( SE030, 0.33, 30, 4 );
SE031 = playSeVer2( spep_1 + 92, 1335, "",spep_2 + 50, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 92, SE031, 56 );
setPitch( spep_1 + 92, SE031, 1200 );
setTimeStretch( SE031, 1.8, 30, 4 );
SE032 = playSeVer2( spep_1 + 92, 1360, "",spep_2 + 24, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 92, SE032, 90);
--[[SE033 = playSeVer2( spep_1 + 92, 1224, "",spep_2 + 14, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 92, SE033, 23 );
setPitch( spep_1 + 92, SE033, 1000 );
setTimeStretch( SE033, 1.67, 30, 4 );]]
SE034 = playSeVer2( spep_2 + 6, 1157, "", spep_2 + 140, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 6, SE034, 133 );
SE035 = playSeVer2( spep_2 + 12, 1360, "",spep_2 + 72, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 12, SE035, 90 );
SE036 = playSeVer2( spep_1 + 92, 1224, "",spep_2 + 76, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 12, SE036, 23 );
setPitch( spep_2 + 12, SE036, 1000 );
setTimeStretch( SE036, 1.67, 30, 4 );

--気弾発射
SE037 = playSeVer2( spep_2 + 56, 1193, "",spep_2 + 130, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 56, SE037, 132 );
SE038 = playSeVer2( spep_2 + 56, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE038, 52 );
SE039 = playSeVer2( spep_2 + 56, 1284, "",spep_2 + 166, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 56, SE039, 79 );

--気弾飛んでいく
SE040 = playSeVer2( spep_2 + 90, 1021, "", 0, 0, 0, -1);

--爆発
SE041 = playSeVer2( spep_2 + 144, 1067, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 144, 1159, "", 0, 0, 0, -1);

--爆発後風圧
SE043 = playSeVer2( spep_2 + 162, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE043, 67 );
setPitch( spep_2 + 162, SE043, -500 );
setTimeStretch( SE043, 0.67, 30, 4 );
SE044 = playSeVer2( spep_2 + 170, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE044, 45 );
setPitch( spep_2 + 170, SE044, -600 );
setTimeStretch( SE044, 0.6, 30, 4 );
SE045 = playSeVer2( spep_2 + 176, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE045, 78 );
SE046 = playSeVer2( spep_2 + 188, 1343, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE046, 89 );
SE047 = playSeVer2( spep_2 + 188, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE047, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 186 );
endPhase( spep_2 +  MAX_FRAME_2 -2 );  -- 340

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～アッパー攻撃 ef_001 (356F)
------------------------------------------------------
MAX_FRAME_0 = 356;

-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01, 255 );
entry_SP_01b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01b, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  -- カットイン差し替え
--speff1 = entryEffect( spep_x + 6, 1505, 0x100, -1, 0, 0, 0, 1000 );  -- カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  -- セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- 構えから飛ばされる
setDisp( spep_0 + 134 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 201 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 134 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 164 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 134 + OFFSET_X, 1, -210.3, -111.4 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -224.1, -118.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -237.9, -126 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -251.7, -133.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -265.5, -140.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -279.3, -148 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -293.1, -155.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -306.9, -162.6 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -308.1, -163.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -309.3, -163.8 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -310.5, -164.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -311.7, -165.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -312.9, -165.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -314.1, -166.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -315.3, -167 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -230.1, -172.8 , 0 ); --画面揺れのため184fまで補完
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -230.1, -172.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -275.9, -145.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -275.9, -145.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -217.1, -217.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -217.1, -217.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -261.9, -137.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -261.9, -137.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -318.4, -225.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -318.4, -225.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -278.4, -173.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -278.4, -173.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -326, -205.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -326, -205.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -331.2, -180.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -331.2, -180.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -301.9, -216.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -301.9, -216.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -338.1, -193.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -338.1, -193.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -348, -210.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -357.3, -213.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -366.2, -216.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -374.6, -219.7 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -382.6, -222.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -390, -224.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -397, -227.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -403.5, -229.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -403.5, -229.6 , 0 );

setScaleKey( spep_0 + 134 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.59, 1.59 ); --画面揺れのため184fまで補完
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.99, 1.99 );

setRotateKey( spep_0 + 134 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -10 );

-- 彼方へ飛ばされる
setDisp( spep_0 + 280 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 280 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 280 + OFFSET_X, 1, -22.3, 101.4 , 0 ); --画面揺れのため298fまで補完
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -22.3, 101.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -38.9, 78.4 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -38.9, 78.4 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -58.6, 239.7 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -58.6, 239.7 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -203, 257 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -203, 257 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -221.4, 402.6 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -221.4, 402.6 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -272.5, 445.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -272.5, 445.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -191.4, 356.8 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -191.4, 356.8 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -206.2, 447.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -206.2, 447.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -272.9, 362.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -272.9, 362.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -235.5, 417.2 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -238, 419.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -240.4, 422.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -242.7, 424.6 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -244.8, 426.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -246.9, 428.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -248.9, 430.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -250.8, 432.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -252.5, 434.5 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -254.2, 436.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -255.7, 437.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -257.2, 439 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -258.6, 440.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -259.9, 441.4 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -261, 442.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -262.1, 443.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -263.1, 444.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -263.9, 445 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -264.7, 445.5 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -265.4, 446 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -266, 446.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -266.5, 446.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -266.9, 446.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -267.2, 446.9 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -267.4, 446.9 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -267.5, 446.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -267.6, 446.5 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -267.5, 446.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -267.3, 445.6 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -267.1, 445.1 , 0 );

setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.41, 2.41 );--画面揺れのため298fまで補完
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.18, 0.18 );

setRotateKey( spep_0 + 280 + OFFSET_X, 1, -23.2 );--画面揺れのため288fまで補完
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -42.9 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, -42.9 );

-- ** 音 ** --
--振りかぶる
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 36, 0, 18, -1);

--手刀オーラまとう
SE003 = playSeVer2( spep_0 + 30, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 38, 1142, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 38, 1289, "",spep_0 + 162, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 38, SE005, 41 );
setPitch( spep_0 + 38, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );
SE006 = playSeVer2( spep_0 + 38, 1282, "",spep_0 + 164, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 48 );
setPitch( spep_0 + 38, SE006, -1000 );
setTimeStretch( SE006, 0.33, 30, 4 );
SE007 = playSeVer2( spep_0 + 38, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE007, 86 );
SE008 = playSeVer2( spep_0 + 38, 1374, "",spep_0 + 120, 0, 16, -1);

--向かってくる
SE009 = playSeVer2( spep_0 + 94, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 94, 9, "", 0, 0, 0, -1);

--向かってくる2
SE011 = playSeVer2( spep_0 + 130, 1117, "",spep_0 + 170, 0, 18, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 146; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
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
--振りかぶる
SE012 = playSeVer2( spep_0 + 148, 1003, "", 0, 0, 0, -1);

--斬りつける
SE013 = playSeVer2( spep_0 + 156, 1313, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE013, 58 );
setStartTimeMs( SE013,  200 );
SE014 = playSeVer2( spep_0 + 156, 1133, "",spep_0 + 192, 0, 24, -1);
SE015 = playSeVer2( spep_0 + 156, 1142, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 158, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE016, 110 );
SE017 = playSeVer2( spep_0 + 162, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE017, 110 );

--大きく振りかぶる
SE018 = playSeVer2( spep_0 + 206, 1182, "", 0, 4, 0, -1);
setStartTimeMs( SE018,  100 );
SE019 = playSeVer2( spep_0 + 204, 1004, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_0 + 204, SE019 );

--大きく振りかぶる2
SE020 = playSeVer2( spep_0 + 230, 1373, "",spep_0 + 284, 8, 12, -1);
setStartTimeMs( SE020,  233 );
setPitch( spep_0 + 230, SE020, -500 );
setTimeStretch( SE020, 0.67, 30, 4 );
SE021 = playSeVer2( spep_0 + 238, 1116, "",spep_0 + 286, 0, 24, -1);
SE022 = playSeVer2( spep_0 + 242, 9, "",spep_0 + 288, 16, 8, -1);
setStartTimeMs( SE022,  67 );
setPitch( spep_0 + 242, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );

--アッパー
SE023 = playSeVer2( spep_0 + 278, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE023, 77 );
SE024 = playSeVer2( spep_0 + 278, 1187, "",356 + 18, 0, 12, -1);
SE025 = playSeVer2( spep_0 + 278, 1120, "",356 + 16, 0, 10, -1);

--敵飛んでいく
SE026 = playSeVer2( spep_0 + 282, 1121, "",356 + 16, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 282, SE026, 40 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 356

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 気弾を打つ～フィニッシュ ef_002 (340F)
------------------------------------------------------
MAX_FRAME_2 = 340;

-- ** エフェクト等 ** --
entry_SP_02 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02, 255 );
entry_SP_02b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_02b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 86 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 86 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 86 + OFFSET_X, 1, -168.5, 337.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -168.5, 338.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -167.9, 337.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -166.4, 335.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -164.2, 333.3 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -161.3, 329.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -157.5, 324.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -152.9, 319.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -147.6, 312.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -141.5, 304.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -134.6, 295.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -126.9, 285.7 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -118.3, 274.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -109, 262.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -98.8, 249.2 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -87.8, 235 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -76, 219.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -63.2, 202.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -49.7, 185.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -35.3, 166.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -20, 146.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -3.8, 125.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 13.2, 102.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 13.2, 103.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 13.3, 103.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 13.3, 103.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 13.3, 104 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 13.4, 104.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 13.4, 104.5 , 0 );

setScaleKey( spep_2 + 86 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.81, 3.81 );

setRotateKey( spep_2 + 86 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -22.5 );

-- ** 音 ** --
--気弾溜め
SE028 = playSeVer2( spep_1 + 92, 1290, "",spep_2 + 16, 2, 4, -1);
setSeVolumeByWorkId( spep_1 + 92, SE028, 100 );
setStartTimeMs( SE028,  167 );
setPitch( spep_1 + 92, SE028, -1000 );
setTimeStretch( SE028, 0.33, 30, 4 );
SE029 = playSeVer2( spep_1 + 86, 1116, "",spep_2 + 64, 0, 34, 0.6);
SE030 = playSeVer2( spep_2 + 8, 1290, "",spep_2 + 64, 2, 22, -1);
setSeVolumeByWorkId( spep_2 + 8, SE030, 100 );
setStartTimeMs( SE030,  167 );
setPitch( spep_2 + 8, SE030, -1000 );
setTimeStretch( SE030, 0.33, 30, 4 );
SE031 = playSeVer2( spep_1 + 92, 1335, "",spep_2 + 50, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 92, SE031, 56 );
setPitch( spep_1 + 92, SE031, 1200 );
setTimeStretch( SE031, 1.8, 30, 4 );
SE032 = playSeVer2( spep_1 + 92, 1360, "",spep_2 + 24, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 92, SE032, 90);
--[[SE033 = playSeVer2( spep_1 + 92, 1224, "",spep_2 + 14, 0, 4, -1);
setSeVolumeByWorkId( spep_1 + 92, SE033, 23 );
setPitch( spep_1 + 92, SE033, 1000 );
setTimeStretch( SE033, 1.67, 30, 4 );]]
SE034 = playSeVer2( spep_2 + 6, 1157, "", spep_2 + 140, 0, 50, 0.6);
setSeVolumeByWorkId( spep_2 + 6, SE034, 133 );
SE035 = playSeVer2( spep_2 + 12, 1360, "",spep_2 + 72, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 12, SE035, 90 );
SE036 = playSeVer2( spep_1 + 92, 1224, "",spep_2 + 76, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 12, SE036, 23 );
setPitch( spep_2 + 12, SE036, 1000 );
setTimeStretch( SE036, 1.67, 30, 4 );

--気弾発射
SE037 = playSeVer2( spep_2 + 56, 1193, "",spep_2 + 130, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 56, SE037, 132 );
SE038 = playSeVer2( spep_2 + 56, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE038, 52 );
SE039 = playSeVer2( spep_2 + 56, 1284, "",spep_2 + 166, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 56, SE039, 79 );

--気弾飛んでいく
SE040 = playSeVer2( spep_2 + 90, 1021, "", 0, 0, 0, -1);

--爆発
SE041 = playSeVer2( spep_2 + 144, 1067, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 144, 1159, "", 0, 0, 0, -1);

--爆発後風圧
SE043 = playSeVer2( spep_2 + 162, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE043, 67 );
setPitch( spep_2 + 162, SE043, -500 );
setTimeStretch( SE043, 0.67, 30, 4 );
SE044 = playSeVer2( spep_2 + 170, 1128, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 170, SE044, 45 );
setPitch( spep_2 + 170, SE044, -600 );
setTimeStretch( SE044, 0.6, 30, 4 );
SE045 = playSeVer2( spep_2 + 176, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 176, SE045, 78 );
SE046 = playSeVer2( spep_2 + 188, 1343, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE046, 89 );
SE047 = playSeVer2( spep_2 + 188, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE047, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 186 );
endPhase( spep_2 +  MAX_FRAME_2 -2 );  -- 340

end