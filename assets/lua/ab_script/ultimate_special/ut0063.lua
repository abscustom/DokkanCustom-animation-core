-- 4027660:UR_人造人間21号(変身・善)_アクティブ必殺：アブソリュートリリースボール
-- sp_effect_a2_00231
-- ut0063

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162486;  -- 前面	ef_001
SP_01b = 162487;  -- 背面	ef_002


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 530 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 612 -1);  -- スキップ先フレーム指定

           --気弾地面激突
           SE017 = playSeVer2( spep_0 + 612, 1044, "",spep_0 + 670, 0, 16, -1);
           SE018 = playSeVer2( spep_0 + 612, 1226, "",spep_0 + 674, 0, 20, -1);
           setSeVolumeByWorkId( spep_0 + 612, SE018, 75 );

           --気弾溜め
           SE011 = playSeVer2( spep_0 + 612, 1281, "",spep_0 + 674, 0, 62, -1);
           setSeVolumeByWorkId( spep_0 + 612, SE011, 35 );
           setPitch( spep_0 + 612, SE011, -200 );
           setTimeStretch( SE011, 0.87, 30, 4 );
       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭
------------------------------------------------------
MAX_FRAME_0 = 818;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 手前(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 奥(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 170 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 170 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 170 + OFFSET_X, 1, 136, 70 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 136, 70 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 136.1, 70 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 136.1, 70 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 136.2, 70 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 136.2, 70 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 136.4, 70 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 136.4, 70 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 136.5, 70 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 136.5, 70 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 136.6, 70 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 136.6, 70 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 136.7, 70 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 136.7, 70 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 136.8, 70 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 136.8, 70 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 136.9, 70 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 136.9, 70 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 137.1, 70 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 137.1, 70 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 137.2, 70 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 137.2, 70 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 137.3, 70 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 137.3, 70 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 137.4, 70 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 137.4, 70 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 137.5, 70 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 137.5, 70 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 137.7, 70 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 137.7, 70 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 137.8, 70 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 137.8, 70 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 137.9, 70 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 137.9, 70 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 138, 70 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 138, 70 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 138.1, 70 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 138.1, 70 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 138.2, 70 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 138.2, 70 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 138.4, 70 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 138.4, 70 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 138.5, 70 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 138.5, 70 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 138.6, 70 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 138.6, 70 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 138.7, 70 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 138.7, 70 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 138.8, 70 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 138.8, 70 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 138.9, 70 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 138.9, 70 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 139.1, 70 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 139.1, 70 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 139.2, 70 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 139.2, 70 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 139.3, 70 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 139.3, 70 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 139.4, 70 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 139.4, 70 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 139.5, 70 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 139.5, 70 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 139.7, 70 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 139.7, 70 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 139.8, 70 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 139.8, 70 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 139.9, 70 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 139.9, 70 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 140, 70 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 140, 70 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 140.1, 70 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 140.1, 70 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 140.2, 70 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 140.2, 70 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 140.4, 70 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 140.4, 70 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 140.5, 70 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 140.5, 70 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 140.6, 70 , 0 );

setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 0.7, 0.7 );

setRotateKey( spep_0 + 170 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 470 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 616 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 470 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 538 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 554 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 470 + OFFSET_X, 1, 768.7, -549.1 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 768.7, -549.1 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 653.4, -490.5 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 653.4, -490.5 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 529.4, -406.2 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 529.4, -406.2 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 399, -341.3 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 399, -341.3 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 279.4, -259.1 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 279.4, -259.1 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 272.2, -254.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 272.2, -254.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 280.1, -268.5 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 280.1, -268.5 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 279.4, -257.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 279.4, -257.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 272.3, -265 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 272.3, -265 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 275.9, -255.8 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 275.9, -255.8 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 268.8, -250.8 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 268.8, -250.8 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 276.7, -265.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 276.7, -265.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 276, -253.7 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 276, -253.7 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 268.8, -261.7 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 268.8, -261.7 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 266, -248.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 266, -248.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 273.9, -262.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 273.9, -262.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 273.2, -251 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 273.2, -251 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 266.1, -259 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 266.1, -259 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 263.2, -245.4 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 263.2, -245.4 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 271.2, -259.8 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 271.2, -259.8 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 270.5, -248.4 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 270.5, -248.4 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 263.3, -256.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 263.3, -256.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 260.5, -242.7 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 260.5, -242.7 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 268.4, -257.1 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 268.4, -257.1 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 267.7, -245.7 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 267.7, -245.7 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 260.6, -253.6 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 260.6, -253.6 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 257.7, -240 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 257.7, -240 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 265.6, -254.4 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 265.6, -254.4 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 265, -243 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, 265, -243 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 257.8, -250.9 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 257.8, -250.9 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 255, -237.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 255, -237.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 262.9, -251.7 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 262.9, -251.7 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 262.2, -240.3 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 262.2, -240.3 , 0 )
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 69.7, -58.5 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 69.7, -58.5 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 61.1, -41.3 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, 61.1, -41.3 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 78.3, -67.1 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 78.3, -67.1 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 78.3, -45.6 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 78.3, -45.6 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 61.1, -67.1 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 61.1, -67.1 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 78.3, -49.9 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 78.3, -49.9 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 61.1, -41.3 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 61.1, -41.3 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 78.3, -67.1 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 78.3, -67.1 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 208, -30.7 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 208, -30.7 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 195.9, -52.2 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 195.9, -52.2 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 218.3, -35 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 218.3, -35 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 206.2, -26.4 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 206.2, -26.4 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 228.6, -52.2 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 228.6, -52.2 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 233.8, -30.7 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 233.8, -30.7 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 221.7, -52.2 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 221.7, -52.2 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 244.1, -35 , 0 );
setMoveKey( spep_0 + 569 + OFFSET_X, 1, 244.1, -35 , 0 );
setMoveKey( spep_0 + 570 + OFFSET_X, 1, 232, -26.4 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 232, -26.4 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 254.4, -52.2 , 0 );
setMoveKey( spep_0 + 573 + OFFSET_X, 1, 254.4, -52.2 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 259.6, -30.7 , 0 );
setMoveKey( spep_0 + 575 + OFFSET_X, 1, 259.6, -30.7 , 0 );
setMoveKey( spep_0 + 576 + OFFSET_X, 1, 247.5, -52.2 , 0 );
setMoveKey( spep_0 + 577 + OFFSET_X, 1, 247.5, -52.2 , 0 );
setMoveKey( spep_0 + 578 + OFFSET_X, 1, 269.9, -35 , 0 );
setMoveKey( spep_0 + 579 + OFFSET_X, 1, 269.9, -35 , 0 );
setMoveKey( spep_0 + 580 + OFFSET_X, 1, 257.8, -26.4 , 0 );
setMoveKey( spep_0 + 581 + OFFSET_X, 1, 257.8, -26.4 , 0 );
setMoveKey( spep_0 + 582 + OFFSET_X, 1, 280.2, -52.2 , 0 );
setMoveKey( spep_0 + 583 + OFFSET_X, 1, 280.2, -52.2 , 0 );
setMoveKey( spep_0 + 584 + OFFSET_X, 1, 285.4, -30.7 , 0 );
setMoveKey( spep_0 + 585 + OFFSET_X, 1, 285.4, -30.7 , 0 );
setMoveKey( spep_0 + 586 + OFFSET_X, 1, 273.3, -52.2 , 0 );
setMoveKey( spep_0 + 587 + OFFSET_X, 1, 273.3, -52.2 , 0 );
setMoveKey( spep_0 + 588 + OFFSET_X, 1, 295.7, -35 , 0 );
setMoveKey( spep_0 + 589 + OFFSET_X, 1, 295.7, -35 , 0 );
setMoveKey( spep_0 + 590 + OFFSET_X, 1, 283.7, -26.4 , 0 );
setMoveKey( spep_0 + 591 + OFFSET_X, 1, 283.7, -26.4 , 0 );
setMoveKey( spep_0 + 592 + OFFSET_X, 1, 306, -52.2 , 0 );
setMoveKey( spep_0 + 593 + OFFSET_X, 1, 306, -52.2 , 0 );
setMoveKey( spep_0 + 594 + OFFSET_X, 1, 311.2, -30.7 , 0 );
setMoveKey( spep_0 + 595 + OFFSET_X, 1, 311.2, -30.7 , 0 );
setMoveKey( spep_0 + 596 + OFFSET_X, 1, 316.3, -35 , 0 );
setMoveKey( spep_0 + 597 + OFFSET_X, 1, 316.3, -35 , 0 );
setMoveKey( spep_0 + 598 + OFFSET_X, 1, 304.3, -26.4 , 0 );
setMoveKey( spep_0 + 599 + OFFSET_X, 1, 304.3, -26.4 , 0 );
setMoveKey( spep_0 + 600 + OFFSET_X, 1, 326.7, -52.2 , 0 );
setMoveKey( spep_0 + 601 + OFFSET_X, 1, 326.7, -52.2 , 0 );
setMoveKey( spep_0 + 602 + OFFSET_X, 1, 331.8, -30.7 , 0 );
setMoveKey( spep_0 + 603 + OFFSET_X, 1, 331.8, -30.7 , 0 );
setMoveKey( spep_0 + 604 + OFFSET_X, 1, 337, -35 , 0 );
setMoveKey( spep_0 + 605 + OFFSET_X, 1, 337, -35 , 0 );
setMoveKey( spep_0 + 606 + OFFSET_X, 1, 324.9, -26.4 , 0 );
setMoveKey( spep_0 + 607 + OFFSET_X, 1, 324.9, -26.4 , 0 );
setMoveKey( spep_0 + 608 + OFFSET_X, 1, 347.3, -52.2 , 0 );
setMoveKey( spep_0 + 609 + OFFSET_X, 1, 347.3, -52.2 , 0 );
setMoveKey( spep_0 + 610 + OFFSET_X, 1, 352.5, -30.7 , 0 );
setMoveKey( spep_0 + 611 + OFFSET_X, 1, 352.5, -30.7 , 0 );
setMoveKey( spep_0 + 612 + OFFSET_X, 1, 340.4, -26.4 , 0 );
setMoveKey( spep_0 + 613 + OFFSET_X, 1, 340.4, -26.4 , 0 );
setMoveKey( spep_0 + 614 + OFFSET_X, 1, 362.8, -52.2 , 0 );
setMoveKey( spep_0 + 615 + OFFSET_X, 1, 362.8, -52.2 , 0 );
setMoveKey( spep_0 + 616 + OFFSET_X, 1, 368, -30.7 , 0 );

setScaleKey( spep_0 + 470 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 471 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_0 + 472 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 473 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 474 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 495 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 496 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 616 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_0 + 470 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 538 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 616 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 470 + OFFSET_X, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 + 537 + OFFSET_X, 1, 3, 0, 0, 0, 0.3);
setBlendColor( spep_0 + 538 + OFFSET_X, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 + 555 + OFFSET_X, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 + 556 + OFFSET_X, 1, 3, 0.9, 0, 0, 0.16);
setBlendColor( spep_0 + 558 + OFFSET_X, 1, 3, 0.9, 0, 0, 0.32);
setBlendColor( spep_0 + 560 + OFFSET_X, 1, 3, 0.9, 0, 0, 0.48);
setBlendColor( spep_0 + 562 + OFFSET_X, 1, 3, 0.9, 0, 0, 0.64);
setBlendColor( spep_0 + 564 + OFFSET_X, 1, 3, 0.6, 0, 0, 0.80);
setBlendColor( spep_0 + 566 + OFFSET_X, 1, 3, 0.3, 0, 0, 0.96);
setBlendColor( spep_0 + 568 + OFFSET_X, 1, 3, 0.3, 0, 0, 1); 
setBlendColor( spep_0 + 614 + OFFSET_X, 1, 3, 0.3, 0, 0, 1);
setBlendColor( spep_0 + 615 + OFFSET_X, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 + 616 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕あげる
SE002 = playSeVer2( spep_0 + 6, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 56 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 42, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE003, 56 );

--画面遷移
SE004 = playSeVer2( spep_0 + 158, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE004, 47 );

--環境音
SE005 = playSeVer2( spep_0 + 162, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE005, 20 );

--気弾溜め
SE006 = playSeVer2( spep_0 + 254, 1397, "",spep_0 + 514, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 254, SE006, 68 );

--腕上げる
SE007 = playSeVer2( spep_0 + 264, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE008 = playSeVer2( spep_0 + 268, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE008, 68 );
SE009 = playSeVer2( spep_0 + 268, 1328, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 268, SE009, 77 );
SE010 = playSeVer2( spep_0 + 268, 1334, "",spep_0 + 368, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 268, SE010, 76 );
SE011 = playSeVer2( spep_0 + 268, 1281, "",spep_0 + 674, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 268, SE011, 35 );
setPitch( spep_0 + 268, SE011, -200 );
setTimeStretch( SE011, 0.87, 30, 4 );

--風圧音
SE012 = playSeVer2( spep_0 + 326, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE012, 56 );

--気弾発射
SE013 = playSeVer2( spep_0 + 374, 1193, "",spep_0 + 520, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 374, SE013, 82 );
SE014 = playSeVer2( spep_0 + 374, 1004, "", 0, 0, 0, -1);

--気弾地面激突
SE015 = playSeVer2( spep_0 + 462, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE015, 84 );
SE016 = playSeVer2( spep_0 + 480, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE016, 49 );
SE017 = playSeVer2( spep_0 + 480, 1044, "",spep_0 + 672, 0, 16, -1);
SE018 = playSeVer2( spep_0 + 480, 1226, "",spep_0 + 676, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 480, SE018, 75 );

-- ** ボイス ** --
--「全力をお見せします!」
playVoice( spep_0 + 62, 728 );
setVoiceVolume( spep_0 + 62, 728, 116 );

--「はああぁーっ!!」
playVoice( spep_0 + 270, 729 );
setVoiceVolume( spep_0 + 270, 729, 100 );

--「これでおしまいです!!」
playVoice( spep_0 + 362, 730 );
setVoiceVolume( spep_0 + 362, 730, 100 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 530; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
setVoiceVolume( SP_dodge - 12, 719, 0 );

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--敵ヒット
SE019 = playSeVer2( spep_0 + 542, 1011, "", 0, 0, 0, -1);

--爆発
SE020 = playSeVer2( spep_0 + 638, 1067, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 654, 1068, "", 0, 0, 0, -1);

--風圧音
SE022 = playSeVer2( spep_0 + 658, 1259, "",spep_0 + 782, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 658, SE022, 58 );

--爆発
SE023 = playSeVer2( spep_0 + 668, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
-- hideKoScreen();
dealDamage( spep_0 + 714 );
endPhase( spep_0 + MAX_FRAME_0 -4); -- 終了フレーム 818F-4

else end
