-- 1026900: LR_超サイヤ人4孫悟空_スタンバイ演出
-- sp_effect_b4_00293

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 161981;  -- 超4悟空の前に悟飯悟天トランクスが降り立つ ef_001

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
setupMovie(0 , SP_001, 0, 1);

spep_0 = 0;

------------------------------------------------------
-- 超4悟空の前に悟飯悟天トランクスが降り立つ ef_001 (1256F)
------------------------------------------------------
MAX_FRAME_0 = 1256;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_0 + 1140, 906, MAX_FRAME_0, 0x100, -1, 0, 0, 0 );  -- 集中線
setEffShake( spep_0 + 0, shuchusen_2, 42, 20 );
setEffMoveKey( spep_0 + 0, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, shuchusen_2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_0 + MAX_FRAME_0, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_0 + 0, shuchusen_2, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, shuchusen_2, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen_2, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, shuchusen_2, 255 );

-- ** 敵キャラクター ** --
OFFSET_1 = -1;

setDisp( spep_0 + 880 + OFFSET_1, 1, 1 );
setDisp( spep_0 + 1060 + OFFSET_1, 1, 0 );

--敵の動き1
changeAnime( spep_0 + 880 + OFFSET_1, 1, 100 );

setMoveKey( spep_0 + 880 + OFFSET_1, 1, 228.3, 324.5 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_1, 1, 228.3, 324.5 , 0 );
setScaleKey( spep_0 + 880 + OFFSET_1, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 999 + OFFSET_1, 1, 0.5, 0.5 );
setRotateKey( spep_0 + 880 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 999 + OFFSET_1, 1, 0 );

--敵の動き2
changeAnime( spep_0 + 1000 + OFFSET_1, 1, 118 );

setMoveKey( spep_0 + 1000 + OFFSET_1, 1, 309.7, -154.4 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_1, 1, 309.7, -154.4 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_1, 1, 309.4, -154.4 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_1, 1, 309.4, -154.4 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_1, 1, 309.1, -154.4 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_1, 1, 309.1, -154.4 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_1, 1, 308.8, -154.4 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_1, 1, 308.8, -154.4 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_1, 1, 308.5, -154.4 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_1, 1, 308.5, -154.4 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_1, 1, 308.2, -154.4 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_1, 1, 308.2, -154.4 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_1, 1, 308, -154.4 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_1, 1, 308, -154.4 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_1, 1, 307.7, -154.4 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_1, 1, 307.7, -154.4 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_1, 1, 307.4, -154.4 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_1, 1, 307.4, -154.4 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_1, 1, 307.1, -154.4 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_1, 1, 307.1, -154.4 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_1, 1, 306.8, -154.4 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_1, 1, 306.8, -154.4 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_1, 1, 306.6, -154.4 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_1, 1, 306.6, -154.4 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_1, 1, 306.3, -154.4 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_1, 1, 306.3, -154.4 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_1, 1, 306, -154.4 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_1, 1, 306, -154.4 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_1, 1, 305.7, -154.4 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_1, 1, 305.7, -154.4 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_1, 1, 305.4, -154.4 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_1, 1, 305.4, -154.4 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_1, 1, 305.1, -154.4 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_1, 1, 305.1, -154.4 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_1, 1, 304.9, -154.4 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_1, 1, 304.9, -154.4 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_1, 1, 304.6, -154.4 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_1, 1, 304.6, -154.4 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_1, 1, 304.3, -154.4 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_1, 1, 304.3, -154.4 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_1, 1, 304, -154.4 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_1, 1, 304, -154.4 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_1, 1, 303.7, -154.4 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_1, 1, 303.7, -154.4 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_1, 1, 303.5, -154.4 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_1, 1, 303.5, -154.4 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_1, 1, 303.2, -154.4 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_1, 1, 303.2, -154.4 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_1, 1, 302.9, -154.4 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_1, 1, 302.9, -154.4 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_1, 1, 302.6, -154.4 , 0 );
setMoveKey( spep_0 + 1051 + OFFSET_1, 1, 302.6, -154.4 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_1, 1, 302.3, -154.4 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_1, 1, 302.3, -154.4 , 0 );
setMoveKey( spep_0 + 1054 + OFFSET_1, 1, 302, -154.4 , 0 );
setMoveKey( spep_0 + 1055 + OFFSET_1, 1, 302, -154.4 , 0 );
setMoveKey( spep_0 + 1056 + OFFSET_1, 1, 301.8, -154.4 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_1, 1, 301.8, -154.4 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_1, 1, 301.5, -154.4 , 0 );
setMoveKey( spep_0 + 1059 + OFFSET_1, 1, 301.5, -154.4 , 0 );
setMoveKey( spep_0 + 1060 + OFFSET_1, 1, 301.5, -154.4 , 0 );

setScaleKey( spep_0 + 1000 + OFFSET_1, 1, 6.4, 6.4 );
setScaleKey( spep_0 + 1060 + OFFSET_1, 1, 6.4, 6.4 );
setRotateKey( spep_0 + 1000 + OFFSET_1, 1, 0 );
setRotateKey( spep_0 + 1060 + OFFSET_1, 1, 0 );

-- ** 音 ** --
--仲間降りてくる
SE001 = playSeVer2( spep_0 + 10, 1117, "",spep_0 + 90, 8, 20, -1);
setSeVolumeByWorkId( spep_0 + 10, SE001, 75 );
setStartTimeMs( SE001,  167 );
setPitch( spep_0 + 10, SE001, 600 );
setTimeStretch( SE001, 1.4, 30, 4 );
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
--仲間降りてくる
SE003 = playSeVer2( spep_0 + 10, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 58 );
SE004 = playSeVer2( spep_0 + 16, 63, "",spep_0 + 80, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 68 );
--仲間着地
SE005 = playSeVer2( spep_0 + 74, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE005, 148 );
SE006 = playSeVer2( spep_0 + 74, 1192, "",spep_0 + 92, 0, 8, -1);
SE007 = playSeVer2( spep_0 + 76, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE007, 155 );
SE008 = playSeVer2( spep_0 + 78, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE008, 186 );
--セリフカットイン
SE009 = playSeVer2( spep_0 + 108, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE009, 56 );
--空気音
SE010 = playSeVer2( spep_0 + 388, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE010, 18 );
setBandpassFilter( spep_0 + 388, SE010, 220, 24000 );
--腕上げる
SE011 = playSeVer2( spep_0 + 610, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE011, 83 );
setTimeStretch( SE011, 1.39, 30, 4 );
setBandpassFilter( spep_0 + 610, SE011, 24, 1180 );
--気を溜める
SE012 = playSeVer2( spep_0 + 764, 1035, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 783, 1035, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 809, 1035, "", 0, 0, 0, -1);
--オーラ
SE015 = playSeVer2( spep_0 + 830, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 854, 1036, "", 0, 0, 0, -1);
--空力音
SE017 = playSeVer2( spep_0 + 862, 20, "", 0, 26, 0, -1);
SE018 = playSeVer2( spep_0 + 862, 1160, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_0 + 862, SE018, 50 );
--オーラ
SE019 = playSeVer2( spep_0 + 878, 1036, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 902, 1036, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 926, 1036, "", 0, 0, 0, -1);
--ウーブ降りてくる
SE022 = playSeVer2( spep_0 + 940, 44, "", 0, 0, 0, -1);
--オーラ
SE023 = playSeVer2( spep_0 + 950, 1036, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 958, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 958, SE024, 146 );
SE025 = playSeVer2( spep_0 + 974, 1036, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 998, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 998, SE026, 79 );
SE027 = playSeVer2( spep_0 + 1022, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1022, SE027, 79 );
SE028 = playSeVer2( spep_0 + 1046, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1046, SE028, 79 );
SE029 = playSeVer2( spep_0 + 1070, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1070, SE029, 63 );
--腕伸ばす
SE030 = playSeVer2( spep_0 + 1086, 1003, "", 0, 0, 0, -1);
--オーラ
SE031 = playSeVer2( spep_0 + 1094, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1094, SE031, 63 );
--腕伸ばす
SE032 = playSeVer2( spep_0 + 1104, 1233, "", 0, 0, 0, -1);
--オーラ
SE033 = playSeVer2( spep_0 + 1118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1118, SE033, 63 );
--地響き
SE034 = playSeVer2( spep_0 + 1118, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1118, SE034, 89 );
setBandpassFilter( spep_0 + 1118, SE034, 24, 400 );
SE035 = playSeVer2( spep_0 + 1118, 1044, "", 0, 0, 0, -1);
setBandpassFilter( spep_0 + 1118, SE035, 24, 990 );
--腕伸ばす
SE036 = playSeVer2( spep_0 + 1114, 1006, "", 0, 0, 0, -1);
--オーラ
SE037 = playSeVer2( spep_0 + 1142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1142, SE037, 63 );
SE038 = playSeVer2( spep_0 + 1166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1166, SE038, 63 );
SE039 = playSeVer2( spep_0 + 1190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1190, SE039, 63 );
SE040 = playSeVer2( spep_0 + 1214, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1214, SE040, 63 );
SE041 = playSeVer2( spep_0 + 1238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1238, SE041, 63 );

-- 「みんなの超サイヤパワーを 全部オレに分けてくれ！」
playVoice( spep_0 + 102, 650 );
setVoiceVolume( spep_0 + 102, 650, 141 );
-- 「フルパワー状態の超サイヤ人4だったら オレはぜってぇに負けねぇ！」
playVoice( spep_0 + 368, 651 );
setVoiceVolume( spep_0 + 368, 651, 141 );
-- 「悟空さんにはやく気を！」
playVoice( spep_0 + 1074, 652 );
setVoiceVolume( spep_0 + 1074, 652, 141 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
endPhase( spep_0 + MAX_FRAME_0 - 2); -- 1256

else end