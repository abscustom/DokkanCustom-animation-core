--1022470:フリーザ(第三形態)_クレイジーフィンガービーム
--sp_effect_a3_00082

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
SP_01=	157681	;--	敵と対峙
SP_02=	157682	;--	指差し攻撃
SP_03=	157683	;--	敵にHIT
SP_04=	157684	;--	攻撃予備動作
SP_05=	157685	;--	正面_攻撃
SP_06=	157686	;--	斜め_攻撃
SP_07=	157687	;--	横位置_攻撃
SP_08=	157688	;--	波動&煙
SP_09=	157689	;--	背景のみ(SP_03と同時に再生)
SP_10=	157690	;--	背景のみ(SP_06と同時に再生)
SP_11=	157691	;--	背景のみ(SP_08と同時に再生)

--エフェクト(てき)
SP_02x=	157798	;--	指差し攻撃
SP_03x=	157799	;--	敵にHIT

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.65);


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

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 68;-- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 56;
        spep_3 = spep_2 + 66;
        spep_4 = spep_3 + 100;
        spep_5 = spep_4 + 94;
        spep_6 = spep_5 + 130;
        spep_7 = spep_6 + 66;
        spep_8 = spep_7 + 96;

        timing_skip = 0;
        skipFrame(0, spep_8 + timing_skip );  -- スキップ先フレーム指定

    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--敵と対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation, 0, 0, 0 );
setEffMoveKey( spep_0 + 68, confrontation, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 68, confrontation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation, 0 );
setEffRotateKey( spep_0 + 68, confrontation, 0 );
setEffAlphaKey( spep_0 + 0, confrontation, 255 );
setEffAlphaKey( spep_0 + 66, confrontation, 255 );
setEffAlphaKey( spep_0 + 67, confrontation, 255 );
setEffAlphaKey( spep_0 + 68, confrontation, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 68, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 177, 172.8 , 0 );
setMoveKey( spep_0 + 1, 1, 177, 172.8 , 0 );
setMoveKey( spep_0 + 2, 1, 164.2, 175.7 , 0 );
setMoveKey( spep_0 + 3, 1, 164.2, 175.7 , 0 );
setMoveKey( spep_0 + 4, 1, 158.4, 176.9 , 0 );
setMoveKey( spep_0 + 5, 1, 158.4, 176.9 , 0 );
setMoveKey( spep_0 + 6, 1, 153.9, 177.9 , 0 );
setMoveKey( spep_0 + 8, 1, 150.3, 178.7 , 0 );
setMoveKey( spep_0 + 10, 1, 147.1, 179.4 , 0 );
setMoveKey( spep_0 + 12, 1, 144.2, 180.1 , 0 );
setMoveKey( spep_0 + 14, 1, 141.7, 180.6 , 0 );
setMoveKey( spep_0 + 16, 1, 139.3, 181.1 , 0 );
setMoveKey( spep_0 + 18, 1, 137.2, 181.6 , 0 );
setMoveKey( spep_0 + 20, 1, 135.2, 182 , 0 );
setMoveKey( spep_0 + 22, 1, 133.4, 182.4 , 0 );
setMoveKey( spep_0 + 24, 1, 131.6, 182.8 , 0 );
setMoveKey( spep_0 + 26, 1, 130, 183.2 , 0 );
setMoveKey( spep_0 + 28, 1, 128.5, 183.5 , 0 );
setMoveKey( spep_0 + 30, 1, 127, 183.8 , 0 );
setMoveKey( spep_0 + 32, 1, 125.7, 184.1 , 0 );
setMoveKey( spep_0 + 34, 1, 124.4, 184.4 , 0 );
setMoveKey( spep_0 + 36, 1, 123.2, 184.7 , 0 );
setMoveKey( spep_0 + 38, 1, 122, 184.9 , 0 );
setMoveKey( spep_0 + 40, 1, 121, 185.2 , 0 );
setMoveKey( spep_0 + 42, 1, 119.9, 185.4 , 0 );
setMoveKey( spep_0 + 44, 1, 119, 185.6 , 0 );
setMoveKey( spep_0 + 46, 1, 118.1, 185.8 , 0 );
setMoveKey( spep_0 + 48, 1, 117.2, 186 , 0 );
setMoveKey( spep_0 + 50, 1, 116.4, 186.2 , 0 );
setMoveKey( spep_0 + 52, 1, 115.7, 186.3 , 0 );
setMoveKey( spep_0 + 54, 1, 115, 186.5 , 0 );
setMoveKey( spep_0 + 56, 1, 114.3, 186.6 , 0 );
setMoveKey( spep_0 + 58, 1, 113.7, 186.8 , 0 );
setMoveKey( spep_0 + 60, 1, 113.1, 186.9 , 0 );
setMoveKey( spep_0 + 62, 1, 112.6, 187 , 0 );
setMoveKey( spep_0 + 64, 1, 112.1, 187.1 , 0 );
setMoveKey( spep_0 + 66, 1, 111.6, 187.2 , 0 );
setMoveKey( spep_0 + 88, 1, 111.2, 187.3 , 0 );

setScaleKey( spep_0 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 1, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 3, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 4, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 5, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 6, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 12, 1, 0.78, 0.78 );
--setScaleKey( spep_0 + 14, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 26, 1, 0.77, 0.77 );
--setScaleKey( spep_0 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 50, 1, 0.76, 0.76 );
--setScaleKey( spep_0 + 52, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 88, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 0, 1, 2.2 );
setRotateKey( spep_0 + 1, 1, 2.2 );
setRotateKey( spep_0 + 2, 1, 2 );
setRotateKey( spep_0 + 3, 1, 2 );
setRotateKey( spep_0 + 4, 1, 1.9 );
setRotateKey( spep_0 + 5, 1, 1.9 );
setRotateKey( spep_0 + 6, 1, 1.8 );
setRotateKey( spep_0 + 8, 1, 1.7 );
setRotateKey( spep_0 + 10, 1, 1.7 );
setRotateKey( spep_0 + 12, 1, 1.6 );
setRotateKey( spep_0 + 14, 1, 1.6 );
setRotateKey( spep_0 + 16, 1, 1.5 );
setRotateKey( spep_0 + 20, 1, 1.5 );
setRotateKey( spep_0 + 22, 1, 1.4 );
setRotateKey( spep_0 + 26, 1, 1.4 );
setRotateKey( spep_0 + 28, 1, 1.3 );
setRotateKey( spep_0 + 36, 1, 1.3 );
setRotateKey( spep_0 + 38, 1, 1.2 );
setRotateKey( spep_0 + 46, 1, 1.2 );
setRotateKey( spep_0 + 48, 1, 1.1 );
setRotateKey( spep_0 + 64, 1, 1.1 );
setRotateKey( spep_0 + 66, 1, 1 );
setRotateKey( spep_0 + 68, 1, 1 );

--SE
--対峙
--SE001 = playSe( spep_0 + 0, 8,"",1.0 );
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+68;
------------------------------------------------------
--指差し攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, attack, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, attack, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack, 0 );
setEffRotateKey( spep_1 + 56, attack, 0 );
setEffAlphaKey( spep_1 + 0, attack, 255 );
setEffAlphaKey( spep_1 + 54, attack, 255 );
setEffAlphaKey( spep_1 + 55, attack, 255 );
setEffAlphaKey( spep_1 + 56, attack, 0 );

--SE
--気弾撃つ
--SE002 = playSe( spep_1 + 12, 1189 ,"",0.8);
--SE003 = playSe( spep_1 + 14, 1005 ,"",0.8);
SE002 = playSeVer2( spep_1 + 12, 1189, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_1 + 12, SE002, 148 );
SE003 = playSeVer2( spep_1 + 14, 1005, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_1 + 14, SE003, 57 );

--白フェード
entryFade( spep_1 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);

   
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
--気弾撃つ
--SE004 = playSe( spep_1 + 18, 1012 ,"",0.8);
--SE005 = playSe( spep_1 + 18, 1003 ,"",0.8);
--SE006 = playSe( spep_1 + 18, 1236 ,"",0.8);
--SE007 = playSe( spep_1 + 20, 1016 ,"",0.8);
--SE008 = playSe( spep_1 + 20, 1109 ,"",0.8);
SE004 = playSeVer2( spep_1 + 18, 1012, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_1 + 18, SE004, 81 );
SE005 = playSeVer2( spep_1 + 18, 1003, "", 0, 0, 0, 0.8);
SE006 = playSeVer2( spep_1 + 18, 1236, "",spep_1 + 78, 0, 4, 0.8);
setSeVolumeByWorkId( spep_1 + 18, SE006, 158 );
SE007 = playSeVer2( spep_1 + 20, 1016, "", 0, 0, 0, 0.8);
SE008 = playSeVer2( spep_1 + 20, 1109, "", 0, 0, 0, 0.8);

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
--指差し攻撃敵にHIT
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 66, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 64, hit_f, 255 );
setEffAlphaKey( spep_2 + 65, hit_f, 255 );
setEffAlphaKey( spep_2 + 66, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 66, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 64, hit_b, 255 );
setEffAlphaKey( spep_2 + 65, hit_b, 255 );
setEffAlphaKey( spep_2 + 66, hit_b, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 18,  906, 20, 0x100, -1, 0, 221.3, -0.5 );
setEffShake( spep_2-3 + 18, shuchusen1, 20, 20 );
setEffMoveKey( spep_2-3 + 18, shuchusen1, 0, -0.5 , 0 );
setEffMoveKey( spep_2-3 + 20, shuchusen1, 3, 0.5 , 0 );
setEffMoveKey( spep_2-3 + 22, shuchusen1, 6.2, -0.5 , 0 );
setEffMoveKey( spep_2-3 + 24, shuchusen1, 9.5, 0.5 , 0 );
setEffMoveKey( spep_2-3 + 26, shuchusen1, 12.6, -0.6 , 0 );
setEffMoveKey( spep_2-3 + 28, shuchusen1, 15.8, 0.6 , 0 );
setEffMoveKey( spep_2-3 + 30, shuchusen1, 19, -0.6 , 0 );
setEffMoveKey( spep_2-3 + 32, shuchusen1, 22.1, 0.6 , 0 );
setEffMoveKey( spep_2-3 + 34, shuchusen1, 25.3, -0.6 , 0 );
setEffMoveKey( spep_2-3 + 36, shuchusen1, 28.4, 0.6 , 0 );
setEffMoveKey( spep_2-3 + 38, shuchusen1, 31.6, 0.6 , 0 );

setEffScaleKey( spep_2-3 + 18, shuchusen1, 1.31, 1.31 );
setEffScaleKey( spep_2-3 + 20, shuchusen1, 1.33, 1.33 );
setEffScaleKey( spep_2-3 + 22, shuchusen1, 1.35, 1.35 );
setEffScaleKey( spep_2-3 + 24, shuchusen1, 1.37, 1.37 );
setEffScaleKey( spep_2-3 + 26, shuchusen1, 1.39, 1.39 );
setEffScaleKey( spep_2-3 + 28, shuchusen1, 1.41, 1.41 );
setEffScaleKey( spep_2-3 + 30, shuchusen1, 1.42, 1.42 );
setEffScaleKey( spep_2-3 + 32, shuchusen1, 1.44, 1.44 );
setEffScaleKey( spep_2-3 + 34, shuchusen1, 1.46, 1.46 );
setEffScaleKey( spep_2-3 + 36, shuchusen1, 1.48, 1.48 );
setEffScaleKey( spep_2-3 + 38, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_2-3 + 18, shuchusen1, 0 );
setEffRotateKey( spep_2-3 + 38, shuchusen1, 0 );

setEffAlphaKey( spep_2-3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 20, shuchusen1, 230 );
setEffAlphaKey( spep_2-3 + 22, shuchusen1, 204 );
setEffAlphaKey( spep_2-3 + 24, shuchusen1, 179 );
setEffAlphaKey( spep_2-3 + 26, shuchusen1, 153 );
setEffAlphaKey( spep_2-3 + 28, shuchusen1, 128 );
setEffAlphaKey( spep_2-3 + 30, shuchusen1, 102 );
setEffAlphaKey( spep_2-3 + 32, shuchusen1, 77 );
setEffAlphaKey( spep_2-3 + 34, shuchusen1, 51 );
setEffAlphaKey( spep_2-3 + 36, shuchusen1, 25 );
setEffAlphaKey( spep_2-3 + 38, shuchusen1, 0 );

--敵の動き
setDisp( spep_2-3 + 0, 1, 1 );
setDisp( spep_2-1 + 68, 1, 0 );

changeAnime( spep_2-3 + 0, 1, 100 );
changeAnime( spep_2-3 + 18, 1, 108 );

setMoveKey( spep_2 + 0, 1, -46.2, 1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -16.4, 1 , 0 );
setMoveKey( spep_2-3 + 4, 1, -8.4, 1 , 0 );
setMoveKey( spep_2-3 + 6, 1, -3.8, 1 , 0 );
setMoveKey( spep_2-3 + 8, 1, -0.9, 1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 0.9, 1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 2, 1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 2.6, 1 , 0 );
setMoveKey( spep_2-3 + 17, 1, 2.8, 1 , 0 );
setMoveKey( spep_2-3 + 18, 1, 24.3, 4.8 , 0 );
setMoveKey( spep_2-3 + 20, 1, 20.5, 10.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 19.2, -2.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, 18.8, 8.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 18.8, -1.8 , 0 );
setMoveKey( spep_2-3 + 28, 1, 18.6, 7.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, 19.1, -0.8 , 0 );
setMoveKey( spep_2-3 + 32, 1, 19.5, 6.4 , 0 );
setMoveKey( spep_2-3 + 34, 1, 20, 0.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, 20.4, 6.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 20.9, 1.8 , 0 );
setMoveKey( spep_2-3 + 40, 1, 21.3, 6.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 21.8, 2.1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 22.3, 5.7 , 0 );
setMoveKey( spep_2-3 + 46, 1, 22.8, 2.7 , 0 );
setMoveKey( spep_2-3 + 48, 1, 23.2, 5.9 , 0 );
setMoveKey( spep_2-3 + 50, 1, 23.7, 3.7 , 0 );
setMoveKey( spep_2-3 + 52, 1, 24.2, 6.4 , 0 );
setMoveKey( spep_2-3 + 54, 1, 24.7, 4.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 25.3, 6.5 , 0 );
setMoveKey( spep_2-3 + 58, 1, 25.8, 5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 26.3, 7 , 0 );
setMoveKey( spep_2-3 + 62, 1, 26.8, 5.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 27.4, 7.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 27.9, 6.3 , 0 );
setMoveKey( spep_2-1 + 68, 1, 28.5, 7.2 , 0 );

setScaleKey( spep_2 + 0, 1, 2, 2 );
--setScaleKey( spep_2-3 + 2, 1, 1.94, 1.94 );
setScaleKey( spep_2-3 + 4, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 6, 1, 1.91, 1.91 );
setScaleKey( spep_2-3 + 8, 1, 1.91, 1.91 );
setScaleKey( spep_2-3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 17, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 18, 1, 2.47, 2.47 );
setScaleKey( spep_2-3 + 20, 1, 2.07, 2.07 );
setScaleKey( spep_2-3 + 22, 1, 1.94, 1.94 );
setScaleKey( spep_2-3 + 24, 1, 1.9, 1.9 );
setScaleKey( spep_2-1 + 68, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 17, 1, 0 );
setRotateKey( spep_2-3 + 18, 1, -29.5 );
setRotateKey( spep_2-3 + 20, 1, -29.2 );
setRotateKey( spep_2-3 + 22, 1, -28.9 );
setRotateKey( spep_2-3 + 24, 1, -28.6 );
setRotateKey( spep_2-3 + 26, 1, -28.3 );
setRotateKey( spep_2-3 + 28, 1, -28 );
setRotateKey( spep_2-3 + 30, 1, -27.9 );
setRotateKey( spep_2-3 + 32, 1, -27.8 );
setRotateKey( spep_2-3 + 34, 1, -27.7 );
setRotateKey( spep_2-3 + 36, 1, -27.6 );
setRotateKey( spep_2-3 + 38, 1, -27.4 );
setRotateKey( spep_2-3 + 40, 1, -27.3 );
setRotateKey( spep_2-3 + 42, 1, -27.2 );
setRotateKey( spep_2-3 + 44, 1, -27.1 );
setRotateKey( spep_2-3 + 46, 1, -27 );
setRotateKey( spep_2-3 + 48, 1, -26.9 );
setRotateKey( spep_2-3 + 50, 1, -26.7 );
setRotateKey( spep_2-3 + 52, 1, -26.6 );
setRotateKey( spep_2-3 + 54, 1, -26.5 );
setRotateKey( spep_2-3 + 56, 1, -26.3 );
setRotateKey( spep_2-3 + 58, 1, -26.2 );
setRotateKey( spep_2-3 + 60, 1, -26.1 );
setRotateKey( spep_2-3 + 62, 1, -26 );
setRotateKey( spep_2-3 + 64, 1, -25.8 );
setRotateKey( spep_2-3 + 66, 1, -25.7 );
setRotateKey( spep_2-1 + 68, 1, -25.5 );

--SE
--気弾撃つ
--stopSe( spep_2 + 24, SE006, 4 );

--気弾ヒット
--SE009 = playSe( spep_2 + 16, 1023 );
--SE010 = playSe( spep_2 + 20, 1017 );
SE009 = playSeVer2( spep_2 + 16, 1023, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 20, 1017, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_2 + 58, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+66;
------------------------------------------------------
--攻撃予備動作
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 100, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 100, tame, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, -0.5 );
setEffShake( spep_3 + 0, shuchusen2, 98, 20 );
setEffMoveKey( spep_3 + 0, shuchusen2, 0, -0.5 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen2, 0, -0.5 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.31, 1.31 );
setEffScaleKey( spep_3 + 98, shuchusen2, 1.31, 1.31 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 98, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen2, 255 );

--顔カットインのタイミング指定
spep_x=spep_3 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  130,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--正面構え
--SE011 = playSe( spep_3 + 0, 1072 );
--SE012 = playSe( spep_3 + 14, 44 );
SE011 = playSeVer2( spep_3 + 0, 1072, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 14, 44, "", 0, 0, 0, -1);
setPitch( spep_3 + 14, SE012, -400 );
setTimeStretch( SE012, 0.73, 10, 1 );

--顔カットイン
--SE013 = playSe( spep_x + 12, 1018 ,"",0.8);
SE013 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, 0.8);

--白フェード
entryFade( spep_3 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_c=spep_3+100;

--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_c + 94;
------------------------------------------------------
--正面
------------------------------------------------------
-- ** エフェクト等 ** --
front = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, front, 0, 0, 0 );
setEffMoveKey( spep_5 + 130, front, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, front, 1.0, 1.0 );
setEffScaleKey( spep_5 + 130, front, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, front, 0 );
setEffRotateKey( spep_5 + 130, front, 0 );
setEffAlphaKey( spep_5 + 0, front, 255 );
setEffAlphaKey( spep_5 + 130, front, 255 );

--SE
--ズームアウト
--SE015 = playSe( spep_5 + 0, 1072 );
--setSeVolumeByWorkId( spep_5 + 0, SE015, 0 );
--setSeVolumeByWorkId( spep_5 + 1, SE015, 10 );
--setSeVolumeByWorkId( spep_5 + 2, SE015, 20 );
--setSeVolumeByWorkId( spep_5 + 3, SE015, 30 );
--setSeVolumeByWorkId( spep_5 + 4, SE015, 40 );
--setSeVolumeByWorkId( spep_5 + 5, SE015, 50 );
--setSeVolumeByWorkId( spep_5 + 6, SE015, 60 );
--setSeVolumeByWorkId( spep_5 + 7, SE015, 70 );
--setSeVolumeByWorkId( spep_5 + 8, SE015, 80 );
--setSeVolumeByWorkId( spep_5 + 9, SE015, 90 );
--setSeVolumeByWorkId( spep_5 + 10, SE015, 100 );
SE015 = playSeVer2( spep_5 + 0, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE015,  150 );

--正面気弾連打
--SE016 = playSe( spep_5 + 48, 1236 );
--SE017 = playSe( spep_5 + 48, 1016 );
--stopSe( spep_5 + 60, SE017, 4 );
--SE018 = playSe( spep_5 + 48, 1109 );
--stopSe( spep_5 + 64, SE018, 6 );
--SE019 = playSe( spep_5 + 62, 1016 );
--stopSe( spep_5 + 72, SE019, 6 );
--SE020 = playSe( spep_5 + 62, 1109 );
--stopSe( spep_5 + 74, SE020, 8 );
--SE021 = playSe( spep_5 + 74, 1016 );
--stopSe( spep_5 + 84, SE021, 8 );
--SE022 = playSe( spep_5 + 74, 1109 );
--stopSe( spep_5 + 88, SE022, 8 );
--SE023 = playSe( spep_5 + 86, 1016 );
--stopSe( spep_5 + 98, SE023, 6 );
--SE024 = playSe( spep_5 + 86, 1109 );
--stopSe( spep_5 + 100, SE024, 6 );
--SE025 = playSe( spep_5 + 100, 1016 );
--stopSe( spep_5 + 112, SE025, 6 );
--SE026 = playSe( spep_5 + 100, 1109 );
--stopSe( spep_5 + 112, SE026, 6 );
--SE027 = playSe( spep_5 + 112, 1016 );
--SE028 = playSe( spep_5 + 112, 1109 );
--SE029 = playSe( spep_5 + 120, 1016 );
SE016 = playSeVer2( spep_5 + 48, 1236, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 48, SE016, 126 );
SE017 = playSeVer2( spep_5 + 48, 1016, "",spep_5 + 64, 0, 4, -1);
SE018 = playSeVer2( spep_5 + 48, 1109, "",spep_5 + 70, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 48, SE018, 77 );
SE019 = playSeVer2( spep_5 + 62, 1016, "",spep_5 + 78, 0, 6, -1);
SE020 = playSeVer2( spep_5 + 62, 1109, "",spep_5 + 82, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 62, SE020, 68 );
SE021 = playSeVer2( spep_5 + 74, 1016, "",spep_5 + 92, 0, 8, -1);
SE022 = playSeVer2( spep_5 + 74, 1109, "",spep_5 + 96, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 74, SE022, 71 );
SE023 = playSeVer2( spep_5 + 86, 1016, "",spep_5 + 104, 0, 6, -1);
SE024 = playSeVer2( spep_5 + 86, 1109, "",spep_5 + 106, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 86, SE024, 65 );
SE025 = playSeVer2( spep_5 + 100, 1016, "",spep_5 + 118, 0, 6, -1);
SE026 = playSeVer2( spep_5 + 100, 1109, "",spep_5 + 118, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 100, SE026, 65 );
SE027 = playSeVer2( spep_5 + 112, 1016, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_5 + 112, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 112, SE028, 61 );
SE029 = playSeVer2( spep_5 + 120, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 120, SE029, 82 );


--白フェード
entryFade( spep_5 + 126, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 130;
------------------------------------------------------
--斜め
------------------------------------------------------
-- ** エフェクト等 ** --
diagonal_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, diagonal_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 70, diagonal_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, diagonal_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, diagonal_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, diagonal_f, 0 );
setEffRotateKey( spep_6 + 70, diagonal_f, 0 );
setEffAlphaKey( spep_6 + 0, diagonal_f, 255 );
setEffAlphaKey( spep_6 + 70, diagonal_f, 255 );

-- ** エフェクト等 ** --
diagonal_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, diagonal_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 70, diagonal_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, diagonal_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, diagonal_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, diagonal_b, 0 );
setEffRotateKey( spep_6 + 70, diagonal_b, 0 );
setEffAlphaKey( spep_6 + 0, diagonal_b, 255 );
setEffAlphaKey( spep_6 + 70, diagonal_b, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_6 + 0,  10014, 68, 0x100, -1, 0, 44.1, 260.2 );
setEffShake( spep_6 + 0, ctzudododo, 68, 10 );
setEffMoveKey( spep_6 + 0, ctzudododo, 44.1, 260.2 , 0 );
setEffMoveKey( spep_6 + 2, ctzudododo, 50.9, 243.8 , 0 );
setEffMoveKey( spep_6 + 4, ctzudododo, 42.9, 263.9 , 0 );
setEffMoveKey( spep_6 + 6, ctzudododo, 49.8, 247.3 , 0 );
setEffMoveKey( spep_6 + 8, ctzudododo, 41.7, 267.5 , 0 );
setEffMoveKey( spep_6 + 10, ctzudododo, 48.6, 250.8 , 0 );
setEffMoveKey( spep_6 + 12, ctzudododo, 40.5, 271.1 , 0 );
setEffMoveKey( spep_6 + 14, ctzudododo, 47.5, 254.3 , 0 );
setEffMoveKey( spep_6 + 16, ctzudododo, 39.3, 274.7 , 0 );
setEffMoveKey( spep_6 + 18, ctzudododo, 46.3, 257.8 , 0 );
setEffMoveKey( spep_6 + 20, ctzudododo, 38.1, 278.3 , 0 );
setEffMoveKey( spep_6 + 22, ctzudododo, 45.2, 261.4 , 0 );
setEffMoveKey( spep_6 + 24, ctzudododo, 36.9, 281.9 , 0 );
setEffMoveKey( spep_6 + 26, ctzudododo, 44, 264.9 , 0 );
setEffMoveKey( spep_6 + 28, ctzudododo, 35.7, 285.5 , 0 );
setEffMoveKey( spep_6 + 30, ctzudododo, 42.9, 268.4 , 0 );
setEffMoveKey( spep_6 + 32, ctzudododo, 34.6, 289.2 , 0 );
setEffMoveKey( spep_6 + 34, ctzudododo, 41.8, 271.9 , 0 );
setEffMoveKey( spep_6 + 36, ctzudododo, 33.4, 292.8 , 0 );
setEffMoveKey( spep_6 + 38, ctzudododo, 40.6, 275.4 , 0 );
setEffMoveKey( spep_6 + 40, ctzudododo, 32.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 42, ctzudododo, 39.5, 278.9 , 0 );
setEffMoveKey( spep_6 + 44, ctzudododo, 31, 300 , 0 );
setEffMoveKey( spep_6 + 46, ctzudododo, 38.3, 282.4 , 0 );
setEffMoveKey( spep_6 + 48, ctzudododo, 29.8, 303.6 , 0 );
setEffMoveKey( spep_6 + 50, ctzudododo, 37.2, 285.9 , 0 );
setEffMoveKey( spep_6 + 52, ctzudododo, 28.6, 307.2 , 0 );
setEffMoveKey( spep_6 + 54, ctzudododo, 36, 289.4 , 0 );
setEffMoveKey( spep_6 + 56, ctzudododo, 27.4, 310.8 , 0 );
setEffMoveKey( spep_6 + 58, ctzudododo, 34.9, 292.9 , 0 );
setEffMoveKey( spep_6 + 60, ctzudododo, 26.2, 314.4 , 0 );
setEffMoveKey( spep_6 + 62, ctzudododo, 33.7, 296.4 , 0 );
setEffMoveKey( spep_6 + 64, ctzudododo, 25, 318.1 , 0 );
setEffMoveKey( spep_6 + 66, ctzudododo, 32.6, 300 , 0 );
setEffMoveKey( spep_6 + 68, ctzudododo, 23.8, 321.7 , 0 );

setEffScaleKey( spep_6 + 0, ctzudododo, 2.51, 2.51 );
setEffScaleKey( spep_6 + 2, ctzudododo, 2.52, 2.52 );
setEffScaleKey( spep_6 + 4, ctzudododo, 2.52, 2.52 );
setEffScaleKey( spep_6 + 6, ctzudododo, 2.53, 2.53 );
setEffScaleKey( spep_6 + 8, ctzudododo, 2.54, 2.54 );
setEffScaleKey( spep_6 + 10, ctzudododo, 2.54, 2.54 );
setEffScaleKey( spep_6 + 12, ctzudododo, 2.55, 2.55 );
setEffScaleKey( spep_6 + 14, ctzudododo, 2.56, 2.56 );
setEffScaleKey( spep_6 + 16, ctzudododo, 2.57, 2.57 );
setEffScaleKey( spep_6 + 18, ctzudododo, 2.57, 2.57 );
setEffScaleKey( spep_6 + 20, ctzudododo, 2.58, 2.58 );
setEffScaleKey( spep_6 + 22, ctzudododo, 2.59, 2.59 );
setEffScaleKey( spep_6 + 24, ctzudododo, 2.59, 2.59 );
setEffScaleKey( spep_6 + 26, ctzudododo, 2.6, 2.6 );
setEffScaleKey( spep_6 + 28, ctzudododo, 2.61, 2.61 );
setEffScaleKey( spep_6 + 30, ctzudododo, 2.62, 2.62 );
setEffScaleKey( spep_6 + 32, ctzudododo, 2.62, 2.62 );
setEffScaleKey( spep_6 + 34, ctzudododo, 2.63, 2.63 );
setEffScaleKey( spep_6 + 36, ctzudododo, 2.64, 2.64 );
setEffScaleKey( spep_6 + 38, ctzudododo, 2.64, 2.64 );
setEffScaleKey( spep_6 + 40, ctzudododo, 2.65, 2.65 );
setEffScaleKey( spep_6 + 42, ctzudododo, 2.66, 2.66 );
setEffScaleKey( spep_6 + 44, ctzudododo, 2.67, 2.67 );
setEffScaleKey( spep_6 + 46, ctzudododo, 2.67, 2.67 );
setEffScaleKey( spep_6 + 48, ctzudododo, 2.68, 2.68 );
setEffScaleKey( spep_6 + 50, ctzudododo, 2.69, 2.69 );
setEffScaleKey( spep_6 + 52, ctzudododo, 2.69, 2.69 );
setEffScaleKey( spep_6 + 54, ctzudododo, 2.7, 2.7 );
setEffScaleKey( spep_6 + 56, ctzudododo, 2.71, 2.71 );
setEffScaleKey( spep_6 + 58, ctzudododo, 2.72, 2.72 );
setEffScaleKey( spep_6 + 60, ctzudododo, 2.72, 2.72 );
setEffScaleKey( spep_6 + 62, ctzudododo, 2.73, 2.73 );
setEffScaleKey( spep_6 + 64, ctzudododo, 2.74, 2.74 );
setEffScaleKey( spep_6 + 66, ctzudododo, 2.75, 2.75 );
setEffScaleKey( spep_6 + 68, ctzudododo, 2.75, 2.75 );

setEffRotateKey( spep_6 + 0, ctzudododo, -6.2 );
setEffRotateKey( spep_6 + 68, ctzudododo, -6.2 );

setEffAlphaKey( spep_6 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_6 + 68, ctzudododo, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 68, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );
changeAnime( spep_6-3 + 8, 1, 106 );
changeAnime( spep_6-3 + 16, 1, 108 );
changeAnime( spep_6-3 + 24, 1, 106 );
changeAnime( spep_6-3 + 32, 1, 108 );
changeAnime( spep_6-3 + 40, 1, 106 );
changeAnime( spep_6-3 + 48, 1, 108 );
changeAnime( spep_6-3 + 56, 1, 106 );
changeAnime( spep_6-3 + 64, 1, 108 );

setMoveKey( spep_6-3 + 0, 1, 137.1, 133.1 , 0 );
setMoveKey( spep_6-3 + 2, 1, 136.7, 129 , 0 );
setMoveKey( spep_6-3 + 4, 1, 136.1, 145.8 , 0 );
setMoveKey( spep_6-3 + 7, 1, 135.9, 139.2 , 0 );
setMoveKey( spep_6-3 + 8, 1, 146.8, 138.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 135.9, 126.8 , 0 );
setMoveKey( spep_6-3 + 12, 1, 135.7, 133.3 , 0 );
setMoveKey( spep_6-3 + 15, 1, 145.9, 131.6 , 0 );
setMoveKey( spep_6-3 + 16, 1, 135.4, 132.7 , 0 );
setMoveKey( spep_6-3 + 18, 1, 135.2, 125.6 , 0 );
setMoveKey( spep_6-3 + 20, 1, 134.9, 141.7 , 0 );
setMoveKey( spep_6-3 + 23, 1, 134.7, 135.6 , 0 );
setMoveKey( spep_6-3 + 24, 1, 144.8, 135.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 134.9, 124.5 , 0 );
setMoveKey( spep_6-3 + 28, 1, 134.8, 131.2 , 0 );
setMoveKey( spep_6-3 + 31, 1, 144.3, 129.3 , 0 );
setMoveKey( spep_6-3 + 32, 1, 134.5, 130.9 , 0 );
setMoveKey( spep_6-3 + 34, 1, 134.5, 123.9 , 0 );
setMoveKey( spep_6-3 + 36, 1, 134.1, 139.5 , 0 );
setMoveKey( spep_6-3 + 39, 1, 134, 133.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 143.6, 134.1 , 0 );
setMoveKey( spep_6-3 + 42, 1, 134.2, 123.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, 134.2, 129.9 , 0 );
setMoveKey( spep_6-3 + 47, 1, 143.3, 127.9 , 0 );
setMoveKey( spep_6-3 + 48, 1, 134, 129.7 , 0 );
setMoveKey( spep_6-3 + 50, 1, 134, 122.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, 133.7, 138 , 0 );
setMoveKey( spep_6-3 + 55, 1, 133.6, 132.1 , 0 );
setMoveKey( spep_6-3 + 56, 1, 142.8, 133 , 0 );
setMoveKey( spep_6-3 + 58, 1, 133.8, 122.2 , 0 );
setMoveKey( spep_6-3 + 60, 1, 133.8, 128.9 , 0 );
setMoveKey( spep_6-3 + 63, 1, 142.5, 126.8 , 0 );
setMoveKey( spep_6-3 + 64, 1, 133.6, 128.8 , 0 );
setMoveKey( spep_6-3 + 66, 1, 133.6, 123 , 0 );
setMoveKey( spep_6-1 + 68, 1, 133.3, 136.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1.12, 1.12 );
--setScaleKey( spep_6-3 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_6-3 + 4, 1, 1.07, 1.07 );
setScaleKey( spep_6-3 + 7, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 8, 1, 0.97, 0.97 );
setScaleKey( spep_6-3 + 10, 1, 0.95, 0.95 );
setScaleKey( spep_6-3 + 12, 1, 0.94, 0.94 );
setScaleKey( spep_6-3 + 15, 1, 0.93, 0.93 );
setScaleKey( spep_6-3 + 16, 1, 0.98, 0.98 );
setScaleKey( spep_6-3 + 18, 1, 0.97, 0.97 );
setScaleKey( spep_6-3 + 20, 1, 0.96, 0.96 );
setScaleKey( spep_6-3 + 23, 1, 0.95, 0.95 );
setScaleKey( spep_6-3 + 24, 1, 0.89, 0.89 );
setScaleKey( spep_6-3 + 26, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 28, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 31, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_6-3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_6-3 + 36, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 39, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 40, 1, 0.84, 0.84 );
setScaleKey( spep_6-3 + 42, 1, 0.83, 0.83 );
setScaleKey( spep_6-3 + 44, 1, 0.83, 0.83 );
setScaleKey( spep_6-3 + 47, 1, 0.82, 0.82 );
setScaleKey( spep_6-3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 50, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 52, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 55, 1, 0.86, 0.86 );
setScaleKey( spep_6-3 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 60, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 63, 1, 0.79, 0.79 );
setScaleKey( spep_6-3 + 64, 1, 0.84, 0.84 );
setScaleKey( spep_6-1 + 68, 1, 0.84, 0.84 );

setRotateKey( spep_6 + 0, 1, -25.8 );
setRotateKey( spep_6-3 + 7, 1, -25.8 );
setRotateKey( spep_6-3 + 8, 1, -47.7 );
setRotateKey( spep_6-3 + 15, 1, -47.7 );
setRotateKey( spep_6-3 + 16, 1, -25.8 );
setRotateKey( spep_6-3 + 23, 1, -25.8 );
setRotateKey( spep_6-3 + 24, 1, -47.7 );
setRotateKey( spep_6-3 + 31, 1, -47.7 );
setRotateKey( spep_6-3 + 32, 1, -25.8 );
setRotateKey( spep_6-3 + 39, 1, -25.8 );
setRotateKey( spep_6-3 + 40, 1, -47.7 );
setRotateKey( spep_6-3 + 47, 1, -47.7 );
setRotateKey( spep_6-3 + 48, 1, -25.8 );
setRotateKey( spep_6-3 + 55, 1, -25.8 );
setRotateKey( spep_6-3 + 56, 1, -47.7 );
setRotateKey( spep_6-3 + 63, 1, -47.7 );
setRotateKey( spep_6-3 + 64, 1, -25.8 );
setRotateKey( spep_6-1 + 68, 1, -25.8 );

----奥向き連続気弾
--SE030 = playSe( spep_6 + 0, 1016 );
SE030 = playSeVer2( spep_6 + 0, 1016, "",spep_6 + 16, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 0, SE030, 79 );
--stopSe( spep_6 + 10, SE030, 6 );

--連続爆発
--SE031 = playSe( spep_6 + 4, 1017 );
SE031 = playSeVer2( spep_6 + 4, 1017, "",spep_6 + 30, 0, 12, -1);
setSeVolumeByWorkId( spep_6 + 4, SE031, 88 );
--stopSe( spep_6 + 18, SE031, 12 );
--SE032 = playSe( spep_6 + 8, 1011 );
SE032 = playSeVer2( spep_6 + 8, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 8, SE032, 88 );

--奥向き連続気弾
--SE033 = playSe( spep_6 + 8, 1016 );
--stopSe( spep_6 + 18, SE033, 6 );
--SE034 = playSe( spep_6 + 10, 1005 );
SE033 = playSeVer2( spep_6 + 8, 1016, "",spep_6 + 24, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 8, SE033, 87 );
SE034 = playSeVer2( spep_6 + 10, 1005, "", 0, 0, 0, -1);

--連続爆発
--SE035 = playSe( spep_6 + 14, 1017 );
--stopSe( spep_6 + 30, SE035, 8 );
SE035 = playSeVer2( spep_6 + 14, 1017, "",spep_6 + 38, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 14, SE035, 85 );

--奥向き連続気弾
--SE036 = playSe( spep_6 + 14, 1016 );
--stopSe( spep_6 + 26, SE036, 6 );
--SE037 = playSe( spep_6 + 24, 1016 );
--stopSe( spep_6 + 34, SE037, 6 );
SE036 = playSeVer2( spep_6 + 14, 1016, "",spep_6 + 32, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 14, SE036, 91 );
SE037 = playSeVer2( spep_6 + 24, 1016, "",spep_6 + 40, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 24, SE037, 82 );

--連続爆発
--SE038 = playSe( spep_6 + 28, 1017 );
SE038 = playSeVer2( spep_6 + 28, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 28, SE038, 88 );

--奥向き連続気弾
--SE039 = playSe( spep_6 + 28, 1016 );
--stopSe( spep_6 + 40, SE039, 4 );
--SE040 = playSe( spep_6 + 30, 1005 );
--SE041 = playSe( spep_6 + 36, 1016 );
--stopSe( spep_6 + 46, SE041, 8 );
--SE042 = playSe( spep_6 + 44, 1016 );
--stopSe( spep_6 + 54, SE042, 6 );
--SE043 = playSe( spep_6 + 52, 1016 );
--stopSe( spep_6 + 64, SE043, 6 );
--SE044 = playSe( spep_6 + 60, 1016 );
SE039 = playSeVer2( spep_6 + 28, 1016, "",spep_6 + 44, 0, 4, -1);
setSeVolumeByWorkId( spep_6 + 28, SE039, 89 );
SE040 = playSeVer2( spep_6 + 30, 1005, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_6 + 36, 1016, "",spep_6 + 54, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 36, SE041, 84 );
SE042 = playSeVer2( spep_6 + 44, 1016, "",spep_6 + 60, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 44, SE042, 84 );
SE043 = playSeVer2( spep_6 + 52, 1016, "",spep_6 + 70, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 52, SE043, 91 );
SE044 = playSeVer2( spep_6 + 60, 1016, "",spep_6 + 76, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 60, SE044, 90 );

--横向き連続気弾
--SE045 = playSe( spep_6 + 64, 1005 );
SE045 = playSeVer2( spep_6 + 64, 1005, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_6 + 66, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 66;
------------------------------------------------------
--横位置_攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
side = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, side, 0, 0, 0 );
setEffMoveKey( spep_7 + 96, side, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, side, 1.0, 1.0 );
setEffScaleKey( spep_7 + 96, side, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, side, 0 );
setEffRotateKey( spep_7 + 96, side, 0 );
setEffAlphaKey( spep_7 + 0, side, 255 );
setEffAlphaKey( spep_7 + 96, side, 255 );

--SE
--奥向き連続気弾
--stopSe( spep_7 + 4, SE044, 6 );
--SE046 = playSe( spep_7 + 6, 1016 );
--SE047 = playSe( spep_7 + 6, 1109 );
SE046 = playSeVer2( spep_7 + 6, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 6, SE046, 88 );
SE047 = playSeVer2( spep_7 + 6, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 6, SE047, 68 );

--横向き連続気弾
--SE048 = playSe( spep_7 + 6, 1016 );
--stopSe( spep_7 + 20, SE048, 4 );
--SE049 = playSe( spep_7 + 20, 1016 );
--stopSe( spep_7 + 32, SE049, 6 );
--SE050 = playSe( spep_7 + 20, 1109 );
--stopSe( spep_7 + 32, SE050, 6 );
--SE051 = playSe( spep_7 + 32, 1016 );
--stopSe( spep_7 + 46, SE051, 4 );
--SE052 = playSe( spep_7 + 32, 1109 );
--stopSe( spep_7 + 46, SE052, 2 );
--SE053 = playSe( spep_7 + 44, 1016 );
--stopSe( spep_7 + 60, SE053, 4 );
--SE054 = playSe( spep_7 + 44, 1109 );
--stopSe( spep_7 + 58, SE054, 4 );
--SE055 = playSe( spep_7 + 52, 1016 );
--stopSe( spep_7 + 68, SE055, 4 );
--SE056 = playSe( spep_7 + 52, 1109 );
--stopSe( spep_7 + 64, SE056, 4 );
--SE057 = playSe( spep_7 + 62, 1016 );
--stopSe( spep_7 + 76, SE057, 4 );
--SE058 = playSe( spep_7 + 62, 1109 );
--stopSe( spep_7 + 72, SE058, 4 );
--SE059 = playSe( spep_7 + 68, 1016 );
--stopSe( spep_7 + 82, SE059, 6 );
--SE060 = playSe( spep_7 + 68, 1109 );
--stopSe( spep_7 + 78, SE060, 6 );
--SE061 = playSe( spep_7 + 78, 1016 );
--stopSe( spep_7 + 92, SE061, 4 );
--SE062 = playSe( spep_7 + 78, 1109 );
--stopSe( spep_7 + 88, SE062, 4 );
--SE063 = playSe( spep_7 + 84, 1016 );
--stopSe( spep_7 + 98, SE063, 6 );
--SE064 = playSe( spep_7 + 84, 1109 );
--stopSe( spep_7 + 94, SE064, 6 );
--SE065 = playSe( spep_7 + 94, 1016 );
--SE066 = playSe( spep_7 + 94, 1109 );
SE048 = playSeVer2( spep_7 + 6, 1016, "",spep_7 + 20, 0, 4, -1);
SE049 = playSeVer2( spep_7 + 20, 1016, "",spep_7 + 34, 0, 6, -1);
SE050 = playSeVer2( spep_7 + 20, 1109, "",spep_7 + 38, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 26, SE050, 86 );
SE051 = playSeVer2( spep_7 + 32, 1016, "",spep_7 + 46, 0, 4, -1);
SE052 = playSeVer2( spep_7 + 32, 1109, "",spep_7 + 48, 0, 2, -1);
setSeVolumeByWorkId( spep_7 + 36, SE052, 74 );
SE053 = playSeVer2( spep_7 + 44, 1016, "",spep_7 + 58, 0, 4, -1);
SE054 = playSeVer2( spep_7 + 44, 1109, "",spep_7 + 62, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 44, SE054, 82 );
SE055 = playSeVer2( spep_7 + 52, 1016, "",spep_7 + 68, 0, 4, -1);
SE056 = playSeVer2( spep_7 + 52, 1109, "",spep_7 + 68, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 52, SE056, 77 );
SE057 = playSeVer2( spep_7 + 62, 1016, "",spep_7 + 76, 0, 4, -1);
SE058 = playSeVer2( spep_7 + 62, 1109, "",spep_7 + 76, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 62, SE058, 87 );
SE059 = playSeVer2( spep_7 + 68, 1016, "",spep_7 + 84, 0, 6, -1);
SE060 = playSeVer2( spep_7 + 68, 1109, "",spep_7 + 84, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 68, SE060, 80 );
SE061 = playSeVer2( spep_7 + 78, 1016, "",spep_7 + 92, 0, 4, -1);
SE062 = playSeVer2( spep_7 + 78, 1109, "",spep_7 + 92, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 78, SE062, 81 );
SE063 = playSeVer2( spep_7 + 84, 1016, "",spep_7 + 100, 0, 6, -1);
SE064 = playSeVer2( spep_7 + 84, 1109, "",spep_7 + 100, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 84, SE064, 81 );
SE065 = playSeVer2( spep_7 + 94, 1016, "",spep_7 + 108, 0, 4, -1);
SE066 = playSeVer2( spep_7 + 94, 1109, "",spep_7 + 108, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 94, SE066, 83 );

--白フェード
entryFade( spep_7 + 90, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 96, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 96;
------------------------------------------------------
--波動&煙
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 120, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 120, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 120, finish_b, 255 );

setDisp( spep_8 + 0, 1, 1 );

changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 18.6, -39.7 , 0 );
setMoveKey( spep_8 + 2, 1, 18, -41 , 0 );
setMoveKey( spep_8 + 4, 1, 20.2, -29 , 0 );
setMoveKey( spep_8 + 6, 1, 18, -37.7 , 0 );
setMoveKey( spep_8 + 8, 1, 20, -26 , 0 );
setMoveKey( spep_8 + 10, 1, 18, -36.6 , 0 );
setMoveKey( spep_8 + 12, 1, 19.9, -24.1 , 0 );
setMoveKey( spep_8 + 14, 1, 18, -34.5 , 0 );
setMoveKey( spep_8 + 16, 1, 19.7, -27.2 , 0 );
setMoveKey( spep_8 + 18, 1, 18.1, -28.9 , 0 );
setMoveKey( spep_8 + 20, 1, 19.6, -25.5 , 0 );
setMoveKey( spep_8 + 22, 1, 18.1, -31.4 , 0 );
setMoveKey( spep_8 + 24, 1, 19.4, -20.1 , 0 );
setMoveKey( spep_8 + 26, 1, 18.1, -31.1 , 0 );
setMoveKey( spep_8 + 28, 1, 19.4, -19 , 0 );
setMoveKey( spep_8 + 30, 1, 18.1, -29.6 , 0 );
setMoveKey( spep_8 + 32, 1, 18.1, -22 , 0 );
setMoveKey( spep_8 + 34, 1, 19.2, -25.5 , 0 );
setMoveKey( spep_8 + 36, 1, 18.1, -22.3 , 0 );
setMoveKey( spep_8 + 38, 1, 19.1, -34.2 , 0 );
setMoveKey( spep_8 + 40, 1, 18, -11.6 , 0 );
setMoveKey( spep_8 + 42, 1, 19, -26.5 , 0 );
setMoveKey( spep_8 + 44, 1, 18.1, -6.7 , 0 );
setMoveKey( spep_8 + 46, 1, 18.9, -34.4 , 0 );
setMoveKey( spep_8 + 48, 1, 18.1, -22.6 , 0 );
setMoveKey( spep_8 + 50, 1, 18.9, -12.8 , 0 );
setMoveKey( spep_8 + 52, 1, 18.1, -21.4 , 0 );
setMoveKey( spep_8 + 54, 1, 18.8, -12.2 , 0 );
setMoveKey( spep_8 + 56, 1, 18.1, -20.8 , 0 );
setMoveKey( spep_8 + 58, 1, 18.8, -12.6 , 0 );
setMoveKey( spep_8 + 60, 1, 18.1, -19.6 , 0 );
setMoveKey( spep_8 + 62, 1, 18.1, -11.8 , 0 );
setMoveKey( spep_8 + 64, 1, 18.7, -19 , 0 );
setMoveKey( spep_8 + 66, 1, 18.1, -11.1 , 0 );
setMoveKey( spep_8 + 68, 1, 18.6, -18.6 , 0 );
setMoveKey( spep_8 + 70, 1, 18.1, -12.1 , 0 );
setMoveKey( spep_8 + 72, 1, 18.5, -18.3 , 0 );
setMoveKey( spep_8 + 74, 1, 18.1, -12.5 , 0 );
setMoveKey( spep_8 + 76, 1, 18.5, -11.8 , 0 );
setMoveKey( spep_8 + 78, 1, 18.1, -16.5 , 0 );
setMoveKey( spep_8 + 80, 1, 18.5, -11.2 , 0 );
setMoveKey( spep_8 + 82, 1, 18.1, -16.5 , 0 );
setMoveKey( spep_8 + 84, 1, 18.5, -11.5 , 0 );
setMoveKey( spep_8 + 86, 1, 18.1, -16.3 , 0 );
setMoveKey( spep_8 + 88, 1, 18.4, -11.2 , 0 );
setMoveKey( spep_8 + 90, 1, 18.1, -15.2 , 0 );
setMoveKey( spep_8 + 92, 1, 18.1, -11.2 , 0 );
setMoveKey( spep_8 + 94, 1, 18.1, -10.3 , 0 );
setMoveKey( spep_8 + 96, 1, 18.1, -15.3 , 0 );
setMoveKey( spep_8 + 98, 1, 18.1, -9.6 , 0 );
setMoveKey( spep_8 + 100, 1, 18.1, -14.6 , 0 );
setMoveKey( spep_8 + 102, 1, 18.2, -9 , 0 );
setMoveKey( spep_8 + 104, 1, 18.2, -13.8 , 0 );
setMoveKey( spep_8 + 106, 1, 18.2, -8.7 , 0 );
setMoveKey( spep_8 + 108, 1, 18.2, -13 , 0 );
setMoveKey( spep_8 + 110, 1, 18.2, -9.5 , 0 );
setMoveKey( spep_8 + 112, 1, 18.1, -13 , 0 );
setMoveKey( spep_8 + 114, 1, 18.1, -9.6 , 0 );
setMoveKey( spep_8 + 116, 1, 18.1, -12.4 , 0 );
setMoveKey( spep_8 + 118, 1, 18.2, -9.8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_8 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_8 + 4, 1, 0.78, 0.78 );
setScaleKey( spep_8 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_8 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_8 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_8 + 18, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 30, 1, 0.75, 0.75 );
setScaleKey( spep_8 + 44, 1, 0.75, 0.75 );
setScaleKey( spep_8 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_8 + 66, 1, 0.74, 0.74 );
setScaleKey( spep_8 + 68, 1, 0.73, 0.73 );
setScaleKey( spep_8 + 96, 1, 0.73, 0.73 );
setScaleKey( spep_8 + 98, 1, 0.72, 0.72 );
setScaleKey( spep_8 + 118, 1, 0.72, 0.72 );

setRotateKey( spep_8 + 0, 1, 1 );
setRotateKey( spep_8 + 2, 1, 2.5 );
setRotateKey( spep_8 + 4, 1, -3.7 );
setRotateKey( spep_8 + 6, 1, 2.5 );
setRotateKey( spep_8 + 8, 1, -3.7 );
setRotateKey( spep_8 + 10, 1, 2.5 );
setRotateKey( spep_8 + 12, 1, -3.7 );
setRotateKey( spep_8 + 14, 1, 2.5 );
setRotateKey( spep_8 + 16, 1, -3.7 );
setRotateKey( spep_8 + 18, 1, 2.5 );
setRotateKey( spep_8 + 20, 1, -3.7 );
setRotateKey( spep_8 + 22, 1, 2.5 );
setRotateKey( spep_8 + 24, 1, -3.7 );
setRotateKey( spep_8 + 26, 1, 2.5 );
setRotateKey( spep_8 + 28, 1, -3.7 );
setRotateKey( spep_8 + 30, 1, 2.5 );
setRotateKey( spep_8 + 32, 1, 2.5 );
setRotateKey( spep_8 + 34, 1, -3.7 );
setRotateKey( spep_8 + 36, 1, 2.5 );
setRotateKey( spep_8 + 38, 1, -3.7 );
setRotateKey( spep_8 + 40, 1, 2.5 );
setRotateKey( spep_8 + 42, 1, -3.7 );
setRotateKey( spep_8 + 44, 1, 2.5 );
setRotateKey( spep_8 + 46, 1, -3.7 );
setRotateKey( spep_8 + 48, 1, 2.5 );
setRotateKey( spep_8 + 50, 1, -3.7 );
setRotateKey( spep_8 + 52, 1, 2.5 );
setRotateKey( spep_8 + 54, 1, -3.7 );
setRotateKey( spep_8 + 56, 1, 2.5 );
setRotateKey( spep_8 + 58, 1, -3.7 );
setRotateKey( spep_8 + 60, 1, 2.5 );
setRotateKey( spep_8 + 62, 1, 2.5 );
setRotateKey( spep_8 + 64, 1, -3.7 );
setRotateKey( spep_8 + 66, 1, 2.5 );
setRotateKey( spep_8 + 68, 1, -3.7 );
setRotateKey( spep_8 + 70, 1, 2.5 );
setRotateKey( spep_8 + 72, 1, -3.7 );
setRotateKey( spep_8 + 74, 1, 2.5 );
setRotateKey( spep_8 + 76, 1, -3.7 );
setRotateKey( spep_8 + 78, 1, 2.5 );
setRotateKey( spep_8 + 80, 1, -3.7 );
setRotateKey( spep_8 + 82, 1, 2.5 );
setRotateKey( spep_8 + 84, 1, -3.7 );
setRotateKey( spep_8 + 86, 1, 2.5 );
setRotateKey( spep_8 + 88, 1, -3.7 );
setRotateKey( spep_8 + 90, 1, 2.5 );
setRotateKey( spep_8 + 118, 1, 2.5 );

--SE
--横向き連続気弾
--stopSe( spep_8 + 8, SE065, 4 );
--stopSe( spep_8 + 8, SE066, 4 );

--ラスト連続気弾
--SE067 = playSe( spep_8 + 6, 1016 );
--SE068 = playSe( spep_8 + 10, 1005 );
--SE069 = playSe( spep_8 + 12, 1016 );
--SE070 = playSe( spep_8 + 22, 1011 );
--stopSe( spep_8 + 42, SE070, 10 );
--SE071 = playSe( spep_8 + 22, 1016 );
--SE072 = playSe( spep_8 + 26, 1005 );
--SE073 = playSe( spep_8 + 30, 1016 );
--SE074 = playSe( spep_8 + 34, 1011 );
--stopSe( spep_8 + 56, SE074, 8 );
--SE075 = playSe( spep_8 + 34, 1023 );
--SE076 = playSe( spep_8 + 34, 1005 );
--SE077 = playSe( spep_8 + 52, 1011 );
--SE078 = playSe( spep_8 + 52, 1024 );
SE067 = playSeVer2( spep_8 + 6, 1016, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_8 + 10, 1005, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_8 + 12, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 12, SE069, 86 );
SE070 = playSeVer2( spep_8 + 22, 1011, "",spep_8 + 52, 0, 10, -1);
SE071 = playSeVer2( spep_8 + 22, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 22, SE071, 84 );
SE072 = playSeVer2( spep_8 + 26, 1005, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_8 + 30, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 30, SE073, 93 );
SE074 = playSeVer2( spep_8 + 34, 1011, "",spep_8 + 64, 0, 8, -1);
SE075 = playSeVer2( spep_8 + 34, 1023, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_8 + 34, 1005, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_8 + 52, 1011, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_8 + 52, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_8 +10 );
endPhase( spep_8 + 110 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--敵と対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, confrontation, 0, 0, 0 );
setEffMoveKey( spep_0 + 68, confrontation, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 68, confrontation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation, 0 );
setEffRotateKey( spep_0 + 68, confrontation, 0 );
setEffAlphaKey( spep_0 + 0, confrontation, 255 );
setEffAlphaKey( spep_0 + 66, confrontation, 255 );
setEffAlphaKey( spep_0 + 67, confrontation, 255 );
setEffAlphaKey( spep_0 + 68, confrontation, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 68, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 177, 172.8 , 0 );
setMoveKey( spep_0 + 1, 1, 177, 172.8 , 0 );
setMoveKey( spep_0 + 2, 1, 164.2, 175.7 , 0 );
setMoveKey( spep_0 + 3, 1, 164.2, 175.7 , 0 );
setMoveKey( spep_0 + 4, 1, 158.4, 176.9 , 0 );
setMoveKey( spep_0 + 5, 1, 158.4, 176.9 , 0 );
setMoveKey( spep_0 + 6, 1, 153.9, 177.9 , 0 );
setMoveKey( spep_0 + 8, 1, 150.3, 178.7 , 0 );
setMoveKey( spep_0 + 10, 1, 147.1, 179.4 , 0 );
setMoveKey( spep_0 + 12, 1, 144.2, 180.1 , 0 );
setMoveKey( spep_0 + 14, 1, 141.7, 180.6 , 0 );
setMoveKey( spep_0 + 16, 1, 139.3, 181.1 , 0 );
setMoveKey( spep_0 + 18, 1, 137.2, 181.6 , 0 );
setMoveKey( spep_0 + 20, 1, 135.2, 182 , 0 );
setMoveKey( spep_0 + 22, 1, 133.4, 182.4 , 0 );
setMoveKey( spep_0 + 24, 1, 131.6, 182.8 , 0 );
setMoveKey( spep_0 + 26, 1, 130, 183.2 , 0 );
setMoveKey( spep_0 + 28, 1, 128.5, 183.5 , 0 );
setMoveKey( spep_0 + 30, 1, 127, 183.8 , 0 );
setMoveKey( spep_0 + 32, 1, 125.7, 184.1 , 0 );
setMoveKey( spep_0 + 34, 1, 124.4, 184.4 , 0 );
setMoveKey( spep_0 + 36, 1, 123.2, 184.7 , 0 );
setMoveKey( spep_0 + 38, 1, 122, 184.9 , 0 );
setMoveKey( spep_0 + 40, 1, 121, 185.2 , 0 );
setMoveKey( spep_0 + 42, 1, 119.9, 185.4 , 0 );
setMoveKey( spep_0 + 44, 1, 119, 185.6 , 0 );
setMoveKey( spep_0 + 46, 1, 118.1, 185.8 , 0 );
setMoveKey( spep_0 + 48, 1, 117.2, 186 , 0 );
setMoveKey( spep_0 + 50, 1, 116.4, 186.2 , 0 );
setMoveKey( spep_0 + 52, 1, 115.7, 186.3 , 0 );
setMoveKey( spep_0 + 54, 1, 115, 186.5 , 0 );
setMoveKey( spep_0 + 56, 1, 114.3, 186.6 , 0 );
setMoveKey( spep_0 + 58, 1, 113.7, 186.8 , 0 );
setMoveKey( spep_0 + 60, 1, 113.1, 186.9 , 0 );
setMoveKey( spep_0 + 62, 1, 112.6, 187 , 0 );
setMoveKey( spep_0 + 64, 1, 112.1, 187.1 , 0 );
setMoveKey( spep_0 + 66, 1, 111.6, 187.2 , 0 );
setMoveKey( spep_0 + 88, 1, 111.2, 187.3 , 0 );

setScaleKey( spep_0 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 1, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 3, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 4, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 5, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 6, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 12, 1, 0.78, 0.78 );
--setScaleKey( spep_0 + 14, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 26, 1, 0.77, 0.77 );
--setScaleKey( spep_0 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 50, 1, 0.76, 0.76 );
--setScaleKey( spep_0 + 52, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 88, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 0, 1, 2.2 );
setRotateKey( spep_0 + 1, 1, 2.2 );
setRotateKey( spep_0 + 2, 1, 2 );
setRotateKey( spep_0 + 3, 1, 2 );
setRotateKey( spep_0 + 4, 1, 1.9 );
setRotateKey( spep_0 + 5, 1, 1.9 );
setRotateKey( spep_0 + 6, 1, 1.8 );
setRotateKey( spep_0 + 8, 1, 1.7 );
setRotateKey( spep_0 + 10, 1, 1.7 );
setRotateKey( spep_0 + 12, 1, 1.6 );
setRotateKey( spep_0 + 14, 1, 1.6 );
setRotateKey( spep_0 + 16, 1, 1.5 );
setRotateKey( spep_0 + 20, 1, 1.5 );
setRotateKey( spep_0 + 22, 1, 1.4 );
setRotateKey( spep_0 + 26, 1, 1.4 );
setRotateKey( spep_0 + 28, 1, 1.3 );
setRotateKey( spep_0 + 36, 1, 1.3 );
setRotateKey( spep_0 + 38, 1, 1.2 );
setRotateKey( spep_0 + 46, 1, 1.2 );
setRotateKey( spep_0 + 48, 1, 1.1 );
setRotateKey( spep_0 + 64, 1, 1.1 );
setRotateKey( spep_0 + 66, 1, 1 );
setRotateKey( spep_0 + 68, 1, 1 );

--SE
--対峙
--SE001 = playSe( spep_0 + 0, 8,"",1.0 );
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+68;
------------------------------------------------------
--指差し攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, attack, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, attack, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, attack, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack, 0 );
setEffRotateKey( spep_1 + 56, attack, 0 );
setEffAlphaKey( spep_1 + 0, attack, 255 );
setEffAlphaKey( spep_1 + 54, attack, 255 );
setEffAlphaKey( spep_1 + 55, attack, 255 );
setEffAlphaKey( spep_1 + 56, attack, 0 );

--SE
--気弾撃つ
--SE002 = playSe( spep_1 + 12, 1189 ,"",0.8);
--SE003 = playSe( spep_1 + 14, 1005 ,"",0.8);
SE002 = playSeVer2( spep_1 + 12, 1189, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_1 + 12, SE002, 148 );
SE003 = playSeVer2( spep_1 + 14, 1005, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_1 + 14, SE003, 57 );

--白フェード
entryFade( spep_1 + 14, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);

   
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
--気弾撃つ
--SE004 = playSe( spep_1 + 18, 1012 ,"",0.8);
--SE005 = playSe( spep_1 + 18, 1003 ,"",0.8);
--SE006 = playSe( spep_1 + 18, 1236 ,"",0.8);
--SE007 = playSe( spep_1 + 20, 1016 ,"",0.8);
--SE008 = playSe( spep_1 + 20, 1109 ,"",0.8);
SE004 = playSeVer2( spep_1 + 18, 1012, "", 0, 0, 0, 0.8);
setSeVolumeByWorkId( spep_1 + 18, SE004, 81 );
SE005 = playSeVer2( spep_1 + 18, 1003, "", 0, 0, 0, 0.8);
SE006 = playSeVer2( spep_1 + 18, 1236, "",spep_1 + 78, 0, 4, 0.8);
setSeVolumeByWorkId( spep_1 + 18, SE006, 158 );
SE007 = playSeVer2( spep_1 + 20, 1016, "", 0, 0, 0, 0.8);
SE008 = playSeVer2( spep_1 + 20, 1109, "", 0, 0, 0, 0.8);

--次の準備
spep_2=spep_1+56;
------------------------------------------------------
--指差し攻撃敵にHIT
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, hit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 66, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 64, hit_f, 255 );
setEffAlphaKey( spep_2 + 65, hit_f, 255 );
setEffAlphaKey( spep_2 + 66, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 66, hit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 66, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 66, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 64, hit_b, 255 );
setEffAlphaKey( spep_2 + 65, hit_b, 255 );
setEffAlphaKey( spep_2 + 66, hit_b, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 18,  906, 20, 0x100, -1, 0, 221.3, -0.5 );
setEffShake( spep_2-3 + 18, shuchusen1, 20, 20 );
setEffMoveKey( spep_2-3 + 18, shuchusen1, 0, -0.5 , 0 );
setEffMoveKey( spep_2-3 + 20, shuchusen1, 3, 0.5 , 0 );
setEffMoveKey( spep_2-3 + 22, shuchusen1, 6.2, -0.5 , 0 );
setEffMoveKey( spep_2-3 + 24, shuchusen1, 9.5, 0.5 , 0 );
setEffMoveKey( spep_2-3 + 26, shuchusen1, 12.6, -0.6 , 0 );
setEffMoveKey( spep_2-3 + 28, shuchusen1, 15.8, 0.6 , 0 );
setEffMoveKey( spep_2-3 + 30, shuchusen1, 19, -0.6 , 0 );
setEffMoveKey( spep_2-3 + 32, shuchusen1, 22.1, 0.6 , 0 );
setEffMoveKey( spep_2-3 + 34, shuchusen1, 25.3, -0.6 , 0 );
setEffMoveKey( spep_2-3 + 36, shuchusen1, 28.4, 0.6 , 0 );
setEffMoveKey( spep_2-3 + 38, shuchusen1, 31.6, 0.6 , 0 );

setEffScaleKey( spep_2-3 + 18, shuchusen1, 1.31, 1.31 );
setEffScaleKey( spep_2-3 + 20, shuchusen1, 1.33, 1.33 );
setEffScaleKey( spep_2-3 + 22, shuchusen1, 1.35, 1.35 );
setEffScaleKey( spep_2-3 + 24, shuchusen1, 1.37, 1.37 );
setEffScaleKey( spep_2-3 + 26, shuchusen1, 1.39, 1.39 );
setEffScaleKey( spep_2-3 + 28, shuchusen1, 1.41, 1.41 );
setEffScaleKey( spep_2-3 + 30, shuchusen1, 1.42, 1.42 );
setEffScaleKey( spep_2-3 + 32, shuchusen1, 1.44, 1.44 );
setEffScaleKey( spep_2-3 + 34, shuchusen1, 1.46, 1.46 );
setEffScaleKey( spep_2-3 + 36, shuchusen1, 1.48, 1.48 );
setEffScaleKey( spep_2-3 + 38, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_2-3 + 18, shuchusen1, 0 );
setEffRotateKey( spep_2-3 + 38, shuchusen1, 0 );

setEffAlphaKey( spep_2-3 + 18, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 20, shuchusen1, 230 );
setEffAlphaKey( spep_2-3 + 22, shuchusen1, 204 );
setEffAlphaKey( spep_2-3 + 24, shuchusen1, 179 );
setEffAlphaKey( spep_2-3 + 26, shuchusen1, 153 );
setEffAlphaKey( spep_2-3 + 28, shuchusen1, 128 );
setEffAlphaKey( spep_2-3 + 30, shuchusen1, 102 );
setEffAlphaKey( spep_2-3 + 32, shuchusen1, 77 );
setEffAlphaKey( spep_2-3 + 34, shuchusen1, 51 );
setEffAlphaKey( spep_2-3 + 36, shuchusen1, 25 );
setEffAlphaKey( spep_2-3 + 38, shuchusen1, 0 );

--敵の動き
setDisp( spep_2-3 + 0, 1, 1 );
setDisp( spep_2-1 + 68, 1, 0 );

changeAnime( spep_2-3 + 0, 1, 100 );
changeAnime( spep_2-3 + 18, 1, 108 );

setMoveKey( spep_2 + 0, 1, -46.2, 1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -16.4, 1 , 0 );
setMoveKey( spep_2-3 + 4, 1, -8.4, 1 , 0 );
setMoveKey( spep_2-3 + 6, 1, -3.8, 1 , 0 );
setMoveKey( spep_2-3 + 8, 1, -0.9, 1 , 0 );
setMoveKey( spep_2-3 + 10, 1, 0.9, 1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 2, 1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 2.6, 1 , 0 );
setMoveKey( spep_2-3 + 17, 1, 2.8, 1 , 0 );
setMoveKey( spep_2-3 + 18, 1, 24.3, 4.8 , 0 );
setMoveKey( spep_2-3 + 20, 1, 20.5, 10.6 , 0 );
setMoveKey( spep_2-3 + 22, 1, 19.2, -2.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, 18.8, 8.1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 18.8, -1.8 , 0 );
setMoveKey( spep_2-3 + 28, 1, 18.6, 7.7 , 0 );
setMoveKey( spep_2-3 + 30, 1, 19.1, -0.8 , 0 );
setMoveKey( spep_2-3 + 32, 1, 19.5, 6.4 , 0 );
setMoveKey( spep_2-3 + 34, 1, 20, 0.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, 20.4, 6.5 , 0 );
setMoveKey( spep_2-3 + 38, 1, 20.9, 1.8 , 0 );
setMoveKey( spep_2-3 + 40, 1, 21.3, 6.8 , 0 );
setMoveKey( spep_2-3 + 42, 1, 21.8, 2.1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 22.3, 5.7 , 0 );
setMoveKey( spep_2-3 + 46, 1, 22.8, 2.7 , 0 );
setMoveKey( spep_2-3 + 48, 1, 23.2, 5.9 , 0 );
setMoveKey( spep_2-3 + 50, 1, 23.7, 3.7 , 0 );
setMoveKey( spep_2-3 + 52, 1, 24.2, 6.4 , 0 );
setMoveKey( spep_2-3 + 54, 1, 24.7, 4.6 , 0 );
setMoveKey( spep_2-3 + 56, 1, 25.3, 6.5 , 0 );
setMoveKey( spep_2-3 + 58, 1, 25.8, 5 , 0 );
setMoveKey( spep_2-3 + 60, 1, 26.3, 7 , 0 );
setMoveKey( spep_2-3 + 62, 1, 26.8, 5.7 , 0 );
setMoveKey( spep_2-3 + 64, 1, 27.4, 7.3 , 0 );
setMoveKey( spep_2-3 + 66, 1, 27.9, 6.3 , 0 );
setMoveKey( spep_2-1 + 68, 1, 28.5, 7.2 , 0 );

setScaleKey( spep_2 + 0, 1, 2, 2 );
--setScaleKey( spep_2-3 + 2, 1, 1.94, 1.94 );
setScaleKey( spep_2-3 + 4, 1, 1.92, 1.92 );
setScaleKey( spep_2-3 + 6, 1, 1.91, 1.91 );
setScaleKey( spep_2-3 + 8, 1, 1.91, 1.91 );
setScaleKey( spep_2-3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 17, 1, 1.9, 1.9 );
setScaleKey( spep_2-3 + 18, 1, 2.47, 2.47 );
setScaleKey( spep_2-3 + 20, 1, 2.07, 2.07 );
setScaleKey( spep_2-3 + 22, 1, 1.94, 1.94 );
setScaleKey( spep_2-3 + 24, 1, 1.9, 1.9 );
setScaleKey( spep_2-1 + 68, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 17, 1, 0 );
setRotateKey( spep_2-3 + 18, 1, -29.5 );
setRotateKey( spep_2-3 + 20, 1, -29.2 );
setRotateKey( spep_2-3 + 22, 1, -28.9 );
setRotateKey( spep_2-3 + 24, 1, -28.6 );
setRotateKey( spep_2-3 + 26, 1, -28.3 );
setRotateKey( spep_2-3 + 28, 1, -28 );
setRotateKey( spep_2-3 + 30, 1, -27.9 );
setRotateKey( spep_2-3 + 32, 1, -27.8 );
setRotateKey( spep_2-3 + 34, 1, -27.7 );
setRotateKey( spep_2-3 + 36, 1, -27.6 );
setRotateKey( spep_2-3 + 38, 1, -27.4 );
setRotateKey( spep_2-3 + 40, 1, -27.3 );
setRotateKey( spep_2-3 + 42, 1, -27.2 );
setRotateKey( spep_2-3 + 44, 1, -27.1 );
setRotateKey( spep_2-3 + 46, 1, -27 );
setRotateKey( spep_2-3 + 48, 1, -26.9 );
setRotateKey( spep_2-3 + 50, 1, -26.7 );
setRotateKey( spep_2-3 + 52, 1, -26.6 );
setRotateKey( spep_2-3 + 54, 1, -26.5 );
setRotateKey( spep_2-3 + 56, 1, -26.3 );
setRotateKey( spep_2-3 + 58, 1, -26.2 );
setRotateKey( spep_2-3 + 60, 1, -26.1 );
setRotateKey( spep_2-3 + 62, 1, -26 );
setRotateKey( spep_2-3 + 64, 1, -25.8 );
setRotateKey( spep_2-3 + 66, 1, -25.7 );
setRotateKey( spep_2-1 + 68, 1, -25.5 );

--SE
--気弾撃つ
--stopSe( spep_2 + 24, SE006, 4 );

--気弾ヒット
--SE009 = playSe( spep_2 + 16, 1023 );
--SE010 = playSe( spep_2 + 20, 1017 );
SE009 = playSeVer2( spep_2 + 16, 1023, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 20, 1017, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_2 + 58, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+66;
------------------------------------------------------
--攻撃予備動作
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 100, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 100, tame, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 0, -0.5 );
setEffShake( spep_3 + 0, shuchusen2, 98, 20 );
setEffMoveKey( spep_3 + 0, shuchusen2, 0, -0.5 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen2, 0, -0.5 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.31, 1.31 );
setEffScaleKey( spep_3 + 98, shuchusen2, 1.31, 1.31 );

setEffRotateKey( spep_3 + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 + 98, shuchusen2, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen2, 255 );

--顔カットインのタイミング指定
spep_x=spep_3 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  130,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--正面構え
--SE011 = playSe( spep_3 + 0, 1072 );
--SE012 = playSe( spep_3 + 14, 44 );
SE011 = playSeVer2( spep_3 + 0, 1072, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 14, 44, "", 0, 0, 0, -1);
setPitch( spep_3 + 14, SE012, -400 );
setTimeStretch( SE012, 0.73, 10, 1 );

--顔カットイン
--SE013 = playSe( spep_x + 12, 1018 ,"",0.8);
--SE013 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, 0.8);

--白フェード
entryFade( spep_3 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_c=spep_3+100;

--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_c + 94;
------------------------------------------------------
--正面
------------------------------------------------------
-- ** エフェクト等 ** --
front = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, front, 0, 0, 0 );
setEffMoveKey( spep_5 + 130, front, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, front, -1.0, 1.0 );
setEffScaleKey( spep_5 + 130, front, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, front, 0 );
setEffRotateKey( spep_5 + 130, front, 0 );
setEffAlphaKey( spep_5 + 0, front, 255 );
setEffAlphaKey( spep_5 + 130, front, 255 );

--SE
--ズームアウト
--SE015 = playSe( spep_5 + 0, 1072 );
--setSeVolumeByWorkId( spep_5 + 0, SE015, 0 );
--setSeVolumeByWorkId( spep_5 + 1, SE015, 10 );
--setSeVolumeByWorkId( spep_5 + 2, SE015, 20 );
--setSeVolumeByWorkId( spep_5 + 3, SE015, 30 );
--setSeVolumeByWorkId( spep_5 + 4, SE015, 40 );
--setSeVolumeByWorkId( spep_5 + 5, SE015, 50 );
--setSeVolumeByWorkId( spep_5 + 6, SE015, 60 );
--setSeVolumeByWorkId( spep_5 + 7, SE015, 70 );
--setSeVolumeByWorkId( spep_5 + 8, SE015, 80 );
--setSeVolumeByWorkId( spep_5 + 9, SE015, 90 );
--setSeVolumeByWorkId( spep_5 + 10, SE015, 100 );
SE015 = playSeVer2( spep_5 + 0, 1072, "", 0, 10, 0, -1);
setStartTimeMs( SE015,  150 );

--正面気弾連打
--SE016 = playSe( spep_5 + 48, 1236 );
--SE017 = playSe( spep_5 + 48, 1016 );
--stopSe( spep_5 + 60, SE017, 4 );
--SE018 = playSe( spep_5 + 48, 1109 );
--stopSe( spep_5 + 64, SE018, 6 );
--SE019 = playSe( spep_5 + 62, 1016 );
--stopSe( spep_5 + 72, SE019, 6 );
--SE020 = playSe( spep_5 + 62, 1109 );
--stopSe( spep_5 + 74, SE020, 8 );
--SE021 = playSe( spep_5 + 74, 1016 );
--stopSe( spep_5 + 84, SE021, 8 );
--SE022 = playSe( spep_5 + 74, 1109 );
--stopSe( spep_5 + 88, SE022, 8 );
--SE023 = playSe( spep_5 + 86, 1016 );
--stopSe( spep_5 + 98, SE023, 6 );
--SE024 = playSe( spep_5 + 86, 1109 );
--stopSe( spep_5 + 100, SE024, 6 );
--SE025 = playSe( spep_5 + 100, 1016 );
--stopSe( spep_5 + 112, SE025, 6 );
--SE026 = playSe( spep_5 + 100, 1109 );
--stopSe( spep_5 + 112, SE026, 6 );
--SE027 = playSe( spep_5 + 112, 1016 );
--SE028 = playSe( spep_5 + 112, 1109 );
--SE029 = playSe( spep_5 + 120, 1016 );
SE016 = playSeVer2( spep_5 + 48, 1236, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 48, SE016, 126 );
SE017 = playSeVer2( spep_5 + 48, 1016, "",spep_5 + 64, 0, 4, -1);
SE018 = playSeVer2( spep_5 + 48, 1109, "",spep_5 + 70, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 48, SE018, 77 );
SE019 = playSeVer2( spep_5 + 62, 1016, "",spep_5 + 78, 0, 6, -1);
SE020 = playSeVer2( spep_5 + 62, 1109, "",spep_5 + 82, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 62, SE020, 68 );
SE021 = playSeVer2( spep_5 + 74, 1016, "",spep_5 + 92, 0, 8, -1);
SE022 = playSeVer2( spep_5 + 74, 1109, "",spep_5 + 96, 0, 8, -1);
setSeVolumeByWorkId( spep_5 + 74, SE022, 71 );
SE023 = playSeVer2( spep_5 + 86, 1016, "",spep_5 + 104, 0, 6, -1);
SE024 = playSeVer2( spep_5 + 86, 1109, "",spep_5 + 106, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 86, SE024, 65 );
SE025 = playSeVer2( spep_5 + 100, 1016, "",spep_5 + 118, 0, 6, -1);
SE026 = playSeVer2( spep_5 + 100, 1109, "",spep_5 + 118, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 100, SE026, 65 );
SE027 = playSeVer2( spep_5 + 112, 1016, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_5 + 112, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 112, SE028, 61 );
SE029 = playSeVer2( spep_5 + 120, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 120, SE029, 82 );


--白フェード
entryFade( spep_5 + 126, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 130;
------------------------------------------------------
--斜め
------------------------------------------------------
-- ** エフェクト等 ** --
diagonal_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, diagonal_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 70, diagonal_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, diagonal_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, diagonal_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, diagonal_f, 0 );
setEffRotateKey( spep_6 + 70, diagonal_f, 0 );
setEffAlphaKey( spep_6 + 0, diagonal_f, 255 );
setEffAlphaKey( spep_6 + 70, diagonal_f, 255 );

-- ** エフェクト等 ** --
diagonal_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, diagonal_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 70, diagonal_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, diagonal_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 70, diagonal_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, diagonal_b, 0 );
setEffRotateKey( spep_6 + 70, diagonal_b, 0 );
setEffAlphaKey( spep_6 + 0, diagonal_b, 255 );
setEffAlphaKey( spep_6 + 70, diagonal_b, 255 );

--文字エントリー
ctzudododo = entryEffectLife( spep_6 + 0,  10014, 68, 0x100, -1, 0, 44.1, 260.2 );
setEffShake( spep_6 + 0, ctzudododo, 68, 10 );
setEffMoveKey( spep_6 + 0, ctzudododo, 44.1, 260.2 , 0 );
setEffMoveKey( spep_6 + 2, ctzudododo, 50.9, 243.8 , 0 );
setEffMoveKey( spep_6 + 4, ctzudododo, 42.9, 263.9 , 0 );
setEffMoveKey( spep_6 + 6, ctzudododo, 49.8, 247.3 , 0 );
setEffMoveKey( spep_6 + 8, ctzudododo, 41.7, 267.5 , 0 );
setEffMoveKey( spep_6 + 10, ctzudododo, 48.6, 250.8 , 0 );
setEffMoveKey( spep_6 + 12, ctzudododo, 40.5, 271.1 , 0 );
setEffMoveKey( spep_6 + 14, ctzudododo, 47.5, 254.3 , 0 );
setEffMoveKey( spep_6 + 16, ctzudododo, 39.3, 274.7 , 0 );
setEffMoveKey( spep_6 + 18, ctzudododo, 46.3, 257.8 , 0 );
setEffMoveKey( spep_6 + 20, ctzudododo, 38.1, 278.3 , 0 );
setEffMoveKey( spep_6 + 22, ctzudododo, 45.2, 261.4 , 0 );
setEffMoveKey( spep_6 + 24, ctzudododo, 36.9, 281.9 , 0 );
setEffMoveKey( spep_6 + 26, ctzudododo, 44, 264.9 , 0 );
setEffMoveKey( spep_6 + 28, ctzudododo, 35.7, 285.5 , 0 );
setEffMoveKey( spep_6 + 30, ctzudododo, 42.9, 268.4 , 0 );
setEffMoveKey( spep_6 + 32, ctzudododo, 34.6, 289.2 , 0 );
setEffMoveKey( spep_6 + 34, ctzudododo, 41.8, 271.9 , 0 );
setEffMoveKey( spep_6 + 36, ctzudododo, 33.4, 292.8 , 0 );
setEffMoveKey( spep_6 + 38, ctzudododo, 40.6, 275.4 , 0 );
setEffMoveKey( spep_6 + 40, ctzudododo, 32.2, 296.4 , 0 );
setEffMoveKey( spep_6 + 42, ctzudododo, 39.5, 278.9 , 0 );
setEffMoveKey( spep_6 + 44, ctzudododo, 31, 300 , 0 );
setEffMoveKey( spep_6 + 46, ctzudododo, 38.3, 282.4 , 0 );
setEffMoveKey( spep_6 + 48, ctzudododo, 29.8, 303.6 , 0 );
setEffMoveKey( spep_6 + 50, ctzudododo, 37.2, 285.9 , 0 );
setEffMoveKey( spep_6 + 52, ctzudododo, 28.6, 307.2 , 0 );
setEffMoveKey( spep_6 + 54, ctzudododo, 36, 289.4 , 0 );
setEffMoveKey( spep_6 + 56, ctzudododo, 27.4, 310.8 , 0 );
setEffMoveKey( spep_6 + 58, ctzudododo, 34.9, 292.9 , 0 );
setEffMoveKey( spep_6 + 60, ctzudododo, 26.2, 314.4 , 0 );
setEffMoveKey( spep_6 + 62, ctzudododo, 33.7, 296.4 , 0 );
setEffMoveKey( spep_6 + 64, ctzudododo, 25, 318.1 , 0 );
setEffMoveKey( spep_6 + 66, ctzudododo, 32.6, 300 , 0 );
setEffMoveKey( spep_6 + 68, ctzudododo, 23.8, 321.7 , 0 );

setEffScaleKey( spep_6 + 0, ctzudododo, 2.51, 2.51 );
setEffScaleKey( spep_6 + 2, ctzudododo, 2.52, 2.52 );
setEffScaleKey( spep_6 + 4, ctzudododo, 2.52, 2.52 );
setEffScaleKey( spep_6 + 6, ctzudododo, 2.53, 2.53 );
setEffScaleKey( spep_6 + 8, ctzudododo, 2.54, 2.54 );
setEffScaleKey( spep_6 + 10, ctzudododo, 2.54, 2.54 );
setEffScaleKey( spep_6 + 12, ctzudododo, 2.55, 2.55 );
setEffScaleKey( spep_6 + 14, ctzudododo, 2.56, 2.56 );
setEffScaleKey( spep_6 + 16, ctzudododo, 2.57, 2.57 );
setEffScaleKey( spep_6 + 18, ctzudododo, 2.57, 2.57 );
setEffScaleKey( spep_6 + 20, ctzudododo, 2.58, 2.58 );
setEffScaleKey( spep_6 + 22, ctzudododo, 2.59, 2.59 );
setEffScaleKey( spep_6 + 24, ctzudododo, 2.59, 2.59 );
setEffScaleKey( spep_6 + 26, ctzudododo, 2.6, 2.6 );
setEffScaleKey( spep_6 + 28, ctzudododo, 2.61, 2.61 );
setEffScaleKey( spep_6 + 30, ctzudododo, 2.62, 2.62 );
setEffScaleKey( spep_6 + 32, ctzudododo, 2.62, 2.62 );
setEffScaleKey( spep_6 + 34, ctzudododo, 2.63, 2.63 );
setEffScaleKey( spep_6 + 36, ctzudododo, 2.64, 2.64 );
setEffScaleKey( spep_6 + 38, ctzudododo, 2.64, 2.64 );
setEffScaleKey( spep_6 + 40, ctzudododo, 2.65, 2.65 );
setEffScaleKey( spep_6 + 42, ctzudododo, 2.66, 2.66 );
setEffScaleKey( spep_6 + 44, ctzudododo, 2.67, 2.67 );
setEffScaleKey( spep_6 + 46, ctzudododo, 2.67, 2.67 );
setEffScaleKey( spep_6 + 48, ctzudododo, 2.68, 2.68 );
setEffScaleKey( spep_6 + 50, ctzudododo, 2.69, 2.69 );
setEffScaleKey( spep_6 + 52, ctzudododo, 2.69, 2.69 );
setEffScaleKey( spep_6 + 54, ctzudododo, 2.7, 2.7 );
setEffScaleKey( spep_6 + 56, ctzudododo, 2.71, 2.71 );
setEffScaleKey( spep_6 + 58, ctzudododo, 2.72, 2.72 );
setEffScaleKey( spep_6 + 60, ctzudododo, 2.72, 2.72 );
setEffScaleKey( spep_6 + 62, ctzudododo, 2.73, 2.73 );
setEffScaleKey( spep_6 + 64, ctzudododo, 2.74, 2.74 );
setEffScaleKey( spep_6 + 66, ctzudododo, 2.75, 2.75 );
setEffScaleKey( spep_6 + 68, ctzudododo, 2.75, 2.75 );

setEffRotateKey( spep_6 + 0, ctzudododo, -6.2 );
setEffRotateKey( spep_6 + 68, ctzudododo, -6.2 );

setEffAlphaKey( spep_6 + 0, ctzudododo, 255 );
setEffAlphaKey( spep_6 + 68, ctzudododo, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 68, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );
changeAnime( spep_6-3 + 8, 1, 106 );
changeAnime( spep_6-3 + 16, 1, 108 );
changeAnime( spep_6-3 + 24, 1, 106 );
changeAnime( spep_6-3 + 32, 1, 108 );
changeAnime( spep_6-3 + 40, 1, 106 );
changeAnime( spep_6-3 + 48, 1, 108 );
changeAnime( spep_6-3 + 56, 1, 106 );
changeAnime( spep_6-3 + 64, 1, 108 );

setMoveKey( spep_6-3 + 0, 1, 137.1, 133.1 , 0 );
setMoveKey( spep_6-3 + 2, 1, 136.7, 129 , 0 );
setMoveKey( spep_6-3 + 4, 1, 136.1, 145.8 , 0 );
setMoveKey( spep_6-3 + 7, 1, 135.9, 139.2 , 0 );
setMoveKey( spep_6-3 + 8, 1, 146.8, 138.7 , 0 );
setMoveKey( spep_6-3 + 10, 1, 135.9, 126.8 , 0 );
setMoveKey( spep_6-3 + 12, 1, 135.7, 133.3 , 0 );
setMoveKey( spep_6-3 + 15, 1, 145.9, 131.6 , 0 );
setMoveKey( spep_6-3 + 16, 1, 135.4, 132.7 , 0 );
setMoveKey( spep_6-3 + 18, 1, 135.2, 125.6 , 0 );
setMoveKey( spep_6-3 + 20, 1, 134.9, 141.7 , 0 );
setMoveKey( spep_6-3 + 23, 1, 134.7, 135.6 , 0 );
setMoveKey( spep_6-3 + 24, 1, 144.8, 135.8 , 0 );
setMoveKey( spep_6-3 + 26, 1, 134.9, 124.5 , 0 );
setMoveKey( spep_6-3 + 28, 1, 134.8, 131.2 , 0 );
setMoveKey( spep_6-3 + 31, 1, 144.3, 129.3 , 0 );
setMoveKey( spep_6-3 + 32, 1, 134.5, 130.9 , 0 );
setMoveKey( spep_6-3 + 34, 1, 134.5, 123.9 , 0 );
setMoveKey( spep_6-3 + 36, 1, 134.1, 139.5 , 0 );
setMoveKey( spep_6-3 + 39, 1, 134, 133.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 143.6, 134.1 , 0 );
setMoveKey( spep_6-3 + 42, 1, 134.2, 123.2 , 0 );
setMoveKey( spep_6-3 + 44, 1, 134.2, 129.9 , 0 );
setMoveKey( spep_6-3 + 47, 1, 143.3, 127.9 , 0 );
setMoveKey( spep_6-3 + 48, 1, 134, 129.7 , 0 );
setMoveKey( spep_6-3 + 50, 1, 134, 122.7 , 0 );
setMoveKey( spep_6-3 + 52, 1, 133.7, 138 , 0 );
setMoveKey( spep_6-3 + 55, 1, 133.6, 132.1 , 0 );
setMoveKey( spep_6-3 + 56, 1, 142.8, 133 , 0 );
setMoveKey( spep_6-3 + 58, 1, 133.8, 122.2 , 0 );
setMoveKey( spep_6-3 + 60, 1, 133.8, 128.9 , 0 );
setMoveKey( spep_6-3 + 63, 1, 142.5, 126.8 , 0 );
setMoveKey( spep_6-3 + 64, 1, 133.6, 128.8 , 0 );
setMoveKey( spep_6-3 + 66, 1, 133.6, 123 , 0 );
setMoveKey( spep_6-1 + 68, 1, 133.3, 136.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1.12, 1.12 );
--setScaleKey( spep_6-3 + 2, 1, 1.09, 1.09 );
setScaleKey( spep_6-3 + 4, 1, 1.07, 1.07 );
setScaleKey( spep_6-3 + 7, 1, 1.05, 1.05 );
setScaleKey( spep_6-3 + 8, 1, 0.97, 0.97 );
setScaleKey( spep_6-3 + 10, 1, 0.95, 0.95 );
setScaleKey( spep_6-3 + 12, 1, 0.94, 0.94 );
setScaleKey( spep_6-3 + 15, 1, 0.93, 0.93 );
setScaleKey( spep_6-3 + 16, 1, 0.98, 0.98 );
setScaleKey( spep_6-3 + 18, 1, 0.97, 0.97 );
setScaleKey( spep_6-3 + 20, 1, 0.96, 0.96 );
setScaleKey( spep_6-3 + 23, 1, 0.95, 0.95 );
setScaleKey( spep_6-3 + 24, 1, 0.89, 0.89 );
setScaleKey( spep_6-3 + 26, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 28, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 31, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 32, 1, 0.92, 0.92 );
setScaleKey( spep_6-3 + 34, 1, 0.91, 0.91 );
setScaleKey( spep_6-3 + 36, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 39, 1, 0.9, 0.9 );
setScaleKey( spep_6-3 + 40, 1, 0.84, 0.84 );
setScaleKey( spep_6-3 + 42, 1, 0.83, 0.83 );
setScaleKey( spep_6-3 + 44, 1, 0.83, 0.83 );
setScaleKey( spep_6-3 + 47, 1, 0.82, 0.82 );
setScaleKey( spep_6-3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_6-3 + 50, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 52, 1, 0.87, 0.87 );
setScaleKey( spep_6-3 + 55, 1, 0.86, 0.86 );
setScaleKey( spep_6-3 + 56, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 60, 1, 0.8, 0.8 );
setScaleKey( spep_6-3 + 63, 1, 0.79, 0.79 );
setScaleKey( spep_6-3 + 64, 1, 0.84, 0.84 );
setScaleKey( spep_6-1 + 68, 1, 0.84, 0.84 );

setRotateKey( spep_6 + 0, 1, -25.8 );
setRotateKey( spep_6-3 + 7, 1, -25.8 );
setRotateKey( spep_6-3 + 8, 1, -47.7 );
setRotateKey( spep_6-3 + 15, 1, -47.7 );
setRotateKey( spep_6-3 + 16, 1, -25.8 );
setRotateKey( spep_6-3 + 23, 1, -25.8 );
setRotateKey( spep_6-3 + 24, 1, -47.7 );
setRotateKey( spep_6-3 + 31, 1, -47.7 );
setRotateKey( spep_6-3 + 32, 1, -25.8 );
setRotateKey( spep_6-3 + 39, 1, -25.8 );
setRotateKey( spep_6-3 + 40, 1, -47.7 );
setRotateKey( spep_6-3 + 47, 1, -47.7 );
setRotateKey( spep_6-3 + 48, 1, -25.8 );
setRotateKey( spep_6-3 + 55, 1, -25.8 );
setRotateKey( spep_6-3 + 56, 1, -47.7 );
setRotateKey( spep_6-3 + 63, 1, -47.7 );
setRotateKey( spep_6-3 + 64, 1, -25.8 );
setRotateKey( spep_6-1 + 68, 1, -25.8 );

----奥向き連続気弾
--SE030 = playSe( spep_6 + 0, 1016 );
SE030 = playSeVer2( spep_6 + 0, 1016, "",spep_6 + 16, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 0, SE030, 79 );
--stopSe( spep_6 + 10, SE030, 6 );

--連続爆発
--SE031 = playSe( spep_6 + 4, 1017 );
SE031 = playSeVer2( spep_6 + 4, 1017, "",spep_6 + 30, 0, 12, -1);
setSeVolumeByWorkId( spep_6 + 4, SE031, 88 );
--stopSe( spep_6 + 18, SE031, 12 );
--SE032 = playSe( spep_6 + 8, 1011 );
SE032 = playSeVer2( spep_6 + 8, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 8, SE032, 88 );

--奥向き連続気弾
--SE033 = playSe( spep_6 + 8, 1016 );
--stopSe( spep_6 + 18, SE033, 6 );
--SE034 = playSe( spep_6 + 10, 1005 );
SE033 = playSeVer2( spep_6 + 8, 1016, "",spep_6 + 24, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 8, SE033, 87 );
SE034 = playSeVer2( spep_6 + 10, 1005, "", 0, 0, 0, -1);

--連続爆発
--SE035 = playSe( spep_6 + 14, 1017 );
--stopSe( spep_6 + 30, SE035, 8 );
SE035 = playSeVer2( spep_6 + 14, 1017, "",spep_6 + 38, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 14, SE035, 85 );

--奥向き連続気弾
--SE036 = playSe( spep_6 + 14, 1016 );
--stopSe( spep_6 + 26, SE036, 6 );
--SE037 = playSe( spep_6 + 24, 1016 );
--stopSe( spep_6 + 34, SE037, 6 );
SE036 = playSeVer2( spep_6 + 14, 1016, "",spep_6 + 32, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 14, SE036, 91 );
SE037 = playSeVer2( spep_6 + 24, 1016, "",spep_6 + 40, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 24, SE037, 82 );

--連続爆発
--SE038 = playSe( spep_6 + 28, 1017 );
SE038 = playSeVer2( spep_6 + 28, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 28, SE038, 88 );

--奥向き連続気弾
--SE039 = playSe( spep_6 + 28, 1016 );
--stopSe( spep_6 + 40, SE039, 4 );
--SE040 = playSe( spep_6 + 30, 1005 );
--SE041 = playSe( spep_6 + 36, 1016 );
--stopSe( spep_6 + 46, SE041, 8 );
--SE042 = playSe( spep_6 + 44, 1016 );
--stopSe( spep_6 + 54, SE042, 6 );
--SE043 = playSe( spep_6 + 52, 1016 );
--stopSe( spep_6 + 64, SE043, 6 );
--SE044 = playSe( spep_6 + 60, 1016 );
SE039 = playSeVer2( spep_6 + 28, 1016, "",spep_6 + 44, 0, 4, -1);
setSeVolumeByWorkId( spep_6 + 28, SE039, 89 );
SE040 = playSeVer2( spep_6 + 30, 1005, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_6 + 36, 1016, "",spep_6 + 54, 0, 8, -1);
setSeVolumeByWorkId( spep_6 + 36, SE041, 84 );
SE042 = playSeVer2( spep_6 + 44, 1016, "",spep_6 + 60, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 44, SE042, 84 );
SE043 = playSeVer2( spep_6 + 52, 1016, "",spep_6 + 70, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 52, SE043, 91 );
SE044 = playSeVer2( spep_6 + 60, 1016, "",spep_6 + 76, 0, 6, -1);
setSeVolumeByWorkId( spep_6 + 60, SE044, 90 );

--横向き連続気弾
--SE045 = playSe( spep_6 + 64, 1005 );
SE045 = playSeVer2( spep_6 + 64, 1005, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_6 + 66, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 66;
------------------------------------------------------
--横位置_攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
side = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, side, 0, 0, 0 );
setEffMoveKey( spep_7 + 96, side, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, side, 1.0, 1.0 );
setEffScaleKey( spep_7 + 96, side, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, side, 0 );
setEffRotateKey( spep_7 + 96, side, 0 );
setEffAlphaKey( spep_7 + 0, side, 255 );
setEffAlphaKey( spep_7 + 96, side, 255 );

--SE
--奥向き連続気弾
--stopSe( spep_7 + 4, SE044, 6 );
--SE046 = playSe( spep_7 + 6, 1016 );
--SE047 = playSe( spep_7 + 6, 1109 );
SE046 = playSeVer2( spep_7 + 6, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 6, SE046, 88 );
SE047 = playSeVer2( spep_7 + 6, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 6, SE047, 68 );

--横向き連続気弾
--SE048 = playSe( spep_7 + 6, 1016 );
--stopSe( spep_7 + 20, SE048, 4 );
--SE049 = playSe( spep_7 + 20, 1016 );
--stopSe( spep_7 + 32, SE049, 6 );
--SE050 = playSe( spep_7 + 20, 1109 );
--stopSe( spep_7 + 32, SE050, 6 );
--SE051 = playSe( spep_7 + 32, 1016 );
--stopSe( spep_7 + 46, SE051, 4 );
--SE052 = playSe( spep_7 + 32, 1109 );
--stopSe( spep_7 + 46, SE052, 2 );
--SE053 = playSe( spep_7 + 44, 1016 );
--stopSe( spep_7 + 60, SE053, 4 );
--SE054 = playSe( spep_7 + 44, 1109 );
--stopSe( spep_7 + 58, SE054, 4 );
--SE055 = playSe( spep_7 + 52, 1016 );
--stopSe( spep_7 + 68, SE055, 4 );
--SE056 = playSe( spep_7 + 52, 1109 );
--stopSe( spep_7 + 64, SE056, 4 );
--SE057 = playSe( spep_7 + 62, 1016 );
--stopSe( spep_7 + 76, SE057, 4 );
--SE058 = playSe( spep_7 + 62, 1109 );
--stopSe( spep_7 + 72, SE058, 4 );
--SE059 = playSe( spep_7 + 68, 1016 );
--stopSe( spep_7 + 82, SE059, 6 );
--SE060 = playSe( spep_7 + 68, 1109 );
--stopSe( spep_7 + 78, SE060, 6 );
--SE061 = playSe( spep_7 + 78, 1016 );
--stopSe( spep_7 + 92, SE061, 4 );
--SE062 = playSe( spep_7 + 78, 1109 );
--stopSe( spep_7 + 88, SE062, 4 );
--SE063 = playSe( spep_7 + 84, 1016 );
--stopSe( spep_7 + 98, SE063, 6 );
--SE064 = playSe( spep_7 + 84, 1109 );
--stopSe( spep_7 + 94, SE064, 6 );
--SE065 = playSe( spep_7 + 94, 1016 );
--SE066 = playSe( spep_7 + 94, 1109 );
SE048 = playSeVer2( spep_7 + 6, 1016, "",spep_7 + 20, 0, 4, -1);
SE049 = playSeVer2( spep_7 + 20, 1016, "",spep_7 + 34, 0, 6, -1);
SE050 = playSeVer2( spep_7 + 20, 1109, "",spep_7 + 38, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 26, SE050, 86 );
SE051 = playSeVer2( spep_7 + 32, 1016, "",spep_7 + 46, 0, 4, -1);
SE052 = playSeVer2( spep_7 + 32, 1109, "",spep_7 + 48, 0, 2, -1);
setSeVolumeByWorkId( spep_7 + 36, SE052, 74 );
SE053 = playSeVer2( spep_7 + 44, 1016, "",spep_7 + 58, 0, 4, -1);
SE054 = playSeVer2( spep_7 + 44, 1109, "",spep_7 + 62, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 44, SE054, 82 );
SE055 = playSeVer2( spep_7 + 52, 1016, "",spep_7 + 68, 0, 4, -1);
SE056 = playSeVer2( spep_7 + 52, 1109, "",spep_7 + 68, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 52, SE056, 77 );
SE057 = playSeVer2( spep_7 + 62, 1016, "",spep_7 + 76, 0, 4, -1);
SE058 = playSeVer2( spep_7 + 62, 1109, "",spep_7 + 76, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 62, SE058, 87 );
SE059 = playSeVer2( spep_7 + 68, 1016, "",spep_7 + 84, 0, 6, -1);
SE060 = playSeVer2( spep_7 + 68, 1109, "",spep_7 + 84, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 68, SE060, 80 );
SE061 = playSeVer2( spep_7 + 78, 1016, "",spep_7 + 92, 0, 4, -1);
SE062 = playSeVer2( spep_7 + 78, 1109, "",spep_7 + 92, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 78, SE062, 81 );
SE063 = playSeVer2( spep_7 + 84, 1016, "",spep_7 + 100, 0, 6, -1);
SE064 = playSeVer2( spep_7 + 84, 1109, "",spep_7 + 100, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 84, SE064, 81 );
SE065 = playSeVer2( spep_7 + 94, 1016, "",spep_7 + 108, 0, 4, -1);
SE066 = playSeVer2( spep_7 + 94, 1109, "",spep_7 + 108, 0, 4, -1);
setSeVolumeByWorkId( spep_7 + 94, SE066, 83 );

--白フェード
entryFade( spep_7 + 90, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 96, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 96;
------------------------------------------------------
--波動&煙
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 120, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 120, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 120, finish_b, 255 );

setDisp( spep_8 + 0, 1, 1 );

changeAnime( spep_8 + 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 18.6, -39.7 , 0 );
setMoveKey( spep_8 + 2, 1, 18, -41 , 0 );
setMoveKey( spep_8 + 4, 1, 20.2, -29 , 0 );
setMoveKey( spep_8 + 6, 1, 18, -37.7 , 0 );
setMoveKey( spep_8 + 8, 1, 20, -26 , 0 );
setMoveKey( spep_8 + 10, 1, 18, -36.6 , 0 );
setMoveKey( spep_8 + 12, 1, 19.9, -24.1 , 0 );
setMoveKey( spep_8 + 14, 1, 18, -34.5 , 0 );
setMoveKey( spep_8 + 16, 1, 19.7, -27.2 , 0 );
setMoveKey( spep_8 + 18, 1, 18.1, -28.9 , 0 );
setMoveKey( spep_8 + 20, 1, 19.6, -25.5 , 0 );
setMoveKey( spep_8 + 22, 1, 18.1, -31.4 , 0 );
setMoveKey( spep_8 + 24, 1, 19.4, -20.1 , 0 );
setMoveKey( spep_8 + 26, 1, 18.1, -31.1 , 0 );
setMoveKey( spep_8 + 28, 1, 19.4, -19 , 0 );
setMoveKey( spep_8 + 30, 1, 18.1, -29.6 , 0 );
setMoveKey( spep_8 + 32, 1, 18.1, -22 , 0 );
setMoveKey( spep_8 + 34, 1, 19.2, -25.5 , 0 );
setMoveKey( spep_8 + 36, 1, 18.1, -22.3 , 0 );
setMoveKey( spep_8 + 38, 1, 19.1, -34.2 , 0 );
setMoveKey( spep_8 + 40, 1, 18, -11.6 , 0 );
setMoveKey( spep_8 + 42, 1, 19, -26.5 , 0 );
setMoveKey( spep_8 + 44, 1, 18.1, -6.7 , 0 );
setMoveKey( spep_8 + 46, 1, 18.9, -34.4 , 0 );
setMoveKey( spep_8 + 48, 1, 18.1, -22.6 , 0 );
setMoveKey( spep_8 + 50, 1, 18.9, -12.8 , 0 );
setMoveKey( spep_8 + 52, 1, 18.1, -21.4 , 0 );
setMoveKey( spep_8 + 54, 1, 18.8, -12.2 , 0 );
setMoveKey( spep_8 + 56, 1, 18.1, -20.8 , 0 );
setMoveKey( spep_8 + 58, 1, 18.8, -12.6 , 0 );
setMoveKey( spep_8 + 60, 1, 18.1, -19.6 , 0 );
setMoveKey( spep_8 + 62, 1, 18.1, -11.8 , 0 );
setMoveKey( spep_8 + 64, 1, 18.7, -19 , 0 );
setMoveKey( spep_8 + 66, 1, 18.1, -11.1 , 0 );
setMoveKey( spep_8 + 68, 1, 18.6, -18.6 , 0 );
setMoveKey( spep_8 + 70, 1, 18.1, -12.1 , 0 );
setMoveKey( spep_8 + 72, 1, 18.5, -18.3 , 0 );
setMoveKey( spep_8 + 74, 1, 18.1, -12.5 , 0 );
setMoveKey( spep_8 + 76, 1, 18.5, -11.8 , 0 );
setMoveKey( spep_8 + 78, 1, 18.1, -16.5 , 0 );
setMoveKey( spep_8 + 80, 1, 18.5, -11.2 , 0 );
setMoveKey( spep_8 + 82, 1, 18.1, -16.5 , 0 );
setMoveKey( spep_8 + 84, 1, 18.5, -11.5 , 0 );
setMoveKey( spep_8 + 86, 1, 18.1, -16.3 , 0 );
setMoveKey( spep_8 + 88, 1, 18.4, -11.2 , 0 );
setMoveKey( spep_8 + 90, 1, 18.1, -15.2 , 0 );
setMoveKey( spep_8 + 92, 1, 18.1, -11.2 , 0 );
setMoveKey( spep_8 + 94, 1, 18.1, -10.3 , 0 );
setMoveKey( spep_8 + 96, 1, 18.1, -15.3 , 0 );
setMoveKey( spep_8 + 98, 1, 18.1, -9.6 , 0 );
setMoveKey( spep_8 + 100, 1, 18.1, -14.6 , 0 );
setMoveKey( spep_8 + 102, 1, 18.2, -9 , 0 );
setMoveKey( spep_8 + 104, 1, 18.2, -13.8 , 0 );
setMoveKey( spep_8 + 106, 1, 18.2, -8.7 , 0 );
setMoveKey( spep_8 + 108, 1, 18.2, -13 , 0 );
setMoveKey( spep_8 + 110, 1, 18.2, -9.5 , 0 );
setMoveKey( spep_8 + 112, 1, 18.1, -13 , 0 );
setMoveKey( spep_8 + 114, 1, 18.1, -9.6 , 0 );
setMoveKey( spep_8 + 116, 1, 18.1, -12.4 , 0 );
setMoveKey( spep_8 + 118, 1, 18.2, -9.8 , 0 );

setScaleKey( spep_8 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_8 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_8 + 4, 1, 0.78, 0.78 );
setScaleKey( spep_8 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_8 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_8 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_8 + 18, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_8 + 30, 1, 0.75, 0.75 );
setScaleKey( spep_8 + 44, 1, 0.75, 0.75 );
setScaleKey( spep_8 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_8 + 66, 1, 0.74, 0.74 );
setScaleKey( spep_8 + 68, 1, 0.73, 0.73 );
setScaleKey( spep_8 + 96, 1, 0.73, 0.73 );
setScaleKey( spep_8 + 98, 1, 0.72, 0.72 );
setScaleKey( spep_8 + 118, 1, 0.72, 0.72 );

setRotateKey( spep_8 + 0, 1, 1 );
setRotateKey( spep_8 + 2, 1, 2.5 );
setRotateKey( spep_8 + 4, 1, -3.7 );
setRotateKey( spep_8 + 6, 1, 2.5 );
setRotateKey( spep_8 + 8, 1, -3.7 );
setRotateKey( spep_8 + 10, 1, 2.5 );
setRotateKey( spep_8 + 12, 1, -3.7 );
setRotateKey( spep_8 + 14, 1, 2.5 );
setRotateKey( spep_8 + 16, 1, -3.7 );
setRotateKey( spep_8 + 18, 1, 2.5 );
setRotateKey( spep_8 + 20, 1, -3.7 );
setRotateKey( spep_8 + 22, 1, 2.5 );
setRotateKey( spep_8 + 24, 1, -3.7 );
setRotateKey( spep_8 + 26, 1, 2.5 );
setRotateKey( spep_8 + 28, 1, -3.7 );
setRotateKey( spep_8 + 30, 1, 2.5 );
setRotateKey( spep_8 + 32, 1, 2.5 );
setRotateKey( spep_8 + 34, 1, -3.7 );
setRotateKey( spep_8 + 36, 1, 2.5 );
setRotateKey( spep_8 + 38, 1, -3.7 );
setRotateKey( spep_8 + 40, 1, 2.5 );
setRotateKey( spep_8 + 42, 1, -3.7 );
setRotateKey( spep_8 + 44, 1, 2.5 );
setRotateKey( spep_8 + 46, 1, -3.7 );
setRotateKey( spep_8 + 48, 1, 2.5 );
setRotateKey( spep_8 + 50, 1, -3.7 );
setRotateKey( spep_8 + 52, 1, 2.5 );
setRotateKey( spep_8 + 54, 1, -3.7 );
setRotateKey( spep_8 + 56, 1, 2.5 );
setRotateKey( spep_8 + 58, 1, -3.7 );
setRotateKey( spep_8 + 60, 1, 2.5 );
setRotateKey( spep_8 + 62, 1, 2.5 );
setRotateKey( spep_8 + 64, 1, -3.7 );
setRotateKey( spep_8 + 66, 1, 2.5 );
setRotateKey( spep_8 + 68, 1, -3.7 );
setRotateKey( spep_8 + 70, 1, 2.5 );
setRotateKey( spep_8 + 72, 1, -3.7 );
setRotateKey( spep_8 + 74, 1, 2.5 );
setRotateKey( spep_8 + 76, 1, -3.7 );
setRotateKey( spep_8 + 78, 1, 2.5 );
setRotateKey( spep_8 + 80, 1, -3.7 );
setRotateKey( spep_8 + 82, 1, 2.5 );
setRotateKey( spep_8 + 84, 1, -3.7 );
setRotateKey( spep_8 + 86, 1, 2.5 );
setRotateKey( spep_8 + 88, 1, -3.7 );
setRotateKey( spep_8 + 90, 1, 2.5 );
setRotateKey( spep_8 + 118, 1, 2.5 );

--SE
--横向き連続気弾
--stopSe( spep_8 + 8, SE065, 4 );
--stopSe( spep_8 + 8, SE066, 4 );

--ラスト連続気弾
--SE067 = playSe( spep_8 + 6, 1016 );
--SE068 = playSe( spep_8 + 10, 1005 );
--SE069 = playSe( spep_8 + 12, 1016 );
--SE070 = playSe( spep_8 + 22, 1011 );
--stopSe( spep_8 + 42, SE070, 10 );
--SE071 = playSe( spep_8 + 22, 1016 );
--SE072 = playSe( spep_8 + 26, 1005 );
--SE073 = playSe( spep_8 + 30, 1016 );
--SE074 = playSe( spep_8 + 34, 1011 );
--stopSe( spep_8 + 56, SE074, 8 );
--SE075 = playSe( spep_8 + 34, 1023 );
--SE076 = playSe( spep_8 + 34, 1005 );
--SE077 = playSe( spep_8 + 52, 1011 );
--SE078 = playSe( spep_8 + 52, 1024 );
SE067 = playSeVer2( spep_8 + 6, 1016, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_8 + 10, 1005, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_8 + 12, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 12, SE069, 86 );
SE070 = playSeVer2( spep_8 + 22, 1011, "",spep_8 + 52, 0, 10, -1);
SE071 = playSeVer2( spep_8 + 22, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 22, SE071, 84 );
SE072 = playSeVer2( spep_8 + 26, 1005, "", 0, 0, 0, -1);
SE073 = playSeVer2( spep_8 + 30, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 30, SE073, 93 );
SE074 = playSeVer2( spep_8 + 34, 1011, "",spep_8 + 64, 0, 8, -1);
SE075 = playSeVer2( spep_8 + 34, 1023, "", 0, 0, 0, -1);
SE076 = playSeVer2( spep_8 + 34, 1005, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_8 + 52, 1011, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_8 + 52, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_8 +10 );
endPhase( spep_8 + 110 );
end