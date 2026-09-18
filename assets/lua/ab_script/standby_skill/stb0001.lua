--1025730：LR_超サイヤ人3孫悟空&超サイヤ人2ベジータ_スタンバイ演出
--battle_301247
--stb0001

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
SP_01 = 3178;

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
setEffMoveKey( spep_0 + 1504, stanby, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, stanby, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1504, stanby, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, stanby, 0 );
setEffRotateKey( spep_0 + 1504, stanby, 0 );
setEffAlphaKey( spep_0 + 0, stanby, 255 );
setEffAlphaKey( spep_0 + 1504, stanby, 255 );

-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 16, 1018, "", 0, 0, 0, -1);

--悟空構える
SE003 = playSeVer2( spep_0 + 316, 1233, "", 0, 6, 0, -1);
setStartTimeMs( SE003,  67 );
SE004 = playSeVer2( spep_0 + 324, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE004, 63 );

--服破る
SE005 = playSeVer2( spep_0 + 392, 1333, "",spep_0 + 432, 4, 16, -1);
setStartTimeMs( SE005,  467 );
SE006 = playSeVer2( spep_0 + 394, 1197, "", 0, 0, 0, -1);

--飛び上がる
SE007 = playSeVer2( spep_0 + 462, 1188, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE007, 76 );
setStartTimeMs( SE007,  117 );
SE008 = playSeVer2( spep_0 + 462, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 462, SE008, 72 );
SE009 = playSeVer2( spep_0 + 462, 1011, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 462, 1116, "",spep_0 + 496, 0, 8, -1);
SE011 = playSeVer2( spep_0 + 482, 1207, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 482, SE011, 67 );
setStartTimeMs( SE011,  300 );
SE012 = playSeVer2( spep_0 + 478, 44, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 490, 1117, "", 0, 0, 0, -1);

--腕上げる
SE014 = playSeVer2( spep_0 + 658, 1013, "", 0, 0, 0, -1);

--気集まる
SE015 = playSeVer2( spep_0 + 1028, 1303, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE015, 90 );
setStartTimeMs( SE015,  367 );
SE016 = playSeVer2( spep_0 + 1034, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE016, 86 );
SE017 = playSeVer2( spep_0 + 1034, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE017, 80 );
SE018 = playSeVer2( spep_0 + 1044, 1274, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1044, SE018, 120 );

--元気玉生成
SE019 = playSeVer2( spep_0 + 1086, 1224, "", 0, 0, 0, -1);
setPitch( spep_0 + 1086, SE019, -100 );
setSeVolumeByWorkId( spep_0 + 1086, SE019, 130 );
setTimeStretch( SE019, 1.43, 30, 4 );
SE020 = playSeVer2( spep_0 + 1122, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1122, SE020, 79 );
setPitch( spep_0 + 1122, SE020, -100 );
setTimeStretch( SE020, 0.93, 30, 4 );

--元気玉音
SE021 = playSeVer2( spep_0 + 1144, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1144, SE021, 37 );
SE022 = playSeVer2( spep_0 + 1144, 1396, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1144, SE022, 60 );
setPitch( spep_0 + 1144, SE022, -500 );
setTimeStretch( SE022, 0.67, 30, 4 );

--瞬間移動
SE023 = playSeVer2( spep_0 + 1272, 1109, "", 0, 0, 0, -1);

--ベジータ構える
SE024 = playSeVer2( spep_0 + 1450, 1233, "",spep_0 + 1476, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 1450, SE024, 71 );
SE025 = playSeVer2( spep_0 + 1463, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1463, SE025, 63 );

---------------------------------------------
--ボイス
---------------------------------------------
--「はじめるぞ。用意をしろ………」
playVoice( spep_0 + 24, 560 );
setVoiceVolume( spep_0 + 24, 560, 100 );

--「元気玉の用意だ！」
playVoice( spep_0 + 185, 561 );
setVoiceVolume( spep_0 + 185, 561, 100 );

--「おう！」
playVoice( spep_0 + 316, 562 );
setVoiceVolume( spep_0 + 316, 562, 100 );

--「みんな！！オラに元気を可能なかぎりわけてくれ！たのむ！」
playVoice( spep_0 + 717, 563 );
setVoiceVolume( spep_0 + 717, 563, 100 );

--「うおほっ　きたきた！！」
playVoice( spep_0 + 1132, 564 );
setVoiceVolume( spep_0 + 1132, 564, 126 );

--「オレがなんとかすこしでも時間を稼ぐ！！」
playVoice( spep_0 + 1314, 565 );
setVoiceVolume( spep_0 + 1314, 565, 100 );

endPhase( spep_0 + 1504 );

else end
