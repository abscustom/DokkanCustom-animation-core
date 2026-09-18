--1026610：ブルマ(少女期)_登場時演出
--battle_301256
--pse0025

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
SP_01 = 3191;   --ef_001　登場時演出

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
--登場時演出(660F)
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --ef_001　登場時演出
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 660, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 660, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 660, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 660, eff, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 660 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--車ブレーキ
SE002 = playSeVer2( spep_0 + 128, 1168, "", 0, 30, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE002, 75 );
setStartTimeMs( SE002,  2000 );

--車走ってくる
SE003 = playSeVer2( spep_0 + 16, 1164, "",spep_0 + 140, 78, 20, -1);
setSeVolumeByWorkId( spep_0 + 16, SE003, 79 );
SE004 = playSeVer2( spep_0 + 32, 1386, "",spep_0 + 140, 62, 20, -1);
setSeVolumeByWorkId( spep_0 + 32, SE004, 78 );

--鳥羽ばたく
SE005 = playSeVer2( spep_0 + 56, 1138, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 60, 1139, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE006, 77 );

--車ブレーキ
SE007 = playSeVer2( spep_0 + 116, 1326, "",spep_0 + 186, 0, 26, -1);
setPitch( spep_0 + 116, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );
SE008 = playSeVer2( spep_0 + 120, 1323, "", 0, 0, 0, -1);

--ドア開ける
SE009 = playSeVer2( spep_0 + 210, 1411, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE009, 130 );

--足出す
SE010 = playSeVer2( spep_0 + 272, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE010, 83 );
setBandpassFilter ( spep_0 + 272, SE010, 24, 830 );

--立つ
SE011 = playSeVer2( spep_0 + 296, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE011, 191 );

--画面遷移
SE012 = playSeVer2( spep_0 + 300, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE012, 47 );

--レーダー音
SE013 = playSeVer2( spep_0 + 332, 28, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 396, 28, "", 0, 0, 0, -1);

--セリフカットイン
SE015 = playSeVer2( spep_0 + 446, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE015, 56 );

--画面遷移
SE016 = playSeVer2( spep_0 + 446, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE016, 72 );

--ボイス
--「たしかこの近くのはずなんだけど」
playVoice( spep_0 + 446, 635 );
setVoiceVolume( spep_0 + 446, 635, 100 );

endPhase( spep_0 + 660 );

else end
