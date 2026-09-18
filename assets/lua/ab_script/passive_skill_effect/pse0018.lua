--1025590：LR_ピッコロ(潜在能力解放)_登場時演出
--sp_effect_b4_00271
--pse0018

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
SP_01 = 161131;	--LR_ピッコロ(潜在能力解放)_登場時演出	ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--LR_ピッコロ(潜在能力解放)_登場時演出
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie(0 , SP_01, 0, 1);

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 660, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 660, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 660, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 660, eff, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );
setTimeStretch( SE002, 1.43, 30, 4 );
SE003 = playSeVer2( spep_0 + 12, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 47 );
setTimeStretch( SE003, 1.25, 30, 4 );

--構える
SE004 = playSeVer2( spep_0 + 144, 1003, "", 0, 0, 0, -1);
setPitch( spep_0 + 144, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );

--服破れる
SE005 = playSeVer2( spep_0 + 180, 1152, "",spep_0 + 222, 6, 22, -1);
setSeVolumeByWorkId( spep_0 + 180, SE005, 60 );
setStartTimeMs( SE005,  250 );
SE006 = playSeVer2( spep_0 + 176, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE006, 78 );
SE007 = playSeVer2( spep_0 + 176, 1153, "",spep_0 + 200, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 176, SE007, 81 );
SE008 = playSeVer2( spep_0 + 176, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE008, 75 );
SE009 = playSeVer2( spep_0 + 176, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE009, 77 );

--セリフカットイン
SE010 = playSeVer2( spep_0 + 180, 1018, "", 0, 0, 0, -1);

--服なびく
SE011 = playSeVer2( spep_0 + 208, 1332, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 230, 1331, "",spep_0 + 286, 0, 22, -1);
SE013 = playSeVer2( spep_0 + 256, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE013, 54 );
setPitch( spep_0 + 256, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );

--ズームアップ
SE014 = playSeVer2( spep_0 + 310, 1072, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE014, 78 );
setStartTimeMs( SE014,  250 );
SE015 = playSeVer2( spep_0 + 332, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 332, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );

--気ダメ
SE016 = playSeVer2( spep_0 + 386, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE016, 68 );
SE017 = playSeVer2( spep_0 + 386, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE017, 132 );
SE018 = playSeVer2( spep_0 + 386, 1122, "",spep_0 + 462, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 386, SE018, 72 );
SE019 = playSeVer2( spep_0 + 386, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE019, 69 );
SE020 = playSeVer2( spep_0 + 386, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 386, SE020, 46 );
SE021 = playSeVer2( spep_0 + 400, 1278, "",spep_0 + 530, 0, 88, -1);

--服が靡く
SE022 = playSeVer2( spep_0 + 460, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE022, 63 );
SE023 = playSeVer2( spep_0 + 510, 1333, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE023, 54 );
SE024 = playSeVer2( spep_0 + 562, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE024, 82 );
setPitch( spep_0 + 562, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );

--ボイス
--「オレは大魔王じゃない。　ただのピッコロだ！」
playVoice( spep_0 + 195, 554 );
setVoiceVolume( spep_0 + 195, 554, 100 );

--「これまでとは一味違うぞ」
playVoice( spep_0 + 475, 555 );
setVoiceVolume( spep_0 + 475, 555, 100 );

endPhase( spep_0 + 660 );

else end