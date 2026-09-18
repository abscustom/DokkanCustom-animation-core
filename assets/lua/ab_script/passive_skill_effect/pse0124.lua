--1034030:LR_超サイヤ人孫悟空_登場時演出
--battle_301364
--pse0124

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 3312; --登場時演出 ef_001

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 最初 〜 最後まで
------------------------------------------------------
MAX_FRAME_0 = 1296;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場時演出(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--服なびく
SE003 = playSeVer2( spep_0 + 2, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE003, 81 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 3, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 3, SE004, 63 );

--服なびく
SE005 = playSeVer2( spep_0 + 30, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 84 );
setPitch( spep_0 + 30, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 138, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE006, 80 );
setPitch( spep_0 + 138, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 168, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE007, 88 );
setPitch( spep_0 + 168, SE007, 300 );
setTimeStretch( SE007, 1.2, 30, 4 );
SE008 = playSeVer2( spep_0 + 262, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE008, 55 );

--画面遷移
SE009 = playSeVer2( spep_0 + 283, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 283, SE009, 60 );
SE010 = playSeVer2( spep_0 + 285, 4, "", 0, 0, 0, -1);

--環境音
SE011 = playSeVer2( spep_0 + 313, 1229, "", 0, 0, 0, -1);

--噴火
SE012 = playSeVer2( spep_0 + 644, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE012, 62 );
SE013 = playSeVer2( spep_0 + 644, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 644, SE013, 47 );
SE014 = playSeVer2( spep_0 + 755, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 755, SE014, 78 );
SE015 = playSeVer2( spep_0 + 762, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE015, 74 );

--気ダメ
SE016 = playSeVer2( spep_0 + 898, 1035, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 898, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 898, SE017, 77 );
SE018 = playSeVer2( spep_0 + 918, 1504, "", 0, 0, 0, -1);

--オーラ
SE019 = playSeVer2( spep_0 + 933, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 933, SE019, 56 );
SE020 = playSeVer2( spep_0 + 957, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 957, SE020, 56 );
SE021 = playSeVer2( spep_0 + 981, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 981, SE021, 56 );
SE022 = playSeVer2( spep_0 + 1005, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1005, SE022, 56 );
SE023 = playSeVer2( spep_0 + 1029, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1029, SE023, 56 );
SE025 = playSeVer2( spep_0 + 1053, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1053, SE025, 56 );
SE026 = playSeVer2( spep_0 + 1077, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1077, SE026, 56 );
SE029 = playSeVer2( spep_0 + 1101, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1101, SE029, 56 );
SE030 = playSeVer2( spep_0 + 1125, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1125, SE030, 56 );
SE031 = playSeVer2( spep_0 + 1149, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1149, SE031, 94 );
SE032 = playSeVer2( spep_0 + 1173, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1173, SE032, 56 );
SE033 = playSeVer2( spep_0 + 1197, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1197, SE033, 56 );
SE034 = playSeVer2( spep_0 + 1221, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1221, SE034, 56 );
SE035 = playSeVer2( spep_0 + 1245, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1245, SE035, 56 );
SE036 = playSeVer2( spep_0 + 1269, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1269, SE036, 56 );
SE037 = playSeVer2( spep_0 + 1293, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1293, SE037, 56 );

--風圧
SE024 = playSeVer2( spep_0 + 1025, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1025, SE024, 65 );

--ラスト決め
SE027 = playSeVer2( spep_0 + 1085, 1068, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 1085, 1062, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「オレは地球からきさまを たおすためにやってきたサイヤ人………」
playVoice( spep_0 + 2, 1235 );
setVoiceVolume( spep_0 + 2, 1235, 106 );

--「おだやかな心をもちながらはげしい怒りによって目覚めた伝説の戦士…」
playVoice( spep_0 + 287, 1236 );
setVoiceVolume( spep_0 + 287, 1236, 106 );

--「超サイヤ人孫悟空だ！！！！！」
playVoice( spep_0 + 915, 1237 );
setVoiceVolume( spep_0 + 915, 1237, 122 );


-----------------------------
-- 終了
-----------------------------
endPhase( spep_0 + MAX_FRAME_0); -- 1296f

end