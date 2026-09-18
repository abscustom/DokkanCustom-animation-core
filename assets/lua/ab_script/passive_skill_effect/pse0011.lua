--1024830:クウラ(最終形態)_登場時演出_pse0011
--sp_effect_b4_00246

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
SP_01 = 160352;	--腕払い、地面割れ、腕上げ、地面割れ、笑い	ef_001

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
--クウラ　変身
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 666, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 666, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 666, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 666, eff, 255 );

--SE
--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);

--右手構える
SE002 = playSeVer2( spep_0 + 134, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE002, 85 );
SE003 = playSeVer2( spep_0 + 138, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE003, 126 );
SE004 = playSeVer2( spep_0 + 138, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE004, 122 );
SE005 = playSeVer2( spep_0 + 142, 1178, "",spep_0 + 166, 0, 10, -1);	

--地面崩れる
SE006 = playSeVer2( spep_0 + 182, 1024, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 182, 1168, "",spep_0 + 348, 0, 90, -1);

--左手構える
SE008 = playSeVer2( spep_0 + 376, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE008, 88 );
SE009 = playSeVer2( spep_0 + 380, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE009, 136 );
SE010 = playSeVer2( spep_0 + 380, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE010, 119 );
SE011 = playSeVer2( spep_0 + 384, 1178, "",spep_0 + 408, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 384, SE011, 74 );

--地面崩れる
SE012 = playSeVer2( spep_0 + 430, 1168, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 432, 1159, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 448, 1188, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 492, 1024, "",spep_0 + 606, 0, 34, -1);
SE016 = playSeVer2( spep_0 + 576, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 576, SE016, 32 );

--ボイス
--この世でオレにかなうものはいない！！
playVoice( spep_0 + 0, 476 );
setVoiceVolume( spep_0 + 4, 476, 100 );

--オレが宇宙最強だ！
playVoice( spep_0 + 264, 477 );
setVoiceVolume( spep_0 + 264, 477, 100 );

--ふっはっはっは
playVoice( spep_0 + 522, 478 );
setVoiceVolume( spep_0 + 522, 478, 100 );

endPhase( spep_0 + 666 );

else end