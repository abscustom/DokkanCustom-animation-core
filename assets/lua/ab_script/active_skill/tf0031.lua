--1022590:スーパージャネンバ_激怒開始
--battle_301215

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
SP_01=	3138;

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
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 472, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 472, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 472, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 472, active, 255 );


-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--こんぼう拾う
SE002 = playSe( spep_0 + 32, 1317 );
setPitch( spep_0 + 32, SE002, -200 );
setTimeStretch( SE002, 0.87, 40, 4 );
setSeVolumeByWorkId( spep_0 + 32, SE002, 120 );
setSeVolumeByWorkId( spep_0 + 100, SE003, 184 );
setSeVolumeByWorkId( spep_0 + 106, SE005, 150 );

--剣になる
SE003 = playSe( spep_0 + 100, 1189 );
setSeVolumeByWorkId( spep_0 + 100, SE003, 164 );
SE004 = playSe( spep_0 + 104, 1142 );
setSeVolumeByWorkId( spep_0 + 104, SE004, 78 );
SE005 = playSe( spep_0 + 106, 1031 );
SE006 = playSe( spep_0 + 105, 1061 );
setPitch( spep_0 + 105, SE006, -200 );
setTimeStretch( SE006, 0.87, 40, 4 );
setSeVolumeByWorkId( spep_0 + 105, SE006, 130 );
setBandpassFilter( spep_0 + 105, SE006, 200, 24000 );

--剣構える
SE007 = playSe( spep_0 + 188, 1003 );
setPitch( spep_0 + 188, SE007, -500 );
setTimeStretch( SE007, 0.67, 10, 1 );

--顔カットイン
SE008 = playSe( spep_0 + 216, 1018 );

--剣光る
SE009 = playSe( spep_0 + 294, 1307 );
setSeVolumeByWorkId( spep_0 + 294, SE009, 148 );
SE010 = playSe( spep_0 + 294, 1042 );
setSeVolumeByWorkId( spep_0 + 294, SE010, 87 );
SE011 = playSe( spep_0 + 294, 12 );

---------------------------------------------
----ボイス
---------------------------------------------
--ヒッヒッヒッヒ・・・！
playVoice( spep_0 + 194, 292 );

--終わり
entryFadeBg( spep_0 + 0, 0, 490, 0, fcolor_r, fcolor_g, fcolor_b, 255);       --　白背景
endPhase( spep_0 + 468 +20 );
else end