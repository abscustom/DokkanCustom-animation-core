--1022420:超サイヤ人4孫悟空&超サイヤ人4ベジータ_登場時演出
--battle_301224

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
SP_01 = 3148;--戦闘前演出

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
setEffMoveKey( spep_0 + 834, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 834, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 834, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 834, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--ベジータ入り
SE002 = playSeVer2( spep_0 + 4, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 79 );
setPitch( spep_0 + 4, SE002, -800 );
setTimeStretch( SE002, 0.47, 30, 4 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 14, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 79 );

--悟空構える
SE004 = playSeVer2( spep_0 + 202, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 202, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );

--振り向く
SE005 = playSeVer2( spep_0 + 330, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE005, 61 );
setPitch( spep_0 + 330, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );
setBandpassFilter( spep_0 + 330, SE005, 24, 942 );

--気ダメ
SE006 = playSeVer2( spep_0 + 396, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 396, SE006, 48 );
SE007 = playSeVer2( spep_0 + 400, 1356, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE007, 79 );
SE008 = playSeVer2( spep_0 + 406, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE008, 64 );
SE009 = playSeVer2( spep_0 + 406, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 406, SE009, 60 );
SE010 = playSeVer2( spep_0 + 414, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE010, 85 );

--画面遷移
SE011 = playSeVer2( spep_0 + 530, 1072, "", 0, 0, 0, -1);

--気を爆発させる
SE012 = playSeVer2( spep_0 + 662, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 662, SE012, 79 );
setPitch( spep_0 + 662, SE012, -700 );
setTimeStretch( SE012, 0.53, 30, 4 );
SE013 = playSeVer2( spep_0 + 668, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE013, 89 );
SE014 = playSeVer2( spep_0 + 668, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE014, 75 );

--画面黄色くなる
SE015 = playSeVer2( spep_0 + 768, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE015, 48 );
SE016 = playSeVer2( spep_0 + 768, 1265, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 768, SE016, 87 );

--ボイス
--待たせたなカカロット
playVoice( spep_0 + 3, 364 );
setVoiceVolume( spep_0 + 3, 364, 71 );

--いけるぜベジータ
playVoice( spep_0 + 176, 365 );
setVoiceVolume( spep_0 + 176, 365, 71 );

--はああああっ！！（孫悟空）
playVoice( spep_0 + 388, 366 );
setVoiceVolume( spep_0 + 388, 366, 65 );

--はあああーっ！！（ベジータ）
playVoice( spep_0 + 394, 368 );
setVoiceVolume( spep_0 + 394, 368, 60 );

--うおおおおーっ！！（ベジータ）
playVoice( spep_0 + 560, 369 );
setVoiceVolume( spep_0 + 560, 369, 70 );

--うわああああーっ！！（孫悟空）
playVoice( spep_0 + 560, 367 );
setVoiceVolume( spep_0 + 560, 367, 65 );

endPhase( spep_0 + 824 );
else end