--1024510:ゴールデンフリーザ_登場時演出_pse0008
--sp_effect_b4_00233

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
SP_01 = 159923;--戦闘前演出

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
--ゴールデンフリーザ　変身
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1722, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1722, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1722, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1722, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 382, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE021 = playSeVer2( spep_0 + 688, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE021, 32 );

--ズームアウト
SE002 = playSeVer2( spep_0 + 8, 1072, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 422, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE012, 79 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);

--地響き
SE004 = playSeVer2( spep_0 + 118, 1044, "",spep_0 + 462, 20, 12, -1);
setBandpassFilter  ( spep_0 + 118, SE004, 24, 125 );

--腕広げる
SE005 = playSeVer2( spep_0 + 152, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE005, 68 );

--構える
SE006 = playSeVer2( spep_0 + 332, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE006, 66 );
setPitch( spep_0 + 332, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 342, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE007, 58 );
setPitch( spep_0 + 342, SE007, -300 );
setTimeStretch( SE007, 0.8, 30, 4 );
SE008 = playSeVer2( spep_0 + 366, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE008, 76 );
SE009 = playSeVer2( spep_0 + 366, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE009, 72 );
SE010 = playSeVer2( spep_0 + 366, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE010, 71 );

--地響き後半
SE011 = playSeVer2( spep_0 + 376, 1226, "",spep_0 + 820, 0, 84, -1);
setSeVolumeByWorkId( spep_0 + 376, SE011, 54 );

--地響き後半
SE013 = playSeVer2( spep_0 + 430, 1044, "",spep_0 + 614, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 430, SE013, 174 );

--気を爆発させる
SE014 = playSeVer2( spep_0 + 576, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE014, 73 );
SE015 = playSeVer2( spep_0 + 576, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE015, 75 );
SE016 = playSeVer2( spep_0 + 576, 1298, "",spep_0 + 652, 0, 14, -1);

--変身音
SE017 = playSeVer2( spep_0 + 658, 1305, "",spep_0 + 858, 0, 116, -1);
SE018 = playSeVer2( spep_0 + 658, 1303, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE018, 63 );
setPitch( spep_0 + 658, SE018, 300 );
setTimeStretch( SE018, 1.2, 30, 4 );
SE019 = playSeVer2( spep_0 + 658, 1263, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 658, 1265, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE020, 65 );
setPitch( spep_0 + 658, SE020, 200 );
setTimeStretch( SE020, 1.13, 30, 4 );
SE022 = playSeVer2( spep_0 + 702, 1227, "",spep_0 + 1228, 0, 106, -1);
setSeVolumeByWorkId( spep_0 + 702, SE022, 48 );
     
--金色音
SE023 = playSeVer2( spep_0 + 820, 1288, "",spep_0 + 1034, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 820, SE023, 62 );

--決め音
SE024 = playSeVer2( spep_0 + 1022, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1022, SE024, 85 );
SE025 = playSeVer2( spep_0 + 1022, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1022, SE025, 73 );

--カメラ遷移
SE026 = playSeVer2( spep_0 + 1282, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1282, SE026, 67 );

--指立てる
SE027 = playSeVer2( spep_0 + 1326, 1189, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 1332, 1135, "",spep_0 + 1344, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 1332, SE028, 65 );

--ボイス
--それではお見せしましょう私の新たなる進化を！！
playVoice( spep_0 + 16, 438 );
setVoiceVolume( spep_0 + 16, 438, 120 );

--はああああああああ
playVoice( spep_0 + 320, 439 );
setVoiceVolume( spep_0 + 320, 439, 110 );

--はあっ！
playVoice( spep_0 + 564, 440 );
setVoiceVolume( spep_0 + 564, 440, 130 );

--ホッホッホ……わかりやすく金色にしてみましたが、単純すぎましたかね？
playVoice( spep_0 + 790, 441 );
setVoiceVolume( spep_0 + 790, 441, 120 );

--安っぽいネーミングですが、ゴールデンフリーザとでも言いましょうか
playVoice( spep_0 + 1290, 442 );
setVoiceVolume( spep_0 + 1290, 442, 110 );

endPhase( spep_0 + 1722 );
else end