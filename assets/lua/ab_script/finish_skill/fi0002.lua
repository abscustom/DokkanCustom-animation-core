--4025740:孫悟空&ベジータ_超元気玉(チャージ満タン)
--sp_effect_a2_00202
--fi0002
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
SP_01 = 161417;  --投げるまで  ef_001
SP_02 = 161418;  --着弾　手前 ef_002
SP_04 = 161420;  --敵消滅　手前 ef_004

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
changeAnime( 0, 1, 0);

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
        spep_1 = spep_0 + 544;
        spep_2 = spep_1 + 938;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 430 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie( spep_0 + 430 -12, SP_01, spep_0 + 430 -12+2, 1);
       else
           skipFrame(0, spep_2 + 216);      -- スキップ先フレーム指定
           setupMovie( spep_2 + 216, SP_01, spep_2 + 216+2, 1);

          -- ** 音 ** --
          --元気玉飛んでくる
            SE063 = playSeVer2( spep_2 + 216, 1147, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_2 + 216, SE063, 40 );
            SE064 = playSeVer2( spep_2 + 216, 1226, "",spep_2 + 342, 0, 58, -1);
            setSeVolumeByWorkId( spep_2 + 216, SE064, 71 );
            SE065 = playSeVer2( spep_2 + 216, 1044, "",spep_2 + 364, 0, 28, -1);
            setSeVolumeByWorkId( spep_2 + 216, SE065, 63 );
            SE066 = playSeVer2( spep_2 + 216, 1227, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_2 + 216, SE066, 136 );
            SE068 = playSeVer2( spep_2 + 216, 1044, "",spep_2 + 314, 60, 40, -1);
            setSeVolumeByWorkId( spep_2 + 216, SE068, 178 );
            SE069 = playSeVer2( spep_2 + 216, 1258, "", 0, 66, 0, -1);
            setSeVolumeByWorkId( spep_2 + 216, SE069, 63 );

          --気玉飛んでくる
            SE067 = playSeVer2( spep_2 + 216, 1188, "", 0, 0, 0, -1);

       end
    else
        setupMovie( 0, SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--投げるまで(544f)
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --投げるまで  ef_001
setEffMoveKey( spep_0 + 0, first, 0, 0, 0 );
setEffMoveKey( spep_0 + 544, first, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first, 1.0, 1.0 );
setEffScaleKey( spep_0 + 544, first, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first, 0 );
setEffRotateKey( spep_0 + 544, first, 0 );
setEffAlphaKey( spep_0 + 0, first, 255 );
setEffAlphaKey( spep_0 + 544-1, first, 255 );
setEffAlphaKey( spep_0 + 544-2, first, 255 );
setEffAlphaKey( spep_0 + 544, first, 0 );

-- ** 音 ** --
-- ** SE ** --
--気が集まる
SE001 = playSeVer2( spep_0 + 0, 1185, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 141 );
setPitch( spep_0 + 0, SE001, -100 );
setTimeStretch( SE001, 0.52, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1184, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 56 );

--悟空気づく
SE003 = playSeVer2( spep_0 + 80, 1191, "",spep_0 + 180, 6, 40, -1);
setSeVolumeByWorkId( spep_0 + 80, SE003, 155 );
setStartTimeMs( SE003,  817 );
SE006 = playSeVer2( spep_0 + 80, 1241, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE006, 79 );
SE007 = playSeVer2( spep_0 + 80, 1278, "",spep_0 + 180, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 80, SE007, 80 );

--気ダメ音
SE004 = playSeVer2( spep_0 + 60, 1396, "",spep_0 + 226, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 60, SE004, 52 );
setPitch( spep_0 + 60, SE004, -600 );
setTimeStretch( SE004, 0.6, 30, 4 );
SE005 = playSeVer2( spep_0 + 60, 1176, "",spep_0 + 396, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 60, SE005, 22 );

--風圧音
SE008 = playSeVer2( spep_0 + 214, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE008, 71 );
setPitch( spep_0 + 214, SE008, -600 );
setTimeStretch( SE008, 0.6, 30, 4 );
SE009 = playSeVer2( spep_0 + 214, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE009, 53 );         
SE011 = playSeVer2( spep_0 + 228, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE011, 69 );
setPitch( spep_0 + 228, SE011, -1000 );
setTimeStretch( SE011, 0.33, 30, 4 );

--気ダメ音2
SE010 = playSeVer2( spep_0 + 216, 1396, "",spep_0 + 406, 0, 36, -1);
setPitch( spep_0 + 216, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );

--元気玉投げる
SE012 = playSeVer2( spep_0 + 348, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE012, 68 );
SE013 = playSeVer2( spep_0 + 380, 1193, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE013, 56 );
setStartTimeMs( SE013,  533 );
SE014 = playSeVer2( spep_0 + 348, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE014, 60 );
SE015 = playSeVer2( spep_0 + 348, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 348, SE015, 60 );
SE016 = playSeVer2( spep_0 + 354, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE016, 73 );

--元気玉飛んでくる
SE017 = playSeVer2( spep_0 + 395, 1044, "",spep_0 + 633, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 395, SE017, 72 );
SE018 = playSeVer2( spep_0 + 405, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 405, SE018, 54 );

-- ** ボイス ** --
--「きっ　きた！！！！！」
playVoice( spep_0 + 226, 568 );
setVoiceVolume( spep_0 + 226, 568, 112 );

--「くたばっちまえーっ！！！！」
playVoice( spep_0 + 333, 567 );
setVoiceVolume( spep_0 + 333, 567, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 546, 0, 0, 0, 0, 255);  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 430 ; --エンドフェイズのフレーム数を置き換える
    
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE016, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    setVoiceVolume( SP_dodge - 12, 567, 0 );
    
   
    pauseAll( SP_dodge, 67);   
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
-- ** 音 ** --
-- ** ボイス ** --
--「いっけーっ！！！！」
playVoice( spep_0 + 468, 569 );
setVoiceVolume( spep_0 + 468, 569, 100 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 544+2;

------------------------------------------------------
--着弾(938f)
------------------------------------------------------
-- ** エフェクト等 ** --
hidan_f0 = entryEffectLife( spep_1 + 0-1, SP_02, 2, 0x100, -1, 0, 0, 0 );  --着弾　手前  ef_002
setEffMoveKey( spep_1 + 0-1, hidan_f0, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, hidan_f0, 0, 0, 0 );
setEffScaleKey( spep_1 + 0 - 1, hidan_f0, 1.0, 1.0 );
setEffScaleKey( spep_1 + 0, hidan_f0, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0 - 1, hidan_f0, 0 );
setEffRotateKey( spep_1 + 0, hidan_f0, 0 );
setEffAlphaKey( spep_1 + 0 - 1, hidan_f0, 255 );
setEffAlphaKey( spep_1 + 0, hidan_f0, 0 );

hidan_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --着弾　手前  ef_002
setEffMoveKey( spep_1 + 0, hidan_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 938, hidan_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 938, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hidan_f, 0 );
setEffRotateKey( spep_1 + 938, hidan_f, 0 );
setEffAlphaKey( spep_1 + 0, hidan_f, 255 );
setEffAlphaKey( spep_1 + 6, hidan_f, 255 );
setEffAlphaKey( spep_1 + 7, hidan_f, 0 );
setEffAlphaKey( spep_1 + 8, hidan_f, 0 );
setEffAlphaKey( spep_1 + 9, hidan_f, 255 );
setEffAlphaKey( spep_1 + 938-2, hidan_f, 255 );
setEffAlphaKey( spep_1 + 938-1, hidan_f, 255 );
setEffAlphaKey( spep_1 + 938, hidan_f, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0-1, 1, 1 );
setDisp( spep_1 + 8-1, 1, 0 );
changeAnime( spep_1 + 0-1, 1, 4 );

setMoveKey( spep_1 + 0-1, 1, 10.1, -116.1 , 0 );
setMoveKey( spep_1 + 8-1, 1, 10.1, -116.1 , 0 );

setScaleKey( spep_1 + 0-1, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 8-1, 1, 0.37, 0.37 );

setRotateKey( spep_1 + 0-1, 1, -11.3 );
setRotateKey( spep_1 + 8-1, 1, -11.3 );

setBlendColor( spep_1 + 0-1, 1, 3, 0.0, 0.6, 1.0, 0.4);
setBlendColor( spep_1 + 8-1, 1, 3, 0.0, 0.6, 1.0, 0.4);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 940, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
-- ** SE ** --
--地面激突
SE019 = playSeVer2( spep_1 + 18, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 18, SE019, 81 );
SE020 = playSeVer2( spep_1 + 18, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 18, SE020, 72 );
SE021 = playSeVer2( spep_1 + 18, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 18, SE021, 63 );
SE022 = playSeVer2( spep_1 + 22, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 22, SE022, 89 );

--風圧音
SE023 = playSeVer2( spep_1 + 30, 1258, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_1 + 30, SE023, 76 );
SE024 = playSeVer2( spep_1 + 64, 1259, "", 0, 0, 0, -1);
setPitch( spep_1 + 64, SE024, -600 );
setTimeStretch( SE024, 0.6, 30, 4 );

--風音
SE025 = playSeVer2( spep_1 + 122, 1314, "",spep_1 + 428, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 122, SE025, 42 );

--元気玉音
SE026 = playSeVer2( spep_1 + 124, 1396, "",spep_1 + 923, 0, 21, -1);
setSeVolumeByWorkId( spep_1 + 124, SE026, 63 );
setPitch( spep_1 + 124, SE026, -600 );
setTimeStretch( SE026, 0.6, 30, 4 );

--カットイン
SE027 = playSeVer2( spep_1 + 146, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 146, SE027, 73 );
setPitch( spep_1 + 146, SE027, 200 );
setTimeStretch( SE027, 1.13, 30, 4 );

--ポルンガ目光る
SE028 = playSeVer2( spep_1 + 176, 1185, "", 0, 5, 0, -1);
setStartTimeMs( SE028,  1667 );
setPitch( spep_1 + 176, SE028, -1200 );
setTimeStretch( SE028, 0.5, 30, 4 );
SE030 = playSeVer2( spep_1 + 176, 1354, "", 0, 0, 0, -1);

--気づき音
SE029 = playSeVer2( spep_1 + 175, 48, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 175, SE029, 64 );

--風力音
SE031 = playSeVer2( spep_1 + 215, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 215, SE031, 75 );
setPitch( spep_1 + 215, SE031, -400 );
setTimeStretch( SE031, 0.92, 30, 4 );

--気ダメ
SE032 = playSeVer2( spep_1 + 386, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 386, SE032, 126 );
SE033 = playSeVer2( spep_1 + 386, 1298, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 386, SE033, 71 );

--風音2
SE034 = playSeVer2( spep_1 + 391, 1314, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 391, SE034, 22 );

--オーラ
SE035 = playSeVer2( spep_1 + 410, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 410, SE035, 63 );
SE036 = playSeVer2( spep_1 + 434, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 434, SE036, 63 );
SE038 = playSeVer2( spep_1 + 458, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 458, SE038, 50 );
SE039 = playSeVer2( spep_1 + 482, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 482, SE039, 50 );
SE040 = playSeVer2( spep_1 + 506, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 506, SE040, 50 );
SE041 = playSeVer2( spep_1 + 530, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 530, SE041, 50 );
SE042 = playSeVer2( spep_1 + 554, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 554, SE042, 50 );
SE043 = playSeVer2( spep_1 + 578, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 578, SE043, 50 );
SE044 = playSeVer2( spep_1 + 602, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 602, SE044, 50 );
SE045 = playSeVer2( spep_1 + 626, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 626, SE045, 50 );
SE046 = playSeVer2( spep_1 + 650, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 650, SE046, 50 );
SE047 = playSeVer2( spep_1 + 674, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 674, SE047, 50 );
SE048 = playSeVer2( spep_1 + 698, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 698, SE048, 50 );
SE050 = playSeVer2( spep_1 + 722, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 722, SE050, 50 );
SE051 = playSeVer2( spep_1 + 746, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 746, SE051, 50 );
SE052 = playSeVer2( spep_1 + 770, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 770, SE052, 50 );
SE053 = playSeVer2( spep_1 + 794, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 794, SE053, 50 );
SE054 = playSeVer2( spep_1 + 818, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 818, SE054, 50 );
SE057 = playSeVer2( spep_1 + 842, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 842, SE057, 50 );
SE058 = playSeVer2( spep_1 + 866, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 866, SE058, 50 );

--セリフカットイン
SE037 = playSeVer2( spep_1 + 448, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 448, SE037, 56 );

--手構える
SE049 = playSeVer2( spep_1 + 706, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 706, SE049, 71 );
setBandpassFilter( spep_1 + 706, SE049, 24, 930 );

--光差す
SE055 = playSeVer2( spep_1 + 832, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 832, SE055, 141 );
SE056 = playSeVer2( spep_1 + 832, 1263, "",spep_1 + 958, 0, 52, -1);

--爆発
SE059 = playSeVer2( spep_1 + 882, 1069, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_1 + 901, 1159, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_1 + 911, 1067, "", 0, 0, 0, -1);

--敵飲まれる
SE062 = playSeVer2( spep_1 + 948, 1128, "", 0, 10, 0, -1);
setSeVolumeByWorkId( spep_1 + 948, SE062, 58 );
setStartTimeMs( SE062,  583 );
setPitch( spep_1 + 646, SE062, -1200 );
setTimeStretch( SE062, 0.5, 30, 4 );

-- ** ボイス ** --
--「サンキュー！！　ドラゴンボール！！！」
playVoice( spep_1 + 220, 570 );
setVoiceVolume( spep_1 + 220, 570, 112 );

--「おめえはすげえよ　よくがんばった…」
playVoice( spep_1 + 453, 571 );
setVoiceVolume( spep_1 + 453, 571, 112 );

--「またな！」
playVoice( spep_1 + 739, 572 );
setVoiceVolume( spep_1 + 739, 572, 112 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 938+2;

------------------------------------------------------
--敵消滅(318f)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f0 = entryEffect( spep_2 + 0 - 1, SP_04, 2, 0x100, -1, 0, 0, 0 );  --敵消滅　手前  ef_004
setEffMoveKey( spep_2 + 0 - 1, finish_f0, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_f0, 0, 0, 0 );
setEffScaleKey( spep_2 + 0 - 1, finish_f0, 1.0, 1.0 );
setEffScaleKey( spep_2 + 0, finish_f0, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0 - 1, finish_f0, 0 );
setEffRotateKey( spep_2 + 0, finish_f0, 0 );
setEffAlphaKey( spep_2 + 0 - 1, finish_f0, 255 );
setEffAlphaKey( spep_2 + 0, finish_f0, 0 );

finish_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --敵消滅　手前  ef_004
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 330, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 330, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 330, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 330, finish_f, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 1, 1, 1 );
setDisp( spep_2 + 66, 1, 0 );
changeAnime( spep_2 + 1, 1, 6 );

setMoveKey( spep_2 + 1, 1, 50, -56 , 0 );
setMoveKey( spep_2 + 2, 1, 47.1, -56.2 , 0 );
setMoveKey( spep_2 + 4, 1, 44.3, -56.4 , 0 );
setMoveKey( spep_2 + 6, 1, 41.5, -56.6 , 0 );
setMoveKey( spep_2 + 8, 1, 38.6, -56.8 , 0 );
setMoveKey( spep_2 + 10, 1, 35.8, -56.9 , 0 );
setMoveKey( spep_2 + 12, 1, 32.9, -57.1 , 0 );
setMoveKey( spep_2 + 14, 1, 30.1, -57.3 , 0 );
setMoveKey( spep_2 + 16, 1, 27.2, -57.5 , 0 );
setMoveKey( spep_2 + 18, 1, 24.4, -57.7 , 0 );
setMoveKey( spep_2 + 20, 1, 21.5, -57.8 , 0 );
setMoveKey( spep_2 + 22, 1, 18.7, -58 , 0 );
setMoveKey( spep_2 + 24, 1, 15.8, -58.2 , 0 );
setMoveKey( spep_2 + 26, 1, 13, -58.4 , 0 );
setMoveKey( spep_2 + 28, 1, 10.1, -58.6 , 0 );
setMoveKey( spep_2 + 30, 1, 7.3, -58.7 , 0 );
setMoveKey( spep_2 + 32, 1, 4.4, -58.9 , 0 );
setMoveKey( spep_2 + 34, 1, 1.6, -59.1 , 0 );
setMoveKey( spep_2 + 36, 1, -1.3, -59.3 , 0 );
setMoveKey( spep_2 + 38, 1, -4.1, -59.5 , 0 );
setMoveKey( spep_2 + 40, 1, -7, -59.7 , 0 );
setMoveKey( spep_2 + 42, 1, -9.8, -59.8 , 0 );
setMoveKey( spep_2 + 44, 1, -12.7, -60 , 0 );
setMoveKey( spep_2 + 46, 1, -15.5, -60.2 , 0 );
setMoveKey( spep_2 + 48, 1, -18.4, -60.4 , 0 );
setMoveKey( spep_2 + 50, 1, -21.2, -60.6 , 0 );
setMoveKey( spep_2 + 52, 1, -24.1, -60.7 , 0 );
setMoveKey( spep_2 + 54, 1, -26.9, -60.9 , 0 );
setMoveKey( spep_2 + 56, 1, -29.8, -61.1 , 0 );
setMoveKey( spep_2 + 58, 1, -32.6, -61.3 , 0 );
setMoveKey( spep_2 + 60, 1, -35.5, -61.5 , 0 );
setMoveKey( spep_2 + 62, 1, -38.3, -61.6 , 0 );
setMoveKey( spep_2 + 64, 1, -41.1, -61.8 , 0 );
setMoveKey( spep_2 + 66, 1, -44, -62 , 0 );

setScaleKey( spep_2 + 1, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 2, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 4, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 6, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 10, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 12, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 14, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 16, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 20, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 22, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 24, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 26, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 30, 1, 2.72, 2.72 );
setScaleKey( spep_2 + 32, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 34, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 36, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 40, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 42, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 46, 1, 2.69, 2.69 );
setScaleKey( spep_2 + 48, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 50, 1, 2.68, 2.68 );
setScaleKey( spep_2 + 52, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 56, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 58, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 60, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 62, 1, 2.65, 2.65 );
setScaleKey( spep_2 + 66, 1, 2.65, 2.65 );

setRotateKey( spep_2 + 1, 1, 29.6 );
setRotateKey( spep_2 + 66, 1, 29.6 );

setBlendColor( spep_2 + 1, 1, 3, 0.0, 0.2, 0.6, 0.45);
setBlendColor( spep_2 + 66, 1, 3, 0.0, 0.2, 0.6, 0.45);
setBlendColor( spep_2 + 68, 1, 3, 0.0, 0.0, 0.0, 0.0);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 330, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
-- ** SE ** --
--元気玉飛んでくる
SE063 = playSeVer2( spep_2 + 82, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE063, 40 );
SE064 = playSeVer2( spep_2 + 82, 1226, "",spep_2 + 342, 0, 58, -1);
setSeVolumeByWorkId( spep_2 + 82, SE064, 71 );
SE065 = playSeVer2( spep_2 + 82, 1044, "",spep_2 + 364, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 82, SE065, 63 );
SE066 = playSeVer2( spep_2 + 82, 1227, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE066, 136 );
SE068 = playSeVer2( spep_2 + 132, 1044, "",spep_2 + 314, 60, 40, -1);
setSeVolumeByWorkId( spep_2 + 132, SE068, 178 );
SE069 = playSeVer2( spep_2 + 142, 1258, "", 0, 66, 0, -1);
setSeVolumeByWorkId( spep_2 + 142, SE069, 83 );

--気玉飛んでくる
SE067 = playSeVer2( spep_2 + 122, 1188, "", 0, 0, 0, -1);

--爆発
SE070 = playSeVer2( spep_2 + 274, 1023, "", 0, 0, 0, -1);
SE071 = playSeVer2( spep_2 + 282, 1024, "", 0, 0, 0, -1);
SE072 = playSeVer2( spep_2 + 288, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 216 );
--entryFade( spep_0 +2102, 2,  8, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 318 );
end