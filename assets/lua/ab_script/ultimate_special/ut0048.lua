--1026160:孫悟空_元気玉(アクティブ)
--sp_effect_a2_00204

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
SP_01 = 161485;	--全員飛行	ef_001
SP_02 = 161486;	--ヒットエフェクト	　ef_002 ※ef_006と同時再生
SP_03 = 161487; --天津飯肘打ち  　ef_003 ※ef_007と同時再生
SP_04 = 161488; --ヤムチャ膝蹴り  　ef_004 ※ef_008と同時再生
SP_05 = 161489; --ヒットエフェクト  　ef_005 ※ef_009と同時再生
SP_06 = 161490; --クリリンパンチ(背景込)  　ef_006
SP_07 = 161491; --天津飯肘打ち入りモーション(背景込)  　ef_007
SP_08 = 161492; --背景  　ef_008
SP_09 = 161493; --元気玉(背景込)  　ef_009
SP_10 = 161509; --背景 　ef_010

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
        spep_1 = spep_0 + 176;
        spep_2 = spep_1 + 38;
        spep_3 = spep_2 + 38;
        spep_4 = spep_3 + 52;
        spep_5 = spep_4 + 438;


       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 160 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_4 + 266);      -- スキップ先フレーム指定

         -- ** 音 ** --
         --元気玉投げる
         SE033 = playSeVer2( spep_4 + 266, 1193, "",spep_4 + 328, 0, 44, -1);
         setSeVolumeByWorkId( spep_4 + 266, SE033, 71 );
         setStartTimeMs( SE033,  1167 );

         --元気玉向かってくる
         SE035 = playSeVer2( spep_4 + 266, 1161, "", 0, 40, 0, -1);
         setSeVolumeByWorkId( spep_4 + 266, SE035, 71 );

         -- ** ボイス ** --
         --「いっけぇええ！！」
         playVoice( spep_4 + 266, 592 );
         setVoiceVolume( spep_4 + 266, 592, 126 );

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アクティブスキル
------------------------------------------------------
------------------------------------------------------
-- 全員飛行(176F)
------------------------------------------------------

--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --全員飛行  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, first_f, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 176, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 176 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 176 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 176, first_f, 0 );

first_b = entryEffect( spep_0 + 0, SP_10, 0x80, -1, 0, 0, 0 ); --背景  ef_010
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 176, first_b, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, first_b, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 176, first_b, 0 );

setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 176 - 2, first_b, 255 );
setEffAlphaKey( spep_0 + 176 - 1, first_b, 255 );
setEffAlphaKey( spep_0 + 176, first_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 174, 1, 0 );

changeAnime( spep_0 + 122, 1, 0 );

setMoveKey( spep_0 + 122, 1, -249.3, -151.5 , 0 );
setMoveKey( spep_0 + 124, 1, -248.3, -151.6 , 0 );
setMoveKey( spep_0 + 126, 1, -247.2, -151.8 , 0 );
setMoveKey( spep_0 + 128, 1, -246.1, -151.8 , 0 );
setMoveKey( spep_0 + 130, 1, -244.9, -151.9 , 0 );
setMoveKey( spep_0 + 132, 1, -243.7, -151.9 , 0 );
setMoveKey( spep_0 + 134, 1, -242.4, -151.9 , 0 );
setMoveKey( spep_0 + 136, 1, -241.2, -151.9 , 0 );
setMoveKey( spep_0 + 138, 1, -239.9, -151.9 , 0 );
setMoveKey( spep_0 + 140, 1, -238.6, -151.9 , 0 );
setMoveKey( spep_0 + 142, 1, -237.3, -151.8 , 0 );
setMoveKey( spep_0 + 144, 1, -236, -151.7 , 0 );
setMoveKey( spep_0 + 146, 1, -234.6, -151.6 , 0 );
setMoveKey( spep_0 + 148, 1, -233.3, -151.5 , 0 );
setMoveKey( spep_0 + 150, 1, -231.9, -151.3 , 0 );
setMoveKey( spep_0 + 152, 1, -230.5, -151.1 , 0 );
setMoveKey( spep_0 + 154, 1, -229.2, -150.9 , 0 );
setMoveKey( spep_0 + 156, 1, -227.7, -150.6 , 0 );
setMoveKey( spep_0 + 158, 1, -226.4, -150.3 , 0 );
setMoveKey( spep_0 + 160, 1, -225, -150 , 0 );

setScaleKey( spep_0 + 122, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 124, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 126, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 128, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 130, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 132, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 134, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 136, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 138, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 140, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 142, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 144, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 146, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 148, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 150, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 152, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 154, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 156, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 158, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 160, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 122, 1, 0 );
setRotateKey( spep_0 + 124, 1, -0.4 );
setRotateKey( spep_0 + 126, 1, -0.9 );
setRotateKey( spep_0 + 128, 1, -1.4 );
setRotateKey( spep_0 + 130, 1, -2 );
setRotateKey( spep_0 + 132, 1, -2.5 );
setRotateKey( spep_0 + 134, 1, -3.1 );
setRotateKey( spep_0 + 136, 1, -3.6 );
setRotateKey( spep_0 + 138, 1, -4.2 );
setRotateKey( spep_0 + 140, 1, -4.8 );
setRotateKey( spep_0 + 142, 1, -5.4 );
setRotateKey( spep_0 + 144, 1, -6 );
setRotateKey( spep_0 + 146, 1, -6.7 );
setRotateKey( spep_0 + 148, 1, -7.3 );
setRotateKey( spep_0 + 150, 1, -8 );
setRotateKey( spep_0 + 152, 1, -8.6 );
setRotateKey( spep_0 + 154, 1, -9.3 );
setRotateKey( spep_0 + 156, 1, -9.9 );
setRotateKey( spep_0 + 158, 1, -10.6 );
setRotateKey( spep_0 + 160, 1, -11.3 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 172, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--飛び上がる
SE002 = playSeVer2( spep_0 + 8, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 174 );
SE003 = playSeVer2( spep_0 + 8, 44, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 8, 1048, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 8, 1182, "",spep_0 + 32, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 8, 1207, "",spep_0 + 62, 0, 26, -1);

--飛んでくる
SE007 = playSeVer2( spep_0 + 74, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 74, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 78, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE009, 67 );
SE010 = playSeVer2( spep_0 + 78, 1072, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 100, 1116, "",spep_0 + 160, 0, 38, -1);

--画面遷移
SE012 = playSeVer2( spep_0 + 138, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 176 + 2, 0, 0, 0, 0, 255); 

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 160 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
   
    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -225, -150 , 0 );
    setMoveKey( SP_dodge + 2, 1, -223.5, -149.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, -222.1, -149.3 , 0 );
    setMoveKey( SP_dodge + 6, 1, -220.6, -148.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, -219, -148.4 , 0 );
    setMoveKey( SP_dodge + 10, 1, -217.5, -147.9 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.4, 0.4 );
    setScaleKey( SP_dodge + 2, 1, 0.39, 0.39 );
    setScaleKey( SP_dodge + 4, 1, 0.38, 0.38 );
    setScaleKey( SP_dodge + 6, 1, 0.37, 0.37 );
    setScaleKey( SP_dodge + 8, 1, 0.36, 0.36 );
    setScaleKey( SP_dodge + 10, 1, 0.35, 0.35 );

    setRotateKey( SP_dodge + 0, 1, -11.3 );
    setRotateKey( SP_dodge + 2, 1, -12.1 );
    setRotateKey( SP_dodge + 4, 1, -12.8 );
    setRotateKey( SP_dodge + 6, 1, -13.5 );
    setRotateKey( SP_dodge + 8, 1, -14.3 );
    setRotateKey( SP_dodge + 10, 1, -15.1 );

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end

--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
setMoveKey( spep_0 + 162, 1, -223.5, -149.7 , 0 );
setMoveKey( spep_0 + 164, 1, -222.1, -149.3 , 0 );
setMoveKey( spep_0 + 166, 1, -220.6, -148.9 , 0 );
setMoveKey( spep_0 + 168, 1, -219, -148.4 , 0 );
setMoveKey( spep_0 + 170, 1, -217.5, -147.9 , 0 );
setMoveKey( spep_0 + 172, 1, -216, -147.3 , 0 );
setMoveKey( spep_0 + 174, 1, -214.3, -146.6 , 0 );

setScaleKey( spep_0 + 162, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 164, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 166, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 168, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 170, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 172, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 174, 1, 0.33, 0.33 );

setRotateKey( spep_0 + 162, 1, -12.1 );
setRotateKey( spep_0 + 164, 1, -12.8 );
setRotateKey( spep_0 + 166, 1, -13.5 );
setRotateKey( spep_0 + 168, 1, -14.3 );
setRotateKey( spep_0 + 170, 1, -15.1 );
setRotateKey( spep_0 + 172, 1, -16 );
setRotateKey( spep_0 + 174, 1, -16.8 );


--白フェード
entryFade( spep_0 + 162 , 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;


------------------------------------------------------
-- クリリンパンチ(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
punch_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --ヒットエフェクト  　ef_002
setEffMoveKey( spep_1 + 0, punch_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 38, punch_f, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 38, punch_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, punch_f, 0 );
setEffRotateKey( spep_1 + 38, punch_f, 0 );

setEffAlphaKey( spep_1 + 0, punch_f, 255 );
setEffAlphaKey( spep_1 + 38 - 2, punch_f, 255 );
setEffAlphaKey( spep_1 + 38 - 1, punch_f, 255 );
setEffAlphaKey( spep_1 + 38, punch_f, 0 );

punch_b = entryEffect( spep_1 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --クリリンパンチ(背景込)  　ef_006
setEffMoveKey( spep_1 + 0, punch_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 38, punch_b, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 38, punch_b, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, punch_b, 0 );
setEffRotateKey( spep_1 + 38, punch_b, 0 );

setEffAlphaKey( spep_1 + 0, punch_b, 255 );
setEffAlphaKey( spep_1 + 38 - 2, punch_b, 255 );
setEffAlphaKey( spep_1 + 38 - 1, punch_b, 255 );
setEffAlphaKey( spep_1 + 38, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 38, 1, 0 );

changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 + 23, 1, 106 );
changeAnime( spep_1 + 24, 1, 106 );

setMoveKey( spep_1 + 0, 1, 155.2, -114 , 0 );
setMoveKey( spep_1 + 1, 1, 155.2, -114 , 0 );
setMoveKey( spep_1 + 2, 1, 155.2, -114 , 0 );
setMoveKey( spep_1 + 3, 1, 132.9, -85.8 , 0 );
setMoveKey( spep_1 + 4, 1, 132.9, -85.8 , 0 );
setMoveKey( spep_1 + 5, 1, 125.1, -83.9 , 0 ); 
setMoveKey( spep_1 + 6, 1, 125.1, -83.9 , 0 );
setMoveKey( spep_1 + 7, 1, 119.8, -78.5 , 0 ); 
setMoveKey( spep_1 + 8, 1, 119.8, -78.5 , 0 );
setMoveKey( spep_1 + 9, 1, 115.9, -74.5 , 0 );
setMoveKey( spep_1 + 10, 1, 115.9, -74.5 , 0 );
setMoveKey( spep_1 + 11, 1, 112.9, -71.4 , 0 ); 
setMoveKey( spep_1 + 12, 1, 112.9, -71.4 , 0 );
setMoveKey( spep_1 + 13, 1, 110.8, -69.1 , 0 );
setMoveKey( spep_1 + 14, 1, 110.8, -69.1 , 0 );
setMoveKey( spep_1 + 15, 1, 109.2, -67.4 , 0 );
setMoveKey( spep_1 + 16, 1, 109.2, -67.4 , 0 );
setMoveKey( spep_1 + 17, 1, 108.3, -66.3 , 0 );
setMoveKey( spep_1 + 18, 1, 108.3, -66.3 , 0 );
setMoveKey( spep_1 + 19, 1, 107.9, -70.7 , 0 );
setMoveKey( spep_1 + 20, 1, 107.9, -70.7 , 0 );
setMoveKey( spep_1 + 21, 1, 157.9, -143.7 , 0 );
setMoveKey( spep_1 + 22, 1, 157.9, -143.7 , 0 );
setMoveKey( spep_1 + 23, 1, 171, -186.1 , 0 );
setMoveKey( spep_1 + 24, 1, 171, -186.1 , 0 );
setMoveKey( spep_1 + 25, 1, 174.8, -241 , 0 );
setMoveKey( spep_1 + 26, 1, 174.8, -241 , 0 );
setMoveKey( spep_1 + 27, 1, 197.7, -221.9 , 0 );
setMoveKey( spep_1 + 28, 1, 197.7, -221.9 , 0 ); 
setMoveKey( spep_1 + 29, 1, 195.1, -259.9 , 0 );
setMoveKey( spep_1 + 30, 1, 195.1, -259.9 , 0 );
setMoveKey( spep_1 + 31, 1, 833.1, -49.3 , 0 ); 
setMoveKey( spep_1 + 32, 1, 833.1, -49.3 , 0 );
setMoveKey( spep_1 + 33, 1, 1065, -1.4 , 0 ); 
setMoveKey( spep_1 + 34, 1, 1065, -1.4 , 0 ); 
setMoveKey( spep_1 + 35, 1, 1230.2, 56.1 , 0 );
setMoveKey( spep_1 + 36, 1, 1230.2, 56.1 , 0 );
setMoveKey( spep_1 + 37, 1, 1336.1, 76.5 , 0 );
setMoveKey( spep_1 + 38, 1, 1336.1, 76.5 , 0 );

setScaleKey( spep_1 + 0, 1, 3.54, 3.54 );
setScaleKey( spep_1 + 1, 1, 3.54, 3.54 );
setScaleKey( spep_1 + 2, 1, 3.54, 3.54 );
setScaleKey( spep_1 + 3, 1, 3.41, 3.41 );
setScaleKey( spep_1 + 4, 1, 3.41, 3.41 );
setScaleKey( spep_1 + 5, 1, 3.37, 3.37 );
setScaleKey( spep_1 + 6, 1, 3.37, 3.37 );
setScaleKey( spep_1 + 7, 1, 3.35, 3.35 );
setScaleKey( spep_1 + 8, 1, 3.35, 3.35 );
setScaleKey( spep_1 + 9, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 10, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 11, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 12, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 13, 1, 3.32, 3.32 );
setScaleKey( spep_1 + 14, 1, 3.32, 3.32 );
setScaleKey( spep_1 + 15, 1, 3.32, 3.32 );
setScaleKey( spep_1 + 16, 1, 3.32, 3.32 );
setScaleKey( spep_1 + 17, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 18, 1, 3.33, 3.33 );
setScaleKey( spep_1 + 19, 1, 3.34, 3.34 );
setScaleKey( spep_1 + 20, 1, 3.34, 3.34 );
setScaleKey( spep_1 + 21, 1, 3.98, 3.98 );
setScaleKey( spep_1 + 22, 1, 3.98, 3.98 );
setScaleKey( spep_1 + 23, 1, 4.6, 4.6 );
setScaleKey( spep_1 + 24, 1, 4.6, 4.6 );
setScaleKey( spep_1 + 25, 1, 4.59, 4.59 );
setScaleKey( spep_1 + 26, 1, 4.59, 4.59 );
setScaleKey( spep_1 + 27, 1, 4.7, 4.7 );
setScaleKey( spep_1 + 28, 1, 4.7, 4.7 );
setScaleKey( spep_1 + 29, 1, 4.83, 4.83 );
setScaleKey( spep_1 + 30, 1, 4.83, 4.83 );
setScaleKey( spep_1 + 31, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 32, 1, 4.97, 4.97 );
setScaleKey( spep_1 + 33, 1, 5.08, 5.08 );
setScaleKey( spep_1 + 34, 1, 5.08, 5.08 );
setScaleKey( spep_1 + 35, 1, 5.16, 5.16 );
setScaleKey( spep_1 + 36, 1, 5.16, 5.16 );
setScaleKey( spep_1 + 37, 1, 5.21, 5.21 );
setScaleKey( spep_1 + 38, 1, 5.21, 5.21 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 20, 1, 0 );
setRotateKey( spep_1 + 21, 1, 0 );
setRotateKey( spep_1 + 22, 1, 0);
setRotateKey( spep_1 + 23, 1, -45.9 );
setRotateKey( spep_1 + 24, 1, -45.9 );
setRotateKey( spep_1 + 25, 1, -43.4 );
setRotateKey( spep_1 + 26, 1, -43.4 );
setRotateKey( spep_1 + 27, 1, -41 );
setRotateKey( spep_1 + 28, 1, -41 );
setRotateKey( spep_1 + 29, 1, -38.9 );
setRotateKey( spep_1 + 30, 1, -38.9 );
setRotateKey( spep_1 + 31, 1, -26.5 );
setRotateKey( spep_1 + 32, 1, -26.5 );
setRotateKey( spep_1 + 33, 1, -22.2 );
setRotateKey( spep_1 + 34, 1, -22.2 );
setRotateKey( spep_1 + 35, 1, -19.5 );
setRotateKey( spep_1 + 36, 1, -19.5 );
setRotateKey( spep_1 + 37, 1, -17.8 );
setRotateKey( spep_1 + 38, 1, -17.8 );

-- ** 音 ** --
--クリリン裏拳
SE013 = playSeVer2( spep_1 + 4, 1003, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 14, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 14, SE014, 81 );
SE015 = playSeVer2( spep_1 + 14, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 14, SE015, 71 );
SE016 = playSeVer2( spep_1 + 16, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 16, SE016, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 38 + 2, 0, 0, 0, 0, 255); 

--白フェード
entryFade( spep_1 + 0, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 38;

------------------------------------------------------
-- 天津飯肘打ち(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --天津飯肘打ち  　ef_003
setEffMoveKey( spep_2 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 38, elbow_f, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 38, elbow_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, elbow_f, 0 );
setEffRotateKey( spep_2 + 38, elbow_f, 0 );

setEffAlphaKey( spep_2 + 0, elbow_f, 255 );
setEffAlphaKey( spep_2 + 38 - 2, elbow_f, 255 );
setEffAlphaKey( spep_2 + 38 - 1, elbow_f, 255 );
setEffAlphaKey( spep_2 + 38, elbow_f, 0 );

elbow_b = entryEffect( spep_2 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --天津飯肘打ち入りモーション(背景込)  　ef_007
setEffMoveKey( spep_2 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 38, elbow_b, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 38, elbow_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, elbow_b, 0 );
setEffRotateKey( spep_2 + 38, elbow_b, 0 );

setEffAlphaKey( spep_2 + 0, elbow_b, 255 );
setEffAlphaKey( spep_2 + 38 - 2, elbow_b, 255 );
setEffAlphaKey( spep_2 + 38 - 1, elbow_b, 255 );
setEffAlphaKey( spep_2 + 38, elbow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 7, 1, 1 );
setDisp( spep_2 + 8, 1, 1 );
setDisp( spep_2 + 38, 1, 0 );

changeAnime( spep_2 + 7, 1, 106 );
changeAnime( spep_2 + 8, 1, 106 );
changeAnime( spep_2 + 17, 1, 7 );
changeAnime( spep_2 + 18, 1, 7 );

setMoveKey( spep_2 + 7, 1, -982.6, 30.6 , 0 );
setMoveKey( spep_2 + 8, 1, -982.6, 30.6 , 0 );
setMoveKey( spep_2 + 9, 1, -919.7, 35.6 , 0 );
setMoveKey( spep_2 + 10, 1, -919.7, 35.6 , 0 );
setMoveKey( spep_2 + 11, 1, -680.3, 73.9 , 0 );
setMoveKey( spep_2 + 12, 1, -680.3, 73.9 , 0 );
setMoveKey( spep_2 + 13, 1, -441.5, 83.3 , 0 );
setMoveKey( spep_2 + 14, 1, -441.5, 83.3 , 0 );
setMoveKey( spep_2 + 15, 1, -338.9, 90.5 , 0 );
setMoveKey( spep_2 + 16, 1, -338.9, 90.5 , 0 );
setMoveKey( spep_2 + 17, 1, -43.4, 138 , 0 );
setMoveKey( spep_2 + 18, 1, -43.4, 138 , 0 );
setMoveKey( spep_2 + 19, 1, -73.4, 138 , 0 );
setMoveKey( spep_2 + 20, 1, -73.4, 138 , 0 );
setMoveKey( spep_2 + 21, 1, -88.7, 100.3 , 0 );
setMoveKey( spep_2 + 22, 1, -88.7, 100.3 , 0 );
setMoveKey( spep_2 + 23, 1, -99.9, 130.2 , 0 );
setMoveKey( spep_2 + 24, 1, -99.9, 130.2 , 0 );
setMoveKey( spep_2 + 25, 1, -488.8, 199.2 , 0 );
setMoveKey( spep_2 + 26, 1, -488.8, 199.2 , 0 );
setMoveKey( spep_2 + 27, 1, -694.8, 254.8 , 0 );
setMoveKey( spep_2 + 28, 1, -694.8, 254.8 , 0 );
setMoveKey( spep_2 + 29, 1, -823.3, 272.6 , 0 );
setMoveKey( spep_2 + 30, 1, -823.3, 272.6 , 0 );
setMoveKey( spep_2 + 31, 1, -904.2, 294.5 , 0 );
setMoveKey( spep_2 + 32, 1, -904.2, 294.5 , 0 );
setMoveKey( spep_2 + 33, 1, -953.6, 300.5 , 0 );
setMoveKey( spep_2 + 34, 1, -953.6, 300.5 , 0 );
setMoveKey( spep_2 + 35, 1, -982.1, 309.3 , 0 );
setMoveKey( spep_2 + 36, 1, -982.1, 309.3 , 0 );
setMoveKey( spep_2 + 37, 1, -994.6, 308.9 , 0 );
setMoveKey( spep_2 + 38, 1, -994.6, 308.9 , 0 );

setScaleKey( spep_2 + 7, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 8, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 9, 1, 5.34, 5.34 );
setScaleKey( spep_2 + 10, 1, 5.34, 5.34 );
setScaleKey( spep_2 + 11, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 12, 1, 4.7, 4.7 );
setScaleKey( spep_2 + 13, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 14, 1, 4.0, 4.0 );
setScaleKey( spep_2 + 15, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 16, 1, 3.7, 3.7 );
setScaleKey( spep_2 + 17, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 18, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 19, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 20, 1, 1.29, 1.29 );
setScaleKey( spep_2 + 21, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 22, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 23, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 24, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 25, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 26, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 27, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 28, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 29, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 30, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 31, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 32, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 33, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 34, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 35, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 36, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 37, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 38, 1, 2.48, 2.48 );

setRotateKey( spep_2 + 7, 1, -6.8 );
setRotateKey( spep_2 + 8, 1, -6.8 );
setRotateKey( spep_2 + 13, 1, -6.8 );
setRotateKey( spep_2 + 14, 1, -6.8 );
setRotateKey( spep_2 + 15, 1, -3.1 );
setRotateKey( spep_2 + 16, 1, -3.1 );
setRotateKey( spep_2 + 17, 1, 32.1 );
setRotateKey( spep_2 + 18, 1, 32.1 );
setRotateKey( spep_2 + 19, 1, 30.6 );
setRotateKey( spep_2 + 20, 1, 30.6 );
setRotateKey( spep_2 + 21, 1, 29.1 );
setRotateKey( spep_2 + 22, 1, 29.1 );
setRotateKey( spep_2 + 23, 1, 27.6 );
setRotateKey( spep_2 + 24, 1, 27.6 );
setRotateKey( spep_2 + 38, 1, 27.6 );

-- ** 音 ** --
--天津飯エルボー
SE017 = playSeVer2( spep_2 + 8, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE017, 71 );
SE018 = playSeVer2( spep_2 + 8, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE018, 79 );
SE019 = playSeVer2( spep_2 + 8, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE019, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 38 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 38;

------------------------------------------------------
-- ヤムチャ膝蹴り(52F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --ヤムチャ膝蹴り  　ef_004
setEffMoveKey( spep_3 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 52, kick_f, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 52, kick_f, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 52, kick_f, 0 );

setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 52 - 2, kick_f, 255 );
setEffAlphaKey( spep_3 + 52 - 1, kick_f, 255 );
setEffAlphaKey( spep_3 + 52, kick_f, 0 );

kick_b = entryEffect( spep_3 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --背景  　ef_008
setEffMoveKey( spep_3 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 52, kick_b, 0, 0, 0 );

setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 52, kick_b, 1.0, 1.0 );

setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 52, kick_b, 0 );

setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 52 - 2, kick_b, 255 );
setEffAlphaKey( spep_3 + 52 - 1, kick_b, 255 );
setEffAlphaKey( spep_3 + 52, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 12, 1, 1 );
setDisp( spep_3 + 52, 1, 0 );

changeAnime( spep_3 + 10, 1, 7 );
changeAnime( spep_3 + 23, 1, 108 );
changeAnime( spep_3 + 24, 1, 108 );

setMoveKey( spep_3 + 12, 1, 516.4, 182.3 , 0 );
setMoveKey( spep_3 + 13, 1, 390.4, 149.4 , 0 );
setMoveKey( spep_3 + 14, 1, 390.4, 149.4 , 0 );
setMoveKey( spep_3 + 15, 1, 313.4, 158 , 0 );
setMoveKey( spep_3 + 16, 1, 313.4, 158 , 0 );
setMoveKey( spep_3 + 17, 1, 265.3, 158 , 0 );
setMoveKey( spep_3 + 18, 1, 265.3, 158 , 0 );
setMoveKey( spep_3 + 19, 1, 245.1, 156.5 , 0 );
setMoveKey( spep_3 + 20, 1, 245.1, 156.5 , 0 );
setMoveKey( spep_3 + 21, 1, 335.7, 150.1 , 0 );
setMoveKey( spep_3 + 22, 1, 335.7, 150.1 , 0 );
setMoveKey( spep_3 + 23, 1, 259.7, 42.7 , 0 );
setMoveKey( spep_3 + 24, 1, 259.7, 42.7 , 0 );
setMoveKey( spep_3 + 25, 1, 271.8, 63.4 , 0 );
setMoveKey( spep_3 + 26, 1, 271.8, 63.4 , 0 );
setMoveKey( spep_3 + 27, 1, 297.3, 27.6 , 0 );
setMoveKey( spep_3 + 28, 1, 297.3, 27.6 , 0 );
setMoveKey( spep_3 + 29, 1, 301.2, 50.2 , 0 );
setMoveKey( spep_3 + 30, 1, 301.2, 50.2 , 0 );
setMoveKey( spep_3 + 31, 1, 301.6, 40.6 , 0 );
setMoveKey( spep_3 + 32, 1, 301.6, 40.6 , 0 );
setMoveKey( spep_3 + 33, 1, 301.9, 70.4 , 0 );
setMoveKey( spep_3 + 34, 1, 301.9, 70.4 , 0 );
setMoveKey( spep_3 + 35, 1, 301.9, 70.4 , 0 );
setMoveKey( spep_3 + 36, 1, 301.9, 70.4 , 0 );
setMoveKey( spep_3 + 37, 1, 621.7, 499.7 , 0 );
setMoveKey( spep_3 + 38, 1, 621.7, 499.7 , 0 );
setMoveKey( spep_3 + 40, 1, 788.5, 661.8 , 0 );
setMoveKey( spep_3 + 42, 1, 828, 790.9 , 0 );
setMoveKey( spep_3 + 44, 1, 894.7, 876.2 , 0 );
setMoveKey( spep_3 + 46, 1, 944.4, 948.1 , 0 );
setMoveKey( spep_3 + 48, 1, 980, 992.8 , 0 );
setMoveKey( spep_3 + 50, 1, 1003.2, 1028 , 0 );
setMoveKey( spep_3 + 52, 1, 1015.1, 1041.6 , 0 );

setScaleKey( spep_3 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 13, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 14, 1, 1.11, 1.11 );
setScaleKey( spep_3 + 15, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 16, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 17, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 18, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 19, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 20, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 21, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 22, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 23, 1, 4.68, 4.68 );
setScaleKey( spep_3 + 24, 1, 4.68, 4.68 );
setScaleKey( spep_3 + 25, 1, 4.52, 4.52 );
setScaleKey( spep_3 + 26, 1, 4.52, 4.52 );
setScaleKey( spep_3 + 27, 1, 4.52, 4.52 );
setScaleKey( spep_3 + 28, 1, 4.52, 4.52 );
setScaleKey( spep_3 + 29, 1, 4.59, 4.59 );
setScaleKey( spep_3 + 30, 1, 4.59, 4.59 );
setScaleKey( spep_3 + 31, 1, 4.59, 4.59 );
setScaleKey( spep_3 + 32, 1, 4.59, 4.59 );
setScaleKey( spep_3 + 33, 1, 4.66, 4.66 );
setScaleKey( spep_3 + 34, 1, 4.66, 4.66 );
setScaleKey( spep_3 + 35, 1, 4.64, 4.64 );
setScaleKey( spep_3 + 36, 1, 4.64, 4.64 );
setScaleKey( spep_3 + 37, 1, 4.62, 4.62 );
setScaleKey( spep_3 + 38, 1, 4.62, 4.62 );
setScaleKey( spep_3 + 40, 1, 3.93, 3.93 );
setScaleKey( spep_3 + 42, 1, 3.77, 3.77 );
setScaleKey( spep_3 + 44, 1, 3.65, 3.65 );
setScaleKey( spep_3 + 46, 1, 3.56, 3.56 );
setScaleKey( spep_3 + 48, 1, 3.48, 3.48 );
setScaleKey( spep_3 + 50, 1, 3.43, 3.43 );
setScaleKey( spep_3 + 52, 1, 3.39, 3.39 );

setRotateKey( spep_3 + 12, 1, 6.5 );
setRotateKey( spep_3 + 13, 1, 6.5 );
setRotateKey( spep_3 + 14, 1, 4.8 );
setRotateKey( spep_3 + 15, 1, 4.8 );
setRotateKey( spep_3 + 16, 1, 2.8 );
setRotateKey( spep_3 + 22, 1, 2.8 );
setRotateKey( spep_3 + 23, 1, -42.1 );
setRotateKey( spep_3 + 24, 1, -42.1 );
setRotateKey( spep_3 + 25, 1, -42.1 );
setRotateKey( spep_3 + 26, 1, -42.1 );
setRotateKey( spep_3 + 27, 1, -43.6 );
setRotateKey( spep_3 + 28, 1, -43.6 );
setRotateKey( spep_3 + 29, 1, -45.1 );
setRotateKey( spep_3 + 30, 1, -45.1 );
setRotateKey( spep_3 + 31, 1, -46.6 );
setRotateKey( spep_3 + 32, 1, -46.6 );
setRotateKey( spep_3 + 33, 1, -48.1 );
setRotateKey( spep_3 + 34, 1, -48.1 );
setRotateKey( spep_3 + 35, 1, -49.6 );
setRotateKey( spep_3 + 36, 1, -49.6 );
setRotateKey( spep_3 + 37, 1, -51.1 );
setRotateKey( spep_3 + 38, 1, -51.1 );
setRotateKey( spep_3 + 52, 1, -51.1 );

-- ** 音 ** --
--ヤムチャ膝蹴り
SE020 = playSeVer2( spep_3 + 16, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 16, SE020, 85 );
SE021 = playSeVer2( spep_3 + 16, 1190, "",spep_3 + 56, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 16, SE021, 81 );
SE022 = playSeVer2( spep_3 + 16, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 16, SE022, 66 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 52 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_4 = spep_3 + 52;

------------------------------------------------------
-- 元気玉(438F)
------------------------------------------------------

-- ** エフェクト等 ** --
genki_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --ヒットエフェクト  　ef_005
setEffMoveKey( spep_4 + 0, genki_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 438, genki_f, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, genki_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 438, genki_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, genki_f, 0 );
setEffRotateKey( spep_4 + 438, genki_f, 0 );

setEffAlphaKey( spep_4 + 0, genki_f, 255 );
setEffAlphaKey( spep_4 + 438, genki_f, 255 );

genki_b = entryEffect( spep_4 + 0, SP_09, 0x80, -1, 0, 0, 0 ); --元気玉(背景込)  　ef_009
setEffMoveKey( spep_4 + 0, genki_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 438, genki_b, 0, 0, 0 );

setEffScaleKey( spep_4 + 0, genki_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 438, genki_b, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, genki_b, 0 );
setEffRotateKey( spep_4 + 438, genki_b, 0 );

setEffAlphaKey( spep_4 + 0, genki_b, 255 );
setEffAlphaKey( spep_4 + 438, genki_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 265, 1, 1 );
setDisp( spep_4 + 266, 1, 1 );
setDisp( spep_4 + 328, 1, 0 );

changeAnime( spep_4 + 266, 1, 107 );

setMoveKey( spep_4 + 265, 1, 95, -1179 , 0 );
setMoveKey( spep_4 + 266, 1, 95, -1179 , 0 );
setMoveKey( spep_4 + 267, 1, 92.8, -1189.5 , 0 );
setMoveKey( spep_4 + 268, 1, 92.8, -1189.5 , 0 );
setMoveKey( spep_4 + 269, 1, 94.4, -1172.9 , 0 );
setMoveKey( spep_4 + 270, 1, 94.4, -1172.9 , 0 );
setMoveKey( spep_4 + 271, 1, 92.8, -1170.7 , 0 );
setMoveKey( spep_4 + 272, 1, 92.8, -1170.7 , 0 );
setMoveKey( spep_4 + 273, 1, 93.1, -1149.3 , 0 );
setMoveKey( spep_4 + 274, 1, 93.1, -1149.3 , 0 );
setMoveKey( spep_4 + 275, 1, 89.7, -1134 , 0 );
setMoveKey( spep_4 + 276, 1, 89.7, -1134 , 0 );
setMoveKey( spep_4 + 277, 1, 88, -1100.2 , 0 );
setMoveKey( spep_4 + 278, 1, 88, -1100.2 , 0 );
setMoveKey( spep_4 + 279, 1, 86.2, -1069.4 , 0 );
setMoveKey( spep_4 + 280, 1, 86.2, -1069.4 , 0 );
setMoveKey( spep_4 + 281, 1, 83.9, -1014.9 , 0 );
setMoveKey( spep_4 + 282, 1, 83.9, -1014.9 , 0 );
setMoveKey( spep_4 + 283, 1, 77.9, -967.2 , 0 );
setMoveKey( spep_4 + 284, 1, 77.9, -967.2 , 0 );
setMoveKey( spep_4 + 285, 1, 71.7, -867.2 , 0 );
setMoveKey( spep_4 + 286, 1, 71.7, -867.2 , 0 );
setMoveKey( spep_4 + 287, 1, 73.8, -817.3 , 0 );
setMoveKey( spep_4 + 288, 1, 73.8, -817.3 , 0 );
setMoveKey( spep_4 + 289, 1, 60.2, -700 , 0 );
setMoveKey( spep_4 + 290, 1, 60.2, -700 , 0 );
setMoveKey( spep_4 + 291, 1, 63.6, -656 , 0 );
setMoveKey( spep_4 + 292, 1, 63.6, -656 , 0 );
setMoveKey( spep_4 + 293, 1, 53.2, -542.8 , 0 );
setMoveKey( spep_4 + 294, 1, 53.2, -542.8 , 0 );
setMoveKey( spep_4 + 295, 1, 46.9, -494.2 , 0 );
setMoveKey( spep_4 + 296, 1, 46.9, -494.2 , 0 );
setMoveKey( spep_4 + 297, 1, 46.9, -461.9 , 0 );
setMoveKey( spep_4 + 298, 1, 46.9, -461.9 , 0 );
setMoveKey( spep_4 + 299, 1, 48.4, -368.7 , 0 );
setMoveKey( spep_4 + 300, 1, 48.4, -368.7 , 0 );
setMoveKey( spep_4 + 301, 1, 38.9, -366.1 , 0 );
setMoveKey( spep_4 + 302, 1, 38.9, -366.1 , 0 );
setMoveKey( spep_4 + 303, 1, 41.8, -340 , 0 );
setMoveKey( spep_4 + 304, 1, 41.8, -340 , 0 );
setMoveKey( spep_4 + 305, 1, 41.7, -257.6 , 0 );
setMoveKey( spep_4 + 306, 1, 41.7, -257.6 , 0 );
setMoveKey( spep_4 + 307, 1, 31, -280.8 , 0 );
setMoveKey( spep_4 + 308, 1, 31, -280.8 , 0 );
setMoveKey( spep_4 + 309, 1, 38.9, -220.4 , 0 );
setMoveKey( spep_4 + 310, 1, 38.9, -220.4 , 0 );
setMoveKey( spep_4 + 311, 1, 36.3, -251.7 , 0 );
setMoveKey( spep_4 + 312, 1, 36.3, -251.7 , 0 );
setMoveKey( spep_4 + 313, 1, 34.3, -193.1 , 0 );
setMoveKey( spep_4 + 314, 1, 34.3, -193.1 , 0 );
setMoveKey( spep_4 + 315, 1, 39, -232.8 , 0 );
setMoveKey( spep_4 + 316, 1, 39, -232.8 , 0 );
setMoveKey( spep_4 + 317, 1, 29.2, -172.3 , 0 );
setMoveKey( spep_4 + 318, 1, 29.2, -172.3 , 0 );
setMoveKey( spep_4 + 319, 1, 36.4, -220.7 , 0 );
setMoveKey( spep_4 + 320, 1, 36.4, -220.7 , 0 );
setMoveKey( spep_4 + 321, 1, 31, -137.9 , 0 );
setMoveKey( spep_4 + 322, 1, 31, -137.9 , 0 );
setMoveKey( spep_4 + 323, 1, 26.5, -214.4 , 0 );
setMoveKey( spep_4 + 324, 1, 26.5, -214.4 , 0 );
setMoveKey( spep_4 + 325, 1, 35, -120.2 , 0 );
setMoveKey( spep_4 + 326, 1, 35, -120.2 , 0 );
setMoveKey( spep_4 + 327, 1, 30, -191.7 , 0 );
setMoveKey( spep_4 + 328, 1, 30, -191.7 , 0 );

setScaleKey( spep_4 + 265, 1, 3, 3 );
setScaleKey( spep_4 + 266, 1, 3, 3 );
setScaleKey( spep_4 + 267, 1, 2.99, 2.99 );
setScaleKey( spep_4 + 268, 1, 2.99, 2.99 );
setScaleKey( spep_4 + 269, 1, 2.98, 2.98 );
setScaleKey( spep_4 + 270, 1, 2.98, 2.98 );
setScaleKey( spep_4 + 271, 1, 2.96, 2.96 );
setScaleKey( spep_4 + 272, 1, 2.96, 2.96 );
setScaleKey( spep_4 + 273, 1, 2.94, 2.94 );
setScaleKey( spep_4 + 274, 1, 2.94, 2.94 );
setScaleKey( spep_4 + 275, 1, 2.9, 2.9 );
setScaleKey( spep_4 + 276, 1, 2.9, 2.9 );
setScaleKey( spep_4 + 277, 1, 2.84, 2.84 );
setScaleKey( spep_4 + 278, 1, 2.84, 2.84 );
setScaleKey( spep_4 + 279, 1, 2.77, 2.77 );
setScaleKey( spep_4 + 280, 1, 2.77, 2.77 );
setScaleKey( spep_4 + 281, 1, 2.68, 2.68 );
setScaleKey( spep_4 + 282, 1, 2.68, 2.68 );
setScaleKey( spep_4 + 283, 1, 2.57, 2.57 );
setScaleKey( spep_4 + 284, 1, 2.57, 2.57 );
setScaleKey( spep_4 + 285, 1, 2.43, 2.43 );
setScaleKey( spep_4 + 286, 1, 2.43, 2.43 );
setScaleKey( spep_4 + 287, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 288, 1, 2.28, 2.28 );
setScaleKey( spep_4 + 289, 1, 2.12, 2.12 );
setScaleKey( spep_4 + 290, 1, 2.12, 2.12 );
setScaleKey( spep_4 + 291, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 292, 1, 1.96, 1.96 );
setScaleKey( spep_4 + 293, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 294, 1, 1.82, 1.82 );
setScaleKey( spep_4 + 295, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 296, 1, 1.69, 1.69 );
setScaleKey( spep_4 + 297, 1, 1.59, 1.59 );
setScaleKey( spep_4 + 298, 1, 1.59, 1.59 );
setScaleKey( spep_4 + 299, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 300, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 301, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 302, 1, 1.42, 1.42 );
setScaleKey( spep_4 + 303, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 304, 1, 1.35, 1.35 );
setScaleKey( spep_4 + 305, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 306, 1, 1.29, 1.29 );
setScaleKey( spep_4 + 307, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 308, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 309, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 310, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 311, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 312, 1, 1.19, 1.19 );
setScaleKey( spep_4 + 313, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 314, 1, 1.17, 1.17 );
setScaleKey( spep_4 + 315, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 316, 1, 1.16, 1.16 );
setScaleKey( spep_4 + 317, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 318, 1, 1.14, 1.14 );
setScaleKey( spep_4 + 319, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 320, 1, 1.13, 1.13 );
setScaleKey( spep_4 + 321, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 322, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 323, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 324, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 325, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 326, 1, 1.09, 1.09 );
setScaleKey( spep_4 + 327, 1, 1.08, 1.08 );
setScaleKey( spep_4 + 328, 1, 1.08, 1.08 );

setRotateKey( spep_4 + 265, 1, 41.6 );
setRotateKey( spep_4 + 266, 1, 41.6 );
setRotateKey( spep_4 + 328, 1, 41.6 );

setAlphaKey( spep_4 + 266, 1, 255 );
setAlphaKey( spep_4 + 310, 1, 255 );
setAlphaKey( spep_4 + 312, 1, 221 );
setAlphaKey( spep_4 + 314, 1, 189 );
setAlphaKey( spep_4 + 316, 1, 158 );
setAlphaKey( spep_4 + 318, 1, 129 );
setAlphaKey( spep_4 + 320, 1, 100 );
setAlphaKey( spep_4 + 322, 1, 73 );
setAlphaKey( spep_4 + 324, 1, 48 );
setAlphaKey( spep_4 + 326, 1, 23 );
setAlphaKey( spep_4 + 328, 1, 0 );

-- ** 音 ** --
--セリフカットイン
SE023 = playSeVer2( spep_4 + 10, 1018, "", 0, 0, 0, -1);

--気ダメ
SE024 = playSeVer2( spep_4 + 38, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE024, 79 );

--オーラ
SE025 = playSeVer2( spep_4 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 42, SE025, 63 );
SE026 = playSeVer2( spep_4 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 66, SE026, 63 );

--元気玉溜める
SE027 = playSeVer2( spep_4 + 72, 1184, "",spep_4 + 208, 0, 16, -1);
setSeVolumeByWorkId( spep_4 + 72, SE027, 71 );
SE028 = playSeVer2( spep_4 + 72, 1185, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 72, SE028, 99 );
setPitch( spep_4 + 72, SE028, -100 ); 
setTimeStretch( SE028, 0.52, 30, 4 );
SE029 = playSeVer2( spep_4 + 72, 1158, "",spep_4 + 208, 0, 20, -1);
setSeVolumeByWorkId( spep_4 + 72, SE029, 71 );
SE030 = playSeVer2( spep_4 + 72, 1191, "",spep_4 + 174, 0, 52, -1);

--オーラ
SE031 = playSeVer2( spep_4 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 90, SE031, 63 );

--元気玉投げる
SE032 = playSeVer2( spep_4 + 188, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 188, SE032, 71 );
SE033 = playSeVer2( spep_4 + 188, 1193, "",spep_4 + 328, 0, 44, -1);
setSeVolumeByWorkId( spep_4 + 188, SE033, 71 );
SE034 = playSeVer2( spep_4 + 188, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 188, SE034, 72 );

--元気玉向かってくる
SE035 = playSeVer2( spep_4 + 228, 1161, "", 0, 40, 0, -1);
setSeVolumeByWorkId( spep_4 + 228, SE035, 71 );
SE036 = playSeVer2( spep_4 + 278, 1258, "", 0, 42, 0, -1);

--爆発
SE037 = playSeVer2( spep_4 + 294, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 294, SE037, 120 );

-- ** ボイス ** --
--「オラに元気分けてくれ！」
playVoice( spep_4 + 13, 590 );
setVoiceVolume( spep_4 + 13, 590, 141 );

--「はあぁー！！」
playVoice( spep_4 + 168, 591 );
setVoiceVolume( spep_4 + 168, 591, 126 );

--「いっけぇええ！！」
playVoice( spep_4 + 262, 592 );
setVoiceVolume( spep_4 + 262, 592, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 438 + 2, 0, 0, 0, 0, 255); 

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 328 );
endPhase( spep_4 + 428 );

else end