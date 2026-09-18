--1026390：バビディ_スタンバイ演出
--battle_301249

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
SP_01 = 3180;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
stanby = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, stanby, 0, 0, 0 );
setEffMoveKey( spep_0 + 930, stanby, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stanby, 1.0, 1.0 );
setEffScaleKey( spep_0 + 930, stanby, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stanby, 0 );
setEffRotateKey( spep_0 + 930, stanby, 0 );
setEffAlphaKey( spep_0 + 0, stanby, 255 );
setEffAlphaKey( spep_0 + 930, stanby, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 930, 0, 0, 0, 0, 255 );  --black bg fade

-- ** 音 ** --
-- ** SE ** --
--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );

--魔法かける
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1227, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 0, 1271, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 10, 33, "",spep_0 + 54, 0, 0, -1);

--魔法かける２
SE006 = playSeVer2( spep_0 + 196, 1204, "", 0, 16, 0, -1);
setStartTimeMs( SE006,  2083 );
SE007 = playSeVer2( spep_0 + 202, 1200, "", 0, 10, 0, -1);
setStartTimeMs( SE007,  1467 );
SE009 = playSeVer2( spep_0 + 212, 1154, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 230, 1265, "", 0, 0, 0, -1);
setPitch( spep_0 + 230, SE010, -700 );
setTimeStretch( SE010, 0.53, 30, 4 );

--腕突き出す
SE008 = playSeVer2( spep_0 + 162, 1003, "", 0, 0, 0, -1);

--水晶発光
SE011 = playSeVer2( spep_0 + 278, 1056, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 306, 1127, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 306, 1264, "", 0, 0, 0, -1);

--魔法かかっていく
SE014 = playSeVer2( spep_0 + 356, 1215, "",spep_0 + 502, 0, 46, -1);

--魔法かかる
SE015 = playSeVer2( spep_0 + 440, 1126, "",spep_0 + 512, 0, 38, -1);
setPitch( spep_0 + 440, SE015, -200 );
setTimeStretch( SE015, 0.87, 30, 4 );

--気ダメ
SE016 = playSeVer2( spep_0 + 516, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 516, SE016, 71 );
SE017 = playSeVer2( spep_0 + 524, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 524, SE017, 115 );

--オーラ
SE018 = playSeVer2( spep_0 + 556, 1036, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 580, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE019, 83 );
SE020 = playSeVer2( spep_0 + 604, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE020, 61 );
SE021 = playSeVer2( spep_0 + 628, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE021, 42 );
SE023 = playSeVer2( spep_0 + 652, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE023, 40 );
SE024 = playSeVer2( spep_0 + 676, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 676, SE024, 25 );
SE026 = playSeVer2( spep_0 + 700, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE026, 40 );
SE027 = playSeVer2( spep_0 + 724, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE027, 63 );
SE028 = playSeVer2( spep_0 + 748, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE028, 63 );
SE029 = playSeVer2( spep_0 + 772, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE029, 63 );
SE031 = playSeVer2( spep_0 + 796, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 796, SE031, 63 );
SE032 = playSeVer2( spep_0 + 820, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 820, SE032, 63 );
SE033 = playSeVer2( spep_0 + 844, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 844, SE033, 63 );
SE034 = playSeVer2( spep_0 + 868, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 868, SE034, 63 );
SE035 = playSeVer2( spep_0 + 892, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 892, SE035, 63 );

--画面遷移
SE022 = playSeVer2( spep_0 + 638, 44, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 678, 8, "", 0, 0, 0, -1);

--顔あげる
SE030 = playSeVer2( spep_0 + 772, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE030, 76 );

-- ** ボイス ** --
--「使わせてもらうぞきさまを！！」
playVoice( spep_0 + 2, 596 );
setVoiceVolume( spep_0 + 2, 596, 126 );

--「はああああ……！！」
playVoice( spep_0 + 265, 597 );
setVoiceVolume( spep_0 + 265, 597, 100 );

--「うわおおおお…！！」
playVoice( spep_0 + 478, 598 );
setVoiceVolume( spep_0 + 478, 598, 100 );

--「はあ……」
playVoice( spep_0 + 748, 599 );
setVoiceVolume( spep_0 + 748, 599, 126 );


endPhase( spep_0 + 920 );


else end
