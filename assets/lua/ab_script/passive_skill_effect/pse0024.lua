--1026560：UR_マジュニア(巨大化)_登場時演出
--battle_301253
--pse0024

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 3187;   --ef_001　登場時演出

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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

-- setDisp( 0, 1, 0);
-- changeAnime( 0, 1, 100);
-- setAlphaKey( 0, 1, 255 );

-- setMoveKey(   0,   1,    0, -5000,   0);
-- setMoveKey(   1,   1,    0, -5000,   0);
-- setMoveKey(   2,   1,    0, -5000,   0);
-- setMoveKey(   3,   1,    0, -5000,   0);
-- setMoveKey(   4,   1,    0, -5000,   0);
-- setMoveKey(   5,   1,    0, -5000,   0);
-- setMoveKey(   6,   1,    0, -5000,   0);

-- setScaleKey(  0,   1,  1.6, 1.6 );
-- setScaleKey(  1,   1,  1.6, 1.6 );
-- setScaleKey(  2,   1,  1.6, 1.6 );
-- setScaleKey(  3,   1,  1.6, 1.6 );
-- setScaleKey(  4,   1,  1.6, 1.6 );
-- setScaleKey(  5,   1,  1.6, 1.6 );
-- setScaleKey(  6,   1,  1.6, 1.6 );
-- setRotateKey( 0,   1,  0 );
-- setRotateKey( 1,   1,  0 );
-- setRotateKey( 2,   1,  0 );
-- setRotateKey( 3,   1,  0 );
-- setRotateKey( 4,   1,  0 );
-- setRotateKey( 5,   1,  0 );
-- setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--登場時演出(715F)
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --ef_001　登場時演出
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 715, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 715, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 715, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 715, eff, 255 );

-- ** 敵キャラクター ** --
offset = -3;
setDisp( spep_0 + 0, 1, 1);
setDisp( spep_0 + 79, 1, 0);
setDisp( spep_0 + offset + 392, 1, 1);
setDisp( spep_0 + offset + 540, 1, 0);
changeAnime( spep_0 + 0, 1, 117);
changeAnime( spep_0 + offset + 392, 1, 17);

setMoveKey( spep_0 + offset + 3, 1, 215.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 4, 1, 213.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 5, 1, 213.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 6, 1, 211.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 7, 1, 211.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 8, 1, 209.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 9, 1, 209.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 10, 1, 207.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 11, 1, 207.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 12, 1, 205.6, -233.7 , 0 );
setMoveKey( spep_0 + offset + 13, 1, 205.6, -233.7 , 0 );
setMoveKey( spep_0 + offset + 14, 1, 203.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 15, 1, 203.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 16, 1, 202.1, -233.7 , 0 );
setMoveKey( spep_0 + offset + 17, 1, 202.1, -233.7 , 0 );
setMoveKey( spep_0 + offset + 18, 1, 200.5, -233.7 , 0 );
setMoveKey( spep_0 + offset + 19, 1, 200.5, -233.7 , 0 );
setMoveKey( spep_0 + offset + 20, 1, 198.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 21, 1, 198.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 22, 1, 197.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 23, 1, 197.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 24, 1, 195.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 25, 1, 195.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 26, 1, 194.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 27, 1, 194.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 28, 1, 193, -233.7 , 0 );
setMoveKey( spep_0 + offset + 29, 1, 193, -233.7 , 0 );
setMoveKey( spep_0 + offset + 30, 1, 191.6, -233.7 , 0 );
setMoveKey( spep_0 + offset + 31, 1, 191.6, -233.7 , 0 );
setMoveKey( spep_0 + offset + 32, 1, 190.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 33, 1, 190.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 34, 1, 189.1, -233.7 , 0 );
setMoveKey( spep_0 + offset + 35, 1, 189.1, -233.7 , 0 );
setMoveKey( spep_0 + offset + 36, 1, 187.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 37, 1, 187.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 38, 1, 186.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 39, 1, 186.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 40, 1, 185.7, -233.7 , 0 );
setMoveKey( spep_0 + offset + 41, 1, 185.7, -233.7 , 0 );
setMoveKey( spep_0 + offset + 42, 1, 184.7, -233.7 , 0 );
setMoveKey( spep_0 + offset + 43, 1, 184.7, -233.7 , 0 );
setMoveKey( spep_0 + offset + 44, 1, 183.7, -233.7 , 0 );
setMoveKey( spep_0 + offset + 45, 1, 183.7, -233.7 , 0 );
setMoveKey( spep_0 + offset + 46, 1, 182.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 47, 1, 182.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 48, 1, 181.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 49, 1, 181.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 50, 1, 181.1, -233.7 , 0 );
setMoveKey( spep_0 + offset + 51, 1, 181.1, -233.7 , 0 );
setMoveKey( spep_0 + offset + 52, 1, 180.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 53, 1, 180.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 54, 1, 179.6, -233.7 , 0 );
setMoveKey( spep_0 + offset + 55, 1, 179.6, -233.7 , 0 );
setMoveKey( spep_0 + offset + 56, 1, 179, -233.7 , 0 );
setMoveKey( spep_0 + offset + 57, 1, 179, -233.7 , 0 );
setMoveKey( spep_0 + offset + 58, 1, 178.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 59, 1, 178.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 60, 1, 177.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 61, 1, 177.8, -233.7 , 0 );
setMoveKey( spep_0 + offset + 62, 1, 177.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 63, 1, 177.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 64, 1, 176.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 65, 1, 176.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 66, 1, 176.5, -233.7 , 0 );
setMoveKey( spep_0 + offset + 67, 1, 176.5, -233.7 , 0 );
setMoveKey( spep_0 + offset + 68, 1, 176.1, -233.7 , 0 );
setMoveKey( spep_0 + offset + 69, 1, 176.1, -233.7 , 0 );
setMoveKey( spep_0 + offset + 70, 1, 175.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 71, 1, 175.9, -233.7 , 0 );
setMoveKey( spep_0 + offset + 72, 1, 175.6, -233.7 , 0 );
setMoveKey( spep_0 + offset + 73, 1, 175.6, -233.7 , 0 );
setMoveKey( spep_0 + offset + 74, 1, 175.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 75, 1, 175.4, -233.7 , 0 );
setMoveKey( spep_0 + offset + 76, 1, 175.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 77, 1, 175.3, -233.7 , 0 );
setMoveKey( spep_0 + offset + 78, 1, 175.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 79, 1, 175.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 80, 1, 175.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 81, 1, 175.2, -233.7 , 0 );
setMoveKey( spep_0 + offset + 392, 1, -232.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 393, 1, -232.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 394, 1, -232.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 395, 1, -232.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 396, 1, -231.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 397, 1, -231.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 398, 1, -231.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 399, 1, -231.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 400, 1, -231.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 401, 1, -231.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 402, 1, -231.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 403, 1, -231.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 404, 1, -231.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 405, 1, -231.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 406, 1, -231.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 407, 1, -231.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 408, 1, -231, -0.1 , 0 );
setMoveKey( spep_0 + offset + 409, 1, -231, -0.1 , 0 );
setMoveKey( spep_0 + offset + 410, 1, -230.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 411, 1, -230.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 412, 1, -230.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 413, 1, -230.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 414, 1, -230.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 415, 1, -230.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 416, 1, -230.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 417, 1, -230.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 418, 1, -230.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 419, 1, -230.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 420, 1, -230.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 421, 1, -230.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 422, 1, -229.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 423, 1, -229.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 424, 1, -229.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 425, 1, -229.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 426, 1, -229.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 427, 1, -229.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 428, 1, -229.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 429, 1, -229.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 430, 1, -229.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 431, 1, -229.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 432, 1, -229.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 433, 1, -229.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 434, 1, -229, -0.1 , 0 );
setMoveKey( spep_0 + offset + 435, 1, -229, -0.1 , 0 );
setMoveKey( spep_0 + offset + 436, 1, -228.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 437, 1, -228.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 438, 1, -228.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 439, 1, -228.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 440, 1, -228.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 441, 1, -228.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 442, 1, -228.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 443, 1, -228.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 444, 1, -228.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 445, 1, -228.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 446, 1, -228, -0.1 , 0 );
setMoveKey( spep_0 + offset + 447, 1, -228, -0.1 , 0 );
setMoveKey( spep_0 + offset + 448, 1, -227.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 449, 1, -227.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 450, 1, -227.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 451, 1, -227.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 452, 1, -227.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 453, 1, -227.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 454, 1, -227.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 455, 1, -227.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 456, 1, -227.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 457, 1, -227.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 458, 1, -227.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 459, 1, -227.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 460, 1, -227, -0.1 , 0 );
setMoveKey( spep_0 + offset + 461, 1, -227, -0.1 , 0 );
setMoveKey( spep_0 + offset + 462, 1, -226.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 463, 1, -226.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 464, 1, -226.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 465, 1, -226.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 466, 1, -226.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 467, 1, -226.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 468, 1, -226.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 469, 1, -226.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 470, 1, -226.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 471, 1, -226.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 472, 1, -226, -0.1 , 0 );
setMoveKey( spep_0 + offset + 473, 1, -226, -0.1 , 0 );
setMoveKey( spep_0 + offset + 474, 1, -225.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 475, 1, -225.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 476, 1, -225.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 477, 1, -225.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 478, 1, -225.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 479, 1, -225.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 480, 1, -225.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 481, 1, -225.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 482, 1, -225.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 483, 1, -225.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 484, 1, -225.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 485, 1, -225.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 486, 1, -225, -0.1 , 0 );
setMoveKey( spep_0 + offset + 487, 1, -225, -0.1 , 0 );
setMoveKey( spep_0 + offset + 488, 1, -224.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 489, 1, -224.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 490, 1, -224.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 491, 1, -224.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 492, 1, -224.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 493, 1, -224.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 494, 1, -224.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 495, 1, -224.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 496, 1, -224.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 497, 1, -224.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 498, 1, -224, -0.1 , 0 );
setMoveKey( spep_0 + offset + 499, 1, -224, -0.1 , 0 );
setMoveKey( spep_0 + offset + 500, 1, -223.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 501, 1, -223.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 502, 1, -223.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 503, 1, -223.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 504, 1, -223.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 505, 1, -223.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 506, 1, -223.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 507, 1, -223.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 508, 1, -223.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 509, 1, -223.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 510, 1, -223.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 511, 1, -223.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 512, 1, -222.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 513, 1, -222.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 514, 1, -222.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 515, 1, -222.8, -0.1 , 0 );
setMoveKey( spep_0 + offset + 516, 1, -222.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 517, 1, -222.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 518, 1, -222.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 519, 1, -222.5, -0.1 , 0 );
setMoveKey( spep_0 + offset + 520, 1, -222.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 521, 1, -222.3, -0.1 , 0 );
setMoveKey( spep_0 + offset + 522, 1, -222.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 523, 1, -222.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 524, 1, -222, -0.1 , 0 );
setMoveKey( spep_0 + offset + 525, 1, -222, -0.1 , 0 );
setMoveKey( spep_0 + offset + 526, 1, -221.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 527, 1, -221.9, -0.1 , 0 );
setMoveKey( spep_0 + offset + 528, 1, -221.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 529, 1, -221.7, -0.1 , 0 );
setMoveKey( spep_0 + offset + 530, 1, -221.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 531, 1, -221.6, -0.1 , 0 );
setMoveKey( spep_0 + offset + 532, 1, -221.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 533, 1, -221.4, -0.1 , 0 );
setMoveKey( spep_0 + offset + 534, 1, -221.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 535, 1, -221.2, -0.1 , 0 );
setMoveKey( spep_0 + offset + 536, 1, -221.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 537, 1, -221.1, -0.1 , 0 );
setMoveKey( spep_0 + offset + 540, 1, -220.9, -0.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 1, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 2, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 3, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 4, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 5, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 6, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 78, 1, 0.69, 0.69 );
setScaleKey( spep_0 + offset + 392, 1, 0.57, 0.57 );
setScaleKey( spep_0 + offset + 400, 1, 0.56, 0.56 );
setScaleKey( spep_0 + offset + 454, 1, 0.55, 0.55 );
setScaleKey( spep_0 + offset + 508, 1, 0.54, 0.54 );
setScaleKey( spep_0 + offset + 540, 1, 0.54, 0.54 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 78, 1, 0 );
setRotateKey( spep_0 + offset + 392, 1, 0 );
setRotateKey( spep_0 + offset + 540, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 715 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 72 );

--画面遷移
SE003 = playSeVer2( spep_0 + 76, 44, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 190, 1003, "", 0, 0, 0, -1);

--セリフカットイン
SE005 = playSeVer2( spep_0 + 204, 1018, "", 0, 0, 0, -1);

--足広げる
SE006 = playSeVer2( spep_0 + 400, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE006, 50 );		
SE007 = playSeVer2( spep_0 + 400, 1192, "", 0, 0, 0, -1);

--画面遷移2
SE008 = playSeVer2( spep_0 + 536, 1232, "", 0, 0, 0, -1);

--凄む
SE009 = playSeVer2( spep_0 + 578, 1399, "",spep_0 + 670, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 578, SE009, 209 );
SE010 = playSeVer2( spep_0 + 578, 1391, "",spep_0 + 670, 0, 30, -1);

--ラスト決め
SE011 = playSeVer2( spep_0 + 638, 20, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 638, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 638, SE012, 142 );
setPitch( spep_0 + 638, SE012, -500 );
setTimeStretch( SE012, 0.67, 30, 4 );

--ボイス
--「このオレはピッコロ大魔王の　生まれかわりだ!!!!
playVoice( spep_0 + 184, 630 );
setVoiceVolume( spep_0 + 184, 630, 126 );

--「ふたたび　ピッコロさまの天下が　よみがえるのだ!!!!
playVoice( spep_0 + 398, 631 );
setVoiceVolume( spep_0 + 398, 631, 126 );

endPhase( spep_0 + 715 );

else end
