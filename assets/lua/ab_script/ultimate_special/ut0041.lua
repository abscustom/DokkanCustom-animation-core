--1024550:パン(GT)_とっておきのかめはめ波_ut0041
--sp_effect_a1_00366

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
SP_01 = 160195;  --パンが空に登場～パンと悟空4がパンに笑いかけてフィニッシュ   ef_001
SP_02 = 160196;  --パンが空に登場～パンと悟空4がパンに笑いかけてフィニッシュ   ef_001_b

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
--[[
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
]]
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 440 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1306);      -- スキップ先フレーム指定

          --環境音
          SE040 = playSeVer2( spep_0 + 1306, 1269, "", 0, 0, 0, -1);
          setSeVolumeByWorkId( spep_0 + 1306, SE040, 25 );

          --パン飛んでくる
          SE039 = playSeVer2( spep_0 + 1306, 1207, "",spep_0 + 1358, 16, 12, -1);
          setStartTimeMs( SE039,  200 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アクティブスキル
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 1582, finish_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1582, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_f, 0 );
setEffRotateKey( spep_0 + 1582, finish_f, 0 );
setEffAlphaKey( spep_0 + 0, finish_f, 255 );
setEffAlphaKey( spep_0 + 1582, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 1582, finish_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1582, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, finish_b, 0 );
setEffRotateKey( spep_0 + 1582, finish_b, 0 );
setEffAlphaKey( spep_0 + 0, finish_b, 255 );
setEffAlphaKey( spep_0 + 1582, finish_b, 255 );

--敵の動き_1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 30, 1, 0 );
changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 297, -591.7 , 0 );
setMoveKey( spep_0 + 1, 1, 330.1, -639.9 , 0 );
setMoveKey( spep_0 + 2, 1, 363.3, -688.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 396.4, -736.3 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 396.4, -736.3 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 429.6, -784.5 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 429.6, -784.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 462.7, -832.7 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 495.9, -880.9 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 529, -929.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 562.2, -977.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 595.3, -1025.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 628.5, -1073.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 661.6, -1122 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 694.8, -1170.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 727.9, -1218.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 729.2, -1219.7 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 730.5, -1221 , 0 );
--setMoveKey( spep_0 -3 + 32, 1, 731.7, -1222.2 , 0 );
--setMoveKey( spep_0 -3 + 34, 1, 733, -1223.5 , 0 );
--setMoveKey( spep_0 -3 + 36, 1, 734.2, -1224.7 , 0 );
--setMoveKey( spep_0 -3 + 38, 1, 735.5, -1226 , 0 );
--setMoveKey( spep_0 -3 + 40, 1, 736.8, -1227.3 , 0 );
--setMoveKey( spep_0 -3 + 42, 1, 738, -1228.5 , 0 );
--setMoveKey( spep_0 -3 + 44, 1, 739.3, -1229.8 , 0 );
--setMoveKey( spep_0 -3 + 46, 1, 740.5, -1231 , 0 );
--setMoveKey( spep_0 -3 + 48, 1, 741.8, -1232.3 , 0 );
--setMoveKey( spep_0 -3 + 50, 1, 743.1, -1233.6 , 0 );
--setMoveKey( spep_0 -3 + 52, 1, 744.3, -1234.9 , 0 );
--setMoveKey( spep_0 -3 + 54, 1, 745.6, -1236.1 , 0 );
--setMoveKey( spep_0 -3 + 56, 1, 746.8, -1237.4 , 0 );
--setMoveKey( spep_0 -3 + 58, 1, 748.1, -1238.7 , 0 );
--setMoveKey( spep_0 -3 + 60, 1, 749.3, -1239.9 , 0 );
--setMoveKey( spep_0 -3 + 62, 1, 750.6, -1241.2 , 0 );
--setMoveKey( spep_0 -3 + 64, 1, 751.9, -1242.5 , 0 );
--setMoveKey( spep_0 -3 + 66, 1, 753.1, -1243.7 , 0 );
--setMoveKey( spep_0 -3 + 68, 1, 754.4, -1245 , 0 );
--setMoveKey( spep_0 -3 + 70, 1, 755.7, -1246.2 , 0 );
--setMoveKey( spep_0 -3 + 72, 1, 757, -1247.5 , 0 );
--setMoveKey( spep_0 -3 + 74, 1, 758.2, -1248.7 , 0 );
--setMoveKey( spep_0 -3 + 76, 1, 759.5, -1250 , 0 );
--setMoveKey( spep_0 -3 + 78, 1, 760.7, -1251.3 , 0 );
--setMoveKey( spep_0 -3 + 80, 1, 760.7, -1251.3 , 0 );

setScaleKey( spep_0 + 0, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 1, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 2, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 3, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 4, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 5, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 6, 1, 6.11, 6.11 );
setScaleKey( spep_0 -3 + 30, 1, 6.11, 6.11 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 30, 1, 0 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 -3 + 30, 1, 255 );


--敵の動き_2
setDisp( spep_0 -3 + 430, 1, 1 );
changeAnime( spep_0 -3 + 430, 1, 104 );

y1 = 50;
setMoveKey( spep_0 -3 + 430, 1, -6.1, -817.2 +y1 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -5.6, -781.2 +y1 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -5.2, -745.3 +y1 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -4.8, -709.4 +y1 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -4.4, -673.5 +y1 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -4, -637.5 +y1 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -3.6, -601.6 +y1 , 0 );

setScaleKey( spep_0 -3 + 430, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 442, 1, 0.7, 0.7 );

setRotateKey( spep_0 -3 + 430, 1, 0 );

setAlphaKey( spep_0 -3 + 430, 1, 255 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 320, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );

--入り
SE002 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 80 );
setTimeStretch( SE002, 0.78, 30, 4 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 72, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE003, 63 );

--かめはめ波溜め
SE004 = playSeVer2( spep_0 + 280, 1210, "",spep_0 + 378, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 280, SE004, 80 );
setStartTimeMs( SE004,  967 );

--パン構える
SE005 = playSeVer2( spep_0 + 232, 1003, "", 0, 0, 0, -1);

--かめはめ波溜め
SE006 = playSeVer2( spep_0 + 278, 1209, "",spep_0 + 384, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 278, SE006, 56 );

--気弾大きくなる
SE007 = playSeVer2( spep_0 + 300, 1224, "",spep_0 + 326, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 300, SE007, 72 );
SE008 = playSeVer2( spep_0 + 306, 1225, "",spep_0 + 378, 0, 14, -1);

--かめはめ波発射
SE009 = playSeVer2( spep_0 + 362, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE009, 80 );
setPitch( spep_0 + 362, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_0 + 362, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE010, 73 );
SE011 = playSeVer2( spep_0 + 362, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 362, SE011, 83 );

--気弾飛んでいく
SE012 = playSeVer2( spep_0 + 396, 1121, "",spep_0 + 468, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 396, SE012, 68 );
SE013 = playSeVer2( spep_0 + 416, 1021, "", 0, 0, 0, -1);

--ボイス
--わたしのとっておき、　見せてあげる！
playVoice( spep_0 + 70, 469 );
setVoiceVolume( spep_0 + 70, 469, 100 );

--かめはめ…　波ー！！
playVoice( spep_0 + 268, 470 );
setVoiceVolume( spep_0 + 268, 470, 119 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 440 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);

    setVoiceVolume(SP_dodge - 12, 470, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -3.1, -565.7 +y1 , 0 );
    setMoveKey( SP_dodge + 2, 1, -2.7, -529.7 +y1 , 0 );
    setMoveKey( SP_dodge + 4, 1, -2.3, -493.8 +y1 , 0 );
    setMoveKey( SP_dodge + 6, 1, -1.9, -457.9 +y1 , 0 );
    setMoveKey( SP_dodge + 8, 1, -1.5, -422 +y1 , 0 );
    setMoveKey( SP_dodge + 10, 1, -1.1, -386 +y1 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.71, 0.71 );
    setScaleKey( SP_dodge + 10, 1, 0.71, 0.71 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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


--敵の動き_2
setDisp( spep_0 -3 + 472, 1, 0 );


setMoveKey( spep_0 -3 + 444, 1, -3.1, -565.7 +y1 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -2.7, -529.7 +y1 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -2.3, -493.8 +y1 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -1.9, -457.9 +y1 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -1.5, -422 +y1 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -1.1, -386 +y1 , 0 );
setMoveKey( spep_0 -3 + 456, 1, -0.7, -350.1 +y1 , 0 );
setMoveKey( spep_0 -3 + 458, 1, -0.3, -314.1 +y1 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 0.1, -278.2 +y1 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 0.6, -242.3 +y1 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 1, -206.4 +y1 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 1.4, -170.5 +y1 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 1.8, -134.6 +y1 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 2.6, -148.5 +y1 , 0 );
setMoveKey( spep_0 -3 + 472, 1, 1.8, -135.4 +y1 , 0 );
--setMoveKey( spep_0 -3 + 474, 1, 2.8, -149.3 , 0 );
--setMoveKey( spep_0 -3 + 476, 1, 2, -123.6 , 0 );
--setMoveKey( spep_0 -3 + 478, 1, 2.8, -143.7 , 0 );
--setMoveKey( spep_0 -3 + 480, 1, 2, -124.1 , 0 );
--setMoveKey( spep_0 -3 + 482, 1, 2.9, -148.9 , 0 );
--setMoveKey( spep_0 -3 + 484, 1, 1.9, -135.2 , 0 );
--setMoveKey( spep_0 -3 + 486, 1, 2.7, -149.1 , 0 );
--setMoveKey( spep_0 -3 + 488, 1, 2, -136.1 , 0 );
--setMoveKey( spep_0 -3 + 490, 1, 2.9, -149.9 , 0 );
--setMoveKey( spep_0 -3 + 492, 1, 2.2, -124.2 , 0 );
--setMoveKey( spep_0 -3 + 494, 1, 2.9, -144.3 , 0 );
--setMoveKey( spep_0 -3 + 496, 1, 2.1, -124.7 , 0 );
--setMoveKey( spep_0 -3 + 498, 1, 3, -149.5 , 0 );
--setMoveKey( spep_0 -3 + 500, 1, 2.1, -135.8 , 0 );
--setMoveKey( spep_0 -3 + 502, 1, 2.8, -149.6 , 0 );
--setMoveKey( spep_0 -3 + 504, 1, 2.1, -136.6 , 0 );
--setMoveKey( spep_0 -3 + 506, 1, 3, -150.5 , 0 );
--setMoveKey( spep_0 -3 + 508, 1, 2.3, -124.8 , 0 );
--setMoveKey( spep_0 -3 + 510, 1, 3.1, -144.9 , 0 );
--setMoveKey( spep_0 -3 + 512, 1, 2.2, -125.3 , 0 );
--setMoveKey( spep_0 -3 + 514, 1, 3.1, -150.1 , 0 );
--setMoveKey( spep_0 -3 + 516, 1, 2.2, -136.4 , 0 );
--setMoveKey( spep_0 -3 + 518, 1, 3, -150.3 , 0 );
--setMoveKey( spep_0 -3 + 520, 1, 2.2, -137.2 , 0 );
--setMoveKey( spep_0 -3 + 522, 1, 3.2, -151.1 , 0 );
--setMoveKey( spep_0 -3 + 524, 1, 2.4, -125.4 , 0 );
--setMoveKey( spep_0 -3 + 526, 1, 3.2, -145.5 , 0 );
--setMoveKey( spep_0 -3 + 528, 1, 2.4, -125.9 , 0 );
--setMoveKey( spep_0 -3 + 530, 1, 3.3, -150.7 , 0 );
--setMoveKey( spep_0 -3 + 532, 1, 2.3, -137 , 0 );
--setMoveKey( spep_0 -3 + 534, 1, 3.1, -150.9 , 0 );
--setMoveKey( spep_0 -3 + 536, 1, 2.4, -137.9 , 0 );
--setMoveKey( spep_0 -3 + 538, 1, 3.3, -151.7 , 0 );
--setMoveKey( spep_0 -3 + 540, 1, 2.6, -126.1 , 0 );
--setMoveKey( spep_0 -3 + 542, 1, 3.3, -146.1 , 0 );
--setMoveKey( spep_0 -3 + 544, 1, 2.5, -126.5 , 0 );
--setMoveKey( spep_0 -3 + 546, 1, 3.4, -151.3 , 0 );
--setMoveKey( spep_0 -3 + 548, 1, 2.5, -137.6 , 0 );
--setMoveKey( spep_0 -3 + 550, 1, 3.2, -151.5 , 0 );
--setMoveKey( spep_0 -3 + 552, 1, 2.5, -138.5 , 0 );
--setMoveKey( spep_0 -3 + 554, 1, 3.4, -152.3 , 0 );
--setMoveKey( spep_0 -3 + 556, 1, 2.7, -126.7 , 0 );
--setMoveKey( spep_0 -3 + 558, 1, 3.5, -146.7 , 0 );

setScaleKey( spep_0 -3 + 444, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 472, 1, 0.71, 0.71 );--
--setScaleKey( spep_0 -3 + 476, 1, 0.71, 0.71 );
--setScaleKey( spep_0 -3 + 478, 1, 0.72, 0.72 );
--setScaleKey( spep_0 -3 + 510, 1, 0.72, 0.72 );
--setScaleKey( spep_0 -3 + 512, 1, 0.73, 0.73 );
--setScaleKey( spep_0 -3 + 544, 1, 0.73, 0.73 );
--setScaleKey( spep_0 -3 + 546, 1, 0.74, 0.74 );

setRotateKey( spep_0 -3 + 472, 1, 0 );

setAlphaKey( spep_0 -3 + 472, 1, 255 );

--敵の動き_3
setDisp( spep_0 -3 + 1254, 1, 1 );
setDisp( spep_0 -3 + 1306, 1, 0 );
changeAnime( spep_0 -3 + 1254, 1, 105 );

setMoveKey( spep_0 -3 + 1254, 1, 3.7, -78.7 , 0 );
setMoveKey( spep_0 -3 + 1256, 1, 3.6, -50.3 , 0 );
setMoveKey( spep_0 -3 + 1258, 1, 3.5, -70.4 , 0 );
setMoveKey( spep_0 -3 + 1260, 1, 14.5, -43.9 , 0 );
setMoveKey( spep_0 -3 + 1262, 1, -7.8, -36.1 , 0 );
setMoveKey( spep_0 -3 + 1264, 1, 8.5, -37.2 , 0 );
setMoveKey( spep_0 -3 + 1266, 1, -2.2, -16.8 , 0 );
setMoveKey( spep_0 -3 + 1268, 1, 3, -19.9 , 0 );
setMoveKey( spep_0 -3 + 1270, 1, 3, 1 , 0 );
setMoveKey( spep_0 -3 + 1272, 1, 2.9, -24.9 , 0 );
setMoveKey( spep_0 -3 + 1274, 1, 14, -3 , 0 );
setMoveKey( spep_0 -3 + 1276, 1, -8.3, 0.9 , 0 );
setMoveKey( spep_0 -3 + 1278, 1, 8.1, -3.5 , 0 );
setMoveKey( spep_0 -3 + 1280, 1, -2.5, 14 , 0 );
setMoveKey( spep_0 -3 + 1282, 1, 1.3, 13.2 , 0 );
setMoveKey( spep_0 -3 + 1284, 1, 5.7, 9.1 , 0 );----------
setMoveKey( spep_0 -3 + 1286, 1, -1.8, 14.3 , 0 );
setMoveKey( spep_0 -3 + 1288, 1, 6.6, 16.7 , 0 );
setMoveKey( spep_0 -3 + 1290, 1, 2.2, 14.5 , 0 );
setMoveKey( spep_0 -3 + 1292, 1, 2.5, 23.1 , 0 );
setMoveKey( spep_0 -3 + 1294, 1, 5.2, 24.5 , 0 );
setMoveKey( spep_0 -3 + 1296, 1, 5.6, 20.9 , 0 );
setMoveKey( spep_0 -3 + 1298, 1, -1.9, 23.5 , 0 );
setMoveKey( spep_0 -3 + 1300, 1, 6.6, 23.5 , 0 );
setMoveKey( spep_0 -3 + 1302, 1, 2.1, 19.3 , 0 );
setMoveKey( spep_0 -3 + 1304, 1, 2.5, 26 , 0 );
setMoveKey( spep_0 -3 + 1306, 1, 5.2, 25.8 , 0 );

setScaleKey( spep_0 -3 + 1254, 1, 4.14, 3.4 );
setScaleKey( spep_0 -3 + 1256, 1, 3.69, 3.05 );
setScaleKey( spep_0 -3 + 1258, 1, 3.3, 2.73 );
setScaleKey( spep_0 -3 + 1260, 1, 2.96, 2.45 );
setScaleKey( spep_0 -3 + 1262, 1, 2.65, 2.19 );
setScaleKey( spep_0 -3 + 1264, 1, 2.37, 1.96 );
setScaleKey( spep_0 -3 + 1266, 1, 2.12, 1.75 );
setScaleKey( spep_0 -3 + 1268, 1, 1.89, 1.55 );
setScaleKey( spep_0 -3 + 1270, 1, 1.68, 1.38 );
setScaleKey( spep_0 -3 + 1272, 1, 1.48, 1.21 );
setScaleKey( spep_0 -3 + 1274, 1, 1.31, 1.07 );
setScaleKey( spep_0 -3 + 1276, 1, 1.15, 0.93 );
setScaleKey( spep_0 -3 + 1278, 1, 1, 0.81 );
setScaleKey( spep_0 -3 + 1280, 1, 0.86, 0.69 );
setScaleKey( spep_0 -3 + 1282, 1, 0.74, 0.59 );
setScaleKey( spep_0 -3 + 1284, 1, 0.62, 0.5 );
setScaleKey( spep_0 -3 + 1286, 1, 0.52, 0.41 );
setScaleKey( spep_0 -3 + 1288, 1, 0.42, 0.34 );
setScaleKey( spep_0 -3 + 1290, 1, 0.34, 0.27 );
setScaleKey( spep_0 -3 + 1292, 1, 0.27, 0.21 );
setScaleKey( spep_0 -3 + 1294, 1, 0.21, 0.17 );
setScaleKey( spep_0 -3 + 1296, 1, 0.16, 0.13 );
setScaleKey( spep_0 -3 + 1306, 1, 0.16, 0.13 );

setRotateKey( spep_0 -3 + 1254, 1, 0 );
setRotateKey( spep_0 -3 + 1306, 1, 0 );

setAlphaKey( spep_0 -3 + 1254, 1, 255 );
setAlphaKey( spep_0 -3 + 1256, 1, 239 );
setAlphaKey( spep_0 -3 + 1258, 1, 223 );
setAlphaKey( spep_0 -3 + 1260, 1, 207 );
setAlphaKey( spep_0 -3 + 1262, 1, 191 );
setAlphaKey( spep_0 -3 + 1264, 1, 175 );
setAlphaKey( spep_0 -3 + 1266, 1, 159 );
setAlphaKey( spep_0 -3 + 1268, 1, 143 );
setAlphaKey( spep_0 -3 + 1270, 1, 127 );
setAlphaKey( spep_0 -3 + 1272, 1, 111 );
setAlphaKey( spep_0 -3 + 1274, 1, 95 );
setAlphaKey( spep_0 -3 + 1276, 1, 79 );
setAlphaKey( spep_0 -3 + 1278, 1, 63 );
setAlphaKey( spep_0 -3 + 1280, 1, 47 );
setAlphaKey( spep_0 -3 + 1282, 1, 31 );
setAlphaKey( spep_0 -3 + 1284, 1, 15 );
setAlphaKey( spep_0 -3 + 1286, 1, 0 );
setAlphaKey( spep_0 -3 + 1306, 1, 0 );


--SE
--爆発
SE014 = playSeVer2( spep_0 + 458, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE014, 80 );
SE015 = playSeVer2( spep_0 + 458, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 458, SE015, 60 );
SE016 = playSeVer2( spep_0 + 458, 1022, "", 0, 0, 0, -1);

--かめはめ波中
SE017 = playSeVer2( spep_0 + 548, 1211, "",spep_0 + 938, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 548, SE017, 119 );
SE018 = playSeVer2( spep_0 + 548, 1227, "",spep_0 + 938, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 548, SE018, 127 );

--悟空歩く
SE019 = playSeVer2( spep_0 + 586, 1108, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 608, 1108, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 610, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE021, 78 );

--悟空かめはめ波溜め
SE022 = playSeVer2( spep_0 + 976, 1210, "",spep_0 + 1040, 6, 12, -1);
setSeVolumeByWorkId( spep_0 + 976, SE022, 68 );
setStartTimeMs( SE022,  1867 );

--気ダメ
SE023 = playSeVer2( spep_0 + 902, 1035, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 902, 1024, "",spep_0 + 998, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 902, SE024, 56 );
SE025 = playSeVer2( spep_0 + 906, 1258, "",spep_0 + 1032, 0, 56, -1);
setSeVolumeByWorkId( spep_0 + 906, SE025, 60 );

--悟空かめはめ波溜め
SE026 = playSeVer2( spep_0 + 976, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 976, SE026, 75 );

--気弾大きくなる
SE027 = playSeVer2( spep_0 + 988, 1224, "",spep_0 + 1014, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 988, SE027, 65 );
SE028 = playSeVer2( spep_0 + 994, 1225, "",spep_0 + 1068, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 994, SE028, 129 );

--かめはめ波発射
SE029 = playSeVer2( spep_0 + 1028, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE029, 44 );
SE030 = playSeVer2( spep_0 + 1028, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE030, 54 );
SE031 = playSeVer2( spep_0 + 1028, 1285, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1028, SE031, 42 );

--爆発
SE032 = playSeVer2( spep_0 + 1098, 1159, "",spep_0 + 1306, 16, 58, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE032, 82 );
SE033 = playSeVer2( spep_0 + 1126, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 1156, 1188, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 1178, 1067, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE036 = playSeVer2( spep_0 + 1238, 1258, "",spep_0 + 1354, 0, 62, -1);
setSeVolumeByWorkId( spep_0 + 1238, SE036, 69 );
SE037 = playSeVer2( spep_0 + 1244, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1244, SE037, 60 );
SE038 = playSeVer2( spep_0 + 1244, 1161, "",spep_0 + 1308, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 1244, SE038, 70 );

--パン飛んでくる
SE039 = playSeVer2( spep_0 + 1294, 1207, "",spep_0 + 1358, 16, 12, -1);
setStartTimeMs( SE039,  200 );

--環境音
SE040 = playSeVer2( spep_0 + 1296, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1296, SE040, 15 );

--パン着地
SE041 = playSeVer2( spep_0 + 1350, 1106, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1352, 1107, "", 0, 0, 0, -1);

--パンピース
SE043 = playSeVer2( spep_0 + 1384, 1003, "", 0, 0, 0, -1);
setBandpassFilter ( spep_0 + 1384, SE043, 800, 24000 );
SE044 = playSeVer2( spep_0 + 1430, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1430, SE044, 148 );

--ボイス
--やってくれるじゃねえかパン！
playVoice( spep_0 + 622, 471 );
setVoiceVolume( spep_0 + 622, 471, 112 );

--オラもうずうずしてきちまった！
playVoice( spep_0 + 756, 472 );
setVoiceVolume( spep_0 + 756, 472, 112 );

--はーーーー！
playVoice( spep_0 + 1018, 473 );
setVoiceVolume( spep_0 + 1018, 473, 110 );

--やったね！おじいちゃん！
playVoice( spep_0 + 1378, 474 );
setVoiceVolume( spep_0 + 1378, 474, 119 );

--ふふ…
playVoice( spep_0 + 1506, 475 );
setVoiceVolume( spep_0 + 1506, 475, 100 );

--終わり
dealDamage( spep_0 +1306 );
endPhase( spep_0 + 1572 );

else end