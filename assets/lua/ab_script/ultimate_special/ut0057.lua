-- 1027000: UR_超サイヤ人トランクス(青年期)_地獄を生き抜いた男（アクティブ）
-- sp_effect_a2_00222
-- ut0057

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162104;  -- トランクス急接近 ef_001
SP_02 = 162106;  -- 両手を広げる〜台詞カットイン ef_002
SP_03 = 162108;  -- 両手から閃光、敵吹っ飛ぶ ef_003
SP_04 = 162110;  -- 両手から閃光、敵吹っ飛ぶ ef_004
SP_05 = 162111;  -- 爆発して終了 ef_005

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

--[[setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 78;
        spep_2 = spep_1 + 278;
        spep_3 = spep_2 + 108;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_2 + 14 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_3 + 2 -1);  -- スキップ先フレーム指定
       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- トランクス急接近 ef_001 (78F)
------------------------------------------------------
MAX_FRAME_0 = 78;

-- ** エフェクト等 ** --
entry_SP_01 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_01, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_01, 255 );

-- ** 敵キャラクター ** --
setDisp(spep_0 + 0, 1, 1);
setDisp(spep_0 + 79 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 0 , 1, 102 );

setMoveKey( spep_0 + 0 , 1, 1724.7, -1158.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 1687.2, -1137.2 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 1687.2, -1137.2 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 1649.8, -1115.8 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 1649.8, -1115.8 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 1612.7, -1094.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 1612.7, -1094.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 1575.8, -1073 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 1539, -1051.7 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 1502.3, -1030.4 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 1465.7, -1009.1 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 1429.2, -987.8 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, 1392.6, -966.5 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 1355.9, -945.2 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, 1319.1, -923.8 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 1282, -902.5 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 1244.6, -881 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 1206.7, -859.5 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 1168.1, -837.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 1128.5, -816.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 1087.7, -794.1 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 1044.9, -771.8 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 999.2, -749.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 948.6, -725.5 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 888.8, -700.5 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 790.4, -669.3 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 493, -606.1 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 424.8, -589.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 356.5, -573.6 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 290.8, -545.4 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, 290.8, -545.4 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, 316.2, -554.3 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, 316.2, -554.3 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, 269.3, -563.4 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, 269.3, -563.4 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, 298.3, -558.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 298.3, -558.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 290.4, -547.4 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 290.4, -547.4 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 293.1, -563.4 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 293.1, -563.4 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 290.4, -547.4 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 290.4, -547.4 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 293.1, -563.4 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 293.1, -563.4 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 290.4, -547.4 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 290.4, -547.4 , 0 );

setScaleKey( spep_0 + 0 , 1, 23.91, 23.91 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 23.37, 23.37 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 23.37, 23.37 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 22.83, 22.83 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 22.83, 22.83 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 22.28, 22.28 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 22.28, 22.28 );
setScaleKey( spep_0 + 8 + OFFSET_X, 1, 21.75, 21.75 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 21.21, 21.21 );
setScaleKey( spep_0 + 12 + OFFSET_X, 1, 20.67, 20.67 );
setScaleKey( spep_0 + 14 + OFFSET_X, 1, 20.13, 20.13 );
setScaleKey( spep_0 + 16 + OFFSET_X, 1, 19.6, 19.6 );
setScaleKey( spep_0 + 18 + OFFSET_X, 1, 19.06, 19.06 );
setScaleKey( spep_0 + 20 + OFFSET_X, 1, 18.52, 18.52 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 17.99, 17.99 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 17.45, 17.45 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 16.9, 16.9 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 16.35, 16.35 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 15.8, 15.8 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 15.24, 15.24 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 14.67, 14.67 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 14.08, 14.08 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 13.47, 13.47 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 12.82, 12.82 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 12.1, 12.09 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 11.05, 11.05 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 8.39, 8.39 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 7.28, 7.28 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 6.5, 6.5 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 6.5, 6.5 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 79 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 0 , 1, 3, 0, 0, 0, 0.0);
setBlendColor( spep_0 + 50 + OFFSET_X , 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_0 + 55 + OFFSET_X , 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_0 + 56 + OFFSET_X , 1, 3, 0, 0, 0, 0.0);
setBlendColor( spep_0 + 79 + OFFSET_X , 1, 3, 0, 0, 0, 0.0);

-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 133 );
SE002 = playSeVer2( spep_0 + 0, 1117, "",spep_0 + 76, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 84 );
SE003 = playSeVer2( spep_0 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 41 );
setTimeStretch( SE003, 0.89, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 1068, "",78 + 20, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 79 );
SE005 = playSeVer2( spep_0 + 0, 1258, "",78 + 38, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 62 );

--敵前で止まる
SE006 = playSeVer2( spep_0 + 48, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 52, 1004, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 78

------------------------------------------------------
-- 両手を広げる〜台詞カットイン ef_002 (278F)
------------------------------------------------------
MAX_FRAME_1 = 278;

-- ** エフェクト等 ** --
entry_SP_02 = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, entry_SP_02, 0, 0 , 0 );
setEffMoveKey( spep_1 + MAX_FRAME_1, entry_SP_02, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, entry_SP_02, 1.0, 1.0 );
setEffScaleKey( spep_1 + MAX_FRAME_1, entry_SP_02, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, entry_SP_02, 0 );
setEffRotateKey( spep_1 + MAX_FRAME_1, entry_SP_02, 0 );
setEffAlphaKey( spep_1 + 0, entry_SP_02, 255 );
setEffAlphaKey( spep_1 + MAX_FRAME_1, entry_SP_02, 255 );

-- ** 敵キャラクター ** --
setDisp(spep_1 + 50 + OFFSET_X, 1, 1);
setDisp(spep_1 + 100 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 50 + OFFSET_X, 1, 104 );

setMoveKey( spep_1 + 50 + OFFSET_X, 1, 1248.6, -756 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 1104.3, -631 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 1104.3, -631 , 0 ); --キャラクターと被ったため補完
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 474, -174.6 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 407.8, -113 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 355.3, -82.7 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 326, -64.7 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 314.1, -53.7 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 307, -47.1 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 303.4, -43.7 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 302.3, -42.7 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 302.3, -42.7 , 0 );

setScaleKey( spep_1 + 50 + OFFSET_X, 1, 8.73, 8.73 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_1 + 53 + OFFSET_X, 1, 7.58, 7.58 ); --キャラクターと被ったため補完
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_1 + 56 + OFFSET_X, 1, 3.04, 3.04 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_1 + 60 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_1 + 62 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 64 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_1 + 68 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_1 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 100 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--オーラ
SE008 = playSeVer2( spep_1 + 4, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 4, 1181, "",356 + 74, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 4, SE009, 141 );
SE011 = playSeVer2( spep_1 + 28, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 52, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 76, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 76, SE013, 71 );
SE014 = playSeVer2( spep_1 + 100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 100, SE014, 56 );
SE017 = playSeVer2( spep_1 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 124, SE017, 56 );
SE018 = playSeVer2( spep_1 + 148, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 148, SE018, 56 );
SE019 = playSeVer2( spep_1 + 172, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 172, SE019, 56 );
SE021 = playSeVer2( spep_1 + 196, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 196, SE021, 56 );
SE022 = playSeVer2( spep_1 + 220, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 220, SE022, 56 );
SE027 = playSeVer2( spep_1 + 244, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 244, SE027, 56 );
SE028 = playSeVer2( spep_1 + 268, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 268, SE028, 56 );

--ズームアウト
SE010 = playSeVer2( spep_1 + 18, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 18, SE010, 158 );

--セリフカットイン
SE015 = playSeVer2( spep_1 + 102, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE015, 56 );

--気弾溜め
SE016 = playSeVer2( spep_1 + 236, 1204, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 236, SE016, 130 );
setStartTimeMs( SE016,  1967 );
SE023 = playSeVer2( spep_1 + 238, 1370, "",356 + 66, 6, 16, -1);
setSeVolumeByWorkId( spep_1 + 238, SE023, 94 );
setStartTimeMs( SE023,  300 );
SE025 = playSeVer2( spep_1 + 238, 1262, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 238, SE025, 200 );
setTimeStretch( SE025, 1.24, 30, 4 );
SE026 = playSeVer2( spep_1 + 238, 1295, "",356 + 66, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 238, SE026, 85 );

--ズームアウト
SE020 = playSeVer2( spep_1 + 178, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 178, SE020, 79 );

--腕前に出す
SE024 = playSeVer2( spep_1 + 232, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 232, SE024, 65 );

--ボイス
--「地獄のような未来はもうたくさんだ！」
playVoice( spep_1 + 102, 661 );
setVoiceVolume( spep_1 + 102, 661, 150 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_2 = spep_1 + MAX_FRAME_1;  -- 278

------------------------------------------------------
-- 両手から閃光、敵吹っ飛ぶ ef_003 (108F)
------------------------------------------------------
MAX_FRAME_2 = 108;

-- ** エフェクト等 ** --
entry_SP_03 = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_03, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_03, 255 );
entry_SP_04 = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_04, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_04, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_04, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_04, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_04, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_04, 255 );

-- ** 敵キャラクター ** --
--ガードする--
setDisp(spep_2 + 0, 1, 1);
setDisp(spep_2 + 38 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 162.5, 179.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 162.5, 179.8 , 0 );

setScaleKey( spep_2 + 0, 1, 4, 4 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4, 4 );

setRotateKey( spep_2 + 0, 1, -5 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -5 );

--吹き飛ばされる--
setDisp(spep_2 + 48 + OFFSET_X, 1, 1);
setDisp(spep_2 + 88 + OFFSET_X, 1, 0);

changeAnime( spep_2 + 48 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 48 + OFFSET_X, 1, 247.6, 195.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 247.6, 195.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 295.5, 130.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 295.5, 130.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 170.4, 181.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 170.4, 181.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 298.7, 133.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 298.7, 133.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 173.8, 185.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 173.8, 185.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 280.3, 180.1 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 280.3, 180.1 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 236.7, 197.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 236.7, 197.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 284.2, 184.6 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 284.2, 184.6 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 275.5, 226 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 275.5, 226 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 242.7, 204.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 242.7, 204.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 290.4, 192.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 290.4, 192.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 281.6, 233.8 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 281.6, 233.8 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 282.5, 242.5 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 345.5, 290.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 397.9, 335.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 453.8, 388.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 528.7, 454.1 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 615.9, 536.2 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 738.9, 645.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 915, 807.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 1478.3, 1314.1 , 0 );

setScaleKey( spep_2 + 48 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 4.3, 4.3 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 4.17, 4.17 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 0.86, 0.86 );

setRotateKey( spep_2 + 48 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -2 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE028, 0);
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
--オーラ
SE029 = playSeVer2( spep_2 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE029, 56 );
SE030 = playSeVer2( spep_2 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE030, 56 );

--気弾発射
SE031 = playSeVer2( spep_2 + 48, 1133, "",spep_2 + 86, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 48, SE031, 80 );
setPitch( spep_2 + 48, SE031, 300 );
setTimeStretch( SE031, 1.2, 30, 4 );
SE032 = playSeVer2( spep_2 + 52, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 52, SE032, 110 );
SE033 = playSeVer2( spep_2 + 56, 1027, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 108

------------------------------------------------------
-- 爆発して終了 ef_005 (188F)
------------------------------------------------------
MAX_FRAME_3 = 188;

-- ** エフェクト等 ** --
entry_SP_05 = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, entry_SP_05, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, entry_SP_05, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, entry_SP_05, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, entry_SP_05, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, entry_SP_05, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, entry_SP_05, 0 );
setEffAlphaKey( spep_3 + 0, entry_SP_05, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, entry_SP_05, 255 );

-- ** 音 ** --
--爆発
SE034 = playSeVer2( spep_3 + 12, 1024, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 16, 1159, "", 0, 0, 0, -1);

--オーラ
SE036 = playSeVer2( spep_3 + 28, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 28, SE036, 40 );
SE037 = playSeVer2( spep_3 + 52, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 52, SE037, 40 );
SE038 = playSeVer2( spep_3 + 76, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 76, SE038, 40 );
SE039 = playSeVer2( spep_3 + 100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 100, SE039, 40 );
SE040 = playSeVer2( spep_3 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 124, SE040, 40 );
SE041 = playSeVer2( spep_3 + 148, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 148, SE041, 40 );
SE042 = playSeVer2( spep_3 + 172, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 172, SE042, 40 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_3 + 12 );
endPhase( spep_3 +  MAX_FRAME_3 );  -- 188

else end
