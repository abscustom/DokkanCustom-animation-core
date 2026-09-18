--1022420:超サイヤ人4孫悟空&超サイヤ人4ベジータ_アクティブ融合
--sp_effect_b4_00212

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
SP_01 = 158857;--

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
-- 戦闘前演出
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1474, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1474, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1474, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1474, eff, 255 );

--SE
--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 24 );
SE002_02 = playSeVer2( spep_0 + 1160, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1160, SE002_02, 24 );

--セリフカットイン
SE001 = playSeVer2( spep_0 + 18, 1018, "", 0, 0, 0, -1);

--悟空腕下ろす
SE003 = playSeVer2( spep_0 + 169, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 169, SE003, 72 );
setBandpassFilter	( spep_0 + 169, SE003, 24, 667 );

--悟空振り向く
SE004 = playSeVer2( spep_0 + 398, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE004, 76 );
setBandpassFilter	( spep_0 + 398, SE004, 24, 667 );

--二人の間光る
SE005 = playSeVer2( spep_0 + 660, 1231, "", 0, 0, 0, -1);

--近づく足音
SE006 = playSeVer2( spep_0 + 724, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE006, 160 );
SE007 = playSeVer2( spep_0 + 731, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 731, SE007, 168 );
SE008 = playSeVer2( spep_0 + 737, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 737, SE008, 182 );
SE009 = playSeVer2( spep_0 + 744, 1108, "", spep_0 + 750, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 744, SE009, 166 );
SE010 = playSeVer2( spep_0 + 750, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 750, SE010, 164 );
SE011 = playSeVer2( spep_0 + 752, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE011, 180 );

--構える
SE012 = playSeVer2( spep_0 + 754, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 755, 1189, "",spep_0 + 769, 0, 7, -1);
setSeVolumeByWorkId( spep_0 + 755, SE013, 219 );

--指合わせる
SE014 = playSeVer2( spep_0 + 782, 1003, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 794, 1189, "",spep_0 + 808, 0, 3, -1);
SE016 = playSeVer2( spep_0 + 792, 1233, "",spep_0 + 808, 2, 3, -1);
setStartTimeMs( SE016,  133 );

--指からエネルギー走る
SE017 = playSeVer2( spep_0 + 831, 1189, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 835, 1243, "",spep_0 + 904, 17, 11, -1);
setSeVolumeByWorkId( spep_0 + 835, SE018, 143 );
SE019 = playSeVer2( spep_0 + 835, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 835, SE019, 145 );
SE020 = playSeVer2( spep_0 + 835, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 835, SE020, 63 );
SE021 = playSeVer2( spep_0 + 835, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 835, SE021, 116 );
SE022 = playSeVer2( spep_0 + 840, 1295, "",spep_0 + 908, 0, 13, -1);
setPitch( spep_0 + 840, SE022, -300 );
setTimeStretch( SE022, 0.8, 30, 4 );

--光広がる
SE023 = playSeVer2( spep_0 + 867, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 867, SE023, 164 );
SE024 = playSeVer2( spep_0 + 868, 1263, "", 0, 17, 0, -1);
setStartTimeMs( SE024,  133 );
SE025 = playSeVer2( spep_0 + 887, 1240, "",spep_0 + 1354, 0, 49, -1);
setSeVolumeByWorkId( spep_0 + 887, SE025, 119 );
setPitch( spep_0 + 887, SE025, 200 );
setTimeStretch( SE025, 1.62, 30, 4 );
SE026 = playSeVer2( spep_0 + 895, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 895, SE026, 71 );
SE027 = playSeVer2( spep_0 + 867, 1274, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 895, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 895, SE028, 69 );
SE025_02 = playSeVer2( spep_0 + 1160, 1240, "",spep_0 + 1354, 0, 49, -1);
setSeVolumeByWorkId( spep_0 + 1160, SE025_02, 119 );
setPitch( spep_0 + 1160, SE025_02, 200 );
setTimeStretch( SE025_02, 1.62, 30, 4 );


--ブーン
SE029 = playSeVer2( spep_0 + 967, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 967, SE029, 65 );
SE030 = playSeVer2( spep_0 + 945, 1275, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 945, SE030, 160 );
setPitch( spep_0 + 945, SE030, -500 );
setTimeStretch( SE030, 1.11, 30, 4 );
SE031 = playSeVer2( spep_0 + 1040, 1275, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1040, SE031, 169 );
setPitch( spep_0 + 1040, SE031, -500 );
setTimeStretch( SE031, 1.11, 30, 4 );

--パンダウン
SE032 = playSeVer2( spep_0 + 1072, 8, "", 0, 0, 0, -1);

--構える
SE033 = playSeVer2( spep_0 + 1117, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1117, SE033, 69 );
setPitch( spep_0 + 1117, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );
SE034 = playSeVer2( spep_0 + 1127, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1127, SE034, 70 );
setPitch( spep_0 + 1127, SE034, -400 );
setTimeStretch( SE034, 0.73, 30, 4 );

--最後決め
SE035 = playSeVer2( spep_0 + 1293, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1293, SE035, 81 );
SE036 = playSeVer2( spep_0 + 1293, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1293, SE036, 84 );
setPitch( spep_0 + 1293, SE036, -200 );
setTimeStretch( SE036, 0.87, 30, 4 );
SE037 = playSeVer2( spep_0 + 1293, 1060, "", 0, 0, 0, -1);

--ボイス
--フュージョンするぞ　カカロット
playVoice( spep_0 + 12, 370 );
setVoiceVolume( spep_0 + 12, 370, 79 );

--フュージョンしてえって、おめえの口から聞けるなんてよ…
playVoice( spep_0 + 173, 371 );
setVoiceVolume( spep_0 + 173, 371, 79 );

--最高だぜベジータ
playVoice( spep_0 + 454, 372 );
setVoiceVolume( spep_0 + 454, 372, 79 );

--フュー…ジョン！　はっ！！
playVoice( spep_0 + 678, 373 );
setVoiceVolume( spep_0 + 678, 373, 100 );

--オレは孫悟空でもベジータでもない　オレはきさまを倒すものだ！
playVoice( spep_0 + 1054, 374 );
setVoiceVolume( spep_0 + 1054, 374, 100 );

endPhase( spep_0 + 1474 );
else end