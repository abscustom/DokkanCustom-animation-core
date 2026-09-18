--4031230:LR_超サイヤ人2ケール+超サイヤ人2カリフラ_超必殺技：メテオクラッシュ
--sp_effect_a2_00260
--sp2866

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02 = 163822;  -- カードカットイン～フィニッシュまで 前面 ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 横アングルで構え＋セリフ
-------------------------------------------------
MAX_FRAME_0 = 100;

setupMovie(0, SP_02, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 160, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 160, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 160, 515.5 , 0 );
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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 120, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--踏み込む
SE003 = playSeVer2( spep_0 + 6, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 234 );
SE004 = playSeVer2( spep_0 + 6, 1395, "",spep_0 + 56, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 66 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--100F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かっていく
SE006 = playSeVer2( spep_1 + 80, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 80, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE007, 72 );
SE008 = playSeVer2( spep_1 + 80, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 86, 1277, "", 0, 0, 0, -1);

-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 748;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで 前面 (ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 117 );
changeAnime( spep_2 + 44 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0, 1, 353.5, -142.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 353.5, -142.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 300.8, -140.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 300.8, -140.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 251.3, -140.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 251.3, -140.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 208.6, -140.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 208.6, -140.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 176.6, -140.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 176.6, -140.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 152.8, -140.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 152.8, -140.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 132.1, -140.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 132.1, -140.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 117, -141.5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 117, -141.5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 105.8, -140.8 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 105.8, -140.8 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 96.4, -140.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 96.4, -140.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 90.7, -139.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 90.7, -139.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 79.5, -369.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 79.5, -369.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -326.9, -339.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -326.9, -339.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -43, -222.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -43, -222.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 238.2, -108 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 238.2, -108 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 1131.1, 278.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 1131.1, 278.1 , 0 );

setScaleKey( spep_2 + 0, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 8.76, 8.76 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 8.76, 8.76 );

setRotateKey( spep_2 + 0, 1, 10 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 8 );

--敵の動き2
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, -192, -46.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -192, -46.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -174.4, -55.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -174.4, -55.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -154.9, -59.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -154.9, -59.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -151.9, -62.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -151.9, -62.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -151.8, -61.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -151.8, -61.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -151.8, -64.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -151.8, -64.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -136.6, -57.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -136.6, -57.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -139.5, -54.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -139.5, -54.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -121.4, -62 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -121.4, -62 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -122.7, -48 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -122.7, -48 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -19.4, -13 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -19.4, -13 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -21.1, -29.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -21.1, -29.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 71.3, 111.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 71.3, 111.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 71.6, 89.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 71.6, 89.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 83.9, 127.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 83.9, 127.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 98.2, 105.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 98.2, 105.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 81.1, 44.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 81.1, 44.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 189.6, 148.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 189.6, 148.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 213.1, 208.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 213.1, 208.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 262.3, 212 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 262.3, 212 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 342.3, 179.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 342.3, 179.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 457.1, 187.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 457.1, 187.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 610, 218.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 610, 218.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 790.3, 231.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 790.3, 231.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 995.7, 232.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 995.7, 232.3 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -71.4 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -65 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -65 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -54.3 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -59.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -69.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -69.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -18 );

--敵の動き3
setDisp( spep_2 + 164 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 200 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 164 + OFFSET_X, 1, 43, -127.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 43, -127.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 43.7, -127.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 43.7, -127.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 44.6, -127.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 44.6, -127.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 45.8, -127.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 45.8, -127.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 47.2, -126.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 47.2, -126.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 48.9, -126.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 48.9, -126.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 50.9, -126.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 50.9, -126.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 53.3, -126.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 53.3, -126.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 56.2, -126 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 56.2, -126 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 59.4, -125.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 59.4, -125.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 63.1, -125.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 63.1, -125.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 67.2, -124.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 67.2, -124.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 71.5, -124.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 71.5, -124.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 76.1, -124 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 76.1, -124 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 80.8, -123.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 80.8, -123.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 85.6, -123.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 85.6, -123.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 90.4, -122.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 90.4, -122.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 95.6, -122.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 95.6, -122.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 106.5, -120.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 106.5, -120.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 108.5, -120.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 108.5, -120.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 110.5, -119.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 110.5, -119.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 112.4, -118.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 112.4, -118.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 114.2, -118.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 114.2, -118.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 115.9, -117.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 115.9, -117.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 117.5, -116.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 117.5, -116.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 119, -116.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 119, -116.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 120.3, -115.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 120.3, -115.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 121.4, -115.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 121.4, -115.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 122.5, -115.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 122.5, -115.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 123.5, -114.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 123.5, -114.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 124.3, -114.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 124.3, -114.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 125.1, -114.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 125.1, -114.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 125.8, -113.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 125.8, -113.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 126.5, -113.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 126.5, -113.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 127, -113.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 127, -113.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 127.6, -113.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 127.6, -113.3 , 0 );

setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 164 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 0 );

--敵の動き4
setDisp( spep_2 + 348 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 468 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 348 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 408 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 348 + OFFSET_X, 1, 188.2, -286.3 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 188.2, -286.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 89.5, -194 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 89.5, -194 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 16.4, -125.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 16.4, -125.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -39.5, -73.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -39.5, -73.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -83, -32.1 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -83, -32.1 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -88.4, -26.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -88.4, -26.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -93, -21.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -93, -21.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -96.9, -17.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -96.9, -17.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -100.2, -14.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -100.2, -14.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -103.1, -11.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -103.1, -11.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -105.5, -8.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -105.5, -8.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -107.6, -6.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -107.6, -6.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -109.4, -4.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -109.4, -4.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -111, -3 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -111, -3 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -112.3, -1.6 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -112.3, -1.6 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -113.5, -0.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -113.5, -0.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -114.5, 0.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -114.5, 0.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -115.3, 1.5 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -115.3, 1.5 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -116.1, 2.3 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -116.1, 2.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -116.7, 2.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -116.7, 2.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -117.2, 3.5 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -117.2, 3.5 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -117.7, 4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -117.7, 4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -118, 4.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -118, 4.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -118.3, 4.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -118.3, 4.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -118.6, 4.9 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -118.6, 4.9 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -118.8, 5.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -118.8, 5.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -119, 5.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -119, 5.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -119.2, 5.5 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -119.2, 5.5 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -119.3, 5.6 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -119.3, 5.6 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -118.7, -12.7 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -118.7, -12.7 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -118.8, -10.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -118.8, -10.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -117.8, 32.2 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -117.8, 32.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -119.9, -11.4 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -119.9, -11.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -122.4, 24.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -122.4, 24.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -121.8, -3.7 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -121.8, -3.7 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -120, 17.9 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -120, 17.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -119.8, -2.9 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -119.8, -2.9 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -117.2, 17.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -117.2, 17.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -117.9, 3.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -117.9, 3.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -118.7, 14.2 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -118.7, 14.2 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -119.5, 7.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -119.5, 7.9 , 0 );

setScaleKey( spep_2 + 348 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.04, 0.04 );

setRotateKey( spep_2 + 348 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -18 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -27.3 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -27.8 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -27.8 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -28 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -28.7 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, 40 );

--敵の動き5
setDisp( spep_2 + 560 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 650 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 560 + OFFSET_X, 1, -10.9, 12.9 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -10.9, 12.9 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -47.3, 7.3 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -47.3, 7.3 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -81.8, 1.9 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -81.8, 1.9 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -112.7, -2.8 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -112.7, -2.8 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -137.8, -6.7 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -137.8, -6.7 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -156.3, -9.6 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -156.3, -9.6 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -168.7, -11.5 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -168.7, -11.5 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -176.9, -12.8 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -176.9, -12.8 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -182.4, -13.7 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -182.4, -13.7 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -186.1, -14.2 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -186.1, -14.2 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -188.7, -14.6 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -188.7, -14.6 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -190.7, -15 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -190.7, -15 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -189.1, -14.7 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -189.1, -14.7 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -187.4, -14.4 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -187.4, -14.4 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -185.6, -14.2 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -185.6, -14.2 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -183.4, -13.8 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -183.4, -13.8 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -181, -13.4 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -181, -13.4 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -178.1, -13 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -178.1, -13 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -174.7, -12.5 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -174.7, -12.5 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -170.5, -11.8 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -170.5, -11.8 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -165.2, -11 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -165.2, -11 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -158.6, -10 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -158.6, -10 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -149.8, -8.6 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -149.8, -8.6 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -137.7, -6.7 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -137.7, -6.7 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -120.2, -4 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -120.2, -4 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -91.1, 0.5 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -91.1, 0.5 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -10.9, -52 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -10.9, -52 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 3.8, 51.3 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 3.8, 51.3 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -10.9, -16.6 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -10.9, -16.6 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -5, 27.7 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -5, 27.7 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -10.9, -10.7 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -10.9, -10.7 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -10.9, 36.5 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -10.9, 36.5 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -9, -8.7 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -9, -8.7 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -8, 27.7 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -8, 27.7 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -8, 1.1 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -8, 1.1 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -10.9, 21.8 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -10.9, 21.8 , 0 );

setScaleKey( spep_2 + 560 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 0.34, 0.34 );

setRotateKey( spep_2 + 560 + OFFSET_X, 1, 37.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 37.9 );

-- ** 音 ** --

--向かっていく
SE010 = playSeVer2( spep_2 + 0, 1121, "",spep_2 + 122, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
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

--敵ヒット
SE011 = playSeVer2( spep_2 + 32, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 40, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 40, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE013, 88 );

--壁激突
SE014 = playSeVer2( spep_2 + 62, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE014, 71 );
SE015 = playSeVer2( spep_2 + 72, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE015, 81 );
SE016 = playSeVer2( spep_2 + 78, 1159, "", 0, 0, 0, -1);

--壁ひきずる
SE017 = playSeVer2( spep_2 + 82, 1044, "",spep_2 + 142, 32, 10, -1);
setSeVolumeByWorkId( spep_2 + 82, SE017, 216 );
SE018 = playSeVer2( spep_2 + 90, 1167, "",spep_2 + 142, 0, 16, -1);
SE019 = playSeVer2( spep_2 + 102, 1011, "", spep_2 + 142, 0, 10, -1);

--敵投げる
SE020 = playSeVer2( spep_2 + 120, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE020, 91 );
SE021 = playSeVer2( spep_2 + 122, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 144, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE022, 60 );
SE023 = playSeVer2( spep_2 + 150, 1109, "", 0, 0, 0, -1);

--着地
SE024 = playSeVer2( spep_2 + 164, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE024, 141 );
SE025 = playSeVer2( spep_2 + 168, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE025, 200 );
SE026 = playSeVer2( spep_2 + 168, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE026, 224 );

--向かっていく
SE027 = playSeVer2( spep_2 + 210, 1000, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 210, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 210, 1117, "", 0, 0, 0, -1);

--振りかぶる
SE030 = playSeVer2( spep_2 + 250, 1116, "",spep_2 + 290, 0, 16, -1);
SE031 = playSeVer2( spep_2 + 264, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE031,  133 );
SE032 = playSeVer2( spep_2 + 266, 9, "", 0, 18, 0, -1);

--殴り飛ばす
SE033 = playSeVer2( spep_2 + 316, 1120, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 316, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_2 + 340, 1183, "",spep_2 + 456, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 340, SE035, 78 );
SE036 = playSeVer2( spep_2 + 340, 1121, "",spep_2 + 440, 0, 50, -1);

--岩激突
SE037 = playSeVer2( spep_2 + 394, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE037, 71 );

--オーラ
SE038 = playSeVer2( spep_2 + 452, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 452, SE038, 51 );
SE039 = playSeVer2( spep_2 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE039, 50 );

--手前飛んでくる
SE040 = playSeVer2( spep_2 + 464, 1117, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 464, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 464, SE041, 40 );
setTimeStretch( SE041, 1.65, 30, 4 );

--オーラ
SE042 = playSeVer2( spep_2 + 480, 1036, "", 0, 0, 0, -1);

--手前飛んでくる
SE043 = playSeVer2( spep_2 + 514, 1188, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE043, 67 );
setStartTimeMs( SE043,  167 );

--オーラ
SE044 = playSeVer2( spep_2 + 504, 1036, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 528, 1036, "", 0, 0, 0, -1);

--画面遷移
SE046 = playSeVer2( spep_2 + 542, 8, "", 0, 0, 0, -1);

--オーラ
SE047 = playSeVer2( spep_2 + 552, 1036, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 576, 1036, "", 0, 0, 0, -1);

--ラストパンチ
SE049 = playSeVer2( spep_2 + 590, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 600, 1159, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 600, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 600, SE051, 79 );
SE052 = playSeVer2( spep_2 + 608, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 640); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 746F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 横アングルで構え＋セリフ
-------------------------------------------------
MAX_FRAME_0 = 100;

setupMovie(0, SP_02, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -160, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -160, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -160, 515.5 , 0 );
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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 120, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--踏み込む
SE003 = playSeVer2( spep_0 + 6, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 234 );
SE004 = playSeVer2( spep_0 + 6, 1395, "",spep_0 + 56, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 6, SE004, 66 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--100F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--向かっていく
SE006 = playSeVer2( spep_1 + 80, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 80, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 80, SE007, 72 );
SE008 = playSeVer2( spep_1 + 80, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 86, 1277, "", 0, 0, 0, -1);

-------------------------------------------------
-- カードカットイン～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 748;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- カードカットイン～フィニッシュまで 前面 (ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 17 );
changeAnime( spep_2 + 44 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 54 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 0, 1, -353.5, -142.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -353.5, -142.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -300.8, -140.9 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -300.8, -140.9 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -251.3, -140.2 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -251.3, -140.2 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -208.6, -140.3 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -208.6, -140.3 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -176.6, -140.9 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -176.6, -140.9 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -152.8, -140.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -152.8, -140.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -132.1, -140.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -132.1, -140.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -117, -141.5 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -117, -141.5 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -105.8, -140.8 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -105.8, -140.8 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -96.4, -140.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -96.4, -140.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -90.7, -139.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -90.7, -139.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -79.5, -369.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -79.5, -369.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 326.9, -339.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 326.9, -339.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 43, -222.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 43, -222.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -238.2, -108 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -238.2, -108 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -1131.1, 278.1 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -1131.1, 278.1 , 0 );

setScaleKey( spep_2 + 0, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 8.76, 8.76 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 8.76, 8.76 );

setRotateKey( spep_2 + 0, 1, -10 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -8 );

--敵の動き2
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, 192, -46.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 192, -46.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 174.4, -55.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 174.4, -55.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 154.9, -59.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 154.9, -59.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 151.9, -62.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 151.9, -62.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 151.8, -61.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 151.8, -61.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 151.8, -64.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 151.8, -64.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 136.6, -57.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 136.6, -57.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 139.5, -54.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 139.5, -54.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 121.4, -62 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 121.4, -62 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 122.7, -48 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 122.7, -48 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 19.4, -13 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 19.4, -13 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 21.1, -29.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 21.1, -29.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -71.3, 111.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -71.3, 111.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -71.6, 89.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -71.6, 89.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -83.9, 127.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -83.9, 127.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -98.2, 105.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -98.2, 105.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -81.1, 44.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -81.1, 44.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -189.6, 148.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -189.6, 148.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -213.1, 208.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -213.1, 208.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -262.3, 212 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -262.3, 212 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -342.3, 179.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -342.3, 179.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -457.1, 187.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -457.1, 187.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -610, 218.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -610, 218.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -790.3, 231.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -790.3, 231.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -995.7, 232.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -995.7, 232.3 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3, 3 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, 71.4 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 71.4 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 65 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 65 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 54.3 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 62.1 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 62.1 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 63.8 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 42.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 18 );

--敵の動き3
setDisp( spep_2 + 164 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 200 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 164 + OFFSET_X, 1, -43, -127.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -43, -127.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -43.7, -127.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -43.7, -127.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -44.6, -127.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -44.6, -127.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -45.8, -127.1 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -45.8, -127.1 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -47.2, -126.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -47.2, -126.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -48.9, -126.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -48.9, -126.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -50.9, -126.6 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -50.9, -126.6 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -53.3, -126.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -53.3, -126.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -56.2, -126 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -56.2, -126 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -59.4, -125.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -59.4, -125.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -63.1, -125.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -63.1, -125.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -67.2, -124.9 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -67.2, -124.9 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -71.5, -124.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -71.5, -124.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -76.1, -124 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -76.1, -124 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -80.8, -123.6 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -80.8, -123.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -85.6, -123.1 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -85.6, -123.1 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -90.4, -122.6 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -90.4, -122.6 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -95.6, -122.3 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -95.6, -122.3 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -106.5, -120.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -106.5, -120.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -108.5, -120.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -108.5, -120.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -110.5, -119.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -110.5, -119.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -112.4, -118.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -112.4, -118.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -114.2, -118.1 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -114.2, -118.1 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -115.9, -117.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -115.9, -117.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -117.5, -116.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -117.5, -116.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -119, -116.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -119, -116.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -120.3, -115.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -120.3, -115.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -121.4, -115.5 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -121.4, -115.5 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -122.5, -115.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -122.5, -115.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -123.5, -114.7 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -123.5, -114.7 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -124.3, -114.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -124.3, -114.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -125.1, -114.2 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -125.1, -114.2 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -125.8, -113.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -125.8, -113.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -126.5, -113.7 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -126.5, -113.7 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -127, -113.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -127, -113.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -127.6, -113.3 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -127.6, -113.3 , 0 );

setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 164 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 0 );

--敵の動き4
setDisp( spep_2 + 348 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 468 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 348 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 408 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 348 + OFFSET_X, 1, -188.2, -286.3 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -188.2, -286.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -89.5, -194 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -89.5, -194 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -16.4, -125.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -16.4, -125.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 39.5, -73.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 39.5, -73.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 83, -32.1 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 83, -32.1 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 88.4, -26.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 88.4, -26.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 93, -21.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 93, -21.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 96.9, -17.7 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 96.9, -17.7 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 100.2, -14.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 100.2, -14.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 103.1, -11.2 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 103.1, -11.2 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 105.5, -8.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 105.5, -8.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 107.6, -6.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 107.6, -6.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 109.4, -4.6 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 109.4, -4.6 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 111, -3 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 111, -3 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 112.3, -1.6 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 112.3, -1.6 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 113.5, -0.4 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 113.5, -0.4 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 114.5, 0.6 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 114.5, 0.6 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 115.3, 1.5 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 115.3, 1.5 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 116.1, 2.3 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 116.1, 2.3 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 116.7, 2.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 116.7, 2.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 117.2, 3.5 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 117.2, 3.5 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 117.7, 4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 117.7, 4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 118, 4.3 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 118, 4.3 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 118.3, 4.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 118.3, 4.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 118.6, 4.9 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 118.6, 4.9 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 118.8, 5.2 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 118.8, 5.2 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 119, 5.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 119, 5.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 119.2, 5.5 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 119.2, 5.5 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 119.3, 5.6 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 119.3, 5.6 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 118.7, -12.7 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 118.7, -12.7 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 118.8, -10.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 118.8, -10.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 117.8, 32.2 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 117.8, 32.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 119.9, -11.4 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 119.9, -11.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 122.4, 24.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 122.4, 24.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 121.8, -3.7 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 121.8, -3.7 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 120, 17.9 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 120, 17.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 119.8, -2.9 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 119.8, -2.9 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 117.2, 17.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 117.2, 17.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 117.9, 3.1 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 117.9, 3.1 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 118.7, 14.2 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 118.7, 14.2 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 119.5, 7.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 119.5, 7.9 , 0 );

setScaleKey( spep_2 + 348 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 0.04, 0.04 );

setRotateKey( spep_2 + 348 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, 25.4 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 25.4 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, 27.3 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, 27.8 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, 28.5 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -40 );

--敵の動き5
setDisp( spep_2 + 560 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 650 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 560 + OFFSET_X, 1, 10.9, 12.9 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 10.9, 12.9 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 47.3, 7.3 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 47.3, 7.3 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 81.8, 1.9 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 81.8, 1.9 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 112.7, -2.8 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 112.7, -2.8 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 137.8, -6.7 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 137.8, -6.7 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 156.3, -9.6 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 156.3, -9.6 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 168.7, -11.5 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 168.7, -11.5 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 176.9, -12.8 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 176.9, -12.8 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 182.4, -13.7 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 182.4, -13.7 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 186.1, -14.2 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 186.1, -14.2 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 188.7, -14.6 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 188.7, -14.6 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 190.7, -15 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 190.7, -15 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 189.1, -14.7 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 189.1, -14.7 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 187.4, -14.4 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 187.4, -14.4 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 185.6, -14.2 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 185.6, -14.2 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 183.4, -13.8 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 183.4, -13.8 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 181, -13.4 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 181, -13.4 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 178.1, -13 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 178.1, -13 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 174.7, -12.5 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 174.7, -12.5 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 170.5, -11.8 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 170.5, -11.8 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 165.2, -11 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 165.2, -11 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 158.6, -10 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 158.6, -10 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 149.8, -8.6 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 149.8, -8.6 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 137.7, -6.7 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 137.7, -6.7 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 120.2, -4 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 120.2, -4 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 91.1, 0.5 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 91.1, 0.5 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 10.9, -52 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 10.9, -52 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -3.8, 51.3 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -3.8, 51.3 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 10.9, -16.6 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 10.9, -16.6 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 5, 27.7 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 5, 27.7 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 10.9, -10.7 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 10.9, -10.7 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 10.9, 36.5 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 10.9, 36.5 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 9, -8.7 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 9, -8.7 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 8, 27.7 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 8, 27.7 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 8, 1.1 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 8, 1.1 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 10.9, 21.8 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 10.9, 21.8 , 0 );

setScaleKey( spep_2 + 560 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 0.34, 0.34 );

setRotateKey( spep_2 + 560 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, -37.9 );

-- ** 音 ** --

--向かっていく
SE010 = playSeVer2( spep_2 + 0, 1121, "",spep_2 + 122, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 0, SE010, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
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

--敵ヒット
SE011 = playSeVer2( spep_2 + 32, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 40, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 40, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE013, 88 );

--壁激突
SE014 = playSeVer2( spep_2 + 62, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE014, 71 );
SE015 = playSeVer2( spep_2 + 72, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 72, SE015, 81 );
SE016 = playSeVer2( spep_2 + 78, 1159, "", 0, 0, 0, -1);

--壁ひきずる
SE017 = playSeVer2( spep_2 + 82, 1044, "",spep_2 + 142, 32, 10, -1);
setSeVolumeByWorkId( spep_2 + 82, SE017, 216 );
SE018 = playSeVer2( spep_2 + 90, 1167, "",spep_2 + 142, 0, 16, -1);
SE019 = playSeVer2( spep_2 + 102, 1011, "", spep_2 + 142, 0, 10, -1);

--敵投げる
SE020 = playSeVer2( spep_2 + 120, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE020, 91 );
SE021 = playSeVer2( spep_2 + 122, 1027, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 144, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE022, 60 );
SE023 = playSeVer2( spep_2 + 150, 1109, "", 0, 0, 0, -1);

--着地
SE024 = playSeVer2( spep_2 + 164, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 164, SE024, 141 );
SE025 = playSeVer2( spep_2 + 168, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE025, 200 );
SE026 = playSeVer2( spep_2 + 168, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE026, 224 );

--向かっていく
SE027 = playSeVer2( spep_2 + 210, 1000, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 210, 1182, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 210, 1117, "", 0, 0, 0, -1);

--振りかぶる
SE030 = playSeVer2( spep_2 + 250, 1116, "",spep_2 + 290, 0, 16, -1);
SE031 = playSeVer2( spep_2 + 264, 1182, "", 0, 8, 0, -1);
setStartTimeMs( SE031,  133 );
SE032 = playSeVer2( spep_2 + 266, 9, "", 0, 18, 0, -1);

--殴り飛ばす
SE033 = playSeVer2( spep_2 + 316, 1120, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 316, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE035 = playSeVer2( spep_2 + 340, 1183, "",spep_2 + 456, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 340, SE035, 78 );
SE036 = playSeVer2( spep_2 + 340, 1121, "",spep_2 + 440, 0, 50, -1);

--岩激突
SE037 = playSeVer2( spep_2 + 394, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE037, 71 );

--オーラ
SE038 = playSeVer2( spep_2 + 452, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 452, SE038, 51 );
SE039 = playSeVer2( spep_2 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE039, 50 );

--手前飛んでくる
SE040 = playSeVer2( spep_2 + 464, 1117, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 464, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 464, SE041, 40 );
setTimeStretch( SE041, 1.65, 30, 4 );

--オーラ
SE042 = playSeVer2( spep_2 + 480, 1036, "", 0, 0, 0, -1);

--手前飛んでくる
SE043 = playSeVer2( spep_2 + 514, 1188, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE043, 67 );
setStartTimeMs( SE043,  167 );

--オーラ
SE044 = playSeVer2( spep_2 + 504, 1036, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 528, 1036, "", 0, 0, 0, -1);

--画面遷移
SE046 = playSeVer2( spep_2 + 542, 8, "", 0, 0, 0, -1);

--オーラ
SE047 = playSeVer2( spep_2 + 552, 1036, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 576, 1036, "", 0, 0, 0, -1);

--ラストパンチ
SE049 = playSeVer2( spep_2 + 590, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 600, 1159, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 600, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 600, SE051, 79 );
SE052 = playSeVer2( spep_2 + 608, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 640); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2-2); -- 746F

end