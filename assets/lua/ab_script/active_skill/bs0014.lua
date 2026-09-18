--1021430:ゴールデンフリーザ(天使)&人造人間17号（アクティブ）_bs0014
--battle_301212

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
SP_01 = 3135;

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
setEffMoveKey( spep_0 + 1062, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1062, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1062, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1062, active, 255 );


-------------------------------------------
--SE
-------------------------------------------

--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 18 );

--フリーザ歩く
SE002 = playSe( spep_0 + 0, 1182 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 19 );
stopSe( spep_0 + 6, SE002, 4 );

--フリーザ歩く
SE003 = playSe( spep_0 + 2, 1135 );
setSeVolumeByWorkId( spep_0 + 2, SE003, 18 );

--フリーザ歩く
SE004 = playSe( spep_0 + 28, 1182 );
setSeVolumeByWorkId( spep_0 + 28, SE004, 19 );
stopSe( spep_0 + 34, SE004, 4 );

--フリーザ歩く
SE005 = playSe( spep_0 + 30, 1135 );
setSeVolumeByWorkId( spep_0 + 30, SE005, 15 );

--フリーザ歩く¥
SE006 = playSe( spep_0 + 54, 1182 );
setSeVolumeByWorkId( spep_0 + 54, SE006, 13 );
stopSe( spep_0 + 60, SE006, 4 );

--フリーザ歩く
SE007 = playSe( spep_0 + 56, 1135 );
setSeVolumeByWorkId( spep_0 + 56, SE007, 13 );

--フリーザ歩く
SE008 = playSe( spep_0 + 80, 1182 );
setSeVolumeByWorkId( spep_0 + 80, SE008, 16 );
stopSe( spep_0 + 86, SE008, 4 );

--フリーザ歩く
SE009 = playSe( spep_0 + 82, 1135 );
setSeVolumeByWorkId( spep_0 + 82, SE009, 13 );

--環境音
SE010 = playSe( spep_0 + 94, 1175 );
setSeVolumeByWorkId( spep_0 + 94, SE010, 12 );
setTimeStretch( SE010, 1.11, 10, 1 );

--セリフカットイン
SE011 = playSe( spep_0 + 96, 1018 );
setSeVolumeByWorkId( spep_0 + 96, SE011, 69 );

--フリーザ振り返る
SE012 = playSe( spep_0 + 244, 37 );
setSeVolumeByWorkId( spep_0 + 244, SE012, 40 );
stopSe( spep_0 + 260, SE012, 8 );
setPitch( spep_0 + 244, SE012, -1000 );
setTimeStretch( SE012, 0.33, 10, 1 );

--フリーザ振り返る
SE013 = playSe( spep_0 + 246, 4 );
setSeVolumeByWorkId( spep_0 + 246, SE013, 251 );
setPitch( spep_0 + 246, SE013, -800 );
setTimeStretch( SE013, 0.47, 10, 1 );

--環境音
SE014 = playSe( spep_0 + 400, 1278 );
setSeVolumeByWorkId( spep_0 + 400, SE014, 12 );
setTimeStretch( SE014, 1.25, 40, 6 );

--腕さげる
SE015 = playSe( spep_0 + 962, 1116 );
setSeVolumeByWorkId( spep_0 + 962, SE015, 62 );
stopSe( spep_0 + 990, SE015, 16 );

---------------------------------------------
----ボイス
---------------------------------------------

--たかが足止めに随分と全力を出されたようですねぇ
playVoice( spep_0 + 96, 255 );
setVoiceVolume( spep_0 + 96, 255, 90 );

--もしオレが失敗しても　お前がいればあとは大丈夫だと思ったからな
playVoice( spep_0 + 414, 256 );
setVoiceVolume( spep_0 + 414, 256, 90 );

--ふん...信頼していただけて光栄ですよ
playVoice( spep_0 + 802, 257 );
setVoiceVolume( spep_0 + 802, 257, 90 );

--entryFade( spep_0 + 1062 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 1062 ); --
else end