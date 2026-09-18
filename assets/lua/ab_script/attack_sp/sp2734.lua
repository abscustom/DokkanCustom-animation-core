--1029180:UR_ココット_必殺技：ココット・ゾーン
--sp_effect_a1_00447
--sp2734

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;
 
--エフェクト(共通)
SP_01 = 162983; --ココット登場～ヒーロー爆破のような登場シーン ef_001
SP_02 = 162984; --崖上にいるココットと見上げる敵～バリア爆発 ef_002
SP_02b = 162985; --崖上にいるココットと見上げる敵～バリア爆発(背景) ef_002b 
 
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
 
ENABLE_AUTO_TIME_STRETCH(0.84);
 
OFFSET_X = -1;
 
if (_IS_PLAYER_SIDE_ == 1) then
 
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- ココット登場～ヒーロー爆破のような登場シーン
-------------------------------------------------
MAX_FRAME_0 = 228;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ココット登場～ヒーロー爆破のような登場シーン ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--気弾宙に浮く
SE001 = playSeVer2( spep_0 + 0, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 145 );
SE002 = playSeVer2( spep_0 + 0, 1302, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );

--腕前に出す
SE004 = playSeVer2( spep_0 + 4, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 157 );
SE006 = playSeVer2( spep_0 + 12, 1012, "", 0, 0, 0, -1);

--気弾回転する
SE005 = playSeVer2( spep_0 + 8, 1303, "",spep_0 + 140, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 8, SE005, 56 );
setPitch( spep_0 + 8, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 34, 1371, "",spep_0 + 172, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 71 );
SE008 = playSeVer2( spep_0 + 50, 1305, "",spep_0 + 172, 0, 40, -1);
SE009 = playSeVer2( spep_0 + 56, 1241, "",spep_0 + 172, 0, 34, -1);
SE010 = playSeVer2( spep_0 + 66, 1311, "", 0, 0, 0, -1);

--爆発
SE011 = playSeVer2( spep_0 + 122, 1023, "", 0, 0, 0, 0.6);
SE012 = playSeVer2( spep_0 + 124, 1024, "", 0, 0, 0, 0.6);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 228

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ズーム
SE014 = playSeVer2( spep_1 + 84, 1072, "", 0, 0, 0, 0.6);

-------------------------------------------------
-- 崖上にいるココットと見上げる敵～バリア爆発
-------------------------------------------------
MAX_FRAME_2 = 474;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 崖上にいるココットと見上げる敵～バリア爆発 ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 崖上にいるココットと見上げる敵～バリア爆発(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--敵の動き_1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 250.4, -57.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 250.4, -57.5 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 250.4, -57.5 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 251.8, -58.3 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 251.8, -58.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 256.4, -61.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 256.4, -61.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 264.9, -66.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 264.9, -66.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 278.1, -75.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 278.1, -75.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 297.1, -87.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 297.1, -87.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 323.7, -104.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 323.7, -104.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 360.8, -127.7 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 360.8, -127.7 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 413, -161 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 413, -161 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 490.3, -210.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 490.3, -210.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 618.1, -291.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 618.1, -291.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 906.3, -475.1 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 906.3, -475.1 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 1503.8, -857.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 1503.8, -857.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 1666.6, -961.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 1666.6, -961.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 1752.5, -1016.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 1752.5, -1016.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 1806.9, -1051.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 1806.9, -1051.2 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 1843.6, -1074.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 1843.6, -1074.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 1868.7, -1090.6 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 1868.7, -1090.6 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 1885.6, -1101.4 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 1885.6, -1101.4 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 1896.2, -1108.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 1896.2, -1108.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 1902, -1111.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 1902, -1111.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 1903.7, -1112.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 1903.7, -1112.9 , 0 );

setScaleKey( spep_2 + 0, 1, 3, 3 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 10.63, 10.63 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 10.63, 10.63 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 11.64, 11.64 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 11.64, 11.64 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 12.16, 12.16 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 12.16, 12.16 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 12.49, 12.49 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 12.49, 12.49 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 12.87, 12.87 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 12.87, 12.87 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 12.97, 12.97 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 12.97, 12.97 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 13.03, 13.03 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 13.03, 13.03 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 13.07, 13.07 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 13.07, 13.07 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 13.08, 13.08 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 13.08, 13.08 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 0 );

--敵の動き_2
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, 126.5, -73.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 126.5, -73.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 127.8, -73.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 127.8, -73.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 129, -73.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 129, -73.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 130.2, -73.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 130.2, -73.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 131.4, -73.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 131.4, -73.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 132.6, -73.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 132.6, -73.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 133.7, -73.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 133.7, -73.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 134.9, -73.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 134.9, -73.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 136.1, -73.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 136.1, -73.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 137.3, -73.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 137.3, -73.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 138.5, -73.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 138.5, -73.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 139.7, -73.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 139.7, -73.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 140.9, -73.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 140.9, -73.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 142.1, -73.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 142.1, -73.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 143.3, -73.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 143.3, -73.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 144.5, -73.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 144.5, -73.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 145.7, -73.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 145.7, -73.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 146.9, -73.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 146.9, -73.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 148.1, -73.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 148.1, -73.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 149.3, -73.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 149.3, -73.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 150.5, -73.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 150.5, -73.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 1524, -1124.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1524, -1124.2 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 6.82, 6.82 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 130 + OFFSET_X, 1, 0, 0.3, 0, 0.4, 1 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 0, 0.3, 0, 0.4, 1 );

--敵の動き_3
setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 362 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 310 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 330 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, 1086.7, -809.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 1086.7, -809.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 903.7, -641.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 903.7, -641.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 685.1, -493.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 685.1, -493.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 464.7, -305.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 464.7, -305.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 267.4, -146.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 267.4, -146.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 251.3, -173.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 251.3, -173.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 253.1, -143.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 253.1, -143.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 240.7, -166.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 240.7, -166.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 269.2, -159.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 269.2, -159.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 262.1, -171.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 262.1, -171.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 253.2, -145.1 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 253.2, -145.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 267.4, -146.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 267.4, -146.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 251.3, -173.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 251.3, -173.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -9.1, -1.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -9.1, -1.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -21.5, -24.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -21.5, -24.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 7, -17.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 7, -17.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -0.2, -29.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -0.2, -29.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -9.1, -1.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -9.1, -1.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -21.5, -24.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -21.5, -24.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 7, -17.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 7, -17.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -0.2, -29.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -0.2, -29.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -9, -2.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -9, -2.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -7.3, -17.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -7.3, -17.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 10.6, 11.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 10.6, 11.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -37.1, -65.6 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -37.1, -65.6 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 35.7, -9.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 35.7, -9.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -47.2, 14.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -47.2, 14.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 13.4, -15.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 13.4, -15.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 2, -31.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 2, -31.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 15.6, -26 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 15.6, -26 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 9.6, -31.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 9.6, -31.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 18.1, -32.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 18.1, -32.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 19.1, -33.2 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 19.1, -33.2 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 27.3, -33.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 27.3, -33.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 21.3, -39 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 21.3, -39 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 27.9, -38.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 27.9, -38.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 30.8, -40.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 30.8, -40.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 33.7, -42.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 33.7, -42.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 36.6, -43.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 36.6, -43.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 39.6, -45.7 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 2.3 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, 18.2 );

setBlendColor( spep_2 + 284 + OFFSET_X, 1, 0, 0.3, 0, 0.4, 1 );
setBlendColor( spep_2 + 310 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 362 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--腕上にあげる
SE015 = playSeVer2( spep_2 + 52, 1003, "", 0, 0, 0, -1);

--異空間作る
SE016 = playSeVer2( spep_2 + 66, 1374, "",spep_2 + 158, 0, 34, -1);
SE017 = playSeVer2( spep_2 + 66, 1022, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 66, 1371, "",spep_2 + 330, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 66, SE018, 74 );
setPitch( spep_2 + 66, SE018, -600 );
setTimeStretch( SE018, 0.6, 30, 4 );
SE019 = playSeVer2( spep_2 + 66, 1278, "",spep_2 + 328, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 66, SE019, 72 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_2 + 100;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
    
    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    endPhase( SP_dodge+10);

    do return end
    else end

    -----------------------------
    --回避しなかった場合
    -----------------------------

-- ** 音 ** --
--ポーズとる
SE020 = playSeVer2( spep_2 + 178, 1189, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 178, 1013, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 202, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 202, 1013, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 214, 1013, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 214, 1296, "",spep_2 + 282, 0, 14, -1);

--気弾発射
SE026 = playSeVer2( spep_2 + 266, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 266, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE028 = playSeVer2( spep_2 + 298, 1021, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_2 + 346, 1159, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 346, 1226, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 378, 1067, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 378, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 378, SE032, 74 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 374); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 474F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- ココット登場～ヒーロー爆破のような登場シーン
-------------------------------------------------
MAX_FRAME_0 = 228;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ココット登場～ヒーロー爆破のような登場シーン ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;
 
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--気弾宙に浮く
SE001 = playSeVer2( spep_0 + 0, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 145 );
SE002 = playSeVer2( spep_0 + 0, 1302, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );

--腕前に出す
SE004 = playSeVer2( spep_0 + 4, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE004, 157 );
SE006 = playSeVer2( spep_0 + 12, 1012, "", 0, 0, 0, -1);

--気弾回転する
SE005 = playSeVer2( spep_0 + 8, 1303, "",spep_0 + 140, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 8, SE005, 56 );
setPitch( spep_0 + 8, SE005, -300 );
setTimeStretch( SE005, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 34, 1371, "",spep_0 + 172, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 71 );
SE008 = playSeVer2( spep_0 + 50, 1305, "",spep_0 + 172, 0, 40, -1);
SE009 = playSeVer2( spep_0 + 56, 1241, "",spep_0 + 172, 0, 34, -1);
SE010 = playSeVer2( spep_0 + 66, 1311, "", 0, 0, 0, -1);

--爆発
SE011 = playSeVer2( spep_0 + 122, 1023, "", 0, 0, 0, 0.6);
SE012 = playSeVer2( spep_0 + 124, 1024, "", 0, 0, 0, 0.6);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;-- 228

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ズーム
SE014 = playSeVer2( spep_1 + 84, 1072, "", 0, 0, 0, 0.6);

-------------------------------------------------
-- 崖上にいるココットと見上げる敵～バリア爆発
-------------------------------------------------
MAX_FRAME_2 = 474;
 
-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 崖上にいるココットと見上げる敵～バリア爆発 ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0);
setEffAlphaKey( spep_2 + 0, finish_0f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255);
finish_0b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 崖上にいるココットと見上げる敵～バリア爆発(背景) ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_0b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_0b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0);
setEffAlphaKey( spep_2 + 0, finish_0b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--敵の動き_1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 62 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0, 1, 2 );

setMoveKey( spep_2 + 0, 1, -250.4, -57.4 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -250.4, -57.5 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -250.4, -57.5 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -251.8, -58.3 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -251.8, -58.3 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -256.4, -61.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -256.4, -61.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -264.9, -66.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -264.9, -66.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -278.1, -75.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -278.1, -75.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -297.1, -87.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -297.1, -87.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -323.7, -104.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -323.7, -104.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -360.8, -127.7 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -360.8, -127.7 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -413, -161 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -413, -161 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -490.3, -210.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -490.3, -210.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -618.1, -291.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -618.1, -291.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -906.3, -475.1 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -906.3, -475.1 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -1503.8, -857.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -1503.8, -857.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -1666.6, -961.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -1666.6, -961.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -1752.5, -1016.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -1752.5, -1016.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -1806.9, -1051.2 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -1806.9, -1051.2 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -1843.6, -1074.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -1843.6, -1074.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -1868.7, -1090.6 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -1868.7, -1090.6 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -1885.6, -1101.4 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -1885.6, -1101.4 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -1896.2, -1108.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -1896.2, -1108.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -1902, -1111.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -1902, -1111.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -1903.7, -1112.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -1903.7, -1112.9 , 0 );

setScaleKey( spep_2 + 0, 1, 3, 3 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 5.11, 5.11 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 10.63, 10.63 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 10.63, 10.63 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 11.64, 11.64 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 11.64, 11.64 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 12.16, 12.16 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 12.16, 12.16 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 12.49, 12.49 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 12.49, 12.49 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 12.87, 12.87 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 12.87, 12.87 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 12.97, 12.97 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 12.97, 12.97 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 13.03, 13.03 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 13.03, 13.03 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 13.07, 13.07 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 13.07, 13.07 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 13.08, 13.08 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 13.08, 13.08 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 0 );

--敵の動き_2
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 18 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, -126.5, -73.5 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -126.5, -73.5 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -127.8, -73.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -127.8, -73.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -129, -73.6 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -129, -73.6 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -130.2, -73.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -130.2, -73.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -131.4, -73.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -131.4, -73.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -132.6, -73.6 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -132.6, -73.6 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -133.7, -73.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -133.7, -73.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -134.9, -73.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -134.9, -73.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -136.1, -73.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -136.1, -73.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -137.3, -73.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -137.3, -73.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -138.5, -73.6 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -138.5, -73.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -139.7, -73.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -139.7, -73.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -140.9, -73.6 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -140.9, -73.6 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -142.1, -73.6 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -142.1, -73.6 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -143.3, -73.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -143.3, -73.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -144.5, -73.6 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -144.5, -73.6 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -145.7, -73.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -145.7, -73.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -146.9, -73.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -146.9, -73.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -148.1, -73.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -148.1, -73.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -149.3, -73.6 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -149.3, -73.6 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -150.5, -73.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -150.5, -73.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -1524, -1124.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -1524, -1124.2 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 6.82, 6.82 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 6.82, 6.82 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 130 + OFFSET_X, 1, 0, 0.3, 0, 0.4, 1 );
setBlendColor( spep_2 + 174 + OFFSET_X, 1, 0, 0.3, 0, 0.4, 1 );

--敵の動き_3
setDisp( spep_2 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 362 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 310 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 330 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 284 + OFFSET_X, 1, -1086.7, -809.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -1086.7, -809.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -903.7, -641.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -903.7, -641.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -685.1, -493.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -685.1, -493.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -464.7, -305.9 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -464.7, -305.9 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -267.4, -146.9 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -267.4, -146.9 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -251.3, -173.6 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -251.3, -173.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -253.1, -143.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -253.1, -143.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -240.7, -166.5 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -240.7, -166.5 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -269.2, -159.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -269.2, -159.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -262.1, -171.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -262.1, -171.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -253.2, -145.1 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -253.2, -145.1 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -267.4, -146.9 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -267.4, -146.9 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -251.3, -173.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -251.3, -173.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 9.1, -1.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 9.1, -1.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 21.5, -24.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 21.5, -24.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -7, -17.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -7, -17.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 0.2, -29.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 0.2, -29.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 9.1, -1.1 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 9.1, -1.1 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 21.5, -24.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 21.5, -24.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -7, -17.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -7, -17.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 0.2, -29.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 0.2, -29.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 9, -2.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 9, -2.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 7.3, -17.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 7.3, -17.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -10.6, 11.4 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -10.6, 11.4 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 37.1, -65.6 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 37.1, -65.6 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -35.7, -9.3 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -35.7, -9.3 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 47.2, 14.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 47.2, 14.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -13.4, -15.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -13.4, -15.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -2, -31.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -2, -31.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -15.6, -26 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -15.6, -26 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -9.6, -31.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -9.6, -31.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -18.1, -32.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -18.1, -32.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -19.1, -33.2 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -19.1, -33.2 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -27.3, -33.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -27.3, -33.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -21.3, -39 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -21.3, -39 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -27.9, -38.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -27.9, -38.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -30.8, -40.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -30.8, -40.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -33.7, -42.1 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -33.7, -42.1 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -36.6, -43.9 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -36.6, -43.9 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -39.6, -45.7 , 0 );

setScaleKey( spep_2 + 284 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 4.42, 4.42 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 284 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -18.2 );

setBlendColor( spep_2 + 284 + OFFSET_X, 1, 0, 0.3, 0, 0.4, 1 );
setBlendColor( spep_2 + 310 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 362 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--腕上にあげる
SE015 = playSeVer2( spep_2 + 52, 1003, "", 0, 0, 0, -1);

--異空間作る
SE016 = playSeVer2( spep_2 + 66, 1374, "",spep_2 + 158, 0, 34, -1);
SE017 = playSeVer2( spep_2 + 66, 1022, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 66, 1371, "",spep_2 + 330, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 66, SE018, 74 );
setPitch( spep_2 + 66, SE018, -600 );
setTimeStretch( SE018, 0.6, 30, 4 );
SE019 = playSeVer2( spep_2 + 66, 1278, "",spep_2 + 328, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 66, SE019, 72 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
    SP_dodge = spep_2 + 100;  -- エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);
    
    -- ** 敵キャラクター ** --
    setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade
    endPhase( SP_dodge+10);

    do return end
    else end

    -----------------------------
    --回避しなかった場合
    -----------------------------

-- ** 音 ** --
--ポーズとる
SE020 = playSeVer2( spep_2 + 178, 1189, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 178, 1013, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 202, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 202, 1013, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 214, 1013, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 214, 1296, "",spep_2 + 282, 0, 14, -1);

--気弾発射
SE026 = playSeVer2( spep_2 + 266, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 266, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE028 = playSeVer2( spep_2 + 298, 1021, "", 0, 0, 0, -1);

--爆発
SE029 = playSeVer2( spep_2 + 346, 1159, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 346, 1226, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 378, 1067, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 378, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 378, SE032, 74 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 374); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2); -- 474F

end