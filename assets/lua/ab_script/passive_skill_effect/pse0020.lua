--1026130：孫悟飯(幼年期)_登場時演出
--battle_301245

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
SP_01 = 3182;   --孫悟飯(幼年期)_登場時演出　ef_001

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
--孫悟飯(幼年期)_登場時演出
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 622, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 622, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 622, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 622, eff, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

SE002 = playSeVer2( spep_0 + 0, 1115, "",spep_0 + 160, 0, 94, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );

--ドラゴンボール回転
SE003 = playSeVer2( spep_0 + 36, 1042, "", 0, 0, 0, -1);
setPitch( spep_0 + 36, SE003, 500 );
setTimeStretch( SE003, 1.33, 30, 4 );
SE004 = playSeVer2( spep_0 + 40, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 78 );
SE005 = playSeVer2( spep_0 + 40, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 79 );
SE006 = playSeVer2( spep_0 + 40, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 50 );

--空力音
SE007 = playSeVer2( spep_0 + 100, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE007, 25 );
SE008 = playSeVer2( spep_0 + 100, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE008, 20 );

--走る
SE009 = playSeVer2( spep_0 + 104, 1377, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 106, 1108, "", 0, 0, 0, -1);

--セリフカットイン
SE011 = playSeVer2( spep_0 + 112, 1018, "", 0, 0, 0, -1);

--走る
SE012 = playSeVer2( spep_0 + 130, 1108, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 142, 1377, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 146, 1108, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 164, 1108, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 178, 1377, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 182, 1108, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 196, 1108, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 210, 1108, "", 0, 0, 0, -1);

--かがむ
SE020 = playSeVer2( spep_0 + 212, 1377, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 216, 1003, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 216, 1013, "", 0, 0, 0, -1);

--飛び上がる
SE023 = playSeVer2( spep_0 + 234, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 234, 1207, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 246, 1117, "", 0, 0, 0, -1);

--飛行音
SE026 = playSeVer2( spep_0 + 246, 1019, "", 0, 0, 0, -1);

--ヤムチャ飛んでくる
SE027 = playSeVer2( spep_0 + 288, 1116, "", 0, 0, 0, -1);

--飛行音
SE028 = playSeVer2( spep_0 + 310, 1019, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 374, 1019, "", 0, 0, 0, -1);

--クリリン飛んでくる
SE030 = playSeVer2( spep_0 + 374, 1117, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 374, 44, "", 0, 0, 0, -1);

--回転
SE032 = playSeVer2( spep_0 + 424, 1004, "", 0, 0, 0, -1);

--飛行音
SE033 = playSeVer2( spep_0 + 438, 1019, "", 0, 0, 0, -1);

--天津飯飛んでくる
SE034 = playSeVer2( spep_0 + 466, 1116, "",spep_0 + 544, 0, 44, -1);
SE035 = playSeVer2( spep_0 + 466, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE035, 40 );
SE036 = playSeVer2( spep_0 + 476, 1277, "", 0, 0, 0, -1);

--飛行音
SE037 = playSeVer2( spep_0 + 502, 1019, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 566, 1019, "", 0, 0, 0, -1);

--悟飯飛んでくる
SE039 = playSeVer2( spep_0 + 568, 63, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 574, 1117, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 580, 44, "", 0, 0, 0, -1);


--ボイス
--「よし、がんばろう！」	
playVoice( spep_0 + 122, 593 );
setVoiceVolume( spep_0 + 122, 593, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 622 + 2, 0, 0, 0, 0, 255 );  --黒　背景

endPhase( spep_0 + 622 );

else end