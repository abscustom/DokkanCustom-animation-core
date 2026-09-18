--1029640:UR_パラガス_必殺技：デッドパニッシャー
--sp_effect_b4_00351
--sp2754

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163130;  --開幕〜カードカットインまで ef_001
SP_02 = 163132;  --気弾発射〜着弾 ef_002
SP_02b = 163134;  --気弾発射〜着弾 ef_002b

--エフェクト(敵)
SP_01r = 163131;  --開幕〜カードカットインまで ef_001r
SP_02r = 163133;  --気弾発射〜着弾 ef_002r


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 82;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜カードカットインまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

--踏み出す
SE002 = playSeVer2( spep_0 + 4, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 200 );

--腕出す
SE003 = playSeVer2( spep_0 + 40, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE004 = playSeVer2( spep_0 + 46, 1328, "",spep_0 + 92, 4, 6, -1);
setSeVolumeByWorkId( spep_0 + 46, SE004, 116 );
setStartTimeMs( SE004,  100 );
SE005 = playSeVer2( spep_0 + 50, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 126 );
SE006 = playSeVer2( spep_0 + 50, 1130, "",spep_0 + 92, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 50, SE006, 65 );
SE007 = playSeVer2( spep_0 + 50, 1222, "",spep_0 + 94, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 82F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気弾発射
SE010 = playSeVer2( spep_1 + 82, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE010, 83 );
SE011 = playSeVer2( spep_1 + 82, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE011, 84 );
SE012 = playSeVer2( spep_1 + 82, 1177, "",spep_2 + 128, 0, 46, -1);

-------------------------------------------------
-- 気弾発射〜着弾
-------------------------------------------------
MAX_FRAME_2 = 258;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾発射〜着弾(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾発射〜着弾(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

--敵の動き1--

setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 188.7, -189.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 188.7, -189.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 188.3, -189.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 188.3, -189.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 187.3, -189.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 187.3, -189.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 185.5, -189.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 185.5, -189.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 183, -189.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 183, -189.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 179.8, -189 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 179.8, -189 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 175.9, -188.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 175.9, -188.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 171.2, -188.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 171.2, -188.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 165.9, -188.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 165.9, -188.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 159.8, -188.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 159.8, -188.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 153.1, -187.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 153.1, -187.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 145.6, -187.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 145.6, -187.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 137.4, -187.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 137.4, -187.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 128.5, -186.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 128.5, -186.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 130.3, -194.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 130.3, -194.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 139.7, -195.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 139.7, -195.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 148.2, -197.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 148.2, -197.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 155.9, -198.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 155.9, -198.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 162.7, -199.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 162.7, -199.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 168.8, -200.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 168.8, -200.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 174.2, -201.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 174.2, -201.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 178.9, -202.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 178.9, -202.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 183, -203.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 183, -203.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 186.5, -203.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 186.5, -203.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 189.5, -204.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 189.5, -204.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 192, -204.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 192, -204.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 194, -205.1 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 194, -205.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 195.6, -205.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 195.6, -205.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 196.9, -205.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 196.9, -205.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 197.8, -205.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 197.8, -205.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 198.5, -205.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 198.5, -205.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 199, -206 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 199, -206 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 199.2, -206 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 199.2, -206 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 199.4, -206.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 199.4, -206.1 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.47, 0.55 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.47, 0.55 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.47, 0.56 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.47, 0.56 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.49, 0.57 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.49, 0.57 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.51, 0.6 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.51, 0.6 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.55, 0.63 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.55, 0.63 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.6, 0.67 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.6, 0.67 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.66, 0.72 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.66, 0.72 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.72, 0.79 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.72, 0.79 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.8, 0.86 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.8, 0.86 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.89, 0.94 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.89, 0.94 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.99, 1.03 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.99, 1.03 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.1, 1.13 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.1, 1.13 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.22, 1.24 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.22, 1.24 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 27.1 );

setBlendColor( spep_2 + 60 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 76 + OFFSET_X, 1, 3, 0.2, 0.6, 0.6, 0.1 );
setBlendColor( spep_2 + 78 + OFFSET_X, 1, 3, 0.2, 0.65, 0.5, 0.15 );
setBlendColor( spep_2 + 80 + OFFSET_X, 1, 3, 0.2, 0.7, 0.45, 0.2 );
setBlendColor( spep_2 + 82 + OFFSET_X, 1, 3, 0.2, 0.75, 0.4, 0.25 );
setBlendColor( spep_2 + 84 + OFFSET_X, 1, 3, 0.2, 0.8, 0.34, 0.3 );
setBlendColor( spep_2 + 86 + OFFSET_X, 1, 3, 0.2, 0.8, 0.35, 0.35 );
setBlendColor( spep_2 + 88 + OFFSET_X, 1, 3, 0.2, 0.8, 0.35, 0.4 );
setBlendColor( spep_2 + 142 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾飛んでいく
SE009 = playSeVer2( spep_2 + 44, 1193, "",spep_2 + 170, 10, 24, -1);
setStartTimeMs( SE009,  2233 );
SE013 = playSeVer2( spep_2 + 50, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
pauseAll( SP_dodge, 67);

--色初期化--
setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0 );

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

--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 72, 1202, "", 0, 0, 0, -1);

--爆発
SE014 = playSeVer2( spep_2 + 126, 1255, "", 0, 6, 0, -1);
setStartTimeMs( SE014,  1000 );
SE016 = playSeVer2( spep_2 + 132, 1033, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE016, 79 );
SE017 = playSeVer2( spep_2 + 132, 1156, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 140); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム --258

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 82;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 開幕〜カードカットインまで(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--踏み出す
SE002 = playSeVer2( spep_0 + 4, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 200 );

--腕出す
SE003 = playSeVer2( spep_0 + 40, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE004 = playSeVer2( spep_0 + 46, 1328, "",spep_0 + 92, 4, 6, -1);
setSeVolumeByWorkId( spep_0 + 46, SE004, 116 );
setStartTimeMs( SE004,  100 );
SE005 = playSeVer2( spep_0 + 50, 49, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 126 );
SE006 = playSeVer2( spep_0 + 50, 1130, "",spep_0 + 92, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 50, SE006, 65 );
SE007 = playSeVer2( spep_0 + 50, 1222, "",spep_0 + 94, 0, 8, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 82F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気弾発射
SE010 = playSeVer2( spep_1 + 82, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE010, 83 );
SE011 = playSeVer2( spep_1 + 82, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE011, 84 );
SE012 = playSeVer2( spep_1 + 82, 1177, "",spep_2 + 128, 0, 46, -1);

-------------------------------------------------
-- 気弾発射〜着弾
-------------------------------------------------
MAX_FRAME_2 = 258;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気弾発射〜着弾(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾発射〜着弾(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

--敵の動き1--

setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 142 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 188.7, -189.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 188.7, -189.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 188.3, -189.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 188.3, -189.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 187.3, -189.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 187.3, -189.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 185.5, -189.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 185.5, -189.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 183, -189.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 183, -189.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 179.8, -189 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 179.8, -189 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 175.9, -188.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 175.9, -188.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 171.2, -188.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 171.2, -188.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 165.9, -188.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 165.9, -188.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 159.8, -188.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 159.8, -188.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 153.1, -187.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 153.1, -187.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 145.6, -187.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 145.6, -187.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 137.4, -187.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 137.4, -187.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 128.5, -186.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 128.5, -186.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 130.3, -194.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 130.3, -194.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 139.7, -195.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 139.7, -195.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 148.2, -197.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 148.2, -197.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 155.9, -198.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 155.9, -198.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 162.7, -199.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 162.7, -199.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 168.8, -200.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 168.8, -200.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 174.2, -201.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 174.2, -201.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 178.9, -202.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 178.9, -202.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 183, -203.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 183, -203.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 186.5, -203.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 186.5, -203.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 189.5, -204.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 189.5, -204.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 192, -204.7 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 192, -204.7 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 194, -205.1 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 194, -205.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 195.6, -205.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 195.6, -205.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 196.9, -205.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 196.9, -205.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 197.8, -205.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 197.8, -205.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 198.5, -205.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 198.5, -205.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 199, -206 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 199, -206 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 199.2, -206 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 199.2, -206 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 199.4, -206.1 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 199.4, -206.1 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.47, 0.55 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.47, 0.55 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.47, 0.56 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.47, 0.56 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.49, 0.57 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.49, 0.57 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.51, 0.6 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.51, 0.6 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.55, 0.63 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.55, 0.63 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.6, 0.67 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.6, 0.67 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.66, 0.72 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.66, 0.72 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 0.72, 0.79 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 0.72, 0.79 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.8, 0.86 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.8, 0.86 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.89, 0.94 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.89, 0.94 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 0.99, 1.03 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 0.99, 1.03 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.1, 1.13 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.1, 1.13 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.22, 1.24 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.22, 1.24 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.33, 0.33 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 27.1 );

setBlendColor( spep_2 + 60 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 76 + OFFSET_X, 1, 3, 0.2, 0.6, 0.6, 0.1 );
setBlendColor( spep_2 + 78 + OFFSET_X, 1, 3, 0.2, 0.65, 0.5, 0.15 );
setBlendColor( spep_2 + 80 + OFFSET_X, 1, 3, 0.2, 0.7, 0.45, 0.2 );
setBlendColor( spep_2 + 82 + OFFSET_X, 1, 3, 0.2, 0.75, 0.4, 0.25 );
setBlendColor( spep_2 + 84 + OFFSET_X, 1, 3, 0.2, 0.8, 0.34, 0.3 );
setBlendColor( spep_2 + 86 + OFFSET_X, 1, 3, 0.2, 0.8, 0.35, 0.35 );
setBlendColor( spep_2 + 88 + OFFSET_X, 1, 3, 0.2, 0.8, 0.35, 0.4 );
setBlendColor( spep_2 + 142 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾飛んでいく
SE009 = playSeVer2( spep_2 + 44, 1193, "",spep_2 + 170, 10, 24, -1);
setStartTimeMs( SE009,  2233 );
SE013 = playSeVer2( spep_2 + 50, 1021, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);

stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
pauseAll( SP_dodge, 67);

--色初期化--
setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0 );

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

--気弾飛んでいく
SE015 = playSeVer2( spep_2 + 72, 1202, "", 0, 0, 0, -1);

--爆発
SE014 = playSeVer2( spep_2 + 126, 1255, "", 0, 6, 0, -1);
setStartTimeMs( SE014,  1000 );
SE016 = playSeVer2( spep_2 + 132, 1033, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE016, 79 );
SE017 = playSeVer2( spep_2 + 132, 1156, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 140); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム --258

end
