--1022770:孫悟空_界王拳(UR)
--sp_effect_b1_00165

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
SP_01=	158114	;--	正面UP（BG_文字込）
SP_02=	158115	;--	正面（BG_文字込）
SP_03=	158116	;--	斜め_突進
SP_04=	158117	;--	突進ヒット
SP_05=	158118	;--	擬音のみ
SP_06=	158119	;--	擬音のみ
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
        spep_1=spep_0+116;
        spep_2=spep_1+40;
        spep_3=spep_2+32;
       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 26 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_3 + 0);      -- スキップ先フレーム指定
           SE017 = playSeVer2( spep_3 + 0, 1019, "", 0, 0, 0, -1);

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 正面
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
front = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, front, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, front, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, front, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, front, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, front, 0 );
setEffRotateKey( spep_0 + 116, front, 0 );
setEffAlphaKey( spep_0 + 0, front, 255 );
setEffAlphaKey( spep_0 + 114, front, 255 );
setEffAlphaKey( spep_0 + 115, front, 255 );
setEffAlphaKey( spep_0 + 116, front, 0 );

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

--SE
--飛行音
SE001 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1278, "",spep_0 + 188, 0, 108, -1);
SE003 = playSeVer2( spep_0 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 68 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);

--界王拳発動音
SE005 = playSeVer2( spep_0 + 48, 1126, "",spep_0 + 170, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 76 );
SE006 = playSeVer2( spep_0 + 48, 1263, "",spep_0 + 170, 0, 64, -1);

--飛行音
SE007 = playSeVer2( spep_0 + 64, 1019, "", 0, 0, 0, -1);

--ボイス
--界王拳
playVoice( spep_0 + 0, 296 );
setVoiceVolume( spep_0 + 0, 296, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
-- 正面
------------------------------------------------------
-- ** エフェクト等 ** --
front2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, front2, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, front2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, front2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, front2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, front2, 0 );
setEffRotateKey( spep_1 + 40, front2, 0 );
setEffAlphaKey( spep_1 + 0, front2, 255 );
setEffAlphaKey( spep_1 + 40, front2, 255 );
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 26 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

   
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
--SE
--飛行音
SE008 = playSeVer2( spep_1 + 12, 1019, "", 0, 0, 0, -1);

--SE
--クネっと曲がって突っ込む
SE009 = playSeVer2( spep_1 + 4, 9, "",spep_1 + 74, 0, 20, -1);
SE010 = playSeVer2( spep_1 + 6, 44, "",spep_1 + 60, 0, 6, -1);

--白フェード
entryFade( spep_1 +32, 4,  6, 4, 255, 255, 255, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 40, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_2=spep_1+40;
------------------------------------------------------
-- 斜め_突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 32, rush_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 32, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_f, 0 );
setEffRotateKey( spep_2 + 32, rush_f, 0 );
setEffAlphaKey( spep_2 + 0, rush_f, 255 );
setEffAlphaKey( spep_2 + 32, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 32, rush_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 32, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, rush_b, 0 );
setEffRotateKey( spep_2 + 32, rush_b, 0 );
setEffAlphaKey( spep_2 + 0, rush_b, 255 );
setEffAlphaKey( spep_2 + 32, rush_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 30, 1, 0 );

changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 69.2, -109.5 , 0 );
setMoveKey( spep_2 + 30, 1, 69.2, -109.5 , 0 );

setScaleKey( spep_2 + 0, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 30, 1, 0.86, 0.86 );

setRotateKey( spep_2 + 0, 1, -2.7 );
setRotateKey( spep_2 + 30, 1, -2.7 );

--SE
--クネっと曲がって突っ込む
SE011 = playSeVer2( spep_2 + 4, 1033, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE011, 79 );
SE012 = playSeVer2( spep_2 + 4, 1182, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 4, 1311, "",spep_2 + 64, 0, 10, -1);
SE014 = playSeVer2( spep_2 + 4, 63, "",spep_2 + 64, 0, 6, -1);
SE015 = playSeVer2( spep_2 + 4, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE015, 61 );
SE016 = playSeVer2( spep_2 + 10, 1323, "",spep_2 + 64, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 10, SE016, 49 );

--白フェード
entryFade( spep_2 +24, 4,  6, 4, 255, 255, 255, 255);             -- black fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 32, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_3=spep_2+32;
------------------------------------------------------
-- 突進ヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 120, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 120, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 120, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 120, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 120, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 120, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 24, 1, 106 );

setMoveKey( spep_3 + 0, 1, 0.4, -146.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 0.4, -146 , 0 );
setMoveKey( spep_3-3 + 4, 1, 0.5, -146.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, 0.7, -146.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, 1, -146 , 0 );
setMoveKey( spep_3-3 + 10, 1, 1.3, -146.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, 1.7, -146.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 2.1, -146.1 , 0 );
setMoveKey( spep_3-3 + 16, 1, 2.7, -146.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, 3.3, -146.1 , 0 );
setMoveKey( spep_3-3 + 20, 1, 4, -146.2 , 0 );
setMoveKey( spep_3-3 + 23, 1, 0.2, -152.7 , 0 );
setMoveKey( spep_3-3 + 24, 1, -7.3, -163.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 18.3, -151.9 , 0 );
setMoveKey( spep_3-3 + 28, 1, 4.4, -146.1 , 0 );
setMoveKey( spep_3-3 + 30, 1, -22.9, -154.3 , 0 );
setMoveKey( spep_3-3 + 32, 1, -49.7, -190 , 0 );
setMoveKey( spep_3-3 + 34, 1, -30.5, -154.6 , 0 );
setMoveKey( spep_3-3 + 36, 1, -58.4, -211.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, -36.4, -161.2 , 0 );
setMoveKey( spep_3-3 + 40, 1, -55.3, -203.1 , 0 );
setMoveKey( spep_3-3 + 42, 1, -50.9, -179.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, -50.9, -192.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, -50.9, -181.4 , 0 );
setMoveKey( spep_3-3 + 48, 1, -50.9, -191.6 , 0 );
setMoveKey( spep_3-3 + 50, 1, -50.9, -183.1 , 0 );
setMoveKey( spep_3-3 + 52, 1, -50.9, -191.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, -50.9, -184.6 , 0 );
setMoveKey( spep_3-3 + 56, 1, -50.9, -190.1 , 0 );
setMoveKey( spep_3-3 + 58, 1, -50.9, -184.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, -50.9, -189.6 , 0 );
setMoveKey( spep_3-3 + 62, 1, -50.9, -184.6 , 0 );
setMoveKey( spep_3-3 + 64, 1, -50.9, -189.6 , 0 );
setMoveKey( spep_3-3 + 66, 1, -50.9, -184.6 , 0 );
setMoveKey( spep_3-3 + 68, 1, -50.9, -188.1 , 0 );
setMoveKey( spep_3-3 + 70, 1, -50.9, -184.6 , 0 );
setMoveKey( spep_3-3 + 72, 1, -50.9, -188.1 , 0 );
setMoveKey( spep_3-3 + 74, 1, -50.9, -184.6 , 0 );
setMoveKey( spep_3-3 + 76, 1, -50.9, -188.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, -50.9, -184.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, -50.9, -188.1 , 0 );
setMoveKey( spep_3-3 + 82, 1, -50.9, -185.8 , 0 );
setMoveKey( spep_3-3 + 84, 1, -50.9, -188.1 , 0 );
setMoveKey( spep_3-3 + 86, 1, -50.9, -186.4 , 0 );
setMoveKey( spep_3-3 + 88, 1, -50.9, -188.1 , 0 );
setMoveKey( spep_3-3 + 90, 1, -50.9, -186.2 , 0 );
setMoveKey( spep_3-3 + 92, 1, -50.9, -188.1 , 0 );
setMoveKey( spep_3-3 + 94, 1, -50.9, -185.8 , 0 );
setMoveKey( spep_3-3 + 96, 1, -50.9, -188.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, -50.9, -187 , 0 );
setMoveKey( spep_3-3 + 100, 1, -50.9, -187 , 0 );
setMoveKey( spep_3-3 + 102, 1, -50.9, -187.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, -50.9, -187.2 , 0 );
setMoveKey( spep_3-3 + 110, 1, -50.9, -187.7 , 0 );
setMoveKey( spep_3-3 + 112, 1, -50.9, -187.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, -50.9, -186.8 , 0 );
setMoveKey( spep_3-3 + 116, 1, -50.9, -186.8 , 0 );
setMoveKey( spep_3 + 118, 1, -50.9, -187.7 , 0 );

setScaleKey( spep_3 + 0, 1, 2.08, 2.08 );
--setScaleKey( spep_3-3 + 4, 1, 2.08, 2.08 );
setScaleKey( spep_3-3 + 6, 1, 2.09, 2.09 );
setScaleKey( spep_3-3 + 8, 1, 2.1, 2.1 );
setScaleKey( spep_3-3 + 10, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 12, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 14, 1, 2.14, 2.14 );
setScaleKey( spep_3-3 + 16, 1, 2.16, 2.16 );
setScaleKey( spep_3-3 + 18, 1, 2.18, 2.18 );
setScaleKey( spep_3-3 + 20, 1, 2.2, 2.2 );
setScaleKey( spep_3-3 + 23, 1, 2.6, 2.6 );
setScaleKey( spep_3-3 + 24, 1, 2.33, 2.33 );
setScaleKey( spep_3-3 + 26, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 28, 1, 2.82, 2.82 );
setScaleKey( spep_3-3 + 30, 1, 2.29, 2.29 );
setScaleKey( spep_3-3 + 32, 1, 2.34, 2.34 );
setScaleKey( spep_3-3 + 34, 1, 2.23, 2.23 );
setScaleKey( spep_3 + 118, 1, 2.23, 2.23 );

setRotateKey( spep_3 + 0, 1, -35.4 );
setRotateKey( spep_3-3 + 23, 1, -35.4 );
setRotateKey( spep_3-3 + 24, 1, -88.1 );
setRotateKey( spep_3 + 118, 1, -88.1 );

--SE
--飛行音
SE017 = playSeVer2( spep_3 + 0, 1019, "", 0, 0, 0, -1);

--敵ヒット
SE018 = playSeVer2( spep_3 + 22, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 24, 1060, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 24, 1025, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 24, 1190, "", 0, 0, 0, -1);

--飛行音
SE022 = playSeVer2( spep_3 + 64, 1019, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_3 + 20);
endPhase( spep_3 + 116 );
else end