--1023620:孫悟空(界王拳)_願いをこめた元気玉
--sp_effect_a2_00174

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
SP_01 = 159160;  --元気玉受け取り〜元気玉ご飯に迫る    ef_001_front
SP_02 = 159161;  --元気玉受け取り〜元気玉ご飯に迫る    ef_001_back
SP_03 = 159162;  --悟空の声を聞く悟飯〜はじく   ef_002
SP_04 = 159163;  --敵に迫る元気玉〜フィニッシュ  ef_003_front
SP_05 = 159164;  --敵に迫る元気玉〜フィニッシュ  ef_003_back

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1=spep_0+586;
        spep_2=spep_1+394;
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 380 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_2 + 150);      -- スキップ先フレーム指定
           SE034 = playSeVer2( spep_2 + 150, 1183, "", 0, 0, 0, -1);
           SE035 = playSeVer2( spep_2 + 150, 1258, "", 0, 0, 0, -1);
           SE036 = playSeVer2( spep_2 + 152, 1321, "",spep_2 + 228, 0, 42, -1);
           SE037 = playSeVer2( spep_2 + 152, 1193, "",spep_2 + 302, 0, 40, -1);
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 元気玉受け取り〜元気玉ご飯に迫る
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --元気玉受け取り〜元気玉ご飯に迫る    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 586, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 586, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 586, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 586 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 586, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --元気玉受け取り〜元気玉ご飯に迫る    ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 586, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 586, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 586, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 586 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 586, first_b, 0 );

--敵座標の固定
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

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 492, 1, 1 );
setDisp( spep_0 -3 + 544, 1, 0 );
changeAnime( spep_0 -3 + 492, 1, 100 );
changeAnime( spep_0 -3 + 534, 1, 101 );
changeAnime( spep_0 -3 + 536, 1, 103 );
changeAnime( spep_0 -3 + 540, 1, 4 );

setMoveKey( spep_0 -3 + 492, 1, 277.7, 237.6 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 278.1, 236 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 274.6, 238.9 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 272.9, 235.2 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 273.2, 232.5 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 268, 233.8 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 263.9, 235 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 259, 228.3 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 254.2, 228.3 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 244.1, 224.4 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 240.3, 223.4 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 230.6, 220.9 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 221.3, 217 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 215.1, 211.6 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 201.2, 207.8 , 0 );
setMoveKey( spep_0 -3 + 522, 1, 180.9, 204.5 , 0 );
setMoveKey( spep_0 -3 + 524, 1, 165.5, 197.7 , 0 );
setMoveKey( spep_0 -3 + 526, 1, 147.2, 190.9 , 0 );
setMoveKey( spep_0 -3 + 528, 1, 121.2, 180.4 , 0 );
setMoveKey( spep_0 -3 + 530, 1, 87.1, 168.7 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -1.9, 137.4 , 0 );
setMoveKey( spep_0 -3 + 533, 1, -1.9, 137.4 , 0 );--
setMoveKey( spep_0 -3 + 534, 1, -29, 133.7 , 0 );
setMoveKey( spep_0 -3 + 535, 1, -29, 133.7 , 0 );--
setMoveKey( spep_0 -3 + 536, 1, -47.9, 286.1 , 0 );
setMoveKey( spep_0 -3 + 538, 1, -122.6, 524.5 , 0 );
setMoveKey( spep_0 -3 + 539, 1, -122.6, 524.5 , 0 );--
setMoveKey( spep_0 -3 + 540, 1, -157.3, 734.7 , 0 );
setMoveKey( spep_0 -3 + 542, 1, -273.9, 1068.4 , 0 );
setMoveKey( spep_0 -3 + 544, 1, -392.4, 1406 , 0 );

setScaleKey( spep_0 -3 + 492, 1, 0.08, 0.08 );
setScaleKey( spep_0 -3 + 494, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 496, 1, 0.09, 0.09 );
setScaleKey( spep_0 -3 + 498, 1, 0.1, 0.1 );
setScaleKey( spep_0 -3 + 500, 1, 0.11, 0.11 );
setScaleKey( spep_0 -3 + 502, 1, 0.12, 0.12 );
setScaleKey( spep_0 -3 + 504, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 506, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 508, 1, 0.19, 0.19 );
setScaleKey( spep_0 -3 + 510, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 512, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 514, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 516, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 518, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 520, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 522, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 524, 1, 0.59, 0.59 );
setScaleKey( spep_0 -3 + 526, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 528, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 530, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 532, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 534, 1, 1.42, 1.42 );
setScaleKey( spep_0 -3 + 535, 1, 1.42, 1.42 );--
setScaleKey( spep_0 -3 + 536, 1, 1.66, 1.66 );
setScaleKey( spep_0 -3 + 538, 1, 2.89, 2.89 );
setScaleKey( spep_0 -3 + 539, 1, 2.89, 2.89 );--
setScaleKey( spep_0 -3 + 540, 1, 3.1, 3.1 );
setScaleKey( spep_0 -3 + 542, 1, 3.41, 3.41 );
setScaleKey( spep_0 -3 + 544, 1, 3.72, 3.72 );

setRotateKey( spep_0 -3 + 492, 1, 6.7 );
setRotateKey( spep_0 -3 + 498, 1, 6.7 );
setRotateKey( spep_0 -3 + 500, 1, 6.6 );
setRotateKey( spep_0 -3 + 502, 1, 6.5 );
setRotateKey( spep_0 -3 + 504, 1, 6.4 );
setRotateKey( spep_0 -3 + 506, 1, 6.3 );
setRotateKey( spep_0 -3 + 508, 1, 6.2 );
setRotateKey( spep_0 -3 + 510, 1, 6 );
setRotateKey( spep_0 -3 + 512, 1, 5.8 );
setRotateKey( spep_0 -3 + 514, 1, 5.6 );
setRotateKey( spep_0 -3 + 516, 1, 5.4 );
setRotateKey( spep_0 -3 + 518, 1, 5.1 );
setRotateKey( spep_0 -3 + 520, 1, 4.8 );
setRotateKey( spep_0 -3 + 522, 1, 4.4 );
setRotateKey( spep_0 -3 + 524, 1, 4 );
setRotateKey( spep_0 -3 + 526, 1, 3.5 );
setRotateKey( spep_0 -3 + 528, 1, 2.9 );
setRotateKey( spep_0 -3 + 530, 1, 2.1 );
setRotateKey( spep_0 -3 + 532, 1, 0 );
setRotateKey( spep_0 -3 + 533, 1, 0 );--
setRotateKey( spep_0 -3 + 534, 1, 0 );
setRotateKey( spep_0 -3 + 535, 1, 0 );--
setRotateKey( spep_0 -3 + 536, 1, 55.9 );
setRotateKey( spep_0 -3 + 538, 1, 54.3 );
setRotateKey( spep_0 -3 + 539, 1, 54.3 );
setRotateKey( spep_0 -3 + 540, 1, -5.5 );
setRotateKey( spep_0 -3 + 544, 1, -5.5 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 436, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 72 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--元気玉溜め
SE003 = playSeVer2( spep_0 + 0, 1361, "",spep_0 + 430, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 38 );

--集中線
SE004 = playSeVer2( spep_0 + 274, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE004, 81 );
SE005 = playSeVer2( spep_0 + 274, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE005, 76 );

--構える
SE006 = playSeVer2( spep_0 + 318, 1232, "", 0, 0, 0, -1);

--振りかぶる
SE007 = playSeVer2( spep_0 + 384, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE007, 71 );

--元気玉投げる
SE008 = playSeVer2( spep_0 + 408, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 408, 1263, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 408, 1133, "", 0, 0, 0, -1);

--顔カットイン
SE011 = playSeVer2( spep_0 + 430, 1018, "", 0, 0, 0, -1);

--元気玉飛んでいく
SE012 = playSeVer2( spep_0 + 486, 1326, "",spep_0 +586 + 44, 0, 32, -1);
SE013 = playSeVer2( spep_0 + 486, 1284, "",spep_0 +586 + 44, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 486, SE013, 66 );
SE014 = playSeVer2( spep_0 + 528, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 528, SE014, 79 );

--悟飯気付き
SE015 = playSeVer2( spep_0 + 582, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE015, 68 );

--ボイス
--元気玉だ…！
playVoice( spep_0 + 0, 379 );
setVoiceVolume( spep_0 + 0, 379, 100 );

--そいつをやつにぶつけてくれ
playVoice( spep_0 + 80, 380 );
setVoiceVolume( spep_0 + 86, 380, 100 );

--とらえたー！！
playVoice( spep_0 + 314, 381 );
setVoiceVolume( spep_0 + 322, 381, 100 );

--あたれーーー！！
playVoice( spep_0 + 432, 382 );
setVoiceVolume( spep_0 + 440, 382, 100 );

--はねかえせ悟飯っ！！悪の気がない者ならはねかえせるはずだっ！！
playVoice( spep_0 + 580, 383 );
setVoiceVolume( spep_0 + 580, 383, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 586, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_1=spep_0+586;


------------------------------------------------------
-- 悟空の声を聞く悟飯〜はじく
------------------------------------------------------
--spep_1=0;
-- ** エフェクト等 ** --
shot = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --悟空の声を聞く悟飯〜はじく   ef_002
setEffMoveKey( spep_1 + 0, shot, 0, 0, 0 );
setEffMoveKey( spep_1 + 394, shot, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_1 + 394, shot, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot, 0 );
setEffRotateKey( spep_1 + 394, shot, 0 );
setEffAlphaKey( spep_1 + 0, shot, 255 );
setEffAlphaKey( spep_1 + 394 -1, shot, 255 );
setEffAlphaKey( spep_1 + 394, shot, 0 );

--SE
--悟空からの言葉
SE016 = playSeVer2( spep_1 + 90, 1263, "", 0, 0, 0, -1);
setTimeStretch( SE016, 1.18, 30, 4 );

--悟飯気弾受け止める
SE017 = playSeVer2( spep_1 + 282, 1017, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 282, 1201, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 282, 1178, "", 0, 0, 0, -1);

--気弾飛んでいく
SE020 = playSeVer2( spep_1 + 304, 1145, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_1 + 304, SE020, 84 );
setStartTimeMs( SE020,  100 );

--気弾跳ね返す
SE021 = playSeVer2( spep_1 + 312, 1000, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 312, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 312, 1052, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 312, 1142, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 312, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 312, SE025, 82 );

--気弾飛んでいく
SE026 = playSeVer2( spep_1 + 358, 1326, "",spep_1 +394 + 38, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 358, SE026, 126 );

--ボイス
--くっ！！
playVoice( spep_1 + 278, 384 );
setVoiceVolume( spep_1 + 278, 384, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 394, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 380 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE020, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
   
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

--次の準備
spep_2=spep_1+394;


------------------------------------------------------
-- 敵に迫る元気玉〜フィニッシュ
------------------------------------------------------
--spep_2=0;
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --敵に迫る元気玉〜フィニッシュ  ef_003_front
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 306, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 306, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 306, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 306, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --敵に迫る元気玉〜フィニッシュ  ef_003_back
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 306, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 306, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 306, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 306, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 18, 1, 0 );
changeAnime( spep_2 + 0, 1, 4 );

setMoveKey( spep_2 + 0, 1, -222, 328.1 , 0 );
setMoveKey( spep_2 + 1, 1, -222, 328.1 , 0 );
setMoveKey( spep_2 + 2, 1, -221.8, 327.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -220.6, 326.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -217.5, 323.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -210.9, 316 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -199, 302.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -179.4, 281.4 , 0 );
setMoveKey( spep_2 -3 + 17, 1, -149.2, 248.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -149.2, 248.4 , 0 );

setScaleKey( spep_2 + 0, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 6, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 8, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 10, 1, 0.85, 0.85 );
setScaleKey( spep_2 -3 + 12, 1, 0.91, 0.91 );
setScaleKey( spep_2 -3 + 14, 1, 1.02, 1.02 );
setScaleKey( spep_2 -3 + 17, 1, 1.19, 1.19 );
setScaleKey( spep_2 -3 + 18, 1, 1.19, 1.19 );

setRotateKey( spep_2 + 0, 1, -0.4 );
setRotateKey( spep_2 -3 + 18, 1, -0.4 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 22, 1, 1 );
setDisp( spep_2 -3 + 66, 1, 0 );
changeAnime( spep_2 -3 + 22, 1, 6 );
changeAnime( spep_2 -3 + 36, 1, 105 );

setBlendColor( spep_2 + 36 -3, 1, 3, 0, 0, 0, 1.0 );

setMoveKey( spep_2 -3 + 22, 1, 12, 10.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 12, 10.9 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 12, 10.9 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 12, 10.9 , 0 );
setMoveKey( spep_2 -3 + 35, 1, 12, 10.9 , 0 );--
setMoveKey( spep_2 -3 + 36, 1, 2.2, 21.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 2.2, 24.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 0.2, 18.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 6.2, 18.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 0.3, 22.5 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 1.3, 22.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 1.3, 24.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 4.3, 18.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 3.2, 16.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -0.7, 22.5 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -0.7, 21.4 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 5.3, 22.4 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 2.3, 22.4 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -0.8, 16.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -1.7, 22.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -1.7, 22.5 , 0 );

setScaleKey( spep_2 -3 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 30, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 34, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 35, 1, 1.3, 1.3 );--
setScaleKey( spep_2 -3 + 36, 1, 0.76, 0.76 );
setScaleKey( spep_2 -3 + 64, 1, 0.76, 0.76 );
setScaleKey( spep_2 -3 + 66, 1, 0.76, 0.76 );

setRotateKey( spep_2 -3 + 22, 1, 58.8 );
setRotateKey( spep_2 -3 + 24, 1, 58.8 );
setRotateKey( spep_2 -3 + 30, 1, 58.8 );
setRotateKey( spep_2 -3 + 34, 1, 58.8 );
setRotateKey( spep_2 -3 + 35, 1, 58.8 );--
setRotateKey( spep_2 -3 + 36, 1, -5.3 );
setRotateKey( spep_2 -3 + 64, 1, -5.3 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 94, 1, 1 );
setDisp( spep_2 -3 + 222, 1, 0 );
changeAnime( spep_2 -3 + 94, 1, 105 );
changeAnime( spep_2 -3 + 154, 1, 6 );
changeAnime( spep_2 -3 + 160, 1, 5 );

setBlendColor( spep_2 + 221 -3, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 222 -3, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_2 -3 + 94, 1, -11.8, 32.4 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -7.7, 35.3 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -9.8, 34.3 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -9.8, 30.4 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -9.8, 27.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -12.8, 33.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -9.7, 34.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -8.8, 36.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -5.8, 30.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -6.8, 30.3 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -14.8, 32.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -9.7, 34.3 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -10.8, 32.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -5.8, 34.3 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -9.8, 33.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -11.8, 29.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -9.7, 34.3 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -11.8, 34.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -7.8, 32.3 , 0 );
setMoveKey( spep_2 -3 + 132, 1, -7.8, 27.3 , 0 );
setMoveKey( spep_2 -3 + 134, 1, -14.8, 29.4 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -9.7, 30.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, -10.8, 37.3 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -7.8, 36.3 , 0 );
setMoveKey( spep_2 -3 + 142, 1, -9.8, 30.3 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -14.8, 29.4 , 0 );
setMoveKey( spep_2 -3 + 146, 1, -5.7, 32.3 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -4.8, 37.3 , 0 );
setMoveKey( spep_2 -3 + 150, 1, -8.8, 33.3 , 0 );
setMoveKey( spep_2 -3 + 153, 1, -8.8, 33.3 , 0 );--
setMoveKey( spep_2 -3 + 154, 1, -6, -317.9 , 0 );
setMoveKey( spep_2 -3 + 156, 1, -6, -317.9 , 0 );
setMoveKey( spep_2 -3 + 157, 1, -6, -317.9 , 0 );
setMoveKey( spep_2 -3 + 158, 1, -16, 164.1 , 0 );
setMoveKey( spep_2 -3 + 159, 1, -16, 164.1 , 0 );--
setMoveKey( spep_2 -3 + 160, 1, -110, 481.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -110, 481.8 , 0 );
setMoveKey( spep_2 -3 + 163, 1, -110, 481.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -95.9, 359.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -95.9, 359.9 , 0 );
setMoveKey( spep_2 -3 + 169, 1, -95.9, 359.9 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -72, 295.8 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -72, 295.8 , 0 );
setMoveKey( spep_2 -3 + 173, 1, -72, 295.8 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -65.8, 249.9 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -65.8, 249.9 , 0 );
setMoveKey( spep_2 -3 + 179, 1, -65.8, 249.9 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -87.7, 205.9 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -87.7, 205.9 , 0 );
setMoveKey( spep_2 -3 + 183, 1, -87.7, 205.9 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -63.8, 104.9 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -63.8, 104.9 , 0 );
setMoveKey( spep_2 -3 + 187, 1, -63.8, 104.9 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -81.8, 123.9 , 0 );
setMoveKey( spep_2 -3 + 189, 1, -81.8, 123.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -49.8, 16.8 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -49.8, 16.8 , 0 );
setMoveKey( spep_2 -3 + 193, 1, -49.8, 16.8 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -49.8, -1.1 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -49.8, -1.1 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -59.8, -18.2 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -59.8, -18.2 , 0 );
setMoveKey( spep_2 -3 + 203, 1, -59.8, -18.2 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -35.8, 23.8 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -35.8, 23.8 , 0 );
setMoveKey( spep_2 -3 + 207, 1, -35.8, 23.8 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -42.8, 23.8 , 0 );
setMoveKey( spep_2 -3 + 209, 1, -42.8, 23.8 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -23.8, 41.8 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -23.8, 41.8 , 0 );
setMoveKey( spep_2 -3 + 213, 1, -23.8, 41.8 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -21.8, 52.9 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -21.8, 52.9 , 0 );
setMoveKey( spep_2 -3 + 219, 1, -21.8, 52.9 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -14.8, 63.9 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -14.8, 63.9 , 0 );

setScaleKey( spep_2 -3 + 94, 1, 0.46, 0.46 );
setScaleKey( spep_2 -3 + 153, 1, 0.46, 0.46 );--
setScaleKey( spep_2 -3 + 154, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 159, 1, 1.74, 1.74 );--
setScaleKey( spep_2 -3 + 160, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 162, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 163, 1, 1.54, 1.54 );
setScaleKey( spep_2 -3 + 164, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 168, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 169, 1, 1.3, 1.3 );
setScaleKey( spep_2 -3 + 170, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 172, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 173, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 174, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 178, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 179, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 180, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 182, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 183, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 184, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 188, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 189, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 190, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 192, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 193, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 194, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 198, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 200, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 212, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 213, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 214, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 222, 1, 0.28, 0.28 );

setRotateKey( spep_2 -3 + 94, 1, -5.3 );
setRotateKey( spep_2 -3 + 153, 1, -5.3 );--
setRotateKey( spep_2 -3 + 154, 1, -19.9 );
setRotateKey( spep_2 -3 + 156, 1, -19.9 );
setRotateKey( spep_2 -3 + 157, 1, -19.9 );
setRotateKey( spep_2 -3 + 158, 1, -24.9 );
setRotateKey( spep_2 -3 + 159, 1, -24.9 );--
setRotateKey( spep_2 -3 + 160, 1, 17.9 );
setRotateKey( spep_2 -3 + 162, 1, 17.9 );
setRotateKey( spep_2 -3 + 163, 1, 17.9 );
setRotateKey( spep_2 -3 + 164, 1, 20.9 );
setRotateKey( spep_2 -3 + 168, 1, 20.9 );
setRotateKey( spep_2 -3 + 169, 1, 20.9 );
setRotateKey( spep_2 -3 + 170, 1, 22.6 );
setRotateKey( spep_2 -3 + 172, 1, 22.6 );
setRotateKey( spep_2 -3 + 173, 1, 22.6 );
setRotateKey( spep_2 -3 + 174, 1, 9.6 );
setRotateKey( spep_2 -3 + 178, 1, 9.6 );
setRotateKey( spep_2 -3 + 179, 1, 9.6 );
setRotateKey( spep_2 -3 + 180, 1, -6.3 );
setRotateKey( spep_2 -3 + 182, 1, -6.3 );
setRotateKey( spep_2 -3 + 183, 1, -6.3 );
setRotateKey( spep_2 -3 + 184, 1, -12.8 );
setRotateKey( spep_2 -3 + 188, 1, -12.8 );
setRotateKey( spep_2 -3 + 189, 1, -12.8 );
setRotateKey( spep_2 -3 + 190, 1, -15.8 );
setRotateKey( spep_2 -3 + 212, 1, -15.8 );
setRotateKey( spep_2 -3 + 213, 1, -15.8 );
setRotateKey( spep_2 -3 + 214, 1, -15.7 );
setRotateKey( spep_2 -3 + 222, 1, -15.7 );

--SE
--気弾ヒット
SE027 = playSeVer2( spep_2 + 10, 1023, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 16, 1024, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 16, 1229, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 22, 1230, "", 0, 0, 0, -1);

--エネルギー弾ける
SE031 = playSeVer2( spep_2 + 60, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE031, 186 );
SE032 = playSeVer2( spep_2 + 64, 1110, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 76, 1343, "",spep_2 + 166, 0, 20, -1);

--敵上昇する
SE034 = playSeVer2( spep_2 + 140, 1183, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 140, 1258, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 148, 1321, "",spep_2 + 228, 0, 42, -1);
SE037 = playSeVer2( spep_2 + 148, 1193, "",spep_2 + 302, 0, 40, -1);

--星になる
SE038 = playSeVer2( spep_2 + 274, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 306, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--終わり
dealDamage( spep_2 + 156 );
endPhase( spep_2 + 296 );
else end