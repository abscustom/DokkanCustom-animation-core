-- 1029820: UR_超サイヤ人バーダック_必殺技：フューリーバイツ
-- sp_effect_a2_00251
-- sp2796

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163288 --開幕ダッシュ ef_001
SP_02 = 163289 --（空中捻り）→初撃叩きつけ→0距離気弾 ef_002
SP_03 = 163291 --（空中捻り）→初撃叩きつけ→0距離気弾(背景) ef_002_b

-- 敵側
SP_02r = 163290 --（空中捻り）→初撃叩きつけ→0距離気弾 ef_002_r
SP_03r = 163292 --（空中捻り）→初撃叩きつけ→0距離気弾(背景) ef_002_b_r

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕ダッシュ ef_001
------------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  -- 開幕ダッシュ ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 240, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 240, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 240, 515.5 , 0 );
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
SE001 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 162, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 160, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE005, 46 );
setTimeStretch( SE005, 2, 30, 4 );

--向かってくる
SE007 = playSeVer2( spep_0 + 44, 1019, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 108, 1019, "",spep_0 + 142, 0, 12, -1);

--ズームする
SE008 = playSeVer2( spep_0 + 54, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 136

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--回転して飛んでくる
SE011 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE011, 136 );
SE012 = playSeVer2( spep_1 + 82, 1388, "",spep_1 + 148, 0, 12, -1);
SE013 = playSeVer2( spep_1 + 82, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 82, SE013, 46 );
SE014 = playSeVer2( spep_1 + 88, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE014, 56 );

------------------------------------------------------
-- （空中捻り）→初撃叩きつけ→0距離気弾 ef_002
------------------------------------------------------
MAX_FRAME_2 = 430;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- （空中捻り）→初撃叩きつけ→0距離気弾 ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0f, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0 );
setEffAlphaKey( spep_2 + 0, finish_0f, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255 );
finish_0b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  -- （空中捻り）→初撃叩きつけ→0距離気弾(背景) ef_002_b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0 );
setEffAlphaKey( spep_2 + 0, finish_0b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 24 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 24 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 52 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 80 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 24 + OFFSET_X, 1, 447.2, -1353.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 447.2, -1353.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 431.8, -1310 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 431.8, -1310 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 415.5, -1263.7 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 415.5, -1263.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 398.2, -1214.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 398.2, -1214.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 379.9, -1162.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 379.9, -1162.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 360.6, -1108.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 360.6, -1108.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 340.3, -1050.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 340.3, -1050.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 319.1, -990.7 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 319.1, -990.7 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 296.9, -927.7 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 296.9, -927.7 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 273.7, -862 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 273.7, -862 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 249.5, -793.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 249.5, -793.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 224.4, -722.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 224.4, -722.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 198.3, -648.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 198.3, -648.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 171.2, -571.5 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 171.2, -571.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 30.9, -703.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 30.9, -703.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 60.5, -674 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 60.5, -674 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 31, -703.5 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 31, -703.5 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 60.5, -674 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 60.5, -674 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 31, -703.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 31, -703.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 36.9, -674 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 36.9, -674 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 22.1, -706.5 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 22.1, -706.5 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 54.6, -706.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 54.6, -706.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 51.6, -738.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 51.6, -738.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 249.3, -883.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 249.3, -883.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 420.4, -1060.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 420.4, -1060.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 615.1, -1205 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 615.1, -1205 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 786.2, -1379.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 786.2, -1379.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 980.9, -1523.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 980.9, -1523.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 4.6, 318.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 4.6, 318.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 4.6, 312.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 4.6, 312.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 4.6, 308 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 4.6, 308 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 4.6, 303.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 4.6, 303.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 4.6, 299.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 4.6, 299.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 4.6, 295.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 4.6, 295.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 4.6, 292 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 4.6, 292 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 4.6, 289 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 4.6, 289 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 4.6, 286.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 4.6, 286.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 4.6, 283.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 4.6, 283.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 4.6, 281.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 4.6, 281.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 4.6, 280.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 4.6, 280.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 4.6, 279 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 4.6, 279 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 4.6, 278.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 4.6, 278.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 4.6, 277.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 4.6, 277.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 4.6, 277.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 4.6, 277.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -35.9, 276.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -35.9, 276.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -35.9, 99.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -35.9, 99.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -35.9, -52.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -35.9, -52.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -35.9, -211.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -35.9, -211.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -35.9, -262 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -35.9, -262 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -35.9, -389 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -35.9, -389 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -35.9, -326.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -35.9, -326.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -35.9, -380.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -35.9, -380.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -35.9, -342.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -35.9, -342.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -35.9, -383.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -35.9, -383.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -35.9, -345.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -35.9, -345.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -35.9, -372.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -35.9, -372.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -35.9, -353.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -35.9, -353.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -35.9, -378.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -35.9, -378.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -35.9, -360.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -35.9, -360.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -35.9, -383.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -35.9, -383.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -35.9, -378.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -35.9, -378.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -35.9, -392.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -35.9, -392.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -35.9, -360.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -35.9, -360.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -35.9, -376.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -35.9, -376.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -35.9, -367.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -35.9, -367.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -35.9, -378.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -35.9, -378.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -35.9, -367.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -35.9, -367.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -35.9, -380.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -35.9, -380.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -139.4, -104 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -139.4, -104 , 0 );

setScaleKey( spep_2 + 24 + OFFSET_X, 1, 6.4, 6.4 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 6.4, 6.4 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.61, 2.61 );

setRotateKey( spep_2 + 24 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 58 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 58 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -65.2 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, -65.2 );

setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 0.12, 0.52, 0.7, 0.8 );
setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--回転して飛んでくる
SE016 = playSeVer2( spep_2 + 4, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE016, 62 );
SE017 = playSeVer2( spep_2 + 14, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE017, 71 );
SE018 = playSeVer2( spep_2 + 24, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE018, 75 );

--殴る
SE019 = playSeVer2( spep_2 + 20, 1189, "", 0, 0, 0, -1);	

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40;  -- エンドフェイズのフレーム数を置き換える
        
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 10, SE020, 0);
    
    pauseAll( SP_dodge, 67);
        
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    setBlendColor( SP_dodge+0, 1, 3, 0.0, 0.0, 0.0, 0.0 );

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);
    
    do return end
    else end
    
    -----------------------------
    --回避しなかった場合
    -----------------------------
    
-- ** 音 ** --
--殴る
SE021 = playSeVer2( spep_2 + 36, 1187, "", 0, 0, 0, -1);	

--敵飛んでいく
SE022 = playSeVer2( spep_2 + 46, 1121, "",spep_2 + 142, 0, 32, -1);

--掴んで地面に叩きつける
SE023 = playSeVer2( spep_2 + 92, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 110, 1159, "", 0, 0, 0, -1);

--気弾溜める
SE025 = playSeVer2( spep_2 + 148, 1157, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 148, 1158, "",spep_2 + 298, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 148, SE026, 55 );
SE027 = playSeVer2( spep_2 + 148, 1020, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 156, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE028, 76 );

--画面遷移
SE029 = playSeVer2( spep_2 + 202, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE029, 115 );

--爆発
SE030 = playSeVer2( spep_2 + 264, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE030, 80 );
SE031 = playSeVer2( spep_2 + 264, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 264, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE032, 72 );
SE033 = playSeVer2( spep_2 + 270, 1067, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_2 + 274, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE034, 50 );
SE035 = playSeVer2( spep_2 + 298, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE035, 50 );
SE036 = playSeVer2( spep_2 + 322, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE036, 50 );
SE037 = playSeVer2( spep_2 + 346, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 346, SE037, 50 );
SE038 = playSeVer2( spep_2 + 370, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 370, SE038, 50 );
SE039 = playSeVer2( spep_2 + 394, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE039, 50 );

-- ** おわり ** --
dealDamage( spep_2 + 330 );
endPhase( spep_2 + MAX_FRAME_2);  -- 430F

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;


------------------------------------------------------
-- 開幕ダッシュ ef_001
------------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  -- 開幕ダッシュ ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 240, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 240, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 240, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1121, "",spep_0 + 162, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 76 );
SE002 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 160, 0, 16, -1);
SE005 = playSeVer2( spep_0 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE005, 46 );
setTimeStretch( SE005, 2, 30, 4 );

--向かってくる
SE007 = playSeVer2( spep_0 + 44, 1019, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 108, 1019, "",spep_0 + 142, 0, 12, -1);

--ズームする
SE008 = playSeVer2( spep_0 + 54, 1072, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 136

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--回転して飛んでくる
SE011 = playSeVer2( spep_1 + 78, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE011, 136 );
SE012 = playSeVer2( spep_1 + 78, 1388, "",spep_1 + 148, 0, 12, -1);
SE013 = playSeVer2( spep_1 + 78, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 78, SE013, 46 );
SE014 = playSeVer2( spep_1 + 88, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE014, 56 );

------------------------------------------------------
-- （空中捻り）→初撃叩きつけ→0距離気弾 ef_002
------------------------------------------------------
MAX_FRAME_2 = 430;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  -- （空中捻り）→初撃叩きつけ→0距離気弾 ef_002_r
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0f, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0f, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0 );
setEffAlphaKey( spep_2 + 0, finish_0f, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255 );
finish_0b = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  -- （空中捻り）→初撃叩きつけ→0距離気弾(背景) ef_002_r_b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0 );
setEffAlphaKey( spep_2 + 0, finish_0b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 24 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 24 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 52 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 80 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 160 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 24 + OFFSET_X, 1, 447.2, -1353.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 447.2, -1353.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 431.8, -1310 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 431.8, -1310 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 415.5, -1263.7 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 415.5, -1263.7 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 398.2, -1214.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 398.2, -1214.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 379.9, -1162.8 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 379.9, -1162.8 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 360.6, -1108.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 360.6, -1108.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 340.3, -1050.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 340.3, -1050.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 319.1, -990.7 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 319.1, -990.7 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 296.9, -927.7 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 296.9, -927.7 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 273.7, -862 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 273.7, -862 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 249.5, -793.6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 249.5, -793.6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 224.4, -722.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 224.4, -722.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 198.3, -648.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 198.3, -648.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 171.2, -571.5 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 171.2, -571.5 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 30.9, -703.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 30.9, -703.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 60.5, -674 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 60.5, -674 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 31, -703.5 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 31, -703.5 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 60.5, -674 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 60.5, -674 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 31, -703.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 31, -703.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 36.9, -674 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 36.9, -674 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 22.1, -706.5 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 22.1, -706.5 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 54.6, -706.5 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 54.6, -706.5 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 51.6, -738.9 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 51.6, -738.9 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 249.3, -883.5 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 249.3, -883.5 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 420.4, -1060.5 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 420.4, -1060.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 615.1, -1205 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 615.1, -1205 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 786.2, -1379.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 786.2, -1379.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 980.9, -1523.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 980.9, -1523.6 ,0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -4.6, 318.1 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -4.6, 318.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -4.6, 312.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -4.6, 312.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -4.6, 308 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -4.6, 308 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -4.6, 303.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -4.6, 303.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -4.6, 299.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -4.6, 299.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -4.6, 295.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -4.6, 295.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -4.6, 292 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -4.6, 292 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -4.6, 289 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -4.6, 289 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -4.6, 286.2 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -4.6, 286.2 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -4.6, 283.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -4.6, 283.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -4.6, 281.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -4.6, 281.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -4.6, 280.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -4.6, 280.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -4.6, 279 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -4.6, 279 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -4.6, 278.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -4.6, 278.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -4.6, 277.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -4.6, 277.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -4.6, 277.3 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -4.6, 277.3 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 35.9, 276.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 35.9, 276.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 35.9, 99.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 35.9, 99.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 35.9, -52.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 35.9, -52.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 35.9, -211.5 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 35.9, -211.5 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 35.9, -262 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 35.9, -262 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 35.9, -389 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 35.9, -389 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 35.9, -326.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 35.9, -326.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 35.9, -380.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 35.9, -380.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 35.9, -342.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 35.9, -342.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 35.9, -383.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 35.9, -383.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 35.9, -345.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 35.9, -345.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 35.9, -372.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 35.9, -372.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 35.9, -353.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 35.9, -353.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 35.9, -378.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 35.9, -378.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 35.9, -360.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 35.9, -360.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 35.9, -383.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 35.9, -383.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 35.9, -378.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 35.9, -378.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 35.9, -392.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 35.9, -392.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 35.9, -360.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 35.9, -360.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 35.9, -376.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 35.9, -376.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 35.9, -367.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 35.9, -367.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 35.9, -378.5 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 35.9, -378.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 35.9, -367.1 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 35.9, -367.1 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 35.9, -380.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 35.9, -380.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 139.4, -104 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 139.4, -104 , 0 );

setScaleKey( spep_2 + 24 + OFFSET_X, 1, 6.4, 6.4 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 6.4, 6.4 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.61, 2.61 );

setRotateKey( spep_2 + 24 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -81 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -58 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -58 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 65.2 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 65.2 );

setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 0.12, 0.52, 0.7, 0.8 );
setBlendColor( spep_2 + 214 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--回転して飛んでくる
SE016 = playSeVer2( spep_2 + 4, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE016, 62 );
SE017 = playSeVer2( spep_2 + 14, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE017, 71 );
SE018 = playSeVer2( spep_2 + 24, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE018, 75 );

--殴る
SE019 = playSeVer2( spep_2 + 20, 1189, "", 0, 0, 0, -1);	

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40;  -- エンドフェイズのフレーム数を置き換える
        
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 10, SE020, 0);
    
    pauseAll( SP_dodge, 67);
        
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    setBlendColor( SP_dodge+0, 1, 3, 0.0, 0.0, 0.0, 0.0 );

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);
    
    do return end
    else end
    
    -----------------------------
    --回避しなかった場合
    -----------------------------
    
-- ** 音 ** --
--殴る
SE021 = playSeVer2( spep_2 + 36, 1187, "", 0, 0, 0, -1);	

--敵飛んでいく
SE022 = playSeVer2( spep_2 + 46, 1121, "",spep_2 + 142, 0, 32, -1);

--掴んで地面に叩きつける
SE023 = playSeVer2( spep_2 + 92, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 110, 1159, "", 0, 0, 0, -1);

--気弾溜める
SE025 = playSeVer2( spep_2 + 148, 1157, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 148, 1158, "",spep_2 + 298, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 148, SE026, 55 );
SE027 = playSeVer2( spep_2 + 148, 1020, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 156, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE028, 76 );

--画面遷移
SE029 = playSeVer2( spep_2 + 202, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 202, SE029, 115 );

--爆発
SE030 = playSeVer2( spep_2 + 264, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE030, 80 );
SE031 = playSeVer2( spep_2 + 264, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 264, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 264, SE032, 72 );
SE033 = playSeVer2( spep_2 + 270, 1067, "", 0, 0, 0, -1);

--オーラ
SE034 = playSeVer2( spep_2 + 274, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 274, SE034, 50 );
SE035 = playSeVer2( spep_2 + 298, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 298, SE035, 50 );
SE036 = playSeVer2( spep_2 + 322, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 322, SE036, 50 );
SE037 = playSeVer2( spep_2 + 346, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 346, SE037, 50 );
SE038 = playSeVer2( spep_2 + 370, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 370, SE038, 50 );
SE039 = playSeVer2( spep_2 + 394, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 394, SE039, 50 );

-- ** おわり ** --
dealDamage( spep_2 + 330 );
endPhase( spep_2 + MAX_FRAME_2);  -- 430F

end
