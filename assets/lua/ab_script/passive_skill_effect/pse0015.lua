--1025510：UR_ガンマ1号_登場時演出_pse0015
--battle_301238

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
SP_01 = 3168; -- ef_001

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
--ガンマ1号_登場演出
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, eff, 0, 0 , 0);
setEffMoveKey( spep_0 + 462 -4, eff, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0);
setEffScaleKey( spep_0 + 462 -4, eff, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, eff, 0);
setEffRotateKey( spep_0 + 462 -4, eff, 0);
setEffAlphaKey( spep_0 + 0, eff, 255);
setEffAlphaKey( spep_0 + 462 -4, eff, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 462, 0, 0, 0, 0, 255);  --黒 背景

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 23 );
setPitch( spep_0 + 0, SE001, -700 );
setTimeStretch( SE001, 0.53, 30, 4 );

--拳鳴らす
SE002 = playSeVer2( spep_0 + 32, 1387, "",spep_0 + 70, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 32, SE002, 89 );
setPitch( spep_0 + 32, SE002, 150 );
setTimeStretch( SE002, 1.1, 30, 4 );

--歩く音
SE005 = playSeVer2( spep_0 + 94, 1108, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 48, 1108, "", 0, 0, 0, -1);

--拳鳴らす
SE004 = playSeVer2( spep_0 + 92, 1387, "",spep_0 + 130, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 92, SE004, 89 );
setPitch( spep_0 + 92, SE004, 150 );
setTimeStretch( SE004, 1.1, 30, 4 );

--歩く音
SE006 = playSeVer2( spep_0 + 144, 1108, "", 0, 0, 0, -1);

--指鳴らす
SE007 = playSeVer2( spep_0 + 144, 1041, "",spep_0 + 156, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 144, SE007, 79 );
setBandpassFilter	( spep_0 + 144, SE007, 24, 1678 );
SE008 = playSeVer2( spep_0 + 146, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 146, SE008, 166 );
setPitch( spep_0 + 146, SE008, 600 );
setTimeStretch( SE008, 1.4, 30, 4 );

--歩く音
SE009 = playSeVer2( spep_0 + 194, 1108, "", 0, 0, 0, -1);

--指鳴らす
SE010 = playSeVer2( spep_0 + 208, 1041, "",spep_0 + 220, 0, 2, -1);
setBandpassFilter	( spep_0 + 208, SE010, 24, 1678 );
SE011 = playSeVer2( spep_0 + 210, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE011, 180 );
setPitch( spep_0 + 210, SE011, 600 );
setTimeStretch( SE011, 1.4, 30, 4 );

--歩く音
SE012 = playSeVer2( spep_0 + 238, 1108, "", 0, 0, 0, -1);

--セリフカットイン
SE013 = playSeVer2( spep_0 + 272, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE013, 63 );

--ラスト決め
SE014 = playSeVer2( spep_0 + 354, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE014, 79 );
SE015 = playSeVer2( spep_0 + 354, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE015, 77 );

--ボイス
-- 私の邪魔をするというのなら、受けてたとう
playVoice( spep_0 + 39, 507 );
setVoiceVolume( spep_0 + 39, 507, 100 );

-- 私こそがスーパーヒーローだ！
playVoice( spep_0 + 276, 508 );
setVoiceVolume( spep_0 + 276, 508, 100 );

endPhase( spep_0 + 462 -4 );

else end