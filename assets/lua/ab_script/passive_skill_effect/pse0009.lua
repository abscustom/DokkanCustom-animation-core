--1024660:合体ザマス_登場時演出_pse0009
--sp_effect_a9_00094

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
SP_01 = 160099; --二人登場  ef_001
SP_02 = 160100; --ブラック　アップ  ef_002
SP_03 = 160101; --ザマス　アップ   ef_003
SP_04 = 160102; --合体    ef_004
SP_05 = 160103; --引きのカット    ef_005
SP_06 = 160104; --オーラまみれの合体ザマス  ef_006
SP_07 = 160105; --右手のカット    ef_007
SP_08 = 160106; --左手のカット（両手EF捌け込）   ef_008
SP_09 = 160107; --合体ザマスアップ（背中の輪　登場） ef_009
SP_10 = 160108; --降下するザマス〜顔のアップ ef_010

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
------------------------------------------------------
-- 二人登場(36F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --二人登場 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 36, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 36, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 36, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 36, first_f, 255 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 32 );

--ポタラ光る音
SE002 = playSeVer2( spep_0 + 0, 1371, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 67 );
setSeVolumeByWorkId( spep_0 + 352, SE002, 67 );
setSeVolumeByWorkId( spep_0 + 356, SE002, 65 );
setSeVolumeByWorkId( spep_0 + 360, SE002, 63 );
setSeVolumeByWorkId( spep_0 + 364, SE002, 61 );
setSeVolumeByWorkId( spep_0 + 352, SE002, 59 );
setSeVolumeByWorkId( spep_0 + 368, SE002, 57 );
setSeVolumeByWorkId( spep_0 + 372, SE002, 55 );
setSeVolumeByWorkId( spep_0 + 376, SE002, 53 );
setSeVolumeByWorkId( spep_0 + 380, SE002, 51 );
setSeVolumeByWorkId( spep_0 + 384, SE002, 49 );
setSeVolumeByWorkId( spep_0 + 388, SE002, 47 );
setSeVolumeByWorkId( spep_0 + 392, SE002, 45 );
SE003 = playSeVer2( spep_0 + 0, 1221, "", 0, 0, 0, -1); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 36;


------------------------------------------------------
-- ブラック アップ(16F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
blackup = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ブラック　アップ ef_002
setEffMoveKey( spep_1 + 0, blackup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 16, blackup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, blackup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 16, blackup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, blackup, 0 );
setEffRotateKey( spep_1 + 16, blackup, 0 );
setEffAlphaKey( spep_1 + 0, blackup, 255 );
setEffAlphaKey( spep_1 + 16, blackup, 255 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 16;


------------------------------------------------------
-- ザマス アップ(16F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
zamasup = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ザマス　アップ  ef_003
setEffMoveKey( spep_2 + 0, zamasup, 0, 0 , 0 );
setEffMoveKey( spep_2 + 16, zamasup, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, zamasup, 1.0, 1.0 );
setEffScaleKey( spep_2 + 16, zamasup, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zamasup, 0 );
setEffRotateKey( spep_2 + 16, zamasup, 0 );
setEffAlphaKey( spep_2 + 0, zamasup, 255 );
setEffAlphaKey( spep_2 + 16, zamasup, 255 );

-- ** 音 ** --
--二人くっつく
SE005 = playSeVer2( spep_2 + 10, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE005, 73 );
SE006 = playSeVer2( spep_2 + 10, 1312, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 16;


------------------------------------------------------
-- 合体(116F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
potara = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --合体    ef_004
setEffMoveKey( spep_3 + 0, potara, 0, 0 , 0 );
setEffMoveKey( spep_3 + 116, potara, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, potara, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, potara, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, potara, 0 );
setEffRotateKey( spep_3 + 116, potara, 0 );
setEffAlphaKey( spep_3 + 0, potara, 255 );
setEffAlphaKey( spep_3 + 116, potara, 255 );

-- ** 音 ** --
--回転する
SE004 = playSeVer2( spep_3 + 4, 1264, "",spep_3 + 270, 20, 156, -1);
setSeVolumeByWorkId( spep_3 + 4, SE004, 81 );
setStartTimeMs( SE004,  233 );
SE007 = playSeVer2( spep_3 + 10, 1343, "",spep_3 + 270, 0, 156, -1);
setSeVolumeByWorkId( spep_3 + 10, SE007, 78 );
SE008 = playSeVer2( spep_3 + 28, 1158, "",spep_3 + 270, 0, 156, -1);

--光広がる
SE010 = playSeVer2( spep_3 + 112, 1263, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 112, SE010, 60 );
SE011 = playSeVer2( spep_3 + 112, 1303, "",spep_3 + 274, 0, 42, -1);
setSeVolumeByWorkId( spep_3 + 112, SE011, 60 );
SE012 = playSeVer2( spep_3 + 112, 1264, "",spep_3 + 274, 0, 42, -1);
setSeVolumeByWorkId( spep_3 + 112, SE012, 56 );
setPitch( spep_3 + 112, SE012, 300 );
setTimeStretch( SE012, 1.2, 30, 4 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;


------------------------------------------------------
-- 引きのカット(76F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
wfade = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --引きのカット ef_005
setEffMoveKey( spep_4 + 0, wfade, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, wfade, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, wfade, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, wfade, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, wfade, 0 );
setEffRotateKey( spep_4 + 76, wfade, 0 );
setEffAlphaKey( spep_4 + 0, wfade, 255 );
setEffAlphaKey( spep_4 + 76, wfade, 255 );

-- ** 音 ** --
--変身終わりかけ
SE009 = playSeVer2( spep_4 + 38, 1255, "",spep_4 + 174, 30, 60, -1);
setStartTimeMs( SE009,  1367 );

--セリフカットイン
SE014 = playSeVer2( spep_4 + 74, 1018, "", 0, 0, 0, -1);

SE001_02 = playSeVer2( spep_4 + 74, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 74, SE001_02, 32 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;


------------------------------------------------------
-- オーラまみれの合体ザマス(76F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
aura = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --オーラまみれの合体ザマス    ef_006
setEffMoveKey( spep_5 + 0, aura, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, aura, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, aura, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, aura, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, aura, 0 );
setEffRotateKey( spep_5 + 76, aura, 0 );
setEffAlphaKey( spep_5 + 0, aura, 255 );
setEffAlphaKey( spep_5 + 76, aura, 255 );

-- ** 音 ** --
--変身終わりかけ
SE013 = playSeVer2( spep_5 + 2, 1216, "", 0, 42, 0, -1);
setSeVolumeByWorkId( spep_5 + 2, SE013, 49 );
setStartTimeMs( SE013,  467 );

--右手広げる
SE016 = playSeVer2( spep_5 + 68, 1116, "",spep_5 + 106, 0, 16, -1);
setSeVolumeByWorkId( spep_5 + 68, SE016, 75 );
SE017 = playSeVer2( spep_5 + 72, 1373, "", 0, 0, 0, -1);

-- ** ボイス ** --
--我が姿は正義…我が姿は世界…
playVoice( spep_5 + 68, 461 );
setVoiceVolume( spep_5 + 68, 461, 141 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 76;


------------------------------------------------------
-- 右手のカット(176F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
righthand = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --右手のカット ef_007
setEffMoveKey( spep_6 + 0, righthand, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, righthand, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, righthand, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, righthand, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, righthand, 0 );
setEffRotateKey( spep_6 + 176, righthand, 0 );
setEffAlphaKey( spep_6 + 0, righthand, 255 );
setEffAlphaKey( spep_6 + 176, righthand, 255 );

-- ** 音 ** --
--ポタラ光る音
SE015 = playSeVer2( spep_6 + 38, 1371, "", 0, 60, 0, -1);
setSeVolumeByWorkId( spep_6 + 38, SE015, 45 );
setStartTimeMs( SE015,  917 );

--左手広げる
SE018 = playSeVer2( spep_6 + 168, 1116, "",spep_6 + 206, 0, 18, -1);
setSeVolumeByWorkId( spep_6 + 168, SE018, 69 );
SE019 = playSeVer2( spep_6 + 172, 1373, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_7 = spep_6 + 176;


------------------------------------------------------
-- 左手のカット(176F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
lefthand = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --左手のカット（両手EF捌け込） ef_008
setEffMoveKey( spep_7 + 0, lefthand, 0, 0 , 0 );
setEffMoveKey( spep_7 + 176, lefthand, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, lefthand, 1.0, 1.0 );
setEffScaleKey( spep_7 + 176, lefthand, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, lefthand, 0 );
setEffRotateKey( spep_7 + 176, lefthand, 0 );
setEffAlphaKey( spep_7 + 0, lefthand, 255 );
setEffAlphaKey( spep_7 + 176, lefthand, 255 );

-- ** 音 ** --
--右手の光弾ける
SE020 = playSeVer2( spep_7 + 82, 1307, "",spep_7 + 162, 0, 30, -1);
setSeVolumeByWorkId( spep_7 + 82, SE020, 182 );
SE021 = playSeVer2( spep_7 + 82, 1264, "",spep_7 + 162, 0, 30, -1);
setSeVolumeByWorkId( spep_7 + 82, SE021, 80 );
setPitch( spep_7 + 82, SE021, 300 );
setTimeStretch( SE021, 1.2, 30, 4 );
setBandpassFilter  ( spep_7 + 82, SE021, 776, 24000 );

--左手の光弾ける
SE022 = playSeVer2( spep_7 + 124, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 124, SE022, 164 );
SE023 = playSeVer2( spep_7 + 124, 1264, "", spep_7 +176 +186, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 124, SE023, 80 );
setPitch( spep_7 + 124, SE023, 300 );
setTimeStretch( SE023, 1.2, 30, 4 );
setBandpassFilter  ( spep_7 + 124, SE023, 776, 24000 );

--オーラ
SE025 = playSeVer2( spep_7 + 172, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 172, SE025, 34 );
SE026 = playSeVer2( spep_7 + 172, 1181, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_7 + 172, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 172, SE027, 72 );

-- ** ボイス ** --
--崇めよ、讃えよ…この気高くも美しい不死にして最強の神…ザマスを！！
playVoice( spep_7 + 168, 462 );
setVoiceVolume( spep_7 + 168, 462, 141 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 176;


------------------------------------------------------
-- 合体ザマスアップ(176F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
gzamasup = entryEffect( spep_8 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --合体ザマスアップ（背中の輪　登場）   ef_009
setEffMoveKey( spep_8 + 0, gzamasup, 0, 0 , 0 );
setEffMoveKey( spep_8 + 176, gzamasup, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, gzamasup, 1.0, 1.0 );
setEffScaleKey( spep_8 + 176, gzamasup, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, gzamasup, 0 );
setEffRotateKey( spep_8 + 176, gzamasup, 0 );
setEffAlphaKey( spep_8 + 0, gzamasup, 255 );
setEffAlphaKey( spep_8 + 176, gzamasup, 255 );

-- ** 音 ** --
--ポタラ光る音
SE024 = playSeVer2( spep_8 + 40, 1371, "", 0, 60, 0, -1);
setSeVolumeByWorkId( spep_8 + 40, SE024, 45 );
setStartTimeMs( SE024,  900 );

--画面遷移
SE028 = playSeVer2( spep_8 + 110, 1003, "", 0, 0, 0, -1);
setPitch( spep_8 + 110, SE028, -600 );
setTimeStretch( SE028, 0.6, 30, 4 );
SE029 = playSeVer2( spep_8 + 136, 1003, "", 0, 0, 0, -1);
setPitch( spep_8 + 136, SE029, -600 );
setTimeStretch( SE029, 0.6, 30, 4 );

--上から降りてくる
SE030 = playSeVer2( spep_8 + 156, 1072, "", 0, 0, 0, -1);

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 1, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 176;


------------------------------------------------------
-- エフェクト(426F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_9 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --降下するザマス〜顔のアップ ef_010
setEffMoveKey( spep_9 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_9 + 466, finish, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_9 + 466, finish, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, finish, 0 );
setEffRotateKey( spep_9 + 466, finish, 0 );
setEffAlphaKey( spep_9 + 0, finish, 255 );
setEffAlphaKey( spep_9 + 466, finish, 255 );

-- ** 音 ** --
--上から降りてくる
SE031 = playSeVer2( spep_9 + 10, 8, "", 0, 0, 0, -1);

--ポタラ光る音
SE032 = playSeVer2( spep_9 + 218, 1371, "", 0, 60, 0, -1);
setSeVolumeByWorkId( spep_9 + 218, SE032, 45 );
setStartTimeMs( SE032,  900 );

--最後決め
SE033 = playSeVer2( spep_9 + 308, 1062, "", 0, 0, 0, -1);
setPitch( spep_9 + 308, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );
SE034 = playSeVer2( spep_9 + 308, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 308, SE034, 79 );

-- ** 白フェード ** --
entryFade( spep_9 + 0, 0, 1, 14, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

endPhase( spep_9 + 466 );

else end