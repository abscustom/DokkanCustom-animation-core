--1023520:ベジータ(大猿)_大猿変身(アクティブスキル)
--sp_effect_b4_00213

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
SP_01 = 159091;--大猿化

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
------------------------------------------------------
-- 大猿化
------------------------------------------------------
--はじめの準備
spep_0=0;
eff = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1356, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1356, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1356, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1356, eff, 255 );

--SE
--画面外気弾溜め
SE002 = playSeVer2( spep_0 + 72, 1263, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE002, 153 );
setStartTimeMs( SE002,  317 );
SE003 = playSeVer2( spep_0 + 72, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE003, 140 );

--気弾溜めはじめ
SE004 = playSeVer2( spep_0 + 108, 1035, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 108, 1261, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 108, 1154, "", 0, 0, 0, -1);

--気弾溜め
SE007 = playSeVer2( spep_0 + 108, 1239, "",spep_0 + 216, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 108, SE007, 153 );
SE008 = playSeVer2( spep_0 + 208, 1239, "",spep_0 + 308, 2, 6, -1);
setSeVolumeByWorkId( spep_0 + 208, SE008, 153 );
setStartTimeMs( SE008,  133 );
SE009 = playSeVer2( spep_0 + 110, 1199, "", 0, 0, 0, -1);
setPitch( spep_0 + 110, SE009, -100 );
setTimeStretch( SE009, 0.93, 30, 4 );
SE010 = playSeVer2( spep_0 + 180, 1199, "", 0, 0, 0, -1);
setPitch( spep_0 + 180, SE010, -100 );
setTimeStretch( SE010, 0.93, 30, 4 );
SE011 = playSeVer2( spep_0 + 246, 1199, "",spep_0 + 310, 0, 8, -1);
setPitch( spep_0 + 246, SE011, -100 );
setTimeStretch( SE011, 0.93, 30, 4 );

--振りかぶる
SE012 = playSeVer2( spep_0 + 190, 1004, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 220 +4, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE013,  333 );

--気弾投げる
SE014 = playSeVer2( spep_0 + 294, 1193, "",spep_0 + 480, 0, 98, -1);
SE015 = playSeVer2( spep_0 + 294, 1027, "", 0, 0, 0, -1);

--集中線
SE016 = playSeVer2( spep_0 + 338, 20, "", 0, 0, 0, -1);

--手握る
SE017 = playSeVer2( spep_0 + 418, 1233, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 418, 1189, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 428, 1006, "", 0, 0, 0, -1);

--気弾膨れる
SE020 = playSeVer2( spep_0 + 458, 1204, "", 0, 8, 0, -1);
setStartTimeMs( SE020,  2317 );
SE021 = playSeVer2( spep_0 + 468, 1157, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 468, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE022, 73 );

--気弾爆発
SE023 = playSeVer2( spep_0 + 490, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE023, 88 );
SE024 = playSeVer2( spep_0 + 494, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE024, 81 );
SE025 = playSeVer2( spep_0 + 492, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE025, 188 );
SE026 = playSeVer2( spep_0 + 492, 1264, "", 0, 0, 0, -1);
setTimeStretch( SE026, 1.25, 30, 4 );

--顔カットイン
SE001 = playSeVer2( spep_0 + 500, 1018, "", 0, 0, 0, -1);

--大猿化
SE028 = playSeVer2( spep_0 + 648, 1190, "", 0, 0, 0, -1);
setPitch( spep_0 + 648, SE028, -400 );
setTimeStretch( SE028, 0.73, 30, 4 );

--大猿の咆哮
SE027 = playSeVer2( spep_0 + 732, 1125, "",spep_0 + 982, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 732, SE027, 90 );

--大猿化
SE029 = playSeVer2( spep_0 + 734, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 734, SE029, 79 );
setPitch( spep_0 + 734, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );

--大猿になって立ち上がる
SE030 = playSeVer2( spep_0 + 794, 1330, "", 0, 0, 0, -1);

--大猿叫ぶ
SE031 = playSeVer2( spep_0 + 860, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 860, SE031, 74 );
SE032 = playSeVer2( spep_0 + 860, 20, "", 0, 0, 0, -1);

--環境音
SE033 = playSeVer2( spep_0 + 910, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE033, 52 );

--構える
SE034 = playSeVer2( spep_0 + 1034, 1116, "",spep_0 + 1078, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE034, 79 );
SE035 = playSeVer2( spep_0 + 1072, 1153, "",spep_0 + 1110, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 1072, SE035, 71 );
setPitch( spep_0 + 1072, SE035, -300 );
setTimeStretch( SE035, 0.8, 30, 4 );

--ポーズ替え
SE036 = playSeVer2( spep_0 + 1230, 1003, "", 0, 0, 0, -1);
setPitch( spep_0 + 1230, SE036, -800 );
setTimeStretch( SE036, 0.47, 30, 4 );

--ラスト決め
SE037 = playSeVer2( spep_0 + 1282, 1062, "", 0, 0, 0, -1);
setPitch( spep_0 + 1282, SE037, -500 );
setTimeStretch( SE037, 0.67, 30, 4 );
SE038 = playSeVer2( spep_0 + 1282, 20, "", 0, 0, 0, -1);

--ボイス
--やむをえん……！
playVoice( spep_0 + 6, 386 );
setVoiceVolume( spep_0 + 6, 386, 100 );

--はじけて、まざれっ！
playVoice( spep_0 + 322, 387 );
setVoiceVolume( spep_0 + 322, 387, 119 );

--かぁ〜〜っ！！！！
playVoice( spep_0 + 582 -7, 388 );
setVoiceVolume( spep_0 + 582 -7, 388, 100 );

--ぐははは！！どうだ　これできさまは、もう終わりだ！
playVoice( spep_0 + 860 -8, 389 );
setVoiceVolume( spep_0 + 860 -8, 389, 119 );

endPhase( spep_0 + 1346 );
else end