--1025800：ヤムチャ_登場時演出_pse0017
--sp_effect_b4_00270

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
SP_01 = 161027;	--ヤムチャ_登場	ef_001

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
setEffMoveKey( spep_0 + 474, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 474, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 474, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 474, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 22 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 36, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE002, 63 );

--足踏み出す
SE003 = playSeVer2( spep_0 + 74, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE003, 58 );
SE004 = playSeVer2( spep_0 + 76, 1301, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 76, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE005, 172 );

--ヤムチャの背中
SE006 = playSeVer2( spep_0 + 88, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE006, 70 );

--空気音
SE007 = playSeVer2( spep_0 + 114, 1350, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE007, 77 );

--振り向く
SE008 = playSeVer2( spep_0 + 257, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 257, SE008, 66 );

--構える
SE009 = playSeVer2( spep_0 + 372, 1233, "", 0, 0, 0, -1);

--最後決め
SE010 = playSeVer2( spep_0 + 386, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE010, 79 );
SE011 = playSeVer2( spep_0 + 386, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE011, 84 );

--ボイス
--オレにやらせてくれ、ここらでお遊びはいい加減にしろってとこを見せてやりたい
playVoice( spep_0 + 37, 524 );
setVoiceVolume( spep_0 + 37, 524, 100 );

endPhase( spep_0 + 474 );

else end