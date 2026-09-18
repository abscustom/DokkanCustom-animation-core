-- 9028200: LR_セルマックス_アクティブ必殺技：スクリームエクスプロージョン(敵側)
-- sp_effect_a2_00240
-- sp2725

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 敵側
SP_01  = 162957;  -- 雄叫びを上げるセルマックス～フィニッシュ ef_001
SP_01r  = 162973;  -- 雄叫びを上げるセルマックス～フィニッシュ ef_001r
SP_01br = 162974;  -- 雄叫びを上げるセルマックス～フィニッシュ ef_001br

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
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 雄叫びを上げるセルマックス～フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 1188;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 雄叫びを上げるセルマックス～フィニッシュ(ef_001r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 雄叫びを上げるセルマックス～フィニッシュ(ef_001br)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 36 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0, 1, 18 );

setMoveKey( spep_0 + 0 , 1, -283.1, -382.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -283.1, -382.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -283.1, -382.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -283.1, -382.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -283.1, -382.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -283.1, -382.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -283.1, -382.9 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -283.1, -382.9 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -502, -706.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -502, -706.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -720.9, -1030.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -720.9, -1030.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -939.8, -1354.9 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -939.8, -1354.9 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -1158.7, -1678.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -1158.7, -1678.9 , 0 );

setScaleKey( spep_0 + 0, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 4.35, 4.35 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 6.09, 6.09 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 7.83, 7.83 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 9.57, 9.57 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 9.57, 9.57 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 11.31, 11.31 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 11.31, 11.31 );

setRotateKey( spep_0 + 0, 1, -5.2 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 36 + OFFSET_X, 1, -5.2 );

-- 敵の動き2
setDisp( spep_0 + 180 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 326 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 180 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 180 + OFFSET_X, 1, -296.7, 37.4 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -296.7, 37.4 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.15, 0.15 );

setRotateKey( spep_0 + 180 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 0 );

-- 敵の動き3
setDisp( spep_0 + 800 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 850 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 800 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 836 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 800 + OFFSET_X, 1, -617.1, -509.8 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, -617.1, -509.8 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, -491.7, -420 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, -491.7, -420 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, -395.6, -320.5 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, -395.6, -320.5 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, -289.7, -250.3 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, -289.7, -250.3 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, -183.8, -150.8 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -183.8, -150.8 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -193.5, -150.8 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, -193.5, -150.8 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, -174, -150.8 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -174, -150.8 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -183.8, -141 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, -183.8, -141 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -183.8, -160.5 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -183.8, -160.5 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -183.8, -150.8 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -183.8, -150.8 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -174, -150.8 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, -174, -150.8 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, -191.6, -150.8 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -191.6, -150.8 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -183.8, -150.8 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -183.8, -150.8 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -174, -150.8 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -174, -150.8 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -191.6, -150.8 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, -191.6, -150.8 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, -183.8, -150.8 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, -183.8, -150.8 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -190.2, -149.7 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -190.2, -149.7 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, -193, -151.1 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -193, -151.1 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -195.8, -152.4 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, -195.8, -152.4 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, -198.6, -153.8 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -198.6, -153.8 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, -201.4, -155.2 , 0 );
setMoveKey( spep_0 + 845 + OFFSET_X, 1, -201.4, -155.2 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, -204.2, -156.6 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, -204.2, -156.6 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, -207, -157.9 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -207, -157.9 , 0 );

setScaleKey( spep_0 + 800 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 801 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 802 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 807 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 808 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_0 + 800 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 835 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 836 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 850 + OFFSET_X, 1, -21.5 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1168, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
setStartTimeMs( SE001,  1717 );
SE002 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 108, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 65 );

--画面遷移
SE003 = playSeVer2( spep_0 + 38, 1232, "", 0, 0, 0, -1);

--気弾膨らむ予兆
SE004 = playSeVer2( spep_0 + 152, 1266, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE004, 132 );
setStartTimeMs( SE004,  1900 );

--セリフカットイン
SE005 = playSeVer2( spep_0 + 58, 1018, "", 0, 0, 0, -1);

--叫ぶ
SE006 = playSeVer2( spep_0 + 66, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 71 );
SE007 = playSeVer2( spep_0 + 66, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE007, 81 );

--気弾膨れ上がる１
SE008 = playSeVer2( spep_0 + 220, 1465, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE008, 135 );
SE009 = playSeVer2( spep_0 + 220, 1137, "",spep_0 + 314, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 220, SE009, 78 );

--気弾膨れ上がる背景音
SE010 = playSeVer2( spep_0 + 232, 1226, "",spep_0 + 536, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 232, SE010, 60 );

--一気に収束する
SE011 = playSeVer2( spep_0 + 432, 1336, "",spep_0 + 496, 16, 14, -1);
setSeVolumeByWorkId( spep_0 + 432, SE011, 77 );
setStartTimeMs( SE011,  2767 );
setPitch( spep_0 + 432, SE011, 800 );
setTimeStretch( SE011, 1.53, 30, 4 );

--気弾膨れ上がる２
SE012 = playSeVer2( spep_0 + 272, 1465, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 272, 1137, "",spep_0 + 366, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 272, SE013, 72 );

--気弾膨れ上がる３
SE014 = playSeVer2( spep_0 + 338, 1465, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 338, 1190, "", 0, 0, 0, -1);

--気弾膨れ上がる４
SE016 = playSeVer2( spep_0 + 372, 1465, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 372, 1190, "", 0, 0, 0, -1);

--気弾膨れ上がる５
SE018 = playSeVer2( spep_0 + 408, 1465, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 408, 1190, "", 0, 0, 0, -1);

--一気に収束する
SE020 = playSeVer2( spep_0 + 432, 1467, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE020, 316 );
SE022 = playSeVer2( spep_0 + 474, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE022, 316 );
SE023 = playSeVer2( spep_0 + 474, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE023, 77 );

--気弾溜め中
SE021 = playSeVer2( spep_0 + 538, 1371, "",spep_0 + 764, 20, 28, -1);
setSeVolumeByWorkId( spep_0 + 538, SE021, 73 );
setStartTimeMs( SE021,  1533 );
setPitch( spep_0 + 538, SE021, 800 );
setTimeStretch( SE021, 1.53, 30, 4 );

--画面遷移
SE024 = playSeVer2( spep_0 + 538, 1182, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE024, 89 );
setStartTimeMs( SE024,  100 );

--気弾溜め中
SE025 = playSeVer2( spep_0 + 542, 1227, "",spep_0 + 776, 0, 40, -1);
SE026 = playSeVer2( spep_0 + 542, 1176, "",spep_0 + 764, 20, 28, -1);
setSeVolumeByWorkId( spep_0 + 542, SE026, 62 );
SE027 = playSeVer2( spep_0 + 542, 1226, "",spep_0 + 860, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 542, SE027, 93 );

--気弾発射
SE028 = playSeVer2( spep_0 + 738, 1371, "",spep_0 + 932, 28, 64, -1);
setSeVolumeByWorkId( spep_0 + 738, SE028, 68 );
setStartTimeMs( SE028,  1500 );
setPitch( spep_0 + 738, SE028, -800 );
setTimeStretch( SE028, 0.47, 30, 4 );

--ズームアウト
SE029 = playSeVer2( spep_0 + 660, 1072, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 676, 44, "", 0, 0, 0, -1);

--気弾発射
SE031 = playSeVer2( spep_0 + 720, 1027, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 720, 1193, "",spep_0 + 934, 0, 64, -1);
SE033 = playSeVer2( spep_0 + 720, 1146, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 728, 1213, "",spep_0 + 978, 0, 62, -1);

-- ** ボイス ** --
--「ウガアアアアア！」
--playVoice( spep_0 + 52, 800 );
--setVoiceVolume( spep_0 + 52, 800, 130 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 758; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE025, 0);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--地面爆発
SE035 = playSeVer2( spep_0 + 856, 1159, "",spep_0 + 976, 0, 54, -1);

--地鳴り低音
SE050 = playSeVer2( spep_0 + 860, 1226, "",spep_0 + 982, 20, 40, -1);
setSeVolumeByWorkId( spep_0 + 860, SE050, 93 );

--地面から光溢れる
SE036 = playSeVer2( spep_0 + 904, 1067, "",spep_0 + 972, 0, 50, -1);
SE037 = playSeVer2( spep_0 + 904, 1306, "",spep_0 + 978, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 904, SE037, 67 );

--爆発予兆
SE038 = playSeVer2( spep_0 + 950, 1157, "", 1050, 0, 40, -1);

--爆発
SE039 = playSeVer2( spep_0 + 1002, 1069, "",spep_0 + 1124, 0, 20, -1);
SE040 = playSeVer2( spep_0 + 1016, 1024, "",spep_0 + 1124, 0, 24, -1);
SE041 = playSeVer2( spep_0 + 1056, 1188, "", 0, 18, 0, -1);
setStartTimeMs( SE041,  233 );

--爆発収束する
SE042 = playSeVer2( spep_0 + 1090, 8, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1094, 1060, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1094, SE043, 71 );

-- ** おわり ** --
dealDamage( spep_0 + 1000);
endPhase( spep_0 + MAX_FRAME_0 - 2); -- 終了フレーム 1188F

end
