--1024440:超サイヤ人ゴッドSS孫悟空/超サイヤ人ゴッドSSベジータ_登場時演出
--sp_effect_b4_00232
--pse0007

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
SP_01 = 159874;--戦闘前演出

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
------------------------------------------------------
--冒頭～着弾～構え
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie( 0, SP_01, 2, 1);

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1062, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1062, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1062, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1062, eff, 255 );

--SE
--気が高まる
SE001 = playSeVer2( spep_0 + 0, 1308, "",spep_0 + 414, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 58 );
SE002 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 414, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 38 );
SE003 = playSeVer2( spep_0 + 0, 1264, "", 0, 58, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 46 );
SE004 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 252, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 43 );

--入り
SE005 = playSeVer2( spep_0 + 6, 1232, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 6, 1331, "", 0, 0, 0, -1);

--気ダメ
SE007 = playSeVer2( spep_0 + 222, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE007, 73 );
SE008 = playSeVer2( spep_0 + 222, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE008, 71 );
SE009 = playSeVer2( spep_0 + 222, 1306, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE009, 74 );

--気ダメ２
SE010 = playSeVer2( spep_0 + 304, 1282, "",spep_0 + 452, 0, 80, -1);
setSeVolumeByWorkId( spep_0 + 304, SE010, 73 );

--環境音
SE011 = playSeVer2( spep_0 + 372, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE011, 65 );

--ブルーになる１
SE012 = playSeVer2( spep_0 + 372, 1173, "",spep_0 + 438, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 372, SE012, 182 );
SE013 = playSeVer2( spep_0 + 410, 1035, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE013, 110 );
setStartTimeMs( SE013,  433 );
setPitch( spep_0 + 410, SE013, -700 );
setTimeStretch( SE013, 0.5, 30, 4 );
SE014 = playSeVer2( spep_0 + 380, 1291, "",spep_0 + 456, 16, 28, -1);
setSeVolumeByWorkId( spep_0 + 380, SE014, 58 );

--ブルーになる２
SE015 = playSeVer2( spep_0 + 444, 1173, "",spep_0 + 510, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 444, SE015, 180 );
SE016 = playSeVer2( spep_0 + 482, 1035, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE016, 110 );
setStartTimeMs( SE016,  433 );
setPitch( spep_0 + 482, SE016, -700 );
setTimeStretch( SE016, 0.5, 30, 4 );
SE017 = playSeVer2( spep_0 + 452, 1291, "",spep_0 + 528, 16, 28, -1);
setSeVolumeByWorkId( spep_0 + 452, SE017, 60 );

--ブルー化決め
SE018 = playSeVer2( spep_0 + 542, 1042, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 542, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE019, 56 );

--オーラ
SE020 = playSeVer2( spep_0 + 542, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE020, 50 );
SE021 = playSeVer2( spep_0 + 542, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE021, 178 );
SE022 = playSeVer2( spep_0 + 542, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 542, SE022, 85 );

--ブルー化決め
SE023 = playSeVer2( spep_0 + 546, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 546, SE023, 44 );

--セリフカットイン
SE024 = playSeVer2( spep_0 + 620, 1018, "", 0, 0, 0, -1);

--ラスト決め
SE025 = playSeVer2( spep_0 + 760, 1072, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 796, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 796, SE026, 79 );
SE027 = playSeVer2( spep_0 + 796, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 796, SE027, 78 );

--ボイス
--ここからが本気と本気の勝負だ
playVoice( spep_0 + 6, 427 );
setVoiceVolume( spep_0 + 6, 427, 100 );

--はあっ！！
playVoice( spep_0 + 208, 428 );
setVoiceVolume( spep_0 + 208, 428, 100 );

--これが超サイヤ人ゴッドを超えた姿だ！
playVoice( spep_0 + 614, 429 );
setVoiceVolume( spep_0 + 614, 429, 100 );

--おたがい目一杯やろうぜ
playVoice( spep_0 + 888, 430 );
setVoiceVolume( spep_0 + 888, 430, 100 );

endPhase( spep_0 + 1062 );
else end