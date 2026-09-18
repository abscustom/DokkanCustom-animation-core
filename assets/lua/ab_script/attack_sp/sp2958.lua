--1032470:UR_超サイヤ人孫悟飯(GT)(寄生)_必殺技：かめはめ波
--sp_effect_a1_00513
--sp2958

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164156;  --ef_001 通常姿勢から気を溜めるポーズへ
SP_02  = 164158;  --ef_002 かめはめ波を放つ～フィニッシュ
SP_02b = 164159;  --ef_002b かめはめ波を放つ～フィニッシュ

--エフェクト(敵)
SP_01r  = 164157;  --ef_001r 通常姿勢から気を溜めるポーズへ
SP_02r  = 164160;  --ef_002r かめはめ波を放つ～フィニッシュ
SP_02br = 164161;  --ef_002br かめはめ波を放つ～フィニッシュ


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
-- 通常姿勢から気を溜めるポーズへ
-------------------------------------------------
MAX_FRAME_0 = 168;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 通常姿勢から気を溜めるポーズへ(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 80);  --背景 少し暗め

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 80;

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
--気ダメ
SE002 = playSeVer2( spep_0 + 34, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 34, 1503, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 63 );
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 63 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 63 );
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE009, 63 );
SE010 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE010, 63 );

--かめはめ波溜め
SE006 = playSeVer2( spep_0 + 76, 1209, "",spep_0 + 188, 0, 20, -1);
SE001 = playSeVer2( spep_0 + 94, 1210, "",spep_0 + 188, 20, 20, -1);
setStartTimeMs( SE001,  1200 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --168f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --
--かめはめ波発射
SE012 = playSeVer2( spep_1 + 90, 1146, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 90, 1022, "", 0, 0, 0, -1);

-------------------------------------------------
-- かめはめ波を放つ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 340;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- かめはめ波を放つ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- かめはめ波を放つ～フィニッシュ(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 80);  --背景 少し暗め

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 102 );

setMoveKey( spep_2 + 62 + OFFSET_X, 1, 541, -254.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 541, -254.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 498.4, -231 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 498.4, -231 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 455.8, -207.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 455.8, -207.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 413.2, -183.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 413.2, -183.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 370.6, -159.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 370.6, -159.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 328, -135.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 328, -135.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 285.4, -111.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 285.4, -111.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 242.8, -87.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 242.8, -87.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 200.2, -63.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 200.2, -63.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 157.5, -40 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 157.5, -40 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 154.9, -38.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 154.9, -38.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 152.2, -37.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 152.2, -37.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 149.5, -36.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 149.5, -36.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 146.8, -35.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 146.8, -35.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 144.1, -33.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 144.1, -33.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 141.5, -32.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 141.5, -32.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 138.8, -31.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 138.8, -31.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 136.1, -30.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 136.1, -30.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 133.4, -29 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 133.4, -29 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 714.6, -712.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 714.6, -712.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 634, -647.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 634, -647.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 553.4, -582.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 553.4, -582.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 472.9, -517.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 472.9, -517.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 392.3, -452 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 392.3, -452 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 311.7, -386.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 311.7, -386.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 231.1, -321.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 231.1, -321.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 150.6, -256.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 150.6, -256.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 140.5, -266.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 140.5, -266.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 158.6, -254.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 158.6, -254.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 144.5, -260.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 144.5, -260.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 152.6, -252.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 152.6, -252.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 136.5, -266.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 136.5, -266.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 148.6, -252.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 148.6, -252.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 132.5, -262.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 132.5, -262.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 150.5, -246.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 150.5, -246.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 124.4, -254.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 124.4, -254.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 142.5, -254.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 142.5, -254.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 134.4, -254.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 134.4, -254.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 152.5, -254.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 152.5, -254.7 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_2 + 62, 1, 0 );
setRotateKey( spep_2 + 140, 1, 0 );

--敵の動き2
setDisp( spep_2 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 202 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 154 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 154 + OFFSET_X, 1, 32.1, -28 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 32.1, -28 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 714.6, -712.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 714.6, -712.4 , 0 );

setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.53, 2.53 );

setRotateKey( spep_2 + 154 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 154 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 156 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 158 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.75 );
setBlendColor( spep_2 + 164 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.73 );
setBlendColor( spep_2 + 166 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 168 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.75 );
setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.77 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.81 );
setBlendColor( spep_2 + 176 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.83 );
setBlendColor( spep_2 + 178 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.85 );
setBlendColor( spep_2 + 182 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.87 );
setBlendColor( spep_2 + 186 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 202 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--気弾飛んでいく
SE014 = playSeVer2( spep_2 + 88, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_2 + 132, 1011, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 132, 1023, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_2 + 212, 1024, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 212, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 232 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム 340f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 通常姿勢から気を溜めるポーズへ
-------------------------------------------------
MAX_FRAME_0 = 168;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 通常姿勢から気を溜めるポーズへ(ef_001r)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 80);  --背景 少し暗め

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 80;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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
--気ダメ
SE002 = playSeVer2( spep_0 + 34, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 34, 1503, "", 0, 0, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 63 );
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE005, 63 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 63 );
SE009 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE009, 63 );
SE010 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE010, 63 );

--かめはめ波溜め
SE006 = playSeVer2( spep_0 + 76, 1209, "",spep_0 + 188, 0, 20, -1);
SE001 = playSeVer2( spep_0 + 94, 1210, "",spep_0 + 188, 20, 20, -1);
setStartTimeMs( SE001,  1200 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --168f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --
--かめはめ波発射
SE012 = playSeVer2( spep_1 + 90, 1146, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 90, 1022, "", 0, 0, 0, -1);

-------------------------------------------------
-- かめはめ波を放つ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 340;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- かめはめ波を放つ～フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- かめはめ波を放つ～フィニッシュ(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 80);  --背景 少し暗め

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 140 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 102 );

setMoveKey( spep_2 + 62 + OFFSET_X, 1, 541, -254.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 541, -254.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 498.4, -231 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 498.4, -231 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 455.8, -207.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 455.8, -207.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 413.2, -183.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 413.2, -183.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 370.6, -159.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 370.6, -159.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 328, -135.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 328, -135.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 285.4, -111.7 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 285.4, -111.7 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 242.8, -87.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 242.8, -87.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 200.2, -63.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 200.2, -63.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 157.5, -40 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 157.5, -40 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 154.9, -38.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 154.9, -38.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 152.2, -37.6 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 152.2, -37.6 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 149.5, -36.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 149.5, -36.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 146.8, -35.1 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 146.8, -35.1 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 144.1, -33.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 144.1, -33.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 141.5, -32.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 141.5, -32.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 138.8, -31.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 138.8, -31.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 136.1, -30.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 136.1, -30.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 133.4, -29 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 133.4, -29 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 714.6, -712.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 714.6, -712.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 634, -647.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 634, -647.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 553.4, -582.2 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 553.4, -582.2 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 472.9, -517.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 472.9, -517.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 392.3, -452 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 392.3, -452 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 311.7, -386.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 311.7, -386.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 231.1, -321.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 231.1, -321.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 150.6, -256.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 150.6, -256.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 140.5, -266.8 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 140.5, -266.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 158.6, -254.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 158.6, -254.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 144.5, -260.8 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 144.5, -260.8 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 152.6, -252.7 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 152.6, -252.7 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 136.5, -266.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 136.5, -266.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 148.6, -252.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 148.6, -252.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 132.5, -262.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 132.5, -262.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 150.5, -246.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 150.5, -246.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 124.4, -254.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 124.4, -254.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 142.5, -254.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 142.5, -254.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 134.4, -254.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 134.4, -254.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 152.5, -254.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 152.5, -254.7 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_2 + 62, 1, 0 );
setRotateKey( spep_2 + 140, 1, 0 );

--敵の動き2
setDisp( spep_2 + 154 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 202 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 154 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 154 + OFFSET_X, 1, 32.1, -28 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 32.1, -28 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 18, 8.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 2, -15.9 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 46.1, -30 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 16, -1.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 714.6, -712.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 714.6, -712.4 , 0 );

setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2.53, 2.53 );

setRotateKey( spep_2 + 154 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 154 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 156 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 158 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.75 );
setBlendColor( spep_2 + 164 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.73 );
setBlendColor( spep_2 + 166 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.7 );
setBlendColor( spep_2 + 168 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.75 );
setBlendColor( spep_2 + 170 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.77 );
setBlendColor( spep_2 + 172 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.8 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.81 );
setBlendColor( spep_2 + 176 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.83 );
setBlendColor( spep_2 + 178 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.85 );
setBlendColor( spep_2 + 182 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.87 );
setBlendColor( spep_2 + 186 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.9 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 202 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
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
--気弾飛んでいく
SE014 = playSeVer2( spep_2 + 88, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE015 = playSeVer2( spep_2 + 132, 1011, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 132, 1023, "", 0, 0, 0, -1);

--爆発
SE017 = playSeVer2( spep_2 + 212, 1024, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 212, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 232 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム 340f


end
