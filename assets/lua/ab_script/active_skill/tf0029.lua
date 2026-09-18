--1021290:ジャネンバアクティブ変身演出

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
SP_01=	3134;

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
setEffMoveKey( spep_0 + 896, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 896, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 896, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 896, active, 255 );


-------------------------------------------
--SE
-------------------------------------------

--倒れる1
SE001 = playSe( spep_0 + 12, 38 );
setSeVolumeByWorkId( spep_0 + 12, SE001, 53 );

--倒れる2
SE002 = playSe( spep_0 + 20, 1033 );
setSeVolumeByWorkId( spep_0 + 20, SE002, 41 );
stopSe( spep_0 + 58, SE002, 18 );

--倒れる3
SE003 = playSe( spep_0 + 20, 1190 );
setSeVolumeByWorkId( spep_0 + 20, SE003, 39 );
setTimeStretch( SE003, 0.77, 10, 1 );

--変身中
SE004 = playSe( spep_0 + 78, 1292 );
setSeVolumeByWorkId( spep_0 + 78, SE004, 178 );
stopSe( spep_0 + 500, SE004, 10 );

--目線カットイン
SE005 = playSe( spep_0 + 414, 1018 );

--変身終わり1
SE006 = playSe( spep_0 + 462, 1293 );
setSeVolumeByWorkId( spep_0 + 462, SE006, 178 );

--変身終わり2
SE007 = playSe( spep_0 + 504, 1294 );
setSeVolumeByWorkId( spep_0 + 504, SE007, 211 );

--画面遷移
SE008 = playSe( spep_0 + 602, 8 );
setSeVolumeByWorkId( spep_0 + 602, SE008, 38 );
setPitch( spep_0 + 602, SE008, -600 );
setTimeStretch( SE008, 0.6, 10, 1 );

--気ダメ1
SE009 = playSe( spep_0 + 710, 1258 );
setSeVolumeByWorkId( spep_0 + 710, SE009, 60 );
setPitch( spep_0 + 710, SE009, -400 );
setTimeStretch( SE009, 0.73, 10, 1 );

--気ダメ2
SE010 = playSe( spep_0 + 716, 1024 );
setSeVolumeByWorkId( spep_0 + 716, SE010, 79 );

--気ダメ3
SE011 = playSe( spep_0 + 716, 1278 );
setSeVolumeByWorkId( spep_0 + 716, SE011, 73 );
stopSe( spep_0 + 806, SE011, 104 );
setPitch( spep_0 + 716, SE011, -400 );
setTimeStretch( SE011, 0.73, 10, 1 );

--気ダメ4
SE012 = playSe( spep_0 + 740, 1159 );
setSeVolumeByWorkId( spep_0 + 740, SE012, 12 );
setSeVolumeByWorkId( spep_0 + 745, SE012, 24 );
setSeVolumeByWorkId( spep_0 + 750, SE012, 36 );
setSeVolumeByWorkId( spep_0 + 755, SE012, 48 );
setSeVolumeByWorkId( spep_0 + 760, SE012, 60 );
setSeVolumeByWorkId( spep_0 + 765, SE012, 72 );
setSeVolumeByWorkId( spep_0 + 770, SE012, 84 );

---------------------------------------------
----ボイス
---------------------------------------------

--ジャネンバ　ジャネンバー
playVoice( spep_0 + 72, 233 );
setVoiceVolume( spep_0 + 72, 233, 100 );

--ヘッヘッへ…
playVoice( spep_0 + 604, 234 );
setVoiceVolume( spep_0 + 604, 234, 100 );

--ぐわぁぁおお！！
playVoice( spep_0 + 710, 235 );
setVoiceVolume( spep_0 + 710, 235, 100 );

--
entryFade( spep_0 + 896 -40, 10, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 896 );
else end