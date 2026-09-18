--1026030：UR_ヤジロベー(アクティブバフ：ヤジロベーの仙豆)
--sp_effect_b4_00265
--bs0035


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
SP_01 = 161028;

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
setEffMoveKey( spep_0 + 660 -4, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 660 -4, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 660 -4, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 660 -4, active, 255 );

-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--歩いてくる
SE002 = playSeVer2( spep_0 + 26, 1367, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE002, 75 );
SE003 = playSeVer2( spep_0 + 26, 1192, "",spep_0 + 52, 12, 6, -1);
SE004 = playSeVer2( spep_0 + 56, 1367, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 56, 1192, "",spep_0 + 82, 12, 6, -1);

--セリフカットイン
SE006 = playSeVer2( spep_0 + 114, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE006, 60 );

--腕上げる
SE007 = playSeVer2( spep_0 + 198, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE007, 63 );

--仙豆投げる
SE008 = playSeVer2( spep_0 + 322, 4, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 322, 37, "", 0, 0, 0, -1);

--仙豆受け取る
SE010 = playSeVer2( spep_0 + 376, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE010, 79 );
setBandpassFilter( spep_0 + 376, SE010, 500, 24000 );

--ラスト決め
SE011 = playSeVer2( spep_0 + 560, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE011, 89 );
SE012 = playSeVer2( spep_0 + 560, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE012, 86 );


---------------------------------------------
--ボイス
---------------------------------------------
-- おみゃーさんラッキーだったなや
playVoice( spep_0 + 132, 529 );
setVoiceVolume( spep_0 + 132, 529, 100 );

-- ん！
playVoice( spep_0 + 287, 530 );
setVoiceVolume( spep_0 + 287, 530, 100 );

-- 仙豆だわ、仙豆
playVoice( spep_0 + 422, 531 );
setVoiceVolume( spep_0 + 422, 531, 100 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 660 -4 );

else end
