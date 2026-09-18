--1025560:LR_アルティメット孫悟飯_魔貫光殺砲(アクティブ)
--sp_effect_a3_00099
--ut0045

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
SP_01 = 161283	--前半	ef_001
SP_02 = 161284	--ギャルルル　手前	ef_002
SP_02b = 161285	--ギャルルル　奥	ef_003
SP_03 = 161286	--後半　手前	ef_004
SP_03b = 161287	--後半　奥	ef_005

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 1322;
        spep_2 = spep_1 + 46;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 20 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_2 + 79);      -- スキップ先フレーム指定
               
           --気弾宇宙に抜けていく
           SE073 = playSeVer2( spep_2 + 79, 1296, "",spep_2 + 173, 0, 59, -1);
           setPitch( spep_2 + 79, SE073, 300 );
           setTimeStretch( SE073, 1.2, 30, 4 );
           SE074 = playSeVer2( spep_2 + 79, 1109, "", 0, 0, 0, -1);
           SE075 = playSeVer2( spep_2 + 79, 1184, "",spep_2 + 181, 0, 62, -1);
           SE076 = playSeVer2( spep_2 + 79, 1269, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_2 + 79, SE076, 25 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 前半 ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1322, base_0, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1322, base_0, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_0, 0 );
setEffRotateKey( spep_0 + 1322, base_0, 0 );
setEffAlphaKey( spep_0 + 0, base_0, 255 );
setEffAlphaKey( spep_0 + 1322 -2, base_0, 255 );
setEffAlphaKey( spep_0 + 1322 -1, base_0, 255 );
setEffAlphaKey( spep_0 + 1322, base_0, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1322 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSeVer2( spep_0 + 6, 1232, "", 0, 0, 0, -1);

--覚醒
SE004 = playSeVer2( spep_0 + 69, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 69, SE004, 122 );
SE005 = playSeVer2( spep_0 + 69, 1267, "",spep_0 + 192, 0, 72, -1);
setPitch( spep_0 + 69, SE005, 1000 );
setTimeStretch( SE005, 1.67, 30, 4 );
SE006 = playSeVer2( spep_0 + 69, 1264, "",spep_0 + 198, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 69, SE006, 40 );
SE003 = playSeVer2( spep_0 + 69, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 69, SE003, 120 );
setPitch( spep_0 + 69, SE003, -1100 );
setTimeStretch( SE003, 0.27, 30, 4 );

--気ダメ
SE007 = playSeVer2( spep_0 + 138, 1371, "",spep_0 + 354, 22, 39, -1);
setStartTimeMs( SE007,  983 );

--画面遷移
SE008 = playSeVer2( spep_0 + 112, 1072, "", 0, 0, 0, -1);

--気ダメ
SE009 = playSeVer2( spep_0 + 132, 1265, "",spep_0 + 354, 19, 39, -1);
setSeVolumeByWorkId( spep_0 + 132, SE009, 120 );
setStartTimeMs( SE009, 250 );
setPitch( spep_0 + 132, SE009, 500 );
setTimeStretch( SE009, 1.33, 30, 4 );
SE010 = playSeVer2( spep_0 + 137, 1356, "",spep_0 + 354, 26, 39, -1);
setStartTimeMs( SE010,  167 );

--画面遷移
SE011 = playSeVer2( spep_0 + 141, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 141, SE011, -300 );
setTimeStretch( SE011, 0.8, 30, 4 );

--イナヅマ
SE012 = playSeVer2( spep_0 + 278, 1056, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE012, 79 );
SE013 = playSeVer2( spep_0 + 278, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE013, 77 );

--気を爆発させる
SE014 = playSeVer2( spep_0 + 300, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE014, 68 );
SE015 = playSeVer2( spep_0 + 309, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 309, SE015, 81 );
SE016 = playSeVer2( spep_0 + 309, 1278, "",spep_0 + 516, 0, 97, -1);
setSeVolumeByWorkId( spep_0 + 309, SE016, 67 );

--気を爆発させる２
SE017 = playSeVer2( spep_0 + 352, 1213, "",spep_0 + 517, 0, 81, -1);
setSeVolumeByWorkId( spep_0 + 352, SE017, 61 );
SE018 = playSeVer2( spep_0 + 352, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE018, 200 );

--オーラ
SE019 = playSeVer2( spep_0 + 419, 1176, "",spep_0 + 958, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 419, SE019, 59 );
setPitch( spep_0 + 419, SE019, -400 );
setTimeStretch( SE019, 0.73, 30, 4 );

--イナヅマ
SE020 = playSeVer2( spep_0 + 419, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 419, SE020, 58 );
setPitch( spep_0 + 419, SE020, -700 );
setTimeStretch( SE020, 0.53, 30, 4 );
setBandpassFilter( spep_0 + 419, SE020, 24, 1000 );

--オーラ
SE021 = playSeVer2( spep_0 + 419, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 419, SE021, 40 );
SE022 = playSeVer2( spep_0 + 443, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 443, SE022, 40 );
SE023 = playSeVer2( spep_0 + 467, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 467, SE023, 40 );
SE024 = playSeVer2( spep_0 + 491, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 491, SE024, 40 );

--イナヅマ
SE025 = playSeVer2( spep_0 + 494, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE025, 60 );
setPitch( spep_0 + 494, SE025, -600 );
setTimeStretch( SE025, 0.6, 30, 4 );
setBandpassFilter( spep_0 + 494, SE025, 24, 1000 );

--オーラ
SE026 = playSeVer2( spep_0 + 515, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 515, SE026, 40 );

--目をあける
SE027 = playSeVer2( spep_0 + 515, 1373, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 525, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 525, SE028, 68 );
SE029 = playSeVer2( spep_0 + 525, 1061, "", 0, 26, 0, -1);
setSeVolumeByWorkId( spep_0 + 525, SE029, 158 );
setPitch( spep_0 + 525, SE029, -400 );
setTimeStretch( SE029, 0.73, 30, 4 );
setStartTimeMs( SE029,  70 );

--オーラ
SE030 = playSeVer2( spep_0 + 539, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 539, SE030, 40 );

--セリフカットイン
SE031 = playSeVer2( spep_0 + 556, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 556, SE031, 56 );

--オーラ
SE032 = playSeVer2( spep_0 + 563, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 563, SE032, 40 );

--イナヅマ
SE033 = playSeVer2( spep_0 + 580, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE033, 58 );
setPitch( spep_0 + 580, SE033, -700 );
setTimeStretch( SE033, 0.53, 30, 4 );
setBandpassFilter( spep_0 + 580, SE033, 24, 1000 );

--オーラ
SE019_2 = playSeVer2( spep_0 + 580, 1176, "",spep_0 + 958, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 580, SE019_2, 59 );
setPitch( spep_0 + 580, SE019_2, -400 );
setTimeStretch( SE019_2, 0.73, 30, 4 );

--オーラ
SE034 = playSeVer2( spep_0 + 587, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 587, SE034, 40 );
SE035 = playSeVer2( spep_0 + 611, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 611, SE035, 40 );
SE036 = playSeVer2( spep_0 + 635, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 635, SE036, 40 );

--イナヅマ
SE037 = playSeVer2( spep_0 + 652, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 652, SE037, 56 );
setPitch( spep_0 + 652, SE037, -600 );
setTimeStretch( SE037, 0.6, 30, 4 );
setBandpassFilter( spep_0 + 652, SE037, 24, 1000 );

--オーラ
SE038 = playSeVer2( spep_0 + 659, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 659, SE038, 40 );

--気が集まる
SE039 = playSeVer2( spep_0 + 790, 1266, "",spep_0 + 968, 26, 29, -1);
setStartTimeMs( SE039,  2183 );

--オーラ
SE040 = playSeVer2( spep_0 + 683, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 683, SE040, 40 );
SE041 = playSeVer2( spep_0 + 707, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 707, SE041, 40 );
SE041_2 = playSeVer2( spep_0 + 731, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 731, SE041_2, 40 );

--雷落ちる
SE042 = playSeVer2( spep_0 + 736, 1226, "",spep_0 + 1282, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 736, SE042, 32 );
SE043 = playSeVer2( spep_0 + 778, 1011, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 778, 1252, "", 0, 0, 0, -1);

--気が集まる
SE045 = playSeVer2( spep_0 + 786, 1216, "",spep_0 + 964, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 786, SE045, 110 );
setTimeStretch( SE045, 2, 30, 4 );
SE046 = playSeVer2( spep_0 + 786, 1215, "",spep_0 + 1017, 0, 77, -1);
setSeVolumeByWorkId( spep_0 + 786, SE046, 68 );

--魔貫光殺砲溜め
SE042_2 = playSeVer2( spep_0 + 920, 1226, "",spep_0 + 1282, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 920, SE042_2, 32 );
SE048 = playSeVer2( spep_0 + 911, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 911, SE048, 141 );
SE054_2 = playSeVer2( spep_0 + 920, 1393, "",spep_0 + 1249, 0, 54, -1);
setSeVolumeByWorkId( spep_0 + 920, SE054_2, 100 );
SE050 = playSeVer2( spep_0 + 948, 1043, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 948, SE050, 77 );
SE051 = playSeVer2( spep_0 + 1036, 1200, "",spep_0 + 1173, 27, 27, -1);
setSeVolumeByWorkId( spep_0 + 1036, SE051, 211 );
setStartTimeMs( SE051,  1150 );
SE052 = playSeVer2( spep_0 + 967, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 967, SE052, 68 );
SE053 = playSeVer2( spep_0 + 978, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 978, SE053, 54 );
SE055 = playSeVer2( spep_0 + 1031, 1038, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1031, SE055, 59 );
SE056 = playSeVer2( spep_0 + 1096, 1038, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 884, 1176, "",spep_0 + 1284, 66, 22, -1);
setSeVolumeByWorkId( spep_0 + 884, SE047, 69 );

--指突き出す
SE057 = playSeVer2( spep_0 + 1181, 1296, "",spep_0 + 1276, 26, 53, -1);
setSeVolumeByWorkId( spep_0 + 1181, SE057, 100 );
setPitch( spep_0 + 1181, SE057, 500 );
setTimeStretch( SE057, 1.33, 30, 4 );
SE058 = playSeVer2( spep_0 + 1182, 1360, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1182, SE058, 110 );

--魔貫光殺砲発射
SE059 = playSeVer2( spep_0 + 1258, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1258, SE059, 137 );
setPitch( spep_0 + 1258, SE059, 200 );
setTimeStretch( SE059, 1.13, 30, 4 );
SE060 = playSeVer2( spep_0 + 1258, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1258, SE060, 92 );
setPitch( spep_0 + 1258, SE060, 200 );
setTimeStretch( SE060, 1.13, 30, 4 );
SE062 = playSeVer2( spep_0 + 1258, 1306, "", 0, 0, 0, -1);
setPitch( spep_0 + 1258, SE062, -200 );
setTimeStretch( SE062, 0.87, 30, 4 );
SE063 = playSeVer2( spep_0 + 1258, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1258, SE063, 93 );
SE064 = playSeVer2( spep_0 + 1258, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1258, SE064, 98 );
SE061 = playSeVer2( spep_0 + 1258, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1258, SE061, 72 );


--ボイス
-- 「くうう…うわああー！！」
playVoice( spep_0 + 187, 551 );
setVoiceVolume( spep_0 + 187, 551, 100 );

-- 「今度は、ボクの番だ」
playVoice( spep_0 + 547, 552 );
setVoiceVolume( spep_0 + 547, 552, 126 );

-- 「魔貫光殺砲ー！！」
playVoice( spep_0 + 1045, 553 );
setVoiceVolume( spep_0 + 1045, 553, 112 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 1322;

------------------------------------------------------
-- ギャルルル
------------------------------------------------------
-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 手前	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + 46, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + 46, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + 46, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + 46 -2, base_1f, 255);
setEffAlphaKey( spep_1 + 46 -1, base_1f, 255);
setEffAlphaKey( spep_1 + 46, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 奥 ef_003
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + 46, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + 46, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + 46, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + 46 -2, base_1b, 255);
setEffAlphaKey( spep_1 + 46 -1, base_1b, 255);
setEffAlphaKey( spep_1 + 46, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 46 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 0 );

setMoveKey( spep_1 + 0, 1, -120.1, 37 , 0 );
setMoveKey( spep_1 + 2, 1, -126.1, 26.1 , 0 );
setMoveKey( spep_1 + 4, 1, -130.2, 55.2 , 0 );
setMoveKey( spep_1 + 6, 1, -126.7, 77.3 , 0 );
setMoveKey( spep_1 + 8, 1, -134.2, 82.9 , 0 );
setMoveKey( spep_1 + 10, 1, -139.7, 69.5 , 0 );
setMoveKey( spep_1 + 12, 1, -147.3, 67.6 , 0 );
setMoveKey( spep_1 + 14, 1, -160.3, 72.6 , 0 );
setMoveKey( spep_1 + 16, 1, -152.3, 66.7 , 0 );
setMoveKey( spep_1 + 18, 1, -158.4, 69.3 , 0 );

setScaleKey( spep_1 + 0, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 2, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 4, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 6, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 8, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 10, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 12, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 14, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 16, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 18, 1, 0.2, 0.2 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--気弾飛んでいく
SE065 = playSeVer2( spep_1 + 0, 1213, "",spep_1 + 139, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 0, SE065, 60 );
SE066 = playSeVer2( spep_1 + 0, 1122, "",spep_1 + 80, 0, 23, -1);
setSeVolumeByWorkId( spep_1 + 0, SE066, 56 );
SE067 = playSeVer2( spep_1 + 0, 1211, "",spep_1 + 144, 0, 15, -1);
setSeVolumeByWorkId( spep_1 + 0, SE067, 226 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE060, 0);
stopSe( SP_dodge - 12, SE061, 0);
stopSe( SP_dodge - 12, SE062, 0);
stopSe( SP_dodge - 12, SE063, 0);
stopSe( SP_dodge - 12, SE064, 0);
stopSe( SP_dodge - 12, SE065, 0);
stopSe( SP_dodge - 12, SE066, 0);
stopSe( SP_dodge - 12, SE067, 0);
pauseAll( SP_dodge, 67);

setMoveKey( SP_dodge + 0, 1, -160.4, 67.9 , 0 );
setMoveKey( SP_dodge + 2, 1, -161.5, 70 , 0 );
setMoveKey( SP_dodge + 4, 1, -159.5, 83.1 , 0 );
setMoveKey( SP_dodge + 6, 1, -156.5, 93.2 , 0 );
setMoveKey( SP_dodge + 8, 1, -154.6, 88.8 , 0 );
setMoveKey( SP_dodge + 10, 1, -156.6, 82.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 0.22, 0.22 );
setScaleKey( SP_dodge + 2, 1, 0.24, 0.24 );
setScaleKey( SP_dodge + 4, 1, 0.27, 0.27 );
setScaleKey( SP_dodge + 6, 1, 0.31, 0.31 );
setScaleKey( SP_dodge + 8, 1, 0.35, 0.35 );
setScaleKey( SP_dodge + 10, 1, 0.4, 0.4 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 敵キャラクター ** --
setDisp( spep_1 + 45, 1, 0 );

setMoveKey( spep_1 + 20, 1, -160.4, 67.9 , 0 );
setMoveKey( spep_1 + 22, 1, -161.5, 70 , 0 );
setMoveKey( spep_1 + 24, 1, -159.5, 83.1 , 0 );
setMoveKey( spep_1 + 26, 1, -156.5, 93.2 , 0 );
setMoveKey( spep_1 + 28, 1, -154.6, 88.8 , 0 );
setMoveKey( spep_1 + 30, 1, -156.6, 82.9 , 0 );
setMoveKey( spep_1 + 32, 1, -157.7, 83.5 , 0 );
setMoveKey( spep_1 + 34, 1, -159.7, 88.5 , 0 );
setMoveKey( spep_1 + 36, 1, -156.8, 103.6 , 0 );
setMoveKey( spep_1 + 38, 1, -153.9, 93.7 , 0 );
setMoveKey( spep_1 + 40, 1, -136.1, 88.8 , 0 );
setMoveKey( spep_1 + 42, 1, -135.8, 88.6 , 0 );
setMoveKey( spep_1 + 44, 1, -135.6, 88.5 , 0 );
setMoveKey( spep_1 + 45, 1, -135.3, 88.4 , 0 );
-- setMoveKey( spep_1 + 48, 1, -135, 88.3 , 0 );
-- setMoveKey( spep_1 + 50, 1, -134.7, 88.2 , 0 );
-- setMoveKey( spep_1 + 52, 1, -134.5, 88.1 , 0 );
-- setMoveKey( spep_1 + 54, 1, -134.2, 88 , 0 );
-- setMoveKey( spep_1 + 56, 1, -133.9, 87.8 , 0 );
-- setMoveKey( spep_1 + 58, 1, -133.7, 87.7 , 0 );
-- setMoveKey( spep_1 + 60, 1, -133.4, 87.6 , 0 );
-- setMoveKey( spep_1 + 62, 1, -133.1, 87.5 , 0 );
-- setMoveKey( spep_1 + 64, 1, -132.8, 87.4 , 0 );
-- setMoveKey( spep_1 + 66, 1, -132.6, 87.3 , 0 );
-- setMoveKey( spep_1 + 68, 1, -132.3, 87.1 , 0 );
-- setMoveKey( spep_1 + 70, 1, -132, 87 , 0 );
-- setMoveKey( spep_1 + 72, 1, -131.8, 86.9 , 0 );
-- setMoveKey( spep_1 + 74, 1, -131.5, 86.8 , 0 );
-- setMoveKey( spep_1 + 76, 1, -131.2, 86.7 , 0 );
-- setMoveKey( spep_1 + 78, 1, -131, 86.6 , 0 );
-- setMoveKey( spep_1 + 80, 1, -130.7, 86.5 , 0 );
-- setMoveKey( spep_1 + 82, 1, -130.4, 86.3 , 0 );
-- setMoveKey( spep_1 + 84, 1, -130.1, 86.2 , 0 );
-- setMoveKey( spep_1 + 86, 1, -129.9, 86.1 , 0 );

setScaleKey( spep_1 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 22, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 24, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 26, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 28, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 30, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 32, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 34, 1, 0.55, 0.55 );
setScaleKey( spep_1 + 36, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 38, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 40, 1, 1.31, 1.31 );
setScaleKey( spep_1 + 45, 1, 1.31, 1.31 );

setRotateKey( spep_1 + 45, 1, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 46;

-------------------------------------------------
-- 後半
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0 -1, SP_03, 0x100, -1, 0, 0, 0); -- 手前	ef_004
setEffMoveKey( spep_2 + 0 -1, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 444, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0 -1, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 444, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0 -1, base_2f, 0);
setEffRotateKey( spep_2 + 444, base_2f, 0);
setEffAlphaKey( spep_2 + 0 -1, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 444, base_2f, 255);

base_2b = entryEffect( spep_2 + 0 -1, SP_03b, 0x80, -1, 0, 0, 0); -- 後半　奥	ef_005
setEffMoveKey( spep_2 + 0 -1, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 444, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0 -1, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 444, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0 -1, base_2b, 0);
setEffRotateKey( spep_2 + 444, base_2b, 0);
setEffAlphaKey( spep_2 + 0 -1, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 444, base_2b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 444 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 72, 1, 0 );

changeAnime( spep_2 + 0, 1, 8 );

setMoveKey( spep_2 + 0, 1, 29, -21.1 , 0 );
setMoveKey( spep_2 + 1, 1, 29, -21.1 , 0 );
setMoveKey( spep_2 + 2, 1, 24, -11 , 0 );
setMoveKey( spep_2 + 3, 1, 24, -11 , 0 );
setMoveKey( spep_2 + 4, 1, 17, -2 , 0 );
setMoveKey( spep_2 + 5, 1, 17, -2 , 0 );
setMoveKey( spep_2 + 6, 1, 49, 1 , 0 );
setMoveKey( spep_2 + 7, 1, 49, 1 , 0 );
setMoveKey( spep_2 + 8, 1, 11, -3 , 0 );
setMoveKey( spep_2 + 9, 1, 11, -3 , 0 );
setMoveKey( spep_2 + 10, 1, 4, 1 , 0 );
setMoveKey( spep_2 + 11, 1, 4, 1 , 0 );
setMoveKey( spep_2 + 12, 1, 28, 3 , 0 );
setMoveKey( spep_2 + 13, 1, 28, 3 , 0 );
setMoveKey( spep_2 + 14, 1, 4, -26 , 0 );
setMoveKey( spep_2 + 15, 1, 4, -26 , 0 );
setMoveKey( spep_2 + 16, 1, -13, 2 , 0 );
setMoveKey( spep_2 + 17, 1, -13, 2 , 0 );
setMoveKey( spep_2 + 18, 1, -36, 14 , 0 );
setMoveKey( spep_2 + 19, 1, -36, 14 , 0 );
setMoveKey( spep_2 + 20, 1, -31.6, 19.5 , 0 );
setMoveKey( spep_2 + 21, 1, -31.6, 19.5 , 0 );
setMoveKey( spep_2 + 22, 1, -28.2, 20.9 , 0 );
setMoveKey( spep_2 + 23, 1, -28.2, 20.9 , 0 );
setMoveKey( spep_2 + 24, 1, -37.8, 20.4 , 0 );
setMoveKey( spep_2 + 25, 1, -37.8, 20.4 , 0 );
setMoveKey( spep_2 + 26, 1, -38.3, 21.8 , 0 );
setMoveKey( spep_2 + 27, 1, -38.3, 21.8 , 0 );
setMoveKey( spep_2 + 28, 1, -37.8, 21.2 , 0 );
setMoveKey( spep_2 + 30, 1, -37.4, 21.6 , 0 );
setMoveKey( spep_2 + 32, 1, -38.4, 22 , 0 );
setMoveKey( spep_2 + 34, 1, -41.3, 23.4 , 0 );
setMoveKey( spep_2 + 36, 1, -41.3, 23.3 , 0 );
setMoveKey( spep_2 + 38, 1, -40.7, 24.1 , 0 );
setMoveKey( spep_2 + 40, 1, -41.7, 24.5 , 0 );
setMoveKey( spep_2 + 42, 1, -42.1, 24.8 , 0 );
setMoveKey( spep_2 + 44, 1, -42.5, 25.1 , 0 );
setMoveKey( spep_2 + 46, 1, -42.9, 25.4 , 0 );
setMoveKey( spep_2 + 48, 1, -43.3, 25.7 , 0 );
setMoveKey( spep_2 + 50, 1, -43.6, 26 , 0 );
setMoveKey( spep_2 + 52, 1, -44, 26.3 , 0 );
setMoveKey( spep_2 + 54, 1, -44.3, 26.5 , 0 );
setMoveKey( spep_2 + 56, 1, -44.6, 26.8 , 0 );
setMoveKey( spep_2 + 58, 1, -44.9, 27 , 0 );
setMoveKey( spep_2 + 60, 1, -45.2, 27.2 , 0 );
setMoveKey( spep_2 + 62, 1, -45.4, 27.5 , 0 );
setMoveKey( spep_2 + 64, 1, -45.7, 27.6 , 0 );
setMoveKey( spep_2 + 66, 1, -45.9, 27.8 , 0 );
setMoveKey( spep_2 + 68, 1, -46.1, 28 , 0 );
setMoveKey( spep_2 + 72, 1, -46.1, 28 , 0 );

setScaleKey( spep_2 + 0, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 72, 1, 1.49, 1.49 );

setRotateKey( spep_2 + 0, 1, 24 );
setRotateKey( spep_2 + 72, 1, 24 );

-- ** 音 ** --
--敵ヒット
SE068 = playSeVer2( spep_2 + 0, 1011, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_2 + 0, 1023, "", 0, 0, 0, -1);
SE070 = playSeVer2( spep_2 + 0, 1176, "",spep_2 + 104, 0, 25, -1);
setSeVolumeByWorkId( spep_2 + 0, SE070, 85 );
SE071 = playSeVer2( spep_2 + 0, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE071, 65 );

--気弾宇宙に抜けていく
SE072 = playSeVer2( spep_2 + 57, 1278, "",spep_2 + 261, 0, 133, -1);
SE073 = playSeVer2( spep_2 + 79, 1296, "",spep_2 + 173, 0, 59, -1);
setPitch( spep_2 + 79, SE073, 300 );
setTimeStretch( SE073, 1.2, 30, 4 );
SE074 = playSeVer2( spep_2 + 79, 1109, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 79, 1184, "",spep_2 + 181, 0, 62, -1);
SE076 = playSeVer2( spep_2 + 79, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 79, SE076, 25 );

--終わり
hideKoScreen();
dealDamage( spep_2 + 94 );
endPhase( spep_2 + 208 -8);

else end
