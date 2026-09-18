--1023620:孫悟空(界王拳)_登場時演出
--battle_301226

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
SP_01 = 3150;--戦闘前演出(前)
SP_02 = 3152;--戦闘前演出(後)

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
eff_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 458, eff_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 458, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 458, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 458, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 458, eff_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 458, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 458, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 458, eff_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 86, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 134.8, 272.2 , 0 );
setMoveKey( spep_0 + 2, 1, 135.7, 272.2 , 0 );
setMoveKey( spep_0 + 4, 1, 136.6, 272.2 , 0 );
setMoveKey( spep_0 + 6, 1, 137.6, 272.2 , 0 );
setMoveKey( spep_0 + 8, 1, 138.5, 272.2 , 0 );
setMoveKey( spep_0 + 10, 1, 139.4, 272.2 , 0 );
setMoveKey( spep_0 + 12, 1, 140.4, 272.2 , 0 );
setMoveKey( spep_0 + 14, 1, 141.3, 272.2 , 0 );
setMoveKey( spep_0 + 16, 1, 142.2, 272.2 , 0 );
setMoveKey( spep_0 + 18, 1, 143.2, 272.2 , 0 );
setMoveKey( spep_0 + 20, 1, 144.1, 272.2 , 0 );
setMoveKey( spep_0 + 22, 1, 145, 272.2 , 0 );
setMoveKey( spep_0 + 24, 1, 146, 272.2 , 0 );
setMoveKey( spep_0 + 26, 1, 146.9, 272.2 , 0 );
setMoveKey( spep_0 + 28, 1, 147.8, 272.2 , 0 );
setMoveKey( spep_0 + 30, 1, 148.7, 272.2 , 0 );
setMoveKey( spep_0 + 32, 1, 149.7, 272.2 , 0 );
setMoveKey( spep_0 + 34, 1, 150.6, 272.2 , 0 );
setMoveKey( spep_0 + 36, 1, 151.5, 272.2 , 0 );
setMoveKey( spep_0 + 38, 1, 152.5, 272.2 , 0 );
setMoveKey( spep_0 + 40, 1, 153.4, 272.2 , 0 );
setMoveKey( spep_0 + 42, 1, 154.3, 272.2 , 0 );
setMoveKey( spep_0 + 44, 1, 155.3, 272.2 , 0 );
setMoveKey( spep_0 + 46, 1, 156.2, 272.2 , 0 );
setMoveKey( spep_0 + 48, 1, 157.1, 272.2 , 0 );
setMoveKey( spep_0 + 50, 1, 158, 272.2 , 0 );
setMoveKey( spep_0 + 52, 1, 159, 272.2 , 0 );
setMoveKey( spep_0 + 54, 1, 159.9, 272.2 , 0 );
setMoveKey( spep_0 + 56, 1, 160.8, 272.2 , 0 );
setMoveKey( spep_0 + 58, 1, 161.8, 272.2 , 0 );
setMoveKey( spep_0 + 60, 1, 162.7, 272.2 , 0 );
setMoveKey( spep_0 + 62, 1, 163.6, 272.2 , 0 );
setMoveKey( spep_0 + 64, 1, 164.6, 272.2 , 0 );
setMoveKey( spep_0 + 66, 1, 165.5, 272.2 , 0 );
setMoveKey( spep_0 + 68, 1, 166.4, 272.2 , 0 );
setMoveKey( spep_0 + 70, 1, 167.3, 272.2 , 0 );
setMoveKey( spep_0 + 72, 1, 168.3, 272.2 , 0 );
setMoveKey( spep_0 + 74, 1, 169.2, 272.2 , 0 );
setMoveKey( spep_0 + 76, 1, 170.1, 272.2 , 0 );
setMoveKey( spep_0 + 78, 1, 171.1, 272.2 , 0 );
setMoveKey( spep_0 + 80, 1, 172, 272.2 , 0 );
setMoveKey( spep_0 + 82, 1, 172.9, 272.2 , 0 );
setMoveKey( spep_0 + 84, 1, 173.9, 272.2 , 0 );
setMoveKey( spep_0-1 + 86, 1, 174.8, 272.2 , 0 );

setScaleKey( spep_0 + 0, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 1, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 2, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 3, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 4, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 5, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 6, 1, 0.62, 0.62 );
setScaleKey( spep_0-1 + 86, 1, 0.62, 0.62 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-1 + 86, 1, 0 );


--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 18 );
SE002 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--風が吹く
SE003 = playSeVer2( spep_0 + 12, 1332, "", 0, 0, 0, -1);

--セリフカットイン
SE004 = playSeVer2( spep_0 + 92, 1018, "", 0, 0, 0, -1);

--風が吹く２
SE005 = playSeVer2( spep_0 + 162, 1332, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 212, 1332, "", 0, 0, 0, -1);
setPitch( spep_0 + 212, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );

--構える
SE007 = playSeVer2( spep_0 + 382, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE007, 112 );
SE008 = playSeVer2( spep_0 + 382, 1233, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 390, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 390, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );

--最後決め
SE010 = playSeVer2( spep_0 + 390, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE010, 70 );
SE011 = playSeVer2( spep_0 + 390, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE011, 71 );

--ボイス
--落ちこぼれだって必死で努力すりゃエリートを超えることがあるかもよ
playVoice( spep_0 + 86, 378 );
setVoiceVolume( spep_0 + 86, 378, 100 );



endPhase( spep_0 + 458 );
else end