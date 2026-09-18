--1026200：UR_人造人間17号&ヘルファイター17号_アクティブ合体
--sp_effect_a9_00103
--tf0057

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01 = 161584;	 --合体演出	ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 合体演出
-------------------------------------------------
-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + 1256, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + 1256, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + 1256, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + 1256, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1256 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--セリフカットイン
SE001 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE001, 50 );

--二人重なる
SE002 = playSeVer2( spep_0 + 326, 1397, "",spep_0 + 526, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 326, SE002, 132 );
setPitch( spep_0 + 326, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 278, 1362, "", spep_0 + 526, 38, 24, -1);
setSeVolumeByWorkId( spep_0 + 278, SE003, 178 );
setPitch( spep_0 + 278, SE003, 300 );
setTimeStretch( SE003, 1.2, 30, 4 );
SE004 = playSeVer2( spep_0 + 278, 1370, "",spep_0 + 476, 0, 124, -1);
setSeVolumeByWorkId( spep_0 + 278, SE004, 170 );
setPitch( spep_0 + 278, SE004, -300 );
setTimeStretch( SE004, 0.8, 30, 4 );
setBandpassFilter( spep_0 + 278, SE004, 24, 660 );

--環境音
SE005 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 16 );
SE006 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 366, 0, 60, -1);
setSeVolumeByWorkId( spep_0 + 0, SE006, 25 );

--背景黒くなる
SE007 = playSeVer2( spep_0 + 366, 1231, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 368, 1230, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE008, 138 );
setStartTimeMs( SE008,  750 );

--光溢れる
SE009 = playSeVer2( spep_0 + 476, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE009, 49 );
SE010 = playSeVer2( spep_0 + 476, 1371, "",spep_0 + 702, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 476, SE010, 56 );
SE011 = playSeVer2( spep_0 + 476, 1266, "",spep_0 + 708, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 476, SE011, 76 );
SE012 = playSeVer2( spep_0 + 474, 1362, "",spep_0 + 782, 0, 42, -1);
setPitch( spep_0 + 474, SE012, 300 );
setTimeStretch( SE012, 1.2, 30, 4 );
SE013 = playSeVer2( spep_0 + 482, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE013, 63 );
SE014 = playSeVer2( spep_0 + 488, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE014, 71 );

--背景収束する
SE015 = playSeVer2( spep_0 + 648, 1274, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 654, 33, "",spep_0 + 698, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 654, SE016, 71 );
SE017 = playSeVer2( spep_0 + 674, 1257, "", 0, 0, 0, -1);

--光溢れる２
SE018 = playSeVer2( spep_0 + 716, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE018, 155 );
SE019 = playSeVer2( spep_0 + 720, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE019, 77 );
SE020 = playSeVer2( spep_0 + 720, 1306, "",spep_0 + 852, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 720, SE020, 64 );
SE021 = playSeVer2( spep_0 + 720, 1371, "",spep_0 + 852, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 720, SE021, 73 );
SE022 = playSeVer2( spep_0 + 720, 1390, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE022, 68 );
setPitch( spep_0 + 720, SE022, -300 );
setTimeStretch( SE022, 0.8, 30, 4 );
SE023 = playSeVer2( spep_0 + 720, 10011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 720, SE023, 78 );

--画面遷移
SE024 = playSeVer2( spep_0 + 796, 8, "", 0, 0, 0, -1);

--合体しておりてくる
SE025 = playSeVer2( spep_0 + 824, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 824, SE025, 75 );
setPitch( spep_0 + 824, SE025, -600 );
setTimeStretch( SE025, 0.6, 30, 4 );
SE026 = playSeVer2( spep_0 + 824, 40, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 824, SE026, 79 );
setPitch( spep_0 + 824, SE026, -600 );
setTimeStretch( SE026, 0.6, 30, 4 );

--着地
SE027 = playSeVer2( spep_0 + 900, 63, "",spep_0 + 956, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 900, SE027, 79 );

--環境音
SE028 = playSeVer2( spep_0 + 902, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 902, SE028, 20 );

--着地
SE029 = playSeVer2( spep_0 + 946, 1107, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 946, 1108, "", 0, 0, 0, -1);

--ラスト決め
SE031 = playSeVer2( spep_0 + 1120, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1120, SE031, 55 );
SE032 = playSeVer2( spep_0 + 1120, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1120, SE032, 56 );

-- ** ボイス ** --
--「おまえはオレ　オレはおまえ　ひとつになるのだ」
playVoice( spep_0 + 0, 609 );
setVoiceVolume( spep_0 + 0, 609, 100 );

--「究極の人造人間の力をあじわいたいか」
playVoice( spep_0 + 981, 610 );
setVoiceVolume( spep_0 + 981, 610, 100 );

endPhase( spep_0 + 1256 );
else end