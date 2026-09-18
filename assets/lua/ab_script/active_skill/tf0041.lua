--1023770:ギニュー_ボディチェンジ(アクティブスキル)
--sp_effect_b4_00221

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
SP_01 = 159334;--戦闘前演出

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
setEffMoveKey( spep_0 + 1450, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1450, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1450, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1450, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--気配に気づく
SE002 = playSeVer2( spep_0 + 24, 1126, "",spep_0 + 118, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 24, SE002, 30 );
SE003 = playSeVer2( spep_0 + 28, 48, "", 0, 0, 0, -1);

--振り返る
SE004 = playSeVer2( spep_0 + 58, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE004, 81 );

--悟空発見
SE005 = playSeVer2( spep_0 + 84, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE005, 87 );

--セリフカットイン
SE006 = playSeVer2( spep_0 + 558, 1018, "", 0, 0, 0, -1);

--チェンジ１
SE007 = playSeVer2( spep_0 + 576, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE007, 140 );
SE008 = playSeVer2( spep_0 + 580, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE008, 70 );
SE009 = playSeVer2( spep_0 + 590, 1363, "",spep_0 + 704, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 590, SE009, 119 );

--チェンジ２
SE010 = playSeVer2( spep_0 + 694, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 694, SE010, 136 );
SE011 = playSeVer2( spep_0 + 696, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 696, SE011, 72 );
SE012 = playSeVer2( spep_0 + 706, 1363, "",spep_0 + 820, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 706, SE012, 119 );

--口からビーム出る
SE013 = playSeVer2( spep_0 + 798, 1145, "",spep_0 + 896, 4, 8, -1);
setStartTimeMs( SE013,  350 );
SE014 = playSeVer2( spep_0 + 798, 1024, "",spep_0 + 896, 0, 8, -1);
SE015 = playSeVer2( spep_0 + 798, 1286, "",spep_0 + 896, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 798, SE015, 129 );
SE016 = playSeVer2( spep_0 + 798, 1353, "",spep_0 + 896, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 798, SE016, 140 );

--悟空にヒット
SE017 = playSeVer2( spep_0 + 880, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 880, SE017, 46 );
SE018 = playSeVer2( spep_0 + 880, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 880, SE018, 140 );
setPitch( spep_0 + 880, SE018, -400 );
setTimeStretch( SE018, 0.73, 30, 4 );

--スカウター音
SE019 = playSeVer2( spep_0 + 1108, 1150, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_0 + 1108, SE019, 493 );
setStartTimeMs( SE019,  450 );

--顔あげる
SE020 = playSeVer2( spep_0 + 1088, 1003, "", 0, 0, 0, -1);

--スカウター音
SE021 = playSeVer2( spep_0 + 1106, 28, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1106, SE021, 569 );

--ボイス
--き…気に入ったぞ……きさまの、その強いカラダを…
playVoice( spep_0 + 145, 395 );
setVoiceVolume( spep_0 + 145, 395, 100 );

--チェーンジ！！
playVoice( spep_0 + 592, 396 );
setVoiceVolume( spep_0 + 592, 396, 100 );

--くくく
playVoice( spep_0 + 916, 397 );
setVoiceVolume( spep_0 + 916, 397, 100 );

--交換させてもらったぜ！きさまとオレのカラダを……！
playVoice( spep_0 + 1106, 398 );
setVoiceVolume( spep_0 + 1106, 398, 100 );

endPhase( spep_0 + 1450 );
else end