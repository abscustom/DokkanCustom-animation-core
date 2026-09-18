--1023520:ベジータ(大猿)_登場時演出
--battle_301227

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
SP_01 = 3151;--戦闘前演出(前)
SP_02 = 3153;--戦闘前演出(後)

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
setEffMoveKey( spep_0 + 366, eff_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 366, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 366, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 366, eff_f, 255 );

-- ** エフェクト等 ** --
eff_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 366, eff_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 366, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 366, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 366, eff_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-1 + 86, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 148.2, -82.3 , 0 );
setMoveKey( spep_0 + 2, 1, 147.7, -82.3 , 0 );
setMoveKey( spep_0 + 4, 1, 147.3, -82.3 , 0 );
setMoveKey( spep_0 + 6, 1, 146.8, -82.3 , 0 );
setMoveKey( spep_0 + 8, 1, 146.3, -82.3 , 0 );
setMoveKey( spep_0 + 10, 1, 145.9, -82.3 , 0 );
setMoveKey( spep_0 + 12, 1, 145.4, -82.3 , 0 );
setMoveKey( spep_0 + 14, 1, 144.9, -82.3 , 0 );
setMoveKey( spep_0 + 16, 1, 144.5, -82.3 , 0 );
setMoveKey( spep_0 + 18, 1, 144, -82.3 , 0 );
setMoveKey( spep_0 + 20, 1, 143.5, -82.3 , 0 );
setMoveKey( spep_0 + 22, 1, 143.1, -82.3 , 0 );
setMoveKey( spep_0 + 24, 1, 142.6, -82.3 , 0 );
setMoveKey( spep_0 + 26, 1, 142.2, -82.3 , 0 );
setMoveKey( spep_0 + 28, 1, 141.7, -82.3 , 0 );
setMoveKey( spep_0 + 30, 1, 141.2, -82.3 , 0 );
setMoveKey( spep_0 + 32, 1, 140.8, -82.3 , 0 );
setMoveKey( spep_0 + 34, 1, 140.3, -82.3 , 0 );
setMoveKey( spep_0 + 36, 1, 139.8, -82.3 , 0 );
setMoveKey( spep_0 + 38, 1, 139.4, -82.3 , 0 );
setMoveKey( spep_0 + 40, 1, 138.9, -82.3 , 0 );
setMoveKey( spep_0 + 42, 1, 138.4, -82.3 , 0 );
setMoveKey( spep_0 + 44, 1, 138, -82.3 , 0 );
setMoveKey( spep_0 + 46, 1, 137.5, -82.3 , 0 );
setMoveKey( spep_0 + 48, 1, 137, -82.3 , 0 );
setMoveKey( spep_0 + 50, 1, 136.6, -82.3 , 0 );
setMoveKey( spep_0 + 52, 1, 136.1, -82.3 , 0 );
setMoveKey( spep_0 + 54, 1, 135.6, -82.3 , 0 );
setMoveKey( spep_0 + 56, 1, 135.2, -82.3 , 0 );
setMoveKey( spep_0 + 58, 1, 134.7, -82.3 , 0 );
setMoveKey( spep_0 + 60, 1, 134.2, -82.3 , 0 );
setMoveKey( spep_0 + 62, 1, 133.8, -82.3 , 0 );
setMoveKey( spep_0 + 64, 1, 133.3, -82.3 , 0 );
setMoveKey( spep_0 + 66, 1, 132.9, -82.3 , 0 );
setMoveKey( spep_0 + 68, 1, 132.4, -82.3 , 0 );
setMoveKey( spep_0 + 70, 1, 131.9, -82.3 , 0 );
setMoveKey( spep_0 + 72, 1, 131.5, -82.3 , 0 );
setMoveKey( spep_0 + 74, 1, 131, -82.3 , 0 );
setMoveKey( spep_0 + 76, 1, 130.5, -82.3 , 0 );
setMoveKey( spep_0 + 78, 1, 130.1, -82.3 , 0 );
setMoveKey( spep_0 + 80, 1, 129.6, -82.3 , 0 );
setMoveKey( spep_0 + 82, 1, 129.1, -82.3 , 0 );
setMoveKey( spep_0 + 84, 1, 128.7, -82.3 , 0 );
setMoveKey( spep_0-1 + 86, 1, 128.2, -82.3 , 0 );

setScaleKey( spep_0 + 0, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 1, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 2, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 3, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 4, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 5, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 6, 1, 0.67, 0.67 );
setScaleKey( spep_0-1 + 86, 1, 0.67, 0.67 );

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
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );

--風が吹く
SE003 = playSeVer2( spep_0 + 16, 1332, "", 0, 0, 0, -1);

--セリフカットイン
SE004 = playSeVer2( spep_0 + 94, 1018, "", 0, 0, 0, -1);

--風が吹く２
SE005 = playSeVer2( spep_0 + 128, 1332, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 178, 1332, "", 0, 0, 0, -1);

--構える
SE007 = playSeVer2( spep_0 + 288, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 288, 1233, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 296, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 296, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );

--最後決め
SE010 = playSeVer2( spep_0 + 300, 1062, "", 0, 0, 0, -1);
setPitch( spep_0 + 300, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );
SE011 = playSeVer2( spep_0 + 300, 20, "", 0, 0, 0, -1);

--ボイス
--では努力だけではどうやっても超えられぬ壁を見せてやろう
playVoice( spep_0 + 86, 385 );
setVoiceVolume( spep_0 + 86, 385, 100 );

endPhase( spep_0 + 366 );
else end