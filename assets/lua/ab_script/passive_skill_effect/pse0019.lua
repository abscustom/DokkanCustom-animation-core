--1026160：LR_孫悟空_登場時演出
--battle_301244

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
SP_01 = 3183;	--LR_孫悟空_登場時演出 ef_001

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
--LR_孫悟空_登場時演出(714F)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 714, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 714, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 714, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 714, eff, 255 );

--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 4, 1232, "", 0, 0, 0, -1);

--ボール飛んでいく
SE003 = playSeVer2( spep_0 + 22, 63, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 1272, "", 0, 0, 0, -1);
setPitch( spep_0 + 22, SE004, 400 );
setTimeStretch( SE004, 1.27, 30, 4 );
SE005 = playSeVer2( spep_0 + 32, 44, "", 0, 0, 0, -1);

--炎が広がる
SE006 = playSeVer2( spep_0 + 90, 1231, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 90, 1268, "",spep_0 + 244, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 90, SE007, 178 );
SE008 = playSeVer2( spep_0 + 92, 1188, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 92, 1008, "", 0, 0, 0, -1);

--画面遷移
SE010 = playSeVer2( spep_0 + 140, 1072, "", 0, 0, 0, -1);

--筋斗雲で飛んでくる
SE011 = playSeVer2( spep_0 + 190, 63, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 190, 1239, "",spep_0 + 358, 0, 46, -1);
setPitch( spep_0 + 190, SE012, 300 );
setTimeStretch( SE012, 1.2, 30, 4 );
SE013 = playSeVer2( spep_0 + 190, 1327, "",spep_0 + 390, 0, 84, -1);

--飛んでいく
SE014 = playSeVer2( spep_0 + 240, 1258, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 246, 1027, "", 0, 0, 0, -1);

--遠くで筋斗雲飛ぶ
SE015 = playSeVer2( spep_0 + 306, 1128, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE015, 40 );
setStartTimeMs( SE015,  1100 );
SE018 = playSeVer2( spep_0 + 300, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE018, 63 );
SE019 = playSeVer2( spep_0 + 308, 1239, "",spep_0 + 500, 0, 62, -1);
SE020 = playSeVer2( spep_0 + 364, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE020, 63 );
SE021 = playSeVer2( spep_0 + 428, 1019, "",spep_0 + 506, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 428, SE021, 63 );

--太陽の光
SE017 = playSeVer2( spep_0 + 272, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE017, 180 );

--環境音
SE022 = playSeVer2( spep_0 + 468, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 468, SE022, 25 );

--腕動かす
SE023 = playSeVer2( spep_0 + 472, 1003, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 492, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 492, SE025, 191 );

--セリフカットイン
SE024 = playSeVer2( spep_0 + 488, 1018, "", 0, 0, 0, -1);

--構える
SE026 = playSeVer2( spep_0 + 604, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 604, SE026, 50 );
SE027 = playSeVer2( spep_0 + 640, 1233, "", 0, 0, 0, -1);

--最後決め
SE028 = playSeVer2( spep_0 + 652, 1062, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 652, 20, "", 0, 0, 0, -1);

--ボイス
--「オッス、オラ悟空！」
playVoice( spep_0 + 494, 589 );
setVoiceVolume( spep_0 + 494, 589, 100 );

endPhase( spep_0 + 714 );

else end