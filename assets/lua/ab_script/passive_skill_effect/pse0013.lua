--1025090：UR_バーダック_登場時演出_pse0013
--sp_effect_b4_00260

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
SP_01 = 160689; --開幕〜フィニッシュ  ef_001

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
--バーダック_登場演出
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1258 -4, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1258 -4, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1258 -4, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1258 -4, eff, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1258, 0, 0, 0, 0, 255);  --黒 背景

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 662, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 16 );

--頭痛
SE002 = playSeVer2( spep_0 + 52, 1126, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE002, 37 );
setStartTimeMs( SE002,  133 );
setPitch( spep_0 + 52, SE002, 200 );
setTimeStretch( SE002, 1.13, 30, 4 );

--画面遷移
SE005 = playSeVer2( spep_0 + 126, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE005, 65 );

--頭痛
SE003 = playSeVer2( spep_0 + 52, 48, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE003, 58 );

SE004 = playSeVer2( spep_0 + 52, 22, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE004, 46 );

--環境音
SE006 = playSeVer2( spep_0 + 178, 1315, "", spep_0 + 682, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 178, SE006, 67 );

SE007 = playSeVer2( spep_0 + 200, 1288, "",spep_0 + 682, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 200, SE007, 65 );

SE008 = playSeVer2( spep_0 + 200, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE008, 27 );
setTimeStretch( SE008, 1.18, 30, 4 );

--腕を前に出す
SE009 = playSeVer2( spep_0 + 298, 1003, "", 0, 0, 0, -1);

--振り返る
SE010 = playSeVer2( spep_0 + 454, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 454, SE010, 87 );
setPitch( spep_0 + 454, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );
setBandpassFilter	( spep_0 + 454, SE010, 24, 1275 );

--フリーザに変わる
SE011 = playSeVer2( spep_0 + 482, 1271, "",spep_0 + 586, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 482, SE011, 160 );

--地響き
SE012 = playSeVer2( spep_0 + 628, 1044, "",spep_0 + 866, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 628, SE012, 74 );

--地面爆発
SE013 = playSeVer2( spep_0 + 662, 1159, "",spep_0 + 918, 0, 60, -1);
SE014 = playSeVer2( spep_0 + 706, 1024, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 736, 1067, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 782, 1024, "", 0, 0, 0, -1);

--環境音
SE017 = playSeVer2( spep_0 + 848, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 848, SE017, 16 );

--顔上げる
SE018 = playSeVer2( spep_0 + 866, 1004, "", 0, 0, 0, -1);
setBandpassFilter	( spep_0 + 866, SE018, 24, 737 );
--拳握る
SE019 = playSeVer2( spep_0 + 956, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 956, SE019, 80 );

--セリフカットイン
SE020 = playSeVer2( spep_0 + 964, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 964, SE020, 63 );

--拳握る
SE021 = playSeVer2( spep_0 + 964, 1330, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 964, SE021, 81 );
SE022 = playSeVer2( spep_0 + 966, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 966, SE022, 79 );

--ラスト決め
SE023 = playSeVer2( spep_0 + 1100, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1100, SE023, 115 );
SE024 = playSeVer2( spep_0 + 1118, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1118, SE024, 61 );
SE025 = playSeVer2( spep_0 + 1118, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1118, SE025, 64 );

--ボイス
-- くっ…
playVoice( spep_0 + 44, 514 );
setVoiceVolume( spep_0 + 44, 514, 100 );

-- うわああー！！
playVoice( spep_0 + 630, 515 );
setVoiceVolume( spep_0 + 630, 515, 100 );

-- このオレが、未来を変えてみせる！
playVoice( spep_0 + 964, 516 );
setVoiceVolume( spep_0 + 964, 516, 100 );

endPhase( spep_0 + 1258 -4 );

else end