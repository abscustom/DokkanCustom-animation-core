--1025490:セルマックス_登場時演出_pse0012
--sp_effect_b4_00251

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
SP_01 = 160375; --セルマックス_登場  ef_001

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
--セルマックス_登場
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 596, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 596, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 596, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 596, eff, 255 );

--SE
--水吹き出る
SE001 = playSeVer2( spep_0 + 0, 1247, "",spep_0 + 130, 0, 40, -1);
setPitch( spep_0 + 0, SE001, -800 );
setTimeStretch( SE001, 0.47, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1011, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1166, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 18, 1247, "",spep_0 + 132, 0, 20, -1);
setPitch( spep_0 + 18, SE004, -700 );
setTimeStretch( SE004, 0.53, 30, 4 );
SE005 = playSeVer2( spep_0 + 18, 1011, "", 0, 0, 0, -1);

--水正面吹き出る
SE006 = playSeVer2( spep_0 + 58, 1165, "",spep_0 + 428, 0, 150, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 140 );
SE007 = playSeVer2( spep_0 + 66, 1258, "",spep_0 + 232, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 66, SE007, 85 );

--セルマックス水から出てくる
SE008 = playSeVer2( spep_0 + 144, 1163, "",spep_0 + 246, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 144, SE008, 245 );
setPitch( spep_0 + 144, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_0 + 162, 1024, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 162, 1164, "",spep_0 + 436, 0, 158, -1);
setSeVolumeByWorkId( spep_0 + 162, SE010, 148 );
SE011 = playSeVer2( spep_0 + 178, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE011, 343 );

--セルマックス縁掴む
SE012 = playSeVer2( spep_0 + 280, 1135, "", 0, 0, 0, -1);
setPitch( spep_0 + 280, SE012, -600 );
setTimeStretch( SE012, 0.6, 30, 4 );
SE013 = playSeVer2( spep_0 + 280, 1153, "", 0, 0, 0, -1);

--セルマックス吠える
SE014 = playSeVer2( spep_0 + 442, 1066, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 442, 1137, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 442, 1188, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 442, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE017, 63 );
SE018 = playSeVer2( spep_0 + 442, 1044, "", 0, 0, 0, -1);

--ボイス


endPhase( spep_0 + 596 );

else end