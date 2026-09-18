--1024350:超サイヤ人孫悟空&超サイヤ人孫悟飯(少年期)_フルパワー親子かめはめ波(アクティブ)_ut0033
--sp_effect_a1_00352

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
SP_01 = 159801;  --前半  ef_001
SP_02 = 159802;  --中盤　手前   ef_002
SP_03 = 159803;  --中盤　奥    ef_003
SP_04 = 159804;  --後半  ef_004

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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


ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

if (_IS_PLAYER_SIDE_ == 1) then
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1=spep_0+540;
        spep_2=spep_1+672;
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 24 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_2 + 230);      -- スキップ先フレーム指定
            --環境音
            SE057 = playSeVer2( spep_2 + 230, 1269, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_2 + 230, SE057, 28 );
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--前半(540)
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 540, 0x100, -1, 0, 0, 0 );  --前半  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 540, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 540, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 540 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 540, first_f, 0 );

-- ** 音 ** --
--空力音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 144, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 47 );
SE003 = playSeVer2( spep_0 + 10, 1278, "",spep_0 + 144, 0, 44, -1);

--セリフカットイン
SE002 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);

--マントひるがえる
SE004 = playSeVer2( spep_0 + 10, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE004, 115 );

--気ダメ
SE005 = playSeVer2( spep_0 + 102, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE005, 78 );
SE006 = playSeVer2( spep_0 + 102, 1035, "", 0, 0, 0, -1);

--オーラ
SE007 = playSeVer2( spep_0 + 150, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE007, 79 );
SE008 = playSeVer2( spep_0 + 174, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE008, 79 );
SE010 = playSeVer2( spep_0 + 198, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE010, 79 );
SE011 = playSeVer2( spep_0 + 222, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE011, 79 );
SE012 = playSeVer2( spep_0 + 246, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE012, 79 );
SE014 = playSeVer2( spep_0 + 270, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 270, SE014, 79 );
SE015 = playSeVer2( spep_0 + 294, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE015, 79 );
SE017 = playSeVer2( spep_0 + 318, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 318, SE017, 79 );
SE018 = playSeVer2( spep_0 + 342, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 342, SE018, 79 );
SE020 = playSeVer2( spep_0 + 366, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 366, SE020, 63 );
SE021 = playSeVer2( spep_0 + 390, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE021, 63 );
SE022 = playSeVer2( spep_0 + 414, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 414, SE022, 63 );
SE023 = playSeVer2( spep_0 + 438, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 438, SE023, 63 );

--悟空構える
SE009 = playSeVer2( spep_0 + 196, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 258, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE013, 219 );

--かめはめ波溜め
SE016 = playSeVer2( spep_0 + 358, 1210, "",spep_0 + 476, 20, 22, -1);
setStartTimeMs( SE016,  983 );
SE019 = playSeVer2( spep_0 + 362, 1209, "",spep_0 + 476, 0, 22, -1);

--かめはめ波発射
SE024 = playSeVer2( spep_0 + 452, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE024, 81 );
SE025 = playSeVer2( spep_0 + 452, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE025, 85 );
SE026 = playSeVer2( spep_0 + 452, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE026, 87 );

--かめはめ波飛んでいく
SE028 = playSeVer2( spep_0 + 532, 1202, "",spep_0 + 598, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 532, SE028, 272 );

-- ** ボイス ** --
--ボクは負けない…絶対に！
playVoice( spep_0 + 0, 419 );
setVoiceVolume( spep_0 + 0, 419, 100 );

--いくぞ　悟飯！
playVoice( spep_0 + 210, 420 );
setVoiceVolume( spep_0 + 310, 421, 120 );

--かめはめ…／波ぁー！！
playVoice( spep_0 + 310, 421 );
setVoiceVolume( spep_0 + 310, 421, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 540 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_1=spep_0+540;


------------------------------------------------------
-- 中盤(672F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_1 + 0, SP_02, 672, 0x100, -1, 0, 0, 0 );  --中盤　手前   ef_002
setEffMoveKey( spep_1 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 672, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 672, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot_f, 0 );
setEffRotateKey( spep_1 + 672, shot_f, 0 );
setEffAlphaKey( spep_1 + 0, shot_f, 255 );
setEffAlphaKey( spep_1 + 672 -1, shot_f, 255 );
setEffAlphaKey( spep_1 + 672, shot_f, 0 );

shot_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_1 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot_b, 0 );
setEffRotateKey( spep_1 + 100, shot_b, 0 );
setEffAlphaKey( spep_1 + 0, shot_b, 255 );
setEffAlphaKey( spep_1 + 100, shot_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1 + 0, 1, 145.1, 47 , 0 );
setMoveKey( spep_1 + 1, 1, 144.8, 46.5 , 0 );
setMoveKey( spep_1 + 2, 1, 144.4, 45.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 143.9, 45.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 143.4, 44.5 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 142.8, 43.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 142.1, 42.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 141.4, 41.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 140.5, 40.4 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 139.5, 38.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 138.4, 37.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 137.1, 35.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 135.6, 33.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 133.8, 30.8 , 0 );

setScaleKey( spep_1 + 0, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 1, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 2, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 6, 1, 0.34, 0.34 );
setScaleKey( spep_1 -3 + 8, 1, 0.35, 0.35 );
setScaleKey( spep_1 -3 + 10, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 12, 1, 0.37, 0.37 );
setScaleKey( spep_1 -3 + 14, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 16, 1, 0.4, 0.4 );
setScaleKey( spep_1 -3 + 18, 1, 0.42, 0.42 );
setScaleKey( spep_1 -3 + 20, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 22, 1, 0.45, 0.45 );
setScaleKey( spep_1 -3 + 24, 1, 0.48, 0.48 );
setScaleKey( spep_1 -3 + 26, 1, 0.51, 0.51 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 672 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 24 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE028, 0);

    setVoiceVolume(SP_dodge - 12, 421, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 133.8, 30.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 131.7, 27.8 , 0 );
    setMoveKey( SP_dodge + 4, 1, 129.2, 24.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 126, 19.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 121.4, 13 , 0 );
    setMoveKey( SP_dodge + 10, 1, 112.7, 1.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.32, 0.32 );
    setScaleKey( SP_dodge + 2, 1, 0.54, 0.54 );
    setScaleKey( SP_dodge + 4, 1, 0.58, 0.58 );
    setScaleKey( SP_dodge + 6, 1, 0.64, 0.64 );
    setScaleKey( SP_dodge + 8, 1, 0.71, 0.71 );
    setScaleKey( SP_dodge + 10, 1, 0.87, 0.87 );

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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 78, 1, 0 );
changeAnime( spep_1 -3 + 40, 1, 108 );

a = 15;
b = 10;
setMoveKey( spep_1 -3 + 28, 1, 131.7, 27.8 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 129.2, 24.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 126, 19.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 121.4, 13 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 112.7, 1.2 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 112.7, 1.2 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 112.7 -a, 1.2 +b , 0 );
setMoveKey( spep_1 -3 + 41, 1, 112.7 -a, 1.2 +b , 0 );
setMoveKey( spep_1 -3 + 42, 1, 112.7 +34 -10 -a, 1.2 -40 +b , 0 );
setMoveKey( spep_1 -3 + 43, 1, 112.7 +34 -10 -a, 1.2 -40 +b , 0 );
setMoveKey( spep_1 -3 + 44, 1, 112.7 +23 -10 -a, 1.2 +17 +b , 0 );
setMoveKey( spep_1 -3 + 45, 1, 112.7 +23 -10 -a, 1.2 +17 +b , 0 );
setMoveKey( spep_1 -3 + 46, 1, 112.7 +28 -10 -a, 1.2 -25 +b , 0 );
setMoveKey( spep_1 -3 + 47, 1, 112.7 +28 -10 -a, 1.2 -25 +b , 0 );
setMoveKey( spep_1 -3 + 48, 1, 112.7 +25 -10 -a, 1.2 +6 +b , 0 );
setMoveKey( spep_1 -3 + 49, 1, 112.7 +25 -10 -a, 1.2 +6 +b , 0 );
setMoveKey( spep_1 -3 + 50, 1, 112.7 +18 -10 -a, 1.2 -32 +b , 0 );
setMoveKey( spep_1 -3 + 51, 1, 112.7 +18 -10 -a, 1.2 -32 +b , 0 );
setMoveKey( spep_1 -3 + 52, 1, 112.7 +34 -10 -a, 1.2 +1 +b , 0 );
setMoveKey( spep_1 -3 + 53, 1, 112.7 +34 -10 -a, 1.2 +1 +b , 0 );
setMoveKey( spep_1 -3 + 54, 1, 112.7 +13 -10 -a, 1.2 -19 +b , 0 );
setMoveKey( spep_1 -3 + 55, 1, 112.7 +13 -10 -a, 1.2 -19 +b , 0 );
setMoveKey( spep_1 -3 + 56, 1, 112.7 +28 -10 -a, 1.2 -17 +b , 0 );
setMoveKey( spep_1 -3 + 57, 1, 112.7 +28 -10 -a, 1.2 -17 +b , 0 );
setMoveKey( spep_1 -3 + 58, 1, 112.7 +8 -a, 1.2 -23 +b , 0 );
setMoveKey( spep_1 -3 + 59, 1, 112.7 +8 -a, 1.2 -23 +b , 0 );
setMoveKey( spep_1 -3 + 60, 1, 112.7 +27 -10 -a, 1.2 -13 +b , 0 );
setMoveKey( spep_1 -3 + 61, 1, 112.7 +27 -10 -a, 1.2 -13 +b , 0 );
setMoveKey( spep_1 -3 + 62, 1, 112.7 +10 -a, 1.2 -24 +b , 0 );
setMoveKey( spep_1 -3 + 63, 1, 112.7 +10 -a, 1.2 -24 +b , 0 );
setMoveKey( spep_1 -3 + 64, 1, 112.7 +10 -a, 1.2 -10 +b , 0 );
setMoveKey( spep_1 -3 + 65, 1, 112.7 +10 -a, 1.2 -10 +b , 0 );
setMoveKey( spep_1 -3 + 66, 1, 112.7 +20 -a, 1.2 -20 +b , 0 );
setMoveKey( spep_1 -3 + 67, 1, 112.7 +20 -a, 1.2 -20 +b , 0 );
setMoveKey( spep_1 -3 + 68, 1, 112.7 +10 -a, 1.2 -15 +b , 0 );
setMoveKey( spep_1 -3 + 69, 1, 112.7 +10 -a, 1.2 -15 +b , 0 );
setMoveKey( spep_1 -3 + 70, 1, 112.7 +18 -a, 1.2 -20 +b , 0 );
setMoveKey( spep_1 -3 + 71, 1, 112.7 +18 -a, 1.2 -20 +b , 0 );
setMoveKey( spep_1 -3 + 72, 1, 112.7 +9 -a, 1.2 -22 +b , 0 );
setMoveKey( spep_1 -3 + 73, 1, 112.7 +9 -a, 1.2 -22 +b , 0 );
setMoveKey( spep_1 -3 + 74, 1, 112.7 +13 -a, 1.2 -18 +b , 0 );
setMoveKey( spep_1 -3 + 75, 1, 112.7 +13 -a, 1.2 -18 +b , 0 );
setMoveKey( spep_1 -3 + 76, 1, 112.7 +13 -a, 1.2 -26 +b , 0 );
setMoveKey( spep_1 -3 + 78, 1, 112.7 +13 -a, 1.2 -26 +b , 0 );

s1 = 0.1;
setScaleKey( spep_1 -3 + 28, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 30, 1, 0.58, 0.58 );
setScaleKey( spep_1 -3 + 32, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 39, 1, 0.87, 0.87 );--
setScaleKey( spep_1 -3 + 40, 1, 0.87 +s1, 0.87 +s1 );
setScaleKey( spep_1 -3 + 78, 1, 0.89 +s1, 0.89 +s1 );

setRotateKey( spep_1 -3 + 78, 1, 0 );

-- ** 音 ** --
--敵ヒット
SE029 = playSeVer2( spep_1 + 30, 1011, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 30, 1023, "", 0, 0, 0, -1);

--かめはめ波中
SE031 = playSeVer2( spep_1 + 70, 1211, "",spep_1 + 234, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 70, SE031, 339 );
SE032 = playSeVer2( spep_1 + 70, 1161, "",spep_1 + 234, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 70, SE032, 84 );
SE033 = playSeVer2( spep_1 + 70, 1226, "",spep_1 + 234, 0, 30, -1);

--顔アップ
SE034 = playSeVer2( spep_1 + 128, 1072, "", 0, 0, 0, -1);

--悟飯覚醒
SE027 = playSeVer2( spep_1 + 210, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 210, SE027, 89 );

--悟飯気弾溜め
SE035 = playSeVer2( spep_1 + 294, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 294, SE035, 60 );

--悟飯気だめ
SE036 = playSeVer2( spep_1 + 350, 1024, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 350, 1147, "",spep_1 + 452, 0, 14, -1);
SE038 = playSeVer2( spep_1 + 350, 1035, "", 0, 0, 0, -1);

--かめはめ波中2
SE039 = playSeVer2( spep_1 + 394, 1211, "",spep_1 + 494, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 394, SE039, 316 );
SE040 = playSeVer2( spep_1 + 394, 1161, "",spep_1 + 494, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 394, SE040, 84 );

--かめはめ波発射2
SE041 = playSeVer2( spep_1 + 464, 1226, "",spep_1 +694, 0, 32, -1);
setSeVolumeByWorkId( spep_1 + 464, SE041, 58 );
SE042 = playSeVer2( spep_1 + 464, 1213, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 464, 1161, "", 0, 0, 0, -1);

--かめはめ波威力増大
SE044 = playSeVer2( spep_1 + 538, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 538, SE044, 84 );
SE045 = playSeVer2( spep_1 + 538, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 538, SE045, 89 );

--岩貫通する
SE046 = playSeVer2( spep_1 + 626, 1068, "", 0, 0, 0, -1);

--かめはめ波覆われる
SE047 = playSeVer2( spep_1 + 668, 1161, "",spep_1 + 756, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 668, SE047, 79 );
SE048 = playSeVer2( spep_1 + 668, 1211, "",spep_1 + 756, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 668, SE048, 351 );
SE049 = playSeVer2( spep_1 + 668, 1213, "",spep_1 + 756, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 668, SE049, 79 );

-- ** ボイス ** --
--もっと本気出せ！
playVoice( spep_1 + 102, 423 );
setVoiceVolume( spep_1 + 102, 423, 100 );

--うぉああああーっ！！！！！
playVoice( spep_1 + 264, 424 );
setVoiceVolume( spep_1 + 264, 424, 100 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 672;


------------------------------------------------------
-- 後半(614F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --後半  ef_004
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 614, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 614, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 614, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 614, finish, 255 );

-- ** 音 ** --
--かめはめ波奥から迫る
SE050 = playSeVer2( spep_2 + 56, 1044, "",spep_2 + 166, 62, 34, -1);
setSeVolumeByWorkId( spep_2 + 56, SE050, 316 );
SE051 = playSeVer2( spep_2 + 56, 1211, "",spep_2 + 166, 62, 34, -1);
setSeVolumeByWorkId( spep_2 + 56, SE051, 200 );
SE052 = playSeVer2( spep_2 + 56, 1161, "",spep_2 + 166, 62, 34, -1);
SE053 = playSeVer2( spep_2 + 56, 1168, "",spep_2 + 166, 88, 22, -1);

--そして宇宙へ
SE054 = playSeVer2( spep_2 + 128, 1306, "",spep_2 + 256, 0, 84, -1);
setSeVolumeByWorkId( spep_2 + 128, SE054, 65 );
SE055 = playSeVer2( spep_2 + 128, 1307, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 128, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 128, SE056, 65 );

--環境音
SE057 = playSeVer2( spep_2 + 218, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 218, SE057, 28 );

--悟飯肩に手を置く
SE058 = playSeVer2( spep_2 + 276, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276 , SE058, 60 );

-- ** ボイス ** --
--悟飯　よくがんばったな
playVoice( spep_2 + 263, 425 );
setVoiceVolume( spep_2 + 263, 424, 100 );

--はい！
playVoice( spep_2 + 431, 426 );
setVoiceVolume( spep_2 + 431, 425, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 614 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 386);
endPhase( spep_2 + 504 );

else end