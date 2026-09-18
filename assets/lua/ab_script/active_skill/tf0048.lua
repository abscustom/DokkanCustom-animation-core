--1024440:超サイヤ人ゴッドSS孫悟空/超サイヤ人ゴッドSSベジータ_アクティブ交代
--sp_effect_b4_00236

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
SP_01 = 159889;--開幕〜フィニッシュ

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

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1578, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1578, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1578, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1578, eff, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1578, 0, 0, 0, 0, 255);  --黒　背景

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--ベジータ合流
SE002 = playSeVer2( spep_0 + 46, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE002, 49 );

--ベジータ怒る
SE003 = playSeVer2( spep_0 + 580, 1072, "",spep_0 + 628, 8, 24, -1);
setSeVolumeByWorkId( spep_0 + 580, SE003, 72 );
setStartTimeMs( SE003,  350 );

--悟空腰に手を置く
SE004 = playSeVer2( spep_0 + 738, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 738, SE004, 66 );

--ベジータ構える
SE005 = playSeVer2( spep_0 + 862, 1003, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 880, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 880, SE006, 63 );

--気を高める
SE007 = playSeVer2( spep_0 + 932, 1227, "", 0, 0, 0, -1);
setTimeStretch( SE007, 1.11, 30, 4 );
SE008 = playSeVer2( spep_0 + 932, 1295, "",spep_0 + 1074, 0, 22, -1);
SE009 = playSeVer2( spep_0 + 932, 1356, "",spep_0 + 1074, 0, 22, -1);
SE010 = playSeVer2( spep_0 + 932, 1252, "",spep_0 + 1074, 0, 22, -1);

--気を爆発させる
SE011 = playSeVer2( spep_0 + 1046, 1024, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 1046, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1046, SE012, 66 );
SE013 = playSeVer2( spep_0 + 1046, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1046, SE013, 63 );
SE014 = playSeVer2( spep_0 + 1046, 1177, "",spep_0 + 1182, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 1046, SE014, 74 );

--セリフカットイン
SE015 = playSeVer2( spep_0 + 1102, 1018, "", 0, 0, 0, -1);

--ブルー化する
SE016 = playSeVer2( spep_0 + 1168, 1173, "",spep_0 + 1232, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 1168, SE016, 220 );
SE017 = playSeVer2( spep_0 + 1204, 1035, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 1204, SE017, 90 );
setStartTimeMs( SE017,  400 );
setPitch( spep_0 + 1204, SE017, -700 );
setTimeStretch( SE017, 0.5, 30, 4 );
SE018 = playSeVer2( spep_0 + 1176, 1291, "",spep_0 + 1250, 16, 28, -1);
setSeVolumeByWorkId( spep_0 + 1176, SE018, 142 );

--オーラ
SE019 = playSeVer2( spep_0 + 1188, 1181, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1188, SE019, 91 );

--ラスト決め
SE020 = playSeVer2( spep_0 + 14324, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1424, SE020, 65 );
SE021 = playSeVer2( spep_0 + 1424, 20, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 1424, 1062, "", 0, 0, 0, -1);

--ボイス
--おい！カカロット
playVoice( spep_0 + 2, 431 );
setVoiceVolume( spep_0 + 2, 431, 100 );

--なんだよもう交代か！？も もうちょっとやらせてくれよ！
playVoice( spep_0 + 118, 432 );
setVoiceVolume( spep_0 + 118, 432, 100 );

--いい加減にしやがれ！交代で闘うって決めたはずだ！
playVoice( spep_0 + 486, 433 );
setVoiceVolume( spep_0 + 486, 433, 100 );

--ちぇっ…わかったよ
playVoice( spep_0 + 732, 434 );
setVoiceVolume( spep_0 + 732, 434, 100 );

--ふん…！
playVoice( spep_0 + 870, 435 );
setVoiceVolume( spep_0 + 870, 435, 100 );

--はああああ！！
playVoice( spep_0 + 938, 436 );
setVoiceVolume( spep_0 + 938, 436, 100 );

--オレ様はアイツみたいに甘くはないぞ。覚悟しやがれ
playVoice( spep_0 + 1248, 437 );
setVoiceVolume( spep_0 + 1248, 437, 100 );

endPhase( spep_0 + 1578 );
else end