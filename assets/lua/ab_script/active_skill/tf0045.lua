--1024290:超サイヤ人孫悟空/超サイヤ人孫悟飯(少年期)_アクティブ交代
--sp_effect_b4_00228

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
SP_01 = 159667;--開幕〜フィニッシュ

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
setEffMoveKey( spep_0 + 1494, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1494, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1494, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1494, eff, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1494, 0, 0, 0, 0, 255);  --黒　背景

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--入り
SE003 = playSeVer2( spep_0 + 0, 44, "", 0, 20, 0, -1);

--オーラ
SE004 = playSeVer2( spep_0 + 22, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE004, 32 );
SE005 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 32 );
SE006 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 32 );
SE007 = playSeVer2( spep_0 + 88, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 154, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE010, 71 );
SE011 = playSeVer2( spep_0 + 176, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE011, 32 );
SE012 = playSeVer2( spep_0 + 198, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE012, 4 );

--顔をあげる
SE013 = playSeVer2( spep_0 + 222, 1003, "", 0, 0, 0, -1);

--画面遷移
SE014 = playSeVer2( spep_0 + 594, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE014, 71 );

--悟飯集中線
SE015 = playSeVer2( spep_0 + 614, 12, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE015, 68 );
SE016 = playSeVer2( spep_0 + 650, 1126, "",spep_0 + 754, 0, 76, -1);
setSeVolumeByWorkId( spep_0 + 650, SE016, 89 );
SE017 = playSeVer2( spep_0 + 650, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 650, SE017, 59 );

--拳握る
SE018 = playSeVer2( spep_0 + 646, 1233, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 656, 1007, "", 0, 0, 0, -1);

--悟飯どきっとする
SE020 = playSeVer2( spep_0 + 782, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 782, SE020, 72 );
SE021 = playSeVer2( spep_0 + 786, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 786, SE021, 77 );

--悟空着地
SE022 = playSeVer2( spep_0 + 836, 1207, "",spep_0 + 884, 22, 7, -1);
setStartTimeMs( SE022,  83 );
SE023 = playSeVer2( spep_0 + 878, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 878, SE023, 160 );

--背中に手をおく
SE024 = playSeVer2( spep_0 + 896, 1332, "",spep_0 + 926, 0, 14, -1);

--画面遷移
SE025 = playSeVer2( spep_0 + 962, 1072, "", 0, 13, 0, -1);
setStartTimeMs( SE025,  150 );

--目線カットイン
SE026 = playSeVer2( spep_0 + 974, 1018, "", 0, 0, 0, -1);

--悟飯かまえる
SE027 = playSeVer2( spep_0 + 1191, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1191, SE027, 49 );

--マント外す
SE028 = playSeVer2( spep_0 + 1270, 1333, "", 0, 0, 0, -1);

--マント地面に落ちる
SE029 = playSeVer2( spep_0 + 1344, 1047, "",spep_0 + 1378, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 1344, SE029, 76 );
SE030 = playSeVer2( spep_0 + 1344, 1153, "",spep_0 + 1372, 0, 13, -1);
setSeVolumeByWorkId( spep_0 + 1344, SE030, 79 );
SE031 = playSeVer2( spep_0 + 1344, 1033, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1344, SE031, 75 );

--最後決め
SE032 = playSeVer2( spep_0 + 1402, 8, "", 0, 0, 0, -1);

--ボイス
--まいった！／おめえの強さはよーくわかった！オラはもうやめとく
playVoice( spep_0 + 210, 412 );
setVoiceVolume( spep_0 + 210, 412, 100 );

--おめえの出番だぞ　悟飯！！
playVoice( spep_0 + 640, 413 );
setVoiceVolume( spep_0 + 640, 413, 100 );

--やれるな？
playVoice( spep_0 + 886, 414 );
setVoiceVolume( spep_0 + 886, 414, 100 );

--わ　わかりました　やってみます………
playVoice( spep_0 + 1036, 415 );
setVoiceVolume( spep_0 + 1036, 415, 100 );

endPhase( spep_0 + 1484 );
else end