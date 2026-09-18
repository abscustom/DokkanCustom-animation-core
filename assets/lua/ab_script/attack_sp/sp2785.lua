-- 1030060: UR_クリリン_必殺技：気円斬
-- sp_effect_a6_00022
-- sp2785

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163226;  -- 正面気円斬ため ef_001
SP_002 = 163227;  -- 放つ→エフェクト→山切り：前 ef_002
SP_002b = 163228;  -- 放つ→エフェクト→山切り：後ろ ef_002b

-- 敵側
SP_002r = 163229;  -- 放つ→エフェクト→山切り：前：反転済 ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 正面気円斬ため ef_001
------------------------------------------------------
MAX_FRAME_0 = 124;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 正面気円斬ため ef_001
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 30;

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
--気円斬溜める
SE001 = playSeVer2( spep_0 + 42, 1239, "",spep_0 + 146, 2, 12, -1);
setSeVolumeByWorkId( spep_0 + 42, SE001, 141 );
setStartTimeMs( SE001,  1600 );

--電撃
SE002 = playSeVer2( spep_0 + 0, 1043, "", 0, 4, 0, -1);
setStartTimeMs( SE002,  550 );
SE003 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 60, 0, 12, -1);

--気円斬溜める
SE005 = playSeVer2( spep_0 + 42, 1240, "",spep_0 + 134, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 141 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 124

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気円斬発射
SE007 = playSeVer2( spep_1 + 90, 1242, "",spep_2 + 138, 6, 22, -1);
setSeVolumeByWorkId( spep_1 + 90, SE007, 158 );
setStartTimeMs( SE007,  233 );
SE008 = playSeVer2( spep_1 + 90, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE008, 158 );
SE009 = playSeVer2( spep_1 + 90, 1177, "",spep_2 + 136, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 56 );
SE010 = playSeVer2( spep_1 + 90, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE010, 79 );

------------------------------------------------------
-- 放つ→エフェクト→山切り：前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 326;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 放つ→エフェクト→山切り：前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 放つ→エフェクト→山切り：後ろ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 120 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 281.8, -118.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 281.8, -118.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 262.3, -116.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 262.3, -116.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 243.2, -114.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 243.2, -114.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 267.2, -140.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 267.2, -140.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 244.4, -138.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 244.4, -138.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 221.8, -137.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 221.8, -137.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 244.5, -97.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 244.5, -97.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 239.3, -109.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 239.3, -109.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 234.5, -120.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 234.5, -120.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 199.7, -98.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 199.7, -98.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 205.3, -114.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 205.3, -114.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 211.2, -129.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 211.2, -129.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 203.1, -125.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 203.1, -125.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 195.4, -120.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 195.4, -120.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 188, -116 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 188, -116 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 181.1, -115.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 181.1, -115.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 174.4, -115.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 174.4, -115.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 168.1, -114.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 168.1, -114.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 159.5, -121.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 159.5, -121.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 151.2, -127.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 151.2, -127.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 143.1, -133.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 143.1, -133.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 149.5, -125.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 149.5, -125.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 156.2, -117.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 156.2, -117.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 163.2, -108.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 163.2, -108.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 150.2, -105.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 150.2, -105.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 137.6, -102.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 137.6, -102.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 125.2, -98.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 125.2, -98.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 130.6, -104.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 130.6, -104.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 136.2, -110.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 136.2, -110.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 142.2, -116.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 142.2, -116.6 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.74, 2.74 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 9.8 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);

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
--飛んでいく
SE011 = playSeVer2( spep_2 + 52, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE011, 133 );

--気円斬飛んでいく
SE012 = playSeVer2( spep_2 + 134, 1121, "",spep_2 + 238, 6, 22, -1);
setSeVolumeByWorkId( spep_2 + 134, SE012, 71 );
setStartTimeMs( SE012,  600 );

--敵ヒット
SE013 = playSeVer2( spep_2 + 112, 1061, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 120, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE014, 71 );
SE015 = playSeVer2( spep_2 + 124, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE015, 56 );
SE016 = playSeVer2( spep_2 + 124, 1238, "", 0, 0, 0, -1);

--気円斬飛んでいく
SE017 = playSeVer2( spep_2 + 136, 1241, "",spep_2 + 238, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 136, SE017, 40 );
SE018 = playSeVer2( spep_2 + 136, 1242, "",spep_2 + 238, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 136, SE018, 50 );

--岩切れる
SE019 = playSeVer2( spep_2 + 208, 1209, "",spep_2 + 344, 2, 114, -1);
setSeVolumeByWorkId( spep_2 + 208, SE019, 56 );
setStartTimeMs( SE019,  267 );
SE020 = playSeVer2( spep_2 + 204, 1142, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 204, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE021, 59 );
SE022 = playSeVer2( spep_2 + 206, 1235, "",spep_2 + 254, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 206, SE022, 32 );

-- ** おわり ** --
dealDamage( spep_2 + 220 );
endPhase( spep_2 + MAX_FRAME_2);  -- 326

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 正面気円斬ため ef_001
------------------------------------------------------
MAX_FRAME_0 = 124;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 正面気円斬ため ef_001
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 30;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--気円斬溜める
SE001 = playSeVer2( spep_0 + 42, 1239, "",spep_0 + 146, 2, 12, -1);
setSeVolumeByWorkId( spep_0 + 42, SE001, 141 );
setStartTimeMs( SE001,  1600 );

--電撃
SE002 = playSeVer2( spep_0 + 0, 1043, "", 0, 4, 0, -1);
setStartTimeMs( SE002,  550 );
SE003 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 60, 0, 12, -1);

--気円斬溜める
SE005 = playSeVer2( spep_0 + 42, 1240, "",spep_0 + 134, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 141 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 124

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気円斬発射
SE007 = playSeVer2( spep_1 + 90, 1242, "",spep_2 + 138, 6, 22, -1);
setSeVolumeByWorkId( spep_1 + 90, SE007, 158 );
setStartTimeMs( SE007,  233 );
SE008 = playSeVer2( spep_1 + 90, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE008, 158 );
SE009 = playSeVer2( spep_1 + 90, 1177, "",spep_2 + 136, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 90, SE009, 56 );
SE010 = playSeVer2( spep_1 + 90, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE010, 79 );

------------------------------------------------------
-- 放つ→エフェクト→山切り：前 ef_002r
------------------------------------------------------
MAX_FRAME_2 = 326;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- 放つ→エフェクト→山切り：前 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 放つ→エフェクト→山切り：後ろ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 120 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 281.8, -118.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 281.8, -118.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 262.3, -116.5 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 262.3, -116.5 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 243.2, -114.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 243.2, -114.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 267.2, -140.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 267.2, -140.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 244.4, -138.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 244.4, -138.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 221.8, -137.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 221.8, -137.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 244.5, -97.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 244.5, -97.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 239.3, -109.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 239.3, -109.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 234.5, -120.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 234.5, -120.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 199.7, -98.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 199.7, -98.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 205.3, -114.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 205.3, -114.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 211.2, -129.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 211.2, -129.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 203.1, -125.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 203.1, -125.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 195.4, -120.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 195.4, -120.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 188, -116 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 188, -116 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 181.1, -115.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 181.1, -115.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 174.4, -115.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 174.4, -115.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 168.1, -114.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 168.1, -114.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 159.5, -121.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 159.5, -121.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 151.2, -127.4 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 151.2, -127.4 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 143.1, -133.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 143.1, -133.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 149.5, -125.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 149.5, -125.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 156.2, -117.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 156.2, -117.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 163.2, -108.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 163.2, -108.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 150.2, -105.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 150.2, -105.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 137.6, -102.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 137.6, -102.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 125.2, -98.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 125.2, -98.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 130.6, -104.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 130.6, -104.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 136.2, -110.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 136.2, -110.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 142.2, -116.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 142.2, -116.6 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.74, 2.74 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 9.8 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);

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
--飛んでいく
SE011 = playSeVer2( spep_2 + 52, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE011, 133 );

--気円斬飛んでいく
SE012 = playSeVer2( spep_2 + 134, 1121, "",spep_2 + 238, 6, 22, -1);
setSeVolumeByWorkId( spep_2 + 134, SE012, 71 );
setStartTimeMs( SE012,  600 );

--敵ヒット
SE013 = playSeVer2( spep_2 + 112, 1061, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 120, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE014, 71 );
SE015 = playSeVer2( spep_2 + 124, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE015, 56 );
SE016 = playSeVer2( spep_2 + 124, 1238, "", 0, 0, 0, -1);

--気円斬飛んでいく
SE017 = playSeVer2( spep_2 + 136, 1241, "",spep_2 + 238, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 136, SE017, 40 );
SE018 = playSeVer2( spep_2 + 136, 1242, "",spep_2 + 238, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 136, SE018, 50 );

--岩切れる
SE019 = playSeVer2( spep_2 + 208, 1209, "",spep_2 + 344, 2, 114, -1);
setSeVolumeByWorkId( spep_2 + 208, SE019, 56 );
setStartTimeMs( SE019,  267 );
SE020 = playSeVer2( spep_2 + 204, 1142, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 204, 1156, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE021, 59 );
SE022 = playSeVer2( spep_2 + 206, 1235, "",spep_2 + 254, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 206, SE022, 32 );

-- ** おわり ** --
dealDamage( spep_2 + 220 );
endPhase( spep_2 + MAX_FRAME_2);  -- 326

end
