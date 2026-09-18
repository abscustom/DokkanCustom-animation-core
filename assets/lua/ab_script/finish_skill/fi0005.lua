--4026400:魔人ベジータ_魔人ブウ復活！！(チャージ成功)
--sp_effect_a2_00207

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
SP_01 = 161563;  --前面表示用   ef_001
SP_02 = 161564;  --背面表示用   ef_002

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

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 890 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1198);      -- スキップ先フレーム指定

          -- ** 音 ** --
            --爆発
            --SE034 = playSeVer2( spep_0 + 1198, 1159, "", 0, 0, 0, -1);
            --SE035 = playSeVer2( spep_0 + 1202, 1024, "", 0, 0, 0, -1);


       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--魔人ブウ復活(1338f)
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --前面表示用   ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 1338, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1338, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 1338, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 1338, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --背面表示用   ef_002
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 1338, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1338, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 1338, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 1338, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 808, 1, 1 );
setDisp( spep_0 -1 + 878, 1, 0 );
changeAnime( spep_0 -1 + 808, 1, 100 );

setMoveKey( spep_0 -1 + 808, 1, -4.7, -260.1 , 0 );
setMoveKey( spep_0 -1 + 824, 1, -4.7, -260.1 , 0 );
setMoveKey( spep_0 -1 + 825, 1, -4.7, -260.1 , 0 );
setMoveKey( spep_0 -1 + 826, 1, -12.6, -246.9 , 0 );
setMoveKey( spep_0 -1 + 827, 1, -12.6, -246.9 , 0 );
setMoveKey( spep_0 -1 + 828, 1, 3.3, -270.7 , 0 );
setMoveKey( spep_0 -1 + 829, 1, 3.3, -270.7 , 0 );
setMoveKey( spep_0 -1 + 830, 1, -2, -254.8 , 0 );
setMoveKey( spep_0 -1 + 831, 1, -2, -254.8 , 0 );
setMoveKey( spep_0 -1 + 832, 1, -7.3, -262.8 , 0 );
setMoveKey( spep_0 -1 + 833, 1, -7.3, -262.8 , 0 );
setMoveKey( spep_0 -1 + 834, 1, -12.6, -246.9 , 0 );
setMoveKey( spep_0 -1 + 835, 1, -12.6, -246.9 , 0 );
setMoveKey( spep_0 -1 + 836, 1, 3.3, -270.7 , 0 );
setMoveKey( spep_0 -1 + 837, 1, 3.3, -270.7 , 0 );
setMoveKey( spep_0 -1 + 838, 1, -2, -254.8 , 0 );
setMoveKey( spep_0 -1 + 839, 1, -2, -254.8 , 0 );
setMoveKey( spep_0 -1 + 840, 1, -7.3, -262.8 , 0 );
setMoveKey( spep_0 -1 + 841, 1, -7.3, -262.8 , 0 );
setMoveKey( spep_0 -1 + 842, 1, -4.7, -260.1 , 0 );
setMoveKey( spep_0 -1 + 878, 1, -4.7, -260.1 , 0 );

setScaleKey( spep_0 -1 + 808, 1, 0.35, 0.35 );
setScaleKey( spep_0 -1 + 878, 1, 0.35, 0.35 );

setRotateKey( spep_0 -1 + 808, 1, 0 );
setRotateKey( spep_0 -1 + 878, 1, 0 );

-- ** 音 ** --
-- ** SE ** --
--メーター貯まる
SE001 = playSeVer2( spep_0 + 0, 1186, "",spep_0 + 198, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 69 );
SE002 = playSeVer2( spep_0 + 0, 1239, "",spep_0 + 192, 0, 64, -1);
setPitch( spep_0 + 0, SE002, 100 );
setTimeStretch( SE002, 1.07, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1295, "",spep_0 + 198, 0, 58, -1);
SE006 = playSeVer2( spep_0 + 112, 1186, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 69 );
SE007 = playSeVer2( spep_0 + 128, 1239, "",spep_0 + 268, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 128, SE007, 80 );
setPitch( spep_0 + 128, SE007, 100 );
setTimeStretch( SE007, 1.07, 30, 4 );
SE008 = playSeVer2( spep_0 + 128, 1295, "",spep_0 + 326, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 70 );
SE009 = playSeVer2( spep_0 + 230, 1186, "",spep_0 + 268, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 230, SE009, 60 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 48, 1018, "", 0, 0, 0, -1);

--集中線
SE005 = playSeVer2( spep_0 + 70, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE005, 40 );

--蒸気でる
SE010 = playSeVer2( spep_0 + 266, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE010, 200 );
SE011 = playSeVer2( spep_0 + 266, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 266, SE011, 65 );
setBandpassFilter  ( spep_0 + 266, SE011, 800, 24000 );
SE012 = playSeVer2( spep_0 + 266, 1226, "",spep_0 + 682, 0, 182, -1);
setSeVolumeByWorkId( spep_0 + 266, SE012, 60 );
SE013 = playSeVer2( spep_0 + 350, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE013, 150 );
SE014 = playSeVer2( spep_0 + 448, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE014, 158 );

--ピンクの蒸気でる
SE015 = playSeVer2( spep_0 + 472, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 472, SE015, 75 );
SE016 = playSeVer2( spep_0 + 472, 1214, "",spep_0 + 640, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 472, SE016, 117 );

--雲できる
SE017 = playSeVer2( spep_0 + 562, 1398, "",spep_0 + 740, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 562, SE017, 186 );

--ブウ登場
SE018 = playSeVer2( spep_0 + 704, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE018, 68 );
SE019 = playSeVer2( spep_0 + 704, 31, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE019, 75 );
SE020 = playSeVer2( spep_0 + 704, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE020, 54 );
setPitch( spep_0 + 704, SE020, -800 );
setTimeStretch( SE020, 0.47, 30, 4 );

--着地
SE021 = playSeVer2( spep_0 + 796, 63, "",spep_0 + 836, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 796, SE021, 78 );
SE022 = playSeVer2( spep_0 + 818, 1395, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 818, 1011, "", 0, 0, 0, -1);

--ブウ笑う
SE024 = playSeVer2( spep_0 + 858, 1275, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 870, 8, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「フルパワーになったぁーー！！！！」
playVoice( spep_0 + 58, 604 );
setVoiceVolume( spep_0 + 58, 604, 100);
--「で…出る…！！　魔人ブウが出るよ…！！！！」
playVoice( spep_0 + 237, 605 );
setVoiceVolume( spep_0 + 237, 605, 116 );

--「ブウーーッ！！」
playVoice( spep_0 + 700, 606 );
setVoiceVolume( spep_0 + 700, 606, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1338 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 890 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 1092, 1, 1 );
setDisp( spep_0 -1 + 1114, 1, 0 );
changeAnime( spep_0 -1 + 1092, 1, 104 );
changeAnime( spep_0 -1 + 1100, 1, 108 );

setBlendColor( spep_0 -1 + 1096, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_0 -1 + 1099, 1, 3, 0, 0, 0, 0.65 );
setBlendColor( spep_0 -1 + 1100, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -1 + 1103, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_0 -1 + 1104, 1, 3, 1, 1, 1, 1.0 );
setBlendColor( spep_0 -1 + 1107, 1, 3, 1, 1, 1, 1.0 );
setBlendColor( spep_0 -1 + 1108, 1, 3, 1, 1, 1, 0 );

setMoveKey( spep_0 -1 + 1092, 1, 86.1, 17.9 , 0 );
setMoveKey( spep_0 -1 + 1095, 1, 86.1, 17.9 , 0 );
setMoveKey( spep_0 -1 + 1096, 1, 129.4, 17.9 , 0 );
setMoveKey( spep_0 -1 + 1099, 1, 129.4, 17.9 , 0 );--
setMoveKey( spep_0 -1 + 1100, 1, 164.5, 17.9 , 0 );
setMoveKey( spep_0 -1 + 1103, 1, 164.5, 17.9 , 0 );
setMoveKey( spep_0 -1 + 1104, 1, 232.6, 17.9 , 0 );
setMoveKey( spep_0 -1 + 1107, 1, 232.6, 17.9 , 0 );
setMoveKey( spep_0 -1 + 1108, 1, 364.7, 17.9 , 0 );
setMoveKey( spep_0 -1 + 1114, 1, 364.7, 17.9 , 0 );

setScaleKey( spep_0 -1 + 1092, 1, 1, 1 );
setScaleKey( spep_0 -1 + 1099, 1, 1, 1 );--
setScaleKey( spep_0 -1 + 1100, 1, 1, 1 );
setScaleKey( spep_0 -1 + 1114, 1, 1, 1 );

setRotateKey( spep_0 -1 + 1092, 1, 0 );
setRotateKey( spep_0 -1 + 1099, 1, 0 );--
setRotateKey( spep_0 -1 + 1100, 1, 0 );
setRotateKey( spep_0 -1 + 1114, 1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -1 + 1130, 1, 1 );
setDisp( spep_0 -1 + 1172, 1, 0 );
changeAnime( spep_0 -1 + 1130, 1, 108 );

setMoveKey( spep_0 -1 + 1130, 1, -212.5, 192.2 , 0 );
setMoveKey( spep_0 -1 + 1132, 1, -205.3, 177.2 , 0 );
setMoveKey( spep_0 -1 + 1134, 1, -198.1, 162.2 , 0 );
setMoveKey( spep_0 -1 + 1136, 1, -190.8, 147.2 , 0 );
setMoveKey( spep_0 -1 + 1138, 1, -183.6, 132.3 , 0 );
setMoveKey( spep_0 -1 + 1140, 1, -176.4, 117.3 , 0 );
setMoveKey( spep_0 -1 + 1142, 1, -169.2, 102.3 , 0 );
setMoveKey( spep_0 -1 + 1144, 1, -161.9, 87.3 , 0 );
setMoveKey( spep_0 -1 + 1146, 1, -154.7, 72.4 , 0 );
setMoveKey( spep_0 -1 + 1148, 1, -147.5, 57.4 , 0 );
setMoveKey( spep_0 -1 + 1150, 1, -140.3, 42.4 , 0 );
setMoveKey( spep_0 -1 + 1152, 1, -110.6, 8.8 , 0 );
setMoveKey( spep_0 -1 + 1154, 1, -80.9, -24.9 , 0 );
setMoveKey( spep_0 -1 + 1156, 1, -51.3, -58.5 , 0 );
setMoveKey( spep_0 -1 + 1158, 1, -21.6, -92.2 , 0 );
setMoveKey( spep_0 -1 + 1160, 1, 8.1, -125.8 , 0 );
setMoveKey( spep_0 -1 + 1162, 1, 22.2, -161.5 , 0 );
setMoveKey( spep_0 -1 + 1164, 1, 36.3, -197.2 , 0 );
setMoveKey( spep_0 -1 + 1166, 1, 50.5, -232.9 , 0 );
setMoveKey( spep_0 -1 + 1168, 1, 64.6, -268.7 , 0 );
setMoveKey( spep_0 -1 + 1170, 1, 78.7, -304.4 , 0 );
setMoveKey( spep_0 -1 + 1172, 1, 78.7, -304.4 , 0 );

setScaleKey( spep_0 -1 + 1130, 1, 2.33, 2.33 );
setScaleKey( spep_0 -1 + 1132, 1, 2.25, 2.25 );
setScaleKey( spep_0 -1 + 1134, 1, 2.16, 2.16 );
setScaleKey( spep_0 -1 + 1136, 1, 2.08, 2.08 );
setScaleKey( spep_0 -1 + 1138, 1, 1.99, 1.99 );
setScaleKey( spep_0 -1 + 1140, 1, 1.91, 1.91 );
setScaleKey( spep_0 -1 + 1142, 1, 1.82, 1.82 );
setScaleKey( spep_0 -1 + 1144, 1, 1.73, 1.73 );
setScaleKey( spep_0 -1 + 1146, 1, 1.65, 1.65 );
setScaleKey( spep_0 -1 + 1148, 1, 1.56, 1.56 );
setScaleKey( spep_0 -1 + 1150, 1, 1.48, 1.48 );
setScaleKey( spep_0 -1 + 1152, 1, 1.39, 1.39 );
setScaleKey( spep_0 -1 + 1154, 1, 1.3, 1.3 );
setScaleKey( spep_0 -1 + 1156, 1, 1.22, 1.22 );
setScaleKey( spep_0 -1 + 1158, 1, 1.13, 1.13 );
setScaleKey( spep_0 -1 + 1160, 1, 1.05, 1.05 );
setScaleKey( spep_0 -1 + 1162, 1, 0.96, 0.96 );
setScaleKey( spep_0 -1 + 1164, 1, 0.88, 0.88 );
setScaleKey( spep_0 -1 + 1166, 1, 0.79, 0.79 );
setScaleKey( spep_0 -1 + 1168, 1, 0.7, 0.7 );
setScaleKey( spep_0 -1 + 1170, 1, 0.62, 0.62 );
setScaleKey( spep_0 -1 + 1172, 1, 0.62, 0.62 );

setRotateKey( spep_0 -1 + 1130, 1, 42.4 );
setRotateKey( spep_0 -1 + 1172, 1, 42.4 );


-- ** 音 ** --
-- ** SE ** --
--腕前に出す
SE026 = playSeVer2( spep_0 + 984, 1003, "", 0, 0, 0, -1);

--気弾発射
SE027 = playSeVer2( spep_0 + 1004, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1004, SE027, 73 );
SE028 = playSeVer2( spep_0 + 1006, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE028, 81 );
SE029 = playSeVer2( spep_0 + 1006, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE029, 76 );

--気弾飛んでいく
SE030 = playSeVer2( spep_0 + 1096, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE030, 71 );
SE031 = playSeVer2( spep_0 + 1096, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 1118, 1128, "",spep_0 + 1226, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 1118, SE032, 73 );
SE033 = playSeVer2( spep_0 + 1132, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1132, SE033, 224 );

--爆発
SE034 = playSeVer2( spep_0 + 1204, 1159, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 1208, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 1210, 1067, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「ジャマだよ、きえちゃえ！」
playVoice( spep_0 + 906, 607 );
setVoiceVolume( spep_0 + 906, 607, 100 );


-- ** ダメージ表示 ** --
dealDamage( spep_0 + 1218 );
endPhase( spep_0 + 1328 );

end