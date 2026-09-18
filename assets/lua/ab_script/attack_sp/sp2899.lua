--9931391:LR_超サイヤ人ゴッドSS孫悟空+超サイヤ人ゴッドSSベジータ_敵側_アクティブ必殺技：反撃のポタラ
--sp_effect_b4_00387
--sp2899

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(敵)
SP_01 = 163920; --最初～最後まで_前 ef_001
SP_01r = 163922; --最初～最後まで_前_敵側 ef_001r

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 最初～最後まで
------------------------------------------------------
MAX_FRAME_0 = 1786;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 最初～最後まで_前(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);
--[[
start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 最初～最後まで_奥(ef_001br)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);
]]

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_0 + 878 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 916 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 878 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 878 + OFFSET_X, 1, -275.9, -58.4 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, -275.9, -58.4 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -224.9, -42.3 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, -224.9, -42.3 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, -174.2, -26.3 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, -174.2, -26.3 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, -123.6, -10.4 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, -123.6, -10.4 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, -73.3, 5.5 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, -73.3, 5.5 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, -30.5, 18.3 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, -30.5, 18.3 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, -46.1, 17.1 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, -46.1, 17.1 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, -61.6, 16 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, -61.6, 16 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, -64.3, 29.6 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, -64.3, 29.6 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, -133.2, -6.8 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, -133.2, -6.8 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, -180.5, 6.9 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, -180.5, 6.9 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, -203.1, -17.3 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, -203.1, -17.3 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, -270.4, -33.7 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, -270.4, -33.7 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, -332.7, -48.9 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, -332.7, -48.9 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, -400.5, -65.5 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, -400.5, -65.5 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, -454.2, -80.5 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, -454.2, -80.5 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, -455.1, -79.5 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, -455.1, -79.5 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, -586.5, -110.4 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, -586.5, -110.4 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, -909.1, -188 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, -909.1, -188 , 0 );

setScaleKey( spep_0 + 878 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 879 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 880 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 881 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 882 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 883 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 884 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 885 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 886 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 887 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 888 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 913 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 914 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 916 + OFFSET_X, 1, 0.27, 0.27 );

setRotateKey( spep_0 + 878 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 916 + OFFSET_X, 1, 31.2 );


-- ** 音 ** --
--光に包まれる
SE001 = playSeVer2( spep_0 + 36, 1185, "", 0, 6, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 36, SE001, 172 );
setStartTimeMs( SE001,  1317 );
setPitch( spep_0 + 36, SE001, -1100 );
setTimeStretch( SE001, 0.27, 30, 4 );

--ポタラひかる
SE002 = playSeVer2( spep_0 + 0, 1371, "",spep_0 + 108, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 95 );
setPitch( spep_0 + 0, SE002, 400 );
setTimeStretch( SE002, 1.27, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1289, "",spep_0 + 134, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 51 );

--光に包まれる
SE004 = playSeVer2( spep_0 + 34, 1184, "",spep_0 + 184, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 82 );
SE005 = playSeVer2( spep_0 + 34, 1116, "", 0, 0, 0, -1);

--爆発して光たちのぼる
SE006 = playSeVer2( spep_0 + 100, 1173, "",spep_0 + 236, 0, 78, -1);
setSeVolumeByWorkId( spep_0 + 100, SE006, 83 );
SE007 = playSeVer2( spep_0 + 100, 1024, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 100, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE008, 73 );
SE009 = playSeVer2( spep_0 + 100, 1446, "",spep_0 + 336, 0, 96, -1);
setSeVolumeByWorkId( spep_0 + 100, SE009, 56 );

--気合い入れる
SE010 = playSeVer2( spep_0 + 168, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE010, 60 );
SE011 = playSeVer2( spep_0 + 168, 1035, "",spep_0 + 252, 0, 40, -1);
SE012 = playSeVer2( spep_0 + 168, 1503, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 188, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE013, 122 );
SE014 = playSeVer2( spep_0 + 200, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE014, 63 );

--オーラ
SE015 = playSeVer2( spep_0 + 240, 1176, "",spep_0 + 456, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 240, SE015, 45 );
SE016 = playSeVer2( spep_0 + 240, 1181, "",spep_0 + 454, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 240, SE016, 148 );

--遠影になる
SE017 = playSeVer2( spep_0 + 324, 1147, "",spep_0 + 488, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 324, SE017, 71 );
SE018 = playSeVer2( spep_0 + 330, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE018, 83 );
SE019 = playSeVer2( spep_0 + 330, 1503, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 330, 1241, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 336, 1072, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 350, 1504, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 350, 1345, "",spep_0 + 526, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 350, SE023, 200 );
setPitch( spep_0 + 350, SE023, 500 );
setTimeStretch( SE023, 1.33, 30, 4 );

--ソード出す
SE024 = playSeVer2( spep_0 + 440, 1116, "",spep_0 + 488, 0, 20, -1);
SE025 = playSeVer2( spep_0 + 446, 1148, "",spep_0 + 570, 0, 50, -1);
SE026 = playSeVer2( spep_0 + 470, 1152, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 470, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE027, 126 );
setPitch( spep_0 + 470, SE027, -500 );
setTimeStretch( SE027, 0.67, 30, 4 );
SE028 = playSeVer2( spep_0 + 470, 1479, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 470, 1122, "",spep_0 + 620, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 470, SE029, 73 );

--ソード構える
SE030 = playSeVer2( spep_0 + 530, 1444, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 530, SE030, 112 );
setTimeStretch( SE030, 1.66, 30, 4 );
SE031 = playSeVer2( spep_0 + 530, 1449, "",spep_0 + 924, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 530, SE031, 119 );
SE032 = playSeVer2( spep_0 + 530, 1403, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 530, SE032, 66 );
SE033 = playSeVer2( spep_0 + 530, 1176, "",spep_0 + 914, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 530, SE033, 46 );
SE034 = playSeVer2( spep_0 + 572, 1240, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 572, SE034, 72 );

--セリフカットイン
--SE035 = playSeVer2( spep_0 + 580, 1018, "", 0, 0, 0, -1);
--setSeVolumeByWorkId( spep_0 + 580, SE035, 63 );

--手を前に出す
SE036 = playSeVer2( spep_0 + 826, 1004, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 860, 1003, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 868; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
stopSe( SP_dodge - 12, SE034, 0);
stopSe( SP_dodge - 12, SE036, 0);
stopSe( SP_dodge - 6, SE037, 0);
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
--ソード突き刺す
SE038 = playSeVer2( spep_0 + 888, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 888, SE038, 141 );
SE039 = playSeVer2( spep_0 + 888, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 888, SE039, 65 );
SE040 = playSeVer2( spep_0 + 888, 1153, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 894, 1143, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 902, 1032, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE043 = playSeVer2( spep_0 + 888, 1027, "", 0, 0, 0, -1);

--地面激突
SE044 = playSeVer2( spep_0 + 924, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 934, 1044, "",spep_0 + 1034, 0, 28, -1);

--爆発して光たちのぼる
SE046 = playSeVer2( spep_0 + 998, 1067, "", 0, 0, 0, -1);

--腕前でソードひかる
SE047 = playSeVer2( spep_0 + 1058, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1058, SE047, 141 );
SE048 = playSeVer2( spep_0 + 1058, 1152, "", 0, 0, 0, -1);
setPitch( spep_0 + 1058, SE048, -100 );
setTimeStretch( SE048, 0.93, 30, 4 );

--構える
SE049 = playSeVer2( spep_0 + 1076, 1116, "",spep_0 + 1132, 0, 34, -1);

--構え中オーラ
SE050 = playSeVer2( spep_0 + 1098, 1303, "",spep_0 + 1212, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE050, 58 );
setPitch( spep_0 + 1098, SE050, 300 );
setTimeStretch( SE050, 1.2, 30, 4 );
SE051 = playSeVer2( spep_0 + 1098, 1226, "",spep_0 + 1326, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE051, 58 );
SE052 = playSeVer2( spep_0 + 1110, 1227, "",spep_0 + 1324, 0, 28, -1);
SE053 = playSeVer2( spep_0 + 1118, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1118, SE053, 67 );

--画面遷移
SE054 = playSeVer2( spep_0 + 1142, 1232, "", 0, 0, 0, -1);

--構え中オーラ
SE055 = playSeVer2( spep_0 + 1142, 1216, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1142, SE055, 68 );
setTimeStretch( SE055, 1.66, 30, 4 );
SE056 = playSeVer2( spep_0 + 1154, 1305, "",spep_0 + 1320, 0, 28, -1);
setPitch( spep_0 + 1154, SE056, 500 );
setTimeStretch( SE056, 1.33, 30, 4 );

--ソード振る
SE057 = playSeVer2( spep_0 + 1286, 1479, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 1288, 1187, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_0 + 1290, 1120, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 1290, 1426, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_0 + 1312, 1143, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 1312, 1335, "", 0, 0, 0, -1);

--爆発
SE063 = playSeVer2( spep_0 + 1380, 1159, "", 0, 0, 0, -1);

--爆発立ち上がる
SE064 = playSeVer2( spep_0 + 1406, 1068, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_0 + 1406, 1258, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_0 + 1406, 1429, "",spep_0 + 1590, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 1406, SE066, 150 );
SE067 = playSeVer2( spep_0 + 1406, 1128, "",spep_0 + 1614, 0, 80, 0.5);
setSeVolumeByWorkId( spep_0 + 1406, SE067, 79 );
setPitch( spep_0 + 1406, SE067, -1200 );
setTimeStretch( SE067, 0.2, 30, 4 );

--画面遷移
SE068 = playSeVer2( spep_0 + 1534, 8, "", 0, 0, 0, -1);


--終わり
hideKoScreen();
fadeKoLabel(1,0.5);
dealDamage( spep_0 + 1410);
endPhase( spep_0 + MAX_FRAME_0 - 200);  --1586f(KO時 1786f)

end