--1024550:超サイヤ人ゴッドSSベジータ&超サイヤ人トランクス(未来)_ガンマバーストフラッシュ&バーニングアタック
--sp_effect_b4_00235/sp_effect_b4_00242
--sp2392

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
SP_01=  160143  ;-- ベジータ飛び上がる〜敵落下
SP_02=  160144  ;-- ベジータ飛び上がる〜敵落下
SP_03=  160145  ;-- バーニングアタック〜フィニッシュ

--エフェクト(敵)
--SP_03r=  160148  ;-- バーニングアタック〜フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.9);

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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ベジータ飛び上がる〜敵落下
------------------------------------------------------

--はじめの準備
spep_0=0;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
jump_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 570, jump_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 570, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump_f, 0 );
setEffRotateKey( spep_0 + 570, jump_f, 0 );
setEffAlphaKey( spep_0 + 0, jump_f, 255 );
setEffAlphaKey( spep_0 + 570, jump_f, 255 );
--[[
-- ** エフェクト等 ** --
jump_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 570, jump_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 570, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump_b, 0 );
setEffRotateKey( spep_0 + 570, jump_b, 0 );
setEffAlphaKey( spep_0 + 0, jump_b, 255 );
setEffAlphaKey( spep_0 + 570, jump_b, 255 );
]]
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 40, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 116.6, 174.1 , 0 );
setMoveKey( spep_0 + 2, 1, 116.6, 208.3 , 0 );
setMoveKey( spep_0 + 4, 1, 110.9, 204.5 , 0 );
setMoveKey( spep_0 + 6, 1, 105.2, 215.9 , 0 );
setMoveKey( spep_0 + 8, 1, 107.1, 206.4 , 0 );
setMoveKey( spep_0 + 10, 1, 107.1, 187.4 , 0 );
setMoveKey( spep_0 + 12, 1, 107.1, 221.6 , 0 );
setMoveKey( spep_0 + 14, 1, 110.9, 202.6 , 0 );
setMoveKey( spep_0 + 16, 1, 105.2, 214 , 0 );
setMoveKey( spep_0 + 18, 1, 109, 219.6 , 0 );
setMoveKey( spep_0 + 20, 1, 109, 199.6 , 0 );
setMoveKey( spep_0 + 22, 1, 115, 213.6 , 0 );
setMoveKey( spep_0 + 24, 1, 109, 191.6 , 0 );
setMoveKey( spep_0 + 26, 1, 115, 205.6 , 0 );
setMoveKey( spep_0 + 28, 1, 109, 211.6 , 0 );
setMoveKey( spep_0 + 30, 1, 105, 187.6 , 0 );
setMoveKey( spep_0 + 32, 1, 109, 219.6 , 0 );
setMoveKey( spep_0 + 34, 1, 109, 199.6 , 0 );
setMoveKey( spep_0 + 36, 1, 115, 213.6 , 0 );
setMoveKey( spep_0 + 38, 1, 113, 215.6 , 0 );
setMoveKey( spep_0-1 + 40, 1, 109, 195.6 , 0 );

setScaleKey( spep_0 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 3, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 4, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 5, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 6, 1, 0.15, 0.15 );
setScaleKey( spep_0-1 + 40, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 40, 1, 0 );

--SE
--ベジータ飛び立つ
SE001 = playSeVer2( spep_0 + 0, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSeVer2( spep_0 + 0, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );
SE003 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);

--トランクス飛んでいく
SE004 = playSeVer2( spep_0+6 + 34, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0+6 + 46, 1277, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0+6 + 46, 1117, "",spep_0+6 + 118, 0, 38, -1);

--ベジータ向かってくる
SE007 = playSeVer2( spep_0+6 + 72, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0+6 + 72, SE007, 50 );
setTimeStretch( SE007, 1.11, 30, 4 );
SE008 = playSeVer2( spep_0+6 + 72, 1182, "", 0, 0, 0, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 570, 0, 0, 0, 0, 255 );  --黒 背景

--敵の動き
setDisp( spep_0+6-3 + 134, 1, 1 );
setDisp( spep_0+6-1 + 256, 1, 0 );

changeAnime( spep_0+6-3 + 134, 1, 108 );
changeAnime( spep_0+6-3 + 166, 1, 106 );
changeAnime( spep_0+6-3 + 182, 1, 107 );
changeAnime( spep_0+6-3 + 198, 1, 106 );
changeAnime( spep_0+6-3 + 232, 1, 108 );

setMoveKey( spep_0+6-3 + 134, 1, 142.1, -128 , 0 );
setMoveKey( spep_0+6-3 + 136, 1, 142.1, -128 , 0 );
setMoveKey( spep_0+6-3 + 138, 1, 158.1, -132 , 0 );
setMoveKey( spep_0+6-3 + 140, 1, 158.1, -132 , 0 );
setMoveKey( spep_0+6-3 + 142, 1, 176.1, -130 , 0 );
setMoveKey( spep_0+6-3 + 144, 1, 176.1, -130 , 0 );
setMoveKey( spep_0+6-3 + 146, 1, 204.1, -116 , 0 );
setMoveKey( spep_0+6-3 + 148, 1, 211.6, -112.3 , 0 );
setMoveKey( spep_0+6-3 + 150, 1, 218.1, -109 , 0 );
setMoveKey( spep_0+6-3 + 152, 1, 223.6, -106.3 , 0 );
setMoveKey( spep_0+6-3 + 154, 1, 228.1, -104 , 0 );
setMoveKey( spep_0+6-3 + 156, 1, 231.6, -102.3 , 0 );
setMoveKey( spep_0+6-3 + 158, 1, 234.1, -101 , 0 );
setMoveKey( spep_0+6-3 + 160, 1, 235.6, -100.3 , 0 );
setMoveKey( spep_0+6-3 + 162, 1, 236.1, -100 , 0 );
setMoveKey( spep_0+6-3 + 165, 1, 236.1, -100 , 0 );

setMoveKey( spep_0+6-3 + 166, 1, 136.1, -170 , 0 );
setMoveKey( spep_0+6-3 + 168, 1, 162.1, -180 , 0 );
setMoveKey( spep_0+6-3 + 170, 1, 202.1, -190 , 0 );
setMoveKey( spep_0+6-3 + 172, 1, 202.1, -190 , 0 );
setMoveKey( spep_0+6-3 + 174, 1, 242.1, -190 , 0 );
setMoveKey( spep_0+6-3 + 179, 1, 242.1, -190 , 0 );

setMoveKey( spep_0+6-3 + 180, 1, -103.5, -784.5 , 0 );
setMoveKey( spep_0+6-3 + 181, 1, -103.5, -784.5 , 0 );

setMoveKey( spep_0+6-3 + 182, 1, -184.5, 151.6 , 0 );
setMoveKey( spep_0+6-3 + 184, 1, -104.5, 167.7 , 0 );
setMoveKey( spep_0+6-3 + 186, 1, -52.5, 159.7 , 0 );
setMoveKey( spep_0+6-3 + 188, 1, -24.5, 171.7 , 0 );
setMoveKey( spep_0+6-3 + 190, 1, 15.5, 151.7 , 0 );
setMoveKey( spep_0+6-3 + 192, 1, -12.5, 141.7 , 0 );
setMoveKey( spep_0+6-3 + 194, 1, -22.5, 159.7 , 0 );
setMoveKey( spep_0+6-3 + 196, 1, -28.5, 145.7 , 0 );
setMoveKey( spep_0+6-3 + 197, 1, -28.5, 145.7 , 0 );

setMoveKey( spep_0+6-3 + 198, 1, 61.9, -51.2 , 0 );
setMoveKey( spep_0+6-3 + 200, 1, 63.2, -52.5 , 0 );
setMoveKey( spep_0+6-3 + 202, 1, 64.6, -53.9 , 0 );
setMoveKey( spep_0+6-3 + 204, 1, 65.9, -55.2 , 0 );
setMoveKey( spep_0+6-3 + 206, 1, 67.2, -56.5 , 0 );
setMoveKey( spep_0+6-3 + 208, 1, 68.6, -57.9 , 0 );
setMoveKey( spep_0+6-3 + 210, 1, 69.9, -59.2 , 0 );
setMoveKey( spep_0+6-3 + 212, 1, 71.2, -60.5 , 0 );
setMoveKey( spep_0+6-3 + 214, 1, 72.6, -61.9 , 0 );
setMoveKey( spep_0+6-3 + 216, 1, 73.9, -63.2 , 0 );
setMoveKey( spep_0+6-3 + 218, 1, 75.2, -64.5 , 0 );
setMoveKey( spep_0+6-3 + 220, 1, 76.6, -65.9 , 0 );
setMoveKey( spep_0+6-3 + 222, 1, 77.9, -67.2 , 0 );
setMoveKey( spep_0+6-3 + 224, 1, 79.2, -68.5 , 0 );
setMoveKey( spep_0+6-3 + 226, 1, 80.6, -69.9 , 0 );
setMoveKey( spep_0+6-3 + 228, 1, 76.4, -71.2 , 0 );
setMoveKey( spep_0+6-3 + 231, 1, 76.4, -71.2 , 0 );

setMoveKey( spep_0+6-3 + 232, 1, 174.1, -46 , 0 );
setMoveKey( spep_0+6-3 + 234, 1, 172.6, -46 , 0 );
setMoveKey( spep_0+6-3 + 236, 1, 168.2, -46 , 0 );
setMoveKey( spep_0+6-3 + 238, 1, 160.8, -46 , 0 );
setMoveKey( spep_0+6-3 + 240, 1, 150.5, -46 , 0 );
setMoveKey( spep_0+6-3 + 242, 1, 137.2, -46 , 0 );
setMoveKey( spep_0+6-3 + 244, 1, 121, -46 , 0 );
setMoveKey( spep_0+6-3 + 246, 1, 101.9, -46 , 0 );
setMoveKey( spep_0+6-3 + 248, 1, 79.8, -46 , 0 );
setMoveKey( spep_0+6-3 + 250, 1, 79.8, -36 , 0 );
setMoveKey( spep_0+6-3 + 252, 1, 106.4, -66.5 , 0 );
setMoveKey( spep_0+6-3 + 254, 1, 102.4, -52.5 , 0 );
setMoveKey( spep_0+6-1 + 256, 1, 344.2, -49.1 , 0 );


setScaleKey( spep_0+6-3 + 134, 1, 3.87, 3.87 );
setScaleKey( spep_0+6-3 + 165, 1, 3.87, 3.87 );

setScaleKey( spep_0+6-3 + 166, 1, 3.5, 3.5 );
setScaleKey( spep_0+6-3 + 179, 1, 3.5, 3.5 );

setScaleKey( spep_0+6-3 + 180, 1, 12.58, 12.58 );
setScaleKey( spep_0+6-3 + 181, 1, 12.58, 12.58 );

setScaleKey( spep_0+6-3 + 182, 1, 3.49, 3.49 );
setScaleKey( spep_0+6-3 + 197, 1, 3.49, 3.49 );

setScaleKey( spep_0+6-3 + 198, 1, 1.1, 1.1 );
setScaleKey( spep_0+6-3 + 231, 1, 1.1, 1.1 );

setScaleKey( spep_0+6-3 + 232, 1, 1.2, 1.2 );
setScaleKey( spep_0+6-1 + 256, 1, 1.2, 1.2 );


setRotateKey( spep_0+6-3 + 134, 1, 0 );
setRotateKey( spep_0+6-3 + 165, 1, 0 );

setRotateKey( spep_0+6-3 + 166, 1, -45 );
setRotateKey( spep_0+6-3 + 179, 1, -45 );

setRotateKey( spep_0+6-3 + 180, 1, -49.9 );
setRotateKey( spep_0+6-3 + 181, 1, -49.9 );

setRotateKey( spep_0+6-3 + 182, 1, -30 );
setRotateKey( spep_0+6-3 + 184, 1, -25 );
setRotateKey( spep_0+6-3 + 197, 1, -25 );

setRotateKey( spep_0+6-3 + 198, 1, -45 );
setRotateKey( spep_0+6-3 + 231, 1, -45 );

setRotateKey( spep_0+6-3 + 232, 1, 0 );
setRotateKey( spep_0+6-1 + 256, 1, 0 );

--敵の動き
setDisp( spep_0+6-3 + 312, 1, 1 );
setDisp( spep_0+6-3 + 382, 1, 0 );

changeAnime( spep_0+6-3 + 312, 1, 108 );
changeAnime( spep_0+6-3 + 354, 1, 107 );

setMoveKey( spep_0+6-3 + 312, 1, 112.1, -30 , 0 );
setMoveKey( spep_0+6-3 + 318, 1, 112.1, -30 , 0 );
setMoveKey( spep_0+6-3 + 320, 1, 168.1, 10 , 0 );
setMoveKey( spep_0+6-3 + 324, 1, 168.1, 10 , 0 );
setMoveKey( spep_0+6-3 + 326, 1, 156.1, 30 , 0 );
setMoveKey( spep_0+6-3 + 329, 1, 156.1, 30 , 0 );

setMoveKey( spep_0+6-3 + 330, 1, 91.9, 67.9 , 0 );
setMoveKey( spep_0+6-3 + 332, 1, 91.9, 67.9 , 0 );
setMoveKey( spep_0+6-3 + 334, 1, 130, 81.5 , 0 );
setMoveKey( spep_0+6-3 + 336, 1, 124.2, 76 , 0 );
setMoveKey( spep_0+6-3 + 338, 1, 117.9, 86.4 , 0 );
setMoveKey( spep_0+6-3 + 340, 1, 118.6, 75.3 , 0 );
setMoveKey( spep_0+6-3 + 342, 1, 129.4, 79.9 , 0 );
setMoveKey( spep_0+6-3 + 344, 1, 132.5, 67.6 , 0 );
setMoveKey( spep_0+6-3 + 346, 1, 135.2, 80.1 , 0 );
setMoveKey( spep_0+6-3 + 348, 1, 137.3, 63.4 , 0 );
setMoveKey( spep_0+6-3 + 350, 1, 138.1, 63.5 , 0 );
setMoveKey( spep_0+6-3 + 352, 1, 140.1, 77.7 , 0 );
setMoveKey( spep_0+6-3 + 353, 1, 140.1, 77.7 , 0 );

setMoveKey( spep_0+6-3 + 354, 1, -370.2, -37.2 , 0 );
setMoveKey( spep_0+6-3 + 356, 1, -391.5, -41.9 , 0 );
setMoveKey( spep_0+6-3 + 358, 1, -432.2, -51 , 0 );
setMoveKey( spep_0+6-3 + 360, 1, -495.8, -65.3 , 0 );
setMoveKey( spep_0+6-3 + 362, 1, -587.1, -85.7 , 0 );
setMoveKey( spep_0+6-3 + 364, 1, -713.2, -114 , 0 );
setMoveKey( spep_0+6-3 + 366, 1, -884.4, -152.3 , 0 );
setMoveKey( spep_0+6-3 + 368, 1, -1118.7, -204.8 , 0 );
setMoveKey( spep_0+6-3 + 370, 1, -1450.9, -279.2 , 0 );
setMoveKey( spep_0+6-3 + 372, 1, -1975.7, -396.8 , 0 );
setMoveKey( spep_0+6-3 + 374, 1, -2689.8, -556.8 , 0 );
setMoveKey( spep_0+6-3 + 376, 1, -3183.4, -667.3 , 0 );
setMoveKey( spep_0+6-3 + 378, 1, -3437.5, -724.2 , 0 );
setMoveKey( spep_0+6-3 + 380, 1, -3551.4, -749.8 , 0 );
setMoveKey( spep_0+6-3 + 382, 1, -3580.8, -755.4 , 0 );


setScaleKey( spep_0+6-3 + 312, 1, 6, 6 );
setScaleKey( spep_0+6-3 + 329, 1, 6, 6 );

setScaleKey( spep_0+6-3 + 330, 1, 1.05, 1.05 );
setScaleKey( spep_0+6-3 + 332, 1, 1.05, 1.05 );
setScaleKey( spep_0+6-3 + 334, 1, 1, 1 );
setScaleKey( spep_0+6-3 + 336, 1, 0.94, 0.94 );
setScaleKey( spep_0+6-3 + 338, 1, 0.88, 0.88 );
setScaleKey( spep_0+6-3 + 340, 1, 0.83, 0.83 );
setScaleKey( spep_0+6-3 + 342, 1, 0.79, 0.79 );
setScaleKey( spep_0+6-3 + 344, 1, 0.76, 0.76 );
setScaleKey( spep_0+6-3 + 346, 1, 0.73, 0.73 );
setScaleKey( spep_0+6-3 + 348, 1, 0.71, 0.71 );
setScaleKey( spep_0+6-3 + 350, 1, 0.7, 0.7 );
setScaleKey( spep_0+6-3 + 353, 1, 0.7, 0.7 );

setScaleKey( spep_0+6-3 + 354, 1, 3, 3 );
setScaleKey( spep_0+6-3 + 356, 1, 3.06, 3.06 );
setScaleKey( spep_0+6-3 + 358, 1, 3.18, 3.18 );
setScaleKey( spep_0+6-3 + 360, 1, 3.37, 3.37 );
setScaleKey( spep_0+6-3 + 362, 1, 3.64, 3.64 );
setScaleKey( spep_0+6-3 + 364, 1, 4.01, 4.01 );
setScaleKey( spep_0+6-3 + 366, 1, 4.52, 4.52 );
setScaleKey( spep_0+6-3 + 368, 1, 5.21, 5.21 );
setScaleKey( spep_0+6-3 + 370, 1, 6.18, 6.18 );
setScaleKey( spep_0+6-3 + 372, 1, 7.73, 7.73 );
setScaleKey( spep_0+6-3 + 374, 1, 9.84, 9.84 );
setScaleKey( spep_0+6-3 + 376, 1, 11.29, 11.29 );
setScaleKey( spep_0+6-3 + 378, 1, 12.04, 12.04 );
setScaleKey( spep_0+6-3 + 380, 1, 12.37, 12.37 );
setScaleKey( spep_0+6-3 + 382, 1, 12.46, 12.46 );

setRotateKey( spep_0+6-3 + 312, 1, 0 );
setRotateKey( spep_0+6-3 + 353, 1, 0 );

setRotateKey( spep_0+6-3 + 354, 1, -30 );
setRotateKey( spep_0+6-3 + 382, 1, -30 );

--敵の動き
setDisp( spep_0+6-3 + 436, 1, 1 );
setDisp( spep_0+6-1 + 484, 1, 0 );

changeAnime( spep_0+6-3 + 436, 1, 106 );

a=0;
b=50;

setMoveKey( spep_0+6-3 + 436, 1, -61.8+a, -27.2-b , 0 );
setMoveKey( spep_0+6-3 + 438, 1, -59.6+a, -29.5-b , 0 );
setMoveKey( spep_0+6-3 + 440, 1, -57.4+a, -31.6-b , 0 );
setMoveKey( spep_0+6-3 + 442, 1, -55.4+a, -33.7-b , 0 );
setMoveKey( spep_0+6-3 + 444, 1, -53.4+a, -35.6-b , 0 );
setMoveKey( spep_0+6-3 + 446, 1, -51.5+a, -37.5-b , 0 );
setMoveKey( spep_0+6-3 + 448, 1, -49.8+a, -39.3-b , 0 );
setMoveKey( spep_0+6-3 + 450, 1, -48.1+a, -41-b , 0 );
setMoveKey( spep_0+6-3 + 452, 1, -46.5+a, -42.6-b , 0 );
setMoveKey( spep_0+6-3 + 454, 1, -45+a, -44-b , 0 );
setMoveKey( spep_0+6-3 + 456, 1, -43.6+a, -45.4-b , 0 );
setMoveKey( spep_0+6-3 + 458, 1, -42.3+a, -46.7-b , 0 );
setMoveKey( spep_0+6-3 + 460, 1, -41.1+a, -47.9-b , 0 );
setMoveKey( spep_0+6-3 + 462, 1, -40+a, -49-b , 0 );
setMoveKey( spep_0+6-3 + 464, 1, -39+a, -50-b , 0 );
setMoveKey( spep_0+6-3 + 466, 1, -38.1+a, -51-b , 0 );
setMoveKey( spep_0+6-3 + 468, 1, -37.3+a, -51.8-b , 0 );
setMoveKey( spep_0+6-3 + 470, 1, -36.6+a, -52.5-b , 0 );
setMoveKey( spep_0+6-3 + 472, 1, -35.9+a, -53.1-b , 0 );
setMoveKey( spep_0+6-3 + 474, 1, -35.4+a, -53.6-b , 0 );
setMoveKey( spep_0+6-3 + 476, 1, -35+a, -54.1-b , 0 );
setMoveKey( spep_0+6-3 + 478, 1, -34.6+a, -54.4-b , 0 );
setMoveKey( spep_0+6-3 + 480, 1, -34.4+a, -54.7-b , 0 );
setMoveKey( spep_0+6-1 + 484, 1, -34.2+a, -54.8-b , 0 );

setScaleKey( spep_0+6-3 + 436, 1, 1.6, 1.6 );
setScaleKey( spep_0+6-1 + 484, 1, 1.6, 1.6 );

setRotateKey( spep_0+6-3 + 436, 1, -60 );
setRotateKey( spep_0+6-1 + 484, 1, -60 );

--敵の動き
setDisp( spep_0+6-3 + 534, 1, 1 );
setDisp( spep_0+6-3 + 566, 1, 0 );

changeAnime( spep_0+6-3 + 534, 1, 105 );

setMoveKey( spep_0+6-3 + 534, 1, 10.1, -47.1 , 0 );
setMoveKey( spep_0+6-3 + 536, 1, -18.8, -39.6 , 0 );
setMoveKey( spep_0+6-3 + 538, 1, -27.3, -26.5 , 0 );
setMoveKey( spep_0+6-3 + 540, 1, -26.3, -25.4 , 0 );
setMoveKey( spep_0+6-3 + 542, 1, -25.9, -24.1 , 0 );
setMoveKey( spep_0+6-3 + 544, 1, -25.9, -22.8 , 0 );
setMoveKey( spep_0+6-3 + 546, 1, -26.3, -21.6 , 0 );
setMoveKey( spep_0+6-3 + 548, 1, -26.9, -20.5 , 0 );
setMoveKey( spep_0+6-3 + 550, 1, -27.6, -19.5 , 0 );
setMoveKey( spep_0+6-3 + 552, 1, -28.5, -18.6 , 0 );
setMoveKey( spep_0+6-3 + 554, 1, -29.4, -17.9 , 0 );
setMoveKey( spep_0+6-3 + 556, 1, -30.2, -17.3 , 0 );
setMoveKey( spep_0+6-3 + 558, 1, -30.9, -16.9 , 0 );
setMoveKey( spep_0+6-3 + 560, 1, -31.6, -16.6 , 0 );
setMoveKey( spep_0+6-3 + 562, 1, -32, -16.4 , 0 );
setMoveKey( spep_0+6-3 + 564, 1, -32.3, -16.2 , 0 );
setMoveKey( spep_0+6-3 + 566, 1, -32.4, -16.2 , 0 );

setScaleKey( spep_0+6-3 + 534, 1, 4, 4 );
setScaleKey( spep_0+6-3 + 536, 1, 2, 2 );
setScaleKey( spep_0+6-3 + 538, 1, 0.35, 0.35 );
setScaleKey( spep_0+6-3 + 540, 1, 0.32, 0.32 );
setScaleKey( spep_0+6-3 + 542, 1, 0.29, 0.29 );
setScaleKey( spep_0+6-3 + 544, 1, 0.26, 0.26 );
setScaleKey( spep_0+6-3 + 546, 1, 0.24, 0.24 );
setScaleKey( spep_0+6-3 + 548, 1, 0.21, 0.21 );
setScaleKey( spep_0+6-3 + 550, 1, 0.19, 0.19 );
setScaleKey( spep_0+6-3 + 552, 1, 0.18, 0.18 );
setScaleKey( spep_0+6-3 + 554, 1, 0.16, 0.16 );
setScaleKey( spep_0+6-3 + 556, 1, 0.15, 0.15 );
setScaleKey( spep_0+6-3 + 558, 1, 0.14, 0.14 );
setScaleKey( spep_0+6-3 + 560, 1, 0.13, 0.13 );
setScaleKey( spep_0+6-3 + 562, 1, 0.12, 0.12 );
setScaleKey( spep_0+6-3 + 566, 1, 0.12, 0.12 );

setRotateKey( spep_0+6-3 + 534, 1, 0 );
setRotateKey( spep_0+6-3 + 538, 1, 0 );
setRotateKey( spep_0+6-3 + 540, 1, -6.2 );
setRotateKey( spep_0+6-3 + 542, 1, -11.9 );
setRotateKey( spep_0+6-3 + 544, 1, -17.2 );
setRotateKey( spep_0+6-3 + 546, 1, -22 );
setRotateKey( spep_0+6-3 + 548, 1, -26.4 );
setRotateKey( spep_0+6-3 + 550, 1, -30.3 );
setRotateKey( spep_0+6-3 + 552, 1, -33.7 );
setRotateKey( spep_0+6-3 + 554, 1, -36.7 );
setRotateKey( spep_0+6-3 + 556, 1, -39.3 );
setRotateKey( spep_0+6-3 + 558, 1, -41.3 );
setRotateKey( spep_0+6-3 + 560, 1, -42.9 );
setRotateKey( spep_0+6-3 + 562, 1, -44.1 );
setRotateKey( spep_0+6-3 + 564, 1, -44.8 );
setRotateKey( spep_0+6-3 + 566, 1, -45 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止


    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--SE
--ベジータパンチ
SE009 = playSeVer2( spep_0+6 + 132, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0+6 + 132, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0+6 + 132, 1359, "",spep_0+6 + 172, 0, 20, -1);

--ベジータパンチ２
SE012 = playSeVer2( spep_0+6 + 164, 1009, "",spep_0+6 + 194, 0, 14, -1);
SE013 = playSeVer2( spep_0+6 + 164, 1359, "",spep_0+6 + 194, 0, 14, -1);

--ベジータパンチ３
SE014 = playSeVer2( spep_0+6 + 180, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0+6 + 180, 1110, "", 0, 0, 0, -1);

--ベジータ蹴り
SE016 = playSeVer2( spep_0+6 + 226, 1110, "",spep_0+6 + 264, 0, 8, -1);
SE017 = playSeVer2( spep_0+6 + 226, 1359, "",spep_0+6 + 256, 0, 16, -1);
setSeVolumeByWorkId( spep_0+6 + 226, SE017, 71 );
SE018 = playSeVer2( spep_0+6 + 226, 1153, "",spep_0+6 + 266, 0, 18, -1);
setSeVolumeByWorkId( spep_0+6 + 226, SE018, 58 );

--ベジータ蹴り飛ばし
SE019 = playSeVer2( spep_0+6 + 250, 1187, "",spep_0+6 + 320, 0, 12, -1);

--ベジータ向かっていく
SE020 = playSeVer2( spep_0+6 + 256, 9, "",spep_0+6 + 334, 0, 16, -1);
setSeVolumeByWorkId( spep_0+6 + 256, SE020, 72 );
SE021 = playSeVer2( spep_0+6 + 256, 1117, "",spep_0+6 + 328, 0, 10, -1);
setSeVolumeByWorkId( spep_0+6 + 256, SE021, 76 );
SE022 = playSeVer2( spep_0+6 + 270, 1116, "",spep_0+6 + 304, 0, 12, -1);
SE023 = playSeVer2( spep_0+6 + 276, 1004, "", 0, 0, 0, -1);

--ベジータ蹴り飛ばす
SE024 = playSeVer2( spep_0+6 + 314, 1123, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE025 = playSeVer2( spep_0+6 + 328, 1027, "", 0, 0, 0, -1);

--トランクス向かってくる
SE026 = playSeVer2( spep_0+6 + 352, 9, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0+6 + 352, 1182, "",spep_0+6 + 392, 0, 6, -1);

--トランクス斬り１
SE028 = playSeVer2( spep_0+6 + 396, 1256, "",spep_0+6 + 420, 0, 12, -1);
setSeVolumeByWorkId( spep_0+6 + 396, SE028, 85 );
SE029 = playSeVer2( spep_0+6 + 398, 1032, "",spep_0+6 + 418, 0, 4, -1);
setSeVolumeByWorkId( spep_0+6 + 398, SE029, 88 );
SE030 = playSeVer2( spep_0+6 + 398, 1142, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0+6 + 398, 1143, "",spep_0+6 + 426, 0, 10, -1);
setSeVolumeByWorkId( spep_0+6 + 398, SE031, 63 );

--トランクス斬り２
SE032 = playSeVer2( spep_0+6 + 414, 1256, "",spep_0+6 + 438, 0, 12, -1);
setSeVolumeByWorkId( spep_0+6 + 414, SE032, 88 );
SE033 = playSeVer2( spep_0+6 + 416, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 416, SE033, 79 );
SE034 = playSeVer2( spep_0+6 + 416, 1142, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0+6 + 416, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 416, SE035, 77 );

--斬撃余韻
SE036 = playSeVer2( spep_0+6 + 428, 1117, "",spep_0+6 + 542, 0, 64, -1);
setSeVolumeByWorkId( spep_0+6 + 428, SE036, 138 );

--オーラ
SE037 = playSeVer2( spep_0+6 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 434, SE037, 50 );
SE038 = playSeVer2( spep_0+6 + 434, 1227, "",spep_0+6 + 588, 0, 18, -1);
setSeVolumeByWorkId( spep_0+6 + 434, SE038, 129 );
SE039 = playSeVer2( spep_0+6 + 434, 1181, "",spep_0+6 + 580, 0, 10, -1);
setSeVolumeByWorkId( spep_0+6 + 434, SE039, 254 );
SE040 = playSeVer2( spep_0+6 + 458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 458, SE040, 50 );

--剣構える
SE041 = playSeVer2( spep_0+6 + 466, 1003, "", 0, 0, 0, -1);

--オーラ
SE042 = playSeVer2( spep_0+6 + 482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 482, SE042, 50 );
SE043 = playSeVer2( spep_0+6 + 506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 506, SE043, 50 );

--トランクス剣で斬り飛ばす
SE044 = playSeVer2( spep_0+6 + 522, 1172, "",spep_0+6 + 578, 0, 8, -1);
setSeVolumeByWorkId( spep_0+6 + 522, SE044, 60 );
setPitch( spep_0+6 + 522, SE044, 400 );
setTimeStretch( SE044, 1.27, 30, 4 );
SE045 = playSeVer2( spep_0+6 + 522, 1032, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0+6 + 522, 1312, "",spep_0+6 + 564, 0, 24, -1);
setSeVolumeByWorkId( spep_0+6 + 522, SE046, 80 );
SE047 = playSeVer2( spep_0+6 + 522, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 522, SE047, 84 );
SE048 = playSeVer2( spep_0+6 + 524, 1143, "",spep_0+6 + 578, 0, 8, -1);
setSeVolumeByWorkId( spep_0+6 + 524, SE048, 48 );

--白フェード
entryFade( spep_0 +562 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 570;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--バーニングアタック〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 474, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 474, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 474, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 474, finish, 255 );

--顔カットインのタイミング指定
spep_x=spep_2-8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--オーラ
SE050 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE050, 63 );

--顔カットイン
SE051 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--トランクス気弾溜め
SE052 = playSeVer2( spep_2 + 8, 1191, "",spep_2 + 124, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 8, SE052, 129 );
SE053 = playSeVer2( spep_2 + 8, 1296, "",spep_2 + 124, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 8, SE053, 135 );

--オーラ
SE054 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE054, 63 );
SE055 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE055, 63 );
SE056 = playSeVer2( spep_2 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE056, 63 );
SE057 = playSeVer2( spep_2 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE057, 63 );

--トランクス気弾発射
SE058 = playSeVer2( spep_2 + 108, 1027, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 108, 1193, "",spep_2 + 186, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 108, SE059, 145 );
SE060 = playSeVer2( spep_2 + 108, 1177, "",spep_2 + 186, 0, 20, -1);
SE061 = playSeVer2( spep_2 + 108, 1357, "",spep_2 + 166, 0, 26, -1);

--オーラ
SE062 = playSeVer2( spep_2 + 154, 1176, "",spep_2 + 278, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 154, SE062, 46 );
--SE063 = playSeVer2( spep_2 + 154, 1181, "",spep_2 + 278, 0, 14, -1);
--setSeVolumeByWorkId( spep_2 + 154, SE063, 132 );

--光の柱
--SE064 = playSeVer2( spep_2 + 148, 1307, "",spep_2 + 270, 0, 14, -1);
--setSeVolumeByWorkId( spep_2 + 148, SE064, 251 );

--ベジータ気弾溜め
SE065 = playSeVer2( spep_2 + 148 +20, 1210, "",spep_2 + 282, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 148 +20, SE065, 98 );
setPitch( spep_2 + 148 +20, SE065, -400 );
setTimeStretch( SE065, 0.73, 30, 4 );
setStartTimeMs( SE065,  333 );
SE066 = playSeVer2( spep_2 + 162, 1296, "",spep_2 + 272, 0, 14, -1);
SE067 = playSeVer2( spep_2 + 162, 1148, "",spep_2 + 272, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 162, SE067, 61 );
SE068 = playSeVer2( spep_2 + 162, 1282, "",spep_2 + 272, 0, 14, -1);
setPitch( spep_2 + 162, SE068, -400 );
setTimeStretch( SE068, 0.73, 30, 4 );

--ベジータ気弾発射
SE069 = playSeVer2( spep_2 + 260, 1258, "",spep_2 + 344, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 260, SE069, 72 );
SE070 = playSeVer2( spep_2 + 260, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE070, 78 );
SE071 = playSeVer2( spep_2 + 260, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE071, 80 );
SE072 = playSeVer2( spep_2 + 260, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE072, 82 );

--気弾地面ヒット
SE073 = playSeVer2( spep_2 + 304, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 304, SE073, 85 );
SE074 = playSeVer2( spep_2 + 322, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE074, 82 );
SE075 = playSeVer2( spep_2 + 322, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE075, 87 );
SE076 = playSeVer2( spep_2 + 322, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE076, 66 );

--瞬間移動
SE077 = playSeVer2( spep_2 + 396, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 500, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
dealDamage(spep_2 +324);
endPhase( spep_2 + 464 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ベジータ飛び上がる〜敵落下
------------------------------------------------------

--はじめの準備
spep_0=0;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
jump_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 570, jump_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 570, jump_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump_f, 0 );
setEffRotateKey( spep_0 + 570, jump_f, 0 );
setEffAlphaKey( spep_0 + 0, jump_f, 255 );
setEffAlphaKey( spep_0 + 570, jump_f, 255 );
--[[
-- ** エフェクト等 ** --
jump_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, jump_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 570, jump_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 570, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, jump_b, 0 );
setEffRotateKey( spep_0 + 570, jump_b, 0 );
setEffAlphaKey( spep_0 + 0, jump_b, 255 );
setEffAlphaKey( spep_0 + 570, jump_b, 255 );
]]
--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 40, 1, 0 );

changeAnime( spep_0 + 0, 1, 0 );

setMoveKey( spep_0 + 0, 1, -116.6, 174.1 , 0 );
setMoveKey( spep_0 + 2, 1, -116.6, 208.3 , 0 );
setMoveKey( spep_0 + 4, 1, -110.9, 204.5 , 0 );
setMoveKey( spep_0 + 6, 1, -105.2, 215.9 , 0 );
setMoveKey( spep_0 + 8, 1, -107.1, 206.4 , 0 );
setMoveKey( spep_0 + 10, 1, -107.1, 187.4 , 0 );
setMoveKey( spep_0 + 12, 1, -107.1, 221.6 , 0 );
setMoveKey( spep_0 + 14, 1, -110.9, 202.6 , 0 );
setMoveKey( spep_0 + 16, 1, -105.2, 214 , 0 );
setMoveKey( spep_0 + 18, 1, -109, 219.6 , 0 );
setMoveKey( spep_0 + 20, 1, -109, 199.6 , 0 );
setMoveKey( spep_0 + 22, 1, -115, 213.6 , 0 );
setMoveKey( spep_0 + 24, 1, -109, 191.6 , 0 );
setMoveKey( spep_0 + 26, 1, -115, 205.6 , 0 );
setMoveKey( spep_0 + 28, 1, -109, 211.6 , 0 );
setMoveKey( spep_0 + 30, 1, -105, 187.6 , 0 );
setMoveKey( spep_0 + 32, 1, -109, 219.6 , 0 );
setMoveKey( spep_0 + 34, 1, -109, 199.6 , 0 );
setMoveKey( spep_0 + 36, 1, -115, 213.6 , 0 );
setMoveKey( spep_0 + 38, 1, -113, 215.6 , 0 );
setMoveKey( spep_0-1 + 40, 1, -109, 195.6 , 0 );

setScaleKey( spep_0 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 2, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 3, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 4, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 5, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 6, 1, 0.15, 0.15 );
setScaleKey( spep_0-1 + 40, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 40, 1, 0 );

--SE
--ベジータ飛び立つ
SE001 = playSeVer2( spep_0 + 0, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSeVer2( spep_0 + 0, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );
SE003 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);

--トランクス飛んでいく
SE004 = playSeVer2( spep_0+6 + 34, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0+6 + 46, 1277, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0+6 + 46, 1117, "",spep_0+6 + 118, 0, 38, -1);

--ベジータ向かってくる
SE007 = playSeVer2( spep_0+6 + 72, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0+6 + 72, SE007, 50 );
setTimeStretch( SE007, 1.11, 30, 4 );
SE008 = playSeVer2( spep_0+6 + 72, 1182, "", 0, 0, 0, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 570, 0, 0, 0, 0, 255 );  --黒 背景

--敵の動き
setDisp( spep_0+6-3 + 134, 1, 1 );
setDisp( spep_0+6-1 + 256, 1, 0 );

changeAnime( spep_0+6-3 + 134, 1, 8 );
changeAnime( spep_0+6-3 + 166, 1, 6 );
changeAnime( spep_0+6-3 + 182, 1, 7 );
changeAnime( spep_0+6-3 + 198, 1, 6 );
changeAnime( spep_0+6-3 + 232, 1, 8 );

setMoveKey( spep_0+6-3 + 134, 1, -142.1, -128 , 0 );
setMoveKey( spep_0+6-3 + 136, 1, -142.1, -128 , 0 );
setMoveKey( spep_0+6-3 + 138, 1, -158.1, -132 , 0 );
setMoveKey( spep_0+6-3 + 140, 1, -158.1, -132 , 0 );
setMoveKey( spep_0+6-3 + 142, 1, -176.1, -130 , 0 );
setMoveKey( spep_0+6-3 + 144, 1, -176.1, -130 , 0 );
setMoveKey( spep_0+6-3 + 146, 1, -204.1, -116 , 0 );
setMoveKey( spep_0+6-3 + 148, 1, -211.6, -112.3 , 0 );
setMoveKey( spep_0+6-3 + 150, 1, -218.1, -109 , 0 );
setMoveKey( spep_0+6-3 + 152, 1, -223.6, -106.3 , 0 );
setMoveKey( spep_0+6-3 + 154, 1, -228.1, -104 , 0 );
setMoveKey( spep_0+6-3 + 156, 1, -231.6, -102.3 , 0 );
setMoveKey( spep_0+6-3 + 158, 1, -234.1, -101 , 0 );
setMoveKey( spep_0+6-3 + 160, 1, -235.6, -100.3 , 0 );
setMoveKey( spep_0+6-3 + 162, 1, -236.1, -100 , 0 );
setMoveKey( spep_0+6-3 + 165, 1, -236.1, -100 , 0 );

setMoveKey( spep_0+6-3 + 166, 1, -136.1, -170 , 0 );
setMoveKey( spep_0+6-3 + 168, 1, -162.1, -180 , 0 );
setMoveKey( spep_0+6-3 + 170, 1, -202.1, -190 , 0 );
setMoveKey( spep_0+6-3 + 172, 1, -202.1, -190 , 0 );
setMoveKey( spep_0+6-3 + 174, 1, -242.1, -190 , 0 );
setMoveKey( spep_0+6-3 + 179, 1, -242.1, -190 , 0 );

setMoveKey( spep_0+6-3 + 180, 1, 103.5, -784.5 , 0 );
setMoveKey( spep_0+6-3 + 181, 1, 103.5, -784.5 , 0 );

setMoveKey( spep_0+6-3 + 182, 1, 184.5, 151.6 , 0 );
setMoveKey( spep_0+6-3 + 184, 1, 104.5, 167.7 , 0 );
setMoveKey( spep_0+6-3 + 186, 1, 52.5, 159.7 , 0 );
setMoveKey( spep_0+6-3 + 188, 1, 24.5, 171.7 , 0 );
setMoveKey( spep_0+6-3 + 190, 1, -15.5, 151.7 , 0 );
setMoveKey( spep_0+6-3 + 192, 1, 12.5, 141.7 , 0 );
setMoveKey( spep_0+6-3 + 194, 1, 22.5, 159.7 , 0 );
setMoveKey( spep_0+6-3 + 196, 1, 28.5, 145.7 , 0 );
setMoveKey( spep_0+6-3 + 197, 1, 28.5, 145.7 , 0 );

setMoveKey( spep_0+6-3 + 198, 1, -61.9, -51.2 , 0 );
setMoveKey( spep_0+6-3 + 200, 1, -63.2, -52.5 , 0 );
setMoveKey( spep_0+6-3 + 202, 1, -64.6, -53.9 , 0 );
setMoveKey( spep_0+6-3 + 204, 1, -65.9, -55.2 , 0 );
setMoveKey( spep_0+6-3 + 206, 1, -67.2, -56.5 , 0 );
setMoveKey( spep_0+6-3 + 208, 1, -68.6, -57.9 , 0 );
setMoveKey( spep_0+6-3 + 210, 1, -69.9, -59.2 , 0 );
setMoveKey( spep_0+6-3 + 212, 1, -71.2, -60.5 , 0 );
setMoveKey( spep_0+6-3 + 214, 1, -72.6, -61.9 , 0 );
setMoveKey( spep_0+6-3 + 216, 1, -73.9, -63.2 , 0 );
setMoveKey( spep_0+6-3 + 218, 1, -75.2, -64.5 , 0 );
setMoveKey( spep_0+6-3 + 220, 1, -76.6, -65.9 , 0 );
setMoveKey( spep_0+6-3 + 222, 1, -77.9, -67.2 , 0 );
setMoveKey( spep_0+6-3 + 224, 1, -79.2, -68.5 , 0 );
setMoveKey( spep_0+6-3 + 226, 1, -80.6, -69.9 , 0 );
setMoveKey( spep_0+6-3 + 228, 1, -76.4, -71.2 , 0 );
setMoveKey( spep_0+6-3 + 231, 1, -76.4, -71.2 , 0 );

setMoveKey( spep_0+6-3 + 232, 1, -174.1, -46 , 0 );
setMoveKey( spep_0+6-3 + 234, 1, -172.6, -46 , 0 );
setMoveKey( spep_0+6-3 + 236, 1, -168.2, -46 , 0 );
setMoveKey( spep_0+6-3 + 238, 1, -160.8, -46 , 0 );
setMoveKey( spep_0+6-3 + 240, 1, -150.5, -46 , 0 );
setMoveKey( spep_0+6-3 + 242, 1, -137.2, -46 , 0 );
setMoveKey( spep_0+6-3 + 244, 1, -121, -46 , 0 );
setMoveKey( spep_0+6-3 + 246, 1, -101.9, -46 , 0 );
setMoveKey( spep_0+6-3 + 248, 1, -79.8, -46 , 0 );
setMoveKey( spep_0+6-3 + 250, 1, -79.8, -36 , 0 );
setMoveKey( spep_0+6-3 + 252, 1, -106.4, -66.5 , 0 );
setMoveKey( spep_0+6-3 + 254, 1, -102.4, -52.5 , 0 );
setMoveKey( spep_0+6-1 + 256, 1, -344.2, -49.1 , 0 );


setScaleKey( spep_0+6-3 + 134, 1, 3.87, 3.87 );
setScaleKey( spep_0+6-3 + 165, 1, 3.87, 3.87 );

setScaleKey( spep_0+6-3 + 166, 1, 3.5, 3.5 );
setScaleKey( spep_0+6-3 + 179, 1, 3.5, 3.5 );

setScaleKey( spep_0+6-3 + 180, 1, 12.58, 12.58 );
setScaleKey( spep_0+6-3 + 181, 1, 12.58, 12.58 );

setScaleKey( spep_0+6-3 + 182, 1, 3.49, 3.49 );
setScaleKey( spep_0+6-3 + 197, 1, 3.49, 3.49 );

setScaleKey( spep_0+6-3 + 198, 1, 1.1, 1.1 );
setScaleKey( spep_0+6-3 + 231, 1, 1.1, 1.1 );

setScaleKey( spep_0+6-3 + 232, 1, 1.2, 1.2 );
setScaleKey( spep_0+6-1 + 256, 1, 1.2, 1.2 );


setRotateKey( spep_0+6-3 + 134, 1, 0 );
setRotateKey( spep_0+6-3 + 165, 1, 0 );

setRotateKey( spep_0+6-3 + 166, 1, 45 );
setRotateKey( spep_0+6-3 + 179, 1, 45 );

setRotateKey( spep_0+6-3 + 180, 1, 49.9 );
setRotateKey( spep_0+6-3 + 181, 1, 49.9 );

setRotateKey( spep_0+6-3 + 182, 1, 30 );
setRotateKey( spep_0+6-3 + 184, 1, 25 );
setRotateKey( spep_0+6-3 + 197, 1, 25 );

setRotateKey( spep_0+6-3 + 198, 1, 45 );
setRotateKey( spep_0+6-3 + 231, 1, 45 );

setRotateKey( spep_0+6-3 + 232, 1, 0 );
setRotateKey( spep_0+6-1 + 256, 1, 0 );

--敵の動き
setDisp( spep_0+6-3 + 312, 1, 1 );
setDisp( spep_0+6-3 + 382, 1, 0 );

changeAnime( spep_0+6-3 + 312, 1, 8 );
changeAnime( spep_0+6-3 + 354, 1, 7 );

setMoveKey( spep_0+6-3 + 312, 1, -112.1, -30 , 0 );
setMoveKey( spep_0+6-3 + 318, 1, -112.1, -30 , 0 );
setMoveKey( spep_0+6-3 + 320, 1, -168.1, 10 , 0 );
setMoveKey( spep_0+6-3 + 324, 1, -168.1, 10 , 0 );
setMoveKey( spep_0+6-3 + 326, 1, -156.1, 30 , 0 );
setMoveKey( spep_0+6-3 + 329, 1, -156.1, 30 , 0 );

setMoveKey( spep_0+6-3 + 330, 1, -91.9, 67.9 , 0 );
setMoveKey( spep_0+6-3 + 332, 1, -91.9, 67.9 , 0 );
setMoveKey( spep_0+6-3 + 334, 1, -130, 81.5 , 0 );
setMoveKey( spep_0+6-3 + 336, 1, -124.2, 76 , 0 );
setMoveKey( spep_0+6-3 + 338, 1, -117.9, 86.4 , 0 );
setMoveKey( spep_0+6-3 + 340, 1, -118.6, 75.3 , 0 );
setMoveKey( spep_0+6-3 + 342, 1, -129.4, 79.9 , 0 );
setMoveKey( spep_0+6-3 + 344, 1, -132.5, 67.6 , 0 );
setMoveKey( spep_0+6-3 + 346, 1, -135.2, 80.1 , 0 );
setMoveKey( spep_0+6-3 + 348, 1, -137.3, 63.4 , 0 );
setMoveKey( spep_0+6-3 + 350, 1, -138.1, 63.5 , 0 );
setMoveKey( spep_0+6-3 + 352, 1, -140.1, 77.7 , 0 );
setMoveKey( spep_0+6-3 + 353, 1, -140.1, 77.7 , 0 );

setMoveKey( spep_0+6-3 + 354, 1, 370.2, -37.2 , 0 );
setMoveKey( spep_0+6-3 + 356, 1, 391.5, -41.9 , 0 );
setMoveKey( spep_0+6-3 + 358, 1, 432.2, -51 , 0 );
setMoveKey( spep_0+6-3 + 360, 1, 495.8, -65.3 , 0 );
setMoveKey( spep_0+6-3 + 362, 1, 587.1, -85.7 , 0 );
setMoveKey( spep_0+6-3 + 364, 1, 713.2, -114 , 0 );
setMoveKey( spep_0+6-3 + 366, 1, 884.4, -152.3 , 0 );
setMoveKey( spep_0+6-3 + 368, 1, 1118.7, -204.8 , 0 );
setMoveKey( spep_0+6-3 + 370, 1, 1450.9, -279.2 , 0 );
setMoveKey( spep_0+6-3 + 372, 1, 1975.7, -396.8 , 0 );
setMoveKey( spep_0+6-3 + 374, 1, 2689.8, -556.8 , 0 );
setMoveKey( spep_0+6-3 + 376, 1, 3183.4, -667.3 , 0 );
setMoveKey( spep_0+6-3 + 378, 1, 3437.5, -724.2 , 0 );
setMoveKey( spep_0+6-3 + 380, 1, 3551.4, -749.8 , 0 );
setMoveKey( spep_0+6-3 + 382, 1, 3580.8, -755.4 , 0 );


setScaleKey( spep_0+6-3 + 312, 1, 6, 6 );
setScaleKey( spep_0+6-3 + 329, 1, 6, 6 );

setScaleKey( spep_0+6-3 + 330, 1, 1.05, 1.05 );
setScaleKey( spep_0+6-3 + 332, 1, 1.05, 1.05 );
setScaleKey( spep_0+6-3 + 334, 1, 1, 1 );
setScaleKey( spep_0+6-3 + 336, 1, 0.94, 0.94 );
setScaleKey( spep_0+6-3 + 338, 1, 0.88, 0.88 );
setScaleKey( spep_0+6-3 + 340, 1, 0.83, 0.83 );
setScaleKey( spep_0+6-3 + 342, 1, 0.79, 0.79 );
setScaleKey( spep_0+6-3 + 344, 1, 0.76, 0.76 );
setScaleKey( spep_0+6-3 + 346, 1, 0.73, 0.73 );
setScaleKey( spep_0+6-3 + 348, 1, 0.71, 0.71 );
setScaleKey( spep_0+6-3 + 350, 1, 0.7, 0.7 );
setScaleKey( spep_0+6-3 + 353, 1, 0.7, 0.7 );

setScaleKey( spep_0+6-3 + 354, 1, 3, 3 );
setScaleKey( spep_0+6-3 + 356, 1, 3.06, 3.06 );
setScaleKey( spep_0+6-3 + 358, 1, 3.18, 3.18 );
setScaleKey( spep_0+6-3 + 360, 1, 3.37, 3.37 );
setScaleKey( spep_0+6-3 + 362, 1, 3.64, 3.64 );
setScaleKey( spep_0+6-3 + 364, 1, 4.01, 4.01 );
setScaleKey( spep_0+6-3 + 366, 1, 4.52, 4.52 );
setScaleKey( spep_0+6-3 + 368, 1, 5.21, 5.21 );
setScaleKey( spep_0+6-3 + 370, 1, 6.18, 6.18 );
setScaleKey( spep_0+6-3 + 372, 1, 7.73, 7.73 );
setScaleKey( spep_0+6-3 + 374, 1, 9.84, 9.84 );
setScaleKey( spep_0+6-3 + 376, 1, 11.29, 11.29 );
setScaleKey( spep_0+6-3 + 378, 1, 12.04, 12.04 );
setScaleKey( spep_0+6-3 + 380, 1, 12.37, 12.37 );
setScaleKey( spep_0+6-3 + 382, 1, 12.46, 12.46 );

setRotateKey( spep_0+6-3 + 312, 1, 0 );
setRotateKey( spep_0+6-3 + 353, 1, 0 );

setRotateKey( spep_0+6-3 + 354, 1, 30 );
setRotateKey( spep_0+6-3 + 382, 1, 30 );

--敵の動き
setDisp( spep_0+6-3 + 436, 1, 1 );
setDisp( spep_0+6-1 + 484, 1, 0 );

changeAnime( spep_0+6-3 + 436, 1, 6 );

a=0;
b=50;

setMoveKey( spep_0+6-3 + 436, 1, NaN, -27.2-b , 0 );
setMoveKey( spep_0+6-3 + 438, 1, NaN, -29.5-b , 0 );
setMoveKey( spep_0+6-3 + 440, 1, NaN, -31.6-b , 0 );
setMoveKey( spep_0+6-3 + 442, 1, NaN, -33.7-b , 0 );
setMoveKey( spep_0+6-3 + 444, 1, NaN, -35.6-b , 0 );
setMoveKey( spep_0+6-3 + 446, 1, NaN, -37.5-b , 0 );
setMoveKey( spep_0+6-3 + 448, 1, NaN, -39.3-b , 0 );
setMoveKey( spep_0+6-3 + 450, 1, NaN, -41-b , 0 );
setMoveKey( spep_0+6-3 + 452, 1, NaN, -42.6-b , 0 );
setMoveKey( spep_0+6-3 + 454, 1, NaN, -44-b , 0 );
setMoveKey( spep_0+6-3 + 456, 1, NaN, -45.4-b , 0 );
setMoveKey( spep_0+6-3 + 458, 1, NaN, -46.7-b , 0 );
setMoveKey( spep_0+6-3 + 460, 1, NaN, -47.9-b , 0 );
setMoveKey( spep_0+6-3 + 462, 1, NaN, -49-b , 0 );
setMoveKey( spep_0+6-3 + 464, 1, NaN, -50-b , 0 );
setMoveKey( spep_0+6-3 + 466, 1, NaN, -51-b , 0 );
setMoveKey( spep_0+6-3 + 468, 1, NaN, -51.8-b , 0 );
setMoveKey( spep_0+6-3 + 470, 1, NaN, -52.5-b , 0 );
setMoveKey( spep_0+6-3 + 472, 1, NaN, -53.1-b , 0 );
setMoveKey( spep_0+6-3 + 474, 1, NaN, -53.6-b , 0 );
setMoveKey( spep_0+6-3 + 476, 1, NaN, -54.1-b , 0 );
setMoveKey( spep_0+6-3 + 478, 1, NaN, -54.4-b , 0 );
setMoveKey( spep_0+6-3 + 480, 1, NaN, -54.7-b , 0 );
setMoveKey( spep_0+6-1 + 484, 1, NaN, -54.8-b , 0 );

setScaleKey( spep_0+6-3 + 436, 1, 1.6, 1.6 );
setScaleKey( spep_0+6-1 + 484, 1, 1.6, 1.6 );

setRotateKey( spep_0+6-3 + 436, 1, 60 );
setRotateKey( spep_0+6-1 + 484, 1, 60 );

--敵の動き
setDisp( spep_0+6-3 + 534, 1, 1 );
setDisp( spep_0+6-3 + 566, 1, 0 );

changeAnime( spep_0+6-3 + 534, 1, 5 );

setMoveKey( spep_0+6-3 + 534, 1, -10.1, -47.1 , 0 );
setMoveKey( spep_0+6-3 + 536, 1, 18.8, -39.6 , 0 );
setMoveKey( spep_0+6-3 + 538, 1, 27.3, -26.5 , 0 );
setMoveKey( spep_0+6-3 + 540, 1, 26.3, -25.4 , 0 );
setMoveKey( spep_0+6-3 + 542, 1, 25.9, -24.1 , 0 );
setMoveKey( spep_0+6-3 + 544, 1, 25.9, -22.8 , 0 );
setMoveKey( spep_0+6-3 + 546, 1, 26.3, -21.6 , 0 );
setMoveKey( spep_0+6-3 + 548, 1, 26.9, -20.5 , 0 );
setMoveKey( spep_0+6-3 + 550, 1, 27.6, -19.5 , 0 );
setMoveKey( spep_0+6-3 + 552, 1, 28.5, -18.6 , 0 );
setMoveKey( spep_0+6-3 + 554, 1, 29.4, -17.9 , 0 );
setMoveKey( spep_0+6-3 + 556, 1, 30.2, -17.3 , 0 );
setMoveKey( spep_0+6-3 + 558, 1, 30.9, -16.9 , 0 );
setMoveKey( spep_0+6-3 + 560, 1, 31.6, -16.6 , 0 );
setMoveKey( spep_0+6-3 + 562, 1, 32, -16.4 , 0 );
setMoveKey( spep_0+6-3 + 564, 1, 32.3, -16.2 , 0 );
setMoveKey( spep_0+6-3 + 566, 1, 32.4, -16.2 , 0 );

setScaleKey( spep_0+6-3 + 534, 1, 4, 4 );
setScaleKey( spep_0+6-3 + 536, 1, 2, 2 );
setScaleKey( spep_0+6-3 + 538, 1, 0.35, 0.35 );
setScaleKey( spep_0+6-3 + 540, 1, 0.32, 0.32 );
setScaleKey( spep_0+6-3 + 542, 1, 0.29, 0.29 );
setScaleKey( spep_0+6-3 + 544, 1, 0.26, 0.26 );
setScaleKey( spep_0+6-3 + 546, 1, 0.24, 0.24 );
setScaleKey( spep_0+6-3 + 548, 1, 0.21, 0.21 );
setScaleKey( spep_0+6-3 + 550, 1, 0.19, 0.19 );
setScaleKey( spep_0+6-3 + 552, 1, 0.18, 0.18 );
setScaleKey( spep_0+6-3 + 554, 1, 0.16, 0.16 );
setScaleKey( spep_0+6-3 + 556, 1, 0.15, 0.15 );
setScaleKey( spep_0+6-3 + 558, 1, 0.14, 0.14 );
setScaleKey( spep_0+6-3 + 560, 1, 0.13, 0.13 );
setScaleKey( spep_0+6-3 + 562, 1, 0.12, 0.12 );
setScaleKey( spep_0+6-3 + 566, 1, 0.12, 0.12 );

setRotateKey( spep_0+6-3 + 534, 1, 0 );
setRotateKey( spep_0+6-3 + 538, 1, 0 );
setRotateKey( spep_0+6-3 + 540, 1, 6.2 );
setRotateKey( spep_0+6-3 + 542, 1, 11.9 );
setRotateKey( spep_0+6-3 + 544, 1, 17.2 );
setRotateKey( spep_0+6-3 + 546, 1, 22 );
setRotateKey( spep_0+6-3 + 548, 1, 26.4 );
setRotateKey( spep_0+6-3 + 550, 1, 30.3 );
setRotateKey( spep_0+6-3 + 552, 1, 33.7 );
setRotateKey( spep_0+6-3 + 554, 1, 36.7 );
setRotateKey( spep_0+6-3 + 556, 1, 39.3 );
setRotateKey( spep_0+6-3 + 558, 1, 41.3 );
setRotateKey( spep_0+6-3 + 560, 1, 42.9 );
setRotateKey( spep_0+6-3 + 562, 1, 44.1 );
setRotateKey( spep_0+6-3 + 564, 1, 44.8 );
setRotateKey( spep_0+6-3 + 566, 1, 45 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止


    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );

    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--SE
--ベジータパンチ
SE009 = playSeVer2( spep_0+6 + 132, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0+6 + 132, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0+6 + 132, 1359, "",spep_0+6 + 172, 0, 20, -1);

--ベジータパンチ２
SE012 = playSeVer2( spep_0+6 + 164, 1009, "",spep_0+6 + 194, 0, 14, -1);
SE013 = playSeVer2( spep_0+6 + 164, 1359, "",spep_0+6 + 194, 0, 14, -1);

--ベジータパンチ３
SE014 = playSeVer2( spep_0+6 + 180, 1010, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0+6 + 180, 1110, "", 0, 0, 0, -1);

--ベジータ蹴り
SE016 = playSeVer2( spep_0+6 + 226, 1110, "",spep_0+6 + 264, 0, 8, -1);
SE017 = playSeVer2( spep_0+6 + 226, 1359, "",spep_0+6 + 256, 0, 16, -1);
setSeVolumeByWorkId( spep_0+6 + 226, SE017, 71 );
SE018 = playSeVer2( spep_0+6 + 226, 1153, "",spep_0+6 + 266, 0, 18, -1);
setSeVolumeByWorkId( spep_0+6 + 226, SE018, 58 );

--ベジータ蹴り飛ばし
SE019 = playSeVer2( spep_0+6 + 250, 1187, "",spep_0+6 + 320, 0, 12, -1);

--ベジータ向かっていく
SE020 = playSeVer2( spep_0+6 + 256, 9, "",spep_0+6 + 334, 0, 16, -1);
setSeVolumeByWorkId( spep_0+6 + 256, SE020, 72 );
SE021 = playSeVer2( spep_0+6 + 256, 1117, "",spep_0+6 + 328, 0, 10, -1);
setSeVolumeByWorkId( spep_0+6 + 256, SE021, 76 );
SE022 = playSeVer2( spep_0+6 + 270, 1116, "",spep_0+6 + 304, 0, 12, -1);
SE023 = playSeVer2( spep_0+6 + 276, 1004, "", 0, 0, 0, -1);

--ベジータ蹴り飛ばす
SE024 = playSeVer2( spep_0+6 + 314, 1123, "", 0, 0, 0, -1);

--敵吹っ飛ぶ
SE025 = playSeVer2( spep_0+6 + 328, 1027, "", 0, 0, 0, -1);

--トランクス向かってくる
SE026 = playSeVer2( spep_0+6 + 352, 9, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0+6 + 352, 1182, "",spep_0+6 + 392, 0, 6, -1);

--トランクス斬り１
SE028 = playSeVer2( spep_0+6 + 396, 1256, "",spep_0+6 + 420, 0, 12, -1);
setSeVolumeByWorkId( spep_0+6 + 396, SE028, 85 );
SE029 = playSeVer2( spep_0+6 + 398, 1032, "",spep_0+6 + 418, 0, 4, -1);
setSeVolumeByWorkId( spep_0+6 + 398, SE029, 88 );
SE030 = playSeVer2( spep_0+6 + 398, 1142, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0+6 + 398, 1143, "",spep_0+6 + 426, 0, 10, -1);
setSeVolumeByWorkId( spep_0+6 + 398, SE031, 63 );

--トランクス斬り２
SE032 = playSeVer2( spep_0+6 + 414, 1256, "",spep_0+6 + 438, 0, 12, -1);
setSeVolumeByWorkId( spep_0+6 + 414, SE032, 88 );
SE033 = playSeVer2( spep_0+6 + 416, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 416, SE033, 79 );
SE034 = playSeVer2( spep_0+6 + 416, 1142, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0+6 + 416, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 416, SE035, 77 );

--斬撃余韻
SE036 = playSeVer2( spep_0+6 + 428, 1117, "",spep_0+6 + 542, 0, 64, -1);
setSeVolumeByWorkId( spep_0+6 + 428, SE036, 138 );

--オーラ
SE037 = playSeVer2( spep_0+6 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 434, SE037, 50 );
SE038 = playSeVer2( spep_0+6 + 434, 1227, "",spep_0+6 + 588, 0, 18, -1);
setSeVolumeByWorkId( spep_0+6 + 434, SE038, 129 );
SE039 = playSeVer2( spep_0+6 + 434, 1181, "",spep_0+6 + 580, 0, 10, -1);
setSeVolumeByWorkId( spep_0+6 + 434, SE039, 254 );
SE040 = playSeVer2( spep_0+6 + 458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 458, SE040, 50 );

--剣構える
SE041 = playSeVer2( spep_0+6 + 466, 1003, "", 0, 0, 0, -1);

--オーラ
SE042 = playSeVer2( spep_0+6 + 482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 482, SE042, 50 );
SE043 = playSeVer2( spep_0+6 + 506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 506, SE043, 50 );

--トランクス剣で斬り飛ばす
SE044 = playSeVer2( spep_0+6 + 522, 1172, "",spep_0+6 + 578, 0, 8, -1);
setSeVolumeByWorkId( spep_0+6 + 522, SE044, 60 );
setPitch( spep_0+6 + 522, SE044, 400 );
setTimeStretch( SE044, 1.27, 30, 4 );
SE045 = playSeVer2( spep_0+6 + 522, 1032, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0+6 + 522, 1312, "",spep_0+6 + 564, 0, 24, -1);
setSeVolumeByWorkId( spep_0+6 + 522, SE046, 80 );
SE047 = playSeVer2( spep_0+6 + 522, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0+6 + 522, SE047, 84 );
SE048 = playSeVer2( spep_0+6 + 524, 1143, "",spep_0+6 + 578, 0, 8, -1);
setSeVolumeByWorkId( spep_0+6 + 524, SE048, 48 );

--白フェード
entryFade( spep_0 +562 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 570;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--バーニングアタック〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
--[[

finish = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 474, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 474, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 474, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 474, finish, 255 );
]]
--顔カットインのタイミング指定
spep_x=spep_2-8;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
--オーラ
SE050 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE050, 63 );

--顔カットイン
SE051 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--トランクス気弾溜め
SE052 = playSeVer2( spep_2 + 8, 1191, "",spep_2 + 124, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 8, SE052, 129 );
SE053 = playSeVer2( spep_2 + 8, 1296, "",spep_2 + 124, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 8, SE053, 135 );

--オーラ
SE054 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE054, 63 );
SE055 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE055, 63 );
SE056 = playSeVer2( spep_2 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE056, 63 );
SE057 = playSeVer2( spep_2 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 96, SE057, 63 );

--トランクス気弾発射
SE058 = playSeVer2( spep_2 + 108, 1027, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 108, 1193, "",spep_2 + 186, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 108, SE059, 145 );
SE060 = playSeVer2( spep_2 + 108, 1177, "",spep_2 + 186, 0, 20, -1);
SE061 = playSeVer2( spep_2 + 108, 1357, "",spep_2 + 166, 0, 26, -1);

--オーラ
SE062 = playSeVer2( spep_2 + 154, 1176, "",spep_2 + 278, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 154, SE062, 46 );
--SE063 = playSeVer2( spep_2 + 154, 1181, "",spep_2 + 278, 0, 14, -1);
--setSeVolumeByWorkId( spep_2 + 154, SE063, 132 );

--光の柱
--SE064 = playSeVer2( spep_2 + 148, 1307, "",spep_2 + 270, 0, 14, -1);
--setSeVolumeByWorkId( spep_2 + 148, SE064, 251 );

--ベジータ気弾溜め
SE065 = playSeVer2( spep_2 + 148 +20, 1210, "",spep_2 + 282, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 148 +20, SE065, 98 );
setPitch( spep_2 + 148 +20, SE065, -400 );
setTimeStretch( SE065, 0.73, 30, 4 );
setStartTimeMs( SE065,  333 );
SE066 = playSeVer2( spep_2 + 162, 1296, "",spep_2 + 272, 0, 14, -1);
SE067 = playSeVer2( spep_2 + 162, 1148, "",spep_2 + 272, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 162, SE067, 61 );
SE068 = playSeVer2( spep_2 + 162, 1282, "",spep_2 + 272, 0, 14, -1);
setPitch( spep_2 + 162, SE068, -400 );
setTimeStretch( SE068, 0.73, 30, 4 );

--ベジータ気弾発射
SE069 = playSeVer2( spep_2 + 260, 1258, "",spep_2 + 344, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 260, SE069, 72 );
SE070 = playSeVer2( spep_2 + 260, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE070, 78 );
SE071 = playSeVer2( spep_2 + 260, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE071, 80 );
SE072 = playSeVer2( spep_2 + 260, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE072, 82 );

--気弾地面ヒット
SE073 = playSeVer2( spep_2 + 304, 1215, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 304, SE073, 85 );
SE074 = playSeVer2( spep_2 + 322, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE074, 82 );
SE075 = playSeVer2( spep_2 + 322, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE075, 87 );
SE076 = playSeVer2( spep_2 + 322, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE076, 66 );

--瞬間移動
SE077 = playSeVer2( spep_2 + 396, 1109, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 500, 0, 0, 0, 0, 255 );  --黒 背景

--終わり
dealDamage(spep_2 +324);
endPhase( spep_2 + 464 );

end