--1026250：超サイヤ人ゴッド孫悟空_登場時演出
--battle_301250

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
SP_01 = 3186;   --超サイヤ人ゴッド孫悟空_登場時演出

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
--超サイヤ人ゴッド孫悟空_登場時演出
------------------------------------------------------
--はじめの準備
spep_0=0;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1204, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1204, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1204, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1204, eff, 255 );

-- ** 音 ** --
--オーラ音
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 778, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 300 );

--青い球光る
SE002 = playSeVer2( spep_0 + 4, 1190, "",spep_0 + 22, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 61 );
setPitch( spep_0 + 4, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 8, 1182, "",spep_0 + 44, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 50 );

--気ダメ
SE004 = playSeVer2( spep_0 + 10, 1072, "", 0, 0, 0, -1);

--青い球光る
SE005 = playSeVer2( spep_0 + 20, 1190, "",spep_0 + 38, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 20, SE005, 58 );
setPitch( spep_0 + 20, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );

--気ダメ
SE006 = playSeVer2( spep_0 + 28, 1278, "",spep_0 + 104, 0, 40, -1);

--[[
SE007 = playSeVer2( spep_0 + 56, 1035, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 56, 1298, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 56, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE009, 74 );
]]
SE007 = playSeVer2( spep_0 + 56, 1408, "", 0, 0, 0, -1);


--オーラ音
SE010 = playSeVer2( spep_0 + 80, 1181, "",spep_0 + 772, 0, 38, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE011, 56 );
SE012 = playSeVer2( spep_0 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 104, SE012, 56 );
SE013 = playSeVer2( spep_0 + 128, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE013, 56 );
SE014 = playSeVer2( spep_0 + 152, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE014, 56 );
SE015 = playSeVer2( spep_0 + 176, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE015, 40 );

--空気音
SE016 = playSeVer2( spep_0 + 194, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 194, SE016, 36 );

--オーラ
SE017 = playSeVer2( spep_0 + 200, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 200, SE017, 32 );
SE018 = playSeVer2( spep_0 + 224, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE018, 32 );
SE019 = playSeVer2( spep_0 + 248, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE019, 32 );

--大猿奥へ
SE020 = playSeVer2( spep_0 + 246, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE020, 76 );

--オーラ
SE021 = playSeVer2( spep_0 + 272, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE021, 32 );

--大猿奥へ
SE022 = playSeVer2( spep_0 + 270, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE022, 71 );
setPitch( spep_0 + 270, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );

--オーラ
SE023 = playSeVer2( spep_0 + 296, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE023, 32 );
SE024 = playSeVer2( spep_0 + 320, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE024, 32 );

--惑星奥へ
SE025 = playSeVer2( spep_0 + 338, 1116, "",spep_0 + 432, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 338, SE025, 72 );

--オーラ
SE026 = playSeVer2( spep_0 + 344, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 344, SE026, 32 );
SE027 = playSeVer2( spep_0 + 368, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 368, SE027, 32 );

--空気音
SE028 = playSeVer2( spep_0 + 382, 1278, "",spep_0 + 628, 0, 156, -1);
setSeVolumeByWorkId( spep_0 + 382, SE028, 72 );

--オーラ
SE029 = playSeVer2( spep_0 + 392, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE029, 32 );
SE030 = playSeVer2( spep_0 + 416, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 416, SE030, 32 );
SE031 = playSeVer2( spep_0 + 440, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 440, SE031, 32 );
SE032 = playSeVer2( spep_0 + 464, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 464, SE032, 32 );
SE033 = playSeVer2( spep_0 + 488, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE033, 32 );
SE034 = playSeVer2( spep_0 + 512, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 512, SE034, 32 );
SE035 = playSeVer2( spep_0 + 536, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 536, SE035, 32 );
SE036 = playSeVer2( spep_0 + 560, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 560, SE036, 32 );
SE037 = playSeVer2( spep_0 + 584, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE037, 32 );

--悟空浮き上がる
SE038 = playSeVer2( spep_0 + 584, 1116, "",spep_0 + 640, 0, 32, -1);
setPitch( spep_0 + 584, SE038, -600 );
setTimeStretch( SE038, 0.6, 30, 4 );
SE039 = playSeVer2( spep_0 + 588, 1182, "", 0, 6, 0, -1);
setStartTimeMs( SE039,  67 );
SE040 = playSeVer2( spep_0 + 592, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 592, SE040, 79 );
setPitch( spep_0 + 592, SE040, -400 );
setTimeStretch( SE040, 0.73, 30, 4 );

--オーラ
SE041 = playSeVer2( spep_0 + 608, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 608, SE041, 32 );
SE042 = playSeVer2( spep_0 + 632, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE042, 32 );

--光る
SE043 = playSeVer2( spep_0 + 648, 1303, "", 0, 16, 0, -1);
setSeVolumeByWorkId( spep_0 + 648, SE043, 63 );
setStartTimeMs( SE043,  267 );
SE044 = playSeVer2( spep_0 + 644, 1263, "", 0, 0, 0, -1);

--オーラ
SE045 = playSeVer2( spep_0 + 656, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 656, SE045, 25 );

--オーラ音
SE046 = playSeVer2( spep_0 + 500, 1407, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE046, 316 );

--オーラ
SE047 = playSeVer2( spep_0 + 680, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 680, SE047, 18 );

--オーラ音
SE048 = playSeVer2( spep_0 + 690, 1219, "", 0, 0, 0, -1);

--オーラ
SE049 = playSeVer2( spep_0 + 704, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE049, 13 );

--オーラ音
SE050 = playSeVer2( spep_0 + 704, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE050, 56 );

--オーラ
SE051 = playSeVer2( spep_0 + 728, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 728, SE051, 10 );

--オーラ音
SE052 = playSeVer2( spep_0 + 730, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 730, SE052, 16 );

--気弾ける
SE053 = playSeVer2( spep_0 + 774, 1258, "",spep_0 + 956, 30, 116, -1);
setSeVolumeByWorkId( spep_0 + 774, SE053, 42 );

--セリフカットイン
SE054 = playSeVer2( spep_0 + 874, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 874, SE054, 63 );

--ラスト決め
SE055 = playSeVer2( spep_0 + 1126, 1072, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_0 + 1126, SE055, 50 );
setStartTimeMs( SE055,  333 );
SE056 = playSeVer2( spep_0 + 1136, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1136, SE056, 63 );
SE057 = playSeVer2( spep_0 + 1142, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1142, SE057, 63 );
SE058 = playSeVer2( spep_0 + 1142, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1142, SE058, 67 );


--ボイス
--「これが超サイヤ人ゴッド……」
playVoice( spep_0 + 866, 612 );
setVoiceVolume( spep_0 + 866, 612, 110 );

--「こんな世界があったなんてよ」
playVoice( spep_0 + 1059, 613 );
setVoiceVolume( spep_0 + 1059, 613, 130 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1204 + 2, 0, 0, 0, 0, 255 );  --黒　背景

endPhase( spep_0 + 1204 );

else end