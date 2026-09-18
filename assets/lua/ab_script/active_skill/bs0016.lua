--1021690:超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_bs0016
--battle_301213

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
SP_01 = 3136;

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
setEffMoveKey( spep_0 + 692, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 692, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 692, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 692, active, 255 );


-------------------------------------------
--SE
-------------------------------------------

--環境音
SE001 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 10 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 0 );

--セリフカットイン
SE003 = playSe( spep_0 + 28, 1018 )
setSeVolumeByWorkId( spep_0 + 28, SE003, 79 );

--トランクスの指を振る
SE004 = playSe( spep_0 + 102, 37 );
setSeVolumeByWorkId( spep_0 + 102, SE004, 58 );
setPitch( spep_0 + 102, SE004, 300 );
setTimeStretch( SE004, 1.2, 10, 1 );

--トランクスの指を振る
SE005 = playSe( spep_0 + 100, 4 );

--トランクスの指を振る
SE006 = playSe( spep_0 + 130, 37 );
setSeVolumeByWorkId( spep_0 + 130, SE006, 52 );
setPitch( spep_0 + 130, SE006, 300 );
setTimeStretch( SE006, 1.2, 10, 1 );

--トランクスの指を振る
SE007 = playSe( spep_0 + 132, 4 );

--トランクスの指を振る
SE008 = playSe( spep_0 + 160, 37 );
setSeVolumeByWorkId( spep_0 + 160, SE008, 58 );
setPitch( spep_0 + 160, SE008, 300 );
setTimeStretch( SE008, 1.2, 10, 1 );

--トランクスの指を振る
SE009 = playSe( spep_0 + 162, 4 );

--トランクス構える
SE010 = playSe( spep_0 + 226, 1233 );
setSeVolumeByWorkId( spep_0 + 226, SE010, 73 );
stopSe( spep_0 + 242, SE010, 4 );

--トランクス腕クロス
SE011 = playSe( spep_0 + 314, 1003 );
setSeVolumeByWorkId( spep_0 + 314, SE011, 66 );

--二人構える
SE012 = playSe( spep_0 + 358, 1233 );
setSeVolumeByWorkId( spep_0 + 358, SE012, 51 );
stopSe( spep_0 + 374, SE012, 4 );
setPitch( spep_0 + 358, SE012, -500 );
setTimeStretch( SE012, 0.67, 10, 1 );

--二人構える
SE013 = playSe( spep_0 + 364, 1006 );
setSeVolumeByWorkId( spep_0 + 364, SE013, 53 );
setPitch( spep_0 + 364, SE013, -300 );
setTimeStretch( SE013, 0.8, 10, 1 );

--決め
SE014 = playSe( spep_0 + 402, 1062 );
setSeVolumeByWorkId( spep_0 + 402, SE014, 61 );

--決め
SE015 = playSe( spep_0 + 402, 20 );
setSeVolumeByWorkId( spep_0 + 402, SE015, 56 );

--悟天浮く
SE016 = playSe( spep_0 + 458, 44 );
setSeVolumeByWorkId( spep_0 + 458, SE016, 14 );
setSeVolumeByWorkId( spep_0 + 463, SE016, 25 );
setSeVolumeByWorkId( spep_0 + 468, SE016, 37 );
setSeVolumeByWorkId( spep_0 + 473, SE016, 49 );
setSeVolumeByWorkId( spep_0 + 478, SE016, 62 );
setSeVolumeByWorkId( spep_0 + 484, SE016, 75 );

--環境音
SE017 = playSe( spep_0 + 472, 1278 );
setSeVolumeByWorkId( spep_0 + 472, SE017, 8 );
setPitch( spep_0 + 472, SE017, 300 );
setTimeStretch( SE017, 1.2, 30, 5 );

--悟天構える
SE018 = playSe( spep_0 + 588, 1233 );
setSeVolumeByWorkId( spep_0 + 596, SE018, 20 );
setSeVolumeByWorkId( spep_0 + 597, SE018, 41 );
setSeVolumeByWorkId( spep_0 + 598, SE018, 62 );
setPitch( spep_0 + 596, SE018, 200 );
setTimeStretch( SE018, 1.13, 30,6 );

--悟天構える
SE019 = playSe( spep_0 + 602, 1006 );
setSeVolumeByWorkId( spep_0 + 602, SE019, 62 );

---------------------------------------------
----ボイス
---------------------------------------------

--子供だからって甘く見てると痛い目みるぜ！悟天！オレたちの強さをみせてやろうぜ！
playVoice( spep_0 + 2, 248 );
setVoiceVolume( spep_0 + 2, 248, 100 );

--いひひひ…きっとビックリするね！
playVoice( spep_0 + 470, 249 );
setVoiceVolume( spep_0 + 470, 249, 100 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 +712 );
else end