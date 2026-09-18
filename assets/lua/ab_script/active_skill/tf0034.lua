--1023110:トランクス(青年期)_変身_tf0034
--battle_301221

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
SP_01 = 3145;

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
setEffMoveKey( spep_0 + 782, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 782, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 782, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 782, active, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 634, 8, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 63 );

--風の音
SE003 = playSeVer2( spep_0 + 56, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 42 );

--キメ顔
SE004 = playSeVer2( spep_0 + 446, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE004, 83 );

--腕クロス
SE005 = playSeVer2( spep_0 + 562, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE005, 70 );
SE006 = playSeVer2( spep_0 + 582, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE006, 85 );

--変身
SE007 = playSeVer2( spep_0 + 600, 1017, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 600, SE007, 80 );
SE008 = playSeVer2( spep_0 + 614, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE008, 76 );
SE009 = playSeVer2( spep_0 + 614, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 614, SE009, 38 );
SE010 = playSeVer2( spep_0 + 628, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 628, SE010, 130 );

--オーラ
SE011 = playSeVer2( spep_0 + 652, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE011, 79 );
SE012 = playSeVer2( spep_0 + 676, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 676, SE012, 79 );
SE013 = playSeVer2( spep_0 + 700, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE013, 79 );
SE014 = playSeVer2( spep_0 + 724, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE014, 79 );
SE015 = playSeVer2( spep_0 + 748, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE015, 79 );
SE016 = playSeVer2( spep_0 + 772, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE016, 79 );

---------------------------------------------
----ボイス
---------------------------------------------
--はじめから全力でかかってくるんだな
playVoice( spep_0 + 7, 327 );
setVoiceVolume( spep_0 + 7, 327, 85 );

--超サイヤ人は孫悟空さんひとりじゃない……ここにもいた、ということだ……
playVoice( spep_0 + 184, 328 );
setVoiceVolume( spep_0 + 184, 328, 100 );

--はあっ！！！
playVoice( spep_0 + 576, 329 );
setVoiceVolume( spep_0 + 576, 329, 100 );

--終わり
entryFade( spep_0 + 782 -16, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);       --　白背景
endPhase( spep_0 + 782 );
else end