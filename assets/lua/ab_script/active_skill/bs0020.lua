--1022220:孫悟飯(幼年期)_光のシールド（アクティブ）
--sp_effect_b4_00188

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
SP_01 = 157372;

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
setEffMoveKey( spep_0 + 586, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 586, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 586, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 586, active, 255 );


-------------------------------------------
--SE
-------------------------------------------
--入り
SE001 = playSe( spep_0 + 0, 44 );
stopSe( spep_0 + 12, SE001, 8 );

--着地
SE002 = playSe( spep_0 + 2, 1108 );
setSeVolumeByWorkId( spep_0 + 2, SE002, 158 );

--着地
SE003 = playSe( spep_0 + 6, 1107 );
setSeVolumeByWorkId( spep_0 + 6, SE003, 158 );

--オーラ
SE004 = playSe( spep_0 + 42, 1035 );

--オーラ
SE005 = playSe( spep_0 + 52, 1036 );
setSeVolumeByWorkId( spep_0 + 52, SE005, 79 );

--オーラ
SE006 = playSe( spep_0 + 52, 1267 );
setSeVolumeByWorkId( spep_0 + 52, SE006, 64 );
stopSe( spep_0 + 190, SE006, 14 );

--オーラ
SE007 = playSe( spep_0 + 76, 1036 );
setSeVolumeByWorkId( spep_0 + 76, SE007, 79 );

--オーラ
SE008 = playSe( spep_0 + 100, 1036 );
setSeVolumeByWorkId( spep_0 + 100, SE008, 79 );

--オーラ
SE009 = playSe( spep_0 + 124, 1036 );
setSeVolumeByWorkId( spep_0 + 124, SE009, 79 );

--オーラ
SE010 = playSe( spep_0 + 148, 1036 );
setSeVolumeByWorkId( spep_0 + 148, SE010, 79 );

--オーラ
SE011 = playSe( spep_0 + 172, 1036 );
setSeVolumeByWorkId( spep_0 + 172, SE011, 79 );

--地面膨らむ
SE012 = playSe( spep_0 + 190, 1033 );
setSeVolumeByWorkId( spep_0 + 190, SE012, 84 );

--地面爆発
SE013 = playSe( spep_0 + 208, 1024 );
setSeVolumeByWorkId( spep_0 + 208, SE013, 76 );

--地面爆発
SE014 = playSe( spep_0 + 208, 1035 );
setSeVolumeByWorkId( spep_0 + 208, SE014, 74 );

--シールド展開
SE015 = playSe( spep_0 + 236, 1325 );
setSeVolumeByWorkId( spep_0 + 236, SE015, 110 );

--シールド展開
SE016 = playSe( spep_0 + 244, 1044 );
setSeVolumeByWorkId( spep_0 + 244, SE016, 78 );

--煙巻き上がる
SE017 = playSe( spep_0 + 314, 1258 );
setSeVolumeByWorkId( spep_0 + 314, SE017, 8 );
setSeVolumeByWorkId( spep_0 + 318, SE017, 16 );
setSeVolumeByWorkId( spep_0 + 322, SE017, 24 );
setSeVolumeByWorkId( spep_0 + 326, SE017, 32 );
setSeVolumeByWorkId( spep_0 + 330, SE017, 40 );
setSeVolumeByWorkId( spep_0 + 334, SE017, 47 );
stopSe( spep_0 + 370, SE017, 52 );
setStartTimeMs( SE017,  0 );

--煙巻き上がる
SE018 = playSe( spep_0 + 314, 1278 );
setSeVolumeByWorkId( spep_0 + 314, SE018, 114 );
stopSe( spep_0 + 364, SE018, 34 );
setPitch( spep_0 + 314, SE018, -400 );
setTimeStretch( SE018, 0.73, 10, 1 );

--光立ち上がる
SE019 = playSe( spep_0 + 348, 1160 );
setSeVolumeByWorkId( spep_0 + 348, SE019, 76 );

--気ダメ
SE020 = playSe( spep_0 + 364, 1018 );
setSeVolumeByWorkId( spep_0 + 364, SE020, 79 );

--カメラ引く
SE021 = playSe( spep_0 + 458, 1278 );
setSeVolumeByWorkId( spep_0 + 458, SE021, 65 );
stopSe( spep_0 + 526, SE021, 56 );

--カメラ引く
SE022 = playSe( spep_0 + 464, 1258 );
setSeVolumeByWorkId( spep_0 + 464, SE022, 73 );
setTimeStretch( SE022, 1.11, 30, 5 );

---------------------------------------------
----ボイス
---------------------------------------------
--ここはボクに任せてください！
playVoice( spep_0 + 8, 280 );
setVoiceVolume( spep_0 + 8, 280, 100 );

--ボクだってピッコロさんの修行を受けたんだ。簡単には負けないぞー！
playVoice( spep_0 + 176, 281 );
setVoiceVolume( spep_0 + 176, 281, 100 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 586 );
else end