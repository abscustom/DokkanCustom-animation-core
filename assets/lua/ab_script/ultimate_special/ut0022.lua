--1022780:孫悟空_界王拳(LR)
--sp_effect_b1_00166

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
SP_01=	158120	;--	正面UP（BG_文字込）
SP_02=	158121	;--	正面（BG_文字込）
SP_03=	158122	;--	斜め_突進
SP_04=	158123	;--	突進ヒット
SP_05=	158124	;--	手UP_敵受け止め（文字込）
SP_06=	158125	;--	敵抱えている（BG込）
SP_07=	158126	;--	敵投げる（BG_文字込）
SP_08=	158127	;--	擬音のみ
SP_09=	158128	;--	擬音のみ
SP_10=	158129	;--	BGのみ
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
        spep_4=spep_3+110;
        spep_5=spep_4+56;
        spep_6=spep_5+116;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_1 + 26 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_6 + 0);      -- スキップ先フレーム指定

           setDisp( spep_6 + 0, 1, 1);
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
rush_f = entryEffect( spep_2 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
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
hit_f = entryEffect( spep_3 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 110, hit_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 110, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 110, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 110, hit_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 110, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 110, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 110, hit_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 108, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 24, 1, 106 );
changeAnime( spep_3-3 + 84, 1, 5 );

setMoveKey( spep_3 + 0, 1, -131.8, 49.1 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -131.8, 49.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, -131.6, 49.1 , 0 );
setMoveKey( spep_3-3 + 6, 1, -131.4, 49.1 , 0 );
setMoveKey( spep_3-3 + 8, 1, -131.2, 49.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, -130.9, 49.1 , 0 );
setMoveKey( spep_3-3 + 12, 1, -130.5, 49 , 0 );
setMoveKey( spep_3-3 + 14, 1, -130.1, 49 , 0 );
setMoveKey( spep_3-3 + 16, 1, -129.6, 49.1 , 0 );
setMoveKey( spep_3-3 + 18, 1, -129, 49 , 0 );
setMoveKey( spep_3-3 + 20, 1, -128.3, 49 , 0 );
setMoveKey( spep_3-3 + 23, 1, -132.1, 42.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, -140.3, 10.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, -137.8, 46.7 , 0 );
setMoveKey( spep_3-3 + 28, 1, -146.4, 10.8 , 0 );
setMoveKey( spep_3-3 + 30, 1, -176.7, 18.8 , 0 );
setMoveKey( spep_3-3 + 32, 1, -183.1, -3.5 , 0 );
setMoveKey( spep_3-3 + 34, 1, -183.1, 5.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, -183.1, -14.5 , 0 );
setMoveKey( spep_3-3 + 38, 1, -183.1, 18.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, -183.1, -7.9 , 0 );
setMoveKey( spep_3-3 + 42, 1, -183.1, 15.6 , 0 );
setMoveKey( spep_3-3 + 44, 1, -183.1, -3.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, -183.1, 13.8 , 0 );
setMoveKey( spep_3-3 + 48, 1, -183.1, -1.9 , 0 );
setMoveKey( spep_3-3 + 50, 1, -183.1, 12 , 0 );
setMoveKey( spep_3-3 + 52, 1, -183.1, -1.1 , 0 );
setMoveKey( spep_3-3 + 54, 1, -183.1, 10.6 , 0 );
setMoveKey( spep_3-3 + 56, 1, -183.1, 0.6 , 0 );
setMoveKey( spep_3-3 + 58, 1, -183.1, 5.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, -183.1, 5.2 , 0 );
setMoveKey( spep_3-3 + 62, 1, -183.7, 7.7 , 0 );
setMoveKey( spep_3-3 + 64, 1, -184.2, 10.3 , 0 );
setMoveKey( spep_3-3 + 66, 1, -184.7, 12.9 , 0 );
setMoveKey( spep_3-3 + 68, 1, -185.3, 15.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, -185.8, 18 , 0 );
setMoveKey( spep_3-3 + 72, 1, -186.3, 20.5 , 0 );
setMoveKey( spep_3-3 + 74, 1, -186.9, 23.1 , 0 );
setMoveKey( spep_3-3 + 76, 1, -187.4, 25.7 , 0 );
setMoveKey( spep_3-3 + 78, 1, -188, 28.2 , 0 );
setMoveKey( spep_3-3 + 80, 1, -188.5, 30.8 , 0 );
setMoveKey( spep_3-3 + 83, 1, -189.1, 33.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, -161.1, 119.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, -133.3, 143.5 , 0 );
setMoveKey( spep_3-3 + 88, 1, -118.3, 156.3 , 0 );
setMoveKey( spep_3-3 + 90, 1, -107.1, 165.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, -97.9, 173.7 , 0 );
setMoveKey( spep_3-3 + 94, 1, -90.1, 180.4 , 0 );
setMoveKey( spep_3-3 + 96, 1, -83.3, 186.2 , 0 );
setMoveKey( spep_3-3 + 98, 1, -77.3, 191.3 , 0 );
setMoveKey( spep_3-3 + 100, 1, -71.9, 195.8 , 0 );
setMoveKey( spep_3-3 + 102, 1, -67.2, 199.9 , 0 );
setMoveKey( spep_3-3 + 104, 1, -63, 203.4 , 0 );
setMoveKey( spep_3-3 + 106, 1, -59.4, 206.5 , 0 );
setMoveKey( spep_3-1 + 108, 1, -56.4, 209 , 0 );

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
setScaleKey( spep_3-3 + 28, 1, 2.56, 2.56 );
setScaleKey( spep_3-3 + 30, 1, 2.29, 2.29 );
setScaleKey( spep_3-3 + 32, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 83, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 84, 1, 2.2, 2.2 );
setScaleKey( spep_3-3 + 86, 1, 2.14, 2.14 );
setScaleKey( spep_3-3 + 88, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 90, 1, 2.09, 2.09 );
setScaleKey( spep_3-3 + 92, 1, 2.08, 2.08 );
setScaleKey( spep_3-3 + 94, 1, 2.06, 2.06 );
setScaleKey( spep_3-3 + 96, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 98, 1, 2.04, 2.04 );
setScaleKey( spep_3-3 + 100, 1, 2.03, 2.03 );
setScaleKey( spep_3-3 + 102, 1, 2.02, 2.02 );
setScaleKey( spep_3-3 + 104, 1, 2.01, 2.01 );
setScaleKey( spep_3-1 + 108, 1, 2, 2 );

setRotateKey( spep_3 + 0, 1, -35.4 );
setRotateKey( spep_3-3 + 23, 1, -35.4 );
setRotateKey( spep_3-3 + 24, 1, -88.1 );
setRotateKey( spep_3-3 + 60, 1, -88.1 );
setRotateKey( spep_3-3 + 62, 1, -87.1 );
setRotateKey( spep_3-3 + 64, 1, -86.2 );
setRotateKey( spep_3-3 + 66, 1, -85.3 );
setRotateKey( spep_3-3 + 68, 1, -84.4 );
setRotateKey( spep_3-3 + 70, 1, -83.5 );
setRotateKey( spep_3-3 + 72, 1, -82.6 );
setRotateKey( spep_3-3 + 74, 1, -81.7 );
setRotateKey( spep_3-3 + 76, 1, -80.8 );
setRotateKey( spep_3-3 + 78, 1, -79.9 );
setRotateKey( spep_3-3 + 80, 1, -79 );
setRotateKey( spep_3-3 + 83, 1, -78.1 );
setRotateKey( spep_3-3 + 84, 1, 53.1 );
setRotateKey( spep_3-3 + 86, 1, 59.9 );
setRotateKey( spep_3-3 + 88, 1, 63.6 );
setRotateKey( spep_3-3 + 90, 1, 66.3 );
setRotateKey( spep_3-3 + 92, 1, 68.6 );
setRotateKey( spep_3-3 + 94, 1, 70.5 );
setRotateKey( spep_3-3 + 96, 1, 72.1 );
setRotateKey( spep_3-3 + 98, 1, 73.6 );
setRotateKey( spep_3-3 + 100, 1, 74.9 );
setRotateKey( spep_3-3 + 102, 1, 76.1 );
setRotateKey( spep_3-3 + 104, 1, 77.1 );
setRotateKey( spep_3-3 + 106, 1, 78 );
setRotateKey( spep_3-1 + 108, 1, 78.7 );

--SE
--飛行音
SE017 = playSeVer2( spep_3 + 0, 1019, "", 0, 0, 0, -1);

--敵ヒット
SE018 = playSeVer2( spep_3 + 20, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 22, 1060, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_3 + 22, 1025, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 22, 1190, "", 0, 0, 0, -1);


--旋回して先回りする
SE022 = playSeVer2( spep_3 + 58, 1207, "", 0, 8, 0, -1);
setStartTimeMs( SE022,  133 );

--飛行音
SE023 = playSeVer2( spep_3 + 66, 1019, "", 0, 0, 0, -1);

--旋回して先回りする
SE024 = playSeVer2( spep_3 + 76, 1277, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_3 +102, 4,  6, 4, 255, 255, 255, 255);             -- black fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_4=spep_3+110;
------------------------------------------------------
-- 手UP_敵受け止め（文字込）
------------------------------------------------------
-- ** エフェクト等 ** --
catch_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, catch_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, catch_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, catch_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, catch_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, catch_f, 0 );
setEffRotateKey( spep_4 + 56, catch_f, 0 );
setEffAlphaKey( spep_4 + 0, catch_f, 255 );
setEffAlphaKey( spep_4 + 54, catch_f, 255 );
setEffAlphaKey( spep_4 + 55, catch_f, 255 );
setEffAlphaKey( spep_4 + 56, catch_f, 0 );

-- ** エフェクト等 ** --
catch_b = entryEffect( spep_4 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, catch_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 56, catch_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, catch_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, catch_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, catch_b, 0 );
setEffRotateKey( spep_4 + 56, catch_b, 0 );
setEffAlphaKey( spep_4 + 0, catch_b, 255 );
setEffAlphaKey( spep_4 + 54, catch_b, 255 );
setEffAlphaKey( spep_4 + 55, catch_b, 255 );
setEffAlphaKey( spep_4 + 56, catch_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );

changeAnime( spep_4 + 0, 1, 118 );

setMoveKey( spep_4 + 0, 1, -112.9, 1834.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, -113.1, 1370.5 , 0 );
setMoveKey( spep_4-3 + 4, 1, -113.2, 1049.1 , 0 );
setMoveKey( spep_4-3 + 6, 1, -113.3, 788.4 , 0 );
setMoveKey( spep_4-3 + 8, 1, -113.3, 582.8 , 0 );
setMoveKey( spep_4-3 + 10, 1, -113.4, 436.7 , 0 );
setMoveKey( spep_4-3 + 12, 1, -112.8, 362.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, -112.8, 221.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, -112.8, 405.3 , 0 );
setMoveKey( spep_4-3 + 18, 1, -112.8, 283.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, -112.8, 378.5 , 0 );
setMoveKey( spep_4-3 + 22, 1, -112.8, 317 , 0 );
setMoveKey( spep_4-3 + 24, 1, -112.8, 371.6 , 0 );
setMoveKey( spep_4-3 + 26, 1, -112.8, 326.3 , 0 );
setMoveKey( spep_4-3 + 28, 1, -112.8, 353.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, -112.8, 352.5 , 0 );
setMoveKey( spep_4-3 + 32, 1, -112.8, 342.7 , 0 );
setMoveKey( spep_4-3 + 34, 1, -112.8, 350.9 , 0 );
setMoveKey( spep_4-3 + 36, 1, -112.8, 343.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, -112.8, 350.5 , 0 );
setMoveKey( spep_4-3 + 40, 1, -112.8, 344 , 0 );
setMoveKey( spep_4-3 + 42, 1, -112.8, 350 , 0 );
setMoveKey( spep_4-3 + 44, 1, -112.8, 345.4 , 0 );
setMoveKey( spep_4-3 + 46, 1, -112.8, 349.2 , 0 );
setMoveKey( spep_4-3 + 48, 1, -112.8, 347.9 , 0 );
setMoveKey( spep_4-1 + 56, 1, -112.8, 347.9 , 0 );

setScaleKey( spep_4 + 0, 1, 12, 12 );
setScaleKey( spep_4 + 2, 1, 11.99, 11.99 );
setScaleKey( spep_4-1 + 56, 1, 11.99, 11.99 );

setRotateKey( spep_4 + 0, 1, 97 );
setRotateKey( spep_4-1 + 56, 1, 97 );

--SE
--片手で持つ
SE025 = playSeVer2( spep_4 + 0, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE025, 82 );
SE026 = playSeVer2( spep_4 + 0, 1187, "",spep_4 + 52, 0, 32, -1);
setSeVolumeByWorkId( spep_4 + 0, SE026, 82 );
SE027 = playSeVer2( spep_4 + 0, 1153, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_5=spep_4+56;
------------------------------------------------------
-- 敵抱えている（BG込）
------------------------------------------------------
-- ** エフェクト等 ** --
have = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, have, 0, 0, 0 );
setEffMoveKey( spep_5 + 116, have, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, have, 1.0, 1.0 );
setEffScaleKey( spep_5 + 116, have, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, have, 0 );
setEffRotateKey( spep_5 + 116, have, 0 );
setEffAlphaKey( spep_5 + 0, have, 255 );
setEffAlphaKey( spep_5 + 114, have, 255 );
setEffAlphaKey( spep_5 + 115, have, 255 );
setEffAlphaKey( spep_5 + 116, have, 0 );

--敵の動き
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 67.7, 399.1 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 67.7, 399 , 0 );
setMoveKey( spep_5-3 + 4, 1, 67.6, 398.7 , 0 );
setMoveKey( spep_5-3 + 6, 1, 67.5, 398.3 , 0 );
setMoveKey( spep_5-3 + 8, 1, 67.4, 397.7 , 0 );
setMoveKey( spep_5-3 + 10, 1, 67.2, 396.8 , 0 );
setMoveKey( spep_5-3 + 12, 1, 66.9, 395.7 , 0 );
setMoveKey( spep_5-3 + 14, 1, 66.6, 394.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 66.2, 392.7 , 0 );
setMoveKey( spep_5-3 + 18, 1, 65.7, 390.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, 65.2, 388.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 64.5, 385.3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 63.7, 382 , 0 );
setMoveKey( spep_5-3 + 26, 1, 62.7, 378 , 0 );
setMoveKey( spep_5-3 + 28, 1, 61.6, 373.3 , 0 );
setMoveKey( spep_5-3 + 30, 1, 60.3, 367.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, 58.8, 361.4 , 0 );
setMoveKey( spep_5-3 + 34, 1, 57.1, 353.9 , 0 );
setMoveKey( spep_5-3 + 36, 1, 55, 345.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, 52.6, 334.9 , 0 );
setMoveKey( spep_5-3 + 40, 1, 49.8, 323.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, 46.9, 310.8 , 0 );
setMoveKey( spep_5-3 + 44, 1, 43.8, 297.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, 40.9, 285.4 , 0 );
setMoveKey( spep_5-3 + 48, 1, 38.2, 274 , 0 );
setMoveKey( spep_5-3 + 50, 1, 35.8, 264 , 0 );
setMoveKey( spep_5-3 + 52, 1, 33.8, 255.3 , 0 );
setMoveKey( spep_5-3 + 54, 1, 32, 247.9 , 0 );
setMoveKey( spep_5-3 + 56, 1, 30.5, 241.6 , 0 );
setMoveKey( spep_5-3 + 58, 1, 29.3, 236.3 , 0 );
setMoveKey( spep_5-3 + 60, 1, 28.2, 231.7 , 0 );
setMoveKey( spep_5-3 + 62, 1, 27.3, 227.8 , 0 );
setMoveKey( spep_5-3 + 64, 1, 26.5, 224.6 , 0 );
setMoveKey( spep_5-3 + 66, 1, 25.9, 221.8 , 0 );
setMoveKey( spep_5-3 + 68, 1, 25.3, 219.4 , 0 );
setMoveKey( spep_5-3 + 70, 1, 24.8, 217.5 , 0 );
setMoveKey( spep_5-3 + 72, 1, 24.5, 215.9 , 0 );
setMoveKey( spep_5-3 + 74, 1, 24.2, 214.6 , 0 );
setMoveKey( spep_5-3 + 76, 1, 23.9, 213.5 , 0 );
setMoveKey( spep_5-3 + 78, 1, 23.7, 212.7 , 0 );
setMoveKey( spep_5-3 + 80, 1, 23.7, 212.7 , 0 );
setMoveKey( spep_5-3 + 82, 1, 23.7, 212.6 , 0 );
setMoveKey( spep_5-3 + 84, 1, 23.6, 212.6 , 0 );
setMoveKey( spep_5-3 + 86, 1, 23.6, 212.5 , 0 );
setMoveKey( spep_5-3 + 90, 1, 23.6, 212.5 , 0 );
setMoveKey( spep_5-3 + 92, 1, 23.6, 212.4 , 0 );
setMoveKey( spep_5-3 + 94, 1, 23.6, 212.4 , 0 );
setMoveKey( spep_5-3 + 96, 1, 23.5, 212.3 , 0 );
setMoveKey( spep_5-3 + 100, 1, 23.5, 212.3 , 0 );
setMoveKey( spep_5-3 + 102, 1, 23.5, 212.2 , 0 );
setMoveKey( spep_5-3 + 106, 1, 23.5, 212.2 , 0 );
setMoveKey( spep_5-3 + 108, 1, 23.4, 212.1 , 0 );
setMoveKey( spep_5-3 + 110, 1, 23.4, 212.1 , 0 );
setMoveKey( spep_5-3 + 112, 1, 23.4, 212 , 0 );
setMoveKey( spep_5-3 + 114, 1, 23.4, 212 , 0 );
setMoveKey( spep_5-1 + 116, 1, 23.4, 211.9 , 0 );

setScaleKey( spep_5 + 0, 1, 5.57, 5.57 );
--setScaleKey( spep_5-3 + 2, 1, 5.57, 5.57 );
setScaleKey( spep_5-3 + 4, 1, 5.56, 5.56 );
setScaleKey( spep_5-3 + 6, 1, 5.56, 5.56 );
setScaleKey( spep_5-3 + 8, 1, 5.54, 5.54 );
setScaleKey( spep_5-3 + 10, 1, 5.53, 5.53 );
setScaleKey( spep_5-3 + 12, 1, 5.51, 5.51 );
setScaleKey( spep_5-3 + 14, 1, 5.48, 5.48 );
setScaleKey( spep_5-3 + 16, 1, 5.45, 5.45 );
setScaleKey( spep_5-3 + 18, 1, 5.41, 5.41 );
setScaleKey( spep_5-3 + 20, 1, 5.36, 5.36 );
setScaleKey( spep_5-3 + 22, 1, 5.3, 5.3 );
setScaleKey( spep_5-3 + 24, 1, 5.24, 5.24 );
setScaleKey( spep_5-3 + 26, 1, 5.16, 5.16 );
setScaleKey( spep_5-3 + 28, 1, 5.07, 5.07 );
setScaleKey( spep_5-3 + 30, 1, 4.96, 4.96 );
setScaleKey( spep_5-3 + 32, 1, 4.84, 4.84 );
setScaleKey( spep_5-3 + 34, 1, 4.69, 4.69 );
setScaleKey( spep_5-3 + 36, 1, 4.52, 4.52 );
setScaleKey( spep_5-3 + 38, 1, 4.32, 4.32 );
setScaleKey( spep_5-3 + 40, 1, 4.1, 4.1 );
setScaleKey( spep_5-3 + 42, 1, 3.85, 3.85 );
setScaleKey( spep_5-3 + 44, 1, 3.6, 3.6 );
setScaleKey( spep_5-3 + 46, 1, 3.36, 3.36 );
setScaleKey( spep_5-3 + 48, 1, 3.14, 3.14 );
setScaleKey( spep_5-3 + 50, 1, 2.95, 2.95 );
setScaleKey( spep_5-3 + 52, 1, 2.78, 2.78 );
setScaleKey( spep_5-3 + 54, 1, 2.63, 2.63 );
setScaleKey( spep_5-3 + 56, 1, 2.51, 2.51 );
setScaleKey( spep_5-3 + 58, 1, 2.41, 2.41 );
setScaleKey( spep_5-3 + 60, 1, 2.32, 2.32 );
setScaleKey( spep_5-3 + 62, 1, 2.24, 2.24 );
setScaleKey( spep_5-3 + 64, 1, 2.18, 2.18 );
setScaleKey( spep_5-3 + 66, 1, 2.13, 2.13 );
setScaleKey( spep_5-3 + 68, 1, 2.08, 2.08 );
setScaleKey( spep_5-3 + 70, 1, 2.04, 2.04 );
setScaleKey( spep_5-3 + 72, 1, 2.01, 2.01 );
setScaleKey( spep_5-3 + 74, 1, 1.99, 1.99 );
setScaleKey( spep_5-3 + 76, 1, 1.97, 1.97 );
setScaleKey( spep_5-3 + 78, 1, 1.95, 1.95 );
setScaleKey( spep_5-3 + 84, 1, 1.95, 1.95 );
setScaleKey( spep_5-3 + 86, 1, 1.94, 1.94 );
setScaleKey( spep_5-3 + 98, 1, 1.94, 1.94 );
setScaleKey( spep_5-3 + 100, 1, 1.93, 1.93 );
setScaleKey( spep_5-3 + 112, 1, 1.93, 1.93 );
setScaleKey( spep_5-3 + 114, 1, 1.92, 1.92 );
setScaleKey( spep_5-1 + 116, 1, 1.92, 1.92 );

setRotateKey( spep_5 + 0, 1, 31.8 );
--setRotateKey( spep_5-3 + 2, 1, 31.8 );
setRotateKey( spep_5-3 + 4, 1, 32.5 );
setRotateKey( spep_5-3 + 6, 1, 32.5 );
setRotateKey( spep_5-3 + 8, 1, 31.8 );
setRotateKey( spep_5-3 + 10, 1, 31.8 );
setRotateKey( spep_5-3 + 12, 1, 32.5 );
setRotateKey( spep_5-3 + 14, 1, 32.5 );
setRotateKey( spep_5-3 + 16, 1, 31.8 );
setRotateKey( spep_5-3 + 18, 1, 31.8 );
setRotateKey( spep_5-3 + 20, 1, 32.5 );
setRotateKey( spep_5-3 + 22, 1, 32.5 );
setRotateKey( spep_5-3 + 24, 1, 31.8 );
setRotateKey( spep_5-3 + 26, 1, 31.8 );
setRotateKey( spep_5-3 + 28, 1, 32.5 );
setRotateKey( spep_5-3 + 46, 1, 32.5 );
setRotateKey( spep_5-3 + 48, 1, 31.8 );
setRotateKey( spep_5-3 + 50, 1, 31.8 );
setRotateKey( spep_5-3 + 52, 1, 32.5 );
setRotateKey( spep_5-3 + 54, 1, 32.5 );
setRotateKey( spep_5-3 + 56, 1, 31.8 );
setRotateKey( spep_5-3 + 58, 1, 31.8 );
setRotateKey( spep_5-3 + 60, 1, 32.5 );
setRotateKey( spep_5-3 + 98, 1, 32.5 );
setRotateKey( spep_5-3 + 100, 1, 31.8 );
setRotateKey( spep_5-3 + 102, 1, 32.5 );
setRotateKey( spep_5-3 + 104, 1, 32.5 );
setRotateKey( spep_5-3 + 106, 1, 31.8 );
setRotateKey( spep_5-3 + 108, 1, 31.8 );
setRotateKey( spep_5-3 + 110, 1, 32.5 );
setRotateKey( spep_5-3 + 112, 1, 32.5 );
setRotateKey( spep_5-3 + 114, 1, 31.8 );
setRotateKey( spep_5-3 + 116, 1, 31.8 );
setRotateKey( spep_5-3 + 118, 1, 32.5 );

--SE
--カメラを引く
SE028 = playSeVer2( spep_5 + 12, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_6=spep_5+116;
------------------------------------------------------
-- 敵投げる（BG_文字込）
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 180, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 180, finish, 255 );

--敵の動き
setDisp( spep_6-1 + 40, 1, 0 );

changeAnime( spep_6 + 0, 1, 106 );

setMoveKey( spep_6 + 0, 1, 51.9, 376 , 0 );
setMoveKey( spep_6-3 + 32, 1, 51.9, 376 , 0 );
setMoveKey( spep_6-3 + 34, 1, 51.7, 682.1 , 0 );
setMoveKey( spep_6-3 + 36, 1, 51.6, 815 , 0 );
setMoveKey( spep_6-3 + 38, 1, 51.6, 907.9 , 0 );
setMoveKey( spep_6-1 + 40, 1, 51.5, 973.4 , 0 );

setScaleKey( spep_6 + 0, 1, 6.13, 6.13 );
setScaleKey( spep_6-3 + 32, 1, 6.13, 6.13 );
setScaleKey( spep_6-3 + 34, 1, 9.19, 9.19 );
setScaleKey( spep_6-3 + 36, 1, 10.52, 10.52 );
setScaleKey( spep_6-3 + 38, 1, 11.46, 11.46 );
setScaleKey( spep_6-1 + 40, 1, 12.12, 12.12 );

setRotateKey( spep_6 + 0, 1, 31.8 );
--setRotateKey( spep_6-3 + 2, 1, 31.8 );
setRotateKey( spep_6-3 + 4, 1, 32.5 );
setRotateKey( spep_6-3 + 6, 1, 32.5 );
setRotateKey( spep_6-3 + 8, 1, 31.8 );
setRotateKey( spep_6-3 + 10, 1, 31.8 );
setRotateKey( spep_6-3 + 12, 1, 32.5 );
setRotateKey( spep_6-3 + 14, 1, 32.5 );
setRotateKey( spep_6-3 + 16, 1, 31.8 );
setRotateKey( spep_6-3 + 18, 1, 31.8 );
setRotateKey( spep_6-3 + 20, 1, 32.5 );
setRotateKey( spep_6-3 + 22, 1, 32.5 );
setRotateKey( spep_6-3 + 24, 1, 31.8 );
setRotateKey( spep_6-3 + 26, 1, 31.8 );
setRotateKey( spep_6-3 + 28, 1, 32.5 );
setRotateKey( spep_6-3 + 36, 1, 32.5 );
setRotateKey( spep_6-1 + 40, 1, 32.6 );

--SE
--投げる
SE029 = playSeVer2( spep_6 + 32, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_6 + 32, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 34, 1013, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_6 + 36, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 36, SE032, 88 );

--ボイス
--もう闘えないはずだ・・・
playVoice( spep_6 + 21, 297 );
setVoiceVolume( spep_6 + 21, 297, 100 );

dealDamage( spep_6 + 70);
endPhase( spep_6 + 170 );
else end