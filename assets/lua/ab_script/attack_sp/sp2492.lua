--1026020:ヤジロベー_居合い斬り(簡易版)
--sp_effect_b2_00052

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
SP_01=  161068  ;-- 突進する　セルフカットイン
SP_02=  161069  ;-- 飛び掛かる
SP_03=  161070  ;-- 斬りかかる
SP_04=  161071  ;-- 斬りかかる
SP_05=  161072  ;-- フィニッシュ
SP_06=  161073  ;-- フィニッシュ
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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
changeAnime( 0, 1, 0);

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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--突進する
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 186, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 186, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 186, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 186, rush, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +78;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, -50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -50,  515);

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
--地響き
SE001 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 210, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 210, 144, 20, -1);
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 216, 144, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 75 );

--足音
SE004 = playSeVer2( spep_0 + 0, 1111, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 68 );
SE005 = playSeVer2( spep_0 + 10, 1111, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE005, 62 );
SE006 = playSeVer2( spep_0 + 74, 1111, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 136 );
SE007 = playSeVer2( spep_0 + 84, 1111, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE007, 136 );
SE009 = playSeVer2( spep_0 + 144, 1111, "",spep_0 + 210, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 144, SE009, 209 );
SE010 = playSeVer2( spep_0 + 154, 1111, "",spep_0 + 210, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 154, SE010, 209 );

--顔カットイン
SE008 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);


--白フェード
entryFade( spep_0 +176 ,4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 186;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
------------------------------------------------------
--飛び掛かる
------------------------------------------------------
-- ** エフェクト等 ** --
pounce = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pounce, 0, 0, 0 );
setEffMoveKey( spep_2 + 88, pounce, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pounce, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, pounce, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pounce, 0 );
setEffRotateKey( spep_2 + 88, pounce, 0 );
setEffAlphaKey( spep_2 + 0, pounce, 255 );
setEffAlphaKey( spep_2 + 86, pounce, 255 );
setEffAlphaKey( spep_2 + 87, pounce, 255 );
setEffAlphaKey( spep_2 + 88, pounce, 0 );

--SE
--迫る
SE012 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 52, 0, 26, -1);
SE013 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 0, 1264, "",spep_2 + 128, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 0, SE014, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
       
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
-- ** 次の準備 ** --
spep_3= spep_2 + 88;
------------------------------------------------------
--斬りかかる
------------------------------------------------------
-- ** エフェクト等 ** --
cutting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, cutting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, cutting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, cutting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, cutting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutting_f, 0 );
setEffRotateKey( spep_3 + 60, cutting_f, 0 );
setEffAlphaKey( spep_3 + 0, cutting_f, 255 );
setEffAlphaKey( spep_3 + 58, cutting_f, 255 );
setEffAlphaKey( spep_3 + 59, cutting_f, 255 );
setEffAlphaKey( spep_3 + 60, cutting_f, 0 );

-- ** エフェクト等 ** --
cutting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, cutting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, cutting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, cutting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, cutting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutting_b, 0 );
setEffRotateKey( spep_3 + 60, cutting_b, 0 );
setEffAlphaKey( spep_3 + 0, cutting_b, 255 );
setEffAlphaKey( spep_3 + 58, cutting_b, 255 );
setEffAlphaKey( spep_3 + 59, cutting_b, 255 );
setEffAlphaKey( spep_3 + 60, cutting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 60, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 22, 1, 106 );

setMoveKey( spep_3 + 0, 1, -19.1, -83.3 , 0 );
setMoveKey( spep_3 + 21, 1, -19.1, -83.3 , 0 );
setMoveKey( spep_3 + 22, 1, -84.1, -98.9 , 0 );
setMoveKey( spep_3 + 24, 1, -84.7, -99.4 , 0 );
setMoveKey( spep_3 + 26, 1, -85.3, -100 , 0 );
setMoveKey( spep_3 + 28, 1, -85.9, -100.5 , 0 );
setMoveKey( spep_3 + 30, 1, -86.6, -101.1 , 0 );
setMoveKey( spep_3 + 32, 1, -87.2, -101.6 , 0 );
setMoveKey( spep_3 + 34, 1, -87.9, -102.2 , 0 );
setMoveKey( spep_3 + 36, 1, -88.5, -102.7 , 0 );
setMoveKey( spep_3 + 38, 1, -89.2, -103.2 , 0 );
setMoveKey( spep_3 + 40, 1, -90, -104 , 0 );
setMoveKey( spep_3 + 42, 1, -90.9, -104.7 , 0 );
setMoveKey( spep_3 + 44, 1, -91.8, -105.4 , 0 );
setMoveKey( spep_3 + 46, 1, -92.6, -106.2 , 0 );
setMoveKey( spep_3 + 48, 1, -93.5, -106.9 , 0 );
setMoveKey( spep_3 + 50, 1, -94.4, -107.6 , 0 );
setMoveKey( spep_3 + 52, 1, -95.3, -108.4 , 0 );
setMoveKey( spep_3 + 54, 1, -96.1, -109.1 , 0 );
setMoveKey( spep_3 + 56, 1, -97, -109.8 , 0 );
setMoveKey( spep_3 + 58, 1, -97.9, -110.6 , 0 );
setMoveKey( spep_3 + 60, 1, -98.7, -111.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.84, 2.84 );
setScaleKey( spep_3 + 60, 1, 2.84, 2.84 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 21, 1, 0 );
setRotateKey( spep_3 + 22, 1, -57 );
setRotateKey( spep_3 + 24, 1, -57.1 );
setRotateKey( spep_3 + 26, 1, -57.2 );
setRotateKey( spep_3 + 28, 1, -57.4 );
setRotateKey( spep_3 + 30, 1, -57.5 );
setRotateKey( spep_3 + 32, 1, -57.6 );
setRotateKey( spep_3 + 34, 1, -57.8 );
setRotateKey( spep_3 + 36, 1, -57.9 );
setRotateKey( spep_3 + 38, 1, -58 );
setRotateKey( spep_3 + 40, 1, -58.2 );
setRotateKey( spep_3 + 42, 1, -58.4 );
setRotateKey( spep_3 + 44, 1, -58.5 );
setRotateKey( spep_3 + 46, 1, -58.7 );
setRotateKey( spep_3 + 48, 1, -58.9 );
setRotateKey( spep_3 + 50, 1, -59 );
setRotateKey( spep_3 + 52, 1, -59.2 );
setRotateKey( spep_3 + 54, 1, -59.4 );
setRotateKey( spep_3 + 56, 1, -59.5 );
setRotateKey( spep_3 + 58, 1, -59.7 );
setRotateKey( spep_3 + 60, 1, -59.9 );

--SE
--切る
SE015 = playSeVer2( spep_3 + 22, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE015, 68 );
SE016 = playSeVer2( spep_3 + 24, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 24, SE016, 77 );
SE017 = playSeVer2( spep_3 + 32, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 32, SE017, 79 );
SE018 = playSeVer2( spep_3 + 34, 1031, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 34, 1042, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 60;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 170, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 170, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 170, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 170, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 170, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 170, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 170, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 10, 1, 1 );

changeAnime( spep_4 + 10, 1, 108 );
changeAnime( spep_4-1 + 34, 1, 106 );

setMoveKey( spep_4 + 10, 1, 694.3, 507.4 , 0 );
setMoveKey( spep_4 + 12, 1, 633.2, 413.2 , 0 );
setMoveKey( spep_4 + 14, 1, 572.1, 319 , 0 );
setMoveKey( spep_4 + 16, 1, 510.9, 224.9 , 0 );
setMoveKey( spep_4 + 18, 1, 449.7, 130.7 , 0 );
setMoveKey( spep_4 + 20, 1, 388.5, 36.6 , 0 );
setMoveKey( spep_4 + 22, 1, 350.8, -7.5 , 0 );
setMoveKey( spep_4 + 24, 1, 313.1, -51.6 , 0 );
setMoveKey( spep_4 + 26, 1, 275.4, -95.6 , 0 );
setMoveKey( spep_4 + 28, 1, 237.7, -139.7 , 0 );
setMoveKey( spep_4 + 30, 1, 200, -183.8 , 0 );
setMoveKey( spep_4 + 32, 1, 162.3, -227.9 , 0 );


setMoveKey( spep_4 -1+ 34, 1, 24.5, -310.1 , 0 );
setMoveKey( spep_4 + 36, 1, 14.9, -323.8 , 0 );
setMoveKey( spep_4 + 38, 1, 8.6, -285.9 , 0 );
setMoveKey( spep_4 + 40, 1, -7.1, -290.8 , 0 );
setMoveKey( spep_4 + 42, 1, -0.7, -286 , 0 );
setMoveKey( spep_4 + 44, 1, -12.1, -303.2 , 0 );
setMoveKey( spep_4 + 46, 1, -13.9, -268.7 , 0 );
setMoveKey( spep_4 + 48, 1, -23.7, -285.2 , 0 );
setMoveKey( spep_4 + 50, 1, -12.9, -293.1 , 0 );
setMoveKey( spep_4 + 52, 1, -21.4, -324.1 , 0 );
setMoveKey( spep_4 + 54, 1, -22, -304.6 , 0 );
setMoveKey( spep_4 + 56, 1, -33.6, -329.1 , 0 );
setMoveKey( spep_4 + 58, 1, -21, -329.1 , 0 );
setMoveKey( spep_4 + 60, 1, -27.3, -329.1 , 0 );
setMoveKey( spep_4 + 170, 1, -27.3, -329.1 , 0 );

setScaleKey( spep_4 + 10, 1, 1.71, 1.71 );
setScaleKey( spep_4-1 + 33, 1, 1.71, 1.71 );

setScaleKey( spep_4-1 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 170, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 10, 1, 56 );
setRotateKey( spep_4 + 12, 1, 61 );
setRotateKey( spep_4 + 14, 1, 66 );
setRotateKey( spep_4 + 16, 1, 71 );
setRotateKey( spep_4 + 18, 1, 76 );
setRotateKey( spep_4 + 20, 1, 81 );
setRotateKey( spep_4 + 22, 1, 81.8 );
setRotateKey( spep_4 + 24, 1, 82.5 );
setRotateKey( spep_4 + 26, 1, 83.3 );
setRotateKey( spep_4 + 28, 1, 84 );
setRotateKey( spep_4 + 30, 1, 84.8 );
setRotateKey( spep_4 + 32, 1, 85.5 );

setRotateKey( spep_4-1 + 34, 1, 32.5 );
setRotateKey( spep_4 + 44, 1, 32.5 );
setRotateKey( spep_4 + 46, 1, 32.9 );
setRotateKey( spep_4 + 48, 1, 33.6 );
setRotateKey( spep_4 + 50, 1, 34.4 );
setRotateKey( spep_4 + 52, 1, 35.4 );
setRotateKey( spep_4 + 54, 1, 36.5 );
setRotateKey( spep_4 + 170, 1, 36.5 );

--SE
--敵地面落ちる
SE020 = playSeVer2( spep_4 +34, 1002, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_4 + 34 );
endPhase( spep_4 + 160 ); -- 終了フレーム 
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--突進する
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 186, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 186, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 186, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 186, rush, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +78;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, -50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -50,  515);

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
--地響き
SE001 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 210, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 20 );
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 210, 144, 20, -1);
SE003 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 216, 144, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 75 );

--足音
SE004 = playSeVer2( spep_0 + 0, 1111, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 68 );
SE005 = playSeVer2( spep_0 + 10, 1111, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE005, 62 );
SE006 = playSeVer2( spep_0 + 74, 1111, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 136 );
SE007 = playSeVer2( spep_0 + 84, 1111, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE007, 136 );
SE009 = playSeVer2( spep_0 + 144, 1111, "",spep_0 + 210, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 144, SE009, 209 );
SE010 = playSeVer2( spep_0 + 154, 1111, "",spep_0 + 210, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 154, SE010, 209 );

--顔カットイン
SE008 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);


--白フェード
entryFade( spep_0 +176 ,4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 190, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 186;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 4, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;
------------------------------------------------------
--飛び掛かる
------------------------------------------------------
-- ** エフェクト等 ** --
pounce = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pounce, 0, 0, 0 );
setEffMoveKey( spep_2 + 88, pounce, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pounce, -1.0, 1.0 );
setEffScaleKey( spep_2 + 88, pounce, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pounce, 0 );
setEffRotateKey( spep_2 + 88, pounce, 0 );
setEffAlphaKey( spep_2 + 0, pounce, 255 );
setEffAlphaKey( spep_2 + 86, pounce, 255 );
setEffAlphaKey( spep_2 + 87, pounce, 255 );
setEffAlphaKey( spep_2 + 88, pounce, 0 );

--SE
--迫る
SE012 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 52, 0, 26, -1);
SE013 = playSeVer2( spep_2 + 0, 1117, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 0, 1264, "",spep_2 + 128, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 0, SE014, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
       
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
-- ** 次の準備 ** --
spep_3= spep_2 + 88;
------------------------------------------------------
--斬りかかる
------------------------------------------------------
-- ** エフェクト等 ** --
cutting_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, cutting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, cutting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, cutting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 60, cutting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutting_f, 0 );
setEffRotateKey( spep_3 + 60, cutting_f, 0 );
setEffAlphaKey( spep_3 + 0, cutting_f, 255 );
setEffAlphaKey( spep_3 + 58, cutting_f, 255 );
setEffAlphaKey( spep_3 + 59, cutting_f, 255 );
setEffAlphaKey( spep_3 + 60, cutting_f, 0 );

-- ** エフェクト等 ** --
cutting_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, cutting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 60, cutting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, cutting_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 60, cutting_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutting_b, 0 );
setEffRotateKey( spep_3 + 60, cutting_b, 0 );
setEffAlphaKey( spep_3 + 0, cutting_b, 255 );
setEffAlphaKey( spep_3 + 58, cutting_b, 255 );
setEffAlphaKey( spep_3 + 59, cutting_b, 255 );
setEffAlphaKey( spep_3 + 60, cutting_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 60, 1, 0 );

changeAnime( spep_3 + 0, 1, 4 );
changeAnime( spep_3 + 22, 1, 6 );

setMoveKey( spep_3 + 0, 1, 19.1, -83.3 , 0 );
setMoveKey( spep_3 + 21, 1, 19.1, -83.3 , 0 );
setMoveKey( spep_3 + 22, 1, 84.1, -98.9 , 0 );
setMoveKey( spep_3 + 24, 1, 84.7, -99.4 , 0 );
setMoveKey( spep_3 + 26, 1, 85.3, -100 , 0 );
setMoveKey( spep_3 + 28, 1, 85.9, -100.5 , 0 );
setMoveKey( spep_3 + 30, 1, 86.6, -101.1 , 0 );
setMoveKey( spep_3 + 32, 1, 87.2, -101.6 , 0 );
setMoveKey( spep_3 + 34, 1, 87.9, -102.2 , 0 );
setMoveKey( spep_3 + 36, 1, 88.5, -102.7 , 0 );
setMoveKey( spep_3 + 38, 1, 89.2, -103.2 , 0 );
setMoveKey( spep_3 + 40, 1, 90, -104 , 0 );
setMoveKey( spep_3 + 42, 1, 90.9, -104.7 , 0 );
setMoveKey( spep_3 + 44, 1, 91.8, -105.4 , 0 );
setMoveKey( spep_3 + 46, 1, 92.6, -106.2 , 0 );
setMoveKey( spep_3 + 48, 1, 93.5, -106.9 , 0 );
setMoveKey( spep_3 + 50, 1, 94.4, -107.6 , 0 );
setMoveKey( spep_3 + 52, 1, 95.3, -108.4 , 0 );
setMoveKey( spep_3 + 54, 1, 96.1, -109.1 , 0 );
setMoveKey( spep_3 + 56, 1, 97, -109.8 , 0 );
setMoveKey( spep_3 + 58, 1, 97.9, -110.6 , 0 );
setMoveKey( spep_3 + 60, 1, 98.7, -111.3 , 0 );

setScaleKey( spep_3 + 0, 1, 2.84, 2.84 );
setScaleKey( spep_3 + 60, 1, 2.84, 2.84 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 21, 1, 0 );
setRotateKey( spep_3 + 22, 1, 57 );
setRotateKey( spep_3 + 24, 1, 57.1 );
setRotateKey( spep_3 + 26, 1, 57.2 );
setRotateKey( spep_3 + 28, 1, 57.4 );
setRotateKey( spep_3 + 30, 1, 57.5 );
setRotateKey( spep_3 + 32, 1, 57.6 );
setRotateKey( spep_3 + 34, 1, 57.8 );
setRotateKey( spep_3 + 36, 1, 57.9 );
setRotateKey( spep_3 + 38, 1, 58 );
setRotateKey( spep_3 + 40, 1, 58.2 );
setRotateKey( spep_3 + 42, 1, 58.4 );
setRotateKey( spep_3 + 44, 1, 58.5 );
setRotateKey( spep_3 + 46, 1, 58.7 );
setRotateKey( spep_3 + 48, 1, 58.9 );
setRotateKey( spep_3 + 50, 1, 59 );
setRotateKey( spep_3 + 52, 1, 59.2 );
setRotateKey( spep_3 + 54, 1, 59.4 );
setRotateKey( spep_3 + 56, 1, 59.5 );
setRotateKey( spep_3 + 58, 1, 59.7 );
setRotateKey( spep_3 + 60, 1, 59.9 );

--SE
--切る
SE015 = playSeVer2( spep_3 + 22, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 22, SE015, 68 );
SE016 = playSeVer2( spep_3 + 24, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 24, SE016, 77 );
SE017 = playSeVer2( spep_3 + 32, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 32, SE017, 79 );
SE018 = playSeVer2( spep_3 + 34, 1031, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_3 + 34, 1042, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 60, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 60;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 170, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 170, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 170, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 170, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 170, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 170, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 170, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 170, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 10, 1, 1 );

changeAnime( spep_4 + 10, 1, 8 );
changeAnime( spep_4-1 + 34, 1, 6 );

setMoveKey( spep_4 + 10, 1, -694.3, 507.4 , 0 );
setMoveKey( spep_4 + 12, 1, -633.2, 413.2 , 0 );
setMoveKey( spep_4 + 14, 1, -572.1, 319 , 0 );
setMoveKey( spep_4 + 16, 1, -510.9, 224.9 , 0 );
setMoveKey( spep_4 + 18, 1, -449.7, 130.7 , 0 );
setMoveKey( spep_4 + 20, 1, -388.5, 36.6 , 0 );
setMoveKey( spep_4 + 22, 1, -350.8, -7.5 , 0 );
setMoveKey( spep_4 + 24, 1, -313.1, -51.6 , 0 );
setMoveKey( spep_4 + 26, 1, -275.4, -95.6 , 0 );
setMoveKey( spep_4 + 28, 1, -237.7, -139.7 , 0 );
setMoveKey( spep_4 + 30, 1, -200, -183.8 , 0 );
setMoveKey( spep_4 + 32, 1, -162.3, -227.9 , 0 );


setMoveKey( spep_4 -1+ 34, 1, -24.5, -310.1 , 0 );
setMoveKey( spep_4 + 36, 1, -14.9, -323.8 , 0 );
setMoveKey( spep_4 + 38, 1, -8.6, -285.9 , 0 );
setMoveKey( spep_4 + 40, 1, 7.1, -290.8 , 0 );
setMoveKey( spep_4 + 42, 1, 0.7, -286 , 0 );
setMoveKey( spep_4 + 44, 1, 12.1, -303.2 , 0 );
setMoveKey( spep_4 + 46, 1, 13.9, -268.7 , 0 );
setMoveKey( spep_4 + 48, 1, 23.7, -285.2 , 0 );
setMoveKey( spep_4 + 50, 1, 12.9, -293.1 , 0 );
setMoveKey( spep_4 + 52, 1, 21.4, -324.1 , 0 );
setMoveKey( spep_4 + 54, 1, 22, -304.6 , 0 );
setMoveKey( spep_4 + 56, 1, 33.6, -329.1 , 0 );
setMoveKey( spep_4 + 58, 1, 21, -329.1 , 0 );
setMoveKey( spep_4 + 60, 1, 27.3, -329.1 , 0 );
setMoveKey( spep_4 + 170, 1, 27.3, -329.1 , 0 );

setScaleKey( spep_4 + 10, 1, 1.71, 1.71 );
setScaleKey( spep_4-1 + 33, 1, 1.71, 1.71 );

setScaleKey( spep_4-1 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 170, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 10, 1, -56 );
setRotateKey( spep_4 + 12, 1, -61 );
setRotateKey( spep_4 + 14, 1, -66 );
setRotateKey( spep_4 + 16, 1, -71 );
setRotateKey( spep_4 + 18, 1, -76 );
setRotateKey( spep_4 + 20, 1, -81 );
setRotateKey( spep_4 + 22, 1, -81.8 );
setRotateKey( spep_4 + 24, 1, -82.5 );
setRotateKey( spep_4 + 26, 1, -83.3 );
setRotateKey( spep_4 + 28, 1, -84 );
setRotateKey( spep_4 + 30, 1, -84.8 );
setRotateKey( spep_4 + 32, 1, -85.5 );

setRotateKey( spep_4-1 + 34, 1, -32.5 );
setRotateKey( spep_4 + 44, 1, -32.5 );
setRotateKey( spep_4 + 46, 1, -32.9 );
setRotateKey( spep_4 + 48, 1, -33.6 );
setRotateKey( spep_4 + 50, 1, -34.4 );
setRotateKey( spep_4 + 52, 1, -35.4 );
setRotateKey( spep_4 + 54, 1, -36.5 );
setRotateKey( spep_4 + 170, 1, -36.5 );

--SE
--敵地面落ちる
SE020 = playSeVer2( spep_4 +34, 1002, "", 0, 0, 0, -1);

--終わり
dealDamage( spep_4 + 34 );
endPhase( spep_4 + 160 ); -- 終了フレーム 
end