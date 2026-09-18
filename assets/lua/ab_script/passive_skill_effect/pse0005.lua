--1023890:孫悟飯(青年期)&孫悟天(幼年期)&トランクス(幼年期)_登場時演出
--sp_effect_b4_00216

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
SP_01 = 159159;--戦闘前演出

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
--冒頭～着弾～構え
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 624, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 624, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 624, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 624, eff, 255 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 72 );
SE002 = playSeVer2( spep_0 + 0, 1259, "",spep_0 + 94, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 72 );

--三人登場
SE003 = playSeVer2( spep_0 + 38, 1072, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 50, 1018, "", 0, 0, 0, -1);

--飛ぶ音
SE005 = playSeVer2( spep_0 + 70, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 58 );
SE006 = playSeVer2( spep_0 + 134, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE006, 61 );

--首傾ける
SE007 = playSeVer2( spep_0 + 134, 44, "", 0, 0, 0, -1);

--飛ぶ音
SE008 = playSeVer2( spep_0 + 198, 1019, "", 0, 0, 0, -1);

--神龍突っ込む
SE009 = playSeVer2( spep_0 + 212, 1182, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 212, 1314, "",spep_0 + 582, 0, 18, -1);
SE011 = playSeVer2( spep_0 + 212, 1227, "",spep_0 + 582, 0, 18, -1);

--飛行音
SE012 = playSeVer2( spep_0 + 258, 1019, "", 0, 0, 0, -1);

--悟天ズーム
SE013 = playSeVer2( spep_0 + 304, 1072, "", 0, 0, 0, -1);


--飛行音
SE014 = playSeVer2( spep_0 + 322, 1019, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 386, 1019, "", 0, 0, 0, -1);

--悟飯ズーム
SE016 = playSeVer2( spep_0 + 384, 1003, "", 0, 0, 0, -1);

--飛行音
SE017 = playSeVer2( spep_0 + 450, 1019, "", 0, 0, 0, -1);

--トランクスズーム
SE018 = playSeVer2( spep_0 + 454, 1048, "", 0, 0, 0, -1);

--全体ズームアウト
SE019 = playSeVer2( spep_0 + 484, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE019, 36 );
setTimeStretch( SE019, 1.25, 30, 4 );

--飛行音
SE020 = playSeVer2( spep_0 + 514, 1019, "",spep_0 + 578, 0, 16, -1);

--全体前に
SE021 = playSeVer2( spep_0 + 578, 1066, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE021, 111 );
SE022 = playSeVer2( spep_0 + 578, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE022, 79 );
SE023 = playSeVer2( spep_0 + 578, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 578, SE023, 83 );


endPhase( spep_0 + 624 );
else end