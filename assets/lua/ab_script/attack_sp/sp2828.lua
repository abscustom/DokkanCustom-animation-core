-- 4030540: LR_孫悟空+フリーザ(最終形態)(天使)_超必殺技：恨みっこなしの一発
-- sp_effect_b1_00310
-- sp2828

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163656;  -- 開幕,瞬間移動から波の間を移動 ef_001
SP_001b = 163657;  -- 敵を挟んだ背景 ef_001b
SP_002 = 163658;  -- アップから接近して一撃 ef_002
SP_002b = 163659;  -- 敵を挟んだ背景 ef_002b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕,瞬間移動から波の間を移動 ef_001
------------------------------------------------------
MAX_FRAME_0 = 460;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕,瞬間移動から波の間を移動 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 敵を挟んだ背景 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 302;

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 0 );

setMoveKey( spep_0 + 0 , 1, -225.8, -30.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -227.8, -30.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -227.8, -30.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -229.7, -30.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -229.7, -30.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -231.3, -30.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -231.3, -30.7 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -232.8, -30.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -232.8, -30.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -234.3, -30.9 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -234.3, -30.9 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -235.7, -30.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -235.7, -30.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -237, -31 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -237, -31 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -238.3, -31 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -238.3, -31 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -239.5, -31.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -239.5, -31.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -240.7, -31.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -240.7, -31.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -241.8, -31.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -241.8, -31.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -242.9, -31.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -242.9, -31.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -244, -31.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -244, -31.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -245.1, -31.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -245.1, -31.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -246.1, -31.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -246.1, -31.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -247.1, -31.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -247.1, -31.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -248, -31.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -248, -31.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -249, -31.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -249, -31.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -249.9, -31.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -249.9, -31.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -250.8, -31.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -250.8, -31.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -251.6, -31.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -251.6, -31.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -252.4, -31.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -252.4, -31.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -253.2, -31.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -253.2, -31.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -254, -31.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -254, -31.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -254.7, -31.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -254.7, -31.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -255.4, -31.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -255.4, -31.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -256.1, -31.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -256.1, -31.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -256.7, -31.8 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -256.7, -31.8 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -257.4, -31.9 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -257.4, -31.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -258, -31.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -258, -31.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -258.6, -31.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -258.6, -31.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -259.2, -31.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -259.2, -31.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -259.7, -32 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -259.7, -32 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -260.3, -32 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -260.3, -32 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -260.8, -32 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -260.8, -32 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -261.3, -32 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -261.3, -32 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -261.8, -32 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -261.8, -32 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -262.3, -32.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -262.3, -32.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -262.7, -32.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -262.7, -32.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -263.2, -32.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -263.2, -32.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -263.6, -32.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -263.6, -32.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -263.9, -32.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -263.9, -32.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -264.2, -32.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -264.2, -32.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -264.3, -32.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -264.3, -32.2 , 0 );

setScaleKey( spep_0 + 0 , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.44, 0.44 );

setRotateKey( spep_0 + 0 , 1, -6.7 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -6.7 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 276, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 54, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE003, 63 );
SE004 = playSeVer2( spep_0 + 58, 1109, "", 0, 0, 0, -1);

--水飛沫あがる
SE005 = playSeVer2( spep_0 + 68, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE005, 158 );
SE006 = playSeVer2( spep_0 + 82, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE006, 158 );
setPitch( spep_0 + 82, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );
SE007 = playSeVer2( spep_0 + 98, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 78 );
SE008 = playSeVer2( spep_0 + 102, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE008, 170 );
setPitch( spep_0 + 102, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );
SE009 = playSeVer2( spep_0 + 108, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE009, 69 );
SE010 = playSeVer2( spep_0 + 124, 1166, "",spep_0 + 342, 0, 100, -1);
SE011 = playSeVer2( spep_0 + 134, 1024, "", 0, 0, 0, -1);

--瞬間移動
SE012 = playSeVer2( spep_0 + 182, 1245, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 186, 1109, "", 0, 0, 0, -1);

--気ダメ
SE014 = playSeVer2( spep_0 + 222, 1179, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 232, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 232, 1011, "", 0, 0, 0, -1);

--向かっていく
SE017 = playSeVer2( spep_0 + 288, 1011, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 288, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE018, 136 );

--オーラ音
SE019 = playSeVer2( spep_0 + 294, 1314, "",spep_0 + 480, 0, 18, -1);
SE020 = playSeVer2( spep_0 + 294, 1477, "",spep_0 + 470, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 294, SE020, 68 );
SE021 = playSeVer2( spep_0 + 294, 1356, "",spep_0 + 490, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 294, SE021, 73 );
setPitch( spep_0 + 294, SE021, 500 );
setTimeStretch( SE021, 1.33, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 460

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ音
SE023 = playSeVer2( spep_1 + 76, 1356, "",spep_1 + 240, 6, 22, -1);
setSeVolumeByWorkId( spep_1 + 76, SE023, 71 );
setStartTimeMs( SE023,  3267 );
setPitch( spep_1 + 80, SE023, 500 );
setTimeStretch( SE023, 1.33, 30, 4 );
SE025 = playSeVer2( spep_1 + 78, 1477, "",spep_1 + 232, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 78, SE025, 68 );
SE026 = playSeVer2( spep_1 + 78, 1314, "",spep_1 + 240, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 78, SE026, 82 );

------------------------------------------------------
-- アップから接近して一撃 ef_002
------------------------------------------------------
MAX_FRAME_2 = 410;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- アップから接近して一撃 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 敵を挟んだ背景 ef_002b
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
setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 109 );
changeAnime( spep_2 + 240 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, -58.2, 263.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -58.2, 263.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -58.1, 263.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -58.1, 263.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -71.4, 269.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -71.4, 269.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -62.9, 225.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -62.9, 225.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -46.8, 287.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -46.8, 287.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -44.8, 242.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -44.8, 242.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -60.3, 295.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -60.3, 295.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -44.5, 240.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -44.5, 240.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -64.1, 276.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -64.1, 276.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -56.7, 253.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -56.7, 253.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -58.6, 269.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -58.6, 269.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -41.1, 261.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -41.1, 261.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -65.6, 298.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -65.6, 298.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -58.9, 262.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -58.9, 262.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -49.3, 298.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -49.3, 298.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -53.6, 267.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -53.6, 267.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -55.4, 282 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -55.4, 282 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -61.7, 261.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -61.7, 261.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -58.2, 276.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -58.2, 276.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -39.6, 265.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -39.6, 265.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -63.7, 273.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -63.7, 273.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -50.5, 241.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -50.5, 241.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -53.3, 275.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -53.3, 275.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -50.4, 245.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -50.4, 245.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -63.5, 273.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -63.5, 273.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -44.6, 234.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -44.6, 234.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -65.8, 295.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -65.8, 295.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -53.3, 241.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -53.3, 241.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -49.4, 270.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -49.4, 270.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -57.8, 255.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -57.8, 255.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -61.7, 281.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -61.7, 281.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -50.5, 241.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -50.5, 241.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -56.2, 276 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -56.2, 276 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -52.6, 244.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -52.6, 244.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -65.2, 275.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -65.2, 275.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -44.9, 235.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -44.9, 235.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -42.2, 290.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -42.2, 290.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -62.9, 296.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -62.9, 296.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -55.7, 243.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -55.7, 243.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -47.6, 272.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -47.6, 272.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -56.6, 257.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -56.6, 257.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 246.4, -170.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 246.4, -170.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 243.1, -161.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 243.1, -161.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 244.1, -192.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 244.1, -192.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 254.5, -168.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 254.5, -168.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 249.9, -197 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 249.9, -197 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 267.6, -176.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 267.6, -176.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 272, -201.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 272, -201.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 266.5, -181.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 266.5, -181.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 283.5, -208.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 283.5, -208.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 281.4, -190.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 281.4, -190.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 296, -212.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 296, -212.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 297, -202 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 297, -202 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 309.3, -222.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 309.3, -222.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 309.7, -209 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 309.7, -209 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 316, -229.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 316, -229.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 316.1, -230.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 316.1, -230.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 316.2, -230.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 316.2, -230.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 316.3, -231 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 316.3, -231 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 316.4, -231.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 316.4, -231.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 316.4, -231.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 316.4, -231.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 316.5, -232.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 316.5, -232.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 316.6, -232.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 316.6, -232.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 316.7, -233.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 316.7, -233.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 316.8, -233.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 316.8, -233.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 316.8, -234.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 316.8, -234.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 316.9, -234.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 316.9, -234.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 317, -235 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 317, -235 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 317.1, -235.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 317.1, -235.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 317.2, -235.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 317.2, -235.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 317.2, -236.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 317.2, -236.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 317.3, -236.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 317.3, -236.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 317.4, -237.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 317.4, -237.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 317.5, -237.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 317.5, -237.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 317.6, -238.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 317.6, -238.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 317.6, -238.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 317.6, -238.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 317.7, -239.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 317.7, -239.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 317.8, -239.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 317.8, -239.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 317.9, -240 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 317.9, -240 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 318, -240.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 318, -240.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 318, -240.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 318, -240.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 318.1, -241.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 318.1, -241.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 318.2, -241.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 318.2, -241.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 318.3, -242.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 318.3, -242.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 318.4, -242.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 318.4, -242.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 318.4, -243.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 318.4, -243.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 318.5, -243.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 318.5, -243.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 318.6, -244.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 318.6, -244.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 318.7, -244.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 318.7, -244.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 318.8, -245 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 318.8, -245 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 318.8, -245.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 318.8, -245.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 318.9, -245.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 318.9, -245.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 319, -246.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 319, -246.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 319.1, -246.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 319.1, -246.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 319.2, -247.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 319.2, -247.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 319.2, -247.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 319.2, -247.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 319.3, -248.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 319.3, -248.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 319.4, -248.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 319.4, -248.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 319.5, -249 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 319.5, -249 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 319.6, -249.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 319.6, -249.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 319.6, -249.9 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 319.6, -249.9 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 319.7, -250.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 319.7, -250.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 319.8, -250.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 319.8, -250.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 319.9, -251.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 319.9, -251.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 320, -251.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 320, -251.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 320, -252.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 320, -252.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 320.1, -252.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 320.1, -252.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 320.2, -253.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 320.2, -253.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 320.3, -253.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 320.3, -253.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 320.4, -254 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 320.4, -254 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 320.4, -254.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 320.4, -254.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 320.5, -254.9 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 320.5, -254.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 320.6, -255.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 320.6, -255.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 320.7, -255.8 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 320.7, -255.8 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 320.8, -256.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 320.8, -256.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 320.8, -256.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 320.8, -256.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 320.9, -257.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 320.9, -257.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 321, -257.6 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 321, -257.6 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 321.1, -258.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 321.1, -258.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 321.2, -258.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 321.2, -258.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 321.2, -259 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 321.2, -259 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 321.3, -259.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 321.3, -259.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 321.4, -259.9 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 321.4, -259.9 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 321.5, -260.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 321.5, -260.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 321.5, -260.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 321.5, -260.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 321.6, -261.2 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 321.6, -261.2 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 321.7, -261.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 321.7, -261.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 321.8, -262.1 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -15.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, -15.5 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -13.5 );

setBlendColor( spep_2 + 120 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 239 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 240 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_2 + 412 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--振りかぶる
SE027 = playSeVer2( spep_2 + 24, 1116, "",spep_2 + 66, 0, 18, -1);
SE028 = playSeVer2( spep_2 + 30, 1004, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_2 + 42, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE029, 83 );
SE030 = playSeVer2( spep_2 + 42, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE030, 37 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--向かってくる
SE031 = playSeVer2( spep_2 + 78, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE031, 182 );

--パンチヒット
SE032 = playSeVer2( spep_2 + 106, 1120, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 106, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 138, 1188, "", 0, 0, 0, -1);

--ラスト余韻
SE035 = playSeVer2( spep_2 + 172, 1278, "", 0, 82, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE035, 47 );
setStartTimeMs( SE035,  367 );
SE036 = playSeVer2( spep_2 + 216, 1120, "", 0, 14, 0, -1);
SE037 = playSeVer2( spep_2 + 216, 8, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 216, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE038, 25 );

--オーラ音
SE039 = playSeVer2( spep_2 + 222, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE039, 136 );

-- ** おわり ** --
dealDamage( spep_2 + 278 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 410

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕,瞬間移動から波の間を移動 ef_001
------------------------------------------------------
MAX_FRAME_0 = 460;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕,瞬間移動から波の間を移動 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 敵を挟んだ背景 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 302;

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 , 1, 100 );

setMoveKey( spep_0 + 0 , 1, 225.8, -30.5 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 227.8, -30.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 227.8, -30.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 229.7, -30.7 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 229.7, -30.7 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 231.3, -30.7 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 231.3, -30.7 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 232.8, -30.8 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 232.8, -30.8 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 234.3, -30.9 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 234.3, -30.9 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 235.7, -30.9 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 235.7, -30.9 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 237, -31 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 237, -31 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 238.3, -31 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, 238.3, -31 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 239.5, -31.1 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 239.5, -31.1 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 240.7, -31.1 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, 240.7, -31.1 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 241.8, -31.2 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 241.8, -31.2 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 242.9, -31.2 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 242.9, -31.2 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 244, -31.3 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 244, -31.3 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 245.1, -31.3 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 245.1, -31.3 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 246.1, -31.4 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 246.1, -31.4 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 247.1, -31.4 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 247.1, -31.4 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 248, -31.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 248, -31.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 249, -31.5 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 249, -31.5 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 249.9, -31.5 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 249.9, -31.5 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 250.8, -31.6 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 250.8, -31.6 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 251.6, -31.6 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 251.6, -31.6 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 252.4, -31.6 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 252.4, -31.6 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 253.2, -31.7 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 253.2, -31.7 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 254, -31.7 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 254, -31.7 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 254.7, -31.7 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 254.7, -31.7 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 255.4, -31.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, 255.4, -31.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, 256.1, -31.8 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 256.1, -31.8 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 256.7, -31.8 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 256.7, -31.8 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 257.4, -31.9 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 257.4, -31.9 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 258, -31.9 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 258, -31.9 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 258.6, -31.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 258.6, -31.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 259.2, -31.9 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 259.2, -31.9 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 259.7, -32 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 259.7, -32 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 260.3, -32 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 260.3, -32 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 260.8, -32 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 260.8, -32 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 261.3, -32 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 261.3, -32 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 261.8, -32 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 261.8, -32 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 262.3, -32.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 262.3, -32.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 262.7, -32.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 262.7, -32.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 263.2, -32.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 263.2, -32.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 263.6, -32.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 263.6, -32.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 263.9, -32.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 263.9, -32.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 264.2, -32.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 264.2, -32.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 264.3, -32.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 264.3, -32.2 , 0 );

setScaleKey( spep_0 + 0 , 1, 0.44, 0.44 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.44, 0.44 );

setRotateKey( spep_0 + 0 , 1, 6.7 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 6.7 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 276, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 54, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE003, 63 );
SE004 = playSeVer2( spep_0 + 58, 1109, "", 0, 0, 0, -1);

--水飛沫あがる
SE005 = playSeVer2( spep_0 + 68, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE005, 158 );
SE006 = playSeVer2( spep_0 + 82, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE006, 158 );
setPitch( spep_0 + 82, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );
SE007 = playSeVer2( spep_0 + 98, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 78 );
SE008 = playSeVer2( spep_0 + 102, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE008, 170 );
setPitch( spep_0 + 102, SE008, -500 );
setTimeStretch( SE008, 0.67, 30, 4 );
SE009 = playSeVer2( spep_0 + 108, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE009, 69 );
SE010 = playSeVer2( spep_0 + 124, 1166, "",spep_0 + 342, 0, 100, -1);
SE011 = playSeVer2( spep_0 + 134, 1024, "", 0, 0, 0, -1);

--瞬間移動
SE012 = playSeVer2( spep_0 + 182, 1245, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 186, 1109, "", 0, 0, 0, -1);

--気ダメ
SE014 = playSeVer2( spep_0 + 222, 1179, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 232, 1035, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 232, 1011, "", 0, 0, 0, -1);

--向かっていく
SE017 = playSeVer2( spep_0 + 288, 1011, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 288, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE018, 136 );

--オーラ音
SE019 = playSeVer2( spep_0 + 294, 1314, "",spep_0 + 480, 0, 18, -1);
SE020 = playSeVer2( spep_0 + 294, 1477, "",spep_0 + 470, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 294, SE020, 68 );
SE021 = playSeVer2( spep_0 + 294, 1356, "",spep_0 + 490, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 294, SE021, 73 );
setPitch( spep_0 + 294, SE021, 500 );
setTimeStretch( SE021, 1.33, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 460

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ音
SE023 = playSeVer2( spep_1 + 76, 1356, "",spep_1 + 240, 6, 22, -1);
setSeVolumeByWorkId( spep_1 + 76, SE023, 71 );
setStartTimeMs( SE023,  3267 );
setPitch( spep_1 + 80, SE023, 500 );
setTimeStretch( SE023, 1.33, 30, 4 );
SE025 = playSeVer2( spep_1 + 78, 1477, "",spep_1 + 232, 0, 22, -1);
setSeVolumeByWorkId( spep_1 + 78, SE025, 68 );
SE026 = playSeVer2( spep_1 + 78, 1314, "",spep_1 + 240, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 78, SE026, 82 );

------------------------------------------------------
-- アップから接近して一撃 ef_002
------------------------------------------------------
MAX_FRAME_2 = 410;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- アップから接近して一撃 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 敵を挟んだ背景 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 412 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 9 );
changeAnime( spep_2 + 240 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, 58.2, 263.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 58.2, 263.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 58.1, 263.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 58.1, 263.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 71.4, 269.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 71.4, 269.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 62.9, 225.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 62.9, 225.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 46.8, 287.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 46.8, 287.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 44.8, 242.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 44.8, 242.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 60.3, 295.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 60.3, 295.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 44.5, 240.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 44.5, 240.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 64.1, 276.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 64.1, 276.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 56.7, 253.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 56.7, 253.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 58.6, 269.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 58.6, 269.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 41.1, 261.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 41.1, 261.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 65.6, 298.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 65.6, 298.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 58.9, 262.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 58.9, 262.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 49.3, 298.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 49.3, 298.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 53.6, 267.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 53.6, 267.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 55.4, 282 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 55.4, 282 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 61.7, 261.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 61.7, 261.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 58.2, 276.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 58.2, 276.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 39.6, 265.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 39.6, 265.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 63.7, 273.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 63.7, 273.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 50.5, 241.8 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 50.5, 241.8 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 53.3, 275.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 53.3, 275.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 50.4, 245.7 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 50.4, 245.7 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 63.5, 273.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 63.5, 273.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 44.6, 234.6 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 44.6, 234.6 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 65.8, 295.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 65.8, 295.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 53.3, 241.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 53.3, 241.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 49.4, 270.6 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 49.4, 270.6 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 57.8, 255.5 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 57.8, 255.5 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 61.7, 281.1 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 61.7, 281.1 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 50.5, 241.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 50.5, 241.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 56.2, 276 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 56.2, 276 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 52.6, 244.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 52.6, 244.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 65.2, 275.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 65.2, 275.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 44.9, 235.5 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 44.9, 235.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 42.2, 290.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 42.2, 290.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 62.9, 296.2 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 62.9, 296.2 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 55.7, 243.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 55.7, 243.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 47.6, 272.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 47.6, 272.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 56.6, 257.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 56.6, 257.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -246.4, -170.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -246.4, -170.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -243.1, -161.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -243.1, -161.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -244.1, -192.7 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -244.1, -192.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -254.5, -168.3 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -254.5, -168.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -249.9, -197 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -249.9, -197 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -267.6, -176.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -267.6, -176.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -272, -201.9 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -272, -201.9 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -266.5, -181.2 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -266.5, -181.2 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -283.5, -208.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -283.5, -208.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -281.4, -190.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -281.4, -190.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -296, -212.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -296, -212.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -297, -202 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -297, -202 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -309.3, -222.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -309.3, -222.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -309.7, -209 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -309.7, -209 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -316, -229.6 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -316, -229.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -316.1, -230.1 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -316.1, -230.1 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -316.2, -230.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -316.2, -230.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -316.3, -231 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -316.3, -231 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -316.4, -231.4 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -316.4, -231.4 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -316.4, -231.9 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -316.4, -231.9 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -316.5, -232.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -316.5, -232.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -316.6, -232.8 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -316.6, -232.8 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -316.7, -233.2 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -316.7, -233.2 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -316.8, -233.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -316.8, -233.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -316.8, -234.1 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -316.8, -234.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -316.9, -234.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -316.9, -234.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -317, -235 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -317, -235 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -317.1, -235.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -317.1, -235.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -317.2, -235.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -317.2, -235.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -317.2, -236.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -317.2, -236.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -317.3, -236.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -317.3, -236.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -317.4, -237.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -317.4, -237.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -317.5, -237.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -317.5, -237.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -317.6, -238.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -317.6, -238.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -317.6, -238.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -317.6, -238.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -317.7, -239.1 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -317.7, -239.1 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -317.8, -239.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -317.8, -239.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -317.9, -240 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -317.9, -240 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -318, -240.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -318, -240.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -318, -240.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -318, -240.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -318.1, -241.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -318.1, -241.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -318.2, -241.8 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -318.2, -241.8 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -318.3, -242.3 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -318.3, -242.3 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -318.4, -242.7 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -318.4, -242.7 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -318.4, -243.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -318.4, -243.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -318.5, -243.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -318.5, -243.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -318.6, -244.1 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -318.6, -244.1 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -318.7, -244.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -318.7, -244.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -318.8, -245 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -318.8, -245 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -318.8, -245.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -318.8, -245.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -318.9, -245.9 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -318.9, -245.9 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -319, -246.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -319, -246.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -319.1, -246.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -319.1, -246.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -319.2, -247.2 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -319.2, -247.2 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -319.2, -247.7 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -319.2, -247.7 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -319.3, -248.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -319.3, -248.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -319.4, -248.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -319.4, -248.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -319.5, -249 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -319.5, -249 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -319.6, -249.5 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -319.6, -249.5 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -319.6, -249.9 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -319.6, -249.9 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -319.7, -250.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -319.7, -250.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -319.8, -250.8 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -319.8, -250.8 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -319.9, -251.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -319.9, -251.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -320, -251.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -320, -251.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -320, -252.2 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -320, -252.2 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -320.1, -252.6 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -320.1, -252.6 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -320.2, -253.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -320.2, -253.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -320.3, -253.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -320.3, -253.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -320.4, -254 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -320.4, -254 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -320.4, -254.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -320.4, -254.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -320.5, -254.9 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -320.5, -254.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -320.6, -255.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -320.6, -255.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -320.7, -255.8 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -320.7, -255.8 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -320.8, -256.3 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -320.8, -256.3 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -320.8, -256.7 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -320.8, -256.7 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -320.9, -257.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -320.9, -257.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -321, -257.6 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -321, -257.6 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -321.1, -258.1 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -321.1, -258.1 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -321.2, -258.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -321.2, -258.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -321.2, -259 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -321.2, -259 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -321.3, -259.4 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -321.3, -259.4 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -321.4, -259.9 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -321.4, -259.9 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -321.5, -260.3 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -321.5, -260.3 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -321.5, -260.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -321.5, -260.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -321.6, -261.2 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -321.6, -261.2 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -321.7, -261.7 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -321.7, -261.7 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -321.8, -262.1 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 249 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 255 + OFFSET_X, 1, 15.9 );
setRotateKey( spep_2 + 256 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 261 + OFFSET_X, 1, 15.8 );
setRotateKey( spep_2 + 262 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_2 + 267 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_2 + 268 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 281 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_2 + 282 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 287 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_2 + 288 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 15.3 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, 13.5 );

setBlendColor( spep_2 + 120 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 239 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 1.0 );
setBlendColor( spep_2 + 240 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );
setBlendColor( spep_2 + 412 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--振りかぶる
SE027 = playSeVer2( spep_2 + 24, 1116, "",spep_2 + 66, 0, 18, -1);
SE028 = playSeVer2( spep_2 + 30, 1004, "", 0, 0, 0, -1);

--向かってくる
SE029 = playSeVer2( spep_2 + 42, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE029, 83 );
SE030 = playSeVer2( spep_2 + 42, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 42, SE030, 37 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE023, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--向かってくる
SE031 = playSeVer2( spep_2 + 78, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE031, 182 );

--パンチヒット
SE032 = playSeVer2( spep_2 + 106, 1120, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 106, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 138, 1188, "", 0, 0, 0, -1);

--ラスト余韻
SE035 = playSeVer2( spep_2 + 172, 1278, "", 0, 82, 0, -1);
setSeVolumeByWorkId( spep_2 + 172, SE035, 47 );
setStartTimeMs( SE035,  367 );
SE036 = playSeVer2( spep_2 + 216, 1120, "", 0, 14, 0, -1);
SE037 = playSeVer2( spep_2 + 216, 8, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 216, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE038, 25 );

--オーラ音
SE039 = playSeVer2( spep_2 + 222, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE039, 136 );

-- ** おわり ** --
dealDamage( spep_2 + 278 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 410

end
