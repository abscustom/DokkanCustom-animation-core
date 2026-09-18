--1028880:UR_アルティメット孫悟飯_必殺技(↓簡易版)
--sp_effect_b1_00280
--sp2723

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162898;  --ef_001  冒頭
SP_02 = 162902;  --ef_002  [簡易版]突進～ラスト：手前
SP_02b = 162903; --ef_002b [簡易版]突進～ラスト：奥

--エフェクト(敵)
SP_02r = 162904; --ef_002r [簡易版]敵用・突進～ラスト：手前

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
SE003 = playSeVer2( spep_0 + 32, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 68 );
SE004 = playSeVer2( spep_0 + 60, 1233, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 68, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE005, 84 );

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
MAX_FRAME_2 = 724;

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
setDisp( spep_2 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 130 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 78 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 78 + OFFSET_X, 1, 28.3, -110.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 28.3, -110.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 35.7, -95.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 35.7, -95.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 42.6, -91.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 42.6, -91.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 49, -78.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 49, -78.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 54.7, -66.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 54.7, -66.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 60, -55.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 60, -55.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 64.7, -46 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 64.7, -46 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 68.8, -37.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 68.8, -37.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 72.4, -30.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 72.4, -30.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 75.4, -24 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 75.4, -24 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 77.9, -18.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 77.9, -18.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 79.8, -15 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 79.8, -15 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 81.2, -2.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 81.2, -2.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 81, -2.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 81, -2.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 80.8, -2.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 80.8, -2.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 80.7, -3.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 80.7, -3.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 80.5, -3.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 80.5, -3.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 91.1, 0.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 91.1, 0.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 90.9, 0.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 90.9, 0.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 90.7, 0.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 90.7, 0.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 90.5, 0.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 90.5, 0.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 121.3, 22 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 121.3, 22 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 296.8, 0.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 296.8, 0.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 375.6, -28.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 375.6, -28.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 460.2, -44.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 460.2, -44.5 , 0 );

setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 78 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 18 );

--敵の動き2
setDisp( spep_2 + 148 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 262 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 148 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 214 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 148 + OFFSET_X, 1, -282.6, -306.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -282.6, -306.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -230.8, -273.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -230.8, -273.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -179.1, -240.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -179.1, -240.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -127.4, -207.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -127.4, -207.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -75.7, -174.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -75.7, -174.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -24.1, -141.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -24.1, -141.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 27.6, -108.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 27.6, -108.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 28.6, -106.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 28.6, -106.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 29.5, -104.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 29.5, -104.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 30.4, -102.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 30.4, -102.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 31.3, -100.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 31.3, -100.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 32.2, -98.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 32.2, -98.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 33.1, -96.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 33.1, -96.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 34.1, -94.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 34.1, -94.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 35, -92.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 35, -92.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 35.9, -90.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 35.9, -90.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 36.8, -88.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 36.8, -88.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 36.9, -88.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 36.9, -88.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 37, -88.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 37, -88.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 37.1, -88.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 37.1, -88.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 37.2, -88.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 37.2, -88.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 37.3, -88.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 37.3, -88.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 37.4, -88.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 37.4, -88.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 37.6, -88.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 37.6, -88.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 37.7, -88.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 37.7, -88.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 37.8, -88.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 37.8, -88.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 37.9, -88.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 37.9, -88.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 38, -88.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 38, -88.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 38.1, -88.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 38.1, -88.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 38.2, -88.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 38.2, -88.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 38.3, -88.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 38.3, -88.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 38.5, -88.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 38.5, -88.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 38.6, -89 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 38.6, -89 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 45.6, 34.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 45.6, 34.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 49.4, 38.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 49.4, 38.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 53.1, 41.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 53.1, 41.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 56.9, 45.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 56.9, 45.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 60.7, 49.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 60.7, 49.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 64.5, 53.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 64.5, 53.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 68.2, 57.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 68.2, 57.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 72, 61.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 72, 61.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 75.8, 65 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 75.8, 65 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 23.5, 91.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 23.5, 91.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 46.8, 81.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 46.8, 81.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 36.4, 70.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 36.4, 70.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 42.3, 92.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 42.3, 92.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 26.6, 93.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 26.6, 93.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 45.8, 105.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 45.8, 105.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 32.1, 118.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 32.1, 118.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 45.2, 119.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 45.2, 119.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 24.7, 113.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 24.7, 113.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 40.5, 134.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 40.5, 134.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 14.1, 139.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 14.1, 139.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 23.8, 151.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 23.8, 151.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 20, 147.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 20, 147.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 33, 170.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 33, 170.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 22.5, 166.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 22.5, 166.6 , 0 );

setScaleKey( spep_2 + 148 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.83, 2.83 );

setRotateKey( spep_2 + 148 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -54 );

--敵の動き3
setDisp( spep_2 + 382 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 604 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 382 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 480 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 382 + OFFSET_X, 1, 104.9, 34.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 104.9, 34.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 228.7, 1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 228.7, 1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 270.1, 83.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 270.1, 83.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 354.2, 227.1 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 354.2, 227.1 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 261.2, 98.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 261.2, 98.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 205.7, 0.5 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 205.7, 0.5 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 167.3, 27.9 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 167.3, 27.9 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 210.6, 23.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 210.6, 23.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 182, 30.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 182, 30.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 210.3, 28.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 210.3, 28.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 200.1, 23.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 200.1, 23.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 210, 32.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 210, 32.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 186.3, 21.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 186.3, 21.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 209.6, 37.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 209.6, 37.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 199.4, 44.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 199.4, 44.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 209.3, 46.3 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 209.3, 46.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 209.1, 44.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 209.1, 44.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 209, 47 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 209, 47 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 208.8, 49.4 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 208.8, 49.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 208.6, 51.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 208.6, 51.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 208.5, 54.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 208.5, 54.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 208.3, 56.5 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 208.3, 56.5 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 208.1, 58.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 208.1, 58.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 208, 61.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 208, 61.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 207.8, 63.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 207.8, 63.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 205.5, 69.1 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 205.5, 69.1 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 203.3, 74.6 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 203.3, 74.6 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 201, 80.1 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 201, 80.1 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 198.7, 85.7 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 198.7, 85.7 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 196.5, 91.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 196.5, 91.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 194.2, 96.7 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 194.2, 96.7 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 191.9, 102.2 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 191.9, 102.2 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 189.6, 107.7 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 189.6, 107.7 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 187.4, 113.3 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 187.4, 113.3 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 185.1, 118.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 185.1, 118.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 182.8, 124.3 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 182.8, 124.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 180.6, 129.8 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 180.6, 129.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 185.9, 134.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 185.9, 134.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 187.7, 139.5 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 187.7, 139.5 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 189.6, 144.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 189.6, 144.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 191.5, 148.7 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 191.5, 148.7 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 193.4, 153.3 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 193.4, 153.3 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 195.2, 157.9 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 195.2, 157.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 197.1, 162.5 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 197.1, 162.5 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 180.3, 161 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 180.3, 161 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 163.6, 159.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 163.6, 159.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 146.8, 158.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 146.8, 158.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 130, 156.6 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 130, 156.6 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 113.2, 155.2 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 113.2, 155.2 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 247.4, 81.8 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 247.4, 81.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 222.7, 63.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 222.7, 63.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 212.6, 62 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 212.6, 62 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 201.1, 59.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 201.1, 59.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 201.5, 59.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 201.5, 59.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 201.8, 59.5 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 201.8, 59.5 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 202.1, 59.7 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 202.1, 59.7 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 202.5, 59.9 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 202.5, 59.9 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 202.8, 60 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 202.8, 60 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 203.1, 60.2 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 203.1, 60.2 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 203.5, 60.3 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 203.5, 60.3 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 203.8, 60.5 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 203.8, 60.5 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 204.1, 60.6 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 204.1, 60.6 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 204.5, 60.8 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 204.5, 60.8 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 204.8, 60.9 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 204.8, 60.9 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 205.2, 61.1 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 205.2, 61.1 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 205.5, 61.2 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 205.5, 61.2 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 205.8, 61.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 205.8, 61.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 206.2, 61.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 206.2, 61.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 206.5, 61.7 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 206.5, 61.7 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 206.8, 61.9 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 206.8, 61.9 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 207.2, 62 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 207.2, 62 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 207.5, 62.2 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 207.5, 62.2 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 207.8, 62.3 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 207.8, 62.3 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 208.2, 62.5 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 208.2, 62.5 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 208.5, 62.6 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 208.5, 62.6 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 208.8, 62.8 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 208.8, 62.8 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 209.2, 62.9 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 209.2, 62.9 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 209.5, 63.1 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 209.5, 63.1 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 209.8, 63.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 209.8, 63.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 210.2, 63.4 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 210.2, 63.4 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 210.5, 63.6 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 210.5, 63.6 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 210.9, 63.7 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 210.9, 63.7 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 210.9, 63.8 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 210.9, 63.8 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 211, 63.8 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 211, 63.8 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 211.1, 63.8 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 211.1, 63.8 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 211.2, 63.9 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 211.2, 63.9 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 211.3, 63.9 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 211.3, 63.9 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 211.4, 64 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 211.4, 64 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 211.5, 64 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 211.5, 64 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 211.6, 64 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 211.6, 64 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 211.6, 64.1 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 211.6, 64.1 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 211.7, 64.1 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 211.7, 64.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 211.8, 64.2 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 211.8, 64.2 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 211.9, 64.2 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 211.9, 64.2 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 212, 64.3 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 212, 64.3 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 212.1, 64.3 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 212.1, 64.3 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 212.2, 64.3 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 212.2, 64.3 , 0 );

setScaleKey( spep_2 + 382 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 499 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 501 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 2.61, 2.61 );

setRotateKey( spep_2 + 382 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 604 + OFFSET_X, 1, -43.2 );

-- ** 音 ** --
SE009 = playSeVer2( spep_2 + 4, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 4, 1019, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える

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

--エルボー
SE020 = playSeVer2( spep_2 + 226, 1153, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 226, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 234, 1110, "", 0, 0, 0, -1);

--構える
SE023 = playSeVer2( spep_2 + 272, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE023, 71 );
SE024 = playSeVer2( spep_2 + 284, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE024, 60 );

--画面遷移
SE025 = playSeVer2( spep_2 + 296, 1072, "", 0, 0, 0, -1);

--振りかぶる
SE026 = playSeVer2( spep_2 + 322, 1116, "",spep_2 + 376, 0, 32, -1);
SE027 = playSeVer2( spep_2 + 324, 1117, "",spep_2 + 394, 0, 22, -1);

--腹パンチ
SE028 = playSeVer2( spep_2 + 376, 1187, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 376, 1153, "", 0, 0, 0, -1);

--気弾溜め
SE030 = playSeVer2( spep_2 + 416, 1328, "", 0, 2, 0, -1);
setStartTimeMs( SE030,  100 );
SE031 = playSeVer2( spep_2 + 416, 1296, "",spep_2 + 510, 0, 30, -1);
SE032 = playSeVer2( spep_2 + 416, 1396, "",spep_2 + 510, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 416, SE032, 47 );	
SE033 = playSeVer2( spep_2 + 416, 1154, "",spep_2 + 510, 0, 32, -1);

--気弾発射
SE034 = playSeVer2( spep_2 + 478, 1109, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 478, 1145, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 478, 1193, "",spep_2 + 546, 0, 26, -1);
SE037 = playSeVer2( spep_2 + 478, 1159, "",spep_2 + 720, 0, 88, -1);
SE038 = playSeVer2( spep_2 + 478, 1215, "",spep_2 + 678, 0, 86, -1);

--環境音
SE039 = playSeVer2( spep_2 + 550, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 550, SE039, 25 );

--髪なびく
SE040 = playSeVer2( spep_2 + 600, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 600, SE040, 141 );
SE041 = playSeVer2( spep_2 + 650, 1332, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 600); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  724f -4

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
SE003 = playSeVer2( spep_0 + 32, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 68 );
SE004 = playSeVer2( spep_0 + 60, 1233, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 68, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE005, 84 );

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
MAX_FRAME_2 = 724;

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
setDisp( spep_2 + 78 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 130 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 78 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 112 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 122 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 78 + OFFSET_X, 1, 28.3, -110.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 28.3, -110.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 35.7, -95.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 35.7, -95.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 42.6, -91.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 42.6, -91.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 49, -78.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 49, -78.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 54.7, -66.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 54.7, -66.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 60, -55.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 60, -55.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 64.7, -46 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 64.7, -46 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 68.8, -37.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 68.8, -37.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 72.4, -30.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 72.4, -30.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 75.4, -24 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 75.4, -24 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 77.9, -18.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 77.9, -18.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 79.8, -15 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 79.8, -15 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 81.2, -2.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 81.2, -2.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 81, -2.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 81, -2.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 80.8, -2.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 80.8, -2.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 80.7, -3.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 80.7, -3.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 80.5, -3.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 80.5, -3.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 91.1, 0.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 91.1, 0.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 90.9, 0.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 90.9, 0.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 90.7, 0.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 90.7, 0.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 90.5, 0.6 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 90.5, 0.6 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 90.4, 0.5 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 121.3, 22 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 121.3, 22 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 296.8, 0.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 296.8, 0.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 375.6, -28.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 375.6, -28.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 460.2, -44.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 460.2, -44.5 , 0 );

setScaleKey( spep_2 + 78 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 78 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 18 );

--敵の動き2
setDisp( spep_2 + 148 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 262 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 148 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 214 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 232 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 148 + OFFSET_X, 1, -282.6, -306.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -282.6, -306.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -230.8, -273.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -230.8, -273.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -179.1, -240.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -179.1, -240.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -127.4, -207.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -127.4, -207.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -75.7, -174.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -75.7, -174.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -24.1, -141.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -24.1, -141.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 27.6, -108.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 27.6, -108.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 28.6, -106.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 28.6, -106.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 29.5, -104.5 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 29.5, -104.5 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 30.4, -102.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 30.4, -102.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 31.3, -100.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 31.3, -100.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 32.2, -98.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 32.2, -98.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 33.1, -96.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 33.1, -96.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 34.1, -94.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 34.1, -94.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 35, -92.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 35, -92.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 35.9, -90.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 35.9, -90.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 36.8, -88.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 36.8, -88.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 36.9, -88.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 36.9, -88.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 37, -88.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 37, -88.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 37.1, -88.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 37.1, -88.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 37.2, -88.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 37.2, -88.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 37.3, -88.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 37.3, -88.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 37.4, -88.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 37.4, -88.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 37.6, -88.7 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 37.6, -88.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 37.7, -88.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 37.7, -88.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 37.8, -88.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 37.8, -88.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 37.9, -88.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 37.9, -88.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 38, -88.8 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 38, -88.8 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 38.1, -88.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 38.1, -88.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 38.2, -88.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 38.2, -88.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 38.3, -88.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 38.3, -88.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 38.5, -88.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 38.5, -88.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 38.6, -89 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 38.6, -89 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 45.6, 34.2 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 45.6, 34.2 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 49.4, 38.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 49.4, 38.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 53.1, 41.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 53.1, 41.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 56.9, 45.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 56.9, 45.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 60.7, 49.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 60.7, 49.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 64.5, 53.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 64.5, 53.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 68.2, 57.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 68.2, 57.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 72, 61.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 72, 61.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 75.8, 65 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 75.8, 65 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 23.5, 91.7 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 23.5, 91.7 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 46.8, 81.5 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 46.8, 81.5 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 36.4, 70.2 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 36.4, 70.2 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 42.3, 92.6 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 42.3, 92.6 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 26.6, 93.6 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 26.6, 93.6 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 45.8, 105.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 45.8, 105.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 32.1, 118.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 32.1, 118.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 45.2, 119.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 45.2, 119.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 24.7, 113.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 24.7, 113.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 40.5, 134.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 40.5, 134.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 14.1, 139.7 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 14.1, 139.7 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 23.8, 151.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 23.8, 151.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 20, 147.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 20, 147.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 33, 170.2 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 33, 170.2 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 22.5, 166.6 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 22.5, 166.6 , 0 );

setScaleKey( spep_2 + 148 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 4.51, 4.51 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 2.83, 2.83 );

setRotateKey( spep_2 + 148 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 25.9 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -63.8 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -62.8 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -62.3 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -61.7 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -61.1 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -59.8 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -59.1 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -58.3 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 253 + OFFSET_X, 1, -57.5 );
setRotateKey( spep_2 + 254 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -56.7 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_2 + 257 + OFFSET_X, 1, -55.8 );
setRotateKey( spep_2 + 258 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 259 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 260 + OFFSET_X, 1, -54 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -54 );

--敵の動き3
setDisp( spep_2 + 382 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 604 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 382 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 480 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 382 + OFFSET_X, 1, 104.9, 34.6 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 104.9, 34.6 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 228.7, 1 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 228.7, 1 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 270.1, 83.9 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 270.1, 83.9 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 354.2, 227.1 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 354.2, 227.1 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 261.2, 98.6 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 261.2, 98.6 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 205.7, 0.5 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 205.7, 0.5 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 167.3, 27.9 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 167.3, 27.9 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 210.6, 23.3 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 210.6, 23.3 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 182, 30.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 182, 30.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 210.3, 28.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 210.3, 28.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 200.1, 23.6 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 200.1, 23.6 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 210, 32.8 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 210, 32.8 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 186.3, 21.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 186.3, 21.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 209.6, 37.5 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 209.6, 37.5 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 199.4, 44.8 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 199.4, 44.8 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 209.3, 46.3 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 209.3, 46.3 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 209.1, 44.6 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 209.1, 44.6 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 209, 47 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 209, 47 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 208.8, 49.4 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 208.8, 49.4 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 208.6, 51.8 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 208.6, 51.8 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 208.5, 54.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 208.5, 54.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 208.3, 56.5 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 208.3, 56.5 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 208.1, 58.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 208.1, 58.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 208, 61.2 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 208, 61.2 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 207.8, 63.6 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 207.8, 63.6 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 205.5, 69.1 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 205.5, 69.1 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 203.3, 74.6 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 203.3, 74.6 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 201, 80.1 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 201, 80.1 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 198.7, 85.7 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 198.7, 85.7 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 196.5, 91.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 196.5, 91.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 194.2, 96.7 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 194.2, 96.7 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 191.9, 102.2 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 191.9, 102.2 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 189.6, 107.7 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 189.6, 107.7 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 187.4, 113.3 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 187.4, 113.3 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 185.1, 118.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 185.1, 118.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 182.8, 124.3 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 182.8, 124.3 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 180.6, 129.8 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 180.6, 129.8 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 185.9, 134.9 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 185.9, 134.9 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 187.7, 139.5 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 187.7, 139.5 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 189.6, 144.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 189.6, 144.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 191.5, 148.7 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 191.5, 148.7 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 193.4, 153.3 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 193.4, 153.3 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 195.2, 157.9 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 195.2, 157.9 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 197.1, 162.5 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 197.1, 162.5 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 180.3, 161 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 180.3, 161 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 163.6, 159.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 163.6, 159.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 146.8, 158.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 146.8, 158.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 130, 156.6 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 130, 156.6 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 113.2, 155.2 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 113.2, 155.2 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 247.4, 81.8 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 247.4, 81.8 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 222.7, 63.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 222.7, 63.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 212.6, 62 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 212.6, 62 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 201.1, 59.2 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 201.1, 59.2 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 201.5, 59.4 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 201.5, 59.4 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 201.8, 59.5 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 201.8, 59.5 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 202.1, 59.7 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 202.1, 59.7 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 202.5, 59.9 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 202.5, 59.9 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 202.8, 60 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 202.8, 60 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 203.1, 60.2 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 203.1, 60.2 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 203.5, 60.3 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 203.5, 60.3 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 203.8, 60.5 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 203.8, 60.5 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 204.1, 60.6 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 204.1, 60.6 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 204.5, 60.8 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 204.5, 60.8 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 204.8, 60.9 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 204.8, 60.9 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 205.2, 61.1 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 205.2, 61.1 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 205.5, 61.2 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 205.5, 61.2 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 205.8, 61.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 205.8, 61.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 206.2, 61.6 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 206.2, 61.6 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 206.5, 61.7 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 206.5, 61.7 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 206.8, 61.9 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 206.8, 61.9 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 207.2, 62 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 207.2, 62 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 207.5, 62.2 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 207.5, 62.2 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 207.8, 62.3 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 207.8, 62.3 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 208.2, 62.5 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 208.2, 62.5 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 208.5, 62.6 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 208.5, 62.6 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 208.8, 62.8 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 208.8, 62.8 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 209.2, 62.9 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 209.2, 62.9 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 209.5, 63.1 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 209.5, 63.1 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 209.8, 63.2 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 209.8, 63.2 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 210.2, 63.4 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 210.2, 63.4 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 210.5, 63.6 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 210.5, 63.6 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 210.9, 63.7 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 210.9, 63.7 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 210.9, 63.8 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 210.9, 63.8 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 211, 63.8 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 211, 63.8 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 211.1, 63.8 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 211.1, 63.8 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 211.2, 63.9 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 211.2, 63.9 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 211.3, 63.9 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 211.3, 63.9 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 211.4, 64 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 211.4, 64 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 211.5, 64 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 211.5, 64 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 211.6, 64 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 211.6, 64 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 211.6, 64.1 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 211.6, 64.1 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 211.7, 64.1 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 211.7, 64.1 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 211.8, 64.2 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 211.8, 64.2 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 211.9, 64.2 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 211.9, 64.2 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 212, 64.3 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 212, 64.3 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 212.1, 64.3 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 212.1, 64.3 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 212.2, 64.3 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 212.2, 64.3 , 0 );

setScaleKey( spep_2 + 382 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 455 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 457 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 459 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 461 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 463 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 467 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 468 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 469 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_2 + 470 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 473 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 474 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 477 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 478 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 499 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 500 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 501 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 521 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 522 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 525 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 526 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 527 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 528 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 531 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 532 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 533 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 535 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 536 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 537 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 538 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 541 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 545 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 549 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 550 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 557 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 558 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 563 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 564 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 571 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 577 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 578 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 585 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 586 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 591 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 592 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 599 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_2 + 600 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 604 + OFFSET_X, 1, 2.61, 2.61 );

setRotateKey( spep_2 + 382 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, -31.3 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, -31.5 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, -31.6 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 467 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_2 + 468 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 604 + OFFSET_X, 1, -43.2 );

-- ** 音 ** --
SE009 = playSeVer2( spep_2 + 4, 1117, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 4, 1019, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 38; --エンドフェイズのフレーム数を置き換える

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

--エルボー
SE020 = playSeVer2( spep_2 + 226, 1153, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 226, 1187, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 234, 1110, "", 0, 0, 0, -1);

--構える
SE023 = playSeVer2( spep_2 + 272, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 272, SE023, 71 );
SE024 = playSeVer2( spep_2 + 284, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE024, 60 );

--画面遷移
SE025 = playSeVer2( spep_2 + 296, 1072, "", 0, 0, 0, -1);

--振りかぶる
SE026 = playSeVer2( spep_2 + 322, 1116, "",spep_2 + 376, 0, 32, -1);
SE027 = playSeVer2( spep_2 + 324, 1117, "",spep_2 + 394, 0, 22, -1);

--腹パンチ
SE028 = playSeVer2( spep_2 + 376, 1187, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 376, 1153, "", 0, 0, 0, -1);

--気弾溜め
SE030 = playSeVer2( spep_2 + 416, 1328, "", 0, 2, 0, -1);
setStartTimeMs( SE030,  100 );
SE031 = playSeVer2( spep_2 + 416, 1296, "",spep_2 + 510, 0, 30, -1);
SE032 = playSeVer2( spep_2 + 416, 1396, "",spep_2 + 510, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 416, SE032, 47 );	
SE033 = playSeVer2( spep_2 + 416, 1154, "",spep_2 + 510, 0, 32, -1);

--気弾発射
SE034 = playSeVer2( spep_2 + 478, 1109, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 478, 1145, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 478, 1193, "",spep_2 + 546, 0, 26, -1);
SE037 = playSeVer2( spep_2 + 478, 1159, "",spep_2 + 720, 0, 88, -1);
SE038 = playSeVer2( spep_2 + 478, 1215, "",spep_2 + 678, 0, 86, -1);

--環境音
SE039 = playSeVer2( spep_2 + 550, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 550, SE039, 25 );

--髪なびく
SE040 = playSeVer2( spep_2 + 600, 1331, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 600, SE040, 141 );
SE041 = playSeVer2( spep_2 + 650, 1332, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 600); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  724f -4



end
