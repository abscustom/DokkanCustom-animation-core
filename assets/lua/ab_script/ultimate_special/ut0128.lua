--1034120:LR_パーフェクトセル_アクティブ必殺：太陽系破壊かめはめ波
--sp_effect_a1_00546
--ut0128

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164558; --敵を挟んだ気弾部分 ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then

        spep_0 = 0;

       if(_IS_DODGE_ == 1) then

           skipFrame(0, spep_0 + 670 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 670 - 13, SP_01, spep_0 + 670 - 13 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

       else

           timing_skip = 942;

           skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定
           setupMovie(spep_0 + timing_skip, SP_01, spep_0 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

           -- ** 音 ** --
           --発射中
           SE041 = playSeVer2( spep_0 + timing_skip + 3, 1258, "", 0, 0, 0, -1);   
           SE042 = playSeVer2( spep_0 + timing_skip + 3, 1304, "", 0, 0, 0, -1);   
           SE043 = playSeVer2( spep_0 + timing_skip + 3, 1161, "", 0, 0, 0, -1);   
           SE044 = playSeVer2( spep_0 + timing_skip + 3, 1211, "",spep_0 + 1137, 0, 37, -1);
           setSeVolumeByWorkId( spep_0 + timing_skip + 3, SE044, 204 );

       end

    else 

      setupMovie(0, SP_01, 0, 1);  -- スキップしない時の通常再生時用のsetupMovie関数

    end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 敵を挟んだ気弾部分
-------------------------------------------------
MAX_FRAME_0 = 1530;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 敵を挟んだ気弾部分(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景


--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 762 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 790 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 762 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 774 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 762 + OFFSET_X, 1, -336.2 , 34.9 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, -336.2 , 34.9 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -336.2 , 36.5 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, -336.2 , 36.5 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, -276.2 , 10.5 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, -276.2 , 10.5 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, -276.2 , 7.7 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, -276.2 , 7.7 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, -242.2 , 3.4 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, -242.2 , 3.4 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, -183.7 , -50.7 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, -183.7 , -50.7 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, -183.6 , -50.6 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -183.6 , -50.6 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, -83.6 , -38.2 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, -83.6 , -38.2 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 132.5 , -47.1 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 132.5 , -47.1 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 478.2 , -75 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 478.2 , -75 , 0 );

setScaleKey( spep_0 + 762 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 781 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 782 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 790 + OFFSET_X, 1, 3.5, 3.5 );

setRotateKey( spep_0 + 762 + OFFSET_X, 1, 0  );
setRotateKey( spep_0 + 773 + OFFSET_X, 1, 0  );
setRotateKey( spep_0 + 774 + OFFSET_X, 1, 50  );
setRotateKey( spep_0 + 777 + OFFSET_X, 1, 50  );
setRotateKey( spep_0 + 778 + OFFSET_X, 1, 60  );
setRotateKey( spep_0 + 790 + OFFSET_X, 1, 60  );

setBlendColor( spep_0 + 774 + OFFSET_X, 1, 3, 1, 1, 1, 0.6);
setBlendColor( spep_0 + 789 + OFFSET_X, 1, 3, 1, 1, 1, 0.6);
setBlendColor( spep_0 + 790 + OFFSET_X, 1, 3, 1, 1, 1, 0.0);

setGaussBlurKey( spep_0 + 774 + OFFSET_X, 1, 0.003 );
setGaussBlurKey( spep_0 + 789 + OFFSET_X, 1, 0.003 );
setGaussBlurKey( spep_0 + 790 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 1112 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1146 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1112 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1112 + OFFSET_X, 1, 64.6 , -5.2 , 0 );
setMoveKey( spep_0 + 1113 + OFFSET_X, 1, 64.6 , -5.2 , 0 );
setMoveKey( spep_0 + 1114 + OFFSET_X, 1, 64.5 , -6.8 , 0 );
setMoveKey( spep_0 + 1115 + OFFSET_X, 1, 64.5 , -6.8 , 0 );
setMoveKey( spep_0 + 1116 + OFFSET_X, 1, 62.9 , -3.6 , 0 );
setMoveKey( spep_0 + 1117 + OFFSET_X, 1, 62.9 , -3.6 , 0 );
setMoveKey( spep_0 + 1118 + OFFSET_X, 1, 66.9 , -9.2 , 0 );
setMoveKey( spep_0 + 1119 + OFFSET_X, 1, 66.9 , -9.2 , 0 );
setMoveKey( spep_0 + 1120 + OFFSET_X, 1, 66.1 , -1.2 , 0 );
setMoveKey( spep_0 + 1121 + OFFSET_X, 1, 66.1 , -1.2 , 0 );
setMoveKey( spep_0 + 1122 + OFFSET_X, 1, 67.7 , -10 , 0 );
setMoveKey( spep_0 + 1123 + OFFSET_X, 1, 67.7 , -10 , 0 );
setMoveKey( spep_0 + 1124 + OFFSET_X, 1, 70.9 , 1.2 , 0 );
setMoveKey( spep_0 + 1125 + OFFSET_X, 1, 70.9 , 1.2 , 0 );
setMoveKey( spep_0 + 1126 + OFFSET_X, 1, 71.7 , -10 , 0 );
setMoveKey( spep_0 + 1127 + OFFSET_X, 1, 71.7 , -10 , 0 );
setMoveKey( spep_0 + 1128 + OFFSET_X, 1, 70.9 , -6.8 , 0 );
setMoveKey( spep_0 + 1129 + OFFSET_X, 1, 70.9 , -6.8 , 0 );
setMoveKey( spep_0 + 1130 + OFFSET_X, 1, 79.7 , -4.4 , 0 );
setMoveKey( spep_0 + 1131 + OFFSET_X, 1, 79.7 , -4.4 , 0 );
setMoveKey( spep_0 + 1132 + OFFSET_X, 1, 77.3 , -8.4 , 0 );
setMoveKey( spep_0 + 1133 + OFFSET_X, 1, 77.3 , -8.4 , 0 );
setMoveKey( spep_0 + 1134 + OFFSET_X, 1, 81.3 , -2.8 , 0 );
setMoveKey( spep_0 + 1135 + OFFSET_X, 1, 81.3 , -2.8 , 0 );
setMoveKey( spep_0 + 1136 + OFFSET_X, 1, 86.1 , -9.2 , 0 );
setMoveKey( spep_0 + 1137 + OFFSET_X, 1, 86.1 , -9.2 , 0 );
setMoveKey( spep_0 + 1138 + OFFSET_X, 1, 84.5 , -4.4 , 0 );
setMoveKey( spep_0 + 1139 + OFFSET_X, 1, 84.5 , -4.4 , 0 );
setMoveKey( spep_0 + 1140 + OFFSET_X, 1, 92.5 , -6.8 , 0 );
setMoveKey( spep_0 + 1141 + OFFSET_X, 1, 92.5 , -6.8 , 0 );
setMoveKey( spep_0 + 1142 + OFFSET_X, 1, 94.9 , 0.4 , 0 );
setMoveKey( spep_0 + 1143 + OFFSET_X, 1, 94.9 , 0.4 , 0 );
setMoveKey( spep_0 + 1144 + OFFSET_X, 1, 97.3 , -9.2 , 0 );
setMoveKey( spep_0 + 1146 + OFFSET_X, 1, 97.3 , -9.2 , 0 );

setScaleKey( spep_0 + 1112 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 1146 + OFFSET_X, 1, 2.6, 2.6 );

setRotateKey( spep_0 + 1112 + OFFSET_X, 1, 3.5  );
setRotateKey( spep_0 + 1146 + OFFSET_X, 1, 3.5  );

setBlendColor( spep_0 + 1112 + OFFSET_X, 1, 3, 0.92, 0.93, 0.97, 0.6 );
setBlendColor( spep_0 + 1145 + OFFSET_X, 1, 3, 0.92, 0.93, 0.97, 0.6 );
setBlendColor( spep_0 + 1146 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

setGaussBlurKey( spep_0 + 1112 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 1146 + OFFSET_X, 1, 0 );

--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1513, "",spep_0 + 658, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 43 );
SE003 = playSeVer2( spep_0 + 0, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 43 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 63 );
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 63 );
SE007 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE007, 63 );

--カメラパン
SE006 = playSeVer2( spep_0 + 36, 44, "", 0, 0, 0, -1);

--セリフカットイン
SE008 = playSeVer2( spep_0 + 73, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 73, SE008, 63 );

--オーラ
SE009 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE009, 63 );
SE010 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE010, 63 );
SE011 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE011, 63 );
SE012 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE012, 63 );
SE013 = playSeVer2( spep_0 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE013, 63 );
SE014 = playSeVer2( spep_0 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE014, 63 );
SE015 = playSeVer2( spep_0 + 220, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE015, 40 );
SE016 = playSeVer2( spep_0 + 234, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE016, 63 );

--構える
SE017 = playSeVer2( spep_0 + 229, 1233, "", 0, 0, 0, -1);

--かめはめ波溜め
SE018 = playSeVer2( spep_0 + 339, 1210, "",spep_0 + 642, 15, 34, -1);
setStartTimeMs( SE018,  1550 );
setPitch( spep_0 + 339, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );
SE023 = playSeVer2( spep_0 + 341, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 341, SE023, 72 );
SE026 = playSeVer2( spep_0 + 378, 1489, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE026, 143 );

--オーラ
SE019 = playSeVer2( spep_0 + 258, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE019, 63 );
SE020 = playSeVer2( spep_0 + 282, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE020, 63 );
SE021 = playSeVer2( spep_0 + 306, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE021, 63 );
SE022 = playSeVer2( spep_0 + 330, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE022, 63 );
SE024 = playSeVer2( spep_0 + 354, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE024, 63 );
SE025 = playSeVer2( spep_0 + 378, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE025, 63 );
SE027 = playSeVer2( spep_0 + 402, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 402, SE027, 63 );
SE028 = playSeVer2( spep_0 + 426, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE028, 63 );
SE029 = playSeVer2( spep_0 + 450, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE029, 63 );
SE030 = playSeVer2( spep_0 + 474, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 474, SE030, 63 );
SE031 = playSeVer2( spep_0 + 498, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE031, 63 );
SE032 = playSeVer2( spep_0 + 522, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE032, 63 );

--カメラパン
SE033 = playSeVer2( spep_0 + 522, 1116, "",spep_0 + 612, 0, 45, -1);

--オーラ
SE034 = playSeVer2( spep_0 + 546, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 546, SE034, 63 );
SE035 = playSeVer2( spep_0 + 570, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE035, 63 );
SE036 = playSeVer2( spep_0 + 594, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE036, 63 );
SE040 = playSeVer2( spep_0 + 618, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE040, 63 );

--かめはめ波発射
SE037 = playSeVer2( spep_0 + 592, 1133, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 592, 1146, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 592, 1213, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「お遊びはもう せんぞ…すぐに終わらせてやる…」
playVoice( spep_0 + 70, 1246 );
setVoiceVolume( spep_0 + 70, 1246, 120 );

--「くたばれーーーーーーっ！！！！」
playVoice( spep_0 + 431, 1247 );
setVoiceVolume( spep_0 + 431, 1247, 120 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 670; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE037, 0);
stopSe( SP_dodge - 12, SE038, 0);
stopSe( SP_dodge - 12, SE039, 0);

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

-- ** SE ** --
--発射中
SE041 = playSeVer2( spep_0 + 690, 1258, "", 0, 0, 0, -1);   
SE042 = playSeVer2( spep_0 + 714, 1304, "", 0, 0, 0, -1);   
SE043 = playSeVer2( spep_0 + 732, 1161, "", 0, 0, 0, -1);   
SE044 = playSeVer2( spep_0 + 732, 1211, "",spep_0 + 1137, 0, 37, -1);
setSeVolumeByWorkId( spep_0 + 732, SE044, 204 );
SE046 = playSeVer2( spep_0 + 958, 1161, "",spep_0 + 1141, 0, 38, -1);

--敵ヒット
SE045 = playSeVer2( spep_0 + 784, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784, SE045, 120 );

--カメラパン
SE047 = playSeVer2( spep_0 + 1016, 63, "", 0, 0, 0, -1);

--威力増す
SE048 = playSeVer2( spep_0 + 1084, 1284, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 1084, 1223, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 1084, 1027, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 1093, 1145, "", 0, 0, 0, -1);

--敵飲み込む
SE052 = playSeVer2( spep_0 + 1144, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1144, SE052, 79 );

--宇宙へ
SE053 = playSeVer2( spep_0 + 1183, 1343, "",spep_0 + 1398, 0, 78, -1);
SE054 = playSeVer2( spep_0 + 1202, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1202, SE054, 85 );
SE055 = playSeVer2( spep_0 + 1248, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1248, SE055, 153 );
SE056 = playSeVer2( spep_0 + 1248, 1390, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_0 + 1258, 1296, "",spep_0 + 1391, 0, 93, -1);

--消失する
SE058 = playSeVer2( spep_0 + 1333, 1248, "",spep_0 + 1422, 0, 11, -1);
SE059 = playSeVer2( spep_0 + 1343, 1042, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 1345, 1026, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_0 + 1356, 1313, "",spep_0 + 1422, 0, 17, -1);

--爆発
SE062 = playSeVer2( spep_0 + 1423, 1069, "", 0, 7, 0, -1);
setStartTimeMs( SE062,  217 );
setSeVolumeByWorkId( spep_0 + 1423, SE062, 120 );
SE063 = playSeVer2( spep_0 + 1427, 1024, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_0 + 1473, 1068, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「さらばだ！！！！」
playVoice( spep_0 + 987, 1248 );
setVoiceVolume( spep_0 + 987, 1248, 120 );

-----------------------------
-- 終了
-----------------------------
hideKoScreen();
fadeKoLabel(1.0, 0.5)
dealDamage( spep_0 + 1430); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 1530f

else end