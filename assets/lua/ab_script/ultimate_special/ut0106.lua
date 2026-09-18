--4031600:LR_超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)+超サイヤ人孫悟飯(青年期)_アクティブ必殺：フュージョン
--sp_effect_a9_00145
--ut0106

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163964; --ef_001(開始からフィニッシュまで 前面)
--SP_01b = 163965; --ef_001b(開始からフィニッシュまで 背面)

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

setDisp( 0, 1, 0);
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
setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 1054 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 1054 -13, SP_01, spep_0 + 1054 -13 + 2, 1);

       else
           skipFrame(0, spep_0 + 988);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 988 , SP_01, spep_0 + 988 -1 + 2, 1);
            
            --輪っか広がる
            SE039 = playSeVer2( spep_0 + 988 +1, 1396, "",spep_0 + 1120, 0, 28, -1);
            setSeVolumeByWorkId( spep_0 + 988 +1, SE039, 66 );
            SE040 = playSeVer2( spep_0 + 988 +1, 1397, "",spep_0 + 1120, 0, 26, -1);
            setSeVolumeByWorkId( spep_0 + 988 +1, SE040, 67 );
            setStartTimeMs( SE040,  500 );
       end
    else
      setupMovie(0, SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開始からフィニッシュまで
-------------------------------------------------

MAX_FRAME_0 = 1204;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001(開始からフィニッシュまで 全面)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);
--[[
base_0 = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b(開始からフィニッシュまで 背面)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 828 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 854 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 828 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 828 + OFFSET_X, 1, 326.8, 35.1 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 326.8, 35.1 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 240.4, -23.2 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 240.4, -23.2 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 179.8, -63.5 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 179.8, -63.5 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 100.3, -116 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 100.3, -116 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 56.3, -145.1 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 56.3, -145.1 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 35.3, -159.1 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 35.3, -159.1 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 28.3, -164 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 28.3, -164 , 0 );

setScaleKey( spep_0 + 828 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 831 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 832 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 835 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 836 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 839 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 840 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 843 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 844 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 854 + OFFSET_X, 1, 0.76, 0.76 );

setRotateKey( spep_0 + 828 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 854 + OFFSET_X, 1, -8.5 );

--敵の動き2
setDisp( spep_0 + 918 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 988 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 918 + OFFSET_X, 1, 0, -633.3 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, 0, -633.3 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, 0, -529.7 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, 0, -529.7 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, 0, -354.2 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, 0, -354.2 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, 0, -225.2 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, 0, -225.2 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, 0.1, -176.6 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, 0.1, -176.6 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, 0.1, -136.7 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, 0.1, -136.7 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, 0, -83 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, 0, -83 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, 0, -67.7 , 0 );
setMoveKey( spep_0 + 941 + OFFSET_X, 1, 0, -67.7 , 0 );
setMoveKey( spep_0 + 942 + OFFSET_X, 1, 0, -55.7 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 0, -55.7 , 0 );

setScaleKey( spep_0 + 918 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 919 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 920 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 923 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 924 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 927 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 928 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 929 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 930 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 931 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 932 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 935 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 936 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 937 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 938 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 941 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 942 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 988 + OFFSET_X, 1, 0.67, 0.67 );

setRotateKey( spep_0 + 918 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 988 + OFFSET_X, 1, 0 );

--敵の動き3

setDisp( spep_0 + 1054 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1088 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1074 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 1054 + OFFSET_X, 1, 0.1, -56.1 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_X, 1, 0.1, -56.1 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_X, 1, 0, -55.7 , 0 );
setMoveKey( spep_0 + 1061 + OFFSET_X, 1, 0, -55.7 , 0 );
setMoveKey( spep_0 + 1062 + OFFSET_X, 1, 0, -54.5 , 0 );
setMoveKey( spep_0 + 1065 + OFFSET_X, 1, 0, -54.5 , 0 );
setMoveKey( spep_0 + 1066 + OFFSET_X, 1, 0, -52.3 , 0 );
setMoveKey( spep_0 + 1069 + OFFSET_X, 1, 0, -52.3 , 0 );
setMoveKey( spep_0 + 1070 + OFFSET_X, 1, 0, -47.8 , 0 );
setMoveKey( spep_0 + 1073 + OFFSET_X, 1, 0, -47.8 , 0 );
setMoveKey( spep_0 + 1074 + OFFSET_X, 1, 0, -24.6 , 0 );
setMoveKey( spep_0 + 1077 + OFFSET_X, 1, 0, -24.6 , 0 );
setMoveKey( spep_0 + 1078 + OFFSET_X, 1, 0.1, -25.3 , 0 );
setMoveKey( spep_0 + 1081 + OFFSET_X, 1, 0.1, -25.3 , 0 );
setMoveKey( spep_0 + 1082 + OFFSET_X, 1, 0, -25.9 , 0 );
setMoveKey( spep_0 + 1085 + OFFSET_X, 1, 0, -25.9 , 0 );
setMoveKey( spep_0 + 1086 + OFFSET_X, 1, 0, -26.3 , 0 );
setMoveKey( spep_0 + 1088 + OFFSET_X, 1, 0, -26.3 , 0 );

setScaleKey( spep_0 + 1054 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 1061 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 1062 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 1065 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 1066 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 1069 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_0 + 1070 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 1073 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 1074 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 1077 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 1078 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 1081 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 1082 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 1088 + OFFSET_X, 1, 0.88, 0.88 );

setRotateKey( spep_0 + 1054 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1073 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1074 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 1088 + OFFSET_X, 1, -46.9 );

--敵の動き4
setDisp( spep_0 + 1090 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1092 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 1090 + OFFSET_X, 1, 3, 0, 0, 0, 1.0);
setBlendColor( spep_0 + 1092 + OFFSET_X, 1, 3, 0, 0, 0, 0);

changeAnime( spep_0 + 1090 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1090 + OFFSET_X, 1, -0.5, 0 , 0 );
setMoveKey( spep_0 + 1092 + OFFSET_X, 1, -0.5, 0 , 0 );

setScaleKey( spep_0 + 1090 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 1092 + OFFSET_X, 1, 1.02, 1.02 );

setRotateKey( spep_0 + 1090 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_0 + 1092 + OFFSET_X, 1, -15.9 );


-- ** 音 ** --

--セリフカットイン
SE001 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE001, 63 );
--走りよる
SE002 = playSeVer2( spep_0 + 14, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 188 );
SE003 = playSeVer2( spep_0 + 32, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 135 );
SE004 = playSeVer2( spep_0 + 40, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 153 );
SE005 = playSeVer2( spep_0 + 52, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE005, 204 );
SE006 = playSeVer2( spep_0 + 62, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE006, 178 );
SE007 = playSeVer2( spep_0 + 72, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 158 );
SE008 = playSeVer2( spep_0 + 86, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE008, 168 );
SE009 = playSeVer2( spep_0 + 90, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE009, 146 );
--腕横に出す
SE010 = playSeVer2( spep_0 + 122, 1003, "", 0, 0, 0, -1);

--指合わせる
SE011 = playSeVer2( spep_0 + 166, 1233, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 166, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1006, "", 0, 0, 0, -1);

--変身する
SE014 = playSeVer2( spep_0 + 188, 1273, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 192, 1127, "",spep_0 + 336, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 74 );
SE016 = playSeVer2( spep_0 + 192, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE016, 80 );

--オーラまとって登場
SE017 = playSeVer2( spep_0 + 246, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE017, 76 );
SE018 = playSeVer2( spep_0 + 246, 1062, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 248, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE019, 63 );
SE021 = playSeVer2( spep_0 + 272, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE021, 63 );
SE022 = playSeVer2( spep_0 + 296, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE022, 63 );
SE023 = playSeVer2( spep_0 + 320, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE023, 63 );
SE025 = playSeVer2( spep_0 + 344, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE025, 63 );
SE026 = playSeVer2( spep_0 + 368, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE026, 63 );

--環境音
SE020 = playSeVer2( spep_0 + 256, 1269, "",spep_0 + 1218, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 256, SE020, 25 );

--画面遷移
SE024 = playSeVer2( spep_0 + 350, 1232, "", 0, 0, 0, -1);

--指かかげる
SE027 = playSeVer2( spep_0 + 378, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE027, 151 );

--集中線
SE028 = playSeVer2( spep_0 + 404, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE028, 68 );
SE029 = playSeVer2( spep_0 + 404, 1237, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 404, SE029, 79 );

--気弾溜め
SE030 = playSeVer2( spep_0 + 642, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE030, 100 );
setPitch( spep_0 + 640, SE030, 200 );
setTimeStretch( SE030, 1.13, 30, 4 );
SE031 = playSeVer2( spep_0 + 642, 1296, "",spep_0 + 724, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 642, SE031, 75 );
setPitch( spep_0 + 642, SE031, -200 );
setTimeStretch( SE031, 0.87, 30, 4 );

--気弾輪っかにする
SE032 = playSeVer2( spep_0 + 672, 1275, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 672, SE032, 164 );
setPitch( spep_0 + 670, SE032, -600 );
setTimeStretch( SE032, 0.6, 30, 4 );
SE033 = playSeVer2( spep_0 + 680, 1240, "",spep_0 + 864, 0, 34, -1);
SE034 = playSeVer2( spep_0 + 682, 1214, "",spep_0 + 866, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 682, SE034, 114 );

--気弾投げる
SE035 = playSeVer2( spep_0 + 828, 1027, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 828, 1241, "",spep_0 + 938, 0, 40, -1);

--腕広げる
SE037 = playSeVer2( spep_0 + 882, 1007, "", 0, 0, 0, -1);

--輪っか広がる
SE038 = playSeVer2( spep_0 + 910, 1499, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 910, 1396, "",spep_0 + 1120, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 910, SE039, 66 );
SE040 = playSeVer2( spep_0 + 910, 1397, "",spep_0 + 1120, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 910, SE040, 67 );
    
--腕前で合わせる
SE041 = playSeVer2( spep_0 + 1038, 1003, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1048, 1006, "", 0, 0, 0, -1);



-- ** 声 ** --
--「フュー…ジョン！！」
playVoice( spep_0 + 0, 1058 );
setVoiceVolume( spep_0 + 0, 1058, 100 );
--「はっ！！！」
playVoice( spep_0 + 166, 1059 );
setVoiceVolume( spep_0 + 166, 1059, 100 );
--「くらえ！！！ギャラクティカドーナツだ！！！！」
playVoice( spep_0 + 384, 1060 );
setVoiceVolume( spep_0 + 384, 1060, 100 );

-----------------------------
-- 回避
-----------------------------

if(_IS_DODGE_ == 1) then
    SP_dodge = spep_0 + 1054; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE038, 0);
    stopSe( SP_dodge - 12, SE039, 0);
    stopSe( SP_dodge - 12, SE040, 0);
    stopSe( SP_dodge - 12, SE041, 0);
    stopSe( SP_dodge - 6, SE042, 0);
    pauseAll( SP_dodge, 67);
    
    setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
    
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
--輪っか収束する
SE043 = playSeVer2( spep_0 + 1050, 1363, "",spep_0 + 1112, 0, 20, -1);
setTimeStretch( SE043, 0.83, 30, 4 );
SE044 = playSeVer2( spep_0 + 1058, 1500, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 1058, 17, "",spep_0 + 1106, 0, 14, -1);

--爆発
SE046 = playSeVer2( spep_0 + 1092, 1024, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 1092, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 1092, 1427, "", 0, 0, 0, -1);

--終わり
hideKoScreen();
dealDamage( spep_0 + 1088);
endPhase( spep_0 + MAX_FRAME_0); --1204f
fadeKoLabel(1,0.5);

else end