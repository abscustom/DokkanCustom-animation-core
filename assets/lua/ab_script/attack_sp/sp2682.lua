-- 1027970: UR_超サイヤ人ゴジータ_必殺技(↓簡易版)：メトロアタック
-- sp_effect_b1_00276
-- sp2682

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 敵味方共通
SP_01 = 162625;  -- ef_001  簡易版も共通使用
SP_02 = 164442;  -- ef_003  ef_003_bとセット。敵の手前に配置。


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_02, 0, 1);

------------------------------------------------------
-- 冒頭からカメラ前に迫りカードカットインまで
------------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
--[[
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 20;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 114, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 72 );
setPitch( spep_0 + 0, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 1117, "",spep_0 + 104, 0, 14, -1);
SE005 = playSeVer2( spep_0 + 8, 1277, "",spep_0 + 104, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 20, 1072, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 104, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 104

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 簡易版：画面左奥から迫りフィニッシュまで
------------------------------------------------------
MAX_FRAME_2 = 418;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255 );
--[[
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2, 1, 1 );
setDisp( spep_2 + 364 + OFFSET_X, 1, 0 );

changeAnime( spep_2, 1, 118 );
changeAnime( spep_2 + 34 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 166 + OFFSET_X, 1, 5 );

setMoveKey( spep_2, 1, 226.4, -93.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 222.2, -92.5 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 222.2, -92.5 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 217.8, -91.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 217.8, -91.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 213.2, -89.8 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 213.2, -89.8 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 208.3, -88.2 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 208.3, -88.2 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 203.2, -86.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 203.2, -86.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 197.8, -85 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 197.8, -85 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 192.2, -83.2 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 192.2, -83.2 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 186.6, -82.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 186.6, -82.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 181.2, -79.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 181.2, -79.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 174.1, -77.4 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 174.1, -77.4 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 167, -76 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 167, -76 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 160.6, -75.1 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 160.6, -75.1 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 153.5, -72.8 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 153.5, -72.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 146.2, -70.5 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 146.2, -70.5 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 145.8, -68.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 145.8, -68.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 137.2, -68.7 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 137.2, -68.7 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 306.7, -23.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 306.7, -23.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 306.6, -23.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 306.6, -23.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 308.4, -20.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 308.4, -20.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 351.8, -22.2 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 351.8, -22.2 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 344, -17.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 344, -17.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 356.4, -21.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 356.4, -21.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 356.3, -7.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 356.3, -7.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 357.9, -7.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 357.9, -7.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 360.9, -23.5 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 360.9, -23.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 350.5, -12 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 350.5, -12 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 350.8, -12 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 350.8, -12 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 224.7, -15.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 224.7, -15.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 214.8, -10.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 214.8, -10.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 210.7, -10.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 210.7, -10.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 201.5, -28 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 201.5, -28 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 200.2, -9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 200.2, -9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 207.4, 15.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 207.4, 15.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 162.1, -7.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 162.1, -7.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 141, -0.7 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 141, -0.7 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 129.2, -5.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 129.2, -5.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 155.3, -1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 155.3, -1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 126.1, -1.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 126.1, -1.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 127.8, 6.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 127.8, 6.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 97.1, 1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 97.1, 1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 99.4, -8.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 99.4, -8.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 100.1, -8.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 100.1, -8.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 98.2, 1.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 98.2, 1.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 110.9, -29.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 110.9, -29.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 97, 1.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 97, 1.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 78.8, -13.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 78.8, -13.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 33.6, -27.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 33.6, -27.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 40.5, -55.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 40.5, -55.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 64.2, -46.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 64.2, -46.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 71.4, -45.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 71.4, -45.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 59.4, -42 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 59.4, -42 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 54, -40.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 54, -40.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 48.3, -31.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 48.3, -31.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -1.7, -24.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -1.7, -24.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -40.7, -10 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -40.7, -10 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -79.7, 4.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -79.7, 4.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -117.9, 24.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -117.9, 24.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -123, 20.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -123, 20.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -141.2, 8.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -141.2, 8.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -142.3, -3.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -142.3, -3.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -147.2, -1.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -147.2, -1.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -142.6, 26.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -142.6, 26.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -149.8, 28.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -149.8, 28.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -155.6, 22.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -155.6, 22.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -160.5, 24.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -160.5, 24.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -162.7, 35.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -162.7, 35.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -167.6, 37 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -167.6, 37 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -172.6, 38.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -172.6, 38.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -177.5, 40.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -177.5, 40.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -182.5, 42.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -182.5, 42.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -187.4, 44.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -187.4, 44.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -192.4, 46 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -192.4, 46 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -197.2, 46 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -197.2, 46 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -201, 46 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -201, 46 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -203.7, 46 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -203.7, 46 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -205.4, 46 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -205.4, 46 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -205.9, 46 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -205.9, 46 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -72.8, -10.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -72.8, -10.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -111.3, 25.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -111.3, 25.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -89, 10.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -89, 10.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -89.1, 7.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -89.1, 7.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -107.9, 2.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -107.9, 2.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -86.5, 5.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -86.5, 5.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -87.1, 4.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -87.1, 4.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -91.8, 6.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -91.8, 6.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -96.4, 13.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -96.4, 13.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -91.3, -7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -91.3, -7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -82.4, -2.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -82.4, -2.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -82.4, -3.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -82.4, -3.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -86.7, -7.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -86.7, -7.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -88.7, -9.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -88.7, -9.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -88.7, -11.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -88.7, -11.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -83.9, -16.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -83.9, -16.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -83.8, -17.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -83.8, -17.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -90, -26.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -90, -26.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -89.9, -28.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -89.9, -28.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -89.9, -29.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -89.9, -29.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 10.2, -67.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 10.2, -67.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -4.4, -79.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -4.4, -79.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -0.5, -72.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -0.5, -72.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 14.1, -85.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 14.1, -85.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 24.8, -76.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 24.8, -76.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -5.6, -97.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -5.6, -97.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 18.8, -76.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 18.8, -76.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 18.8, -109.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 18.8, -109.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 20.7, -97.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 20.7, -97.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 6.5, -113.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 6.5, -113.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 25.6, -91.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 25.6, -91.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 8.8, -107.3 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 8.8, -107.3 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 3.2, -89.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 3.2, -89.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 16.4, -100 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 16.4, -100 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -0.8, -85.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -0.8, -85.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 19.6, -88.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 19.6, -88.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 15.1, -72.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 15.1, -72.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 3.7, -85.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 3.7, -85.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 5.5, -71.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 5.5, -71.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 17.7, -78.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 17.7, -78.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 9.3, -63.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 9.3, -63.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 18.9, -80 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 18.9, -80 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 8.5, -66.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 8.5, -66.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 10.5, -79 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 10.5, -79 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 2.2, -67 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 2.2, -67 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -2.9, -78.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -2.9, -78.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 2.2, -65.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 2.2, -65.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 1.6, -78.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 1.6, -78.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -2.9, -66.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -2.9, -66.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 11.3, -78.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 11.3, -78.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 1.6, -66.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 1.6, -66.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -4.8, -79.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -4.8, -79.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -8.9, -67.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -8.9, -67.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -9.9, -80.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -9.9, -80.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -7, -69.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -7, -69.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -8.9, -78.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -8.9, -78.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 7.2, -67.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 7.2, -67.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -6, -77.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -6, -77.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -5.4, -66.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -5.4, -66.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -4.7, -73.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -4.7, -73.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -1, -63.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -1, -63.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 26.3, -64.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 26.3, -64.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 11.3, -81.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 11.3, -81.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 8, -53.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 8, -53.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 12.6, -80 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 12.6, -80 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 17.1, -54 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 17.1, -54 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 4.8, -79.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 4.8, -79.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 10.6, -53.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 10.6, -53.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 17, -77 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 17, -77 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 2.2, -51.9 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 2.2, -51.9 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 6.7, -75.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 6.7, -75.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 0.2, -51.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 0.2, -51.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 11.1, -73.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 11.1, -73.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 5.4, -52 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 5.4, -52 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -2.2, -73.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -2.2, -73.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 1.5, -50.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 1.5, -50.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 6.1, -70.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 6.1, -70.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 19.5, -51.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 19.5, -51.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 12.5, -69.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 12.5, -69.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 4.9, -50.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 4.9, -50.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -0.3, -69.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -0.3, -69.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 3.6, -51.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 3.6, -51.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 15.3, -56 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 15.3, -56 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 4.4, -61.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 4.4, -61.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 5, -56 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 5, -56 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 10.2, -62.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 10.2, -62.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 10.2, -55.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 10.2, -55.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 7.6, -59.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 7.6, -59.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 7, -57.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 7, -57.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 5.7, -58 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 5.7, -58 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 4.4, -54.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 4.4, -54.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 4.4, -59.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 4.4, -59.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 6.9, -53.8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 6.9, -53.8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 4.3, -65.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 4.3, -65.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 3.6, -54.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 3.6, -54.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -1.5, -71.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -1.5, -71.1 , 0 );

setScaleKey( spep_2, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.01, 0.01 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.01, 0.01 );

setRotateKey( spep_2, 1, 3 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -47.7 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -54.4 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -55 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -57.6 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -59.4 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -63.1 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -63.1 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -58.4 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, 39 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, 42.2 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, 48.7 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 49.2 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, 49.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 51.2 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 51.2 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 51.6 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 53.3 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 54.1 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 54.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 54.9 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 54.9 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 49.8 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 50.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, 50.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 50.7 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 50.7 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 50.9 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 51.4 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 51.4 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 51.8 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 52 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 52.4 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 53 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, 53 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 53.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 53.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, 53.7 );

-- ** 音 ** --
--向かってくる
SE010 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 0, 1272, "",spep_2 + 62, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 0, SE011, 54 );
setPitch( spep_2 + 0, SE011, 600 );
setTimeStretch( SE011, 1.4, 30, 4 );
SE012 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE012, 54 );
setTimeStretch( SE012, 0.76, 30, 4 );
SE013 = playSeVer2( spep_2 + 4, 1277, "",spep_2 + 60, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 4, SE013, 153 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止    

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

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
--パンチ２
SE014 = playSeVer2( spep_2 + 20, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE014, 86 );
SE015 = playSeVer2( spep_2 + 20, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 20, 1414, "",spep_2 + 56, 0, 18, -1);
--連続パンチ
SE017 = playSeVer2( spep_2 + 42, 1414, "",spep_2 + 56, 0, 4, 0.6);
SE018 = playSeVer2( spep_2 + 42, 1187, "",spep_2 + 56, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 42, SE018, 60 );
SE019 = playSeVer2( spep_2 + 48, 1414, "",spep_2 + 62, 0, 4, 0.6);
stopSeIfDoubleSpeed( spep_2 + 48, SE019);
SE020 = playSeVer2( spep_2 + 48, 1187, "",spep_2 + 62, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 48, SE020, 60 );
stopSeIfDoubleSpeed( spep_2 + 48, SE020);
SE021 = playSeVer2( spep_2 + 54, 1414, "",spep_2 + 68, 0, 4, 0.6);
setSeVolumeByWorkId( spep_2 + 54, SE021, 85 );
SE022 = playSeVer2( spep_2 + 54, 1187, "",spep_2 + 68, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 54, SE022, 56 );
SE023 = playSeVer2( spep_2 + 60, 1414, "",spep_2 + 74, 0, 4, 0.6);
setSeVolumeByWorkId( spep_2 + 60, SE023, 84 );
stopSeIfDoubleSpeed( spep_2 + 60, SE023);
SE024 = playSeVer2( spep_2 + 60, 1187, "",spep_2 + 74, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 60, SE024, 50 );
stopSeIfDoubleSpeed( spep_2 + 60, SE024);
SE025 = playSeVer2( spep_2 + 66, 1414, "",spep_2 + 80, 0, 4, 0.6);
SE026 = playSeVer2( spep_2 + 66, 1187, "",spep_2 + 82, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 66, SE026, 66 );
SE027 = playSeVer2( spep_2 + 72, 1414, "",spep_2 + 86, 0, 4, 0.6);
setSeVolumeByWorkId( spep_2 + 72, SE027, 77 );
stopSeIfDoubleSpeed( spep_2 + 72, SE027);
SE028 = playSeVer2( spep_2 + 72, 1187, "",spep_2 + 88, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 72, SE028, 66 );
stopSeIfDoubleSpeed( spep_2 + 72, SE028);
SE029 = playSeVer2( spep_2 + 78, 1414, "",spep_2 + 102, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 78, SE029, 90 );
SE030 = playSeVer2( spep_2 + 78, 1187, "",spep_2 + 94, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 78, SE030, 66 );
SE031 = playSeVer2( spep_2 + 86, 1187, "",spep_2 + 118, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 86, SE031, 72 );
--一度離れる
SE032 = playSeVer2( spep_2 + 106, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 106, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE033, 63 );
SE034 = playSeVer2( spep_2 + 106, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE034, 79 );
--蹴り飛ばす
SE035 = playSeVer2( spep_2 + 158, 1414, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 160, 1187, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 162, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE037, 84 );
--敵飛んでいく
SE038 = playSeVer2( spep_2 + 188, 1183, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 200, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE039, 74 );
--爆発１
SE040 = playSeVer2( spep_2 + 214, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE040, 60 );
SE041 = playSeVer2( spep_2 + 214, 1159, "",spep_2 + 290, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 214, SE041, 85 );
SE042 = playSeVer2( spep_2 + 214, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE042, 79 );
--爆発２
SE043 = playSeVer2( spep_2 + 284, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE043, 64 );
SE044 = playSeVer2( spep_2 + 284, 1159, "",spep_2 + 358, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 284, SE044, 80 );
--敵飛んでいく
SE045 = playSeVer2( spep_2 + 292, 1183, "",spep_2 + 376, 0, 16, -1);
setPitch( spep_2 + 292, SE045, -600 );
setTimeStretch( SE045, 0.6, 30, 4 );
--ラスト壁激突
SE046 = playSeVer2( spep_2 + 352, 1011, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 352, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 352, SE047, 46 );

-- ** おわり ** --
dealDamage( spep_2 + 300 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 418

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_02, 0, 1);

------------------------------------------------------
-- 冒頭からカメラ前に迫りカードカットインまで
------------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
--[[
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 114, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 72 );
setPitch( spep_0 + 0, SE003, 400 );
setTimeStretch( SE003, 1.27, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 1117, "",spep_0 + 104, 0, 14, -1);
SE005 = playSeVer2( spep_0 + 8, 1277, "",spep_0 + 104, 0, 14, -1);
SE006 = playSeVer2( spep_0 + 20, 1072, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 64, 1019, "",spep_0 + 104, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 104

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 簡易版：画面左奥から迫りフィニッシュまで
------------------------------------------------------
MAX_FRAME_2 = 418;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255 );
--[[
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2, 1, 1 );
setDisp( spep_2 + 364 + OFFSET_X, 1, 0 );

changeAnime( spep_2, 1,18 );
changeAnime( spep_2 + 34 + OFFSET_X, 1,8 );
changeAnime( spep_2 + 56 + OFFSET_X, 1,6 );
changeAnime( spep_2 + 118 + OFFSET_X, 1, 106  );
changeAnime( spep_2 + 166 + OFFSET_X, 1, 105  );

setMoveKey( spep_2, 1, -226.4, -93.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, -222.2, -92.5 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, -222.2, -92.5 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, -217.8, -91.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, -217.8, -91.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, -213.2, -89.8 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, -213.2, -89.8 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, -208.3, -88.2 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, -208.3, -88.2 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, -203.2, -86.6 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, -203.2, -86.6 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, -197.8, -85 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, -197.8, -85 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, -192.2, -83.2 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, -192.2, -83.2 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, -186.6, -82.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, -186.6, -82.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, -181.2, -79.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, -181.2, -79.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, -174.1, -77.4 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, -174.1, -77.4 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, -167, -76 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, -167, -76 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, -160.6, -75.1 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, -160.6, -75.1 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, -153.5, -72.8 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, -153.5, -72.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, -146.2, -70.5 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, -146.2, -70.5 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, -145.8, -68.8 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -145.8, -68.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -137.2, -68.7 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -137.2, -68.7 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -306.7, -23.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -306.7, -23.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -306.6, -23.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -306.6, -23.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -308.4, -20.4 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -308.4, -20.4 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -351.8, -22.2 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -351.8, -22.2 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -344, -17.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -344, -17.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -356.4, -21.3 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -356.4, -21.3 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -356.3, -7.9 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -356.3, -7.9 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -357.9, -7.9 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -357.9, -7.9 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -360.9, -23.5 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -360.9, -23.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -350.5, -12 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -350.5, -12 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -350.8, -12 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -350.8, -12 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -224.7, -15.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -224.7, -15.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -214.8, -10.8 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -214.8, -10.8 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -210.7, -10.3 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -210.7, -10.3 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -201.5, -28 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -201.5, -28 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -200.2, -9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -200.2, -9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -207.4, 15.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -207.4, 15.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -162.1, -7.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -162.1, -7.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -141, -0.7 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -141, -0.7 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -129.2, -5.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -129.2, -5.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -155.3, -1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -155.3, -1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -126.1, -1.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -126.1, -1.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -127.8, 6.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -127.8, 6.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -97.1, 1 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -97.1, 1 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -99.4, -8.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -99.4, -8.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -100.1, -8.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -100.1, -8.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -98.2, 1.7 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -98.2, 1.7 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -110.9, -29.3 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -110.9, -29.3 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -97, 1.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -97, 1.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -78.8, -13.6 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -78.8, -13.6 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -33.6, -27.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -33.6, -27.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -40.5, -55.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -40.5, -55.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -64.2, -46.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -64.2, -46.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -71.4, -45.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -71.4, -45.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -59.4, -42 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -59.4, -42 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -54, -40.6 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -54, -40.6 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -48.3, -31.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -48.3, -31.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 1.7, -24.2 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 1.7, -24.2 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 40.7, -10 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 40.7, -10 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 79.7, 4.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 79.7, 4.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 117.9, 24.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 117.9, 24.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 123, 20.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 123, 20.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 141.2, 8.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 141.2, 8.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 142.3, -3.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 142.3, -3.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 147.2, -1.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 147.2, -1.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 142.6, 26.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 142.6, 26.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 149.8, 28.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 149.8, 28.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 155.6, 22.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 155.6, 22.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 160.5, 24.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 160.5, 24.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 162.7, 35.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 162.7, 35.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 167.6, 37 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 167.6, 37 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 172.6, 38.8 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 172.6, 38.8 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 177.5, 40.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 177.5, 40.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 182.5, 42.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 182.5, 42.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 187.4, 44.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 187.4, 44.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 192.4, 46 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 192.4, 46 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 197.2, 46 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 197.2, 46 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 201, 46 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 201, 46 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 203.7, 46 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 203.7, 46 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 205.4, 46 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 205.4, 46 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 205.9, 46 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 205.9, 46 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 72.8, -10.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 72.8, -10.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 111.3, 25.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 111.3, 25.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 89, 10.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 89, 10.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 89.1, 7.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 89.1, 7.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 107.9, 2.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 107.9, 2.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 86.5, 5.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 86.5, 5.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 87.1, 4.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 87.1, 4.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 91.8, 6.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 91.8, 6.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 96.4, 13.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 96.4, 13.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 91.3, -7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 91.3, -7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 82.4, -2.3 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 82.4, -2.3 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 82.4, -3.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 82.4, -3.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 86.7, -7.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 86.7, -7.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 88.7, -9.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 88.7, -9.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 88.7, -11.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 88.7, -11.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 83.9, -16.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 83.9, -16.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 83.8, -17.8 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 83.8, -17.8 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 90, -26.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 90, -26.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 89.9, -28.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 89.9, -28.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 89.9, -29.9 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 89.9, -29.9 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -10.2, -67.7 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -10.2, -67.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 4.4, -79.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 4.4, -79.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 0.5, -72.2 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 0.5, -72.2 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -14.1, -85.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -14.1, -85.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -24.8, -76.9 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -24.8, -76.9 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 5.6, -97.3 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 5.6, -97.3 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -18.8, -76.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -18.8, -76.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -18.8, -109.8 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -18.8, -109.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -20.7, -97.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -20.7, -97.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -6.5, -113.6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -6.5, -113.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -25.6, -91.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -25.6, -91.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -8.8, -107.3 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -8.8, -107.3 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -3.2, -89.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -3.2, -89.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -16.4, -100 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -16.4, -100 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 0.8, -85.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 0.8, -85.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -19.6, -88.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -19.6, -88.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -15.1, -72.8 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -15.1, -72.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -3.7, -85.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -3.7, -85.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -5.5, -71.1 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -5.5, -71.1 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -17.7, -78.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -17.7, -78.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -9.3, -63.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -9.3, -63.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -18.9, -80 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -18.9, -80 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -8.5, -66.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -8.5, -66.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -10.5, -79 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -10.5, -79 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -2.2, -67 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -2.2, -67 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 2.9, -78.3 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 2.9, -78.3 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -2.2, -65.8 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -2.2, -65.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -1.6, -78.4 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -1.6, -78.4 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 2.9, -66.6 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 2.9, -66.6 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -11.3, -78.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -11.3, -78.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -1.6, -66.9 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -1.6, -66.9 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 4.8, -79.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 4.8, -79.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 8.9, -67.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 8.9, -67.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 9.9, -80.3 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 9.9, -80.3 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 7, -69.4 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 7, -69.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 8.9, -78.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 8.9, -78.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -7.2, -67.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -7.2, -67.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 6, -77.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 6, -77.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 5.4, -66.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 5.4, -66.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 4.7, -73.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 4.7, -73.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 1, -63.4 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 1, -63.4 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -26.3, -64.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -26.3, -64.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -11.3, -81.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -11.3, -81.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -8, -53.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -8, -53.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -12.6, -80 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -12.6, -80 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -17.1, -54 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -17.1, -54 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -4.8, -79.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -4.8, -79.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -10.6, -53.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -10.6, -53.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -17, -77 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -17, -77 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -2.2, -51.9 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -2.2, -51.9 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -6.7, -75.7 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -6.7, -75.7 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -0.2, -51.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -0.2, -51.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -11.1, -73.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -11.1, -73.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -5.4, -52 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -5.4, -52 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 2.2, -73.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 2.2, -73.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -1.5, -50.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -1.5, -50.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -6.1, -70.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -6.1, -70.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -19.5, -51.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -19.5, -51.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -12.5, -69.3 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -12.5, -69.3 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -4.9, -50.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -4.9, -50.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 0.3, -69.4 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 0.3, -69.4 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -3.6, -51.5 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -3.6, -51.5 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -15.3, -56 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -15.3, -56 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -4.4, -61.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -4.4, -61.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -5, -56 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -5, -56 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -10.2, -62.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -10.2, -62.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -10.2, -55.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -10.2, -55.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -7.6, -59.7 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -7.6, -59.7 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -7, -57.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -7, -57.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -5.7, -58 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -5.7, -58 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -4.4, -54.1 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -4.4, -54.1 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -4.4, -59.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -4.4, -59.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -6.9, -53.8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -6.9, -53.8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -4.3, -65.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -4.3, -65.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -3.6, -54.2 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -3.6, -54.2 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 1.5, -71.1 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 1.5, -71.1 , 0 );

setScaleKey( spep_2, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.01, 0.01 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.01, 0.01 );

setRotateKey( spep_2, 1, -3 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 47.7 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 54.4 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 54.4 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 55 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 55.6 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 55.6 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 56.2 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 56.2 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 57.6 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 59.4 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 63.1 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 63.1 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 58.4 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, 58.4 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -49.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -50.4 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -50.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -51.2 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -51.6 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -53.3 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -54.1 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -54.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 209 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_2 + 211 + OFFSET_X, 1, -50.2 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_2 + 213 + OFFSET_X, 1, -50.5 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -50.7 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -51.4 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -51.8 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -52 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -52.3 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -52.3 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -52.4 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -52.5 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -52.6 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -53.2 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -53.4 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -53.6 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -53.6 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -53.7 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -53.7 );

-- ** 音 ** --
--向かってくる
SE010 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 0, 1272, "",spep_2 + 62, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 0, SE011, 54 );
setPitch( spep_2 + 0, SE011, 600 );
setTimeStretch( SE011, 1.4, 30, 4 );
SE012 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE012, 54 );
setTimeStretch( SE012, 0.76, 30, 4 );
SE013 = playSeVer2( spep_2 + 4, 1277, "",spep_2 + 60, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 4, SE013, 153 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 16; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止    

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

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
--パンチ２
SE014 = playSeVer2( spep_2 + 20, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE014, 86 );
SE015 = playSeVer2( spep_2 + 20, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 20, 1414, "",spep_2 + 56, 0, 18, -1);
--連続パンチ
SE017 = playSeVer2( spep_2 + 42, 1414, "",spep_2 + 56, 0, 4, 0.6);
SE018 = playSeVer2( spep_2 + 42, 1187, "",spep_2 + 56, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 42, SE018, 60 );
SE019 = playSeVer2( spep_2 + 48, 1414, "",spep_2 + 62, 0, 4, 0.6);
stopSeIfDoubleSpeed( spep_2 + 48, SE019);
SE020 = playSeVer2( spep_2 + 48, 1187, "",spep_2 + 62, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 48, SE020, 60 );
stopSeIfDoubleSpeed( spep_2 + 48, SE020);
SE021 = playSeVer2( spep_2 + 54, 1414, "",spep_2 + 68, 0, 4, 0.6);
setSeVolumeByWorkId( spep_2 + 54, SE021, 85 );
SE022 = playSeVer2( spep_2 + 54, 1187, "",spep_2 + 68, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 54, SE022, 56 );
SE023 = playSeVer2( spep_2 + 60, 1414, "",spep_2 + 74, 0, 4, 0.6);
setSeVolumeByWorkId( spep_2 + 60, SE023, 84 );
stopSeIfDoubleSpeed( spep_2 + 60, SE023);
SE024 = playSeVer2( spep_2 + 60, 1187, "",spep_2 + 74, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 60, SE024, 50 );
stopSeIfDoubleSpeed( spep_2 + 60, SE024);
SE025 = playSeVer2( spep_2 + 66, 1414, "",spep_2 + 80, 0, 4, 0.6);
SE026 = playSeVer2( spep_2 + 66, 1187, "",spep_2 + 82, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 66, SE026, 66 );
SE027 = playSeVer2( spep_2 + 72, 1414, "",spep_2 + 86, 0, 4, 0.6);
setSeVolumeByWorkId( spep_2 + 72, SE027, 77 );
stopSeIfDoubleSpeed( spep_2 + 72, SE027);
SE028 = playSeVer2( spep_2 + 72, 1187, "",spep_2 + 88, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 72, SE028, 66 );
stopSeIfDoubleSpeed( spep_2 + 72, SE028);
SE029 = playSeVer2( spep_2 + 78, 1414, "",spep_2 + 102, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 78, SE029, 90 );
SE030 = playSeVer2( spep_2 + 78, 1187, "",spep_2 + 94, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 78, SE030, 66 );
SE031 = playSeVer2( spep_2 + 86, 1187, "",spep_2 + 118, 0, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 86, SE031, 72 );
--一度離れる
SE032 = playSeVer2( spep_2 + 106, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 106, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE033, 63 );
SE034 = playSeVer2( spep_2 + 106, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE034, 79 );
--蹴り飛ばす
SE035 = playSeVer2( spep_2 + 158, 1414, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 160, 1187, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 162, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 162, SE037, 84 );
--敵飛んでいく
SE038 = playSeVer2( spep_2 + 188, 1183, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 200, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 200, SE039, 74 );
--爆発１
SE040 = playSeVer2( spep_2 + 214, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE040, 60 );
SE041 = playSeVer2( spep_2 + 214, 1159, "",spep_2 + 290, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 214, SE041, 85 );
SE042 = playSeVer2( spep_2 + 214, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 214, SE042, 79 );
--爆発２
SE043 = playSeVer2( spep_2 + 284, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 284, SE043, 64 );
SE044 = playSeVer2( spep_2 + 284, 1159, "",spep_2 + 358, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 284, SE044, 80 );
--敵飛んでいく
SE045 = playSeVer2( spep_2 + 292, 1183, "",spep_2 + 376, 0, 16, -1);
setPitch( spep_2 + 292, SE045, -600 );
setTimeStretch( SE045, 0.6, 30, 4 );
--ラスト壁激突
SE046 = playSeVer2( spep_2 + 352, 1011, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 352, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 352, SE047, 46 );

-- ** おわり ** --
dealDamage( spep_2 + 300 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 418


end
