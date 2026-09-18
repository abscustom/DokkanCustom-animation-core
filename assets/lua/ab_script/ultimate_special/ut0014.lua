--1021620:亀仙人_最大最強のかめはめ波(アクティブ)_ut0014
--sp_effect_b4_00181

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

--味方側
SP_01 = 156854; --最大最強のかめはめ波(ef_001_u)
SP_02 = 156872; --最大最強のかめはめ波(ef_001_l)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
           skipFrame(0, spep_0 + 530 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1100);      -- スキップ先フレーム指定

           --かめはめ波発射
           SE023 = playSe( spep_0 + 1100, 1213 );
           setSeVolumeByWorkId( spep_0 + 1100, SE023, 79 );
           stopSe( spep_0 + 1140, SE023, 114 );

           --かめはめ波とんでく
           SE025 = playSe( spep_0 + 1100, 1027 );
           setSeVolumeByWorkId( spep_0 + 1100, SE025, 77 );

           --かめはめ波とんでく
           SE026 = playSe( spep_0 + 1100, 1211 );
           setSeVolumeByWorkId( spep_0 + 1100, SE026, 207 );
           stopSe( spep_0 + 1148, SE026, 40 );

           --かめはめ波とんでく
           SE027 = playSe( spep_0 + 1100, 1161 );
           setSeVolumeByWorkId( spep_0 + 1100, SE027, 71 );
           stopSe( spep_0 + 1148, SE027, 42 );

           --かめはめ波とんでく
           SE028 = playSe( spep_0 + 1100, 1145 );
           setSeVolumeByWorkId( spep_0 + 1076, SE028, 82 );
           
       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 最大最強のかめはめ波(1210F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamehame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --溜め〜発射(ef_001)
setEffMoveKey( spep_0 + 0, kamehame_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1210, kamehame_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamehame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1210, kamehame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamehame_f, 0 );
setEffRotateKey( spep_0 + 1210, kamehame_f, 0 );
setEffAlphaKey( spep_0 + 0, kamehame_f, 255 );
setEffAlphaKey( spep_0 + 1210, kamehame_f, 255 );

kamehame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --溜め〜発射(ef_001)
setEffMoveKey( spep_0 + 0, kamehame_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1210, kamehame_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamehame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1210, kamehame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamehame_b, 0 );
setEffRotateKey( spep_0 + 1210, kamehame_b, 0 );
setEffAlphaKey( spep_0 + 0, kamehame_b, 255 );
setEffAlphaKey( spep_0 + 1210, kamehame_b, 255 );

-- ** ボイス ** --
--よく動きよく学びよく遊びよく食べてよく休む
playVoice( spep_0 + 112, 240 );
setVoiceVolume( spep_0 + 112, 240, 85 );

-- ** 音 ** --
--メガネ外す
SE001 = playSe( spep_0 + 6, 6 );
setSeVolumeByWorkId( spep_0 + 6, SE001, 15 );
setSeVolumeByWorkId( spep_0 + 7, SE001, 30 );
setSeVolumeByWorkId( spep_0 + 8, SE001, 46 );
stopSe( spep_0 + 12, SE001, 8 );
setStartTimeMs( SE001,  100 );
setBandpassFilter( spep_0 + 6, SE001, 3000, 24000 );

--環境音
SE002 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
stopSe( spep_0 + 926, SE002, 0 );

--メガネ外す
SE003 = playSe( spep_0 + 14, 21 );
stopSe( spep_0 + 20, SE003, 2 );
setBandpassFilter  ( spep_0 + 14, SE003, 3000, 24000 );

--腕L字
SE004 = playSe( spep_0 + 162, 1003 );
setSeVolumeByWorkId( spep_0 + 162, SE004, 55 );
setPitch( spep_0 + 162, SE004, -400 );
setTimeStretch( SE004, 0.73, 10, 1 );

--腕I字
SE005 = playSe( spep_0 + 250, 1003 );
setSeVolumeByWorkId( spep_0 + 250, SE005, 62 );
setPitch( spep_0 + 250, SE005, 200 );
setTimeStretch( SE005, 1.13, 10, 1 );

--構える
SE006 = playSe( spep_0 + 354, 1004 );
setSeVolumeByWorkId( spep_0 + 354, SE006, 62 );
setPitch( spep_0 + 354, SE006, -200 );
setTimeStretch( SE006, 0.87, 10, 1 );

--構える
SE007 = playSe( spep_0 + 376, 1233 );
setSeVolumeByWorkId( spep_0 + 376, SE007, 72 );

--かめはめ波溜め
SE008 = playSe( spep_0 + 446, 1222 );
setSeVolumeByWorkId( spep_0 + 446, SE008, 14 );
setSeVolumeByWorkId( spep_0 + 449, SE008, 28 );
setSeVolumeByWorkId( spep_0 + 446, SE008, 42 );
setSeVolumeByWorkId( spep_0 + 452, SE008, 56 );
setSeVolumeByWorkId( spep_0 + 455, SE008, 70 );
setSeVolumeByWorkId( spep_0 + 458, SE008, 84 );
setSeVolumeByWorkId( spep_0 + 461, SE008, 96 );
setSeVolumeByWorkId( spep_0 + 464, SE008, 100 );
setStartTimeMs( SE008,  583 );
setPitch( spep_0 + 446, SE008, -200 );
setTimeStretch( SE008, 0.87, 10, 1 );

--かめはめ波溜め
SE009 = playSe( spep_0 + 436, 1209 );
setSeVolumeByWorkId( spep_0 + 436, SE009, 126 );
setPitch( spep_0 + 436, SE009, -700 );
setTimeStretch( SE009, 0.53, 10, 1 );
stopSe(spep_0 + 436 +74,SE009,30);

--かめはめ波溜め２段階目
SE010 = playSe( spep_0 + 470, 1306 );
setSeVolumeByWorkId( spep_0 + 470, SE010, 69 );

--かめはめ波溜め２段階目
SE011 = playSe( spep_0 + 470, 1157 );
setSeVolumeByWorkId( spep_0 + 470, SE011, 84 );

--かめはめ波溜め２段階目
SE012 = playSe( spep_0 + 492, 1307 );
setSeVolumeByWorkId( spep_0 + 492, SE012, 188 );
setPitch( spep_0 + 492, SE012, 200 );
setTimeStretch( SE012, 1.13, 10, 1 );

--かめはめ波溜め２段階目
SE013 = playSe( spep_0 + 494, 1306 );
setSeVolumeByWorkId( spep_0 + 494, SE013, 90 );
setPitch( spep_0 + 494, SE013, 200 );
setTimeStretch( SE013, 1.13, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1210 +2, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 530 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 207.1, 61.9 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 202.9, 61.3 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 198.9, 60.8 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 194.4, 65.2 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 190, 69.7 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 178.9, 75.5 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.54, 1.54 );
    --setScaleKey( SP_dodge + 2, 1, 1.58, 1.58 );
    --setScaleKey( SP_dodge + 4, 1, 1.61, 1.61 );
    --setScaleKey( SP_dodge + 6, 1, 1.65, 1.65 );
    --setScaleKey( SP_dodge + 8, 1, 1.69, 1.69 );
    --setScaleKey( SP_dodge + 10, 1, 1.72, 1.72 );

    --setRotateKey( SP_dodge + 0, 1, 2 );
    --setRotateKey( SP_dodge + 10, 1, 2 );    
    
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
setDisp( spep_0 -3 + 996, 1, 1 );
setDisp( spep_0 -3 + 1048, 1, 0 );
changeAnime( spep_0 -3 + 996, 1, 104 );

setMoveKey( spep_0 -3 + 996, 1, 258.9, 40.9 , 0 );
setMoveKey( spep_0 -3 + 998, 1, 254.9, 45.1 , 0 );
setMoveKey( spep_0 -3 + 1000, 1, 251.1, 49.3 , 0 );
setMoveKey( spep_0 -3 + 1002, 1, 243.8, 50.2 , 0 );
setMoveKey( spep_0 -3 + 1004, 1, 236.5, 51.1 , 0 );
setMoveKey( spep_0 -3 + 1006, 1, 232.5, 50.5 , 0 );
setMoveKey( spep_0 -3 + 1008, 1, 228.5, 49.9 , 0 );
setMoveKey( spep_0 -3 + 1010, 1, 217.8, 55.9 , 0 );
setMoveKey( spep_0 -3 + 1012, 1, 207.1, 61.9 , 0 );
setMoveKey( spep_0 -3 + 1014, 1, 202.9, 61.3 , 0 );
setMoveKey( spep_0 -3 + 1016, 1, 198.9, 60.8 , 0 );
setMoveKey( spep_0 -3 + 1018, 1, 194.4, 65.2 , 0 );
setMoveKey( spep_0 -3 + 1020, 1, 190, 69.7 , 0 );
setMoveKey( spep_0 -3 + 1022, 1, 178.9, 75.5 , 0 );
setMoveKey( spep_0 -3 + 1024, 1, 167.8, 81.4 , 0 );
setMoveKey( spep_0 -3 + 1026, 1, 157.1, 80.5 , 0 );
setMoveKey( spep_0 -3 + 1028, 1, 146.4, 79.7 , 0 );
setMoveKey( spep_0 -3 + 1030, 1, 142.5, 79.3 , 0 );
setMoveKey( spep_0 -3 + 1032, 1, 138.6, 78.9 , 0 );
setMoveKey( spep_0 -3 + 1034, 1, 124.7, 88.6 , 0 );
setMoveKey( spep_0 -3 + 1036, 1, 120.8, 94.4 , 0 );
setMoveKey( spep_0 -3 + 1038, 1, 117, 100.3 , 0 );
setMoveKey( spep_0 -3 + 1040, 1, 112.4, 99 , 0 );
setMoveKey( spep_0 -3 + 1042, 1, 107.7, 97.9 , 0 );
setMoveKey( spep_0 -3 + 1044, 1, 97.3, 102.4 , 0 );
setMoveKey( spep_0 -3 + 1046, 1, 86.9, 107 , 0 );
setMoveKey( spep_0 -3 + 1048, 1, 82, 112.3 , 0 );
--setMoveKey( spep_0 -3 + 1049, 1, 82, 112.3 , 0 );
--setMoveKey( spep_0 -3 + 1050, 1, 77.1, 117.7 , 0 );
--setMoveKey( spep_0 -3 + 1052, 1, 62.8, 113.5 , 0 );
--etMoveKey( spep_0 -3 + 1054, 1, 54.7, 115.8 , 0 );
--etMoveKey( spep_0 -3 + 1056, 1, 47.7, 118.3 , 0 );
--etMoveKey( spep_0 -3 + 1058, 1, 40.7, 120.9 , 0 );
--etMoveKey( spep_0 -3 + 1060, 1, 33.6, 123.4 , 0 );
--etMoveKey( spep_0 -3 + 1062, 1, 26.6, 126 , 0 );
--etMoveKey( spep_0 -3 + 1064, 1, 19.6, 128.6 , 0 );
--etMoveKey( spep_0 -3 + 1066, 1, 12.5, 131.1 , 0 );

setScaleKey( spep_0 -3 + 996, 1, 1.24, 1.24 );
setScaleKey( spep_0 -3 + 998, 1, 1.28, 1.28 );
setScaleKey( spep_0 -3 + 1000, 1, 1.32, 1.32 );
setScaleKey( spep_0 -3 + 1002, 1, 1.35, 1.35 );
setScaleKey( spep_0 -3 + 1004, 1, 1.39, 1.39 );
setScaleKey( spep_0 -3 + 1006, 1, 1.43, 1.43 );
setScaleKey( spep_0 -3 + 1008, 1, 1.46, 1.46 );
setScaleKey( spep_0 -3 + 1010, 1, 1.5, 1.5 );
setScaleKey( spep_0 -3 + 1012, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 1014, 1, 1.58, 1.58 );
setScaleKey( spep_0 -3 + 1016, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 1018, 1, 1.65, 1.65 );
setScaleKey( spep_0 -3 + 1020, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 1022, 1, 1.72, 1.72 );
setScaleKey( spep_0 -3 + 1024, 1, 1.76, 1.76 );
setScaleKey( spep_0 -3 + 1026, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 1028, 1, 1.83, 1.83 );
setScaleKey( spep_0 -3 + 1030, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 1032, 1, 1.91, 1.91 );
setScaleKey( spep_0 -3 + 1034, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 1036, 1, 1.98, 1.98 );
setScaleKey( spep_0 -3 + 1038, 1, 2.02, 2.02 );
setScaleKey( spep_0 -3 + 1040, 1, 2.06, 2.06 );
setScaleKey( spep_0 -3 + 1042, 1, 2.09, 2.09 );
setScaleKey( spep_0 -3 + 1044, 1, 2.13, 2.13 );
setScaleKey( spep_0 -3 + 1046, 1, 2.17, 2.17 );
setScaleKey( spep_0 -3 + 1048, 1, 2.2, 2.2 );
--setScaleKey( spep_0 -3 + 1049, 1, 2.2, 2.2 );
--setScaleKey( spep_0 -3 + 1050, 1, 2.24, 2.24 );
--setScaleKey( spep_0 -3 + 1052, 1, 2.28, 2.28 );
--setScaleKey( spep_0 -3 + 1054, 1, 2.32, 2.32 );
--setScaleKey( spep_0 -3 + 1056, 1, 2.35, 2.35 );
--setScaleKey( spep_0 -3 + 1058, 1, 2.39, 2.39 );
--setScaleKey( spep_0 -3 + 1060, 1, 2.43, 2.43 );
--setScaleKey( spep_0 -3 + 1062, 1, 2.46, 2.46 );
--setScaleKey( spep_0 -3 + 1064, 1, 2.5, 2.5 );
--setScaleKey( spep_0 -3 + 1066, 1, 2.54, 2.54 );

setRotateKey( spep_0 -3 + 996, 1, 2 );
setRotateKey( spep_0 -3 + 1048, 1, 2 );

-- ** ボイス ** --
--亀仙流はおぬしとともにあるぞ！
playVoice( spep_0 + 552, 241 );
setVoiceVolume( spep_0 + 552, 241, 80 );

--これが最大最強の…
playVoice( spep_0 + 806, 242 );
setVoiceVolume( spep_0 + 806, 242, 85 );

--かめはめ波じゃーー！！
playVoice( spep_0 + 930, 243 );
setVoiceVolume( spep_0 + 930, 243, 95 );

-- ** 音 ** --
--かめはめ波溜め３段階目
SE014 = playSe( spep_0 + 520, 1210 );
setSeVolumeByWorkId( spep_0 + 520, SE014, 89 );
stopSe( spep_0 + 930, SE014, 34 );

--かめはめ波溜め３段階目
SE015 = playSe( spep_0 + 548, 1190 );
setSeVolumeByWorkId( spep_0 + 548, SE015, 67 );

--目アップ
SE016 = playSe( spep_0 + 722, 1303 );
setPitch( spep_0 + 722, SE016, -200 );
setTimeStretch( SE016, 0.87, 10, 1 );

--目アップ
SE017 = playSe( spep_0 + 722, 1042 );
setSeVolumeByWorkId( spep_0 + 722, SE017, 151 );

--目アップ
SE018 = playSe( spep_0 + 726, 1062 );

--かめはめ波発射
SE019 = playSe( spep_0 + 924, 1258 );
setSeVolumeByWorkId( spep_0 + 924, SE019, 72 );

--かめはめ波発射
SE020 = playSe( spep_0 + 924, 1146 );
setSeVolumeByWorkId( spep_0 + 924, SE020, 82 );

--かめはめ波発射
SE021 = playSe( spep_0 + 926, 1024 );
setSeVolumeByWorkId( spep_0 + 926, SE021, 77 );

--かめはめ波発射
SE022 = playSe( spep_0 + 926, 1223 );
setSeVolumeByWorkId( spep_0 + 926, SE022, 85 );

--かめはめ波発射
SE023 = playSe( spep_0 + 926, 1213 );
setSeVolumeByWorkId( spep_0 + 926, SE023, 79 );
stopSe( spep_0 + 1140, SE023, 114 );

--敵飲み込まれる
SE024 = playSe( spep_0 + 1038, 1021 );
setSeVolumeByWorkId( spep_0 + 1038, SE024, 178 );

--かめはめ波とんでく
SE025 = playSe( spep_0 + 1076, 1027 );
setSeVolumeByWorkId( spep_0 + 1076, SE025, 77 );

--かめはめ波とんでく
SE026 = playSe( spep_0 + 1076, 1211 );
setSeVolumeByWorkId( spep_0 + 1076, SE026, 207 );
stopSe( spep_0 + 1148, SE026, 40 );

--かめはめ波とんでく
SE027 = playSe( spep_0 + 1076, 1161 );
setSeVolumeByWorkId( spep_0 + 1076, SE027, 71 );
stopSe( spep_0 + 1148, SE027, 42 );

--かめはめ波とんでく
SE028 = playSe( spep_0 + 1076, 1145 );
setSeVolumeByWorkId( spep_0 + 1076, SE028, 82 );

--環境音
SE029 = playSe( spep_0 + 1112, 1269 );
setSeVolumeByWorkId( spep_0 + 1112, SE029, 32 );

-- ** ダメージ表示 ** --
dealDamage( spep_0 + 1100 );
endPhase( spep_0 + 1200 );

else end