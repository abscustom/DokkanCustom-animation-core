--1028680:UR_トッポ_必殺技：ジャスティストルネード
--sp_effect_b1_00281
--sp2687

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162848;  --ef_001  トッポ突進
SP_02 = 162849;  --ef_002  トルネード
SP_02b = 162850;  --ef_002b  トルネード　裏

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
-- トッポ突進
-------------------------------------------------
MAX_FRAME_0 = 248;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- トッポ突進(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 256, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--指さす
SE003 = playSeVer2( spep_0 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 141 );
SE004 = playSeVer2( spep_0 + 16, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 66 );

--構える
SE005 = playSeVer2( spep_0 + 118, 1003, "", 0, 0, 0, -1);

--走ってくる
SE006 = playSeVer2( spep_0 + 152, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE006, 62 );
SE007 = playSeVer2( spep_0 + 152, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE007, 54 );
SE008 = playSeVer2( spep_0 + 152, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE008, 166 );
SE009 = playSeVer2( spep_0 + 152, 1111, "",spep_0 + 182, 0, 8, -1);
SE010 = playSeVer2( spep_0 + 166, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE010, 168 );
SE011 = playSeVer2( spep_0 + 166, 1111, "",spep_0 + 196, 0, 8, -1);
SE012 = playSeVer2( spep_0 + 182, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE012, 166 );
SE013 = playSeVer2( spep_0 + 182, 1111, "",spep_0 + 212, 0, 8, -1);
SE014 = playSeVer2( spep_0 + 196, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE014, 166 );
SE015 = playSeVer2( spep_0 + 196, 1111, "",spep_0 + 226, 0, 8, -1);

--飛び上がる
SE016 = playSeVer2( spep_0 + 214, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE016, 78 );
SE017 = playSeVer2( spep_0 + 214, 1207, "",spep_0 + 258, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 214, SE017, 73 );
SE018 = playSeVer2( spep_0 + 214, 1117, "",spep_0 + 258, 0, 4, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --248f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--背景音
SE020 = playSeVer2( spep_1 + 80, 1264, "",spep_1 + 186, 6, 48, -1);
setSeVolumeByWorkId( spep_1 + 80, SE020, 44 );
setStartTimeMs( SE020,  333 );
setPitch( spep_1 + 80, SE020, -300 );
setTimeStretch( SE020, 0.8, 30, 4 );

-------------------------------------------------
-- トルネード
-------------------------------------------------
MAX_FRAME_2 = 452;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
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
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 101 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, 62.7, -376.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 62.7, -376.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 62.6, -376 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 62.6, -376 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 62.5, -374.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 62.5, -374.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 62, -365.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 62, -365.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 60.6, -343.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 60.6, -343.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 58.1, -304.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 58.1, -304.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 56.7, -235.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 56.7, -235.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 56.2, -227.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 56.2, -227.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 56.1, -226.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 56.1, -226.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 67, -246.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 67, -246.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 50, -208.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 50, -208.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 37.9, -221.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 37.9, -221.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 73.9, -227.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 73.9, -227.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 50.8, -254.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 50.8, -254.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 52.8, -230.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 52.8, -230.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 65.6, -237.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 65.6, -237.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 49.2, -255.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 49.2, -255.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 45.6, -253.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 45.6, -253.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 51.2, -259.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 51.2, -259.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 50.9, -258.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 50.9, -258.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 57.4, -261.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 57.4, -261.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 56, -262 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 56, -262 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 722.4, -1527.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 722.4, -1527.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 721.8, -1525.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 721.8, -1525.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 719.9, -1521.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 719.9, -1521.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 716.3, -1513.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 716.3, -1513.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 710.6, -1501.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 710.6, -1501.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 702.1, -1482.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 702.1, -1482.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 689.7, -1455.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 689.7, -1455.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 671.3, -1415.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 671.3, -1415.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 642.9, -1353.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 642.9, -1353.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 594.1, -1247.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 594.1, -1247.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 501.5, -1045.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 501.5, -1045.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 402.1, -828.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 402.1, -828.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 343, -699.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 343, -699.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 304.8, -616.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 304.8, -616.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 277.3, -556.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 277.3, -556.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 256.3, -510.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 256.3, -510.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 239.8, -474.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 239.8, -474.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 226.4, -445.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 226.4, -445.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 215.6, -421.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 215.6, -421.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 206.6, -402.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 206.6, -402.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 199.2, -385.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 199.2, -385.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 193.1, -372.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 193.1, -372.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 188.1, -361.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 188.1, -361.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 184.1, -353 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 184.1, -353 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 180.9, -346 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 180.9, -346 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 178.4, -340.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 178.4, -340.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 176.7, -336.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 176.7, -336.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 175.4, -334.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 175.4, -334.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 174.7, -332.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 174.7, -332.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 174.5, -332.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 174.5, -332.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 175.3, -332 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 175.3, -332 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 181.3, -331.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 181.3, -331.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 197.5, -330 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 197.5, -330 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 229, -327.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 229, -327.1 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.16, 2.16 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -29.7 );

setAlphaKey( spep_2 + 74 + OFFSET_X, 1, 255);
setAlphaKey( spep_2 + 188 + OFFSET_X, 1, 255);

--敵の動き2
setDisp( spep_2 + 302 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 452 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 302 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 308 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 310 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 316 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 330 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 302 + OFFSET_X, 1, 42.5, -99 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 42.5, -99 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 9, -73 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 9, -73 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 1.6, -111.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 1.6, -111.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 9.9, -74.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 9.9, -74.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 15.9, -100 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 15.9, -100 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 35.6, -77.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 35.6, -77.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 4.5, -88.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 4.5, -88.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 10.5, -104.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 10.5, -104.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 17.6, -99 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 17.6, -99 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 14.3, -109 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 14.3, -109 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 15.5, -115.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 15.5, -115.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 16.8, -121.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 16.8, -121.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 46.8, -155.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 46.8, -155.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 16.8, -91.6 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 16.8, -91.6 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -23.8, -59.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -23.8, -59.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 8.4, -19.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 8.4, -19.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -3.2, -29.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -3.2, -29.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 2.9, -38.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 2.9, -38.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 3.9, -41.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 3.9, -41.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 3.8, -44.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 3.8, -44.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 4.1, -50 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 4.1, -50 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 4.1, -50 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 4.1, -50 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 4.1, -50 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 4.1, -50 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 4.1, -50 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 4.1, -50 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 4.1, -49.9 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 4.1, -49.9 , 0 );

setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 1.48, 1.48 );

setRotateKey( spep_2 + 302 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 33.9 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 40.4 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -91.9 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 105 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 105 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 240 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 240 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 405 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 405 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 600 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 600 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 825 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 825 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 1080 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 1080 );

setAlphaKey( spep_2 + 302 + OFFSET_X, 1, 60);
setAlphaKey( spep_2 + 303 + OFFSET_X, 1, 60);
setAlphaKey( spep_2 + 304 + OFFSET_X, 1, 80);
setAlphaKey( spep_2 + 305 + OFFSET_X, 1, 80);
setAlphaKey( spep_2 + 306 + OFFSET_X, 1, 140);
setAlphaKey( spep_2 + 307 + OFFSET_X, 1, 140);
setAlphaKey( spep_2 + 308 + OFFSET_X, 1, 180);
setAlphaKey( spep_2 + 309 + OFFSET_X, 1, 180);
setAlphaKey( spep_2 + 310 + OFFSET_X, 1, 255);
setAlphaKey( spep_2 + 452 + OFFSET_X, 1, 255);

-- ** 音 ** --
--翻る
SE021 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 2, 1117, "", 0, 0, 0, 0.6);
SE023 = playSeVer2( spep_2 + 10, 44, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 76; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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
--肩に乗る
SE024 = playSeVer2( spep_2 + 60, 1233, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 72, 1006, "", 0, 0, 0, -1);

--画面遷移
SE026 = playSeVer2( spep_2 + 90, 1072, "", 0, 30, 0, -1);
SE027 = playSeVer2( spep_2 + 134, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE027, 87 );
setPitch( spep_2 + 134, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );

--トルネード
SE028 = playSeVer2( spep_2 + 172, 1403, "",spep_2 + 342, 0, 24, -1);
SE029 = playSeVer2( spep_2 + 172, 1388, "",spep_2 + 310, 0, 14, -1);
setTimeStretch( SE029, 1.17, 30, 4 );
SE030 = playSeVer2( spep_2 + 172, 1356, "",spep_2 + 334, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 172, SE030, 96 );
SE031 = playSeVer2( spep_2 + 168, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE031, 65 );
setTimeStretch( SE031, 1.25, 30, 4 );

--蹴る
SE032 = playSeVer2( spep_2 + 316, 1120, "", 0, 0, 0, -1);

--画面割れる
SE033 = playSeVer2( spep_2 + 328, 1025, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 328, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 332); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  452f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- トッポ突進
-------------------------------------------------
MAX_FRAME_0 = 248;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- トッポ突進(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 256, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--指さす
SE003 = playSeVer2( spep_0 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 141 );
SE004 = playSeVer2( spep_0 + 16, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 66 );

--構える
SE005 = playSeVer2( spep_0 + 118, 1003, "", 0, 0, 0, -1);

--走ってくる
SE006 = playSeVer2( spep_0 + 152, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE006, 62 );
SE007 = playSeVer2( spep_0 + 152, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE007, 54 );
SE008 = playSeVer2( spep_0 + 152, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE008, 166 );
SE009 = playSeVer2( spep_0 + 152, 1111, "",spep_0 + 182, 0, 8, -1);
SE010 = playSeVer2( spep_0 + 166, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE010, 168 );
SE011 = playSeVer2( spep_0 + 166, 1111, "",spep_0 + 196, 0, 8, -1);
SE012 = playSeVer2( spep_0 + 182, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE012, 166 );
SE013 = playSeVer2( spep_0 + 182, 1111, "",spep_0 + 212, 0, 8, -1);
SE014 = playSeVer2( spep_0 + 196, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 196, SE014, 166 );
SE015 = playSeVer2( spep_0 + 196, 1111, "",spep_0 + 226, 0, 8, -1);

--飛び上がる
SE016 = playSeVer2( spep_0 + 214, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE016, 78 );
SE017 = playSeVer2( spep_0 + 214, 1207, "",spep_0 + 258, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 214, SE017, 73 );
SE018 = playSeVer2( spep_0 + 214, 1117, "",spep_0 + 258, 0, 4, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --248f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--背景音
SE020 = playSeVer2( spep_1 + 80, 1264, "",spep_1 + 186, 6, 48, -1);
setSeVolumeByWorkId( spep_1 + 80, SE020, 44 );
setStartTimeMs( SE020,  333 );
setPitch( spep_1 + 80, SE020, -300 );
setTimeStretch( SE020, 0.8, 30, 4 );

-------------------------------------------------
-- トルネード
-------------------------------------------------
MAX_FRAME_2 = 452;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 74 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 188 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 74 + OFFSET_X, 1, 1 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 74 + OFFSET_X, 1, -62.7, -376.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -62.7, -376.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -62.6, -376 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -62.6, -376 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -62.5, -374.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -62.5, -374.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -62, -365.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -62, -365.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -60.6, -343.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -60.6, -343.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -58.1, -304.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -58.1, -304.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -56.7, -235.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -56.7, -235.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -56.2, -227.9 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -56.2, -227.9 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -56.1, -226.1 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -56.1, -226.1 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -67, -246.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -67, -246.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -50, -208.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -50, -208.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -37.9, -221.1 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -37.9, -221.1 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -73.9, -227.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -73.9, -227.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -50.8, -254.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -50.8, -254.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -52.8, -230.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -52.8, -230.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -65.6, -237.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -65.6, -237.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -49.2, -255.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -49.2, -255.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -45.6, -253.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -45.6, -253.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -51.2, -259.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -51.2, -259.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -50.9, -258.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -50.9, -258.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -57.4, -261.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -57.4, -261.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -56, -262 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -56, -262 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -722.4, -1527.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -722.4, -1527.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -721.8, -1525.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -721.8, -1525.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -719.9, -1521.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -719.9, -1521.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -716.3, -1513.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -716.3, -1513.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -710.6, -1501.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -710.6, -1501.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -702.1, -1482.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -702.1, -1482.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -689.7, -1455.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -689.7, -1455.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -671.3, -1415.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -671.3, -1415.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -642.9, -1353.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -642.9, -1353.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -594.1, -1247.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -594.1, -1247.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -501.5, -1045.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -501.5, -1045.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -402.1, -828.5 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -402.1, -828.5 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -343, -699.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -343, -699.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -304.8, -616.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -304.8, -616.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -277.3, -556.4 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -277.3, -556.4 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -256.3, -510.7 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -256.3, -510.7 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -239.8, -474.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -239.8, -474.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -226.4, -445.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -226.4, -445.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -215.6, -421.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -215.6, -421.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -206.6, -402.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -206.6, -402.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -199.2, -385.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -199.2, -385.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -193.1, -372.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -193.1, -372.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -188.1, -361.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -188.1, -361.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -184.1, -353 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -184.1, -353 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -180.9, -346 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -180.9, -346 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -178.4, -340.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -178.4, -340.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -176.7, -336.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -176.7, -336.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -175.4, -334.1 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -175.4, -334.1 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -174.7, -332.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -174.7, -332.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -174.5, -332.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -174.5, -332.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -175.3, -332 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -175.3, -332 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -181.3, -331.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -181.3, -331.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -197.5, -330 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -197.5, -330 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -229, -327.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -229, -327.1 , 0 );

setScaleKey( spep_2 + 74 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 5.68, 5.68 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 5.67, 5.67 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 5.49, 5.49 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 5.27, 5.27 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 5.09, 5.09 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 5.08, 5.08 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 5.66, 5.66 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 5.65, 5.65 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 5.64, 5.64 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 5.62, 5.62 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 5.58, 5.58 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 5.53, 5.53 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 5.45, 5.45 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 5.33, 5.33 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 4.24, 4.24 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.16, 2.16 );

setRotateKey( spep_2 + 74 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 28.4 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 28.8 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 29.7 );

setAlphaKey( spep_2 + 74 + OFFSET_X, 1, 255);
setAlphaKey( spep_2 + 188 + OFFSET_X, 1, 255);

--敵の動き2
setDisp( spep_2 + 302 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 452 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 302 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 304 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 306 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 308 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 310 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 312 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 316 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 318 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 330 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 302 + OFFSET_X, 1, -42.5, -99 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -42.5, -99 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -9, -73 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -9, -73 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -1.6, -111.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -1.6, -111.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -9.9, -74.7 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -9.9, -74.7 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -15.9, -100 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -15.9, -100 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -35.6, -77.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -35.6, -77.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -4.5, -88.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -4.5, -88.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -10.5, -104.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -10.5, -104.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -17.6, -99 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -17.6, -99 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -14.3, -109 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -14.3, -109 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -15.5, -115.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -15.5, -115.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -16.8, -121.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -16.8, -121.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -46.8, -155.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -46.8, -155.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -16.8, -91.6 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -16.8, -91.6 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 23.8, -59.9 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 23.8, -59.9 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -8.4, -19.5 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -8.4, -19.5 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 3.2, -29.7 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 3.2, -29.7 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -2.9, -38.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -2.9, -38.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -3.9, -41.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -3.9, -41.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -3.8, -44.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -3.8, -44.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -4.1, -50 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -4.1, -50 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -4.1, -50 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -4.1, -50 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -4.1, -50 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -4.1, -50 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -4.1, -50 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -4.1, -50 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -4.1, -49.9 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -4.1, -49.9 , 0 );

setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 1.48, 1.48 );

setRotateKey( spep_2 + 302 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -50.6 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -40.4 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 91.9 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -105 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -105 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -240 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -240 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -405 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -405 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -600 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -600 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -825 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -825 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -1080 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -1080 );

setAlphaKey( spep_2 + 302 + OFFSET_X, 1, 60);
setAlphaKey( spep_2 + 303 + OFFSET_X, 1, 60);
setAlphaKey( spep_2 + 304 + OFFSET_X, 1, 80);
setAlphaKey( spep_2 + 305 + OFFSET_X, 1, 80);
setAlphaKey( spep_2 + 306 + OFFSET_X, 1, 140);
setAlphaKey( spep_2 + 307 + OFFSET_X, 1, 140);
setAlphaKey( spep_2 + 308 + OFFSET_X, 1, 180);
setAlphaKey( spep_2 + 309 + OFFSET_X, 1, 180);
setAlphaKey( spep_2 + 310 + OFFSET_X, 1, 255);
setAlphaKey( spep_2 + 452 + OFFSET_X, 1, 255);


-- ** 音 ** --
--翻る
SE021 = playSeVer2( spep_2 + 2, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 2, 1117, "", 0, 0, 0, 0.6);
SE023 = playSeVer2( spep_2 + 10, 44, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 76; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);
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
--肩に乗る
SE024 = playSeVer2( spep_2 + 60, 1233, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 72, 1006, "", 0, 0, 0, -1);

--画面遷移
SE026 = playSeVer2( spep_2 + 90, 1072, "", 0, 30, 0, -1);
SE027 = playSeVer2( spep_2 + 134, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE027, 87 );
setPitch( spep_2 + 134, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );

--トルネード
SE028 = playSeVer2( spep_2 + 172, 1403, "",spep_2 + 342, 0, 24, -1);
SE029 = playSeVer2( spep_2 + 172, 1388, "",spep_2 + 310, 0, 14, -1);
setTimeStretch( SE029, 1.17, 30, 4 );
SE030 = playSeVer2( spep_2 + 172, 1356, "",spep_2 + 334, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 172, SE030, 96 );
SE031 = playSeVer2( spep_2 + 168, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE031, 65 );
setTimeStretch( SE031, 1.25, 30, 4 );

--蹴る
SE032 = playSeVer2( spep_2 + 316, 1120, "", 0, 0, 0, -1);

--画面割れる
SE033 = playSeVer2( spep_2 + 328, 1025, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 328, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 332); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  452f -4


end
