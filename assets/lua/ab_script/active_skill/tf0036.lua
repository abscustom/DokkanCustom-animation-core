--1022380:超サイヤ人ゴッド孫悟空&超サイヤ人ゴッドベジータ_変身(アクティブスキル)
--sp_effect_a1_00333

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
SP_01=	158714	;--	変身演出


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
--変身演出
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 1274, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1274, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 1274, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 1274, eff, 255 );
------------------------------------------------------
--SE
------------------------------------------------------
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", spep_0 + 214, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--肩つかむ
SE002 = playSeVer2( spep_0 + 12, 1333, "",spep_0 + 44, 2, 10, -1);
setStartTimeMs( SE002,  250 );
setSeVolumeByWorkId( spep_0 + 12, SE002, 140 );
SE003 = playSeVer2( spep_0 + 20, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 63 );

--服投げ捨てる
SE004 = playSeVer2( spep_0 + 62, 1333, "",spep_0 + 86, 2, 10, -1);
setStartTimeMs( SE004,  250 );
SE005 = playSeVer2( spep_0 + 58, 1331, "",spep_0 + 92, 2, 16, -1);
setStartTimeMs( SE005,  133 );
SE006 = playSeVer2( spep_0 + 58, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 65 );
setPitch( spep_0 + 58, SE006, 200 );
setTimeStretch( SE006, 1.13, 30, 4 );
SE007 = playSeVer2( spep_0 + 58, 1332, "", 0, 0, 0, -1);

--ベジータ構える
SE008 = playSeVer2( spep_0 + 116, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE008, 79 );
setPitch( spep_0 + 116, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );

--悟空目線カットイン
SE009 = playSeVer2( spep_0 + 170, 1018, "", 0, 0, 0, -1);

--悟空気ダメ
SE010 = playSeVer2( spep_0 + 188, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE010, 126 );
SE011 = playSeVer2( spep_0 + 190, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE011, 141 );
SE012 = playSeVer2( spep_0 + 190, 1017, "", spep_0 + 268, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 190, SE012, 70 );

--オーラ
SE013 = playSeVer2( spep_0 + 238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE013, 79 );

--オーラ炎
SE015 = playSeVer2( spep_0 + 264, 1268, "",spep_0 + 446, 0, 14, -1);

--画面遷移
SE016 = playSeVer2( spep_0 + 260, 1072, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE017, 79 );

--気を解放して構える
SE018 = playSeVer2( spep_0 + 270, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE018, 56 );
SE019 = playSeVer2( spep_0 + 270, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE019, 58 );
SE014 = playSeVer2( spep_0 + 272, 1258, "",spep_0 + 472, 16, 110, -1);
setSeVolumeByWorkId( spep_0 + 272, SE014, 85 );
setStartTimeMs( SE014,  282 );

--オーラ
SE020 = playSeVer2( spep_0 + 292, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 292, SE020, 79 );

--気を解放して構える
SE021 = playSeVer2( spep_0 + 292, 1157, "",spep_0 + 382, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 292, SE021, 114 );

--オーラ
SE022 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE022, 79 );

--悟空ブルーになる
SE023 = playSeVer2( spep_0 + 340, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE023, 68 );
setTimeStretch( SE023, 1.05, 30, 4 );

--オーラ
SE024 = playSeVer2( spep_0 + 342, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE024, 79 );
--悟空ブルーになる
SE025 = playSeVer2( spep_0 + 354, 1259, "",spep_0 + 438, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 354, SE025, 72 );
SE026 = playSeVer2( spep_0 + 362, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE026, 75 );

--オーラ
SE027 = playSeVer2( spep_0 + 366, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE027, 79 );

--ベジータ目線カットイン
SE028 = playSeVer2( spep_0 + 428, 1018, "", 0, 0, 0, -1);
setPitch( spep_0 + 428, SE028, -300 );
setTimeStretch( SE028, 0.8, 30, 4 );
SE028_02 = playSeVer2( spep_0 + 428, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE028_02, 32 );
SE028_03 = playSeVer2( spep_0 + 752, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE028_03, 32 );

--ベジータ溜め
SE029 = playSeVer2( spep_0 + 442, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE029, 56 );
SE030 = playSeVer2( spep_0 + 474, 1147, "",spep_0 + 560, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 474, SE030, 54 );
SE031 = playSeVer2( spep_0 + 474, 1307, "",spep_0 + 534, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 474, SE031, 285 );
SE032 = playSeVer2( spep_0 + 502, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 502, SE032, -400 );
setTimeStretch( SE032, 0.73, 30, 4 );

--ベジータブルーになる
SE033 = playSeVer2( spep_0 + 508, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 508, SE033, 65 );
SE034 = playSeVer2( spep_0 + 512, 1035, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 512, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 512, SE035, 58 );
SE036 = playSeVer2( spep_0 + 512, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 512, SE036, 68 );

--振動音
SE037 = playSeVer2( spep_0 + 578, 1226, "",spep_0 + 986, 0, 116, -1);
setSeVolumeByWorkId( spep_0 + 578, SE037, 50 );

--炎の柱立つ
SE038 = playSeVer2( spep_0 + 626, 1024, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 628, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 626, SE039, 120 );
setPitch( spep_0 + 628, SE039, -300 );
setTimeStretch( SE039, 0.8, 30, 4 );
SE040 = playSeVer2( spep_0 + 652, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE040, 120 );
setPitch( spep_0 + 652, SE040, -300 );
setTimeStretch( SE040, 0.8, 30, 4 );
SE041 = playSeVer2( spep_0 + 670, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE041, 78 );
SE042 = playSeVer2( spep_0 + 670, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE042, 82 );

--画面遷移
SE043 = playSeVer2( spep_0 + 698, 8, "", 0, 0, 0, -1);

--裏で爆発が起きる
SE044 = playSeVer2( spep_0 + 704, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE044, 76 );

--オーラ
SE045 = playSeVer2( spep_0 + 704, 1176, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE045, 65 );
SE046 = playSeVer2( spep_0 + 704, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE046, 79 );

--地割れ
SE047 = playSeVer2( spep_0 + 728, 1044, "",spep_0 + 996, 0, 116, -1);
setSeVolumeByWorkId( spep_0 + 728, SE047, 56 );

--オーラ
SE048 = playSeVer2( spep_0 + 728, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 728, SE048, 79 );

--裏で爆発が起きる
SE049 = playSeVer2( spep_0 + 752, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE049, 61 );

--オーラ
SE050 = playSeVer2( spep_0 + 752, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 752, SE050, 79 );
SE051 = playSeVer2( spep_0 + 776, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 776, SE051, 79 );
SE052 = playSeVer2( spep_0 + 800, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 800, SE052, 79 );

--裏で爆発が起きる
SE053 = playSeVer2( spep_0 + 824, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 824, SE053, 64 );

--オーラ
SE054 = playSeVer2( spep_0 + 824, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 824, SE054, 79 );
SE055 = playSeVer2( spep_0 + 848, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 848, SE055, 79 );
SE056 = playSeVer2( spep_0 + 872, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 872, SE056, 79 );
SE057 = playSeVer2( spep_0 + 896, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 896, SE057, 79 );
SE058 = playSeVer2( spep_0 + 920, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 920, SE058, 79 );
SE059 = playSeVer2( spep_0 + 944, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 944, SE059, 79 );
SE060 = playSeVer2( spep_0 + 968, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 968, SE060, 79 );
SE061 = playSeVer2( spep_0 + 992, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 992, SE061, 79 );
SE062 = playSeVer2( spep_0 + 1016, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1016, SE062, 79 );
SE063 = playSeVer2( spep_0 + 1040, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1040, SE063, 79 );
SE064 = playSeVer2( spep_0 + 1064, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1064, SE064, 79 );
SE065 = playSeVer2( spep_0 + 1088, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1088, SE065, 79 );
SE066 = playSeVer2( spep_0 + 1112, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1112, SE066, 79 );
SE067 = playSeVer2( spep_0 + 1136, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1136, SE067, 79 );
SE068 = playSeVer2( spep_0 + 1160, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1160, SE068, 79 );

--構える
SE069 = playSeVer2( spep_0 + 1170, 1233, "", 0, 0, 0, -1);
setPitch( spep_0 + 1170, SE069, -200 );
setTimeStretch( SE069, 0.87, 30, 4 );
SE070 = playSeVer2( spep_0 + 1180, 1006, "", 0, 0, 0, -1);
setPitch( spep_0 + 1180, SE070, -200 );
setTimeStretch( SE070, 0.87, 30, 4 );

--ラスト決め
SE071 = playSeVer2( spep_0 + 1180, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1180, SE071, 126 );
setPitch( spep_0 + 1180, SE071, -400 );
setTimeStretch( SE071, 0.73, 30, 4 );
SE072 = playSeVer2( spep_0 + 1180, 20, "", 0, 0, 0, -1);
setPitch( spep_0 + 1180, SE072, -200 );
setTimeStretch( SE072, 0.87, 30, 4 );

--オーラ
SE073 = playSeVer2( spep_0 + 1184, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1184, SE073, 79 );
SE074 = playSeVer2( spep_0 + 1208, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1208, SE074, 79 );
SE075 = playSeVer2( spep_0 + 1232, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1232, SE075, 79 );
SE076 = playSeVer2( spep_0 + 1256, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1256, SE076, 79 );

------------------------------------------------------
--ボイス
------------------------------------------------------
--いくぞ！ベジータ！！
playVoice( spep_0 + 0, 353 );
setVoiceVolume( spep_0 + 0, 353, 100 );

--クソッタレが…！
playVoice( spep_0 + 96, 356 );
setVoiceVolume( spep_0 + 96, 356, 100 );

--はああっ！
playVoice( spep_0 + 331, 354 );
setVoiceVolume( spep_0 + 331, 354, 100 );

--かああっ！
playVoice( spep_0 + 498, 357 );
setVoiceVolume( spep_0 + 498, 357, 100 );

--これが超サイヤ人ゴッドを超えたパワーだ！
playVoice( spep_0 + 729, 355 );
setVoiceVolume( spep_0 + 729, 355, 100 );

--かかってこい、遊んでやる
playVoice( spep_0 + 1011, 358 );
setVoiceVolume( spep_0 + 1011, 358, 100 );


-- ** ダメージ表示 ** --
endPhase( spep_0 + 1274 );
else end