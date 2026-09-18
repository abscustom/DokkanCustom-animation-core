--1028890:LR_アルティメット孫悟飯_必殺技：爆力魔閃
--sp_effect_b1_00280
--sp2706

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162898;  --ef_001  冒頭
SP_02 = 162899;  --ef_002  突進～ラスト：手前
SP_02b = 162900; --ef_002b 突進～ラスト：奥

--エフェクト(敵)
SP_02r = 162901; --ef_002r 敵用・突進～ラスト：手前

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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 冒頭(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--構える
SE003 = playSeVer2( spep_0 + 22, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 68 );
SE004 = playSeVer2( spep_0 + 50, 1233, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 58, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE005, 84 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --108f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かっていく
SE007 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 92, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 92, SE008, 51 );
setTimeStretch( SE008, 1.65, 30, 4 );

-------------------------------------------------
-- 突進～ラスト
-------------------------------------------------
MAX_FRAME_2 = 850;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 突進～ラスト：手前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進～ラスト：奥(ef_002b)
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
--敵の動き1
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 132 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 114 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, 28.3, -110.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 28.3, -110.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 35.7, -95.3 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 35.7, -95.3 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 42.6, -81.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 42.6, -81.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 49, -68.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 49, -68.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 54.7, -56.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 54.7, -56.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 60, -45.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 60, -45.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 64.7, -36 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 64.7, -36 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 68.8, -27.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 68.8, -27.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 72.4, -20.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 72.4, -20.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 75.4, -14 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 75.4, -14 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 77.9, -8.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 77.9, -8.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 79.8, -5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 79.8, -5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 81.2, -2.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 81.2, -2.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 81, -2.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 81, -2.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 80.8, -2.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 80.8, -2.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 80.7, -3.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 80.7, -3.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 80.5, -3.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 80.5, -3.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 91.1, 0.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 91.1, 0.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 90.9, 0.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 90.9, 0.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 90.7, 0.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 90.7, 0.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 90.5, 0.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 90.5, 0.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 121.3, 22 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 121.3, 22 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 295.8, -7.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 295.8, -7.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 375.6, -28.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 375.6, -28.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 459.2, -44.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 459.2, -44.5 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 18 );

--敵の動き2
setDisp( spep_2 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 216 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 150 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 150 + OFFSET_X, 1, -282.6, -306.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -282.6, -306.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -230.8, -273.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -230.8, -273.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -179.1, -240.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -179.1, -240.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -127.4, -207.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -127.4, -207.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -75.7, -174.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -75.7, -174.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -24.1, -141.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -24.1, -141.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 27.6, -108.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 27.6, -108.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 28.6, -106.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 28.6, -106.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 29.5, -104.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 29.5, -104.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 30.4, -102.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 30.4, -102.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 31.3, -100.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 31.3, -100.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 32.2, -98.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 32.2, -98.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 33.1, -96.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 33.1, -96.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 34.1, -94.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 34.1, -94.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 35, -92.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 35, -92.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 35.9, -90.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 35.9, -90.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 36.8, -88.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 36.8, -88.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 36.9, -88.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 36.9, -88.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 37, -88.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 37, -88.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 37.1, -88.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 37.1, -88.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 37.2, -88.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 37.2, -88.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 37.3, -88.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 37.3, -88.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 37.4, -88.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 37.4, -88.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 37.6, -88.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 37.6, -88.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 37.7, -88.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 37.7, -88.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 37.8, -88.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 37.8, -88.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 37.9, -88.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 37.9, -88.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 38, -88.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 38, -88.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 38.1, -88.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 38.1, -88.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 38.2, -88.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 38.2, -88.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 38.3, -88.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 38.3, -88.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 38.5, -88.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 38.5, -88.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 38.6, -89 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 38.6, -89 , 0 );

setScaleKey( spep_2 + 150 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.04, 0.04 );

setRotateKey( spep_2 + 150 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 25.9 );

--敵の動き3
setDisp( spep_2 + 294 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 388 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 294 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 322 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 358 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 294 + OFFSET_X, 1, 86.3, -364.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 86.3, -364.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -64.5, -249.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -64.5, -249.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -42.5, -266.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -42.5, -266.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -59.2, -265.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -59.2, -265.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -39.2, -210.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -39.2, -210.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -45.9, -192.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -45.9, -192.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -39.2, -172.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -39.2, -172.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -45.1, -158.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -45.1, -158.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -34.1, -154.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -34.1, -154.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -37.1, -150.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -37.1, -150.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -33.7, -137.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -33.7, -137.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -31.7, -127.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -31.7, -127.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -33.7, -121.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -33.7, -121.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 8.3, 46.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 8.3, 46.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -8.3, 75.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -8.3, 75.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 37.3, 40.1 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 37.3, 40.1 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 18.8, 19.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 18.8, 19.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 30.7, 39.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 30.7, 39.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 17.8, 40.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 17.8, 40.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 35.3, 31.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 35.3, 31.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 31.3, 16.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 31.3, 16.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 45.6, 34.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 45.6, 34.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 49.4, 38.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 49.4, 38.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 53.1, 41.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 53.1, 41.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 56.9, 45.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 56.9, 45.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 60.7, 49.6 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 60.7, 49.6 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 64.5, 53.5 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 64.5, 53.5 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 68.2, 57.3 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 68.2, 57.3 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 72, 61.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 72, 61.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 75.8, 65 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 75.8, 65 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 23.5, 90.7 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 23.5, 90.7 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 46.8, 81.5 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 46.8, 81.5 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 36.4, 70.2 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 36.4, 70.2 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 46.3, 92.6 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 46.3, 92.6 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 22.6, 93.6 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 22.6, 93.6 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 45.8, 105.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 45.8, 105.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 32.1, 118.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 32.1, 118.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 45.2, 119.3 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 45.2, 119.3 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 24.7, 113.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 24.7, 113.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 40.5, 134.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 40.5, 134.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 14.1, 139.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 14.1, 139.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 23.8, 151.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 23.8, 151.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 20, 147.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 20, 147.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 33, 170.2 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 33, 170.2 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 22.5, 166.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 22.5, 166.6 , 0 );

setScaleKey( spep_2 + 294 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 5.34, 5.34 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 5.34, 5.34 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 2.83, 2.83 );

setRotateKey( spep_2 + 294 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -54 );

--敵の動き4
setDisp( spep_2 + 508 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 730 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 508 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 606 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 508 + OFFSET_X, 1, 104.9, 34.6 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 104.9, 34.6 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 228.7, 1 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 228.7, 1 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 270.1, 83.9 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 270.1, 83.9 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 354.2, 227.1 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 354.2, 227.1 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 261.2, 98.6 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 261.2, 98.6 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 205.7, 0.5 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 205.7, 0.5 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 167.3, 27.9 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 167.3, 27.9 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 210.6, 23.3 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 210.6, 23.3 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 182, 30.8 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 182, 30.8 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 210.3, 28.1 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 210.3, 28.1 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 200.1, 23.6 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 200.1, 23.6 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 210, 32.8 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 210, 32.8 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 186.3, 21.8 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 186.3, 21.8 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 209.6, 37.5 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 209.6, 37.5 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 199.4, 44.8 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 199.4, 44.8 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 209.3, 46.3 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 209.3, 46.3 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 209.1, 44.6 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 209.1, 44.6 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 209, 47 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 209, 47 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 208.8, 49.4 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 208.8, 49.4 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 208.6, 51.8 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 208.6, 51.8 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 208.5, 54.1 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 208.5, 54.1 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 208.3, 56.5 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 208.3, 56.5 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 208.1, 58.9 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 208.1, 58.9 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 208, 61.2 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 208, 61.2 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 207.8, 63.6 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 207.8, 63.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 205.5, 69.1 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 205.5, 69.1 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 203.3, 74.6 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 203.3, 74.6 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 201, 80.1 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 201, 80.1 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 198.7, 85.7 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 198.7, 85.7 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 196.5, 91.2 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 196.5, 91.2 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 194.2, 96.7 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 194.2, 96.7 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 191.9, 102.2 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 191.9, 102.2 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 189.6, 107.7 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 189.6, 107.7 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 187.4, 113.3 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 187.4, 113.3 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 185.1, 118.8 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 185.1, 118.8 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 182.8, 124.3 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 182.8, 124.3 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 180.6, 129.8 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 180.6, 129.8 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 185.9, 134.9 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 185.9, 134.9 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 187.7, 139.5 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 187.7, 139.5 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 189.6, 144.1 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 189.6, 144.1 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 191.5, 148.7 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 191.5, 148.7 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 193.4, 153.3 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 193.4, 153.3 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 195.2, 157.9 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 195.2, 157.9 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 197.1, 162.5 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 197.1, 162.5 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 180.3, 161 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 180.3, 161 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 163.6, 159.5 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 163.6, 159.5 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 146.8, 158.1 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 146.8, 158.1 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 130, 156.6 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 130, 156.6 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 113.2, 155.2 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 113.2, 155.2 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 247.4, 81.8 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 247.4, 81.8 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 222.7, 63.3 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 222.7, 63.3 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 212.6, 62 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 212.6, 62 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 201.1, 59.2 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 201.1, 59.2 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 201.5, 59.4 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 201.5, 59.4 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 201.8, 59.5 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 201.8, 59.5 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 202.1, 59.7 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 202.1, 59.7 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 202.5, 59.9 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 202.5, 59.9 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 202.8, 60 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 202.8, 60 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 203.1, 60.2 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 203.1, 60.2 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 203.5, 60.3 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 203.5, 60.3 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 203.8, 60.5 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 203.8, 60.5 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 204.1, 60.6 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 204.1, 60.6 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 204.5, 60.8 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 204.5, 60.8 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 204.8, 60.9 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 204.8, 60.9 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 205.2, 61.1 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 205.2, 61.1 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 205.5, 61.2 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 205.5, 61.2 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 205.8, 61.4 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 205.8, 61.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 206.2, 61.6 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 206.2, 61.6 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 206.5, 61.7 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 206.5, 61.7 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 206.8, 61.9 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 206.8, 61.9 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 207.2, 62 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 207.2, 62 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 207.5, 62.2 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 207.5, 62.2 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 207.8, 62.3 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 207.8, 62.3 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 208.2, 62.5 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 208.2, 62.5 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 208.5, 62.6 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 208.5, 62.6 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 208.8, 62.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 208.8, 62.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 209.2, 62.9 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 209.2, 62.9 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 209.5, 63.1 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 209.5, 63.1 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 209.8, 63.2 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 209.8, 63.2 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 210.2, 63.4 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 210.2, 63.4 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 210.5, 63.6 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 210.5, 63.6 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 210.9, 63.7 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, 210.9, 63.7 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, 210.9, 63.8 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, 210.9, 63.8 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, 211, 63.8 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, 211, 63.8 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, 211.1, 63.8 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, 211.1, 63.8 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, 211.2, 63.9 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, 211.2, 63.9 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, 211.3, 63.9 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 211.3, 63.9 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 211.4, 64 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, 211.4, 64 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 211.5, 64 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, 211.5, 64 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, 211.6, 64 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 211.6, 64 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 211.6, 64.1 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, 211.6, 64.1 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 211.7, 64.1 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 211.7, 64.1 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 211.8, 64.2 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 211.8, 64.2 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 211.9, 64.2 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 211.9, 64.2 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 212, 64.3 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 212, 64.3 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 212.1, 64.3 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 212.1, 64.3 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 212.2, 64.3 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 212.2, 64.3 , 0 );

setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 581 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 582 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 587 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 593 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 595 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 615 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 616 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 619 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 625 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 626 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 629 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 634 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 640 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 648 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 660 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 675 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 676 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 689 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 690 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 697 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 698 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 711 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 712 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 2.61, 2.61 );

setRotateKey( spep_2 + 508 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 509 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 510 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 573 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 575 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 577 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 578 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 579 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 581 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 582 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 583 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 584 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 585 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 586 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 587 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 588 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 589 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 591 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 592 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 593 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 609 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 610 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 730 + OFFSET_X, 1, -43.2 );


-- ** 音 ** --
--向かっていく
SE009 = playSeVer2( spep_2 + 4, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 4, 1019, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--向かっていく
SE011 = playSeVer2( spep_2 + 64, 1019, "",spep_2 + 120, 0, 18, -1);
SE012 = playSeVer2( spep_2 + 78, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE013 = playSeVer2( spep_2 + 114, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 114, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_2 + 134, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE015, 74 );
SE016 = playSeVer2( spep_2 + 144, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE016, 83 );
SE017 = playSeVer2( spep_2 + 144, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE017, 67 );

--追いかける
SE018 = playSeVer2( spep_2 + 172, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 172, 1277, "", 0, 0, 0, -1);

--連続パンチ
SE020 = playSeVer2( spep_2 + 220, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 220, SE020, 79 );
SE021 = playSeVer2( spep_2 + 220, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 220, SE021, 66 );
SE022 = playSeVer2( spep_2 + 226, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 248, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE023, 85 );
SE024 = playSeVer2( spep_2 + 248, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE024, 68 );
SE025 = playSeVer2( spep_2 + 256, 1110, "", 0, 0, 0, -1);

--第一人称連続パンチ
SE026 = playSeVer2( spep_2 + 278, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 278, SE026, 83 );
SE027 = playSeVer2( spep_2 + 278, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 278, SE027, 69 );
SE028 = playSeVer2( spep_2 + 286, 1110, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 312, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 312, SE029, 71 );
SE030 = playSeVer2( spep_2 + 314, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE030, 73 );

--エルボー
SE031 = playSeVer2( spep_2 + 350, 1153, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 350, 1187, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 358, 1110, "", 0, 0, 0, -1);

--構える
SE034 = playSeVer2( spep_2 + 396, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 396, SE034, 71 );
SE035 = playSeVer2( spep_2 + 408, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 408, SE035, 60 );

--画面遷移
SE036 = playSeVer2( spep_2 + 420, 1072, "", 0, 0, 0, -1);

--振りかぶる
SE037 = playSeVer2( spep_2 + 446, 1116, "",spep_2 + 500, 0, 32, -1);
SE038 = playSeVer2( spep_2 + 448, 1117, "",spep_2 + 518, 0, 22, -1);

--腹パンチ
SE039 = playSeVer2( spep_2 + 500, 1187, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 500, 1153, "", 0, 0, 0, -1);

--気弾溜め
SE041 = playSeVer2( spep_2 + 540, 1328, "", 0, 2, 0, -1);
setStartTimeMs( SE041,  100 );
SE042 = playSeVer2( spep_2 + 540, 1296, "",spep_2 + 634, 0, 30, -1);
SE043 = playSeVer2( spep_2 + 540, 1396, "",spep_2 + 634, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 540, SE043, 47 );	
SE044 = playSeVer2( spep_2 + 540, 1154, "",spep_2 + 634, 0, 32, -1);

--気弾発射
SE045 = playSeVer2( spep_2 + 602, 1109, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 602, 1145, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 602, 1193, "",spep_2 + 672, 0, 26, -1);
SE048 = playSeVer2( spep_2 + 602, 1159, "",spep_2 + 838, 0, 88, -1);
SE049 = playSeVer2( spep_2 + 602, 1215, "",spep_2 + 798, 0, 86, -1);

--環境音
SE050 = playSeVer2( spep_2 + 670, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 670, SE050, 25 );

--髪なびく
SE051 = playSeVer2( spep_2 + 720, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 720, SE051, 141 );
SE052 = playSeVer2( spep_2 + 770, 1332, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 730 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  850f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭
-------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 冒頭(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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
setEffAlphaKey( spep_x + 84, ctgogo, 255 );]]--

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );

--構える
SE003 = playSeVer2( spep_0 + 22, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 68 );
SE004 = playSeVer2( spep_0 + 50, 1233, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 58, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE005, 84 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --108f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かっていく
SE007 = playSeVer2( spep_1 + 92, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 92, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 92, SE008, 51 );
setTimeStretch( SE008, 1.65, 30, 4 );

-------------------------------------------------
-- 突進～ラスト
-------------------------------------------------
MAX_FRAME_2 = 850;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 突進～ラスト：手前(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進～ラスト：奥(ef_002b)
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
--敵の動き1
setDisp( spep_2 + 80 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 132 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 80 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 114 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 124 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 80 + OFFSET_X, 1, 28.3, -110.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 28.3, -110.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 35.7, -95.3 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 35.7, -95.3 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 42.6, -81.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 42.6, -81.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 49, -68.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 49, -68.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 54.7, -56.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 54.7, -56.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 60, -45.6 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 60, -45.6 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 64.7, -36 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 64.7, -36 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 68.8, -27.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 68.8, -27.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 72.4, -20.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 72.4, -20.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 75.4, -14 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 75.4, -14 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 77.9, -8.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 77.9, -8.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 79.8, -5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 79.8, -5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 81.2, -2.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 81.2, -2.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 81, -2.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 81, -2.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 80.8, -2.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 80.8, -2.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 80.7, -3.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 80.7, -3.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 80.5, -3.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 80.5, -3.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 91.1, 0.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 91.1, 0.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 90.9, 0.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 90.9, 0.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 90.7, 0.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 90.7, 0.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 90.5, 0.6 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 90.5, 0.6 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 121.3, 22 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 121.3, 22 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 295.8, -7.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 295.8, -7.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 375.6, -28.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 375.6, -28.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 459.2, -44.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 459.2, -44.5 , 0 );

setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 18 );

--敵の動き2
setDisp( spep_2 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 216 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 150 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 150 + OFFSET_X, 1, -282.6, -306.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -282.6, -306.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -230.8, -273.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -230.8, -273.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -179.1, -240.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -179.1, -240.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -127.4, -207.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -127.4, -207.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -75.7, -174.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -75.7, -174.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -24.1, -141.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -24.1, -141.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 27.6, -108.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 27.6, -108.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 28.6, -106.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 28.6, -106.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 29.5, -104.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 29.5, -104.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 30.4, -102.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 30.4, -102.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 31.3, -100.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 31.3, -100.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 32.2, -98.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 32.2, -98.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 33.1, -96.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 33.1, -96.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 34.1, -94.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 34.1, -94.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 35, -92.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 35, -92.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 35.9, -90.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 35.9, -90.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 36.8, -88.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 36.8, -88.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 36.9, -88.5 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 36.9, -88.5 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 37, -88.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 37, -88.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 37.1, -88.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 37.1, -88.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 37.2, -88.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 37.2, -88.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 37.3, -88.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 37.3, -88.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 37.4, -88.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 37.4, -88.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 37.6, -88.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 37.6, -88.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 37.7, -88.7 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 37.7, -88.7 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 37.8, -88.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 37.8, -88.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 37.9, -88.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 37.9, -88.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 38, -88.8 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 38, -88.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 38.1, -88.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 38.1, -88.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 38.2, -88.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 38.2, -88.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 38.3, -88.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 38.3, -88.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 38.5, -88.9 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 38.5, -88.9 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 38.6, -89 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 38.6, -89 , 0 );

setScaleKey( spep_2 + 150 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.04, 0.04 );

setRotateKey( spep_2 + 150 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 25.9 );

--敵の動き3
setDisp( spep_2 + 294 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 388 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 294 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 322 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 358 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 294 + OFFSET_X, 1, 86.3, -364.1 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 86.3, -364.1 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -64.5, -249.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -64.5, -249.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -42.5, -266.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -42.5, -266.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -59.2, -265.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -59.2, -265.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -39.2, -210.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -39.2, -210.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -45.9, -192.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -45.9, -192.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -39.2, -172.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -39.2, -172.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -45.1, -158.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -45.1, -158.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -34.1, -154.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -34.1, -154.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -37.1, -150.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -37.1, -150.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -33.7, -137.3 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -33.7, -137.3 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -31.7, -127.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -31.7, -127.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -33.7, -121.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -33.7, -121.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 8.3, 46.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 8.3, 46.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -8.3, 75.5 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -8.3, 75.5 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 37.3, 40.1 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 37.3, 40.1 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 18.8, 19.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 18.8, 19.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 30.7, 39.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 30.7, 39.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 17.8, 40.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 17.8, 40.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 35.3, 31.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 35.3, 31.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 31.3, 16.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 31.3, 16.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 45.6, 34.2 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 45.6, 34.2 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 49.4, 38.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 49.4, 38.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 53.1, 41.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 53.1, 41.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 56.9, 45.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 56.9, 45.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 60.7, 49.6 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 60.7, 49.6 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 64.5, 53.5 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 64.5, 53.5 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 68.2, 57.3 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 68.2, 57.3 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 72, 61.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 72, 61.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 75.8, 65 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 75.8, 65 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 23.5, 90.7 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 23.5, 90.7 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 46.8, 81.5 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 46.8, 81.5 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 36.4, 70.2 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 36.4, 70.2 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 46.3, 92.6 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 46.3, 92.6 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 22.6, 93.6 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 22.6, 93.6 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 45.8, 105.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 45.8, 105.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 32.1, 118.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 32.1, 118.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 45.2, 119.3 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 45.2, 119.3 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 24.7, 113.6 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 24.7, 113.6 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 40.5, 134.8 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 40.5, 134.8 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 14.1, 139.7 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 14.1, 139.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 23.8, 151.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 23.8, 151.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 20, 147.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 20, 147.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 33, 170.2 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 33, 170.2 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 22.5, 166.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 22.5, 166.6 , 0 );

setScaleKey( spep_2 + 294 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 6.38, 6.38 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 5.5, 5.5 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 5.34, 5.34 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 5.34, 5.34 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 5.04, 5.04 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 3.77, 3.77 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 2.83, 2.83 );

setRotateKey( spep_2 + 294 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -63.9 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -64.4 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -65.5 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -65.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -54 );

--敵の動き4
setDisp( spep_2 + 508 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 730 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 508 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 606 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 508 + OFFSET_X, 1, 104.9, 34.6 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 104.9, 34.6 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 228.7, 1 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 228.7, 1 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 270.1, 83.9 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 270.1, 83.9 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 354.2, 227.1 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 354.2, 227.1 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 261.2, 98.6 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 261.2, 98.6 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 205.7, 0.5 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 205.7, 0.5 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 167.3, 27.9 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 167.3, 27.9 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 210.6, 23.3 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 210.6, 23.3 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 182, 30.8 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 182, 30.8 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 210.3, 28.1 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 210.3, 28.1 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 200.1, 23.6 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 200.1, 23.6 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 210, 32.8 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 210, 32.8 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 186.3, 21.8 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 186.3, 21.8 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 209.6, 37.5 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 209.6, 37.5 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 199.4, 44.8 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 199.4, 44.8 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 209.3, 46.3 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 209.3, 46.3 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 209.1, 44.6 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 209.1, 44.6 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 209, 47 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 209, 47 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 208.8, 49.4 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 208.8, 49.4 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 208.6, 51.8 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 208.6, 51.8 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 208.5, 54.1 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 208.5, 54.1 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 208.3, 56.5 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 208.3, 56.5 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 208.1, 58.9 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 208.1, 58.9 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 208, 61.2 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 208, 61.2 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 207.8, 63.6 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 207.8, 63.6 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 205.5, 69.1 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 205.5, 69.1 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 203.3, 74.6 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 203.3, 74.6 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 201, 80.1 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 201, 80.1 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 198.7, 85.7 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 198.7, 85.7 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 196.5, 91.2 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 196.5, 91.2 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 194.2, 96.7 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 194.2, 96.7 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 191.9, 102.2 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 191.9, 102.2 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 189.6, 107.7 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 189.6, 107.7 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 187.4, 113.3 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 187.4, 113.3 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 185.1, 118.8 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 185.1, 118.8 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 182.8, 124.3 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 182.8, 124.3 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 180.6, 129.8 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 180.6, 129.8 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 185.9, 134.9 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 185.9, 134.9 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 187.7, 139.5 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 187.7, 139.5 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 189.6, 144.1 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 189.6, 144.1 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 191.5, 148.7 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 191.5, 148.7 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 193.4, 153.3 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 193.4, 153.3 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 195.2, 157.9 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 195.2, 157.9 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 197.1, 162.5 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 197.1, 162.5 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 180.3, 161 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 180.3, 161 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 163.6, 159.5 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 163.6, 159.5 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 146.8, 158.1 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 146.8, 158.1 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 130, 156.6 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 130, 156.6 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 113.2, 155.2 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 113.2, 155.2 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 247.4, 81.8 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 247.4, 81.8 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 222.7, 63.3 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 222.7, 63.3 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 212.6, 62 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 212.6, 62 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 201.1, 59.2 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 201.1, 59.2 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 201.5, 59.4 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 201.5, 59.4 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 201.8, 59.5 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 201.8, 59.5 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 202.1, 59.7 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 202.1, 59.7 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 202.5, 59.9 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 202.5, 59.9 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 202.8, 60 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 202.8, 60 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 203.1, 60.2 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 203.1, 60.2 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 203.5, 60.3 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 203.5, 60.3 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 203.8, 60.5 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 203.8, 60.5 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 204.1, 60.6 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 204.1, 60.6 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 204.5, 60.8 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 204.5, 60.8 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 204.8, 60.9 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 204.8, 60.9 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 205.2, 61.1 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 205.2, 61.1 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 205.5, 61.2 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 205.5, 61.2 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 205.8, 61.4 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 205.8, 61.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 206.2, 61.6 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 206.2, 61.6 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 206.5, 61.7 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 206.5, 61.7 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 206.8, 61.9 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 206.8, 61.9 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 207.2, 62 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 207.2, 62 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 207.5, 62.2 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 207.5, 62.2 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 207.8, 62.3 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 207.8, 62.3 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 208.2, 62.5 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 208.2, 62.5 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 208.5, 62.6 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 208.5, 62.6 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 208.8, 62.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 208.8, 62.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 209.2, 62.9 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 209.2, 62.9 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 209.5, 63.1 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 209.5, 63.1 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 209.8, 63.2 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 209.8, 63.2 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 210.2, 63.4 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 210.2, 63.4 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 210.5, 63.6 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 210.5, 63.6 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 210.9, 63.7 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, 210.9, 63.7 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, 210.9, 63.8 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, 210.9, 63.8 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, 211, 63.8 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, 211, 63.8 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, 211.1, 63.8 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, 211.1, 63.8 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, 211.2, 63.9 , 0 );
setMoveKey( spep_2 + 689 + OFFSET_X, 1, 211.2, 63.9 , 0 );
setMoveKey( spep_2 + 690 + OFFSET_X, 1, 211.3, 63.9 , 0 );
setMoveKey( spep_2 + 693 + OFFSET_X, 1, 211.3, 63.9 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 211.4, 64 , 0 );
setMoveKey( spep_2 + 697 + OFFSET_X, 1, 211.4, 64 , 0 );
setMoveKey( spep_2 + 698 + OFFSET_X, 1, 211.5, 64 , 0 );
setMoveKey( spep_2 + 701 + OFFSET_X, 1, 211.5, 64 , 0 );
setMoveKey( spep_2 + 702 + OFFSET_X, 1, 211.6, 64 , 0 );
setMoveKey( spep_2 + 703 + OFFSET_X, 1, 211.6, 64 , 0 );
setMoveKey( spep_2 + 704 + OFFSET_X, 1, 211.6, 64.1 , 0 );
setMoveKey( spep_2 + 707 + OFFSET_X, 1, 211.6, 64.1 , 0 );
setMoveKey( spep_2 + 708 + OFFSET_X, 1, 211.7, 64.1 , 0 );
setMoveKey( spep_2 + 711 + OFFSET_X, 1, 211.7, 64.1 , 0 );
setMoveKey( spep_2 + 712 + OFFSET_X, 1, 211.8, 64.2 , 0 );
setMoveKey( spep_2 + 715 + OFFSET_X, 1, 211.8, 64.2 , 0 );
setMoveKey( spep_2 + 716 + OFFSET_X, 1, 211.9, 64.2 , 0 );
setMoveKey( spep_2 + 719 + OFFSET_X, 1, 211.9, 64.2 , 0 );
setMoveKey( spep_2 + 720 + OFFSET_X, 1, 212, 64.3 , 0 );
setMoveKey( spep_2 + 723 + OFFSET_X, 1, 212, 64.3 , 0 );
setMoveKey( spep_2 + 724 + OFFSET_X, 1, 212.1, 64.3 , 0 );
setMoveKey( spep_2 + 727 + OFFSET_X, 1, 212.1, 64.3 , 0 );
setMoveKey( spep_2 + 728 + OFFSET_X, 1, 212.2, 64.3 , 0 );
setMoveKey( spep_2 + 730 + OFFSET_X, 1, 212.2, 64.3 , 0 );

setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 529 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 530 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 539 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 551 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 552 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 553 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 554 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 555 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 556 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 581 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 582 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 583 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 584 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 587 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 588 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 589 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 590 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 593 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 594 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 595 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 596 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 597 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 598 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 601 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 602 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 603 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 605 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 606 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 611 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 612 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 613 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 614 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 615 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 616 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 617 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 618 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 619 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 620 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 623 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 624 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 625 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 626 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 627 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 628 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 629 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 630 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 633 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 634 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 635 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 636 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 637 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 638 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 639 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 640 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 641 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 642 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 645 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 646 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 647 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 648 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 649 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 650 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 651 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 652 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 653 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 654 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 657 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 658 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 659 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 660 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 661 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 662 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 663 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 664 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 667 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 668 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 669 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 670 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 671 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 672 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 675 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 676 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 683 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 684 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 689 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 690 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 697 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 698 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 703 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 704 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 711 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 712 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 717 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 718 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 725 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 726 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 730 + OFFSET_X, 1, 2.61, 2.61 );

setRotateKey( spep_2 + 508 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 509 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 510 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 573 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 575 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 577 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 578 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 579 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 581 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 582 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 583 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 584 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 585 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 586 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 587 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 588 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 589 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 591 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 592 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 593 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 609 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 610 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 730 + OFFSET_X, 1, -43.2 );


-- ** 音 ** --
--向かっていく
SE009 = playSeVer2( spep_2 + 4, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 4, 1019, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--向かっていく
SE011 = playSeVer2( spep_2 + 64, 1019, "",spep_2 + 120, 0, 18, -1);
SE012 = playSeVer2( spep_2 + 78, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE013 = playSeVer2( spep_2 + 114, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 114, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_2 + 134, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE015, 74 );
SE016 = playSeVer2( spep_2 + 144, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE016, 83 );
SE017 = playSeVer2( spep_2 + 144, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 144, SE017, 67 );

--追いかける
SE018 = playSeVer2( spep_2 + 172, 1182, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 172, 1277, "", 0, 0, 0, -1);

--連続パンチ
SE020 = playSeVer2( spep_2 + 220, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 220, SE020, 79 );
SE021 = playSeVer2( spep_2 + 220, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 220, SE021, 66 );
SE022 = playSeVer2( spep_2 + 226, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 248, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE023, 85 );
SE024 = playSeVer2( spep_2 + 248, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 248, SE024, 68 );
SE025 = playSeVer2( spep_2 + 256, 1110, "", 0, 0, 0, -1);

--第一人称連続パンチ
SE026 = playSeVer2( spep_2 + 278, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 278, SE026, 83 );
SE027 = playSeVer2( spep_2 + 278, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 278, SE027, 69 );
SE028 = playSeVer2( spep_2 + 286, 1110, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 312, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 312, SE029, 71 );
SE030 = playSeVer2( spep_2 + 314, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE030, 73 );

--エルボー
SE031 = playSeVer2( spep_2 + 350, 1153, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 350, 1187, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 358, 1110, "", 0, 0, 0, -1);

--構える
SE034 = playSeVer2( spep_2 + 396, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 396, SE034, 71 );
SE035 = playSeVer2( spep_2 + 408, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 408, SE035, 60 );

--画面遷移
SE036 = playSeVer2( spep_2 + 420, 1072, "", 0, 0, 0, -1);

--振りかぶる
SE037 = playSeVer2( spep_2 + 446, 1116, "",spep_2 + 500, 0, 32, -1);
SE038 = playSeVer2( spep_2 + 448, 1117, "",spep_2 + 518, 0, 22, -1);

--腹パンチ
SE039 = playSeVer2( spep_2 + 500, 1187, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 500, 1153, "", 0, 0, 0, -1);

--気弾溜め
SE041 = playSeVer2( spep_2 + 540, 1328, "", 0, 2, 0, -1);
setStartTimeMs( SE041,  100 );
SE042 = playSeVer2( spep_2 + 540, 1296, "",spep_2 + 634, 0, 30, -1);
SE043 = playSeVer2( spep_2 + 540, 1396, "",spep_2 + 634, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 540, SE043, 47 );	
SE044 = playSeVer2( spep_2 + 540, 1154, "",spep_2 + 634, 0, 32, -1);

--気弾発射
SE045 = playSeVer2( spep_2 + 602, 1109, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 602, 1145, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 602, 1193, "",spep_2 + 672, 0, 26, -1);
SE048 = playSeVer2( spep_2 + 602, 1159, "",spep_2 + 838, 0, 88, -1);
SE049 = playSeVer2( spep_2 + 602, 1215, "",spep_2 + 798, 0, 86, -1);

--環境音
SE050 = playSeVer2( spep_2 + 670, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 670, SE050, 25 );

--髪なびく
SE051 = playSeVer2( spep_2 + 720, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 720, SE051, 141 );
SE052 = playSeVer2( spep_2 + 770, 1332, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 730 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  850f -4


end
