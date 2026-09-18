--1024930:LR_メタルクウラ_超必殺技:スーパーノヴァ
--sp_effect_a2_00188
--sp2414

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
SP_01 = 160476;  --待機  ef_001
SP_02 = 160477;  --待機　裏    ef_001_back
SP_03 = 160480;  --連続攻撃    ef_002
SP_04 = 160481;  --連続攻撃　裏  ef_002_back
SP_05 = 160484;  --連続攻撃    ef_003
SP_06 = 160485;  --連続攻撃　裏  ef_003_back
SP_07 = 160488;  --敵墜落 ef_004
SP_08 = 160489;  --敵墜落　裏   ef_004_back
SP_09 = 160492;  --光弾攻撃    ef_005
SP_10 = 160493;  --光弾攻撃　裏  ef_005_back
SP_11 = 160496;  --KO演出    ef_006

--敵側
SP_01r = 160478;  --待機　敵側   ef_001_re
SP_02r = 160479;  --待機　敵側　裏 ef_001_back_re
SP_03r = 160482;  --連続攻撃　敵側 ef_002_re
SP_04r = 160483;  --連続攻撃　敵側　裏   ef_002_back_re
SP_05r = 160486;  --連続攻撃　敵側 ef_003_re
SP_06r = 160487;  --連続攻撃　敵側　裏   ef_003_back_re
SP_07r = 160490;  --敵墜落　敵側  ef_004_re
SP_08r = 160491;  --敵墜落　敵側　裏    ef_004_back_re
SP_09r = 160494;  --光弾攻撃　敵側 ef_005_re
SP_10r = 160495;  --光弾攻撃　敵側　裏   ef_005_back_re
SP_11r = 160497;  --KO演出　敵側 ef_006_re


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 待機(218F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 218, 0x100, -1, 0, 0, 0 );  --待機  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 218, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 218 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 218, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 218, 0x80, -1, 0, 0, 0 );  --待機　裏    ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 218, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 218 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 218, first_b, 0 );

spep_x = spep_0 + 94;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 117 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 94, 1, 0 );

setMoveKey( spep_0 + 0, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 1, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 2, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 3, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 4, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 5, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 6, 1, 132, -41 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 132, -41 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 1, 1, 1, 1 );
setScaleKey( spep_0 + 2, 1, 1, 1 );
setScaleKey( spep_0 + 3, 1, 1, 1 );
setScaleKey( spep_0 + 4, 1, 1, 1 );
setScaleKey( spep_0 + 5, 1, 1, 1 );
setScaleKey( spep_0 + 6, 1, 1, 1 );
setScaleKey( spep_0 -3 + 94, 1, 1, 1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 94, 1, 0 );

-- ** 音 ** --
--尻尾地面打つ
SE001 = playSeVer2( spep_0 + 10, 1069, "",spep_0 + 68, 2, 30, -1);
setSeVolumeByWorkId( spep_0 + 10, SE001, 68 );
setStartTimeMs( SE001,  250 );
SE002 = playSeVer2( spep_0 + 8, 1110, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 8, 1168, "",spep_0 + 68, 0, 30, -1);

--尻尾地面打つ2
SE004 = playSeVer2( spep_0 + 50, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 71 );
SE005 = playSeVer2( spep_0 + 50, 1169, "",spep_0 + 96, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 75 );

--顔カットイン
SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 218 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
   
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

--瞬間移動
SE007 = playSeVer2( spep_0 + 198, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE007, 122 );
SE008 = playSeVer2( spep_0 + 198, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE008, 73 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 218;


------------------------------------------------------
-- 連続攻撃(156F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_03, 156, 0x100, -1, 0, 0, 0 );  --連続攻撃    ef_002
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 156, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 156 -1, rush_f, 255 );
setEffAlphaKey( spep_1 + 156, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_04, 156, 0x80, -1, 0, 0, 0 );  --連続攻撃　裏  ef_002_back
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 156, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 156 -1, rush_b, 255 );
setEffAlphaKey( spep_1 + 156, rush_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 126, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 8, 1, 108 );
changeAnime( spep_1 -3 + 82, 1, 6 );
changeAnime( spep_1 -3 + 112, 1, 108 );
changeAnime( spep_1 -3 + 118, 1, 106 );

setMoveKey( spep_1 + 0, 1, -25.3, -39.9 , 0 );
setMoveKey( spep_1 + 1, 1, -23.3, -40.2 , 0 );
setMoveKey( spep_1 + 2, 1, -21.3, -40.5 , 0 );
setMoveKey( spep_1 -3 + 7, 1, -19.3, -40.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 24.9, -32.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 103.1, -11.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 8.7, -87.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 12.7, -4.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 97.5, -79.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 93.4, 1.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 78.7, -83.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 35.5, -52.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 113.8, -65.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 72.7, -3.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 133.6, -46.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 75.4, -81.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 135.9, -36.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 46.3, -35.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 108, -1.6 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 84.7, -54.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 110.5, -51.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 76, -33.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 125.7, -38.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 97.1, -15.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 91.8, -47 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 107, -31.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 109.7, -31.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 109.5, -31.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 110.9, -31.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 113.4, -32.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 116.4, -33.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 119.9, -34 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 123.8, -34.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 128.2, -35.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 133, -36.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 137.4, -37.1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 141.3, -37.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 144.8, -38.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 147.8, -39.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 150.3, -40.3 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 19.6, 31 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -68.5, -29.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -127, -9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -39.7, -111 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -50.5, -61.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -17.2, -53.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -96.4, -95.7 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 4.2, -104.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -25.2, -32.1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -79.7, -105.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -14.2, -69.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -25.7, -74.4 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -37.3, -79.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -35.8, -80.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -34.3, -82.1 , 0 );
setMoveKey( spep_1 -3 + 111, 1, -32.8, -83.5 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 42.6, 4.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 128.6, 75.2 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 92.5, -6.8 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 325.4, 123.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 511.2, 254.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 701.1, 281.2 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 813, 387.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 813, 387.9 , 0 );

s1 = 0.2;
s2 = 0.3;
setScaleKey( spep_1 -3 + 0, 1, 2.56 +s1, 2.56 +s1 );
setScaleKey( spep_1 -3 + 7, 1, 2.56 +s1, 2.56 +s1 );
setScaleKey( spep_1 -3 + 8, 1, 2.87 +s1, 2.87 +s1 );
setScaleKey( spep_1 -3 + 10, 1, 2.86 +s1, 2.86 +s1 );
setScaleKey( spep_1 -3 + 14, 1, 2.86 +s1, 2.86 +s1 );
setScaleKey( spep_1 -3 + 16, 1, 2.85 +s1, 2.85 +s1 );
setScaleKey( spep_1 -3 + 26, 1, 2.85 +s1, 2.85 +s1 );
setScaleKey( spep_1 -3 + 28, 1, 2.84 +s1, 2.84 +s1 );
setScaleKey( spep_1 -3 + 81, 1, 2.84 +s1, 2.84 +s1 );--
setScaleKey( spep_1 -3 + 82, 1, 2.31 +s2, 2.31 +s2 );
setScaleKey( spep_1 -3 + 84, 1, 2.3 +s2, 2.3 +s2 );
setScaleKey( spep_1 -3 + 88, 1, 2.3 +s2, 2.3 +s2 );
setScaleKey( spep_1 -3 + 90, 1, 2.29 +s2, 2.29 +s2 );
setScaleKey( spep_1 -3 + 100, 1, 2.29 +s2, 2.29 +s2 );
setScaleKey( spep_1 -3 + 102, 1, 2.28 +s2, 2.28 +s2 );
setScaleKey( spep_1 -3 + 111, 1, 2.28 +s2, 2.28 +s2 );--
setScaleKey( spep_1 -3 + 112, 1, 2.72 +s1, 2.72 +s1 );
setScaleKey( spep_1 -3 + 114, 1, 2.72 +s1, 2.72 +s1 );
setScaleKey( spep_1 -3 + 117, 1, 2.71 +s1, 2.71 +s1 );--
setScaleKey( spep_1 -3 + 118, 1, 2.44 +s2, 2.44 +s2 );
setScaleKey( spep_1 -3 + 120, 1, 2.5 +s2, 2.5 +s2 );
setScaleKey( spep_1 -3 + 122, 1, 2.56 +s2, 2.56 +s2 );
setScaleKey( spep_1 -3 + 124, 1, 2.62 +s2, 2.62 +s2 );
setScaleKey( spep_1 -3 + 126, 1, 2.62 +s2, 2.62 +s2 );

setRotateKey( spep_1 -3 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 56, 1, 0 );
setRotateKey( spep_1 -3 + 58, 1, 0.2 );
setRotateKey( spep_1 -3 + 60, 1, 0.4 );
setRotateKey( spep_1 -3 + 62, 1, 0.5 );
setRotateKey( spep_1 -3 + 64, 1, 0.7 );
setRotateKey( spep_1 -3 + 66, 1, 0.9 );
setRotateKey( spep_1 -3 + 68, 1, 1.1 );
setRotateKey( spep_1 -3 + 70, 1, 1.2 );
setRotateKey( spep_1 -3 + 72, 1, 1.4 );
setRotateKey( spep_1 -3 + 74, 1, 1.6 );
setRotateKey( spep_1 -3 + 76, 1, 1.8 );
setRotateKey( spep_1 -3 + 78, 1, 2 );
setRotateKey( spep_1 -3 + 81, 1, -3.5 );
setRotateKey( spep_1 -3 + 82, 1, 38.7 );
setRotateKey( spep_1 -3 + 84, 1, 21.4 );
setRotateKey( spep_1 -3 + 86, 1, 10.2 );
setRotateKey( spep_1 -3 + 88, 1, 2.9 );
setRotateKey( spep_1 -3 + 90, 1, -2.2 );
setRotateKey( spep_1 -3 + 92, 1, -5.9 );
setRotateKey( spep_1 -3 + 94, 1, -8.6 );
setRotateKey( spep_1 -3 + 96, 1, -10.7 );
setRotateKey( spep_1 -3 + 98, 1, -12.5 );
setRotateKey( spep_1 -3 + 100, 1, -14 );
setRotateKey( spep_1 -3 + 102, 1, -15.4 );
setRotateKey( spep_1 -3 + 104, 1, -16.8 );
setRotateKey( spep_1 -3 + 106, 1, -18.1 );
setRotateKey( spep_1 -3 + 108, 1, -19.5 );
setRotateKey( spep_1 -3 + 111, 1, -21 );
setRotateKey( spep_1 -3 + 112, 1, -54.7 );
setRotateKey( spep_1 -3 + 114, 1, -54.7 );
setRotateKey( spep_1 -3 + 117, 1, -45.5 );
setRotateKey( spep_1 -3 + 118, 1, -12.3 );
setRotateKey( spep_1 -3 + 126, 1, -12.3 );

-- ** 音 ** --
--腹パン
SE009 = playSeVer2( spep_1 + 4, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE009, 92 );
SE010 = playSeVer2( spep_1 + 4, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE010, 81 );
SE011 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE011, 88 );

--回り込む
SE012 = playSeVer2( spep_1 + 44, 1004, "", 0, 0, 0, -1);

--尻尾アタック
SE013 = playSeVer2( spep_1 + 70, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 70, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE014, 86 );
SE015 = playSeVer2( spep_1 + 70, 1009, "", 0, 0, 0, -1);

--尻尾アタック2
SE016 = playSeVer2( spep_1 + 98, 1180, "",spep_1 + 178, 0, 48, -1);
setSeVolumeByWorkId( spep_1 + 98, SE016, 89 );
SE017 = playSeVer2( spep_1 + 98, 1187, "", 0, 0, 0, -1);

--追いかける
SE018 = playSeVer2( spep_1 + 132, 1383, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 132, 1117, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 132, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 132, SE020, 61 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 156;


------------------------------------------------------
-- 連続攻撃(210F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_05, 210, 0x100, -1, 0, 0, 0 );  --連続攻撃    ef_003
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 210, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 210, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 210, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 210 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 210, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_06, 210, 0x80, -1, 0, 0, 0 );  --連続攻撃　裏  ef_003_back
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 210, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 210, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 210, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 210 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 210, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 1, 1, 1 );
setDisp( spep_2 -3 + 206, 1, 0 );
changeAnime( spep_2 + 1, 1, 106 );
changeAnime( spep_2 -3 + 68, 1, 101 );
changeAnime( spep_2 -3 + 86, 1, 106 );
changeAnime( spep_2 -3 + 148, 1, 108 );
changeAnime( spep_2 -3 + 190, 1, 106 );

setMoveKey( spep_2 + 1, 1, -571, -420.9 , 0 );
setMoveKey( spep_2 + 2, 1, -539.8, -399.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -508.6, -377.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -477.4, -356.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -446.2, -334.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -415, -313 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -383.8, -291.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -352.7, -269.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -321.5, -248.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -290.3, -226.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -259.1, -205.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -227.9, -183.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -196.7, -161.9 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -165.5, -140.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -134.3, -118.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -103.1, -97.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -71.9, -75.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -40.7, -54.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -9.5, -32.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 21.7, -10.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 52.8, 10.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 84, 32.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 115.2, 53.8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 146.4, 75.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 177.6, 97 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 208.8, 118.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 240, 140.1 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 240, 140.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 66.4, -963.5 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 112.3, -920.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 140.1, -894.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 154.4, -881.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 159.7, -876.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 160.4, -875.5 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 160.4, -875.5 , 0 );--
setMoveKey( spep_2 -3 + 68, 1, 181.2, -19.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 181.2, -20.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 181.3, -22.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 181.4, -23.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 181.4, -25.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 181.5, -26.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 187.6, -50.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 187.7, -51.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 237.8, -3.3 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 237.8, -3.3 , 0 );--
setMoveKey( spep_2 -3 + 86, 1, 66.4, -67 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 145.9, -26.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 60.3, 37.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 161, 30.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 77.8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 159.7, 0.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 119.9, 81.5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 139.4, -11.9 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 165.6, 44.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 103.4, 51.3 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 160.9, 34.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 126.2, 17.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 141.3, 27.2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 142.3, 26.5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 143.1, 25.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 143.9, 25.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 144.6, 24.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 145.3, 23.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 145.9, 22.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 146.6, 21.8 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 147.2, 20.9 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 147.8, 20 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 148.4, 19.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 149.2, 18.2 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 149.2, 18.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 80.4, 25.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 79.8, 25.9 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 79.2, 26.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 78.6, 27.2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 78, 27.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 77.4, 28.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 76.8, 29.3 , 0 );
setMoveKey( spep_2 -3 + 147, 1, 76.8, 29.3 , 0 );--
setMoveKey( spep_2 -3 + 148, 1, 159.6, -124.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 261.1, -168.1 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 197.5, -42.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 298.7, -64.6 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 183.7, -131.6 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 307.3, -68.5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 203.2, -90.6 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 291.4, -60.6 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 251.1, -111.2 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 238.6, -53.1 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 257.7, -72.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 256.7, -71.2 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 258.2, -66.2 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 259.6, -61.3 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 261.1, -56.3 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 262.5, -51.4 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 263.9, -46.5 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 265.4, -41.6 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 266.8, -36.8 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 265.7, -35.9 , 0 );
setMoveKey( spep_2 -3 + 187, 1, 265.7, -35.9 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 272.7, -220.1 , 0 );
setMoveKey( spep_2 -3 + 189, 1, 272.7, -220.1 , 0 );--
setMoveKey( spep_2 -3 + 190, 1, 337.8, -473.2 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 300.4, -367 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 318.1, -556.9 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 425.7, -482.8 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 355, -490.8 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 459, -573.6 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 386.1, -611.7 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 464.8, -553.4 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 464.8, -553.4 , 0 );

s3 = 0.2;
setScaleKey( spep_2 + 1, 1, 1.33 +s3, 1.33 +s3 );
setScaleKey( spep_2 -3 + 54, 1, 1.33 +s3, 1.33 +s3 );
setScaleKey( spep_2 -3 + 55, 1, 1.33 +s3, 1.33 +s3 );
setScaleKey( spep_2 -3 + 56, 1, 12.5, 12.5 );
setScaleKey( spep_2 -3 + 66, 1, 12.5, 12.5 );
setScaleKey( spep_2 -3 + 67, 1, 12.5, 12.5 );--
setScaleKey( spep_2 -3 + 68, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 70, 1, 3.07, 3.07 );
setScaleKey( spep_2 -3 + 72, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 74, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 76, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 78, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 80, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 82, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 84, 1, 2.92, 2.92 );
setScaleKey( spep_2 -3 + 85, 1, 2.92, 2.92 );--
setScaleKey( spep_2 -3 + 86, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 88, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 90, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 92, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 94, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 96, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 98, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 100, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 102, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 104, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 106, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 108, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 110, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 112, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 114, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 116, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 118, 1, 2.89, 2.89 );
setScaleKey( spep_2 -3 + 120, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 122, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 124, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 126, 1, 2.92, 2.92 );
setScaleKey( spep_2 -3 + 128, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 130, 1, 2.94, 2.94 );
setScaleKey( spep_2 -3 + 132, 1, 2.94, 2.94 );
setScaleKey( spep_2 -3 + 133, 1, 2.94, 2.94 );
setScaleKey( spep_2 -3 + 134, 1, 4.51, 4.51 );
setScaleKey( spep_2 -3 + 136, 1, 4.5, 4.5 );
setScaleKey( spep_2 -3 + 138, 1, 4.49, 4.49 );
setScaleKey( spep_2 -3 + 140, 1, 4.48, 4.48 );
setScaleKey( spep_2 -3 + 142, 1, 4.47, 4.47 );
setScaleKey( spep_2 -3 + 144, 1, 4.46, 4.46 );
setScaleKey( spep_2 -3 + 146, 1, 4.45, 4.45 );
setScaleKey( spep_2 -3 + 147, 1, 4.45, 4.45 );--
setScaleKey( spep_2 -3 + 148, 1, 5.07, 5.07 );
setScaleKey( spep_2 -3 + 150, 1, 5.06, 5.06 );
setScaleKey( spep_2 -3 + 152, 1, 5.05, 5.05 );
setScaleKey( spep_2 -3 + 154, 1, 5.04, 5.04 );
setScaleKey( spep_2 -3 + 156, 1, 5.03, 5.03 );
setScaleKey( spep_2 -3 + 158, 1, 5.02, 5.02 );
setScaleKey( spep_2 -3 + 160, 1, 5.01, 5.01 );
setScaleKey( spep_2 -3 + 162, 1, 5, 5 );
setScaleKey( spep_2 -3 + 164, 1, 4.99, 4.99 );
setScaleKey( spep_2 -3 + 166, 1, 4.98, 4.98 );
setScaleKey( spep_2 -3 + 168, 1, 4.97, 4.97 );
setScaleKey( spep_2 -3 + 170, 1, 4.96, 4.96 );
setScaleKey( spep_2 -3 + 172, 1, 4.98, 4.98 );
setScaleKey( spep_2 -3 + 174, 1, 5, 5 );
setScaleKey( spep_2 -3 + 176, 1, 5.02, 5.02 );
setScaleKey( spep_2 -3 + 178, 1, 5.05, 5.05 );
setScaleKey( spep_2 -3 + 180, 1, 5.07, 5.07 );
setScaleKey( spep_2 -3 + 182, 1, 5.09, 5.09 );
setScaleKey( spep_2 -3 + 184, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 186, 1, 5.1, 5.1 );
setScaleKey( spep_2 -3 + 189, 1, 5.1, 5.1 );--
setScaleKey( spep_2 -3 + 190, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 192, 1, 4.96, 4.96 );
setScaleKey( spep_2 -3 + 194, 1, 4.86, 4.86 );
setScaleKey( spep_2 -3 + 196, 1, 4.8, 4.8 );
setScaleKey( spep_2 -3 + 198, 1, 4.76, 4.76 );
setScaleKey( spep_2 -3 + 200, 1, 4.74, 4.74 );
setScaleKey( spep_2 -3 + 202, 1, 4.73, 4.73 );
setScaleKey( spep_2 -3 + 204, 1, 4.72, 4.72 );
setScaleKey( spep_2 -3 + 206, 1, 4.72, 4.72 );


setRotateKey( spep_2 + 1, 1, 0 );
setRotateKey( spep_2 -3 + 54, 1, 0 );
setRotateKey( spep_2 -3 + 55, 1, 0 );
setRotateKey( spep_2 -3 + 56, 1, -67.2 );
setRotateKey( spep_2 -3 + 66, 1, -67.2 );
setRotateKey( spep_2 -3 + 67, 1, -67.2 );--
setRotateKey( spep_2 -3 + 68, 1, -12.3 );
setRotateKey( spep_2 -3 + 70, 1, -14.2 );
setRotateKey( spep_2 -3 + 72, 1, -15.4 );
setRotateKey( spep_2 -3 + 74, 1, -16 );
setRotateKey( spep_2 -3 + 76, 1, -16.2 );
setRotateKey( spep_2 -3 + 78, 1, -16.3 );
setRotateKey( spep_2 -3 + 80, 1, -42.8 );
setRotateKey( spep_2 -3 + 85, 1, -42.8 );--
setRotateKey( spep_2 -3 + 86, 1, -55 );
setRotateKey( spep_2 -3 + 88, 1, -52.7 );
setRotateKey( spep_2 -3 + 90, 1, -51 );
setRotateKey( spep_2 -3 + 92, 1, -49.6 );
setRotateKey( spep_2 -3 + 94, 1, -48.5 );
setRotateKey( spep_2 -3 + 96, 1, -47.7 );
setRotateKey( spep_2 -3 + 98, 1, -47 );
setRotateKey( spep_2 -3 + 100, 1, -46.4 );
setRotateKey( spep_2 -3 + 102, 1, -46 );
setRotateKey( spep_2 -3 + 104, 1, -45.6 );
setRotateKey( spep_2 -3 + 106, 1, -45.2 );
setRotateKey( spep_2 -3 + 108, 1, -45 );
setRotateKey( spep_2 -3 + 110, 1, -44.7 );
setRotateKey( spep_2 -3 + 112, 1, -44.5 );
setRotateKey( spep_2 -3 + 114, 1, -44.3 );
setRotateKey( spep_2 -3 + 116, 1, -44.2 );
setRotateKey( spep_2 -3 + 118, 1, -44 );
setRotateKey( spep_2 -3 + 120, 1, -43.8 );
setRotateKey( spep_2 -3 + 122, 1, -43.7 );
setRotateKey( spep_2 -3 + 124, 1, -43.6 );
setRotateKey( spep_2 -3 + 126, 1, -43.4 );
setRotateKey( spep_2 -3 + 128, 1, -43.3 );
setRotateKey( spep_2 -3 + 130, 1, -43.2 );
setRotateKey( spep_2 -3 + 132, 1, -43.1 );
setRotateKey( spep_2 -3 + 133, 1, -43.1 );
setRotateKey( spep_2 -3 + 134, 1, -60.5 );
setRotateKey( spep_2 -3 + 146, 1, -60.5 );
setRotateKey( spep_2 -3 + 147, 1, -60.5 );--
setRotateKey( spep_2 -3 + 148, 1, -3.8 );
setRotateKey( spep_2 -3 + 150, 1, -5.1 );
setRotateKey( spep_2 -3 + 152, 1, -6.1 );
setRotateKey( spep_2 -3 + 154, 1, -6.8 );
setRotateKey( spep_2 -3 + 156, 1, -7.3 );
setRotateKey( spep_2 -3 + 158, 1, -7.6 );
setRotateKey( spep_2 -3 + 160, 1, -7.8 );
setRotateKey( spep_2 -3 + 162, 1, -7.9 );
setRotateKey( spep_2 -3 + 164, 1, -8 );
setRotateKey( spep_2 -3 + 170, 1, -8 );
setRotateKey( spep_2 -3 + 172, 1, -8.1 );
setRotateKey( spep_2 -3 + 174, 1, -8.2 );
setRotateKey( spep_2 -3 + 176, 1, -8.3 );
setRotateKey( spep_2 -3 + 178, 1, -8.4 );
setRotateKey( spep_2 -3 + 180, 1, -8.5 );
setRotateKey( spep_2 -3 + 182, 1, -8.6 );
setRotateKey( spep_2 -3 + 184, 1, -8.7 );
setRotateKey( spep_2 -3 + 186, 1, -8.7 );
setRotateKey( spep_2 -3 + 187, 1, -8.7 );
setRotateKey( spep_2 -3 + 188, 1, -43.4 );
setRotateKey( spep_2 -3 + 189, 1, -43.4 );--
setRotateKey( spep_2 -3 + 190, 1, -78 );
setRotateKey( spep_2 -3 + 194, 1, -78 );
setRotateKey( spep_2 -3 + 196, 1, -75.1 );
setRotateKey( spep_2 -3 + 198, 1, -72.2 );
setRotateKey( spep_2 -3 + 200, 1, -69.3 );
setRotateKey( spep_2 -3 + 202, 1, -66.4 );
setRotateKey( spep_2 -3 + 204, 1, -63.5 );
setRotateKey( spep_2 -3 + 206, 1, -63.5 );

-- ** 音 ** --
--顔掴む
SE021 = playSeVer2( spep_2 + 50, 1012, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 52, 1006, "", 0, 0, 0, -1);

--膝蹴り
SE023 = playSeVer2( spep_2 + 72, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 72, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 72, 1180, "",spep_2 + 170, 0, 46, -1);

--パンチ
SE026 = playSeVer2( spep_2 + 138, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 138, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE027, 65 );

--パンチ２
SE028 = playSeVer2( spep_2 + 182, 1120, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 182, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE029, 64 );
SE030 = playSeVer2( spep_2 + 182, 1180, "", 0, 0, 0, -1);

--敵落ちてく
SE031 = playSeVer2( spep_2 + 204, 1121, "",spep_2 + 292, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 210 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 210;


------------------------------------------------------
-- 敵墜落(124F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
fall_f = entryEffectLife( spep_3 + 0, SP_07, 124, 0x100, -1, 0, 0, 0 );  --敵墜落 ef_004
setEffMoveKey( spep_3 + 0, fall_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 124, fall_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fall_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 124, fall_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall_f, 0 );
setEffRotateKey( spep_3 + 124, fall_f, 0 );
setEffAlphaKey( spep_3 + 0, fall_f, 255 );
setEffAlphaKey( spep_3 + 124 -1, fall_f, 255 );
setEffAlphaKey( spep_3 + 124, fall_f, 0 );

fall_b = entryEffectLife( spep_3 + 0, SP_08, 124, 0x80, -1, 0, 0, 0 );  --敵墜落　裏   ef_004_back
setEffMoveKey( spep_3 + 0, fall_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 124, fall_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fall_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 124, fall_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall_b, 0 );
setEffRotateKey( spep_3 + 124, fall_b, 0 );
setEffAlphaKey( spep_3 + 0, fall_b, 255 );
setEffAlphaKey( spep_3 + 124 -1, fall_b, 255 );
setEffAlphaKey( spep_3 + 124, fall_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 53, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -12, -6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -12, -6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -12, -6.1 , 0 );
setMoveKey( spep_3 -3 + 53, 1, -12, -6.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 1, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 2, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 10, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 12, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 14, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 16, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 18, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 20, 1, 0.18, 0.18 );
setScaleKey( spep_3 -3 + 22, 1, 0.16, 0.16 );
setScaleKey( spep_3 -3 + 24, 1, 0.15, 0.15 );
setScaleKey( spep_3 -3 + 26, 1, 0.14, 0.14 );
setScaleKey( spep_3 -3 + 28, 1, 0.13, 0.13 );
setScaleKey( spep_3 -3 + 30, 1, 0.11, 0.11 );
setScaleKey( spep_3 -3 + 32, 1, 0.1, 0.1 );
setScaleKey( spep_3 -3 + 34, 1, 0.09, 0.09 );
setScaleKey( spep_3 -3 + 36, 1, 0.08, 0.08 );
setScaleKey( spep_3 -3 + 38, 1, 0.07, 0.07 );
setScaleKey( spep_3 -3 + 40, 1, 0.06, 0.06 );
setScaleKey( spep_3 -3 + 42, 1, 0.06, 0.06 );
setScaleKey( spep_3 -3 + 44, 1, 0.05, 0.05 );
setScaleKey( spep_3 -3 + 46, 1, 0.04, 0.04 );
setScaleKey( spep_3 -3 + 48, 1, 0.04, 0.04 );
setScaleKey( spep_3 -3 + 50, 1, 0.03, 0.03 );
setScaleKey( spep_3 -3 + 53, 1, 0.02, 0.02 );

setRotateKey( spep_3 + 0, 1, 91.5 );
setRotateKey( spep_3 -3 + 53, 1, 91.5 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 60, 1, 1 );
setDisp( spep_3 -3 + 68, 1, 0 );
changeAnime( spep_3 -3 + 60, 1, 105 );

setMoveKey( spep_3 -3 + 60, 1, -146, 526.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -109.4, 331.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -72.7, 135.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -36, -60.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -36, -60.1 , 0 );

setScaleKey( spep_3 -3 + 60, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 68, 1, 0.21, 0.21 );

setRotateKey( spep_3 -3 + 60, 1, 131 );
setRotateKey( spep_3 -3 + 68, 1, 131 );

-- ** 音 ** --
--地面激突
SE032 = playSeVer2( spep_3 + 60, 1159, "",spep_3+ 134, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 124 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_c = spep_3 + 124;

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

--気弾溜め
SE034 = playSeVer2( spep_c + 78, 1171, "",spep_c + 116, 0, 12, -1);
setSeVolumeByWorkId( spep_c + 78, SE034, 122 );
SE035 = playSeVer2( spep_c + 82, 1240, "",spep_c + 166, 0, 24, -1);
SE036 = playSeVer2( spep_c + 82, 1227, "",spep_c + 224, 0, 28, -1);
SE037 = playSeVer2( spep_c + 82, 1271, "",spep_c + 224, 0, 28, -1);
SE038 = playSeVer2( spep_c + 82, 1243, "",spep_c + 126, 0, 24, -1);


-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_c + 94;

------------------------------------------------------
-- 光弾攻撃(194F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
flash_f = entryEffectLife( spep_5 + 0, SP_09, 194 -1, 0x100, -1, 0, 0, 0 );  --光弾攻撃    ef_005
setEffMoveKey( spep_5 + 0, flash_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 194 -1, flash_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, flash_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 194 -1, flash_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, flash_f, 0 );
setEffRotateKey( spep_5 + 194 -1, flash_f, 0 );
setEffAlphaKey( spep_5 + 0, flash_f, 255 );
setEffAlphaKey( spep_5 + 194 -2, flash_f, 255 );
setEffAlphaKey( spep_5 + 194 -1, flash_f, 0 );

flash_b = entryEffectLife( spep_5 + 0, SP_10, 194 -1, 0x80, -1, 0, 0, 0 );  --光弾攻撃　裏  ef_005_back
setEffMoveKey( spep_5 + 0, flash_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 194 -1, flash_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, flash_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 194 -1, flash_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, flash_b, 0 );
setEffRotateKey( spep_5 + 194 -1, flash_b, 0 );
setEffAlphaKey( spep_5 + 0, flash_b, 255 );
setEffAlphaKey( spep_5 + 194 -2, flash_b, 255 );
setEffAlphaKey( spep_5 + 194 -1, flash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 112, 1, 1 );
setDisp( spep_5 -3 + 142, 1, 0 );
changeAnime( spep_5 -3 + 112, 1, 107 );

setBlendColor( spep_5 -3 + 112, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_5 -3 + 116, 1, 3, 0, 0, 0, 0.315 );
setBlendColor( spep_5 -3 + 118, 1, 3, 0, 0, 0, 0.33 );
setBlendColor( spep_5 -3 + 120, 1, 3, 0, 0, 0, 0.345 );
setBlendColor( spep_5 -3 + 122, 1, 3, 0, 0, 0, 0.36 );
setBlendColor( spep_5 -3 + 124, 1, 3, 0, 0, 0, 0.375 );
setBlendColor( spep_5 -3 + 126, 1, 3, 0, 0, 0, 0.39 );
setBlendColor( spep_5 -3 + 128, 1, 3, 0, 0, 0, 0.405 );
setBlendColor( spep_5 -3 + 130, 1, 3, 0, 0, 0, 0.42 );
setBlendColor( spep_5 -3 + 132, 1, 3, 0, 0, 0, 0.435 );
setBlendColor( spep_5 -3 + 134, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_5 -3 + 136, 1, 3, 0, 0, 0, 0.465 );
setBlendColor( spep_5 -3 + 138, 1, 3, 0, 0, 0, 0.48 );
setBlendColor( spep_5 -3 + 140, 1, 3, 0, 0, 0, 0.495 );
setBlendColor( spep_5 -3 + 141, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_5 -3 + 142, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_5 -3 + 112, 1, 61.1, -156.9 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 61.1, -156.9 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 62.5, -162.7 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 63.8, -168.4 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 65.2, -174.3 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 66.6, -180.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 68.2, -187.3 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 70, -195.1 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 72.3, -204.6 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 75.1, -216.8 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 78.9, -233 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 84, -254.6 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 90.6, -282.7 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 98.9, -317.9 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 98.8, -317.6 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 98.8, -317.6 , 0 );

setScaleKey( spep_5 -3 + 112, 1, 1.18, 1.18 );
setScaleKey( spep_5 -3 + 114, 1, 1.18, 1.18 );
setScaleKey( spep_5 -3 + 116, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 118, 1, 1.23, 1.23 );
setScaleKey( spep_5 -3 + 120, 1, 1.25, 1.25 );
setScaleKey( spep_5 -3 + 122, 1, 1.28, 1.28 );
setScaleKey( spep_5 -3 + 124, 1, 1.31, 1.31 );
setScaleKey( spep_5 -3 + 126, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 128, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 130, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 132, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 134, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 136, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 138, 1, 1.9, 1.9 );
setScaleKey( spep_5 -3 + 142, 1, 1.9, 1.9 );

setRotateKey( spep_5 -3 + 112, 1, 57.5 );
setRotateKey( spep_5 -3 + 142, 1, 57.5 );


-- ** 音 ** --
--気弾溜め
SE039 = playSeVer2( spep_5 + 6, 1224, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 6, SE039, 86 );

--気弾大きくなる
SE040 = playSeVer2( spep_5 + 6, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 6, SE040, 164 );
SE041 = playSeVer2( spep_5 + 8, 1230, "",spep_5 + 56, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 8, SE041, 207 );

--気弾発射
SE042 = playSeVer2( spep_5 + 76, 1193, "",spep_5 + 158, 0, 34, 0.6);
setSeVolumeByWorkId( spep_5 + 76, SE042, 197 );
SE043 = playSeVer2( spep_5 + 80, 1217, "",spep_5 + 116, 0, 12, -1);
setPitch( spep_5 + 80, SE043, -300 );
setTimeStretch( SE043, 0.8, 30, 4 );
SE044 = playSeVer2( spep_5 + 82, 1329, "",spep_5 + 158, 0, 34, -1);
setPitch( spep_5 + 82, SE044, -300 );
setTimeStretch( SE044, 0.8, 30, 4 );
SE045 = playSeVer2( spep_5 + 82, 1116, "",spep_5 + 148, 0, 24, -1);

--気弾飛んでくる
SE046 = playSeVer2( spep_5 + 106, 1021, "", 0, 0, 0, -1);

--爆発
SE047 = playSeVer2( spep_5 + 134, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_5 + 134, 1024, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_5 + 150, 1188, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_5 + 168, 1067, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_5 + 168, 1160, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 194 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 194 -1;


------------------------------------------------------
-- KO演出(222F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --KO演出    ef_006
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 222, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 222, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 222, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 222, finish, 255 );

-- ** 音 ** --
--瓦礫温
SE052 = playSeVer2( spep_6 + 72, 1168, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_6 + 72, SE052, 63 );
setStartTimeMs( SE052,  1033 );

--煙に飲まれる
SE053 = playSeVer2( spep_6 + 46, 1258, "",spep_6 + 138, 26, 36, -1);
setSeVolumeByWorkId( spep_6 + 46, SE053, 71 );
setStartTimeMs( SE053,  250 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 222 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 50 );
endPhase( spep_6 + 212 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 待機(218F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 218, 0x100, -1, 0, 0, 0 );  --待機  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 218, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 218 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 218, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 218, 0x80, -1, 0, 0, 0 );  --待機　裏    ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 218, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 218 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 218, first_b, 0 );

spep_x = spep_0 + 94;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 117 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 94, 1, 0 );

setMoveKey( spep_0 + 0, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 1, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 2, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 3, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 4, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 5, 1, 132, -41 , 0 );
setMoveKey( spep_0 + 6, 1, 132, -41 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 132, -41 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 1, 1, 1, 1 );
setScaleKey( spep_0 + 2, 1, 1, 1 );
setScaleKey( spep_0 + 3, 1, 1, 1 );
setScaleKey( spep_0 + 4, 1, 1, 1 );
setScaleKey( spep_0 + 5, 1, 1, 1 );
setScaleKey( spep_0 + 6, 1, 1, 1 );
setScaleKey( spep_0 -3 + 94, 1, 1, 1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 94, 1, 0 );

-- ** 音 ** --
--尻尾地面打つ
SE001 = playSeVer2( spep_0 + 10, 1069, "",spep_0 + 68, 2, 30, -1);
setSeVolumeByWorkId( spep_0 + 10, SE001, 68 );
setStartTimeMs( SE001,  250 );
SE002 = playSeVer2( spep_0 + 8, 1110, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 8, 1168, "",spep_0 + 68, 0, 30, -1);

--尻尾地面打つ2
SE004 = playSeVer2( spep_0 + 50, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE004, 71 );
SE005 = playSeVer2( spep_0 + 50, 1169, "",spep_0 + 96, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 75 );

--顔カットイン
--SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 218 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

--瞬間移動
SE007 = playSeVer2( spep_0 + 198, 43, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE007, 122 );
SE008 = playSeVer2( spep_0 + 198, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE008, 73 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 218;


------------------------------------------------------
-- 連続攻撃(156F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_03r, 156, 0x100, -1, 0, 0, 0 );  --連続攻撃    ef_002
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 156, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 156, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 156 -1, rush_f, 255 );
setEffAlphaKey( spep_1 + 156, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_04r, 156, 0x80, -1, 0, 0, 0 );  --連続攻撃　裏  ef_002_back
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 156, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 156, rush_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 156, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 156 -1, rush_b, 255 );
setEffAlphaKey( spep_1 + 156, rush_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 126, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 8, 1, 108 );
changeAnime( spep_1 -3 + 82, 1, 6 );
changeAnime( spep_1 -3 + 112, 1, 108 );
changeAnime( spep_1 -3 + 118, 1, 106 );

setMoveKey( spep_1 + 0, 1, -25.3, -39.9 , 0 );
setMoveKey( spep_1 + 1, 1, -23.3, -40.2 , 0 );
setMoveKey( spep_1 + 2, 1, -21.3, -40.5 , 0 );
setMoveKey( spep_1 -3 + 7, 1, -19.3, -40.7 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 24.9, -32.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 103.1, -11.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 8.7, -87.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 12.7, -4.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 97.5, -79.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 93.4, 1.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 78.7, -83.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 35.5, -52.4 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 113.8, -65.3 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 72.7, -3.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 133.6, -46.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 75.4, -81.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 135.9, -36.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 46.3, -35.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 108, -1.6 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 84.7, -54.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 110.5, -51.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 76, -33.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 125.7, -38.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 97.1, -15.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 91.8, -47 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 107, -31.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 109.7, -31.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 109.5, -31.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 110.9, -31.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 113.4, -32.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 116.4, -33.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 119.9, -34 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 123.8, -34.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 128.2, -35.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 133, -36.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 137.4, -37.1 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 141.3, -37.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 144.8, -38.7 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 147.8, -39.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 150.3, -40.3 , 0 );
setMoveKey( spep_1 -3 + 81, 1, 19.6, 31 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -68.5, -29.4 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -127, -9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -39.7, -111 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -50.5, -61.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -17.2, -53.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -96.4, -95.7 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 4.2, -104.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -25.2, -32.1 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -79.7, -105.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -14.2, -69.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -25.7, -74.4 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -37.3, -79.6 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -35.8, -80.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -34.3, -82.1 , 0 );
setMoveKey( spep_1 -3 + 111, 1, -32.8, -83.5 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 42.6, 4.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 128.6, 75.2 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 92.5, -6.8 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 325.4, 123.7 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 511.2, 254.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 701.1, 281.2 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 813, 387.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 813, 387.9 , 0 );

s1 = 0.2;
s2 = 0.3;
setScaleKey( spep_1 -3 + 0, 1, 2.56 +s1, 2.56 +s1 );
setScaleKey( spep_1 -3 + 7, 1, 2.56 +s1, 2.56 +s1 );
setScaleKey( spep_1 -3 + 8, 1, 2.87 +s1, 2.87 +s1 );
setScaleKey( spep_1 -3 + 10, 1, 2.86 +s1, 2.86 +s1 );
setScaleKey( spep_1 -3 + 14, 1, 2.86 +s1, 2.86 +s1 );
setScaleKey( spep_1 -3 + 16, 1, 2.85 +s1, 2.85 +s1 );
setScaleKey( spep_1 -3 + 26, 1, 2.85 +s1, 2.85 +s1 );
setScaleKey( spep_1 -3 + 28, 1, 2.84 +s1, 2.84 +s1 );
setScaleKey( spep_1 -3 + 81, 1, 2.84 +s1, 2.84 +s1 );--
setScaleKey( spep_1 -3 + 82, 1, 2.31 +s2, 2.31 +s2 );
setScaleKey( spep_1 -3 + 84, 1, 2.3 +s2, 2.3 +s2 );
setScaleKey( spep_1 -3 + 88, 1, 2.3 +s2, 2.3 +s2 );
setScaleKey( spep_1 -3 + 90, 1, 2.29 +s2, 2.29 +s2 );
setScaleKey( spep_1 -3 + 100, 1, 2.29 +s2, 2.29 +s2 );
setScaleKey( spep_1 -3 + 102, 1, 2.28 +s2, 2.28 +s2 );
setScaleKey( spep_1 -3 + 111, 1, 2.28 +s2, 2.28 +s2 );--
setScaleKey( spep_1 -3 + 112, 1, 2.72 +s1, 2.72 +s1 );
setScaleKey( spep_1 -3 + 114, 1, 2.72 +s1, 2.72 +s1 );
setScaleKey( spep_1 -3 + 117, 1, 2.71 +s1, 2.71 +s1 );--
setScaleKey( spep_1 -3 + 118, 1, 2.44 +s2, 2.44 +s2 );
setScaleKey( spep_1 -3 + 120, 1, 2.5 +s2, 2.5 +s2 );
setScaleKey( spep_1 -3 + 122, 1, 2.56 +s2, 2.56 +s2 );
setScaleKey( spep_1 -3 + 124, 1, 2.62 +s2, 2.62 +s2 );
setScaleKey( spep_1 -3 + 126, 1, 2.62 +s2, 2.62 +s2 );

setRotateKey( spep_1 -3 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 56, 1, 0 );
setRotateKey( spep_1 -3 + 58, 1, 0.2 );
setRotateKey( spep_1 -3 + 60, 1, 0.4 );
setRotateKey( spep_1 -3 + 62, 1, 0.5 );
setRotateKey( spep_1 -3 + 64, 1, 0.7 );
setRotateKey( spep_1 -3 + 66, 1, 0.9 );
setRotateKey( spep_1 -3 + 68, 1, 1.1 );
setRotateKey( spep_1 -3 + 70, 1, 1.2 );
setRotateKey( spep_1 -3 + 72, 1, 1.4 );
setRotateKey( spep_1 -3 + 74, 1, 1.6 );
setRotateKey( spep_1 -3 + 76, 1, 1.8 );
setRotateKey( spep_1 -3 + 78, 1, 2 );
setRotateKey( spep_1 -3 + 81, 1, -3.5 );
setRotateKey( spep_1 -3 + 82, 1, 38.7 );
setRotateKey( spep_1 -3 + 84, 1, 21.4 );
setRotateKey( spep_1 -3 + 86, 1, 10.2 );
setRotateKey( spep_1 -3 + 88, 1, 2.9 );
setRotateKey( spep_1 -3 + 90, 1, -2.2 );
setRotateKey( spep_1 -3 + 92, 1, -5.9 );
setRotateKey( spep_1 -3 + 94, 1, -8.6 );
setRotateKey( spep_1 -3 + 96, 1, -10.7 );
setRotateKey( spep_1 -3 + 98, 1, -12.5 );
setRotateKey( spep_1 -3 + 100, 1, -14 );
setRotateKey( spep_1 -3 + 102, 1, -15.4 );
setRotateKey( spep_1 -3 + 104, 1, -16.8 );
setRotateKey( spep_1 -3 + 106, 1, -18.1 );
setRotateKey( spep_1 -3 + 108, 1, -19.5 );
setRotateKey( spep_1 -3 + 111, 1, -21 );
setRotateKey( spep_1 -3 + 112, 1, -54.7 );
setRotateKey( spep_1 -3 + 114, 1, -54.7 );
setRotateKey( spep_1 -3 + 117, 1, -45.5 );
setRotateKey( spep_1 -3 + 118, 1, -12.3 );
setRotateKey( spep_1 -3 + 126, 1, -12.3 );

-- ** 音 ** --
--腹パン
SE009 = playSeVer2( spep_1 + 4, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE009, 92 );
SE010 = playSeVer2( spep_1 + 4, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE010, 81 );
SE011 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 4, SE011, 88 );

--回り込む
SE012 = playSeVer2( spep_1 + 44, 1004, "", 0, 0, 0, -1);

--尻尾アタック
SE013 = playSeVer2( spep_1 + 70, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 70, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 70, SE014, 86 );
SE015 = playSeVer2( spep_1 + 70, 1009, "", 0, 0, 0, -1);

--尻尾アタック2
SE016 = playSeVer2( spep_1 + 98, 1180, "",spep_1 + 178, 0, 48, -1);
setSeVolumeByWorkId( spep_1 + 98, SE016, 89 );
SE017 = playSeVer2( spep_1 + 98, 1187, "", 0, 0, 0, -1);

--追いかける
SE018 = playSeVer2( spep_1 + 132, 1383, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 132, 1117, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 132, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 132, SE020, 61 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 156;


------------------------------------------------------
-- 連続攻撃(210F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_05r, 210, 0x100, -1, 0, 0, 0 );  --連続攻撃    ef_003
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 210, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 210, attack_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 210, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 210 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 210, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_06r, 210, 0x80, -1, 0, 0, 0 );  --連続攻撃　裏  ef_003_back
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 210, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 210, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 210, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 210 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 210, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 1, 1, 1 );
setDisp( spep_2 -3 + 206, 1, 0 );
changeAnime( spep_2 + 1, 1, 106 );
changeAnime( spep_2 -3 + 68, 1, 101 );
changeAnime( spep_2 -3 + 86, 1, 106 );
changeAnime( spep_2 -3 + 148, 1, 108 );
changeAnime( spep_2 -3 + 190, 1, 106 );

setMoveKey( spep_2 + 1, 1, -571, -420.9 , 0 );
setMoveKey( spep_2 + 2, 1, -539.8, -399.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -508.6, -377.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -477.4, -356.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -446.2, -334.6 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -415, -313 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -383.8, -291.4 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -352.7, -269.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -321.5, -248.3 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -290.3, -226.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -259.1, -205.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -227.9, -183.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -196.7, -161.9 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -165.5, -140.4 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -134.3, -118.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -103.1, -97.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -71.9, -75.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -40.7, -54.1 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -9.5, -32.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 21.7, -10.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 52.8, 10.7 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 84, 32.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 115.2, 53.8 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 146.4, 75.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 177.6, 97 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 208.8, 118.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 240, 140.1 , 0 );
setMoveKey( spep_2 -3 + 55, 1, 240, 140.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 66.4, -963.5 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 112.3, -920.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 140.1, -894.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 154.4, -881.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 159.7, -876.2 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 160.4, -875.5 , 0 );
setMoveKey( spep_2 -3 + 67, 1, 160.4, -875.5 , 0 );--
setMoveKey( spep_2 -3 + 68, 1, 181.2, -19.1 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 181.2, -20.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 181.3, -22.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 181.4, -23.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 181.4, -25.2 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 181.5, -26.8 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 187.6, -50.1 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 187.7, -51.7 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 237.8, -3.3 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 237.8, -3.3 , 0 );--
setMoveKey( spep_2 -3 + 86, 1, 66.4, -67 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 145.9, -26.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 60.3, 37.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 161, 30.9 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 77.8, -8.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 159.7, 0.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 119.9, 81.5 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 139.4, -11.9 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 165.6, 44.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 103.4, 51.3 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 160.9, 34.1 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 126.2, 17.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 141.3, 27.2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 142.3, 26.5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 143.1, 25.9 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 143.9, 25.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 144.6, 24.3 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 145.3, 23.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 145.9, 22.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 146.6, 21.8 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 147.2, 20.9 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 147.8, 20 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 148.4, 19.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 149.2, 18.2 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 149.2, 18.2 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 80.4, 25.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 79.8, 25.9 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 79.2, 26.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 78.6, 27.2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 78, 27.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 77.4, 28.6 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 76.8, 29.3 , 0 );
setMoveKey( spep_2 -3 + 147, 1, 76.8, 29.3 , 0 );--
setMoveKey( spep_2 -3 + 148, 1, 159.6, -124.9 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 261.1, -168.1 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 197.5, -42.9 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 298.7, -64.6 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 183.7, -131.6 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 307.3, -68.5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 203.2, -90.6 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 291.4, -60.6 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 251.1, -111.2 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 238.6, -53.1 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 257.7, -72.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 256.7, -71.2 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 258.2, -66.2 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 259.6, -61.3 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 261.1, -56.3 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 262.5, -51.4 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 263.9, -46.5 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 265.4, -41.6 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 266.8, -36.8 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 265.7, -35.9 , 0 );
setMoveKey( spep_2 -3 + 187, 1, 265.7, -35.9 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 272.7, -220.1 , 0 );
setMoveKey( spep_2 -3 + 189, 1, 272.7, -220.1 , 0 );--
setMoveKey( spep_2 -3 + 190, 1, 337.8, -473.2 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 300.4, -367 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 318.1, -556.9 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 425.7, -482.8 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 355, -490.8 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 459, -573.6 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 386.1, -611.7 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 464.8, -553.4 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 464.8, -553.4 , 0 );

s3 = 0.2;
setScaleKey( spep_2 + 1, 1, 1.33 +s3, 1.33 +s3 );
setScaleKey( spep_2 -3 + 54, 1, 1.33 +s3, 1.33 +s3 );
setScaleKey( spep_2 -3 + 55, 1, 1.33 +s3, 1.33 +s3 );
setScaleKey( spep_2 -3 + 56, 1, 12.5, 12.5 );
setScaleKey( spep_2 -3 + 66, 1, 12.5, 12.5 );
setScaleKey( spep_2 -3 + 67, 1, 12.5, 12.5 );--
setScaleKey( spep_2 -3 + 68, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 70, 1, 3.07, 3.07 );
setScaleKey( spep_2 -3 + 72, 1, 3.08, 3.08 );
setScaleKey( spep_2 -3 + 74, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 76, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 78, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 80, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 82, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 84, 1, 2.92, 2.92 );
setScaleKey( spep_2 -3 + 85, 1, 2.92, 2.92 );--
setScaleKey( spep_2 -3 + 86, 1, 2.75, 2.75 );
setScaleKey( spep_2 -3 + 88, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 90, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 92, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 94, 1, 2.79, 2.79 );
setScaleKey( spep_2 -3 + 96, 1, 2.8, 2.8 );
setScaleKey( spep_2 -3 + 98, 1, 2.81, 2.81 );
setScaleKey( spep_2 -3 + 100, 1, 2.82, 2.82 );
setScaleKey( spep_2 -3 + 102, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 104, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 106, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 108, 1, 2.85, 2.85 );
setScaleKey( spep_2 -3 + 110, 1, 2.86, 2.86 );
setScaleKey( spep_2 -3 + 112, 1, 2.87, 2.87 );
setScaleKey( spep_2 -3 + 114, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 116, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 118, 1, 2.89, 2.89 );
setScaleKey( spep_2 -3 + 120, 1, 2.9, 2.9 );
setScaleKey( spep_2 -3 + 122, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 124, 1, 2.91, 2.91 );
setScaleKey( spep_2 -3 + 126, 1, 2.92, 2.92 );
setScaleKey( spep_2 -3 + 128, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 130, 1, 2.94, 2.94 );
setScaleKey( spep_2 -3 + 132, 1, 2.94, 2.94 );
setScaleKey( spep_2 -3 + 133, 1, 2.94, 2.94 );
setScaleKey( spep_2 -3 + 134, 1, 4.51, 4.51 );
setScaleKey( spep_2 -3 + 136, 1, 4.5, 4.5 );
setScaleKey( spep_2 -3 + 138, 1, 4.49, 4.49 );
setScaleKey( spep_2 -3 + 140, 1, 4.48, 4.48 );
setScaleKey( spep_2 -3 + 142, 1, 4.47, 4.47 );
setScaleKey( spep_2 -3 + 144, 1, 4.46, 4.46 );
setScaleKey( spep_2 -3 + 146, 1, 4.45, 4.45 );
setScaleKey( spep_2 -3 + 147, 1, 4.45, 4.45 );--
setScaleKey( spep_2 -3 + 148, 1, 5.07, 5.07 );
setScaleKey( spep_2 -3 + 150, 1, 5.06, 5.06 );
setScaleKey( spep_2 -3 + 152, 1, 5.05, 5.05 );
setScaleKey( spep_2 -3 + 154, 1, 5.04, 5.04 );
setScaleKey( spep_2 -3 + 156, 1, 5.03, 5.03 );
setScaleKey( spep_2 -3 + 158, 1, 5.02, 5.02 );
setScaleKey( spep_2 -3 + 160, 1, 5.01, 5.01 );
setScaleKey( spep_2 -3 + 162, 1, 5, 5 );
setScaleKey( spep_2 -3 + 164, 1, 4.99, 4.99 );
setScaleKey( spep_2 -3 + 166, 1, 4.98, 4.98 );
setScaleKey( spep_2 -3 + 168, 1, 4.97, 4.97 );
setScaleKey( spep_2 -3 + 170, 1, 4.96, 4.96 );
setScaleKey( spep_2 -3 + 172, 1, 4.98, 4.98 );
setScaleKey( spep_2 -3 + 174, 1, 5, 5 );
setScaleKey( spep_2 -3 + 176, 1, 5.02, 5.02 );
setScaleKey( spep_2 -3 + 178, 1, 5.05, 5.05 );
setScaleKey( spep_2 -3 + 180, 1, 5.07, 5.07 );
setScaleKey( spep_2 -3 + 182, 1, 5.09, 5.09 );
setScaleKey( spep_2 -3 + 184, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 186, 1, 5.1, 5.1 );
setScaleKey( spep_2 -3 + 189, 1, 5.1, 5.1 );--
setScaleKey( spep_2 -3 + 190, 1, 5.11, 5.11 );
setScaleKey( spep_2 -3 + 192, 1, 4.96, 4.96 );
setScaleKey( spep_2 -3 + 194, 1, 4.86, 4.86 );
setScaleKey( spep_2 -3 + 196, 1, 4.8, 4.8 );
setScaleKey( spep_2 -3 + 198, 1, 4.76, 4.76 );
setScaleKey( spep_2 -3 + 200, 1, 4.74, 4.74 );
setScaleKey( spep_2 -3 + 202, 1, 4.73, 4.73 );
setScaleKey( spep_2 -3 + 204, 1, 4.72, 4.72 );
setScaleKey( spep_2 -3 + 206, 1, 4.72, 4.72 );


setRotateKey( spep_2 + 1, 1, 0 );
setRotateKey( spep_2 -3 + 54, 1, 0 );
setRotateKey( spep_2 -3 + 55, 1, 0 );
setRotateKey( spep_2 -3 + 56, 1, -67.2 );
setRotateKey( spep_2 -3 + 66, 1, -67.2 );
setRotateKey( spep_2 -3 + 67, 1, -67.2 );--
setRotateKey( spep_2 -3 + 68, 1, -12.3 );
setRotateKey( spep_2 -3 + 70, 1, -14.2 );
setRotateKey( spep_2 -3 + 72, 1, -15.4 );
setRotateKey( spep_2 -3 + 74, 1, -16 );
setRotateKey( spep_2 -3 + 76, 1, -16.2 );
setRotateKey( spep_2 -3 + 78, 1, -16.3 );
setRotateKey( spep_2 -3 + 80, 1, -42.8 );
setRotateKey( spep_2 -3 + 85, 1, -42.8 );--
setRotateKey( spep_2 -3 + 86, 1, -55 );
setRotateKey( spep_2 -3 + 88, 1, -52.7 );
setRotateKey( spep_2 -3 + 90, 1, -51 );
setRotateKey( spep_2 -3 + 92, 1, -49.6 );
setRotateKey( spep_2 -3 + 94, 1, -48.5 );
setRotateKey( spep_2 -3 + 96, 1, -47.7 );
setRotateKey( spep_2 -3 + 98, 1, -47 );
setRotateKey( spep_2 -3 + 100, 1, -46.4 );
setRotateKey( spep_2 -3 + 102, 1, -46 );
setRotateKey( spep_2 -3 + 104, 1, -45.6 );
setRotateKey( spep_2 -3 + 106, 1, -45.2 );
setRotateKey( spep_2 -3 + 108, 1, -45 );
setRotateKey( spep_2 -3 + 110, 1, -44.7 );
setRotateKey( spep_2 -3 + 112, 1, -44.5 );
setRotateKey( spep_2 -3 + 114, 1, -44.3 );
setRotateKey( spep_2 -3 + 116, 1, -44.2 );
setRotateKey( spep_2 -3 + 118, 1, -44 );
setRotateKey( spep_2 -3 + 120, 1, -43.8 );
setRotateKey( spep_2 -3 + 122, 1, -43.7 );
setRotateKey( spep_2 -3 + 124, 1, -43.6 );
setRotateKey( spep_2 -3 + 126, 1, -43.4 );
setRotateKey( spep_2 -3 + 128, 1, -43.3 );
setRotateKey( spep_2 -3 + 130, 1, -43.2 );
setRotateKey( spep_2 -3 + 132, 1, -43.1 );
setRotateKey( spep_2 -3 + 133, 1, -43.1 );
setRotateKey( spep_2 -3 + 134, 1, -60.5 );
setRotateKey( spep_2 -3 + 146, 1, -60.5 );
setRotateKey( spep_2 -3 + 147, 1, -60.5 );--
setRotateKey( spep_2 -3 + 148, 1, -3.8 );
setRotateKey( spep_2 -3 + 150, 1, -5.1 );
setRotateKey( spep_2 -3 + 152, 1, -6.1 );
setRotateKey( spep_2 -3 + 154, 1, -6.8 );
setRotateKey( spep_2 -3 + 156, 1, -7.3 );
setRotateKey( spep_2 -3 + 158, 1, -7.6 );
setRotateKey( spep_2 -3 + 160, 1, -7.8 );
setRotateKey( spep_2 -3 + 162, 1, -7.9 );
setRotateKey( spep_2 -3 + 164, 1, -8 );
setRotateKey( spep_2 -3 + 170, 1, -8 );
setRotateKey( spep_2 -3 + 172, 1, -8.1 );
setRotateKey( spep_2 -3 + 174, 1, -8.2 );
setRotateKey( spep_2 -3 + 176, 1, -8.3 );
setRotateKey( spep_2 -3 + 178, 1, -8.4 );
setRotateKey( spep_2 -3 + 180, 1, -8.5 );
setRotateKey( spep_2 -3 + 182, 1, -8.6 );
setRotateKey( spep_2 -3 + 184, 1, -8.7 );
setRotateKey( spep_2 -3 + 186, 1, -8.7 );
setRotateKey( spep_2 -3 + 187, 1, -8.7 );
setRotateKey( spep_2 -3 + 188, 1, -43.4 );
setRotateKey( spep_2 -3 + 189, 1, -43.4 );--
setRotateKey( spep_2 -3 + 190, 1, -78 );
setRotateKey( spep_2 -3 + 194, 1, -78 );
setRotateKey( spep_2 -3 + 196, 1, -75.1 );
setRotateKey( spep_2 -3 + 198, 1, -72.2 );
setRotateKey( spep_2 -3 + 200, 1, -69.3 );
setRotateKey( spep_2 -3 + 202, 1, -66.4 );
setRotateKey( spep_2 -3 + 204, 1, -63.5 );
setRotateKey( spep_2 -3 + 206, 1, -63.5 );

-- ** 音 ** --
--顔掴む
SE021 = playSeVer2( spep_2 + 50, 1012, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 52, 1006, "", 0, 0, 0, -1);

--膝蹴り
SE023 = playSeVer2( spep_2 + 72, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 72, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 72, 1180, "",spep_2 + 170, 0, 46, -1);

--パンチ
SE026 = playSeVer2( spep_2 + 138, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 138, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE027, 65 );

--パンチ２
SE028 = playSeVer2( spep_2 + 182, 1120, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 182, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 182, SE029, 64 );
SE030 = playSeVer2( spep_2 + 182, 1180, "", 0, 0, 0, -1);

--敵落ちてく
SE031 = playSeVer2( spep_2 + 204, 1121, "",spep_2 + 292, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 210 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 210;


------------------------------------------------------
-- 敵墜落(124F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
fall_f = entryEffectLife( spep_3 + 0, SP_07r, 124, 0x100, -1, 0, 0, 0 );  --敵墜落 ef_004
setEffMoveKey( spep_3 + 0, fall_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 124, fall_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fall_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 124, fall_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall_f, 0 );
setEffRotateKey( spep_3 + 124, fall_f, 0 );
setEffAlphaKey( spep_3 + 0, fall_f, 255 );
setEffAlphaKey( spep_3 + 124 -1, fall_f, 255 );
setEffAlphaKey( spep_3 + 124, fall_f, 0 );

fall_b = entryEffectLife( spep_3 + 0, SP_08r, 124, 0x80, -1, 0, 0, 0 );  --敵墜落　裏   ef_004_back
setEffMoveKey( spep_3 + 0, fall_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 124, fall_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, fall_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 124, fall_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall_b, 0 );
setEffRotateKey( spep_3 + 124, fall_b, 0 );
setEffAlphaKey( spep_3 + 0, fall_b, 255 );
setEffAlphaKey( spep_3 + 124 -1, fall_b, 255 );
setEffAlphaKey( spep_3 + 124, fall_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 53, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, -12, -6 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -12, -6 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -12, -6.1 , 0 );
setMoveKey( spep_3 -3 + 53, 1, -12, -6.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 1, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 2, 1, 0.51, 0.51 );
setScaleKey( spep_3 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_3 -3 + 8, 1, 0.35, 0.35 );
setScaleKey( spep_3 -3 + 10, 1, 0.3, 0.3 );
setScaleKey( spep_3 -3 + 12, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 14, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 16, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 18, 1, 0.19, 0.19 );
setScaleKey( spep_3 -3 + 20, 1, 0.18, 0.18 );
setScaleKey( spep_3 -3 + 22, 1, 0.16, 0.16 );
setScaleKey( spep_3 -3 + 24, 1, 0.15, 0.15 );
setScaleKey( spep_3 -3 + 26, 1, 0.14, 0.14 );
setScaleKey( spep_3 -3 + 28, 1, 0.13, 0.13 );
setScaleKey( spep_3 -3 + 30, 1, 0.11, 0.11 );
setScaleKey( spep_3 -3 + 32, 1, 0.1, 0.1 );
setScaleKey( spep_3 -3 + 34, 1, 0.09, 0.09 );
setScaleKey( spep_3 -3 + 36, 1, 0.08, 0.08 );
setScaleKey( spep_3 -3 + 38, 1, 0.07, 0.07 );
setScaleKey( spep_3 -3 + 40, 1, 0.06, 0.06 );
setScaleKey( spep_3 -3 + 42, 1, 0.06, 0.06 );
setScaleKey( spep_3 -3 + 44, 1, 0.05, 0.05 );
setScaleKey( spep_3 -3 + 46, 1, 0.04, 0.04 );
setScaleKey( spep_3 -3 + 48, 1, 0.04, 0.04 );
setScaleKey( spep_3 -3 + 50, 1, 0.03, 0.03 );
setScaleKey( spep_3 -3 + 53, 1, 0.02, 0.02 );

setRotateKey( spep_3 + 0, 1, 91.5 );
setRotateKey( spep_3 -3 + 53, 1, 91.5 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 60, 1, 1 );
setDisp( spep_3 -3 + 68, 1, 0 );
changeAnime( spep_3 -3 + 60, 1, 105 );

setMoveKey( spep_3 -3 + 60, 1, -146, 526.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -109.4, 331.2 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -72.7, 135.5 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -36, -60.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -36, -60.1 , 0 );

setScaleKey( spep_3 -3 + 60, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 68, 1, 0.21, 0.21 );

setRotateKey( spep_3 -3 + 60, 1, 131 );
setRotateKey( spep_3 -3 + 68, 1, 131 );

-- ** 音 ** --
--地面激突
SE032 = playSeVer2( spep_3 + 60, 1159, "",spep_3+ 134, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 124 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_c = spep_3 + 124;


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

--気弾溜め
SE034 = playSeVer2( spep_c + 78, 1171, "",spep_c + 116, 0, 12, -1);
setSeVolumeByWorkId( spep_c + 78, SE034, 122 );
SE035 = playSeVer2( spep_c + 82, 1240, "",spep_c + 166, 0, 24, -1);
SE036 = playSeVer2( spep_c + 82, 1227, "",spep_c + 224, 0, 28, -1);
SE037 = playSeVer2( spep_c + 82, 1271, "",spep_c + 224, 0, 28, -1);
SE038 = playSeVer2( spep_c + 82, 1243, "",spep_c + 126, 0, 24, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_c + 94;

------------------------------------------------------
-- 光弾攻撃(194F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
flash_f = entryEffectLife( spep_5 + 0, SP_09r, 194 -1, 0x100, -1, 0, 0, 0 );  --光弾攻撃    ef_005
setEffMoveKey( spep_5 + 0, flash_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 194 -1, flash_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, flash_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 194 -1, flash_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, flash_f, 0 );
setEffRotateKey( spep_5 + 194 -1, flash_f, 0 );
setEffAlphaKey( spep_5 + 0, flash_f, 255 );
setEffAlphaKey( spep_5 + 194 -2, flash_f, 255 );
setEffAlphaKey( spep_5 + 194 -1, flash_f, 0 );

flash_b = entryEffectLife( spep_5 + 0, SP_10r, 194 -1, 0x80, -1, 0, 0, 0 );  --光弾攻撃　裏  ef_005_back
setEffMoveKey( spep_5 + 0, flash_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 194 -1, flash_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, flash_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 194 -1, flash_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, flash_b, 0 );
setEffRotateKey( spep_5 + 194 -1, flash_b, 0 );
setEffAlphaKey( spep_5 + 0, flash_b, 255 );
setEffAlphaKey( spep_5 + 194 -2, flash_b, 255 );
setEffAlphaKey( spep_5 + 194 -1, flash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 -3 + 112, 1, 1 );
setDisp( spep_5 -3 + 142, 1, 0 );
changeAnime( spep_5 -3 + 112, 1, 107 );

setBlendColor( spep_5 -3 + 112, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_5 -3 + 116, 1, 3, 0, 0, 0, 0.315 );
setBlendColor( spep_5 -3 + 118, 1, 3, 0, 0, 0, 0.33 );
setBlendColor( spep_5 -3 + 120, 1, 3, 0, 0, 0, 0.345 );
setBlendColor( spep_5 -3 + 122, 1, 3, 0, 0, 0, 0.36 );
setBlendColor( spep_5 -3 + 124, 1, 3, 0, 0, 0, 0.375 );
setBlendColor( spep_5 -3 + 126, 1, 3, 0, 0, 0, 0.39 );
setBlendColor( spep_5 -3 + 128, 1, 3, 0, 0, 0, 0.405 );
setBlendColor( spep_5 -3 + 130, 1, 3, 0, 0, 0, 0.42 );
setBlendColor( spep_5 -3 + 132, 1, 3, 0, 0, 0, 0.435 );
setBlendColor( spep_5 -3 + 134, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_5 -3 + 136, 1, 3, 0, 0, 0, 0.465 );
setBlendColor( spep_5 -3 + 138, 1, 3, 0, 0, 0, 0.48 );
setBlendColor( spep_5 -3 + 140, 1, 3, 0, 0, 0, 0.495 );
setBlendColor( spep_5 -3 + 141, 1, 3, 0, 0, 0, 0.5 );
setBlendColor( spep_5 -3 + 142, 1, 3, 0, 0, 0, 0 );

setMoveKey( spep_5 -3 + 112, 1, 61.1, -156.9 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 61.1, -156.9 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 62.5, -162.7 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 63.8, -168.4 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 65.2, -174.3 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 66.6, -180.5 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 68.2, -187.3 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 70, -195.1 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 72.3, -204.6 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 75.1, -216.8 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 78.9, -233 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 84, -254.6 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 90.6, -282.7 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 98.9, -317.9 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 98.8, -317.6 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 98.8, -317.6 , 0 );

setScaleKey( spep_5 -3 + 112, 1, 1.18, 1.18 );
setScaleKey( spep_5 -3 + 114, 1, 1.18, 1.18 );
setScaleKey( spep_5 -3 + 116, 1, 1.2, 1.2 );
setScaleKey( spep_5 -3 + 118, 1, 1.23, 1.23 );
setScaleKey( spep_5 -3 + 120, 1, 1.25, 1.25 );
setScaleKey( spep_5 -3 + 122, 1, 1.28, 1.28 );
setScaleKey( spep_5 -3 + 124, 1, 1.31, 1.31 );
setScaleKey( spep_5 -3 + 126, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 128, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 130, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 132, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 134, 1, 1.62, 1.62 );
setScaleKey( spep_5 -3 + 136, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 138, 1, 1.9, 1.9 );
setScaleKey( spep_5 -3 + 142, 1, 1.9, 1.9 );

setRotateKey( spep_5 -3 + 112, 1, 57.5 );
setRotateKey( spep_5 -3 + 142, 1, 57.5 );


-- ** 音 ** --
--気弾溜め
SE039 = playSeVer2( spep_5 + 6, 1224, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_5 + 6, SE039, 86 );

--気弾大きくなる
SE040 = playSeVer2( spep_5 + 6, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 6, SE040, 164 );
SE041 = playSeVer2( spep_5 + 8, 1230, "",spep_5 + 56, 0, 22, -1);
setSeVolumeByWorkId( spep_5 + 8, SE041, 207 );

--気弾発射
SE042 = playSeVer2( spep_5 + 76, 1193, "",spep_5 + 158, 0, 34, 0.6);
setSeVolumeByWorkId( spep_5 + 76, SE042, 197 );
SE043 = playSeVer2( spep_5 + 80, 1217, "",spep_5 + 116, 0, 12, -1);
setPitch( spep_5 + 80, SE043, -300 );
setTimeStretch( SE043, 0.8, 30, 4 );
SE044 = playSeVer2( spep_5 + 82, 1329, "",spep_5 + 158, 0, 34, -1);
setPitch( spep_5 + 82, SE044, -300 );
setTimeStretch( SE044, 0.8, 30, 4 );
SE045 = playSeVer2( spep_5 + 82, 1116, "",spep_5 + 148, 0, 24, -1);

--気弾飛んでくる
SE046 = playSeVer2( spep_5 + 106, 1021, "", 0, 0, 0, -1);

--爆発
SE047 = playSeVer2( spep_5 + 134, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_5 + 134, 1024, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_5 + 150, 1188, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_5 + 168, 1067, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_5 + 168, 1160, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 194 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 194 -1;


------------------------------------------------------
-- KO演出(222F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_11r, 0x100, -1, 0, 0, 0 );  --KO演出    ef_006
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 222, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_6 + 222, finish, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 222, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 222, finish, 255 );

-- ** 音 ** --
--瓦礫温
SE052 = playSeVer2( spep_6 + 72, 1168, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_6 + 72, SE052, 63 );
setStartTimeMs( SE052,  1033 );

--煙に飲まれる
SE053 = playSeVer2( spep_6 + 46, 1258, "",spep_6 + 138, 26, 36, -1);
setSeVolumeByWorkId( spep_6 + 46, SE053, 71 );
setStartTimeMs( SE053,  250 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 222 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 50 );
endPhase( spep_6 + 212 );


end