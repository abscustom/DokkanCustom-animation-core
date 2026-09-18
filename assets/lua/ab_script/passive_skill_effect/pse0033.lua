-- 1027290：LR_超サイヤ人トランクス(未来)_登場時演出
-- battle_301264
-- pse0033

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 3201;  -- 登場時演出	ef_001

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
-- 登場時演出	ef_001 (640F)
------------------------------------------------------
spep_0 = 0;

MAX_FRAME_0 = 1108;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 1002, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--マイ剣を持ち上げる
SE002 = playSeVer2( spep_0 + 32, 1331, "",spep_0 + 64, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 32, SE002, 58 );
SE003 = playSeVer2( spep_0 + 34, 1389, "",spep_0 + 56, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 34, SE003, 82 );
SE004 = playSeVer2( spep_0 + 36, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE004, 74 );
SE005 = playSeVer2( spep_0 + 36, 1317, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 70 );

--剣差し出す
SE006 = playSeVer2( spep_0 + 128, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE006, 40 );

--剣受け取る
SE007 = playSeVer2( spep_0 + 202, 1150, "",spep_0 + 228, 4, 8, -1);
setSeVolumeByWorkId( spep_0 + 202, SE007, 50 );
setStartTimeMs( SE007,  400 );
SE008 = playSeVer2( spep_0 + 204, 1389, "",spep_0 + 226, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 204, SE008, 65 );
SE009 = playSeVer2( spep_0 + 210, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE009, 75 );

--セリフカットイン
SE010 = playSeVer2( spep_0 + 264, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE010, 56 );

--画面遷移
SE011 = playSeVer2( spep_0 + 372, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE011, 56 );

--環境音
SE012 = playSeVer2( spep_0 + 372, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE012, 19 );

--気ダメ
SE013 = playSeVer2( spep_0 + 700, 1035, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 700, 1011, "", 0, 0, 0, -1);

--オーラ
SE015 = playSeVer2( spep_0 + 700, 1176, "",spep_0 + 986, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 700, SE015, 59 );
SE016 = playSeVer2( spep_0 + 700, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE016, 25 );
SE017 = playSeVer2( spep_0 + 724, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE017, 25 );
SE018 = playSeVer2( spep_0 + 748, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE018, 25 );

--剣光る
SE019 = playSeVer2( spep_0 + 760, 1303, "",spep_0 + 862, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 760, SE019, 58 );
setPitch( spep_0 + 760, SE019, -100 );
setTimeStretch( SE019, 0.93, 30, 4 );
SE020 = playSeVer2( spep_0 + 762, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE020, 80 );

--オーラ
SE021 = playSeVer2( spep_0 + 772, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE021, 25 );
SE022 = playSeVer2( spep_0 + 796, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 796, SE022, 25 );
SE023 = playSeVer2( spep_0 + 820, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 820, SE023, 25 );

--顔アップ
SE024 = playSeVer2( spep_0 + 832, 1226, "",spep_0 + 958, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 832, SE024, 62 );

SE025 = playSeVer2( spep_0 + 832, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 832, SE025, 46 );

--オーラ
SE026 = playSeVer2( spep_0 + 844, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 844, SE026, 25 );
SE027 = playSeVer2( spep_0 + 868, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 868, SE027, 25 );

--振りかぶる
SE028 = playSeVer2( spep_0 + 868, 1116, "",spep_0 + 918, 0, 26, -1);

--剣刀身現れる
SE029 = playSeVer2( spep_0 + 940, 1423, "",spep_0 + 1076, 12, 70, -1);
setSeVolumeByWorkId( spep_0 + 940, SE029, 79 );
setStartTimeMs( SE029,  1000 );

--オーラ
SE030 = playSeVer2( spep_0 + 892, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 892, SE030, 25 );
SE031 = playSeVer2( spep_0 + 916, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 916, SE031, 25 );

--剣かかげる
SE032 = playSeVer2( spep_0 + 916, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 916, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 916, SE033, 78 );

--剣刀身現れる
SE034 = playSeVer2( spep_0 + 938, 1264, "",spep_0 + 1082, 0, 92, -1);
setSeVolumeByWorkId( spep_0 + 938, SE034, 82 );

--オーラ
SE035 = playSeVer2( spep_0 + 940, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 940, SE035, 25 );

--剣刀身現れる
SE036 = playSeVer2( spep_0 + 940, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 940, SE036, 73 );
SE037 = playSeVer2( spep_0 + 952, 1216, "",spep_0 + 1032, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 952, SE037, 94 );
SE038 = playSeVer2( spep_0 + 968, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 968, SE038, 141 );
SE039 = playSeVer2( spep_0 + 972, 1062, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_0 + 972, SE039, 79 );
SE040 = playSeVer2( spep_0 + 976, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 976, SE040, 78 );

--環境音
SE041 = playSeVer2( spep_0 + 982, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 982, SE041, 25 );

-- ** ボイス ** --
-- 「マキがあんたに渡してって」
playVoice( spep_0 + 14, 679 );
setVoiceVolume( spep_0 + 14, 679, 100 );

-- 「やらなければいけないんだ、　オレがこの世界に生きる人間として」
playVoice( spep_0 + 262, 680 );
setVoiceVolume( spep_0 + 262, 680, 100 );

-- 「はぁああああ！！」
playVoice( spep_0 + 854, 681 );
setVoiceVolume( spep_0 + 854, 681, 126 );

-- ** 終わり ** --
endPhase( spep_0 + MAX_FRAME_0); 

end
