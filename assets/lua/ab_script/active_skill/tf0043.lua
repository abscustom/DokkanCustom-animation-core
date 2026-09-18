--4024400:セル(完全体)_アクティブ激怒
--battle_301230

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
SP_01 = 3158;--激怒開始 ef_001

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
setEffMoveKey( spep_0 + 716, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 716, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 716, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 716, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 34 );

--おりてくる
SE002 = playSeVer2( spep_0 + 10, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE002, 84 );
SE003 = playSeVer2( spep_0 + 22, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 85 );

--叫ぶ
SE004 = playSeVer2( spep_0 + 388, 1068, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 388, 1175, "",spep_0 + 590, 0, 110, -1);
setSeVolumeByWorkId( spep_0 + 388, SE005, 55 );

--目線カットイン
SE006 = playSeVer2( spep_0 + 456, 1018, "", 0, 0, 0, -1);

--筋肉盛り上がる
SE007 = playSeVer2( spep_0 + 480, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE007, 75 );
SE008 = playSeVer2( spep_0 + 480, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE008, 85 );
SE009 = playSeVer2( spep_0 + 480, 1264, "",spep_0 + 610, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 480, SE009, 75 );

--激怒で膨れ上がる
SE010 = playSeVer2( spep_0 + 556, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE010, 64 );
SE011 = playSeVer2( spep_0 + 556, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE011, 53 );
SE012 = playSeVer2( spep_0 + 556, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE012, 79 );

--気ダメ
SE013 = playSeVer2( spep_0 + 586, 1035, "", 0, 0, 0, -1);
setPitch( spep_0 + 586, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );

--オーラ
SE014 = playSeVer2( spep_0 + 586, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE014, 50 );
SE015 = playSeVer2( spep_0 + 610, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE015, 71 );
SE016 = playSeVer2( spep_0 + 634, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 634, SE016, 71 );
SE017 = playSeVer2( spep_0 + 658, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 658, SE017, 71 );
SE018 = playSeVer2( spep_0 + 682, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 682, SE018, 71 );
SE019 = playSeVer2( spep_0 + 706, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 706, SE019, 71 );

--ボイス
--…このわたしのパワーが　か…完全に負けている…
playVoice( spep_0 + 4, 416 );
setVoiceVolume( spep_0 + 4, 416, 90 );

--ちくしょおおおお…………！！！！
playVoice( spep_0 + 378, 417 );
setVoiceVolume( spep_0 + 378, 417, 80 );

--かあっ！！！！！
playVoice( spep_0 + 552, 418 );
setVoiceVolume( spep_0 + 552, 418, 100 );

endPhase( spep_0 + 706 );
else end