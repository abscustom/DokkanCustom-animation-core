--4024900:超サイヤ人孫悟空&超サイヤ人ベジータ_不可能を可能にする力(アクティブ)
--sp_effect_b4_00253

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

--エフェクト(味方側)
SP_01=	160457	;--	敵より下
SP_02=	160458	;--	敵より上
SP_03=	160459	;--	k.O.	

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


       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 +466 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1346);      -- スキップ先フレーム指定
           SE037 = playSeVer2( spep_0 + 1346, 1068, "", 0, 0, 0, -1);

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
--はじめの準備
spep_0=0;
--エフェクト
eff_f = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, eff_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1508, eff_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, eff_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1508, eff_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_f, 0 );
setEffRotateKey( spep_0 + 1508, eff_f, 0 );
setEffAlphaKey( spep_0 + 0, eff_f, 255 );
setEffAlphaKey( spep_0 + 1508, eff_f, 255 );

--エフェクト
eff_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, eff_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1508, eff_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, eff_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1508, eff_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff_b, 0 );
setEffRotateKey( spep_0 + 1508, eff_b, 0 );
setEffAlphaKey( spep_0 + 0, eff_b, 255 );
setEffAlphaKey( spep_0 + 1508, eff_b, 255 );

--敵の動き
setDisp( spep_0-3 + 378, 1, 1);
setDisp( spep_0-1 + 432, 1, 0);

changeAnime( spep_0-3 + 378, 1, 3);

setMoveKey( spep_0-3 + 378, 1, -302.5, -27.2 , 0 );
setMoveKey( spep_0-3 + 380, 1, -291.9, -30.3 , 0 );
setMoveKey( spep_0-3 + 382, 1, -281.2, -33.5 , 0 );
setMoveKey( spep_0-3 + 384, 1, -270.6, -36.6 , 0 );
setMoveKey( spep_0-3 + 386, 1, -260, -39.8 , 0 );
setMoveKey( spep_0-3 + 388, 1, -249.3, -42.9 , 0 );
setMoveKey( spep_0-3 + 390, 1, -238.7, -46 , 0 );
setMoveKey( spep_0-3 + 392, 1, -228, -49.2 , 0 );
setMoveKey( spep_0-3 + 394, 1, -217.4, -52.3 , 0 );
setMoveKey( spep_0-3 + 396, 1, -206.8, -55.5 , 0 );
setMoveKey( spep_0-3 + 398, 1, -196.1, -58.6 , 0 );
setMoveKey( spep_0-3 + 400, 1, -185.5, -61.7 , 0 );
setMoveKey( spep_0-3 + 402, 1, -174.9, -64.9 , 0 );
setMoveKey( spep_0-3 + 404, 1, -164.2, -68 , 0 );
setMoveKey( spep_0-3 + 406, 1, -153.6, -71.2 , 0 );
setMoveKey( spep_0-3 + 408, 1, -142.9, -74.3 , 0 );
setMoveKey( spep_0-3 + 410, 1, -132.3, -77.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, -121.7, -80.6 , 0 );
setMoveKey( spep_0-3 + 414, 1, -111, -83.7 , 0 );
setMoveKey( spep_0-3 + 416, 1, -100.4, -86.9 , 0 );
setMoveKey( spep_0-3 + 418, 1, -89.8, -90 , 0 );
setMoveKey( spep_0-3 + 420, 1, -79.1, -93.2 , 0 );
setMoveKey( spep_0-3 + 422, 1, -68.5, -96.3 , 0 );
setMoveKey( spep_0-3 + 424, 1, -57.8, -99.4 , 0 );
setMoveKey( spep_0-3 + 426, 1, -47.2, -102.6 , 0 );
setMoveKey( spep_0-3 + 428, 1, -36.6, -105.7 , 0 );
setMoveKey( spep_0-3 + 430, 1, -25.9, -108.9 , 0 );
setMoveKey( spep_0-1 + 432, 1, -15.3, -112 , 0 );

setScaleKey( spep_0-3 + 378, 1, 0.25, 0.25 );
setScaleKey( spep_0-1 + 432, 1, 0.25, 0.25 );

setRotateKey( spep_0-3 + 378, 1, 20 );
setRotateKey( spep_0-1 + 432, 1, 20 );

--SE
--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--悟空気ダメ
SE003 = playSeVer2( spep_0 + 334, 1035, "", 0, 0, 0, -1); 
setSeVolumeByWorkId( spep_0 + 334, SE003, 141 );
SE004 = playSeVer2( spep_0 + 334, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE004, 56 );
SE005 = playSeVer2( spep_0 + 334, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE005, 74 );
setPitch( spep_0 + 334, SE005, 400 );
setTimeStretch( SE005, 1.27, 30, 4 );

--オーラ
SE006 = playSeVer2( spep_0 + 352, 1036, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 376, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE007, 50 );

--敵向かってくる
SE008 = playSeVer2( spep_0 + 376, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE008, 68 );
SE009 = playSeVer2( spep_0 + 376, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 376, SE009, 63 );

--オーラ
SE010 = playSeVer2( spep_0 + 400, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE010, 50 );
SE011 = playSeVer2( spep_0 + 424, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 424, SE011, 50 );

--気弾飛んでくる
SE012 = playSeVer2( spep_0 + 444, 1072, "", 0, 8, 0, -1);
setStartTimeMs( SE012,  300 );
SE013 = playSeVer2( spep_0 + 432, 1145, "",spep_0 + 514, 0, 52, -1);
SE014 = playSeVer2( spep_0 + 438, 1116, "",spep_0 + 498, 0, 22, -1);
SE015 = playSeVer2( spep_0 + 442, 1304, "",spep_0 + 516, 0, 16, -1);

--ボイス
--無理とわかっていても、やんなきゃならねえ時だってあるんだ！
playVoice( spep_0 + 0, 496 );
setVoiceVolume( spep_0 + 0, 496, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 1508, 0, 0, 0, 0, 255);       -- ベース暗め　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 +466; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );


    setVoiceVolume( SP_dodge - 12, 463, 0 );

    setVoiceVolume( SP_dodge - 12, 445, 0 );

    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 9, 1, 112.5, 91.1 , 0 );
    setScaleKey( SP_dodge + 9, 1, 0.2, 0.2 );
    setRotateKey( SP_dodge + 9, 1, 0 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** エフェクト等 ** --
KO = entryEffect( spep_0 + 1496, SP_03, 0x100, -1, 0, 0, 0 );  --KO演出(ef_005)
setEffMoveKey( spep_0 + 1496, KO, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1786, KO, 0, 0 , 0 );
setEffScaleKey( spep_0 + 1496, KO, 1.0 , 1.0 );
setEffScaleKey( spep_0 + 1786, KO, 1.0 , 1.0 );
setEffRotateKey( spep_0 + 1496, KO, 0 );
setEffRotateKey( spep_0 + 1786, KO, 0 );
setEffAlphaKey( spep_0 + 1496, KO, 255 );
setEffAlphaKey( spep_0 + 1786, KO, 255 );

--敵の動き
setDisp( spep_0-3 + 480, 1, 1);
setDisp( spep_0-1 + 598, 1, 0);

changeAnime( spep_0-3 + 480, 1, 11);
changeAnime( spep_0-3 + 481, 1, 11);
changeAnime( spep_0-3 + 482, 1, 11);
changeAnime( spep_0-3 + 483, 1, 11);
changeAnime( spep_0-3 + 484, 1, 11);
changeAnime( spep_0-3 + 485, 1, 11);
changeAnime( spep_0-3 + 486, 1, 11);
changeAnime( spep_0-3 + 487, 1, 11);
changeAnime( spep_0-3 + 488, 1, 11);
changeAnime( spep_0-3 + 489, 1, 11);
changeAnime( spep_0-3 + 490, 1, 11);
changeAnime( spep_0-3 + 491, 1, 11);
changeAnime( spep_0-3 + 492, 1, 11);
changeAnime( spep_0-3 + 493, 1, 11);
changeAnime( spep_0-3 + 494, 1, 11);
changeAnime( spep_0-3 + 495, 1, 11);
changeAnime( spep_0-3 + 496, 1, 8);
changeAnime( spep_0-3 + 540, 1, 5);

setMoveKey( spep_0-3 + 480, 1, -423.6, 115.3 , 0 );
setMoveKey( spep_0-3 + 482, 1, -363.6, 91.9 , 0 );
setMoveKey( spep_0-3 + 484, 1, -303.6, 68.4 , 0 );
setMoveKey( spep_0-3 + 486, 1, -243.6, 44.9 , 0 );
setMoveKey( spep_0-3 + 488, 1, -183.6, 21.5 , 0 );
setMoveKey( spep_0-3 + 490, 1, -123.6, -2 , 0 );
setMoveKey( spep_0-3 + 492, 1, -63.6, -25.5 , 0 );
setMoveKey( spep_0-3 + 494, 1, -3.5, -49 , 0 );
setMoveKey( spep_0-3 + 495, 1, -3.5, -49 , 0 );

setMoveKey( spep_0-3 + 496, 1, -73, 16 , 0 );
setMoveKey( spep_0-3 + 498, 1, -117.1, 32.3 , 0 );
setMoveKey( spep_0-3 + 500, 1, -130.1, 60 , 0 );
setMoveKey( spep_0-3 + 502, 1, -151.4, 47.5 , 0 );
setMoveKey( spep_0-3 + 504, 1, -151.2, 55.5 , 0 );
setMoveKey( spep_0-3 + 506, 1, -158.9, 52.8 , 0 );
setMoveKey( spep_0-3 + 508, 1, -165.1, 48.6 , 0 );
setMoveKey( spep_0-3 + 510, 1, -167.3, 63.9 , 0 );
setMoveKey( spep_0-3 + 512, 1, -173.5, 57.9 , 0 );
setMoveKey( spep_0-3 + 514, 1, -184, 67.8 , 0 );
setMoveKey( spep_0-3 + 516, 1, -179.7, 51.3 , 0 );
setMoveKey( spep_0-3 + 518, 1, -176.4, 65.1 , 0 );
setMoveKey( spep_0-3 + 520, 1, -181.9, 56.8 , 0 );
setMoveKey( spep_0-3 + 522, 1, -183.5, 65.7 , 0 );
setMoveKey( spep_0-3 + 524, 1, -182.6, 56.5 , 0 );
setMoveKey( spep_0-3 + 526, 1, -184.1, 62.9 , 0 );
setMoveKey( spep_0-3 + 528, 1, -185.7, 59.6 , 0 );
setMoveKey( spep_0-3 + 530, 1, -187.2, 66 , 0 );
setMoveKey( spep_0-3 + 532, 1, -188.8, 67.6 , 0 );
setMoveKey( spep_0-3 + 534, 1, -190.3, 61.8 , 0 );
setMoveKey( spep_0-3 + 536, 1, -191.9, 73.1 , 0 );
setMoveKey( spep_0-3 + 538, 1, -191, 62.4 , 0 );
setMoveKey( spep_0-3 + 539, 1, -191, 62.4 , 0 );

setMoveKey( spep_0-3 + 540, 1, -160.4, 77.8 , 0 );
setMoveKey( spep_0-3 + 542, 1, -165.6, 78.8 , 0 );
setMoveKey( spep_0-3 + 544, 1, -170.7, 79.9 , 0 );
setMoveKey( spep_0-3 + 546, 1, -175.7, 80.9 , 0 );
setMoveKey( spep_0-3 + 548, 1, -180.6, 81.9 , 0 );
setMoveKey( spep_0-3 + 550, 1, -185.4, 82.9 , 0 );
setMoveKey( spep_0-3 + 552, 1, -190.2, 83.8 , 0 );
setMoveKey( spep_0-3 + 554, 1, -194.9, 84.8 , 0 );
setMoveKey( spep_0-3 + 556, 1, -199.5, 85.7 , 0 );
setMoveKey( spep_0-3 + 558, 1, -204, 86.5 , 0 );
setMoveKey( spep_0-3 + 560, 1, -208.4, 87.4 , 0 );
setMoveKey( spep_0-3 + 562, 1, -212.7, 88.2 , 0 );
setMoveKey( spep_0-3 + 564, 1, -217, 89 , 0 );
setMoveKey( spep_0-3 + 566, 1, -221.2, 89.8 , 0 );
setMoveKey( spep_0-3 + 568, 1, -225.3, 90.5 , 0 );
setMoveKey( spep_0-3 + 570, 1, -229.3, 91.3 , 0 );
setMoveKey( spep_0-3 + 572, 1, -233.2, 92 , 0 );
setMoveKey( spep_0-3 + 574, 1, -237, 92.6 , 0 );
setMoveKey( spep_0-3 + 576, 1, -240.8, 93.3 , 0 );
setMoveKey( spep_0-3 + 578, 1, -244.5, 93.9 , 0 );
setMoveKey( spep_0-3 + 580, 1, -248.1, 94.5 , 0 );
setMoveKey( spep_0-3 + 582, 1, -251.6, 95.1 , 0 );
setMoveKey( spep_0-3 + 584, 1, -255, 95.6 , 0 );
setMoveKey( spep_0-3 + 586, 1, -258.4, 96.2 , 0 );
setMoveKey( spep_0-3 + 588, 1, -261.6, 96.7 , 0 );
setMoveKey( spep_0-3 + 590, 1, -264.8, 97.1 , 0 );
setMoveKey( spep_0-3 + 592, 1, -268, 97.6 , 0 );
setMoveKey( spep_0-3 + 594, 1, -271, 98 , 0 );
setMoveKey( spep_0-3 + 596, 1, -274, 98.4 , 0 );
setMoveKey( spep_0-1 + 598, 1, -276.9, 98.8 , 0 );

setScaleKey( spep_0-3 + 480, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 495, 1, 1.8, 1.8 );

setScaleKey( spep_0-3 + 496, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 539, 1, 1.8, 1.8 );

setScaleKey( spep_0-3 + 540, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 542, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 544, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 546, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 548, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 552, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 554, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 558, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 560, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 564, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 566, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 572, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 574, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 580, 1, 0.32, 0.32 );
setScaleKey( spep_0-3 + 582, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 590, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 592, 1, 0.3, 0.3 );
setScaleKey( spep_0-1 + 598, 1, 0.3, 0.3 );

setRotateKey( spep_0-3 + 480, 1, 20 );
setRotateKey( spep_0-3 + 495, 1, 20 );

setRotateKey( spep_0-3 + 496, 1, 20 );
setRotateKey( spep_0-3 + 539, 1, 20 );

setRotateKey( spep_0-3 + 540, 1, 0 );
setRotateKey( spep_0-3 + 542, 1, -1 );
setRotateKey( spep_0-3 + 544, 1, -2 );
setRotateKey( spep_0-3 + 546, 1, -3 );
setRotateKey( spep_0-3 + 548, 1, -3.9 );
setRotateKey( spep_0-3 + 550, 1, -4.9 );
setRotateKey( spep_0-3 + 552, 1, -5.8 );
setRotateKey( spep_0-3 + 554, 1, -6.7 );
setRotateKey( spep_0-3 + 556, 1, -7.5 );
setRotateKey( spep_0-3 + 558, 1, -8.3 );
setRotateKey( spep_0-3 + 560, 1, -9.2 );
setRotateKey( spep_0-3 + 562, 1, -9.9 );
setRotateKey( spep_0-3 + 564, 1, -10.7 );
setRotateKey( spep_0-3 + 566, 1, -11.4 );
setRotateKey( spep_0-3 + 568, 1, -12.2 );
setRotateKey( spep_0-3 + 570, 1, -12.8 );
setRotateKey( spep_0-3 + 572, 1, -13.5 );
setRotateKey( spep_0-3 + 574, 1, -14.1 );
setRotateKey( spep_0-3 + 576, 1, -14.8 );
setRotateKey( spep_0-3 + 578, 1, -15.4 );
setRotateKey( spep_0-3 + 580, 1, -15.9 );
setRotateKey( spep_0-3 + 582, 1, -16.5 );
setRotateKey( spep_0-3 + 584, 1, -17 );
setRotateKey( spep_0-3 + 586, 1, -17.5 );
setRotateKey( spep_0-3 + 588, 1, -18 );
setRotateKey( spep_0-3 + 590, 1, -18.4 );
setRotateKey( spep_0-3 + 592, 1, -18.9 );
setRotateKey( spep_0-3 + 594, 1, -19.3 );
setRotateKey( spep_0-3 + 596, 1, -19.6 );
setRotateKey( spep_0-1 + 598, 1, -20 );

--敵の動き
setDisp( spep_0-3 + 1130, 1, 1);
setDisp( spep_0-1 + 1220, 1, 0);

changeAnime( spep_0-3 + 1130, 1, 5);
changeAnime( spep_0-3 + 1186, 1, 8);

setMoveKey( spep_0-3 + 1130, 1, 514.9, -203.2 , 0 );
setMoveKey( spep_0-3 + 1132, 1, 441.3, -181.7 , 0 );
setMoveKey( spep_0-3 + 1134, 1, 367.6, -160.1 , 0 );
setMoveKey( spep_0-3 + 1136, 1, 294, -138.6 , 0 );
setMoveKey( spep_0-3 + 1138, 1, 220.4, -117 , 0 );
setMoveKey( spep_0-3 + 1140, 1, 189.2, -108.6 , 0 );
setMoveKey( spep_0-3 + 1142, 1, 158.1, -100.1 , 0 );
setMoveKey( spep_0-3 + 1144, 1, 127, -91.7 , 0 );
setMoveKey( spep_0-3 + 1146, 1, 95.9, -83.2 , 0 );
setMoveKey( spep_0-3 + 1148, 1, 64.8, -74.8 , 0 );
setMoveKey( spep_0-3 + 1150, 1, 59.1, -73.5 , 0 );
setMoveKey( spep_0-3 + 1152, 1, 53.4, -72.3 , 0 );
setMoveKey( spep_0-3 + 1154, 1, 47.7, -71 , 0 );
setMoveKey( spep_0-3 + 1156, 1, 42, -69.7 , 0 );
setMoveKey( spep_0-3 + 1158, 1, 36.3, -68.4 , 0 );
setMoveKey( spep_0-3 + 1160, 1, 30.6, -67.1 , 0 );
setMoveKey( spep_0-3 + 1162, 1, 24.9, -65.9 , 0 );
setMoveKey( spep_0-3 + 1164, 1, 19.2, -64.6 , 0 );
setMoveKey( spep_0-3 + 1166, 1, 13.5, -63.3 , 0 );
setMoveKey( spep_0-3 + 1168, 1, 7.8, -62 , 0 );
setMoveKey( spep_0-3 + 1170, 1, 2.1, -60.8 , 0 );
setMoveKey( spep_0-3 + 1172, 1, -3.6, -59.5 , 0 );
setMoveKey( spep_0-3 + 1174, 1, -9.3, -58.2 , 0 );
setMoveKey( spep_0-3 + 1176, 1, -15, -56.9 , 0 );
setMoveKey( spep_0-3 + 1178, 1, -20.7, -55.7 , 0 );
setMoveKey( spep_0-3 + 1180, 1, -26.4, -54.4 , 0 );
setMoveKey( spep_0-3 + 1182, 1, -32.1, -53.1 , 0 );
setMoveKey( spep_0-3 + 1184, 1, -37.8, -51.8 , 0 );
setMoveKey( spep_0-3 + 1185, 1, -37.8, -51.8 , 0 );

setMoveKey( spep_0-3 + 1186, 1, -72.9, -46 , 0 );
setMoveKey( spep_0-3 + 1188, 1, -74.1, -46 , 0 );
setMoveKey( spep_0-3 + 1190, 1, -75.3, -46 , 0 );
setMoveKey( spep_0-3 + 1192, 1, -76.9, -45.2 , 0 );
setMoveKey( spep_0-3 + 1194, 1, -78.4, -44.4 , 0 );
setMoveKey( spep_0-3 + 1196, 1, -80, -43.6 , 0 );
setMoveKey( spep_0-3 + 1198, 1, -81.5, -42.8 , 0 );
setMoveKey( spep_0-3 + 1200, 1, -83, -42 , 0 );
setMoveKey( spep_0-3 + 1202, 1, -84.6, -41.2 , 0 );
setMoveKey( spep_0-3 + 1204, 1, -86.1, -40.4 , 0 );
setMoveKey( spep_0-3 + 1206, 1, -87.7, -39.6 , 0 );
setMoveKey( spep_0-3 + 1208, 1, -89.2, -38.8 , 0 );
setMoveKey( spep_0-3 + 1210, 1, -90.7, -38 , 0 );
setMoveKey( spep_0-3 + 1212, 1, -92.3, -37.2 , 0 );
setMoveKey( spep_0-3 + 1214, 1, -93.1, -37.2 , 0 );
setMoveKey( spep_0-3 + 1216, 1, -93.9, -37.2 , 0 );
setMoveKey( spep_0-3 + 1218, 1, -94.7, -37.2 , 0 );
setMoveKey( spep_0-1 + 1220, 1, -99.6, -34.7 , 0 );

setScaleKey( spep_0-3 + 1130, 1, 3.1, 3.1 );
setScaleKey( spep_0-3 + 1132, 1, 2.85, 2.85 );
setScaleKey( spep_0-3 + 1134, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 1136, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 1138, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 1140, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 1142, 1, 1.86, 1.86 );
setScaleKey( spep_0-3 + 1144, 1, 1.74, 1.74 );
setScaleKey( spep_0-3 + 1146, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 1148, 1, 1.5, 1.5 );
setScaleKey( spep_0-3 + 1150, 1, 1.47, 1.47 );
setScaleKey( spep_0-3 + 1152, 1, 1.43, 1.43 );
setScaleKey( spep_0-3 + 1154, 1, 1.4, 1.4 );
setScaleKey( spep_0-3 + 1156, 1, 1.37, 1.37 );
setScaleKey( spep_0-3 + 1158, 1, 1.33, 1.33 );
setScaleKey( spep_0-3 + 1160, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 1162, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 1164, 1, 1.23, 1.23 );
setScaleKey( spep_0-3 + 1166, 1, 1.2, 1.2 );
setScaleKey( spep_0-3 + 1168, 1, 1.17, 1.17 );
setScaleKey( spep_0-3 + 1170, 1, 1.13, 1.13 );
setScaleKey( spep_0-3 + 1172, 1, 1.1, 1.1 );
setScaleKey( spep_0-3 + 1174, 1, 1.07, 1.07 );
setScaleKey( spep_0-3 + 1176, 1, 1.03, 1.03 );
setScaleKey( spep_0-3 + 1178, 1, 1, 1 );
setScaleKey( spep_0-3 + 1180, 1, 0.97, 0.97 );
setScaleKey( spep_0-3 + 1182, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 1184, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 1185, 1, 0.9, 0.9 );

setScaleKey( spep_0-3 + 1186, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 1194, 1, 1.05, 1.05 );
setScaleKey( spep_0-3 + 1196, 1, 1.04, 1.04 );
setScaleKey( spep_0-3 + 1198, 1, 1.04, 1.04 );
setScaleKey( spep_0-3 + 1200, 1, 1.03, 1.03 );
setScaleKey( spep_0-3 + 1202, 1, 1.03, 1.03 );
setScaleKey( spep_0-3 + 1204, 1, 1.02, 1.02 );
setScaleKey( spep_0-3 + 1208, 1, 1.02, 1.02 );
setScaleKey( spep_0-3 + 1210, 1, 1.01, 1.01 );
setScaleKey( spep_0-1 + 1220, 1, 1.01, 1.01 );

setRotateKey( spep_0-3 + 1130, 1, 0 );
setRotateKey( spep_0-3 + 1185, 1, 0 );

setRotateKey( spep_0-3 + 1186, 1, 30 );
setRotateKey( spep_0-1 + 1220, 1, 30 );

--敵の動き
setDisp( spep_0-3 + 1256, 1, 1);
setDisp( spep_0-1 + 1266, 1, 0);

changeAnime( spep_0-3 + 1256, 1, 5);

setMoveKey( spep_0-3 + 1256, 1, -25.3, 93.9 , 0 );
setMoveKey( spep_0-1 + 1266, 1, -25.3, 93.9 , 0 );

setScaleKey( spep_0-3 + 1256, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 1258, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 1260, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 1262, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 1264, 1, 0.34, 0.34 );
setScaleKey( spep_0-1 + 1266, 1, 0.31, 0.31 );

setRotateKey( spep_0-3 + 1256, 1, 15 );
setRotateKey( spep_0-1 + 1266, 1, 15 );

--SE
--オーラ
SE016 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE016, 50 );

--気弾飛んでくる
SE017 = playSeVer2( spep_0 + 450, 1179, "", 0, 0, 0, -1);

--気弾敵ヒット
SE018 = playSeVer2( spep_0 + 492, 1011, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 494, 1159, "", 0, 0, 0, -1);

--画面遷移
SE020 = playSeVer2( spep_0 + 538, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE020, 72 );

--気弾溜め
SE021 = playSeVer2( spep_0 + 852, 1362, "",spep_0 + 1108, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 852, SE021, 158 );
SE022 = playSeVer2( spep_0 + 852, 1240, "",spep_0 + 1108, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 852, SE022, 65 );
setPitch( spep_0 + 852, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );

--振りかぶる
SE023 = playSeVer2( spep_0 + 892, 1116, "",spep_0 + 950, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 892, SE023, 83 );

--正面振りかぶる
SE024 = playSeVer2( spep_0 + 954, 1117, "", 0, 0, 0, -1);

--気弾投げる
SE025 = playSeVer2( spep_0 + 1080, 1213, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_0 + 1080, SE025, 61 );
setStartTimeMs( SE025,  433 );
SE026 = playSeVer2( spep_0 + 1076, 1133, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 1076, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 1076, 1193, "",spep_0 + 1154, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 1076, SE028, 77 );
SE029 = playSeVer2( spep_0 + 1076, 1284, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1076, SE029, 88 );

--気弾飛んでいく
SE030 = playSeVer2( spep_0 + 1142, 1021, "", 0, 0, 0, -1);

--光広がる
SE032 = playSeVer2( spep_0 + 1210, 1306, "",spep_0 + 1348, 0, 68, -1);
setSeVolumeByWorkId( spep_0 + 1210, SE032, 141 );
SE033 = playSeVer2( spep_0 + 1210, 1264, "",spep_0 + 1316, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 1210, SE033, 79 );

--爆発
SE034 = playSeVer2( spep_0 + 1266, 1024, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 1266, 1159, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 1290, 1188, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 1298, 1068, "", 0, 0, 0, -1);

--星から光広がる
SE038 = playSeVer2( spep_0 + 1346, 1343, "",spep_0 + 1470, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 1346, SE038, 77 );
SE031 = playSeVer2( spep_0 + 1354, 1336, "",spep_0 + 1468, 30, 16, -1);
setStartTimeMs( SE031,  2783 );

--爆発２
SE039 = playSeVer2( spep_0 + 1354, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1354, SE039, 66 );
SE040 = playSeVer2( spep_0 + 1370, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1370, SE040, 64 );
SE041 = playSeVer2( spep_0 + 1420, 1069, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1440, 1067, "", 0, 0, 0, -1);

--ボイス
--オレたちに、不可能など…あるものか…！
playVoice( spep_0 + 598, 497 );
setVoiceVolume( spep_0 + 598, 497, 100 );

--うおりゃああああああ！！
playVoice( spep_0 + 956, 498 );
setVoiceVolume( spep_0 + 956, 498, 100 );

-- 終わり
hideKoScreen();
entryFade( spep_0 +1488, 2,  8, 2, 0, 0, 0, 255);             -- black fade
dealDamage(spep_0+1398);
endPhase( spep_0 + 1498 ); -- 終了フレーム
else end