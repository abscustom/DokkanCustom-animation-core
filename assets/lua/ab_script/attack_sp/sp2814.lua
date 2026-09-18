-- 1030570: LR_超サイヤ人ゴッドSSベジータ(進化)_ユニット超必殺技：ライバル同士の共闘
-- sp_effect_a1_00473
-- sp2814

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163558;  -- ベジータと悟空立ち ef_001
SP_02 = 163559;  -- 正面突進〜フィニッシュ ef_002
SP_02b = 163560;  -- 正面突進〜フィニッシュ ef_002b

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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 0);

------------------------------------------------------
-- ベジータと悟空立ち ef_001
------------------------------------------------------
MAX_FRAME_0 = 100;
--[[
-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- ベジータと悟空立ち ef_001
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
spep_x = spep_0 + 6;

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
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 81 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 132, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 133 );
SE003 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 132, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 38 );
SE004 = playSeVer2( spep_0 + 0, 1474, "",spep_0 + 132, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 164 );
SE005 = playSeVer2( spep_0 + 0, 1227, "",spep_0 + 134, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 68 );

--瞬間移動
SE007 = playSeVer2( spep_0 + 76, 1109, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 76, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE008, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 100

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0) -2;

-- ** 音 ** --
--ベジータ顔アップ
SE010 = playSeVer2( spep_1 + 78, 1336, "",spep_2 + 90, 16, 26, -1);
setSeVolumeByWorkId( spep_1 + 78, SE010, 77 );
setStartTimeMs( SE010,  1000 );
setPitch( spep_1 + 78, SE010, 600 );
setTimeStretch( SE010, 1.4, 30, 4 );
SE011 = playSeVer2( spep_1 + 84, 1264, "",spep_2 + 172, 0, 88, -1);
setSeVolumeByWorkId( spep_1 + 84, SE011, 71 );

------------------------------------------------------
-- 正面突進〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 1300;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 2, SP_02, 0x100, -1, 0, 0, 0 );  -- 正面突進〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 2, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 2, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 2, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 2, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
--[[
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 正面突進〜フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 60 + OFFSET_X, 1, 100 );

setMoveKey( spep_2 + 60 + OFFSET_X, 1, 665.1, -60.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 665.1, -60.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 664.9, -60.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 664.9, -60.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 662.7, -60.8 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 662.7, -60.8 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 652.7, -60.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 652.7, -60.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 625.9, -60.8 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 625.9, -60.8 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 569.5, -60.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 569.5, -60.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 466.9, -60.8 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 466.9, -60.8 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 364.2, -60.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 364.2, -60.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 307.8, -60.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 307.8, -60.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 281, -60.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 281, -60.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 271, -60.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 271, -60.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 268.8, -60.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 268.8, -60.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 268.6, -60.8 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 268.6, -60.8 , 0 );

setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 3.3, 3.3 );

setRotateKey( spep_2 + 60 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_2 + 94 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 152 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 94 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 94 + OFFSET_X, 1, 207.7, -60 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 207.7, -60 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 210.7, -55.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 210.7, -55.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 220.1, -52.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 220.1, -52.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 222.6, -49.2 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 222.6, -49.2 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 214.9, -36 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 214.9, -36 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 233.4, -39.3 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 233.4, -39.3 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 212.6, -37.2 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 212.6, -37.2 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 229, -37.5 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 229, -37.5 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 219.3, -35.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 219.3, -35.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 230, -29.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 230, -29.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 222.5, -33.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 222.5, -33.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 230.3, -28.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 230.3, -28.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 225.2, -32.4 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 225.2, -32.4 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 230.3, -26.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 230.3, -26.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 228.8, -30 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 228.8, -30 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 227.9, -27.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 227.9, -27.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 229.1, -29.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 229.1, -29.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 247.4, -47.8 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 247.4, -47.8 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 250.4, -63.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 250.4, -63.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 262.6, -93.6 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 262.6, -93.6 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 271.8, -105.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 271.8, -105.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 277.9, -105.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 277.9, -105.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 280.9, -102.7 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 280.9, -102.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 287, -96.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 287, -96.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 250.4, -32.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 250.4, -32.6 , 0 );

setScaleKey( spep_2 + 94 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.5, 3.5 );

setRotateKey( spep_2 + 94 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -45 );

--敵の動き3
setDisp( spep_2 + 162 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 204 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 162 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 162 + OFFSET_X, 1, 158.7, -2.6 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 158.7, -2.6 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 183.2, -10.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 183.2, -10.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 218.3, 39.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 218.3, 39.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 256.8, 40.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 256.8, 40.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 254.3, 50.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 254.3, 50.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 269.7, 53.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 269.7, 53.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 269.8, 46.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 269.8, 46.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 264.7, 58.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 264.7, 58.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 270.9, 53.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 270.9, 53.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 278.3, 57 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 278.3, 57 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 273.8, 55.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 273.8, 55.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 282.8, 56.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 282.8, 56.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 274.9, 52.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 274.9, 52.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 278.7, 59.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 278.7, 59.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 280.6, 54.1 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 280.6, 54.1 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 278, 58.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 278, 58.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 281.1, 55.4 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 281.1, 55.4 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 277.6, 55.1 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 277.6, 55.1 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 280.4, 56.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 280.4, 56.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 278.7, 57.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 278.7, 57.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 280.5, 56.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 280.5, 56.3 , 0 );

setScaleKey( spep_2 + 162 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.01, 1.01 );

setRotateKey( spep_2 + 162 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 23.8 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 27.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 28.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 29.8 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 29.9 );

--敵の動き4
setDisp( spep_2 + 236 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 276 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 236 + OFFSET_X, 1, 106 );

tmp = -250;

setMoveKey( spep_2 + 236 + OFFSET_X, 1, 509.2, 348 + tmp, 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 509.2, 348 + tmp, 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 395.2, 275.4 + tmp, 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 395.2, 275.4 + tmp, 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 167.1, 130 + tmp, 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 167.1, 130 + tmp, 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 9.3, 29.3 + tmp, 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 9.3, 29.3 + tmp, 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -63.5, -17 + tmp, 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -63.5, -17 + tmp, 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -105.8, -44 + tmp, 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -105.8, -44 + tmp, 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -130.3, -59.7 + tmp, 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -130.3, -59.7 + tmp, 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -142.3, -67.3 + tmp, 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -142.3, -67.3 + tmp, 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -144.2, -68.6 + tmp, 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -144.2, -68.6 + tmp, 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -149.5, -73.1 + tmp, 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -149.5, -73.1 + tmp, 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -153.9, -77 + tmp, 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -153.9, -77 + tmp, 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -157.7, -80.4 + tmp, 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -157.7, -80.4 + tmp, 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -161.1, -83.3 + tmp, 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -161.1, -83.3 + tmp, 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -164.1, -86 + tmp, 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -164.1, -86 + tmp, 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -166.9, -88.3 + tmp, 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -166.9, -88.3 + tmp, 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -169.3, -90.5 + tmp, 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -169.3, -90.5 + tmp, 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -171.5, -92.4 + tmp, 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -171.5, -92.4 + tmp, 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -173.5, -94.1 + tmp, 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -173.5, -94.1 + tmp, 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -175.2, -95.6 + tmp, 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -175.2, -95.6 + tmp, 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -176.2, -96.6 + tmp, 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -176.2, -96.6 + tmp, 0 );

setScaleKey( spep_2 + 236 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 3.9, 3.9 );

setRotateKey( spep_2 + 236 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -10 );

--敵の動き5
setDisp( spep_2 + 282 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 372 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 282 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 316 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 344 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 282 + OFFSET_X, 1, -152.4, 23.7 + tmp, 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -152.4, 23.7 + tmp, 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -164.5, 27.1 + tmp, 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -164.5, 27.1 + tmp, 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -149.1, 19.5 + tmp, 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -149.1, 19.5 + tmp, 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -153.5, 22.6 + tmp, 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -153.5, 22.6 + tmp, 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -153.2, 21 + tmp, 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -153.2, 21 + tmp, 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -157, 26.7 + tmp, 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -157, 26.7 + tmp, 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -150.1, 19.3 + tmp, 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -150.1, 19.3 + tmp, 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -150.9, 28.3 + tmp, 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -150.9, 28.3 + tmp, 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -153.6, 18.4 + tmp, 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -153.6, 18.4 + tmp, 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -152.5, 29 + tmp, 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -152.5, 29 + tmp, 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -155.5, 19.8 + tmp, 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -155.5, 19.8 + tmp, 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -146.6, 23.1 + tmp, 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -146.6, 23.1 + tmp, 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -158, 23 + tmp, 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -158, 23 + tmp, 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -148.9, 24.4 + tmp, 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -148.9, 24.4 + tmp, 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -153.7, 20 + tmp, 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -153.7, 20 + tmp, 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -154.5, 27.7 + tmp, 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -154.5, 27.7 + tmp, 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -152.4, 23.7 + tmp, 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -152.4, 23.7 + tmp, 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -65.7, 83.5 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -65.7, 83.5 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -68.1, 83.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -68.1, 83.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -73, 82.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -73, 82.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -65.7, 83.9 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -65.7, 83.9 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -55.9, 81.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -55.9, 81.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -30.5, 83 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -30.5, 83 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 0.4, 80.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 0.4, 80.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 35.9, 82.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 35.9, 82.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 57.6, 80.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 57.6, 80.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 71.9, 83.1 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 71.9, 83.1 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 75.8, 80.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 75.8, 80.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 76.1, 83.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 76.1, 83.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 188.1, 33 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 188.1, 33 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 188.1, 32.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 188.1, 32.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 184.1, 34.5 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 184.1, 34.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 155.1, 38.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 155.1, 38.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 198.6, 38.8 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 198.6, 38.8 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 249.6, 40.1 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 249.6, 40.1 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 504.1, 0.6 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 504.1, 0.6 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 547.6, 3.5 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 547.6, 3.5 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 443.7, -28.8 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 443.7, -28.8 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 530.2, 15.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 530.2, 15.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 485, 2.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 485, 2.5 , 0 );

setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 13, 13 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 13, 13 );

setRotateKey( spep_2 + 282 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -71.9 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -71.9 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -72.4 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -72.9 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -73.4 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -73.4 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -73.7 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -73.7 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -74.1 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -74.1 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -74.4 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -74.4 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -74.6 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -74.6 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -74.8 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -74.9 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -74.9 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -75 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -75 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -80 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, 0 );

--敵の動き6
setDisp( spep_2 + 478 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 498 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 478 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 478 + OFFSET_X, 1, 197.8, 180.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 197.8, 180.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 201.7, 180.1 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 201.7, 180.1 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 202.9, 178.2 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 202.9, 178.2 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 207.4, 182.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 207.4, 182.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 396, 169.2 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 396, 169.2 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 395.8, 174.3 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 395.8, 174.3 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 395.3, 169.5 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 395.3, 169.5 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 604.3, 165.9 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 604.3, 165.9 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 856.3, 149 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 856.3, 149 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 851.6, 152.8 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 851.6, 152.8 , 0 );

setScaleKey( spep_2 + 478 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 485 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 486 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 3.05, 3.05 );

setRotateKey( spep_2 + 478 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, -30 );

--敵の動き7
setDisp( spep_2 + 994 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 1028 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 994 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 994 + OFFSET_X, 1, 60, -28 , 0 );
setMoveKey( spep_2 + 997 + OFFSET_X, 1, 60, -28 , 0 );
setMoveKey( spep_2 + 998 + OFFSET_X, 1, 58.1, -29.2 , 0 );
setMoveKey( spep_2 + 999 + OFFSET_X, 1, 58.1, -29.2 , 0 );
setMoveKey( spep_2 + 1000 + OFFSET_X, 1, 56.3, -30.4 , 0 );
setMoveKey( spep_2 + 1001 + OFFSET_X, 1, 56.3, -30.4 , 0 );
setMoveKey( spep_2 + 1002 + OFFSET_X, 1, 65.2, -28.9 , 0 );
setMoveKey( spep_2 + 1003 + OFFSET_X, 1, 65.2, -28.9 , 0 );
setMoveKey( spep_2 + 1004 + OFFSET_X, 1, 56.5, -32.1 , 0 );
setMoveKey( spep_2 + 1005 + OFFSET_X, 1, 56.5, -32.1 , 0 );
setMoveKey( spep_2 + 1006 + OFFSET_X, 1, 64.3, -24.3 , 0 );
setMoveKey( spep_2 + 1007 + OFFSET_X, 1, 64.3, -24.3 , 0 );
setMoveKey( spep_2 + 1008 + OFFSET_X, 1, 57.6, -30.8 , 0 );
setMoveKey( spep_2 + 1009 + OFFSET_X, 1, 57.6, -30.8 , 0 );
setMoveKey( spep_2 + 1010 + OFFSET_X, 1, 62.7, -25.4 , 0 );
setMoveKey( spep_2 + 1011 + OFFSET_X, 1, 62.7, -25.4 , 0 );
setMoveKey( spep_2 + 1012 + OFFSET_X, 1, 54.4, -30.3 , 0 );
setMoveKey( spep_2 + 1013 + OFFSET_X, 1, 54.4, -30.3 , 0 );
setMoveKey( spep_2 + 1014 + OFFSET_X, 1, 63.5, -29.2 , 0 );
setMoveKey( spep_2 + 1015 + OFFSET_X, 1, 63.5, -29.2 , 0 );
setMoveKey( spep_2 + 1016 + OFFSET_X, 1, 56.5, -25.2 , 0 );
setMoveKey( spep_2 + 1017 + OFFSET_X, 1, 56.5, -25.2 , 0 );
setMoveKey( spep_2 + 1018 + OFFSET_X, 1, 63.6, -33.5 , 0 );
setMoveKey( spep_2 + 1019 + OFFSET_X, 1, 63.6, -33.5 , 0 );
setMoveKey( spep_2 + 1020 + OFFSET_X, 1, 59.5, -23 , 0 );
setMoveKey( spep_2 + 1021 + OFFSET_X, 1, 59.5, -23 , 0 );
setMoveKey( spep_2 + 1022 + OFFSET_X, 1, 58.4, -33 , 0 );
setMoveKey( spep_2 + 1028 + OFFSET_X, 1, 58.4, -33 , 0 );

setScaleKey( spep_2 + 994 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 1028 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_2 + 994 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 1028 + OFFSET_X, 1, 30 );

setBlendColor( spep_2 + 1008 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 0.2 );
setBlendColor( spep_2 + 1010 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 0.3 );
setBlendColor( spep_2 + 1012 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 0.4 );
setBlendColor( spep_2 + 1014 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 0.5 );
setBlendColor( spep_2 + 1016 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 0.6 );
setBlendColor( spep_2 + 1018 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 0.7 );
setBlendColor( spep_2 + 1020 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 0.8 );
setBlendColor( spep_2 + 1022 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 0.9 );
setBlendColor( spep_2 + 1024 + OFFSET_X, 1, 3, 0, 0.7, 0.7, 1.0 );
setBlendColor( spep_2 + 1028 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--敵の動き8
setDisp( spep_2 + 1156 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 1184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1164 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 1156 + OFFSET_X, 1, -16.9, -5.9 , 0 );
setMoveKey( spep_2 + 1157 + OFFSET_X, 1, -16.9, -5.9 , 0 );
setMoveKey( spep_2 + 1158 + OFFSET_X, 1, -18.3, 10.5 , 0 );
setMoveKey( spep_2 + 1159 + OFFSET_X, 1, -18.3, 10.5 , 0 );
setMoveKey( spep_2 + 1160 + OFFSET_X, 1, -13.7, -4.5 , 0 );
setMoveKey( spep_2 + 1161 + OFFSET_X, 1, -13.7, -4.5 , 0 );
setMoveKey( spep_2 + 1162 + OFFSET_X, 1, -13.8, -1.9 , 0 );
setMoveKey( spep_2 + 1163 + OFFSET_X, 1, -13.8, -1.9 , 0 );
setMoveKey( spep_2 + 1164 + OFFSET_X, 1, -0.6, 5.3 , 0 );
setMoveKey( spep_2 + 1165 + OFFSET_X, 1, -0.6, 5.3 , 0 );
setMoveKey( spep_2 + 1166 + OFFSET_X, 1, -10.7, -1.4 , 0 );
setMoveKey( spep_2 + 1167 + OFFSET_X, 1, -10.7, -1.4 , 0 );
setMoveKey( spep_2 + 1168 + OFFSET_X, 1, 10.3, -0.6 , 0 );
setMoveKey( spep_2 + 1169 + OFFSET_X, 1, 10.3, -0.6 , 0 );
setMoveKey( spep_2 + 1170 + OFFSET_X, 1, 7, 8.4 , 0 );
setMoveKey( spep_2 + 1171 + OFFSET_X, 1, 7, 8.4 , 0 );
setMoveKey( spep_2 + 1172 + OFFSET_X, 1, 9, -5.1 , 0 );
setMoveKey( spep_2 + 1173 + OFFSET_X, 1, 9, -5.1 , 0 );
setMoveKey( spep_2 + 1174 + OFFSET_X, 1, 4.1, 3.8 , 0 );
setMoveKey( spep_2 + 1175 + OFFSET_X, 1, 4.1, 3.8 , 0 );
setMoveKey( spep_2 + 1176 + OFFSET_X, 1, 9.9, -3.5 , 0 );
setMoveKey( spep_2 + 1177 + OFFSET_X, 1, 9.9, -3.5 , 0 );
setMoveKey( spep_2 + 1178 + OFFSET_X, 1, 17.5, 4.8 , 0 );
setMoveKey( spep_2 + 1179 + OFFSET_X, 1, 17.5, 4.8 , 0 );
setMoveKey( spep_2 + 1180 + OFFSET_X, 1, 14.8, -5.5 , 0 );
setMoveKey( spep_2 + 1181 + OFFSET_X, 1, 14.8, -5.5 , 0 );
setMoveKey( spep_2 + 1182 + OFFSET_X, 1, 22.1, 6 , 0 );
setMoveKey( spep_2 + 1184 + OFFSET_X, 1, 22.1, 6 , 0 );

setScaleKey( spep_2 + 1156 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 1184 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 1156 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 1184 + OFFSET_X, 1, 0 );

setBlendColor( spep_2 + 1156 + OFFSET_X, 1, 5, 0.5, 0.5, 0.5, 0.5 );
setBlendColor( spep_2 + 1164 + OFFSET_X, 1, 3, 0.5, 0.4, 0, 0.7 );
setBlendColor( spep_2 + 1166 + OFFSET_X, 1, 3, 0.5, 0.4, 0, 0.8 );
setBlendColor( spep_2 + 1168 + OFFSET_X, 1, 3, 0.5, 0.4, 0, 0.9 );
setBlendColor( spep_2 + 1170 + OFFSET_X, 1, 3, 0.5, 0.4, 0, 1.0 );
setBlendColor( spep_2 + 1184 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 58;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);

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
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--パンチ
SE012 = playSeVer2( spep_2 + 60, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 84, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 88, 1359, "", 0, 0, 0, -1);

--キック
SE015 = playSeVer2( spep_2 + 138, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE015, 178 );
SE016 = playSeVer2( spep_2 + 146, 1120, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 146, 1187, "", 0, 0, 0, -1);

--悟空追い抜く
SE018 = playSeVer2( spep_2 + 194, 1424, "",spep_2 + 270, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 194, SE018, 158 );
SE019 = playSeVer2( spep_2 + 194, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE019, 79 );
SE020 = playSeVer2( spep_2 + 222, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 222, SE020, 141 );
SE021 = playSeVer2( spep_2 + 226, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 226, SE021, 112 );

--悟空蹴り
SE022 = playSeVer2( spep_2 + 260, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE022, 111 );
SE023 = playSeVer2( spep_2 + 270, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 270, SE023, 79 );
SE024 = playSeVer2( spep_2 + 270, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 270, SE024, 82 );

--画面遷移
SE025 = playSeVer2( spep_2 + 296, 8, "", 0, 0, 0, -1);

--オーラ
SE026 = playSeVer2( spep_2 + 310, 1181, "",spep_2 + 446, 0, 44, -1);
SE027 = playSeVer2( spep_2 + 310, 1176, "",spep_2 + 446, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 310, SE027, 40 );
SE028 = playSeVer2( spep_2 + 310, 1474, "",spep_2 + 448, 0, 46, -1);
setSeVolumeByWorkId( spep_2 + 310, SE028, 119 );

--ベジータ構え
SE029 = playSeVer2( spep_2 + 308, 1116, "",spep_2 + 372, 0, 24, -1);

--ベジータキック
SE030 = playSeVer2( spep_2 + 316, 1004, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 330, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 330, 1153, "", 0, 0, 0, -1);

--悟空オーラ
SE033 = playSeVer2( spep_2 + 376, 1227, "",spep_2 + 560, 0, 88, -1);
setSeVolumeByWorkId( spep_2 + 376, SE033, 71 );
SE034 = playSeVer2( spep_2 + 388, 1181, "",spep_2 + 524, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 388, SE034, 126 );

--悟空裏拳
SE035 = playSeVer2( spep_2 + 404, 1003, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 414, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE036, 79 );
SE037 = playSeVer2( spep_2 + 414, 1120, "", 0, 0, 0, -1);

--風圧
SE038 = playSeVer2( spep_2 + 414, 1427, "", 0, 0, 0, -1);

--気弾溜め
SE039 = playSeVer2( spep_2 + 554, 1210, "",spep_2 + 694, 56, 14, -1);
setSeVolumeByWorkId( spep_2 + 554, SE039, 63 );
setStartTimeMs( SE039,  2000 );
setPitch( spep_2 + 554, SE039, -600 );
setTimeStretch( SE039, 0.6, 30, 4 );

--敵吹き飛ぶ
SE040 = playSeVer2( spep_2 + 470, 1027, "", 0, 0, 0, -1);

--地響き
SE041 = playSeVer2( spep_2 + 496, 1226, "",spep_2 + 924, 52, 24, -1);
setSeVolumeByWorkId( spep_2 + 496, SE041, 69 );

--ベジータ両手広げる
SE042 = playSeVer2( spep_2 + 498, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE043 = playSeVer2( spep_2 + 514, 1147, "",spep_2 + 684, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 514, SE043, 74 );
SE045 = playSeVer2( spep_2 + 554, 1131, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 554, SE045, 72 );
SE047 = playSeVer2( spep_2 + 558, 1296, "",spep_2 + 696, 0, 90, -1);
setSeVolumeByWorkId( spep_2 + 558, SE047, 67 );
SE049 = playSeVer2( spep_2 + 586, 1158, "",spep_2 + 700, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 586, SE049, 62 );

--腕前に出す
SE044 = playSeVer2( spep_2 + 550, 1189, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 558, 1006, "", 0, 0, 0, -1);

--かめはめ波溜め
SE048 = playSeVer2( spep_2 + 758, 1210, "",spep_2 + 954, 14, 28, -1);
setSeVolumeByWorkId( spep_2 + 758, SE048, 130 );
setStartTimeMs( SE048,  2900 );

--悟空オーラ
SE050 = playSeVer2( spep_2 + 650, 1227, "",spep_2 + 942, 0, 30, -1);
SE052 = playSeVer2( spep_2 + 666, 1181, "",spep_2 + 942, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 666, SE052, 158 );

--画面遷移
SE051 = playSeVer2( spep_2 + 664, 8, "", 0, 0, 0, -1);

--構える
SE053 = playSeVer2( spep_2 + 674, 1233, "", 0, 0, 0, -1);

--かめはめ波溜め
SE054 = playSeVer2( spep_2 + 758, 1209, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 758, 1356, "", 0, 0, 0, -1);

--ズームイン
SE056 = playSeVer2( spep_2 + 828, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 828, SE056, 116 );

--気弾発射
SE057 = playSeVer2( spep_2 + 908, 1133, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_2 + 908, 1423, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 908, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 908, SE059, 65 );

--気弾飛んでいく
SE060 = playSeVer2( spep_2 + 974, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 974, SE060, 79 );
SE061 = playSeVer2( spep_2 + 974, 1124, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 974, SE061, 71 );
SE062 = playSeVer2( spep_2 + 982, 1304, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 982, SE062, 133 );

--地響き
SE063 = playSeVer2( spep_2 + 982, 1044, "",spep_2 + 1188, 0, 28, -1);

--気弾飛んでいく２
SE064 = playSeVer2( spep_2 + 1132, 1305, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1132, SE064, 146 );
SE065 = playSeVer2( spep_2 + 1132, 1159, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_2 + 1132, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1132, SE066, 115 );
SE067 = playSeVer2( spep_2 + 1170, 1212, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_2 + 1170, SE067, 75 );
setStartTimeMs( SE067,  433 );
SE068 = playSeVer2( spep_2 + 1180, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1180, SE068, 79 );
SE069 = playSeVer2( spep_2 + 1180, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 1180, SE069, 81 );

-- ** おわり ** --
dealDamage( spep_2 + 1198 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 1300

else

------------------------------------------------------
-- 敵側（不要）
------------------------------------------------------

end
