--1024990:パン(GT)_カツ丼・天丼・親子丼！
--sp_effect_a1_00361
--so2403

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
SP_01 = 160213; --崖ジャンプ ef_001
SP_02 = 160214; --パン着地→サマーソルト   ef_002
SP_03 = 160215; --パン着地→サマーソルト   ef_003
SP_04 = 160216; --敵を見つける悟空  ef_004a
SP_05 = 160217; --敵を見つける悟空  ef_004b
SP_06 = 160218; --台詞カットイン   ef_005
SP_07 = 160219; --台詞カットイン   ef_006
SP_08 = 160220; --画面２分割 ef_007
SP_09 = 160221; --敵に迫る気弾→爆発 ef_008
SP_10 = 160222; --敵に迫る気弾→爆発 ef_009

--敵側

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 崖ジャンプ(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 66, 0x100, -1, 0, 0, 0 );  --崖ジャンプ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 66, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 66, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "",spep_0 + 50, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 58 );

--走ってくる
SE002 = playSeVer2( spep_0 + 4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 200 );
setBandpassFilter  ( spep_0 + 4, SE002, 24, 1000 );
SE003 = playSeVer2( spep_0 + 4, 1111, "",spep_0 + 16, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 79 );
SE004 = playSeVer2( spep_0 + 16, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 200 );
setBandpassFilter  ( spep_0 + 16, SE004, 24, 1000 );
SE005 = playSeVer2( spep_0 + 16, 1111, "",spep_0 + 28, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 79 );
SE006 = playSeVer2( spep_0 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE006, 200 );
setBandpassFilter  ( spep_0 + 26, SE006, 24, 1000 );
SE007 = playSeVer2( spep_0 + 26, 1111, "",spep_0 + 40, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 26, SE007, 79 );
SE009 = playSeVer2( spep_0 + 36, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE009, 200 );
setBandpassFilter  ( spep_0 + 36, SE009, 24, 1000 );
SE010 = playSeVer2( spep_0 + 36, 1111, "",spep_0 + 50, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 36, SE010, 79 );

--ジャンプ
SE008 = playSeVer2( spep_0 + 32, 1013, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 36, 1117, "",spep_0 + 88, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
   
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
spep_1 = spep_0 + 66;


------------------------------------------------------
-- パン着地→サマーソルト(66F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
somersault_f = entryEffectLife( spep_1 + 0, SP_02, 66, 0x100, -1, 0, 0, 0 );  --パン着地→サマーソルト   ef_002
setEffMoveKey( spep_1 + 0, somersault_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, somersault_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, somersault_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, somersault_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, somersault_f, 0 );
setEffRotateKey( spep_1 + 66, somersault_f, 0 );
setEffAlphaKey( spep_1 + 0, somersault_f, 255 );
setEffAlphaKey( spep_1 + 66 -1, somersault_f, 255 );
setEffAlphaKey( spep_1 + 66, somersault_f, 0 );

somersault_b = entryEffectLife( spep_1 + 0, SP_03, 66, 0x80, -1, 0, 0, 0 );  --パン着地→サマーソルト   ef_003
setEffMoveKey( spep_1 + 0, somersault_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, somersault_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, somersault_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 66, somersault_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, somersault_b, 0 );
setEffRotateKey( spep_1 + 66, somersault_b, 0 );
setEffAlphaKey( spep_1 + 0, somersault_b, 255 );
setEffAlphaKey( spep_1 + 66 -1, somersault_b, 255 );
setEffAlphaKey( spep_1 + 66, somersault_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 +1 + 65, 1, 0 );
changeAnime( spep_1 + 0, 1, 17 );
changeAnime( spep_1 +1 + 40, 1, 6 );

a=-40;
b=40;

setMoveKey( spep_1 + 0, 1, -53.6+a, -141.8+b , 0 );
--setMoveKey( spep_1+1 + 2, 1, 53.6, -141.7 , 0 );
setMoveKey( spep_1+1 + 12, 1, -53.6+a, -141.7+b , 0 );
setMoveKey( spep_1+1 + 14, 1, -53.6+a, -142.4+b , 0 );
setMoveKey( spep_1+1 + 16, 1, -53.6+a, -141.4+b , 0 );
setMoveKey( spep_1+1 + 18, 1, -53.6+a, -142.2+b , 0 );
setMoveKey( spep_1+1 + 20, 1, -53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 22, 1, -53.6+a, -142.1+b , 0 );
setMoveKey( spep_1+1 + 24, 1, -53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 26, 1, -53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 28, 1, -53.6+a, -137.7+b , 0 );
setMoveKey( spep_1+1 + 30, 1, -53.6+a, -141.8+b , 0 );
setMoveKey( spep_1+1 + 32, 1, -53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 39, 1, -53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 40, 1, -34.8+a, 200.6+b , 0 );
setMoveKey( spep_1+1 + 42, 1, -36.6+a, 181.8+b , 0 );
setMoveKey( spep_1+1 + 44, 1, -40.3+a, 194.5+b , 0 );
setMoveKey( spep_1+1 + 46, 1, -44.3+a, 185.8+b , 0 );
setMoveKey( spep_1+1 + 48, 1, -48.6+a, 201+b , 0 );
setMoveKey( spep_1+1 + 50, 1, -52.8+a, 195.7+b , 0 );
setMoveKey( spep_1+1 + 52, 1, -57.1+a, 206.8+b , 0 );
setMoveKey( spep_1+1 + 54, 1, -142.5+a, 398.3+b , 0 );
setMoveKey( spep_1+1 + 56, 1, -173.8+a, 474.9+b , 0 );
setMoveKey( spep_1+1 + 58, 1, -195.8+a, 522.3+b , 0 );
setMoveKey( spep_1+1 + 60, 1, -212.9+a, 563.6+b , 0 );
setMoveKey( spep_1+1 + 62, 1, -226.7+a, 594.4+b , 0 );
setMoveKey( spep_1+1 + 64, 1, -237.9+a, 621.2+b , 0 );
setMoveKey( spep_1+1 + 65, 1, -237.9+a, 621.2+b , 0 );

setScaleKey( spep_1 + 0, 1, 2,2);
setScaleKey( spep_1+1 + 39, 1, 2,2);
setScaleKey( spep_1+1 + 40, 1, 2.2,2.2);
setScaleKey( spep_1+1 + 42, 1, 2.03,2.03);
setScaleKey( spep_1+1 + 44, 1, 1.98,1.98);
setScaleKey( spep_1+1 + 46, 1, 1.96,1.96);
setScaleKey( spep_1+1 + 48, 1, 1.94,1.94);
setScaleKey( spep_1+1 + 50, 1, 1.93,1.93);
setScaleKey( spep_1+1 + 52, 1, 1.92,1.92);
setScaleKey( spep_1+1 + 54, 1, 1.42,1.42);
setScaleKey( spep_1+1 + 56, 1, 1.23,1.23);
setScaleKey( spep_1+1 + 58, 1, 1.1,1.1);
setScaleKey( spep_1+1 + 60, 1, 1,1);
setScaleKey( spep_1+1 + 62, 1, 0.92,0.92);
setScaleKey( spep_1+1 + 64, 1, 0.86,0.86);
setScaleKey( spep_1+1 + 65, 1, 0.86,0.86);

setRotateKey( spep_1 + 0, 1, -0 );
setRotateKey( spep_1+1 + 39, 1, -0 );
setRotateKey( spep_1+1 + 40, 1, 43 );
setRotateKey( spep_1+1 + 42, 1, 42.4 );
setRotateKey( spep_1+1 + 44, 1, 41.8 );
setRotateKey( spep_1+1 + 46, 1, 41.3 );
setRotateKey( spep_1+1 + 48, 1, 40.7 );
setRotateKey( spep_1+1 + 50, 1, 40.2 );
setRotateKey( spep_1+1 + 52, 1, 39.6 );
setRotateKey( spep_1+1 + 54, 1, 32.1 );
setRotateKey( spep_1+1 + 56, 1, 29.3 );
setRotateKey( spep_1+1 + 58, 1, 27.3 );
setRotateKey( spep_1+1 + 60, 1, 25.8 );
setRotateKey( spep_1+1 + 62, 1, 24.6 );
setRotateKey( spep_1+1 + 64, 1, 23.6 );
setRotateKey( spep_1+1 + 65, 1, 23.6 );

-- ** 音 ** --
--着地
SE012 = playSeVer2( spep_1 + 10, 1106, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 12, 1107, "", 0, 0, 0, -1);

--サマーソルト
SE014 = playSeVer2( spep_1 + 28, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 38, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 38, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_1 + 64, 1116, "",spep_1 + 132, 0, 36, 0.6);
setSeVolumeByWorkId( spep_1 + 64, SE017, 75 );
SE018 = playSeVer2( spep_1 + 64, 1121, "",spep_1 + 158, 0, 46, 0.6);
setSeVolumeByWorkId( spep_1 + 64, SE018, 64 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 82 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 66;


------------------------------------------------------
-- 敵を見つける悟空(40F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
find_f = entryEffectLife( spep_2 + 0, SP_04, 40, 0x100, -1, 0, 0, 0 );  --敵を見つける悟空  ef_004a
setEffMoveKey( spep_2 + 0, find_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, find_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, find_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 40, find_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, find_f, 0 );
setEffRotateKey( spep_2 + 40, find_f, 0 );
setEffAlphaKey( spep_2 + 0, find_f, 255 );
setEffAlphaKey( spep_2 + 40 -1, find_f, 255 );
setEffAlphaKey( spep_2 + 40, find_f, 0 );

find_b = entryEffectLife( spep_2 + 0, SP_05, 40, 0x80, -1, 0, 0, 0 );  --敵を見つける悟空  ef_004b
setEffMoveKey( spep_2 + 0, find_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, find_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, find_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 40, find_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, find_b, 0 );
setEffRotateKey( spep_2 + 40, find_b, 0 );
setEffAlphaKey( spep_2 + 0, find_b, 255 );
setEffAlphaKey( spep_2 + 40 -1, find_b, 255 );
setEffAlphaKey( spep_2 + 40, find_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 1, 1, 1 );
setDisp( spep_2 -3 + 43, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );

setMoveKey( spep_2 + 1, 1, 221.9, -675.4 , 0 );
setMoveKey( spep_2 + 2, 1, 214.3, -652.6 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 206.8, -629.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 199.4, -607.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 192, -585.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 184.8, -563.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 177.6, -541.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 170.5, -520.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 163.5, -499.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 156.6, -478.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 149.7, -457.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 142.9, -437 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 136.2, -416.7 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 129.5, -396.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 122.9, -376.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 116.3, -356.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 109.8, -336.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 103.2, -317.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 96.8, -297.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 90.3, -277.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 82.5, -250.4 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 82.5, -250.4 , 0 );

setScaleKey( spep_2 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 43, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 1, 1, 35.2 );
setRotateKey( spep_2 + 2, 1, 34.8 );
setRotateKey( spep_2 -3 + 6, 1, 34.4 );
setRotateKey( spep_2 -3 + 8, 1, 33.9 );
setRotateKey( spep_2 -3 + 10, 1, 33.5 );
setRotateKey( spep_2 -3 + 12, 1, 33.1 );
setRotateKey( spep_2 -3 + 14, 1, 32.7 );
setRotateKey( spep_2 -3 + 16, 1, 32.2 );
setRotateKey( spep_2 -3 + 18, 1, 31.8 );
setRotateKey( spep_2 -3 + 20, 1, 31.4 );
setRotateKey( spep_2 -3 + 22, 1, 31 );
setRotateKey( spep_2 -3 + 24, 1, 30.6 );
setRotateKey( spep_2 -3 + 26, 1, 30.2 );
setRotateKey( spep_2 -3 + 28, 1, 29.9 );
setRotateKey( spep_2 -3 + 30, 1, 29.5 );
setRotateKey( spep_2 -3 + 32, 1, 29.1 );
setRotateKey( spep_2 -3 + 34, 1, 28.7 );
setRotateKey( spep_2 -3 + 36, 1, 28.3 );
setRotateKey( spep_2 -3 + 38, 1, 28 );
setRotateKey( spep_2 -3 + 40, 1, 27.6 );
setRotateKey( spep_2 -3 + 42, 1, 27.2 );
setRotateKey( spep_2 -3 + 43, 1, 27.2 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 40;


------------------------------------------------------
-- 台詞カットイン(194F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
cutin_f = entryEffectLife( spep_3 + 0, SP_06, 194, 0x100, -1, 0, 0, 0 );  --台詞カットイン   ef_005
setEffMoveKey( spep_3 + 0, cutin_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 194, cutin_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, cutin_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 194, cutin_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutin_f, 0 );
setEffRotateKey( spep_3 + 194, cutin_f, 0 );
setEffAlphaKey( spep_3 + 0, cutin_f, 255 );
setEffAlphaKey( spep_3 + 194 -1, cutin_f, 255 );
setEffAlphaKey( spep_3 + 194, cutin_f, 0 );

cutin_b = entryEffectLife( spep_3 + 0, SP_07, 194, 0x80, -1, 0, 0, 0 );  --台詞カットイン   ef_006
setEffMoveKey( spep_3 + 0, cutin_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 194, cutin_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, cutin_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 194, cutin_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutin_b, 0 );
setEffRotateKey( spep_3 + 194, cutin_b, 0 );
setEffAlphaKey( spep_3 + 0, cutin_b, 255 );
setEffAlphaKey( spep_3 + 194 -1, cutin_b, 255 );
setEffAlphaKey( spep_3 + 194, cutin_b, 0 );

-- ** 音 ** --
--顔カットイン
SE019 = playSeVer2( spep_3 + 4, 1018, "", 0, 0, 0, -1);

--悟空腕前に出す
SE020 = playSeVer2( spep_3 + 14, 1013, "", 0, 0, 0, -1);

--悟空構える
SE021 = playSeVer2( spep_3 + 34, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 42, 1006, "", 0, 0, 0, -1);

--パン腕を前に出す
SE023 = playSeVer2( spep_3 + 92, 1003, "", 0, 0, 0, -1);

--パン顔カットイン
SE024 = playSeVer2( spep_3 + 102, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 102, SE024, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 194 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 194;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 画面２分割(84F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_5 + 0, SP_08, 83, 0x100, -1, 0, 0, 0 );  --画面２分割 ef_007
setEffMoveKey( spep_5 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 83, shot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_5 + 83, shot, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot, 0 );
setEffRotateKey( spep_5 + 83, shot, 0 );
setEffAlphaKey( spep_5 + 0, shot, 255 );
setEffAlphaKey( spep_5 + 83 -1, shot, 255 );
setEffAlphaKey( spep_5 + 83, shot, 0 );

ctcdon = entryEffectLife( spep_5 -3 + 18,  10019, 36, 0x100, -1, 0, 112.7, 349.7 ); --ドンッ
setEffMoveKey( spep_5 -3 + 18, ctcdon, 112.7, 349.7 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctcdon, 105.1, 359 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctcdon, 118.3, 343.5 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctcdon, 115.7, 359.6 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctcdon, 121.2, 340.7 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctcdon, 108.2, 350.3 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctcdon, 121.2, 352.8 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctcdon, 110.7, 340 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctcdon, 118.2, 357.2 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctcdon, 115.5, 343.4 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctcdon, 111.9, 353 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctcdon, 111.7, 343.7 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctcdon, 118.3, 350.6 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctcdon, 110.8, 343.7 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctcdon, 114.6, 354.8 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctcdon, 111.7, 346.8 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctcdon, 112.6, 353.7 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctcdon, 113.1, 345.3 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctcdon, 113.1, 345.3 , 0 );

setEffScaleKey( spep_5 -3 + 18, ctcdon, 2.69, 2.7 );
setEffScaleKey( spep_5 -3 + 54, ctcdon, 2.69, 2.7 );

setEffRotateKey( spep_5 -3 + 18, ctcdon, 40.4 );
setEffRotateKey( spep_5 -3 + 54, ctcdon, 40.4 );

setEffAlphaKey( spep_5 -3 + 18, ctcdon, 255 );
setEffAlphaKey( spep_5 -3 + 46, ctcdon, 255 );
setEffAlphaKey( spep_5 -3 + 48, ctcdon, 191 );
setEffAlphaKey( spep_5 -3 + 50, ctcdon, 128 );
setEffAlphaKey( spep_5 -3 + 52, ctcdon, 64 );
setEffAlphaKey( spep_5 -3 + 54, ctcdon, 0 );


-- ** 音 ** --
--気弾発射
SE026 = playSeVer2( spep_5 + 4, 1133, "",spep_5 + 153, 0, 18, -1);
setSeVolumeByWorkId( spep_5 + 4, SE026, 94 );
SE027 = playSeVer2( spep_5 + 4, 1146, "",spep_5 + 153, 0, 18, -1);
setSeVolumeByWorkId( spep_5 + 4, SE027, 83 );
SE028 = playSeVer2( spep_5 + 4, 1177, "",spep_5 + 153, 0, 18, -1);
setSeVolumeByWorkId( spep_5 + 4, SE028, 83 );

--気弾飛んでいく
SE029 = playSeVer2( spep_5 + 76, 1212, "",spep_5 + 153, 10, 18, -1);
setSeVolumeByWorkId( spep_5 + 76, SE029, 68 );
setStartTimeMs( SE029,  950 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 83 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 83;


------------------------------------------------------
-- 敵に迫る気弾→爆発(246F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --敵に迫る気弾→爆発 ef_008
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 246, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 246, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 246, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 246, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --敵に迫る気弾→爆発 ef_009
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 246, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 246, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 246, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 246, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 46, 1, 0 );
changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, -8.5, -21.3 , 0 );
setMoveKey( spep_6 + 1, 1, -8.7, -21.5 , 0 );
setMoveKey( spep_6 + 2, 1, -8.8, -21.6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -8.9, -21.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -9, -21.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -9.1, -21.9 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -9.3, -22 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -9.4, -22.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -9.5, -22.2 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -9.6, -22.3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -9.7, -22.4 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -9.8, -22.5 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -9.9, -22.6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -10.1, -22.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -10.2, -22.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -10.3, -22.9 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -10.4, -23 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -10.5, -23.1 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -10.6, -23.2 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -10.7, -23.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -10.9, -23.5 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -11, -23.6 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -11.1, -23.7 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -11.1, -23.7 , 0 );

setScaleKey( spep_6 + 0, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 1, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 2, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 6, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 12, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 14, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 16, 1, 0.83, 0.83 );
setScaleKey( spep_6 -3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_6 -3 + 20, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_6 -3 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_6 -3 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_6 -3 + 28, 1, 0.75, 0.75 );
setScaleKey( spep_6 -3 + 30, 1, 0.74, 0.74 );
setScaleKey( spep_6 -3 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_6 -3 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_6 -3 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 38, 1, 0.69, 0.69 );
setScaleKey( spep_6 -3 + 40, 1, 0.67, 0.67 );
setScaleKey( spep_6 -3 + 42, 1, 0.66, 0.66 );
setScaleKey( spep_6 -3 + 44, 1, 0.65, 0.65 );
setScaleKey( spep_6 -3 + 46, 1, 0.65, 0.65 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 -3 + 46, 1, 0 );

-- ** 音 ** --
--気弾クロス
SE030 = playSeVer2( spep_6 + 46, 1179, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 46, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 46, SE031, 71 );

--爆発
SE032 = playSeVer2( spep_6 + 116, 1023, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_6 + 116, 1067, "", 0, 0, 0, -1);

--ラスト爆発
SE034 = playSeVer2( spep_6 + 162, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 246 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 76 );
endPhase( spep_6 + 236 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 崖ジャンプ(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 66, 0x100, -1, 0, 0, 0 );  --崖ジャンプ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 66, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 66 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 66, first_f, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "",spep_0 + 50, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 58 );

--走ってくる
SE002 = playSeVer2( spep_0 + 4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 200 );
setBandpassFilter  ( spep_0 + 4, SE002, 24, 1000 );
SE003 = playSeVer2( spep_0 + 4, 1111, "",spep_0 + 16, 0, 4, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 79 );
SE004 = playSeVer2( spep_0 + 16, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE004, 200 );
setBandpassFilter  ( spep_0 + 16, SE004, 24, 1000 );
SE005 = playSeVer2( spep_0 + 16, 1111, "",spep_0 + 28, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 79 );
SE006 = playSeVer2( spep_0 + 26, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE006, 200 );
setBandpassFilter  ( spep_0 + 26, SE006, 24, 1000 );
SE007 = playSeVer2( spep_0 + 26, 1111, "",spep_0 + 40, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 26, SE007, 79 );
SE009 = playSeVer2( spep_0 + 36, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE009, 200 );
setBandpassFilter  ( spep_0 + 36, SE009, 24, 1000 );
SE010 = playSeVer2( spep_0 + 36, 1111, "",spep_0 + 50, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 36, SE010, 79 );

--ジャンプ
SE008 = playSeVer2( spep_0 + 32, 1013, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 36, 1117, "",spep_0 + 88, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
   
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
spep_1 = spep_0 + 66;


------------------------------------------------------
-- パン着地→サマーソルト(66F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
somersault_f = entryEffectLife( spep_1 + 0, SP_02, 66, 0x100, -1, 0, 0, 0 );  --パン着地→サマーソルト   ef_002
setEffMoveKey( spep_1 + 0, somersault_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, somersault_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, somersault_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 66, somersault_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, somersault_f, 0 );
setEffRotateKey( spep_1 + 66, somersault_f, 0 );
setEffAlphaKey( spep_1 + 0, somersault_f, 255 );
setEffAlphaKey( spep_1 + 66 -1, somersault_f, 255 );
setEffAlphaKey( spep_1 + 66, somersault_f, 0 );

somersault_b = entryEffectLife( spep_1 + 0, SP_03, 66, 0x80, -1, 0, 0, 0 );  --パン着地→サマーソルト   ef_003
setEffMoveKey( spep_1 + 0, somersault_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 66, somersault_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, somersault_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 66, somersault_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, somersault_b, 0 );
setEffRotateKey( spep_1 + 66, somersault_b, 0 );
setEffAlphaKey( spep_1 + 0, somersault_b, 255 );
setEffAlphaKey( spep_1 + 66 -1, somersault_b, 255 );
setEffAlphaKey( spep_1 + 66, somersault_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 +1 + 65, 1, 0 );
changeAnime( spep_1 + 0, 1, 117 );
changeAnime( spep_1 +1 + 40, 1, 106 );

a=-40;
b=40;

setMoveKey( spep_1 + 0, 1, 53.6+a, -141.8+b , 0 );
--setMoveKey( spep_1+1 + 2, 1, 53.6, -141.7 , 0 );
setMoveKey( spep_1+1 + 12, 1, 53.6+a, -141.7+b , 0 );
setMoveKey( spep_1+1 + 14, 1, 53.6+a, -142.4+b , 0 );
setMoveKey( spep_1+1 + 16, 1, 53.6+a, -141.4+b , 0 );
setMoveKey( spep_1+1 + 18, 1, 53.6+a, -142.2+b , 0 );
setMoveKey( spep_1+1 + 20, 1, 53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 22, 1, 53.6+a, -142.1+b , 0 );
setMoveKey( spep_1+1 + 24, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 26, 1, 53.6+a, -141.3+b , 0 );
setMoveKey( spep_1+1 + 28, 1, 53.6+a, -137.7+b , 0 );
setMoveKey( spep_1+1 + 30, 1, 53.6+a, -141.8+b , 0 );
setMoveKey( spep_1+1 + 32, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 39, 1, 53.6+a, -140.8+b , 0 );
setMoveKey( spep_1+1 + 40, 1, 34.8+a, 200.6+b , 0 );
setMoveKey( spep_1+1 + 42, 1, 36.6+a, 181.8+b , 0 );
setMoveKey( spep_1+1 + 44, 1, 40.3+a, 194.5+b , 0 );
setMoveKey( spep_1+1 + 46, 1, 44.3+a, 185.8+b , 0 );
setMoveKey( spep_1+1 + 48, 1, 48.6+a, 201+b , 0 );
setMoveKey( spep_1+1 + 50, 1, 52.8+a, 195.7+b , 0 );
setMoveKey( spep_1+1 + 52, 1, 57.1+a, 206.8+b , 0 );
setMoveKey( spep_1+1 + 54, 1, 142.5+a, 398.3+b , 0 );
setMoveKey( spep_1+1 + 56, 1, 173.8+a, 474.9+b , 0 );
setMoveKey( spep_1+1 + 58, 1, 195.8+a, 522.3+b , 0 );
setMoveKey( spep_1+1 + 60, 1, 212.9+a, 563.6+b , 0 );
setMoveKey( spep_1+1 + 62, 1, 226.7+a, 594.4+b , 0 );
setMoveKey( spep_1+1 + 64, 1, 237.9+a, 621.2+b , 0 );
setMoveKey( spep_1+1 + 65, 1, 237.9+a, 621.2+b , 0 );


setScaleKey( spep_1 + 0, 1, 2,2);
setScaleKey( spep_1+1 + 39, 1, 2,2);
setScaleKey( spep_1+1 + 40, 1, 2.2,2.2);
setScaleKey( spep_1+1 + 42, 1, 2.03,2.03);
setScaleKey( spep_1+1 + 44, 1, 1.98,1.98);
setScaleKey( spep_1+1 + 46, 1, 1.96,1.96);
setScaleKey( spep_1+1 + 48, 1, 1.94,1.94);
setScaleKey( spep_1+1 + 50, 1, 1.93,1.93);
setScaleKey( spep_1+1 + 52, 1, 1.92,1.92);
setScaleKey( spep_1+1 + 54, 1, 1.42,1.42);
setScaleKey( spep_1+1 + 56, 1, 1.23,1.23);
setScaleKey( spep_1+1 + 58, 1, 1.1,1.1);
setScaleKey( spep_1+1 + 60, 1, 1,1);
setScaleKey( spep_1+1 + 62, 1, 0.92,0.92);
setScaleKey( spep_1+1 + 64, 1, 0.86,0.86);
setScaleKey( spep_1+1 + 65, 1, 0.86,0.86);

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1+1 + 39, 1, 0 );
setRotateKey( spep_1+1 + 40, 1, -43 );
setRotateKey( spep_1+1 + 42, 1, -42.4 );
setRotateKey( spep_1+1 + 44, 1, -41.8 );
setRotateKey( spep_1+1 + 46, 1, -41.3 );
setRotateKey( spep_1+1 + 48, 1, -40.7 );
setRotateKey( spep_1+1 + 50, 1, -40.2 );
setRotateKey( spep_1+1 + 52, 1, -39.6 );
setRotateKey( spep_1+1 + 54, 1, -32.1 );
setRotateKey( spep_1+1 + 56, 1, -29.3 );
setRotateKey( spep_1+1 + 58, 1, -27.3 );
setRotateKey( spep_1+1 + 60, 1, -25.8 );
setRotateKey( spep_1+1 + 62, 1, -24.6 );
setRotateKey( spep_1+1 + 64, 1, -23.6 );
setRotateKey( spep_1+1 + 65, 1, -23.6 );

-- ** 音 ** --
--着地
SE012 = playSeVer2( spep_1 + 10, 1106, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 12, 1107, "", 0, 0, 0, -1);

--サマーソルト
SE014 = playSeVer2( spep_1 + 28, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 38, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 38, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_1 + 64, 1116, "",spep_1 + 132, 0, 36, 0.6);
setSeVolumeByWorkId( spep_1 + 64, SE017, 75 );
SE018 = playSeVer2( spep_1 + 64, 1121, "",spep_1 + 158, 0, 46, 0.6);
setSeVolumeByWorkId( spep_1 + 64, SE018, 64 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 82 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 66;


------------------------------------------------------
-- 敵を見つける悟空(40F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
find_f = entryEffectLife( spep_2 + 0, SP_04, 40, 0x100, -1, 0, 0, 0 );  --敵を見つける悟空  ef_004a
setEffMoveKey( spep_2 + 0, find_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, find_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, find_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 40, find_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, find_f, 0 );
setEffRotateKey( spep_2 + 40, find_f, 0 );
setEffAlphaKey( spep_2 + 0, find_f, 255 );
setEffAlphaKey( spep_2 + 40 -1, find_f, 255 );
setEffAlphaKey( spep_2 + 40, find_f, 0 );

find_b = entryEffectLife( spep_2 + 0, SP_05, 40, 0x80, -1, 0, 0, 0 );  --敵を見つける悟空  ef_004b
setEffMoveKey( spep_2 + 0, find_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, find_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, find_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 40, find_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, find_b, 0 );
setEffRotateKey( spep_2 + 40, find_b, 0 );
setEffAlphaKey( spep_2 + 0, find_b, 255 );
setEffAlphaKey( spep_2 + 40 -1, find_b, 255 );
setEffAlphaKey( spep_2 + 40, find_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 1, 1, 1 );
setDisp( spep_2 -3 + 43, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 1, 1, -221.9, -675.4 , 0 );
setMoveKey( spep_2 + 2, 1, -214.3, -652.6 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -206.8, -629.9 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -199.4, -607.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -192, -585.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -184.8, -563.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -177.6, -541.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -170.5, -520.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -163.5, -499.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -156.6, -478.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -149.7, -457.6 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -142.9, -437 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -136.2, -416.7 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -129.5, -396.5 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -122.9, -376.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -116.3, -356.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -109.8, -336.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -103.2, -317.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -96.8, -297.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -90.3, -277.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -82.5, -250.4 , 0 );
setMoveKey( spep_2 -3 + 43, 1, -82.5, -250.4 , 0 );

setScaleKey( spep_2 + 1, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 43, 1, 0.6, 0.6 );

setRotateKey( spep_2 + 1, 1, -35.2 );
setRotateKey( spep_2 + 2, 1, -34.8 );
setRotateKey( spep_2 -3 + 6, 1, -34.4 );
setRotateKey( spep_2 -3 + 8, 1, -33.9 );
setRotateKey( spep_2 -3 + 10, 1, -33.5 );
setRotateKey( spep_2 -3 + 12, 1, -33.1 );
setRotateKey( spep_2 -3 + 14, 1, -32.7 );
setRotateKey( spep_2 -3 + 16, 1, -32.2 );
setRotateKey( spep_2 -3 + 18, 1, -31.8 );
setRotateKey( spep_2 -3 + 20, 1, -31.4 );
setRotateKey( spep_2 -3 + 22, 1, -31 );
setRotateKey( spep_2 -3 + 24, 1, -30.6 );
setRotateKey( spep_2 -3 + 26, 1, -30.2 );
setRotateKey( spep_2 -3 + 28, 1, -29.9 );
setRotateKey( spep_2 -3 + 30, 1, -29.5 );
setRotateKey( spep_2 -3 + 32, 1, -29.1 );
setRotateKey( spep_2 -3 + 34, 1, -28.7 );
setRotateKey( spep_2 -3 + 36, 1, -28.3 );
setRotateKey( spep_2 -3 + 38, 1, -28 );
setRotateKey( spep_2 -3 + 40, 1, -27.6 );
setRotateKey( spep_2 -3 + 42, 1, -27.2 );
setRotateKey( spep_2 -3 + 43, 1, -27.2 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 40;


------------------------------------------------------
-- 台詞カットイン(194F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
--[[cutin_f = entryEffectLife( spep_3 + 0, SP_06, 194, 0x100, -1, 0, 0, 0 );  --台詞カットイン   ef_005
setEffMoveKey( spep_3 + 0, cutin_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 194, cutin_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, cutin_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 194, cutin_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutin_f, 0 );
setEffRotateKey( spep_3 + 194, cutin_f, 0 );
setEffAlphaKey( spep_3 + 0, cutin_f, 255 );
setEffAlphaKey( spep_3 + 194 -1, cutin_f, 255 );
setEffAlphaKey( spep_3 + 194, cutin_f, 0 );]]

cutin_b = entryEffectLife( spep_3 + 0, SP_07, 194, 0x80, -1, 0, 0, 0 );  --台詞カットイン   ef_006
setEffMoveKey( spep_3 + 0, cutin_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 194, cutin_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, cutin_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 194, cutin_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, cutin_b, 0 );
setEffRotateKey( spep_3 + 194, cutin_b, 0 );
setEffAlphaKey( spep_3 + 0, cutin_b, 255 );
setEffAlphaKey( spep_3 + 194 -1, cutin_b, 255 );
setEffAlphaKey( spep_3 + 194, cutin_b, 0 );

spep_x = spep_3 + 3;

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 75, 0x100, -1, 0, 85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 75, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 85, 515.5 , 0 );
setEffMoveKey( spep_x + 91, ctgogo, 85, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 83, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 84, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 85, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 86, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 87, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 88, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 89, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 90, ctgogo, -1.69 , 1.69 );
setEffScaleKey( spep_x + 91, ctgogo, -1.69, 1.69 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 91, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 91, ctgogo, 255 );

spep_x2 = spep_3 + 101;

-- ** 書き文字エントリー ** --
ctgogo2 = entryEffectLife( spep_x2 + 16,  190006, 75, 0x100, -1, 0, 55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x2 + 16, ctgogo2, 75, 10 );
setEffMoveKey( spep_x2 + 16, ctgogo2, 55, 515.5 , 0 );
setEffMoveKey( spep_x2 + 91, ctgogo2, 55, 515.5 , 0 );
setEffScaleKey( spep_x2 + 16, ctgogo2, -0.7, 0.7 );
setEffScaleKey( spep_x2 + 83, ctgogo2, -0.7, 0.7 );
setEffScaleKey( spep_x2 + 84, ctgogo2, -1.0, 1.0 );
setEffScaleKey( spep_x2 + 85, ctgogo2, -1.0, 1.0 );
setEffScaleKey( spep_x2 + 86, ctgogo2, -1.09, 1.09 );
setEffScaleKey( spep_x2 + 87, ctgogo2, -1.09, 1.09 );
setEffScaleKey( spep_x2 + 88, ctgogo2, -1.39, 1.39 );
setEffScaleKey( spep_x2 + 89, ctgogo2, -1.39, 1.39 );
setEffScaleKey( spep_x2 + 90, ctgogo2, -1.69 , 1.69 );
setEffScaleKey( spep_x2 + 91, ctgogo2, -1.69, 1.69 );
--setEffScaleKey( spep_x2 + 84, ctgogo2, 1.69, 1.69 );
setEffRotateKey( spep_x2 + 16, ctgogo2, 0 );
setEffRotateKey( spep_x2 + 91, ctgogo2, 0 );
setEffAlphaKey( spep_x2 + 16, ctgogo2, 255 );
setEffAlphaKey( spep_x2 + 91, ctgogo2, 255 );

-- ** 音 ** --
--顔カットイン
SE019 = playSeVer2( spep_3 + 4, 1018, "", 0, 0, 0, -1);

--悟空腕前に出す
SE020 = playSeVer2( spep_3 + 14, 1013, "", 0, 0, 0, -1);

--悟空構える
SE021 = playSeVer2( spep_3 + 34, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_3 + 42, 1006, "", 0, 0, 0, -1);

--パン腕を前に出す
SE023 = playSeVer2( spep_3 + 92, 1003, "", 0, 0, 0, -1);

--パン顔カットイン
SE024 = playSeVer2( spep_3 + 102, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 102, SE024, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 194 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 194;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 画面２分割(84F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_5 + 0, SP_08, 83, 0x100, -1, 0, 0, 0 );  --画面２分割 ef_007
setEffMoveKey( spep_5 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 83, shot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_5 + 83, shot, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot, 0 );
setEffRotateKey( spep_5 + 83, shot, 0 );
setEffAlphaKey( spep_5 + 0, shot, 255 );
setEffAlphaKey( spep_5 + 83 -1, shot, 255 );
setEffAlphaKey( spep_5 + 83, shot, 0 );

ctcdon = entryEffectLife( spep_5 -3 + 18,  10019, 36, 0x100, -1, 0, -112.7, 349.7 ); --ドンッ
setEffMoveKey( spep_5 -3 + 18, ctcdon, -112.7, 349.7 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctcdon, -105.1, 359 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctcdon, -118.3, 343.5 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctcdon, -115.7, 359.6 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctcdon, -121.2, 340.7 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctcdon, -108.2, 350.3 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctcdon, -121.2, 352.8 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctcdon, -110.7, 340 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctcdon, -118.2, 357.2 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctcdon, -115.5, 343.4 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctcdon, -111.9, 353 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctcdon, -111.7, 343.7 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctcdon, -118.3, 350.6 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctcdon, -110.8, 343.7 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctcdon, -114.6, 354.8 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctcdon, -111.7, 346.8 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctcdon, -112.6, 353.7 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctcdon, -113.1, 345.3 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctcdon, -113.1, 345.3 , 0 );

setEffScaleKey( spep_5 -3 + 18, ctcdon, 2.69, 2.7 );
setEffScaleKey( spep_5 -3 + 54, ctcdon, 2.69, 2.7 );

setEffRotateKey( spep_5 -3 + 18, ctcdon, -40.4 );
setEffRotateKey( spep_5 -3 + 54, ctcdon, -40.4 );

setEffAlphaKey( spep_5 -3 + 18, ctcdon, 255 );
setEffAlphaKey( spep_5 -3 + 46, ctcdon, 255 );
setEffAlphaKey( spep_5 -3 + 48, ctcdon, 191 );
setEffAlphaKey( spep_5 -3 + 50, ctcdon, 128 );
setEffAlphaKey( spep_5 -3 + 52, ctcdon, 64 );
setEffAlphaKey( spep_5 -3 + 54, ctcdon, 0 );


-- ** 音 ** --
--気弾発射
SE026 = playSeVer2( spep_5 + 4, 1133, "",spep_5 + 153, 0, 18, -1);
setSeVolumeByWorkId( spep_5 + 4, SE026, 94 );
SE027 = playSeVer2( spep_5 + 4, 1146, "",spep_5 + 153, 0, 18, -1);
setSeVolumeByWorkId( spep_5 + 4, SE027, 83 );
SE028 = playSeVer2( spep_5 + 4, 1177, "",spep_5 + 153, 0, 18, -1);
setSeVolumeByWorkId( spep_5 + 4, SE028, 83 );

--気弾飛んでいく
SE029 = playSeVer2( spep_5 + 76, 1212, "",spep_5 + 153, 10, 18, -1);
setSeVolumeByWorkId( spep_5 + 76, SE029, 68 );
setStartTimeMs( SE029,  950 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 83 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 83;


------------------------------------------------------
-- 敵に迫る気弾→爆発(246F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --敵に迫る気弾→爆発 ef_008
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 246, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 246, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 246, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 246, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --敵に迫る気弾→爆発 ef_009
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 246, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 246, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 246, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 246, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 46, 1, 100 );
changeAnime( spep_6 + 0, 1, 5 );

setMoveKey( spep_6 + 0, 1, 8.5, -21.3 , 0 );
setMoveKey( spep_6 + 1, 1, 8.7, -21.5 , 0 );
setMoveKey( spep_6 + 2, 1, 8.8, -21.6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 8.9, -21.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 9, -21.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 9.1, -21.9 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 9.3, -22 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 9.4, -22.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 9.5, -22.2 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 9.6, -22.3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 9.7, -22.4 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 9.8, -22.5 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 9.9, -22.6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 10.1, -22.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 10.2, -22.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 10.3, -22.9 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 10.4, -23 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 10.5, -23.1 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 10.6, -23.2 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 10.7, -23.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 10.9, -23.5 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 11, -23.6 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 11.1, -23.7 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 11.1, -23.7 , 0 );

setScaleKey( spep_6 + 0, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 1, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 2, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 6, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 10, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 12, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 14, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 16, 1, 0.83, 0.83 );
setScaleKey( spep_6 -3 + 18, 1, 0.82, 0.82 );
setScaleKey( spep_6 -3 + 20, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_6 -3 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_6 -3 + 26, 1, 0.77, 0.77 );
setScaleKey( spep_6 -3 + 28, 1, 0.75, 0.75 );
setScaleKey( spep_6 -3 + 30, 1, 0.74, 0.74 );
setScaleKey( spep_6 -3 + 32, 1, 0.73, 0.73 );
setScaleKey( spep_6 -3 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_6 -3 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 38, 1, 0.69, 0.69 );
setScaleKey( spep_6 -3 + 40, 1, 0.67, 0.67 );
setScaleKey( spep_6 -3 + 42, 1, 0.66, 0.66 );
setScaleKey( spep_6 -3 + 44, 1, 0.65, 0.65 );
setScaleKey( spep_6 -3 + 46, 1, 0.65, 0.65 );

setRotateKey( spep_6 + 0, 1, -0 );
setRotateKey( spep_6 -3 + 46, 1, -0 );

-- ** 音 ** --
--気弾クロス
SE030 = playSeVer2( spep_6 + 46, 1179, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_6 + 46, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 46, SE031, 71 );

--爆発
SE032 = playSeVer2( spep_6 + 116, 1023, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_6 + 116, 1067, "", 0, 0, 0, -1);

--ラスト爆発
SE034 = playSeVer2( spep_6 + 162, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 246 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 76 );
endPhase( spep_6 + 236 );

end