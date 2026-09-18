--1021330:パイクーハン_あの世一の達人(アクティブ)_bs0013

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
SP_01 = 156561;

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
setEffMoveKey( spep_0 + 538, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 538, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 538, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 538, active, 255 );


-------------------------------------------
--SE
-------------------------------------------

--腕あげる
SE001 = playSe( spep_0 + 16, 1003 );

--環境音1
SE002 = playSe( spep_0 + 44, 1229 );
setSeVolumeByWorkId( spep_0 + 44, SE002, 138 );

--環境音2
SE003 = playSe( spep_0 + 80, 1175 );
setSeVolumeByWorkId( spep_0 + 80, SE003, 16 );
setTimeStretch( SE003, 1.11, 10, 1 );

--環境音3
SE004 = playSe( spep_0 + 330, 1229 );

--目線カットイン
SE005 = playSe( spep_0 + 352, 1018 );

--構える
SE006 = playSe( spep_0 + 392, 1233 );
setSeVolumeByWorkId( spep_0 + 392, SE006, 120 );
setPitch( spep_0 + 392, SE006, -400 );
setTimeStretch( SE006, 0.73, 10, 1 );

--風が吹く
SE007 = playSe( spep_0 + 398, 1258 );
setSeVolumeByWorkId( spep_0 + 398, SE007, 2 );
setSeVolumeByWorkId( spep_0 + 400, SE007, 6 );
setSeVolumeByWorkId( spep_0 + 404, SE007, 12 );
setSeVolumeByWorkId( spep_0 + 408, SE007, 16 );
setSeVolumeByWorkId( spep_0 + 412, SE007, 20 );
setSeVolumeByWorkId( spep_0 + 416, SE007, 24 );
setSeVolumeByWorkId( spep_0 + 420, SE007, 28 );
setSeVolumeByWorkId( spep_0 + 424, SE007, 32 );
setSeVolumeByWorkId( spep_0 + 428, SE007, 36 );
setSeVolumeByWorkId( spep_0 + 432, SE007, 40 );
setSeVolumeByWorkId( spep_0 + 436, SE007, 42 );
setSeVolumeByWorkId( spep_0 + 440, SE007, 48 );
setSeVolumeByWorkId( spep_0 + 444, SE007, 54 );
setSeVolumeByWorkId( spep_0 + 446, SE007, 60 );

--ラスト決め1
SE008 = playSe( spep_0 + 428, 1072 );
setSeVolumeByWorkId( spep_0 + 428, SE008, 126 );

--ラスト決め2
SE009 = playSe( spep_0 + 464, 1062 );
setSeVolumeByWorkId( spep_0 + 464, SE009, 79 );


---------------------------------------------
----ボイス
---------------------------------------------

--ここから先へは行かせはせん！
playVoice( spep_0 + 200, 236 );
setVoiceVolume( spep_0 +200, 236, 125 );
setVoiceVolume( spep_0 +246, 236, 105 );
setVoiceVolume( spep_0 +310, 236, 100 );
--あの世一の達人の妙技の見せてやる！！
playVoice( spep_0 + 350, 237 );
setVoiceVolume( spep_0 + 350, 237, 110 );

entryFade( spep_0 + 538 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 538 ); --元516f
else end