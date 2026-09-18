--1026750：ターレス_登場時演出
--battle_301260
--pse0026

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

--味方側
SP_01 = 3195;   --ef_001　UR_ターレス_登場時演出

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


------------------------------------------------------
--UR_ターレス_登場時演出　420*2-2=838F
------------------------------------------------------

---- エフェクト等 ----
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 838, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 838, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 838, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 838, eff, 255 );

---- 黒背景 ----
entryFadeBg( spep_0 + 0, 0, 838 + 2, 0, 0, 0, 0, 255 );--黒　背景

---- SE ----
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 346, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 6 );
SE002 = playSeVer2( spep_0 + 0, 1396, "",spep_0 + 346, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 18 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );

--機械音
SE003 = playSeVer2( spep_0 + 0, 1398, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 25 );
setPitch( spep_0 + 0, SE003, 500 );
setTimeStretch( SE003, 1.33, 30, 4 );
SE004 = playSeVer2( spep_0 + 246, 1398, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE004, 25 );
setPitch( spep_0 + 246, SE004, 500 );
setTimeStretch( SE004, 1.33, 30, 4 );

--環境音
SE005 = playSeVer2( spep_0 + 344, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE005, 16 );
SE006 = playSeVer2( spep_0 + 344, 1396, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE006, 50 );
setPitch( spep_0 + 344, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

--画面遷移
SE007 = playSeVer2( spep_0 + 336, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE007, 63 );

--機械音
SE008 = playSeVer2( spep_0 + 388, 1400, "",spep_0 + 690, 0, 184, -1);
setSeVolumeByWorkId( spep_0 + 388, SE008, 25 );
SE009 = playSeVer2( spep_0 + 560, 1398, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE009, 25 );
setPitch( spep_0 + 560, SE009, 500 );
setTimeStretch( SE009, 1.33, 30, 4 );

--セリフカットイン
SE010 = playSeVer2( spep_0 + 684, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 684, SE010, 50 );

---- ボイス ----
--「強い…まさかあのガキ…」
playVoice( spep_0 + 22, 638 );
setVoiceVolume( spep_0 + 22, 638, 156 );

--「…サイヤ人」
playVoice( spep_0 + 363, 639 );
setVoiceVolume( spep_0 + 363, 639, 176 );

--「こいつは…本物だ…」
playVoice( spep_0 + 468, 640 );
setVoiceVolume( spep_0 + 468, 640, 136 );

--「フフフフフ」
playVoice( spep_0 + 679, 641 );
setVoiceVolume( spep_0 + 679, 641, 146 );


endPhase( spep_0 + 838 );

else end