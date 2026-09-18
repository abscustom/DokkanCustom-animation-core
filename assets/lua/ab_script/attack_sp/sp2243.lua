--1022460:フリーザ(第三形態)_クレイジーフィンガービーム
--sp_effect_a3_00081

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
SP_01=	157673	;--	敵と対峙
SP_02=	157674	;--	指差し攻撃
SP_03=	157675	;--	敵にHIT
SP_04=	157676	;--	攻撃予備動作
SP_05=	157677	;--	正面_攻撃
SP_06=	157678	;--	背景のみ(SP_03と同時再生)
SP_07=	157679	;--	波動&煙
SP_08=	157680	;--	背景のみ(SP_07と同時再生)

--エフェクト(てき)
SP_02x=	157796	;--	指差し攻撃
SP_03x=	157797	;--	敵にHIT

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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
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
hit_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
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
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 160, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  160,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  160,  515);

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
spep_4=spep_3+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 ,"",0.8);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94;
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

--白フェード
entryFade( spep_5 + 126, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 130;
------------------------------------------------------
--波動&煙
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 120, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 120, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 120, finish_b, 255 );

setDisp( spep_6 + 0, 1, 1 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 18.6, -39.7 , 0 );
setMoveKey( spep_6 + 2, 1, 18, -41 , 0 );
setMoveKey( spep_6 + 4, 1, 20.2, -29 , 0 );
setMoveKey( spep_6 + 6, 1, 18, -37.7 , 0 );
setMoveKey( spep_6 + 8, 1, 20, -26 , 0 );
setMoveKey( spep_6 + 10, 1, 18, -36.6 , 0 );
setMoveKey( spep_6 + 12, 1, 19.9, -24.1 , 0 );
setMoveKey( spep_6 + 14, 1, 18, -34.5 , 0 );
setMoveKey( spep_6 + 16, 1, 19.7, -27.2 , 0 );
setMoveKey( spep_6 + 18, 1, 18.1, -28.9 , 0 );
setMoveKey( spep_6 + 20, 1, 19.6, -25.5 , 0 );
setMoveKey( spep_6 + 22, 1, 18.1, -31.4 , 0 );
setMoveKey( spep_6 + 24, 1, 19.4, -20.1 , 0 );
setMoveKey( spep_6 + 26, 1, 18.1, -31.1 , 0 );
setMoveKey( spep_6 + 28, 1, 19.4, -19 , 0 );
setMoveKey( spep_6 + 30, 1, 18.1, -29.6 , 0 );
setMoveKey( spep_6 + 32, 1, 18.1, -22 , 0 );
setMoveKey( spep_6 + 34, 1, 19.2, -25.5 , 0 );
setMoveKey( spep_6 + 36, 1, 18.1, -22.3 , 0 );
setMoveKey( spep_6 + 38, 1, 19.1, -34.2 , 0 );
setMoveKey( spep_6 + 40, 1, 18, -11.6 , 0 );
setMoveKey( spep_6 + 42, 1, 19, -26.5 , 0 );
setMoveKey( spep_6 + 44, 1, 18.1, -6.7 , 0 );
setMoveKey( spep_6 + 46, 1, 18.9, -34.4 , 0 );
setMoveKey( spep_6 + 48, 1, 18.1, -22.6 , 0 );
setMoveKey( spep_6 + 50, 1, 18.9, -12.8 , 0 );
setMoveKey( spep_6 + 52, 1, 18.1, -21.4 , 0 );
setMoveKey( spep_6 + 54, 1, 18.8, -12.2 , 0 );
setMoveKey( spep_6 + 56, 1, 18.1, -20.8 , 0 );
setMoveKey( spep_6 + 58, 1, 18.8, -12.6 , 0 );
setMoveKey( spep_6 + 60, 1, 18.1, -19.6 , 0 );
setMoveKey( spep_6 + 62, 1, 18.1, -11.8 , 0 );
setMoveKey( spep_6 + 64, 1, 18.7, -19 , 0 );
setMoveKey( spep_6 + 66, 1, 18.1, -11.1 , 0 );
setMoveKey( spep_6 + 68, 1, 18.6, -18.6 , 0 );
setMoveKey( spep_6 + 70, 1, 18.1, -12.1 , 0 );
setMoveKey( spep_6 + 72, 1, 18.5, -18.3 , 0 );
setMoveKey( spep_6 + 74, 1, 18.1, -12.5 , 0 );
setMoveKey( spep_6 + 76, 1, 18.5, -11.8 , 0 );
setMoveKey( spep_6 + 78, 1, 18.1, -16.5 , 0 );
setMoveKey( spep_6 + 80, 1, 18.5, -11.2 , 0 );
setMoveKey( spep_6 + 82, 1, 18.1, -16.5 , 0 );
setMoveKey( spep_6 + 84, 1, 18.5, -11.5 , 0 );
setMoveKey( spep_6 + 86, 1, 18.1, -16.3 , 0 );
setMoveKey( spep_6 + 88, 1, 18.4, -11.2 , 0 );
setMoveKey( spep_6 + 90, 1, 18.1, -15.2 , 0 );
setMoveKey( spep_6 + 92, 1, 18.1, -11.2 , 0 );
setMoveKey( spep_6 + 94, 1, 18.1, -10.3 , 0 );
setMoveKey( spep_6 + 96, 1, 18.1, -15.3 , 0 );
setMoveKey( spep_6 + 98, 1, 18.1, -9.6 , 0 );
setMoveKey( spep_6 + 100, 1, 18.1, -14.6 , 0 );
setMoveKey( spep_6 + 102, 1, 18.2, -9 , 0 );
setMoveKey( spep_6 + 104, 1, 18.2, -13.8 , 0 );
setMoveKey( spep_6 + 106, 1, 18.2, -8.7 , 0 );
setMoveKey( spep_6 + 108, 1, 18.2, -13 , 0 );
setMoveKey( spep_6 + 110, 1, 18.2, -9.5 , 0 );
setMoveKey( spep_6 + 112, 1, 18.1, -13 , 0 );
setMoveKey( spep_6 + 114, 1, 18.1, -9.6 , 0 );
setMoveKey( spep_6 + 116, 1, 18.1, -12.4 , 0 );
setMoveKey( spep_6 + 118, 1, 18.2, -9.8 , 0 );

setScaleKey( spep_6 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_6 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_6 + 4, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 18, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 30, 1, 0.75, 0.75 );
setScaleKey( spep_6 + 44, 1, 0.75, 0.75 );
setScaleKey( spep_6 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 66, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 68, 1, 0.73, 0.73 );
setScaleKey( spep_6 + 96, 1, 0.73, 0.73 );
setScaleKey( spep_6 + 98, 1, 0.72, 0.72 );
setScaleKey( spep_6 + 118, 1, 0.72, 0.72 );

setRotateKey( spep_6 + 0, 1, 1 );
setRotateKey( spep_6 + 2, 1, 2.5 );
setRotateKey( spep_6 + 4, 1, -3.7 );
setRotateKey( spep_6 + 6, 1, 2.5 );
setRotateKey( spep_6 + 8, 1, -3.7 );
setRotateKey( spep_6 + 10, 1, 2.5 );
setRotateKey( spep_6 + 12, 1, -3.7 );
setRotateKey( spep_6 + 14, 1, 2.5 );
setRotateKey( spep_6 + 16, 1, -3.7 );
setRotateKey( spep_6 + 18, 1, 2.5 );
setRotateKey( spep_6 + 20, 1, -3.7 );
setRotateKey( spep_6 + 22, 1, 2.5 );
setRotateKey( spep_6 + 24, 1, -3.7 );
setRotateKey( spep_6 + 26, 1, 2.5 );
setRotateKey( spep_6 + 28, 1, -3.7 );
setRotateKey( spep_6 + 30, 1, 2.5 );
setRotateKey( spep_6 + 32, 1, 2.5 );
setRotateKey( spep_6 + 34, 1, -3.7 );
setRotateKey( spep_6 + 36, 1, 2.5 );
setRotateKey( spep_6 + 38, 1, -3.7 );
setRotateKey( spep_6 + 40, 1, 2.5 );
setRotateKey( spep_6 + 42, 1, -3.7 );
setRotateKey( spep_6 + 44, 1, 2.5 );
setRotateKey( spep_6 + 46, 1, -3.7 );
setRotateKey( spep_6 + 48, 1, 2.5 );
setRotateKey( spep_6 + 50, 1, -3.7 );
setRotateKey( spep_6 + 52, 1, 2.5 );
setRotateKey( spep_6 + 54, 1, -3.7 );
setRotateKey( spep_6 + 56, 1, 2.5 );
setRotateKey( spep_6 + 58, 1, -3.7 );
setRotateKey( spep_6 + 60, 1, 2.5 );
setRotateKey( spep_6 + 62, 1, 2.5 );
setRotateKey( spep_6 + 64, 1, -3.7 );
setRotateKey( spep_6 + 66, 1, 2.5 );
setRotateKey( spep_6 + 68, 1, -3.7 );
setRotateKey( spep_6 + 70, 1, 2.5 );
setRotateKey( spep_6 + 72, 1, -3.7 );
setRotateKey( spep_6 + 74, 1, 2.5 );
setRotateKey( spep_6 + 76, 1, -3.7 );
setRotateKey( spep_6 + 78, 1, 2.5 );
setRotateKey( spep_6 + 80, 1, -3.7 );
setRotateKey( spep_6 + 82, 1, 2.5 );
setRotateKey( spep_6 + 84, 1, -3.7 );
setRotateKey( spep_6 + 86, 1, 2.5 );
setRotateKey( spep_6 + 88, 1, -3.7 );
setRotateKey( spep_6 + 90, 1, 2.5 );
setRotateKey( spep_6 + 118, 1, 2.5 );

--SE
--ラスト連続気弾
--SE029 = playSe( spep_6 + 0, 1016 );
--SE030 = playSe( spep_6 + 6, 1005 );
--SE031 = playSe( spep_6 + 10, 1016 );
--SE032 = playSe( spep_6 + 18, 1016 );
--SE033 = playSe( spep_6 + 18, 1011 );
--stopSe( spep_6 + 40, SE033, 6 );
--SE034 = playSe( spep_6 + 22, 1005 );
--SE035 = playSe( spep_6 + 26, 1016 );
--SE036 = playSe( spep_6 + 30, 1005 );
--SE037 = playSe( spep_6 + 30, 1011 );
--stopSe( spep_6 + 52, SE037, 8 );
--SE038 = playSe( spep_6 + 30, 1023 );
--SE039 = playSe( spep_6 + 46, 1011 );
--SE040 = playSe( spep_6 + 46, 1024 );
SE029 = playSeVer2( spep_6 + 0, 1016, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_6 + 6, 1005, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 10, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 10, SE031, 86 );
SE032 = playSeVer2( spep_6 + 18, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 18, SE032, 84 );
SE033 = playSeVer2( spep_6 + 18, 1011, "",spep_6 + 46, 0, 6, -1);
SE034 = playSeVer2( spep_6 + 22, 1005, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_6 + 26, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 26, SE035, 93 );
SE036 = playSeVer2( spep_6 + 30, 1005, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_6 + 30, 1011, "",spep_6 + 60, 0, 8, -1);
SE038 = playSeVer2( spep_6 + 30, 1023, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_6 + 46, 1011, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_6 + 46, 1024, "", 0, 0, 0, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 110 );
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
hit_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
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
SE013 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, 0.8);

--白フェード
entryFade( spep_3 + 92, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+100;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 86, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 ,"",0.8);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5= spep_4 + 94;
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

--白フェード
entryFade( spep_5 + 126, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 130, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 130;
------------------------------------------------------
--波動&煙
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 120, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 120, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 120, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 120, finish_b, 255 );

setDisp( spep_6 + 0, 1, 1 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, 18.6, -39.7 , 0 );
setMoveKey( spep_6 + 2, 1, 18, -41 , 0 );
setMoveKey( spep_6 + 4, 1, 20.2, -29 , 0 );
setMoveKey( spep_6 + 6, 1, 18, -37.7 , 0 );
setMoveKey( spep_6 + 8, 1, 20, -26 , 0 );
setMoveKey( spep_6 + 10, 1, 18, -36.6 , 0 );
setMoveKey( spep_6 + 12, 1, 19.9, -24.1 , 0 );
setMoveKey( spep_6 + 14, 1, 18, -34.5 , 0 );
setMoveKey( spep_6 + 16, 1, 19.7, -27.2 , 0 );
setMoveKey( spep_6 + 18, 1, 18.1, -28.9 , 0 );
setMoveKey( spep_6 + 20, 1, 19.6, -25.5 , 0 );
setMoveKey( spep_6 + 22, 1, 18.1, -31.4 , 0 );
setMoveKey( spep_6 + 24, 1, 19.4, -20.1 , 0 );
setMoveKey( spep_6 + 26, 1, 18.1, -31.1 , 0 );
setMoveKey( spep_6 + 28, 1, 19.4, -19 , 0 );
setMoveKey( spep_6 + 30, 1, 18.1, -29.6 , 0 );
setMoveKey( spep_6 + 32, 1, 18.1, -22 , 0 );
setMoveKey( spep_6 + 34, 1, 19.2, -25.5 , 0 );
setMoveKey( spep_6 + 36, 1, 18.1, -22.3 , 0 );
setMoveKey( spep_6 + 38, 1, 19.1, -34.2 , 0 );
setMoveKey( spep_6 + 40, 1, 18, -11.6 , 0 );
setMoveKey( spep_6 + 42, 1, 19, -26.5 , 0 );
setMoveKey( spep_6 + 44, 1, 18.1, -6.7 , 0 );
setMoveKey( spep_6 + 46, 1, 18.9, -34.4 , 0 );
setMoveKey( spep_6 + 48, 1, 18.1, -22.6 , 0 );
setMoveKey( spep_6 + 50, 1, 18.9, -12.8 , 0 );
setMoveKey( spep_6 + 52, 1, 18.1, -21.4 , 0 );
setMoveKey( spep_6 + 54, 1, 18.8, -12.2 , 0 );
setMoveKey( spep_6 + 56, 1, 18.1, -20.8 , 0 );
setMoveKey( spep_6 + 58, 1, 18.8, -12.6 , 0 );
setMoveKey( spep_6 + 60, 1, 18.1, -19.6 , 0 );
setMoveKey( spep_6 + 62, 1, 18.1, -11.8 , 0 );
setMoveKey( spep_6 + 64, 1, 18.7, -19 , 0 );
setMoveKey( spep_6 + 66, 1, 18.1, -11.1 , 0 );
setMoveKey( spep_6 + 68, 1, 18.6, -18.6 , 0 );
setMoveKey( spep_6 + 70, 1, 18.1, -12.1 , 0 );
setMoveKey( spep_6 + 72, 1, 18.5, -18.3 , 0 );
setMoveKey( spep_6 + 74, 1, 18.1, -12.5 , 0 );
setMoveKey( spep_6 + 76, 1, 18.5, -11.8 , 0 );
setMoveKey( spep_6 + 78, 1, 18.1, -16.5 , 0 );
setMoveKey( spep_6 + 80, 1, 18.5, -11.2 , 0 );
setMoveKey( spep_6 + 82, 1, 18.1, -16.5 , 0 );
setMoveKey( spep_6 + 84, 1, 18.5, -11.5 , 0 );
setMoveKey( spep_6 + 86, 1, 18.1, -16.3 , 0 );
setMoveKey( spep_6 + 88, 1, 18.4, -11.2 , 0 );
setMoveKey( spep_6 + 90, 1, 18.1, -15.2 , 0 );
setMoveKey( spep_6 + 92, 1, 18.1, -11.2 , 0 );
setMoveKey( spep_6 + 94, 1, 18.1, -10.3 , 0 );
setMoveKey( spep_6 + 96, 1, 18.1, -15.3 , 0 );
setMoveKey( spep_6 + 98, 1, 18.1, -9.6 , 0 );
setMoveKey( spep_6 + 100, 1, 18.1, -14.6 , 0 );
setMoveKey( spep_6 + 102, 1, 18.2, -9 , 0 );
setMoveKey( spep_6 + 104, 1, 18.2, -13.8 , 0 );
setMoveKey( spep_6 + 106, 1, 18.2, -8.7 , 0 );
setMoveKey( spep_6 + 108, 1, 18.2, -13 , 0 );
setMoveKey( spep_6 + 110, 1, 18.2, -9.5 , 0 );
setMoveKey( spep_6 + 112, 1, 18.1, -13 , 0 );
setMoveKey( spep_6 + 114, 1, 18.1, -9.6 , 0 );
setMoveKey( spep_6 + 116, 1, 18.1, -12.4 , 0 );
setMoveKey( spep_6 + 118, 1, 18.2, -9.8 , 0 );

setScaleKey( spep_6 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_6 + 2, 1, 0.79, 0.79 );
setScaleKey( spep_6 + 4, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 8, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 10, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_6 + 18, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 28, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 30, 1, 0.75, 0.75 );
setScaleKey( spep_6 + 44, 1, 0.75, 0.75 );
setScaleKey( spep_6 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 66, 1, 0.74, 0.74 );
setScaleKey( spep_6 + 68, 1, 0.73, 0.73 );
setScaleKey( spep_6 + 96, 1, 0.73, 0.73 );
setScaleKey( spep_6 + 98, 1, 0.72, 0.72 );
setScaleKey( spep_6 + 118, 1, 0.72, 0.72 );

setRotateKey( spep_6 + 0, 1, 1 );
setRotateKey( spep_6 + 2, 1, 2.5 );
setRotateKey( spep_6 + 4, 1, -3.7 );
setRotateKey( spep_6 + 6, 1, 2.5 );
setRotateKey( spep_6 + 8, 1, -3.7 );
setRotateKey( spep_6 + 10, 1, 2.5 );
setRotateKey( spep_6 + 12, 1, -3.7 );
setRotateKey( spep_6 + 14, 1, 2.5 );
setRotateKey( spep_6 + 16, 1, -3.7 );
setRotateKey( spep_6 + 18, 1, 2.5 );
setRotateKey( spep_6 + 20, 1, -3.7 );
setRotateKey( spep_6 + 22, 1, 2.5 );
setRotateKey( spep_6 + 24, 1, -3.7 );
setRotateKey( spep_6 + 26, 1, 2.5 );
setRotateKey( spep_6 + 28, 1, -3.7 );
setRotateKey( spep_6 + 30, 1, 2.5 );
setRotateKey( spep_6 + 32, 1, 2.5 );
setRotateKey( spep_6 + 34, 1, -3.7 );
setRotateKey( spep_6 + 36, 1, 2.5 );
setRotateKey( spep_6 + 38, 1, -3.7 );
setRotateKey( spep_6 + 40, 1, 2.5 );
setRotateKey( spep_6 + 42, 1, -3.7 );
setRotateKey( spep_6 + 44, 1, 2.5 );
setRotateKey( spep_6 + 46, 1, -3.7 );
setRotateKey( spep_6 + 48, 1, 2.5 );
setRotateKey( spep_6 + 50, 1, -3.7 );
setRotateKey( spep_6 + 52, 1, 2.5 );
setRotateKey( spep_6 + 54, 1, -3.7 );
setRotateKey( spep_6 + 56, 1, 2.5 );
setRotateKey( spep_6 + 58, 1, -3.7 );
setRotateKey( spep_6 + 60, 1, 2.5 );
setRotateKey( spep_6 + 62, 1, 2.5 );
setRotateKey( spep_6 + 64, 1, -3.7 );
setRotateKey( spep_6 + 66, 1, 2.5 );
setRotateKey( spep_6 + 68, 1, -3.7 );
setRotateKey( spep_6 + 70, 1, 2.5 );
setRotateKey( spep_6 + 72, 1, -3.7 );
setRotateKey( spep_6 + 74, 1, 2.5 );
setRotateKey( spep_6 + 76, 1, -3.7 );
setRotateKey( spep_6 + 78, 1, 2.5 );
setRotateKey( spep_6 + 80, 1, -3.7 );
setRotateKey( spep_6 + 82, 1, 2.5 );
setRotateKey( spep_6 + 84, 1, -3.7 );
setRotateKey( spep_6 + 86, 1, 2.5 );
setRotateKey( spep_6 + 88, 1, -3.7 );
setRotateKey( spep_6 + 90, 1, 2.5 );
setRotateKey( spep_6 + 118, 1, 2.5 );

--SE
--ラスト連続気弾
--SE029 = playSe( spep_6 + 0, 1016 );
--SE030 = playSe( spep_6 + 6, 1005 );
--SE031 = playSe( spep_6 + 10, 1016 );
--SE032 = playSe( spep_6 + 18, 1016 );
--SE033 = playSe( spep_6 + 18, 1011 );
--stopSe( spep_6 + 40, SE033, 6 );
--SE034 = playSe( spep_6 + 22, 1005 );
--SE035 = playSe( spep_6 + 26, 1016 );
--SE036 = playSe( spep_6 + 30, 1005 );
--SE037 = playSe( spep_6 + 30, 1011 );
--stopSe( spep_6 + 52, SE037, 8 );
--SE038 = playSe( spep_6 + 30, 1023 );
--SE039 = playSe( spep_6 + 46, 1011 );
--SE040 = playSe( spep_6 + 46, 1024 );
SE029 = playSeVer2( spep_6 + 0, 1016, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_6 + 6, 1005, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 10, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 10, SE031, 86 );
SE032 = playSeVer2( spep_6 + 18, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 18, SE032, 84 );
SE033 = playSeVer2( spep_6 + 18, 1011, "",spep_6 + 46, 0, 6, -1);
SE034 = playSeVer2( spep_6 + 22, 1005, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_6 + 26, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 26, SE035, 93 );
SE036 = playSeVer2( spep_6 + 30, 1005, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_6 + 30, 1011, "",spep_6 + 60, 0, 8, -1);
SE038 = playSeVer2( spep_6 + 30, 1023, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_6 + 46, 1011, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_6 + 46, 1024, "", 0, 0, 0, -1);


-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +10 );
endPhase( spep_6 + 110 );
end