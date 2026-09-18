--1031160:SSR_タマガミ・ナンバー・ツー_必殺技：クロスウェイブスラッシュ
--sp_effect_b2_00065
--sp2953

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01r  = 164248; --カード前 ef_001r
SP_02r  = 164249; --カード後、敵より前 ef_002r
SP_02br = 164250; --カード後、敵より後 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- カード前(ef_001r)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--武器まわす
SE001 = playSeVer2( spep_0 + 0, 1388, "",spep_0 + 104, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 160 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 4, 1003, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 10, 1003, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );
stopSeIfDoubleSpeed( spep_0 + 10, SE003 );
SE005 = playSeVer2( spep_0 + 16, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 89 );
setPitch( spep_0 + 16, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE006 = playSeVer2( spep_0 + 24, 1003, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 24, SE006 );
SE007 = playSeVer2( spep_0 + 30, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE007, 79 );
setPitch( spep_0 + 30, SE007, -100 );
setTimeStretch( SE007, 0.93, 30, 4 );
SE008 = playSeVer2( spep_0 + 36, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 42, 1003, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 42, SE009, 63 );
stopSeIfDoubleSpeed( spep_0 + 42, SE009 );
SE010 = playSeVer2( spep_0 + 48, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE010, 89 );
setPitch( spep_0 + 50, SE010, 100 );
setTimeStretch( SE010, 1.07, 30, 4 );
SE011 = playSeVer2( spep_0 + 54, 1003, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 54, SE011 );
SE012 = playSeVer2( spep_0 + 60, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE012, 122 );
SE013 = playSeVer2( spep_0 + 66, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE013, 76 );
SE014 = playSeVer2( spep_0 + 72, 1003, "", 0, 0, 0, -1);
setPitch( spep_0 + 72, SE014, -300 );
setTimeStretch( SE014, 0.8, 30, 4 );
SE015 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 88f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 460;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カード後、敵より前(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カード後、敵より後ろ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 14 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2 + 0, 1, 234.4, 257.7 , 0 );
setMoveKey( spep_2 + 1 + OFFSET_X, 1, 234.4, 257.7 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 313.8, 332.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 313.8, 332.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 393.2, 406.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 393.2, 406.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 472.6, 480.8 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 472.6, 480.8 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 552, 555.2 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 552, 555.2 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 631.3, 629.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 631.3, 629.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 710.7, 704 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 710.7, 704 , 0 );

setScaleKey( spep_2 + 0, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 1 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 6.69, 6.69 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.69, 6.69 );

setRotateKey( spep_2 + 0, 1, -4 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, -4 );

setGaussBlurKey( spep_2 + 0, 1, 0.001 );
setGaussBlurKey( spep_2 + 14 + OFFSET_X, 1, 0.001 );


--敵の動き2
setDisp( spep_2 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 56 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 56 + OFFSET_X, 1, 112.3, 19.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 112.3, 19.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 116.5, 21.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 116.5, 21.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 120.8, 23.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 120.8, 23.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 125.1, 25.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 125.1, 25.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 129.3, 28 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 129.3, 28 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 133.6, 30.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 133.6, 30.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 137.9, 32.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 137.9, 32.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 142.1, 34.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 142.1, 34.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 146.4, 36.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 146.4, 36.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 150.7, 38.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 150.7, 38.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 154.9, 40.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 154.9, 40.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 159.2, 42.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 159.2, 42.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 163.5, 45 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 163.5, 45 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 167.7, 47.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 167.7, 47.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 172, 49.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 172, 49.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 176.3, 51.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 176.3, 51.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 171.9, 101.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 171.9, 101.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 129, 96.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 129, 96.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 165, 73.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 165, 73.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 157.9, 83 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 157.9, 83 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 146.1, 89.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 146.1, 89.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 165.9, 72.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 165.9, 72.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 158.7, 82.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 158.7, 82.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 183.5, 90.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 183.5, 90.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 183.8, 90 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 183.8, 90 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 184.1, 89.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 184.1, 89.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 184.4, 89.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 184.4, 89.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 184.7, 89.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 184.7, 89.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 185, 88.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 185, 88.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 185.3, 88.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 185.3, 88.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 185.6, 88.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 185.6, 88.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 185.9, 88 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 185.9, 88 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 186.2, 87.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 186.2, 87.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 186.5, 87.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 186.5, 87.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 186.7, 87.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 186.7, 87.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 187, 86.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 187, 86.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 187.3, 86.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 187.3, 86.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 187.6, 86.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 187.6, 86.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 218.1, 101.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 218.1, 101.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 197.4, 79.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 197.4, 79.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 185, 114.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 185, 114.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 309.7, 88.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 309.7, 88.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 450.3, 93.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 450.3, 93.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 566.5, 88.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 566.5, 88.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 682.7, 84.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 682.7, 84.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 798.8, 80.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 798.8, 80.6 , 0 );

setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.02, 2.02 );

setRotateKey( spep_2 + 56 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -17 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -16.7 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -16.6 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -24 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -19 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -4 );

setGaussBlurKey( spep_2 + 56 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 150 + OFFSET_X, 1, 0 );


--敵の動き3
setDisp( spep_2 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 304 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 266 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 266 + OFFSET_X, 1, -43.7, 141.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -43.7, 141.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -49.1, 129.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -49.1, 129.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -37.6, 131.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -37.6, 131.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -40.9, 116.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -40.9, 116.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -27, 115.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -27, 115.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -27.7, 96.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -27.7, 96.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -10.6, 90.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -10.6, 90.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -7.6, 65.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -7.6, 65.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 13.7, 53 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 13.7, 53 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 21.4, 20.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 21.4, 20.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 47.6, 1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 47.6, 1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 60.2, -38.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 60.2, -38.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 90.4, -64.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 90.4, -64.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 105.6, -108.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 105.6, -108.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 136.8, -135.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 136.8, -135.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 151.3, -178.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 151.3, -178.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 187.2, -212.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 187.2, -212.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 148.8, -231.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 148.8, -231.9 , 0 );

setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_2 + 266 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 4 );

setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0, 0, 0, 0.06 );
setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0, 0, 0, 0.08 );
setBlendColor( spep_2 + 284 + OFFSET_X, 1, 3, 0.2, 0.37, 0.61, 0.15 );
setBlendColor( spep_2 + 286 + OFFSET_X, 1, 3, 0.2, 0.37, 0.61, 0.25 );
setBlendColor( spep_2 + 288 + OFFSET_X, 1, 3, 0.13, 0.29, 0.53, 0.28 );
setBlendColor( spep_2 + 290 + OFFSET_X, 1, 3, 0.1, 0.25, 0.5, 0.33 );
setBlendColor( spep_2 + 292 + OFFSET_X, 1, 3, 0, 0.24, 0.38, 0.42 );
setBlendColor( spep_2 + 294 + OFFSET_X, 1, 3, 0, 0.24, 0.38, 0.47 );
setBlendColor( spep_2 + 296 + OFFSET_X, 1, 3, 0, 0.27, 0.27, 0.52 );
setBlendColor( spep_2 + 298 + OFFSET_X, 1, 3, 0, 0.27, 0.27, 0.54 );
setBlendColor( spep_2 + 300 + OFFSET_X, 1, 3, 0, 0.2, 0.2, 0.35 );
setBlendColor( spep_2 + 304 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

setGaussBlurKey( spep_2 + 266 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 304 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--構える
SE017 = playSeVer2( spep_2 + 6, 1042, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 6, 1317, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 12, 1012, "", 0, 0, 0, -1);

--向かっていく
SE020 = playSeVer2( spep_2 + 38, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 38, 1117, "",spep_2 + 98, 0, 30, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 8, SE020, 0);
stopSe( SP_dodge - 8, SE021, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
SE022 = playSeVer2( spep_2 + 58, 1004, "", 0, 0, 0, -1);

--斬りつける１
SE023 = playSeVer2( spep_2 + 74, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 80, 1000, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 80, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE025, 68 );
SE026 = playSeVer2( spep_2 + 80, 1032, "", 0, 0, 0, -1);

--斬りつける２
SE027 = playSeVer2( spep_2 + 118, 1003, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 126, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE028, 50 );
SE029 = playSeVer2( spep_2 + 126, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE029, 61 );
setPitch( spep_2 + 126, SE029, -200 );
setTimeStretch( SE029, 0.87, 30, 4 );
SE030 = playSeVer2( spep_2 + 126, 1032, "", 0, 0, 0, -1);

--振りかぶる
SE031 = playSeVer2( spep_2 + 160, 1313, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE031, 74 );
setStartTimeMs( SE031,  400 );
SE032 = playSeVer2( spep_2 + 162, 1116, "",spep_2 + 198, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 162, SE032, 85 );

--斬撃１
SE033 = playSeVer2( spep_2 + 194, 1142, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 198, 1032, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 198, 1026, "", 0, 0, 0, -1);

--斬撃２
SE036 = playSeVer2( spep_2 + 232, 1142, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 236, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 236, 1026, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 240, 1027, "", 0, 0, 0, -1);

--斬撃飛んでいく
SE040 = playSeVer2( spep_2 + 260, 1011, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 260, 1178, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 260, 1177, "",spep_2 + 350, 0, 12, -1);
SE043 = playSeVer2( spep_2 + 274, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE043, 153 );

--敵ヒット
SE044 = playSeVer2( spep_2 + 298, 1011, "", 0, 0, 0, -1);

--爆発
SE045 = playSeVer2( spep_2 + 308, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE045, 184 );
SE046 = playSeVer2( spep_2 + 336, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 336, 1166, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 344); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 460f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- カード前
-------------------------------------------------
MAX_FRAME_0 = 88;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- カード前(ef_001r)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
--[[
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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
]]

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--武器まわす
SE001 = playSeVer2( spep_0 + 0, 1388, "",spep_0 + 104, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 160 );
setPitch( spep_0 + 0, SE001, -600 );
setTimeStretch( SE001, 0.6, 30, 4 );
SE002 = playSeVer2( spep_0 + 4, 1003, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 10, 1003, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );
stopSeIfDoubleSpeed( spep_0 + 10, SE003 );
SE005 = playSeVer2( spep_0 + 16, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 89 );
setPitch( spep_0 + 16, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );
SE006 = playSeVer2( spep_0 + 24, 1003, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 24, SE006 );
SE007 = playSeVer2( spep_0 + 30, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE007, 79 );
setPitch( spep_0 + 30, SE007, -100 );
setTimeStretch( SE007, 0.93, 30, 4 );
SE008 = playSeVer2( spep_0 + 36, 1003, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 42, 1003, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 42, SE009, 63 );
stopSeIfDoubleSpeed( spep_0 + 42, SE009 );
SE010 = playSeVer2( spep_0 + 48, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE010, 89 );
setPitch( spep_0 + 50, SE010, 100 );
setTimeStretch( SE010, 1.07, 30, 4 );
SE011 = playSeVer2( spep_0 + 54, 1003, "", 0, 0, 0, 0.5);
stopSeIfDoubleSpeed( spep_0 + 54, SE011 );
SE012 = playSeVer2( spep_0 + 60, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE012, 122 );
SE013 = playSeVer2( spep_0 + 66, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE013, 76 );
SE014 = playSeVer2( spep_0 + 72, 1003, "", 0, 0, 0, -1);
setPitch( spep_0 + 72, SE014, -300 );
setTimeStretch( SE014, 0.8, 30, 4 );
SE015 = playSeVer2( spep_0 + 78, 1003, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 88f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- カード後
-------------------------------------------------
MAX_FRAME_2 = 460;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- カード後、敵より前(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- カード後、敵より後ろ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 14 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 18 );

setMoveKey( spep_2 + 0, 1, -234.4, 257.7 , 0 );
setMoveKey( spep_2 + 1 + OFFSET_X, 1, -234.4, 257.7 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -313.8, 332.1 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -313.8, 332.1 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -393.2, 406.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -393.2, 406.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -472.6, 480.8 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -472.6, 480.8 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -552, 555.2 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -552, 555.2 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -631.3, 629.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -631.3, 629.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -710.7, 704 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -710.7, 704 , 0 );

setScaleKey( spep_2 + 0, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 1 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 6.02, 6.02 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 6.69, 6.69 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.69, 6.69 );

setRotateKey( spep_2 + 0, 1, 4 );
setRotateKey( spep_2 + 14 + OFFSET_X, 1, 4 );

setGaussBlurKey( spep_2 + 0, 1, 0.001 );
setGaussBlurKey( spep_2 + 14 + OFFSET_X, 1, 0.001 );


--敵の動き2
setDisp( spep_2 + 56 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 150 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 56 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 56 + OFFSET_X, 1, -112.3, 19.4 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -112.3, 19.4 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -116.5, 21.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -116.5, 21.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -120.8, 23.7 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -120.8, 23.7 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -125.1, 25.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -125.1, 25.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -129.3, 28 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -129.3, 28 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -133.6, 30.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -133.6, 30.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -137.9, 32.2 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -137.9, 32.2 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -142.1, 34.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -142.1, 34.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -146.4, 36.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -146.4, 36.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -150.7, 38.6 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -150.7, 38.6 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -154.9, 40.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -154.9, 40.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -159.2, 42.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -159.2, 42.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -163.5, 45 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -163.5, 45 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -167.7, 47.2 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -167.7, 47.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -172, 49.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -172, 49.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -176.3, 51.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -176.3, 51.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -171.9, 101.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -171.9, 101.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -129, 96.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -129, 96.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -165, 73.8 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -165, 73.8 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -157.9, 83 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -157.9, 83 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -146.1, 89.1 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -146.1, 89.1 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -165.9, 72.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -165.9, 72.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -158.7, 82.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -158.7, 82.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -183.5, 90.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -183.5, 90.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -183.8, 90 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -183.8, 90 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -184.1, 89.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -184.1, 89.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -184.4, 89.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -184.4, 89.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -184.7, 89.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -184.7, 89.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -185, 88.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -185, 88.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -185.3, 88.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -185.3, 88.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -185.6, 88.3 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -185.6, 88.3 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -185.9, 88 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -185.9, 88 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -186.2, 87.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -186.2, 87.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -186.5, 87.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -186.5, 87.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -186.7, 87.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -186.7, 87.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -187, 86.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -187, 86.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -187.3, 86.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -187.3, 86.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -187.6, 86.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -187.6, 86.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -218.1, 101.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -218.1, 101.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -197.4, 79.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -197.4, 79.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -185, 114.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -185, 114.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -309.7, 88.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -309.7, 88.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -450.3, 93.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -450.3, 93.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -566.5, 88.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -566.5, 88.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -682.7, 84.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -682.7, 84.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -798.8, 80.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -798.8, 80.6 , 0 );

setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.02, 2.02 );

setRotateKey( spep_2 + 56 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 16.9 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 24 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 19 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 4 );

setGaussBlurKey( spep_2 + 56 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 150 + OFFSET_X, 1, 0 );


--敵の動き3
setDisp( spep_2 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 304 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 266 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 266 + OFFSET_X, 1, 43.7, 141.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 43.7, 141.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 49.1, 129.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 49.1, 129.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 37.6, 131.7 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 37.6, 131.7 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 40.9, 116.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 40.9, 116.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 27, 115.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 27, 115.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 27.7, 96.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 27.7, 96.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 10.6, 90.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 10.6, 90.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 7.6, 65.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 7.6, 65.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -13.7, 53 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -13.7, 53 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -21.4, 20.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -21.4, 20.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -47.6, 1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -47.6, 1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -60.2, -38.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -60.2, -38.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -90.4, -64.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -90.4, -64.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -105.6, -108.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -105.6, -108.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -136.8, -135.8 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -136.8, -135.8 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -151.3, -178.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -151.3, -178.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -187.2, -212.7 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -187.2, -212.7 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -148.8, -231.9 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -148.8, -231.9 , 0 );

setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_2 + 266 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 283 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 284 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -4 );

setBlendColor( spep_2 + 280 + OFFSET_X, 1, 3, 0, 0, 0, 0.06 );
setBlendColor( spep_2 + 282 + OFFSET_X, 1, 3, 0, 0, 0, 0.08 );
setBlendColor( spep_2 + 284 + OFFSET_X, 1, 3, 0.2, 0.37, 0.61, 0.15 );
setBlendColor( spep_2 + 286 + OFFSET_X, 1, 3, 0.2, 0.37, 0.61, 0.25 );
setBlendColor( spep_2 + 288 + OFFSET_X, 1, 3, 0.13, 0.29, 0.53, 0.28 );
setBlendColor( spep_2 + 290 + OFFSET_X, 1, 3, 0.1, 0.25, 0.5, 0.33 );
setBlendColor( spep_2 + 292 + OFFSET_X, 1, 3, 0, 0.24, 0.38, 0.42 );
setBlendColor( spep_2 + 294 + OFFSET_X, 1, 3, 0, 0.24, 0.38, 0.47 );
setBlendColor( spep_2 + 296 + OFFSET_X, 1, 3, 0, 0.27, 0.27, 0.52 );
setBlendColor( spep_2 + 298 + OFFSET_X, 1, 3, 0, 0.27, 0.27, 0.54 );
setBlendColor( spep_2 + 300 + OFFSET_X, 1, 3, 0, 0.2, 0.2, 0.35 );
setBlendColor( spep_2 + 304 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

setGaussBlurKey( spep_2 + 266 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_2 + 304 + OFFSET_X, 1, 0 );


-- ** 音 ** --
--構える
SE017 = playSeVer2( spep_2 + 6, 1042, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 6, 1317, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 12, 1012, "", 0, 0, 0, -1);

--向かっていく
SE020 = playSeVer2( spep_2 + 38, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 38, 1117, "",spep_2 + 98, 0, 30, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 46; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 8, SE020, 0);
stopSe( SP_dodge - 8, SE021, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
SE022 = playSeVer2( spep_2 + 58, 1004, "", 0, 0, 0, -1);

--斬りつける１
SE023 = playSeVer2( spep_2 + 74, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 80, 1000, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 80, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE025, 68 );
SE026 = playSeVer2( spep_2 + 80, 1032, "", 0, 0, 0, -1);

--斬りつける２
SE027 = playSeVer2( spep_2 + 118, 1003, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 126, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE028, 50 );
SE029 = playSeVer2( spep_2 + 126, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE029, 61 );
setPitch( spep_2 + 126, SE029, -200 );
setTimeStretch( SE029, 0.87, 30, 4 );
SE030 = playSeVer2( spep_2 + 126, 1032, "", 0, 0, 0, -1);

--振りかぶる
SE031 = playSeVer2( spep_2 + 160, 1313, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE031, 74 );
setStartTimeMs( SE031,  400 );
SE032 = playSeVer2( spep_2 + 162, 1116, "",spep_2 + 198, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 162, SE032, 85 );

--斬撃１
SE033 = playSeVer2( spep_2 + 194, 1142, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 198, 1032, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 198, 1026, "", 0, 0, 0, -1);

--斬撃２
SE036 = playSeVer2( spep_2 + 232, 1142, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 236, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 236, 1026, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 240, 1027, "", 0, 0, 0, -1);

--斬撃飛んでいく
SE040 = playSeVer2( spep_2 + 260, 1011, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 260, 1178, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 260, 1177, "",spep_2 + 350, 0, 12, -1);
SE043 = playSeVer2( spep_2 + 274, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE043, 153 );

--敵ヒット
SE044 = playSeVer2( spep_2 + 298, 1011, "", 0, 0, 0, -1);

--爆発
SE045 = playSeVer2( spep_2 + 308, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 308, SE045, 184 );
SE046 = playSeVer2( spep_2 + 336, 1159, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 336, 1166, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 344); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 460f -2f

end