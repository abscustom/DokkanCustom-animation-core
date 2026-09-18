--1022860:超サイヤ人キャベ_師弟ギャリック砲_sp2244
--sp_effect_a1_00323

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
SP_01 = 158326;  --正面構え→ダッシュで突進    ef_001
SP_02 = 158328;  --敵にラッシュ  ef_002_ch
SP_03 = 158329;  --↑背景 ef_002_bg
SP_04 = 158332;  --↓殴った時のエッフェクト    ef_003_attackeff
SP_05 = 158333;  --敵の吹っ飛び→ベジータ殴る   ef_003
SP_06 = 158366;  --会話後ギャリック砲を充填    ef_004_r
SP_07 = 158336;  --横アップから発射    ef_005
SP_08 = 158338;  --↓敵の上に覆いかぶさる気弾   ef_006_attackeff
SP_09 = 158339;  --気弾的貫通、フィニッシュ    ef_006

--敵側
SP_01r = 158327;  --正面構え→ダッシュで突進：敵側反転   ef_001_r
SP_02r = 158330;  --敵にラッシュ：敵側反転 ef_002_ch_r
SP_03r = 158331;  --↑背景 ef_002_bg_r
SP_05r = 158334;  --敵の吹っ飛び→ベジータ殴る：敵側反転  ef_003_r
SP_06r = 158335;  --会話後ギャリック砲を充填    ef_004_r
SP_07r = 158337;  --横アップから発射：敵側反転   ef_005_r
SP_08r = 158340;  --↓敵の上に覆いかぶさる気弾   ef_006_attackeff_r
SP_09r = 158341;  --気弾的貫通、フィニッシュ    ef_006_r

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
-- 正面構え→ダッシュで突進(126F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 126, 0x100, -1, 0, 0, 0 );  --正面構え→ダッシュで突進    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 126, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 126 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 126, first_f, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--構える
SE002 = playSeVer2( spep_0 + 0, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 6, 1012, "", 0, 0, 0, -1);
setPitch( spep_0 + 6, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--画面遷移
SE005 = playSeVer2( spep_0 + 24, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 78 );

--オーラ
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 71 );
SE006 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 71 );
SE007 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE007, 71 );

--向かってくる
SE008 = playSeVer2( spep_0 + 72, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 72, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 72, 1314, "",spep_0 +126 + 14, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 114 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
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

-- ** 音 ** --
--ラッシュ
SE011 = playSeVer2( spep_0 + 130, 1189, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;


------------------------------------------------------
-- 敵にラッシュ(136F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02, 136, 0x100, -1, 0, 0, 0 );  --敵にラッシュ   ef_002_ch
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 136, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 136 -1, rush_f, 255 );
setEffAlphaKey( spep_1 + 136, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_03, 136, 0x80, -1, 0, 0, 0 );  --↑背景   ef_002_bg
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 136, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 136 -1, rush_b, 255 );
setEffAlphaKey( spep_1 + 136, rush_b, 0 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_1 -3 + 12,  10017, 56 +1, 0x100, -1, 0, 31.8, 351 );   --ドガガガッ
setEffMoveKey( spep_1 -3 + 12, ctdogaga, 31.8, 351 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctdogaga, 48, 349.7 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctdogaga, 50.5, 360.4 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctdogaga, 44, 360.7 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctdogaga, 52.4, 353.9 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctdogaga, 47.6, 368 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdogaga, 46.5, 353.4 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdogaga, 44.9, 366.4 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdogaga, 45.6, 351.9 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdogaga, 42.8, 363.2 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdogaga, 38.8, 347.6 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdogaga, 40.6, 366.6 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctdogaga, 33.6, 353 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdogaga, 43.2, 358.4 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctdogaga, 34.4, 347 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctdogaga, 39.5, 363.9 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctdogaga, 28, 349.8 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctdogaga, 41.3, 357.8 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctdogaga, 28.1, 350.9 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctdogaga, 39.1, 351.6 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdogaga, 24.6, 354 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdogaga, 36.9, 355.1 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdogaga, 27.4, 352.7 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdogaga, 20.9, 353 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctdogaga, 29.3, 346.3 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctdogaga, 24.5, 360.4 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctdogaga, 23.4, 345.7 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctdogaga, 21.8, 358.7 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctdogaga, 20.9, 355.9 , 0 );
setEffMoveKey( spep_1 -3 + 69, ctdogaga, 20.9, 355.9 , 0 );
setEffScaleKey( spep_1 -3 + 12, ctdogaga, 2.61, 2.61 );
setEffScaleKey( spep_1 -3 + 69, ctdogaga, 2.61, 2.61 );
setEffRotateKey( spep_1 -3 + 12, ctdogaga, -5 );
setEffRotateKey( spep_1 -3 + 69, ctdogaga, -5 );
setEffAlphaKey( spep_1 -3 + 12, ctdogaga, 85 );
setEffAlphaKey( spep_1 -3 + 14, ctdogaga, 170 );
setEffAlphaKey( spep_1 -3 + 16, ctdogaga, 255 );
setEffAlphaKey( spep_1 -3 + 69, ctdogaga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 70, 1, 0 );
setDisp( spep_1 -3 + 114, 1, 1 );
--setDisp( spep_1 -3 + 139, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 14, 1, 108 );
changeAnime( spep_1 -3 + 24, 1, 106 );
changeAnime( spep_1 -3 + 44, 1, 108 );
changeAnime( spep_1 -3 + 54, 1, 106 );
changeAnime( spep_1 -3 + 64, 1, 108 );

changeAnime( spep_1 -3 + 114, 1, 108 );
changeAnime( spep_1 -3 + 116, 1, 106 );

setMoveKey( spep_1 + 0, 1, 668.6, -2 , 0 );
setMoveKey( spep_1 + 1, 1, 565.5, -1.9 , 0 );
setMoveKey( spep_1 + 2, 1, 461.3, -1.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 357.1, -1.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 252.9, -1.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 148.7, -1.9 , 0 );
setMoveKey( spep_1 -3 + 13, 1, 148.5, -1.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 148.5, 87.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 148.5, 67.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 148.5, 87.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 148.5, 77.1 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 148.5, 77.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 130, 39.6 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 130, 19.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 130, 39.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 130, 37.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 130, 32.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 139.4, 37.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 139.4, 57.5 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 139.4, 37.5 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 139.4, 37.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 158.3, 36.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 158.3, 56.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 168.3, 36.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 168.3, 36.9 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 173.3, 46.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 181, 18.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 171, -11.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 181, -1.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 181, -1.6 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 191, 3.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 203.2, 12.6 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 193.2, -17.4 , 0 );
setMoveKey( spep_1 -3 + 69, 1, 213.2, -7.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 213.2, -7.4 , 0 );
--
setMoveKey( spep_1 -3 + 114, 1, 278.6, 11.1 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 278.6, 11.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 314, 63.7 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 382.5, 66.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 450.9, 102.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 496.2, 94.5 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 541.6, 97 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 587.1, 93.5 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 609.3, 93.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 631.9, 92.7 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 654.4, 92.5 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 677.2, 92.4 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 769.2, 92.4 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 861.2, 92.4 , 0 );
--setMoveKey( spep_1 -3 + 139, 1, 861.2, 92.4 , 0 );

s1 = 0.1;
s2 = 0.25;
s3 = 0.1;
setScaleKey( spep_1 + 0, 1, 2.76 +s1, 2.76 +s1 );
setScaleKey( spep_1 -3 +13, 1, 2.76 +s1, 2.76 +s1 );
setScaleKey( spep_1 -3 +14, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +23, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +24, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 +43, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 +44, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +53, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +54, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 +63, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 +64, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +70, 1, 2.76 +s2, 2.76 +s2 );
--
setScaleKey( spep_1 -3 + 114, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 + 115, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 + 116, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 + 138, 1, 2.76 +s3, 2.76 +s3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 23, 1, 0 );
setRotateKey( spep_1 -3 + 24, 1, -49.7 );
setRotateKey( spep_1 -3 + 32, 1, -49.7 );
setRotateKey( spep_1 -3 + 34, 1, -40.9 );
setRotateKey( spep_1 -3 + 43, 1, -40.9 );
setRotateKey( spep_1 -3 + 44, 1, 3.5 );
setRotateKey( spep_1 -3 + 53, 1, 3.5 );
setRotateKey( spep_1 -3 + 54, 1, -35.7 );
setRotateKey( spep_1 -3 + 63, 1, -35.7 );
setRotateKey( spep_1 -3 + 64, 1, 0.2 );
setRotateKey( spep_1 -3 + 70, 1, 0.2 );
--
setRotateKey( spep_1 -3 + 114, 1, 0 );
setRotateKey( spep_1 -3 + 115, 1, 0 );
setRotateKey( spep_1 -3 + 116, 1, -21.2 );
setRotateKey( spep_1 -3 + 118, 1, -12.2 );
setRotateKey( spep_1 -3 + 120, 1, -5 );
setRotateKey( spep_1 -3 + 122, 1, 1.2 );
setRotateKey( spep_1 -3 + 124, 1, 6 );
setRotateKey( spep_1 -3 + 126, 1, 10.4 );
setRotateKey( spep_1 -3 + 128, 1, 15.4 );
setRotateKey( spep_1 -3 + 130, 1, 18.6 );
setRotateKey( spep_1 -3 + 132, 1, 21.8 );
setRotateKey( spep_1 -3 + 134, 1, 23.5 );
setRotateKey( spep_1 -3 + 138, 1, 23.5 );

-- ** 音 ** --
--ラッシュ
SE012 = playSeVer2( spep_1 + 4, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 14, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 14, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 22, 1013, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 22, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 22, SE017, -100 );
setTimeStretch( SE017, 0.93, 30, 4 );
SE018 = playSeVer2( spep_1 + 32, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 32, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 42, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 42, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 42, SE021, 100 );
setTimeStretch( SE021, 1.07, 30, 4 );
SE022 = playSeVer2( spep_1 + 52, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 52, 1110, "", 0, 0, 0, -1);

--向かってくる
SE024 = playSeVer2( spep_1 + 60, 9, "",spep_1 + 112, 0, 16, -1);

--振りかぶる
SE025 = playSeVer2( spep_1 + 90, 1004, "", 0, 0, 0, -1);

--キック
SE026 = playSeVer2( spep_1 + 106, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE027 = playSeVer2( spep_1 + 126, 1183, "",spep_1 +136 + 58, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 126, SE027, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;


------------------------------------------------------
-- 敵の吹っ飛び→ベジータ殴る(136F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
emove_f = entryEffectLife( spep_2 + 0, SP_04, 136, 0x100, -1, 0, 0, 0 );  --↓殴った時のエッフェクト    ef_003_attackeff
setEffMoveKey( spep_2 + 0, emove_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, emove_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, emove_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, emove_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, emove_f, 0 );
setEffRotateKey( spep_2 + 136, emove_f, 0 );
setEffAlphaKey( spep_2 + 0, emove_f, 255 );
setEffAlphaKey( spep_2 + 136 -1, emove_f, 255 );
setEffAlphaKey( spep_2 + 136, emove_f, 0 );

emove_b = entryEffectLife( spep_2 + 0, SP_05, 136, 0x80, -1, 0, 0, 0 );  --敵の吹っ飛び→ベジータ殴る ef_003
setEffMoveKey( spep_2 + 0, emove_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, emove_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, emove_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 136, emove_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, emove_b, 0 );
setEffRotateKey( spep_2 + 136, emove_b, 0 );
setEffAlphaKey( spep_2 + 0, emove_b, 255 );
setEffAlphaKey( spep_2 + 136 -1, emove_b, 255 );
setEffAlphaKey( spep_2 + 136, emove_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 44 -1, 906, 16 -1, 0x100, -1, 0, 100, 0 );  --集中線
setEffShake( spep_2 + 44 -1, shuchusen1, 16, 20 );
setEffMoveKey( spep_2 + 44 -1, shuchusen1, 100, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen1, 100, 0 , 0 );
setEffScaleKey( spep_2 + 44 -1, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 58, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_2 + 44 -1, shuchusen1, 0 );
setEffRotateKey( spep_2 + 58, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 44 -1, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_2 -3 + 62,  10020, 16, 0x100, -1, 0, 3.2, 249.5 );   --バキッ
setEffMoveKey( spep_2 -3 + 62, ctbaki, 3.2, 249.5 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctbaki, 2.7, 368.5 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctbaki, -4.3, 366.3 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctbaki, -1.4, 355.9 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctbaki, -8, 353.3 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctbaki, -5.6, 343.2 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctbaki, -8.1, 344.9 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctbaki, 1.1, 335.8 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctbaki, 9.4, 326.6 , 0 );
setEffScaleKey( spep_2 -3 + 62, ctbaki, 1.29, 1.29 );
setEffScaleKey( spep_2 -3 + 64, ctbaki, 2.59, 2.59 );
setEffScaleKey( spep_2 -3 + 66, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 68, ctbaki, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 70, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_2 -3 + 72, ctbaki, 2.16, 2.16 );
setEffScaleKey( spep_2 -3 + 74, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_2 -3 + 76, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_2 -3 + 78, ctbaki, 1.94, 1.94 );
setEffRotateKey( spep_2 -3 + 62, ctbaki, -16.8 );
setEffRotateKey( spep_2 -3 + 78, ctbaki, -16.8 );
setEffAlphaKey( spep_2 -3 + 62, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 72, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 74, ctbaki, 230 );
setEffAlphaKey( spep_2 -3 + 76, ctbaki, 153 );
setEffAlphaKey( spep_2 -3 + 78, ctbaki, 26 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 78, 1, 0 );
changeAnime( spep_2 + 0, 1, 107 );
changeAnime( spep_2 -3 + 30, 1, 105 );
changeAnime( spep_2 -3 + 62, 1, 7 );

setMoveKey( spep_2 + 0, 1, 17.4      -26, 38.2, 0 );
setMoveKey( spep_2 + 1, 1, 17.9      -26, 35.7, 0 );
setMoveKey( spep_2 + 2, 1, 18.3      -26, 33.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 18.8   -27, 30.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 19.3   -27, 28.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 19.8  -27, 25.9 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 20.3  -27, 23.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 20.7  -28, 21 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 21.2  -28, 18.6 , 0 )
setMoveKey( spep_2 -3 + 18, 1, 25    -30, 7.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 28.9  -35, -3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 32.7  -40, -13.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 81.5  -60, -85.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 130.2 -80, -157.7 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 179   -90, -259.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -405.9, -184.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -336  , -155.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -266  , -126.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -196  , -97 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -126  , -67.8 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -56   , -38.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 14    , -9.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 84    , 19.8 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 84    , 19.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -405.3, -189 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -350.8, -165.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -296.3, -141.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -241.8, -117.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -187.2, -93.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -132.7, -70.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -78.2 , -46.3 , 0 );
setMoveKey( spep_2 -3 + 61, 1, -23.7 , -22.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -102, 152.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -239.5, 204.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -370.2, 233.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -460.9, 291.6 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -581.5, 450 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -726.5, 453 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -896.5, 504.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -1058.5, 605.3 , 0 );
--setMoveKey( spep_2 -3 + 78, 1, -1038.5, 565.3 , 0 );
--setMoveKey( spep_2 -3 + 80, 1, -1038.5, 625.3 , 0 );
--setMoveKey( spep_2 -3 + 91, 1, -1038.5, 625.3 , 0 );

setScaleKey( spep_2 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 1, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 2, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 6, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 8, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 10, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 12, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 14, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 16, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 18, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 20, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 22, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 26, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 29, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 30, 1, 6, 6 );
setScaleKey( spep_2 -3 + 32, 1, 5.29, 5.29 );
setScaleKey( spep_2 -3 + 34, 1, 4.57, 4.57 );
setScaleKey( spep_2 -3 + 36, 1, 3.86, 3.86 );
setScaleKey( spep_2 -3 + 38, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 40, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 42, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 44, 1, 1, 1 );
setScaleKey( spep_2 -3 + 45, 1, 1, 1 );
setScaleKey( spep_2 -3 + 46, 1, 5.5, 5.5 );
setScaleKey( spep_2 -3 + 48, 1, 5.04, 5.04 );
setScaleKey( spep_2 -3 + 50, 1, 4.59, 4.59 );
setScaleKey( spep_2 -3 + 52, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 54, 1, 3.67, 3.67 );
setScaleKey( spep_2 -3 + 56, 1, 3.21, 3.21 );
setScaleKey( spep_2 -3 + 58, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 61, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 62, 1, 1.584, 1.584 );
setScaleKey( spep_2 -3 + 64, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 66, 1, 2.076, 2.076 );
setScaleKey( spep_2 -3 + 68, 1, 2.4839999999999995, 2.4839999999999995 );
setScaleKey( spep_2 -3 + 70, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 76, 1, 2.88, 2.88 );


r1 = 50;
r2 = 40;
setRotateKey( spep_2 + 0, 1 , 76.2-r1 );
setRotateKey( spep_2 -3 + 29, 1, 76.2-r1 );
setRotateKey( spep_2 -3 + 30, 1, 0 );
setRotateKey( spep_2 -3 + 61, 1, 0 );
setRotateKey( spep_2 -3 + 62, 1, 18.8 +r2 );
setRotateKey( spep_2 -3 + 76, 1, 18.8 +r2 );

-- ** 音 ** --
--瞬間移動
SE028 = playSeVer2( spep_2 + 20, 1109, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 94, 1109, "", 0, 0, 0, -1);

--ベジータ殴る
SE029 = playSeVer2( spep_2 + 50, 1120, "", 0, 0, 0, -1);

--オーラ
SE030 = playSeVer2( spep_2 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE030, 63 );
SE032 = playSeVer2( spep_2 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE032, 63 );
SE034 = playSeVer2( spep_2 + 126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE034, 63 );

--顔カットイン
SE033 = playSeVer2( spep_2 + 132, 1018, "", 0, 0, 0, -1);   


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;


------------------------------------------------------
-- 会話後ギャリック砲を充填(256F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_06, 256, 0x100, -1, 0, 0, 0 );  --会話後ギャリック砲を充填    ef_004_r
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 256, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 256, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 256, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 256 -1, tame, 255 );
setEffAlphaKey( spep_3 + 256, tame, 0 );

-- ** 音 ** --
--オーラ
SE035 = playSeVer2( spep_3 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 20, SE035, 63 );
SE036 = playSeVer2( spep_3 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE036, 63 );
SE038 = playSeVer2( spep_3 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE038, 63 );
SE041 = playSeVer2( spep_3 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 92, SE041, 63 );
SE042 = playSeVer2( spep_3 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 116, SE042, 63 );
SE043 = playSeVer2( spep_3 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 140, SE043, 63 );
SE044 = playSeVer2( spep_3 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 164, SE044, 63 );
SE046 = playSeVer2( spep_3 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 188, SE046, 63 );
SE047 = playSeVer2( spep_3 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 212, SE047, 63 );
SE051 = playSeVer2( spep_3 + 236, 1036, "",spep_3 + 256, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 236, SE051, 63 );

--ベジータ構える
SE037 = playSeVer2( spep_3 + 44, 1116, "",spep_3 + 82, 0, 18, -1);
SE039 = playSeVer2( spep_3 + 72, 1233, "", 0, 0, 0, -1);
setPitch( spep_3 + 72, SE039, -300 );
setTimeStretch( SE039, 0.8, 30, 4 );
SE040 = playSeVer2( spep_3 + 82, 1006, "", 0, 0, 0, -1);
setPitch( spep_3 + 82, SE040, -200 );
setTimeStretch( SE040, 0.87, 30, 4 );

--キャベ構える
SE045 = playSeVer2( spep_3 + 178, 1003, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_3 + 218, 1233, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_3 + 224, 1006, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 256 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 256;


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

--気弾溜め
SE050 = playSeVer2( spep_4 + 86, 1210, "",spep_4 +94 + 72, 10, 10, -1);
setStartTimeMs( SE050,  1517 );

--オーラ
SE053 = playSeVer2( spep_4 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 86, SE053, 71 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 横アップから発射(176F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_5 + 0, SP_07, 176, 0x100, -1, 0, 0, 0 );  --横アップから発射   ef_005
setEffMoveKey( spep_5 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 176, shot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_5 + 176, shot, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot, 0 );
setEffRotateKey( spep_5 + 176, shot, 0 );
setEffAlphaKey( spep_5 + 0, shot, 255 );
setEffAlphaKey( spep_5 + 176 -1, shot, 255 );
setEffAlphaKey( spep_5 + 176, shot, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 -3 + 74,  10012, 26, 0x100, -1, 0, 148.4, 104.8 );  --ズオッ
setEffMoveKey( spep_5 -3 + 74, ctzuo, 148.4, 104.8 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctzuo, 143.1, 105.4 , 0 );
setEffMoveKey( spep_5 -3 + 78, ctzuo, 152.6, 99.1 , 0 );
setEffMoveKey( spep_5 -3 + 80, ctzuo, 148.9, 113.6 , 0 );
setEffMoveKey( spep_5 -3 + 82, ctzuo, 149, 99.3 , 0 );
setEffMoveKey( spep_5 -3 + 84, ctzuo, 148.6, 112.7 , 0 );
setEffMoveKey( spep_5 -3 + 86, ctzuo, 150.5, 98.6 , 0 );
setEffMoveKey( spep_5 -3 + 88, ctzuo, 148.8, 110.3 , 0 );
setEffMoveKey( spep_5 -3 + 90, ctzuo, 148.8, 110.3 , 0 );
setEffMoveKey( spep_5 -3 + 92, ctzuo, 145.9, 95 , 0 );
setEffMoveKey( spep_5 -3 + 94, ctzuo, 148.9, 114.5 , 0 );
setEffMoveKey( spep_5 -3 + 96, ctzuo, 143.1, 101.2 , 0 );
setEffMoveKey( spep_5 -3 + 98, ctzuo, 153.8, 107.1 , 0 );
setEffMoveKey( spep_5 -3 + 100, ctzuo, 153.8, 107.1 , 0 );

setEffScaleKey( spep_5 -3 + 74, ctzuo, 2.08, 2.08 );
setEffScaleKey( spep_5 -3 + 100, ctzuo, 2.08, 2.08 );

r5 = 30;
setEffRotateKey( spep_5 -3 + 74, ctzuo, 0 +r5);
setEffRotateKey( spep_5 -3 + 100, ctzuo, 0 +r5);

setEffAlphaKey( spep_5 -3 + 74, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 90, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 92, ctzuo, 204 );
setEffAlphaKey( spep_5 -3 + 94, ctzuo, 153 );
setEffAlphaKey( spep_5 -3 + 96, ctzuo, 102 );
setEffAlphaKey( spep_5 -3 + 98, ctzuo, 51 );
setEffAlphaKey( spep_5 -3 + 100, ctzuo, 0 );

-- ** 音 ** --
--オーラ
SE054 = playSeVer2( spep_5 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 16, SE054, 71 );
SE055 = playSeVer2( spep_5 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE055, 71 );

--気弾発射
SE056 = playSeVer2( spep_5 + 62, 1027, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_5 + 62, 1146, "", 0, 0, 0, -1);

--ベジータ気弾発射
SE058 = playSeVer2( spep_5 + 90, 1213, "",spep_5 +176 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 90, SE058, 79 );

--気弾飛んでいく
SE059 = playSeVer2( spep_5 + 146, 1193, "",spep_5 +176 + 116, 10, 10, -1);
setStartTimeMs( SE059,  817 );
SE060 = playSeVer2( spep_5 + 146, 1215, "",spep_5 +176 + 62, 10, 16, -1);
setStartTimeMs( SE060,  817 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 176;


------------------------------------------------------
-- 気弾的貫通、フィニッシュ(236F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --気弾的貫通、フィニッシュ    ef_006_ch
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 236, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 236, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 236, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --↑背景  ef_006_bg
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 236, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 236, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 236, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 +42, 1, 1 );
setDisp( spep_6 -3 + 58, 1, 0 );
setDisp( spep_6 -3 + 60, 1, 1 );
setDisp( spep_6 -3 + 118, 1, 0 );
changeAnime( spep_6 -3 + 42, 1, 107 );
changeAnime( spep_6 -3 + 60, 1, 108 );
changeAnime( spep_6 -3 + 80, 1, 106 );

setBlendColor( spep_6 -3 + 60 -1, 1, 3, 0.82, 0.57, 1, 0.12 );
setBlendColor( spep_6 -3 + 62 -1, 1, 3, 0.82, 0.57, 1, 0.24 );
setBlendColor( spep_6 -3 + 64 -1, 1, 3, 0.82, 0.57, 1, 0.36 );
setBlendColor( spep_6 -3 + 66 -1, 1, 3, 0.82, 0.57, 1, 0.48 );
setBlendColor( spep_6 -3 + 68 -1, 1, 3, 0.82, 0.57, 1, 0.6 );
setBlendColor( spep_6 -3 + 117 -1, 1, 3, 0.82, 0.57, 1, 0.6 );
setBlendColor( spep_6 -3 + 118 -1, 1, 3, 0.82, 0.57, 1, 0 );

setMoveKey( spep_6 -3 + 42, 1, 770, 707.3 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 664.3, 611 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 558.7, 514.8 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 453.1, 418.6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 347.4, 322.3 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 241.8, 226.1 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 136.2, 129.9 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 136.2, 129.9 , 0 );
--
setMoveKey( spep_6 -3 + 60, 1, 0.1, -7.8 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 0.8, 7.2 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 1.5, -8 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 2.2, 6.9 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 2.9, -8.3 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 3.6, 6.7 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 4.3, -8.5 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 11.1, 9.4 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 17.8, -2.8 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 30.5, 15.1 , 0 );
setMoveKey( spep_6 -3 + 79, 1, 30.5, 15.1 , 0 );
--
setMoveKey( spep_6 -3 + 80, 1, -16.8, 76.7 , 0 );
setMoveKey( spep_6 -3 + 82, 1, -4, 89.6 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 10.2, 85.1 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 28.6, 110.6 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 47.2, 114.8 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 47.2, 127.8 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 47.2, 114.5 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 47.2, 127.5 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 47.2, 114.3 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 47.2, 126.3 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 47.2, 114 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 47.2, 126 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 47.2, 113.7 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 47.2, 125.7 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 47.2, 113.5 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 47.2, 124.4 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 47.2, 113.2 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 47.2, 124.2 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 47.2, 113 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 47.2, 124 , 0 );


setScaleKey( spep_6 -3 + 42, 1, 2, 2 );
setScaleKey( spep_6 -3 + 44, 1, 1.92, 1.92 );
setScaleKey( spep_6 -3 + 46, 1, 1.83, 1.83 );
setScaleKey( spep_6 -3 + 48, 1, 1.75, 1.75 );
setScaleKey( spep_6 -3 + 50, 1, 1.67, 1.67 );
setScaleKey( spep_6 -3 + 52, 1, 1.58, 1.58 );
setScaleKey( spep_6 -3 + 54, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 58, 1, 1.5, 1.5 );
--
setScaleKey( spep_6 -3 + 60, 1, 3.3, 3.3 );
setScaleKey( spep_6 -3 + 79, 1, 3.3, 3.3 );
--
setScaleKey( spep_6 -3 + 80, 1, 3, 3 );
setScaleKey( spep_6 -3 + 118, 1, 3, 3 );


setRotateKey( spep_6 -3 + 42, 1, 15.3 );
setRotateKey( spep_6 -3 + 44, 1, 15.5 );
setRotateKey( spep_6 -3 + 54, 1, 15.5 );
setRotateKey( spep_6 -3 + 58, 1, 15.5 );
--
setRotateKey( spep_6 -3 + 60, 1, 0 );
setRotateKey( spep_6 -3 + 72, 1, 0 );
setRotateKey( spep_6 -3 + 74, 1, 3.5 );
setRotateKey( spep_6 -3 + 76, 1, 6.5 );
setRotateKey( spep_6 -3 + 78, 1, 10 );
setRotateKey( spep_6 -3 + 79, 1, 10 );
--
setRotateKey( spep_6 -3 + 80, 1, -43.4 );
setRotateKey( spep_6 -3 + 82, 1, -39.4 );
setRotateKey( spep_6 -3 + 84, 1, -38 );
setRotateKey( spep_6 -3 + 86, 1, -35.7 );
setRotateKey( spep_6 -3 + 88, 1, -32.8 );
setRotateKey( spep_6 -3 + 118, 1, -32.8 );

-- ** 音 ** --
--敵飲み込まれる
SE061 = playSeVer2( spep_6 + 56, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 56, SE061, 126 );
SE062 = playSeVer2( spep_6 + 56, 1017, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_6 + 66, 1258, "",spep_6 + 130, 0, 28, -1);
setSeVolumeByWorkId( spep_6 + 66, SE063, 72 );

--爆発
SE064 = playSeVer2( spep_6 + 114, 1023, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_6 + 114, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 116, SE065, 82 );
SE066 = playSeVer2( spep_6 + 128, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 126 );
endPhase( spep_6 + 226 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面構え→ダッシュで突進(126F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 126, 0x100, -1, 0, 0, 0 );  --正面構え→ダッシュで突進    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 126, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 126, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 126 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 126, first_f, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );

--構える
SE002 = playSeVer2( spep_0 + 0, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 6, 1012, "", 0, 0, 0, -1);
setPitch( spep_0 + 6, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--画面遷移
SE005 = playSeVer2( spep_0 + 24, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 78 );

--オーラ
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 71 );
SE006 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 71 );
SE007 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE007, 71 );

--向かってくる
SE008 = playSeVer2( spep_0 + 72, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 72, 44, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 72, 1314, "",spep_0 +126 + 14, 0, 12, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 114 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
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

-- ** 音 ** --
--ラッシュ
SE011 = playSeVer2( spep_0 + 130, 1189, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;


------------------------------------------------------
-- 敵にラッシュ(136F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02r, 136, 0x100, -1, 0, 0, 0 );  --敵にラッシュ   ef_002_ch
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 136, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 136, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 136 -1, rush_f, 255 );
setEffAlphaKey( spep_1 + 136, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_03r, 136, 0x80, -1, 0, 0, 0 );  --↑背景   ef_002_bg
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 136, rush_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 136, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 136 -1, rush_b, 255 );
setEffAlphaKey( spep_1 + 136, rush_b, 0 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_1 -3 + 12,  10017, 56 +1, 0x100, -1, 0, 31.8, 351 );   --ドガガガッ
setEffMoveKey( spep_1 -3 + 12, ctdogaga, 31.8, 351 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctdogaga, 48, 349.7 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctdogaga, 50.5, 360.4 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctdogaga, 44, 360.7 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctdogaga, 52.4, 353.9 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctdogaga, 47.6, 368 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdogaga, 46.5, 353.4 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdogaga, 44.9, 366.4 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdogaga, 45.6, 351.9 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdogaga, 42.8, 363.2 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdogaga, 38.8, 347.6 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdogaga, 40.6, 366.6 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctdogaga, 33.6, 353 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdogaga, 43.2, 358.4 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctdogaga, 34.4, 347 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctdogaga, 39.5, 363.9 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctdogaga, 28, 349.8 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctdogaga, 41.3, 357.8 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctdogaga, 28.1, 350.9 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctdogaga, 39.1, 351.6 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdogaga, 24.6, 354 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdogaga, 36.9, 355.1 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdogaga, 27.4, 352.7 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdogaga, 20.9, 353 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctdogaga, 29.3, 346.3 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctdogaga, 24.5, 360.4 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctdogaga, 23.4, 345.7 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctdogaga, 21.8, 358.7 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctdogaga, 20.9, 355.9 , 0 );
setEffMoveKey( spep_1 -3 + 69, ctdogaga, 20.9, 355.9 , 0 );
setEffScaleKey( spep_1 -3 + 12, ctdogaga, 2.61, 2.61 );
setEffScaleKey( spep_1 -3 + 69, ctdogaga, 2.61, 2.61 );
setEffRotateKey( spep_1 -3 + 12, ctdogaga, -5 );
setEffRotateKey( spep_1 -3 + 69, ctdogaga, -5 );
setEffAlphaKey( spep_1 -3 + 12, ctdogaga, 85 );
setEffAlphaKey( spep_1 -3 + 14, ctdogaga, 170 );
setEffAlphaKey( spep_1 -3 + 16, ctdogaga, 255 );
setEffAlphaKey( spep_1 -3 + 69, ctdogaga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 70, 1, 0 );
setDisp( spep_1 -3 + 114, 1, 1 );
--setDisp( spep_1 -3 + 139, 1, 0 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 14, 1, 108 );
changeAnime( spep_1 -3 + 24, 1, 106 );
changeAnime( spep_1 -3 + 44, 1, 108 );
changeAnime( spep_1 -3 + 54, 1, 106 );
changeAnime( spep_1 -3 + 64, 1, 108 );

changeAnime( spep_1 -3 + 114, 1, 108 );
changeAnime( spep_1 -3 + 116, 1, 106 );

setMoveKey( spep_1 + 0, 1, 668.6, -2 , 0 );
setMoveKey( spep_1 + 1, 1, 565.5, -1.9 , 0 );
setMoveKey( spep_1 + 2, 1, 461.3, -1.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 357.1, -1.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 252.9, -1.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 148.7, -1.9 , 0 );
setMoveKey( spep_1 -3 + 13, 1, 148.5, -1.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 148.5, 87.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 148.5, 67.1 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 148.5, 87.1 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 148.5, 77.1 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 148.5, 77.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 130, 39.6 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 130, 19.6 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 130, 39.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 130, 37.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 130, 32.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 139.4, 37.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 139.4, 57.5 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 139.4, 37.5 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 139.4, 37.5 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 158.3, 36.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 158.3, 56.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 168.3, 36.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 168.3, 36.9 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 173.3, 46.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 181, 18.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 171, -11.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 181, -1.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 181, -1.6 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 191, 3.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 203.2, 12.6 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 193.2, -17.4 , 0 );
setMoveKey( spep_1 -3 + 69, 1, 213.2, -7.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 213.2, -7.4 , 0 );
--
setMoveKey( spep_1 -3 + 114, 1, 278.6, 11.1 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 278.6, 11.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 314, 63.7 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 382.5, 66.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 450.9, 102.4 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 496.2, 94.5 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 541.6, 97 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 587.1, 93.5 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 609.3, 93.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 631.9, 92.7 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 654.4, 92.5 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 677.2, 92.4 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 769.2, 92.4 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 861.2, 92.4 , 0 );
--setMoveKey( spep_1 -3 + 139, 1, 861.2, 92.4 , 0 );

s1 = 0.1;
s2 = 0.25;
s3 = 0.1;
setScaleKey( spep_1 + 0, 1, 2.76 +s1, 2.76 +s1 );
setScaleKey( spep_1 -3 +13, 1, 2.76 +s1, 2.76 +s1 );
setScaleKey( spep_1 -3 +14, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +23, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +24, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 +43, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 +44, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +53, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +54, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 +63, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 +64, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 +70, 1, 2.76 +s2, 2.76 +s2 );
--
setScaleKey( spep_1 -3 + 114, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 + 115, 1, 2.76 +s2, 2.76 +s2 );
setScaleKey( spep_1 -3 + 116, 1, 2.76 +s3, 2.76 +s3 );
setScaleKey( spep_1 -3 + 138, 1, 2.76 +s3, 2.76 +s3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 23, 1, 0 );
setRotateKey( spep_1 -3 + 24, 1, -49.7 );
setRotateKey( spep_1 -3 + 32, 1, -49.7 );
setRotateKey( spep_1 -3 + 34, 1, -40.9 );
setRotateKey( spep_1 -3 + 43, 1, -40.9 );
setRotateKey( spep_1 -3 + 44, 1, 3.5 );
setRotateKey( spep_1 -3 + 53, 1, 3.5 );
setRotateKey( spep_1 -3 + 54, 1, -35.7 );
setRotateKey( spep_1 -3 + 63, 1, -35.7 );
setRotateKey( spep_1 -3 + 64, 1, 0.2 );
setRotateKey( spep_1 -3 + 70, 1, 0.2 );
--
setRotateKey( spep_1 -3 + 114, 1, 0 );
setRotateKey( spep_1 -3 + 115, 1, 0 );
setRotateKey( spep_1 -3 + 116, 1, -21.2 );
setRotateKey( spep_1 -3 + 118, 1, -12.2 );
setRotateKey( spep_1 -3 + 120, 1, -5 );
setRotateKey( spep_1 -3 + 122, 1, 1.2 );
setRotateKey( spep_1 -3 + 124, 1, 6 );
setRotateKey( spep_1 -3 + 126, 1, 10.4 );
setRotateKey( spep_1 -3 + 128, 1, 15.4 );
setRotateKey( spep_1 -3 + 130, 1, 18.6 );
setRotateKey( spep_1 -3 + 132, 1, 21.8 );
setRotateKey( spep_1 -3 + 134, 1, 23.5 );
setRotateKey( spep_1 -3 + 138, 1, 23.5 );

-- ** 音 ** --
--ラッシュ
SE012 = playSeVer2( spep_1 + 4, 1009, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 4, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 14, 1000, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 14, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 22, 1013, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 22, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 22, SE017, -100 );
setTimeStretch( SE017, 0.93, 30, 4 );
SE018 = playSeVer2( spep_1 + 32, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 32, 1110, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 42, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 42, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 42, SE021, 100 );
setTimeStretch( SE021, 1.07, 30, 4 );
SE022 = playSeVer2( spep_1 + 52, 1009, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_1 + 52, 1110, "", 0, 0, 0, -1);

--向かってくる
SE024 = playSeVer2( spep_1 + 60, 9, "",spep_1 + 112, 0, 16, -1);

--振りかぶる
SE025 = playSeVer2( spep_1 + 90, 1004, "", 0, 0, 0, -1);

--キック
SE026 = playSeVer2( spep_1 + 106, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE027 = playSeVer2( spep_1 + 126, 1183, "",spep_1 +136 + 58, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 126, SE027, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;


------------------------------------------------------
-- 敵の吹っ飛び→ベジータ殴る(136F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
emove_f = entryEffectLife( spep_2 + 0, SP_04, 136, 0x100, -1, 0, 0, 0 );  --↓殴った時のエッフェクト    ef_003_attackeff
setEffMoveKey( spep_2 + 0, emove_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, emove_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, emove_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 136, emove_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, emove_f, 0 );
setEffRotateKey( spep_2 + 136, emove_f, 0 );
setEffAlphaKey( spep_2 + 0, emove_f, 255 );
setEffAlphaKey( spep_2 + 136 -1, emove_f, 255 );
setEffAlphaKey( spep_2 + 136, emove_f, 0 );

emove_b = entryEffectLife( spep_2 + 0, SP_05r, 136, 0x80, -1, 0, 0, 0 );  --敵の吹っ飛び→ベジータ殴る ef_003
setEffMoveKey( spep_2 + 0, emove_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 136, emove_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, emove_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 136, emove_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, emove_b, 0 );
setEffRotateKey( spep_2 + 136, emove_b, 0 );
setEffAlphaKey( spep_2 + 0, emove_b, 255 );
setEffAlphaKey( spep_2 + 136 -1, emove_b, 255 );
setEffAlphaKey( spep_2 + 136, emove_b, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 44 -1, 906, 16 -1, 0x100, -1, 0, 100, 0 );  --集中線
setEffShake( spep_2 + 44 -1, shuchusen1, 16, 20 );
setEffMoveKey( spep_2 + 44 -1, shuchusen1, 100, 0 , 0 );
setEffMoveKey( spep_2 + 58, shuchusen1, 100, 0 , 0 );
setEffScaleKey( spep_2 + 44 -1, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 58, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_2 + 44 -1, shuchusen1, 0 );
setEffRotateKey( spep_2 + 58, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 44 -1, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 58, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_2 -3 + 62,  10020, 16, 0x100, -1, 0, 3.2, 249.5 );   --バキッ
setEffMoveKey( spep_2 -3 + 62, ctbaki, 3.2, 249.5 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctbaki, 2.7, 368.5 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctbaki, -4.3, 366.3 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctbaki, -1.4, 355.9 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctbaki, -8, 353.3 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctbaki, -5.6, 343.2 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctbaki, -8.1, 344.9 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctbaki, 1.1, 335.8 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctbaki, 9.4, 326.6 , 0 );
setEffScaleKey( spep_2 -3 + 62, ctbaki, 1.29, 1.29 );
setEffScaleKey( spep_2 -3 + 64, ctbaki, 2.59, 2.59 );
setEffScaleKey( spep_2 -3 + 66, ctbaki, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 68, ctbaki, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 70, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_2 -3 + 72, ctbaki, 2.16, 2.16 );
setEffScaleKey( spep_2 -3 + 74, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_2 -3 + 76, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_2 -3 + 78, ctbaki, 1.94, 1.94 );
setEffRotateKey( spep_2 -3 + 62, ctbaki, -16.8 );
setEffRotateKey( spep_2 -3 + 78, ctbaki, -16.8 );
setEffAlphaKey( spep_2 -3 + 62, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 72, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 74, ctbaki, 230 );
setEffAlphaKey( spep_2 -3 + 76, ctbaki, 153 );
setEffAlphaKey( spep_2 -3 + 78, ctbaki, 26 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 78, 1, 0 );
changeAnime( spep_2 + 0, 1, 107 );
changeAnime( spep_2 -3 + 30, 1, 105 );
changeAnime( spep_2 -3 + 62, 1, 7 );

setMoveKey( spep_2 + 0, 1, 17.4      -26, 38.2, 0 );
setMoveKey( spep_2 + 1, 1, 17.9      -26, 35.7, 0 );
setMoveKey( spep_2 + 2, 1, 18.3      -26, 33.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 18.8   -27, 30.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 19.3   -27, 28.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 19.8  -27, 25.9 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 20.3  -27, 23.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 20.7  -28, 21 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 21.2  -28, 18.6 , 0 )
setMoveKey( spep_2 -3 + 18, 1, 25    -30, 7.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 28.9  -35, -3 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 32.7  -40, -13.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 81.5  -60, -85.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 130.2 -80, -157.7 , 0 );
setMoveKey( spep_2 -3 + 29, 1, 179   -90, -259.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -405.9, -184.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -336  , -155.4 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -266  , -126.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -196  , -97 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -126  , -67.8 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -56   , -38.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 14    , -9.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 84    , 19.8 , 0 );
setMoveKey( spep_2 -3 + 45, 1, 84    , 19.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -405.3, -189 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -350.8, -165.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -296.3, -141.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -241.8, -117.6 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -187.2, -93.8 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -132.7, -70.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -78.2 , -46.3 , 0 );
setMoveKey( spep_2 -3 + 61, 1, -23.7 , -22.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -102, 152.4 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -239.5, 204.8 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -370.2, 233.2 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -460.9, 291.6 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -581.5, 450 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -726.5, 453 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -896.5, 504.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -1058.5, 605.3 , 0 );
--setMoveKey( spep_2 -3 + 78, 1, -1038.5, 565.3 , 0 );
--setMoveKey( spep_2 -3 + 80, 1, -1038.5, 625.3 , 0 );
--setMoveKey( spep_2 -3 + 91, 1, -1038.5, 625.3 , 0 );

setScaleKey( spep_2 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 1, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 2, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 6, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 8, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 10, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 12, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 14, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 16, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 18, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 20, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 22, 1, 0.4, 0.4 );
setScaleKey( spep_2 -3 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 26, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 29, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 30, 1, 6, 6 );
setScaleKey( spep_2 -3 + 32, 1, 5.29, 5.29 );
setScaleKey( spep_2 -3 + 34, 1, 4.57, 4.57 );
setScaleKey( spep_2 -3 + 36, 1, 3.86, 3.86 );
setScaleKey( spep_2 -3 + 38, 1, 3.14, 3.14 );
setScaleKey( spep_2 -3 + 40, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 42, 1, 1.71, 1.71 );
setScaleKey( spep_2 -3 + 44, 1, 1, 1 );
setScaleKey( spep_2 -3 + 45, 1, 1, 1 );
setScaleKey( spep_2 -3 + 46, 1, 5.5, 5.5 );
setScaleKey( spep_2 -3 + 48, 1, 5.04, 5.04 );
setScaleKey( spep_2 -3 + 50, 1, 4.59, 4.59 );
setScaleKey( spep_2 -3 + 52, 1, 4.13, 4.13 );
setScaleKey( spep_2 -3 + 54, 1, 3.67, 3.67 );
setScaleKey( spep_2 -3 + 56, 1, 3.21, 3.21 );
setScaleKey( spep_2 -3 + 58, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 61, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 62, 1, 1.584, 1.584 );
setScaleKey( spep_2 -3 + 64, 1, 1.68, 1.68 );
setScaleKey( spep_2 -3 + 66, 1, 2.076, 2.076 );
setScaleKey( spep_2 -3 + 68, 1, 2.4839999999999995, 2.4839999999999995 );
setScaleKey( spep_2 -3 + 70, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 76, 1, 2.88, 2.88 );


r1 = 50;
r2 = 40;
setRotateKey( spep_2 + 0, 1 , 76.2-r1 );
setRotateKey( spep_2 -3 + 29, 1, 76.2-r1 );
setRotateKey( spep_2 -3 + 30, 1, 0 );
setRotateKey( spep_2 -3 + 61, 1, 0 );
setRotateKey( spep_2 -3 + 62, 1, 18.8 +r2 );
setRotateKey( spep_2 -3 + 76, 1, 18.8 +r2 );

-- ** 音 ** --
--瞬間移動
SE028 = playSeVer2( spep_2 + 20, 1109, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 94, 1109, "", 0, 0, 0, -1);

--ベジータ殴る
SE029 = playSeVer2( spep_2 + 50, 1120, "", 0, 0, 0, -1);

--オーラ
SE030 = playSeVer2( spep_2 + 78, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE030, 63 );
SE032 = playSeVer2( spep_2 + 102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE032, 63 );
SE034 = playSeVer2( spep_2 + 126, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE034, 63 );

--顔カットイン
SE033 = playSeVer2( spep_2 + 132, 1018, "", 0, 0, 0, -1);   


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 136;


------------------------------------------------------
-- 会話後ギャリック砲を充填(256F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_06r, 256, 0x100, -1, 0, 0, 0 );  --会話後ギャリック砲を充填    ef_004_r
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 256, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 256, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 256, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 256 -1, tame, 255 );
setEffAlphaKey( spep_3 + 256, tame, 0 );

-- ** 音 ** --
--オーラ
SE035 = playSeVer2( spep_3 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 20, SE035, 63 );
SE036 = playSeVer2( spep_3 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE036, 63 );
SE038 = playSeVer2( spep_3 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 68, SE038, 63 );
SE041 = playSeVer2( spep_3 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 92, SE041, 63 );
SE042 = playSeVer2( spep_3 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 116, SE042, 63 );
SE043 = playSeVer2( spep_3 + 140, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 140, SE043, 63 );
SE044 = playSeVer2( spep_3 + 164, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 164, SE044, 63 );
SE046 = playSeVer2( spep_3 + 188, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 188, SE046, 63 );
SE047 = playSeVer2( spep_3 + 212, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 212, SE047, 63 );
SE051 = playSeVer2( spep_3 + 236, 1036, "",spep_3 + 256, 0, 8, -1);
setSeVolumeByWorkId( spep_3 + 236, SE051, 63 );

--ベジータ構える
SE037 = playSeVer2( spep_3 + 44, 1116, "",spep_3 + 82, 0, 18, -1);
SE039 = playSeVer2( spep_3 + 72, 1233, "", 0, 0, 0, -1);
setPitch( spep_3 + 72, SE039, -300 );
setTimeStretch( SE039, 0.8, 30, 4 );
SE040 = playSeVer2( spep_3 + 82, 1006, "", 0, 0, 0, -1);
setPitch( spep_3 + 82, SE040, -200 );
setTimeStretch( SE040, 0.87, 30, 4 );

--キャベ構える
SE045 = playSeVer2( spep_3 + 178, 1003, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_3 + 218, 1233, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_3 + 224, 1006, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 256 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 256;


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

--気弾溜め
SE050 = playSeVer2( spep_4 + 86, 1210, "",spep_4 +94 + 72, 10, 10, -1);
setStartTimeMs( SE050,  1517 );

--オーラ
SE053 = playSeVer2( spep_4 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 86, SE053, 71 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 横アップから発射(176F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_5 + 0, SP_07r, 176, 0x100, -1, 0, 0, 0 );  --横アップから発射   ef_005
setEffMoveKey( spep_5 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 176, shot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_5 + 176, shot, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot, 0 );
setEffRotateKey( spep_5 + 176, shot, 0 );
setEffAlphaKey( spep_5 + 0, shot, 255 );
setEffAlphaKey( spep_5 + 176 -1, shot, 255 );
setEffAlphaKey( spep_5 + 176, shot, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_5 -3 + 74,  10012, 26, 0x100, -1, 0, 148.4, 104.8 );  --ズオッ
setEffMoveKey( spep_5 -3 + 74, ctzuo, 148.4, 104.8 , 0 );
setEffMoveKey( spep_5 -3 + 76, ctzuo, 143.1, 105.4 , 0 );
setEffMoveKey( spep_5 -3 + 78, ctzuo, 152.6, 99.1 , 0 );
setEffMoveKey( spep_5 -3 + 80, ctzuo, 148.9, 113.6 , 0 );
setEffMoveKey( spep_5 -3 + 82, ctzuo, 149, 99.3 , 0 );
setEffMoveKey( spep_5 -3 + 84, ctzuo, 148.6, 112.7 , 0 );
setEffMoveKey( spep_5 -3 + 86, ctzuo, 150.5, 98.6 , 0 );
setEffMoveKey( spep_5 -3 + 88, ctzuo, 148.8, 110.3 , 0 );
setEffMoveKey( spep_5 -3 + 90, ctzuo, 148.8, 110.3 , 0 );
setEffMoveKey( spep_5 -3 + 92, ctzuo, 145.9, 95 , 0 );
setEffMoveKey( spep_5 -3 + 94, ctzuo, 148.9, 114.5 , 0 );
setEffMoveKey( spep_5 -3 + 96, ctzuo, 143.1, 101.2 , 0 );
setEffMoveKey( spep_5 -3 + 98, ctzuo, 153.8, 107.1 , 0 );
setEffMoveKey( spep_5 -3 + 100, ctzuo, 153.8, 107.1 , 0 );

setEffScaleKey( spep_5 -3 + 74, ctzuo, 2.08, 2.08 );
setEffScaleKey( spep_5 -3 + 100, ctzuo, 2.08, 2.08 );

r5 = 30;
setEffRotateKey( spep_5 -3 + 74, ctzuo, 0 +r5);
setEffRotateKey( spep_5 -3 + 100, ctzuo, 0 +r5);

setEffAlphaKey( spep_5 -3 + 74, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 90, ctzuo, 255 );
setEffAlphaKey( spep_5 -3 + 92, ctzuo, 204 );
setEffAlphaKey( spep_5 -3 + 94, ctzuo, 153 );
setEffAlphaKey( spep_5 -3 + 96, ctzuo, 102 );
setEffAlphaKey( spep_5 -3 + 98, ctzuo, 51 );
setEffAlphaKey( spep_5 -3 + 100, ctzuo, 0 );

-- ** 音 ** --
--オーラ
SE054 = playSeVer2( spep_5 + 16, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 16, SE054, 71 );
SE055 = playSeVer2( spep_5 + 40, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 40, SE055, 71 );

--気弾発射
SE056 = playSeVer2( spep_5 + 62, 1027, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_5 + 62, 1146, "", 0, 0, 0, -1);

--ベジータ気弾発射
SE058 = playSeVer2( spep_5 + 90, 1213, "",spep_5 +176 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_5 + 90, SE058, 79 );

--気弾飛んでいく
SE059 = playSeVer2( spep_5 + 146, 1193, "",spep_5 +176 + 116, 10, 10, -1);
setStartTimeMs( SE059,  817 );
SE060 = playSeVer2( spep_5 + 146, 1215, "",spep_5 +176 + 62, 10, 16, -1);
setStartTimeMs( SE060,  817 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 176;


------------------------------------------------------
-- 気弾的貫通、フィニッシュ(236F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_08r, 0x100, -1, 0, 0, 0 );  --気弾的貫通、フィニッシュ    ef_006_ch
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 236, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 236, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 236, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 236, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_09r, 0x80, -1, 0, 0, 0 );  --↑背景  ef_006_bg
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 236, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 236, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 236, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 236, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 +42, 1, 1 );
setDisp( spep_6 -3 + 58, 1, 0 );
setDisp( spep_6 -3 + 60, 1, 1 );
setDisp( spep_6 -3 + 118, 1, 0 );
changeAnime( spep_6 -3 + 42, 1, 107 );
changeAnime( spep_6 -3 + 60, 1, 108 );
changeAnime( spep_6 -3 + 80, 1, 106 );

setBlendColor( spep_6 -3 + 60 -1, 1, 3, 0.82, 0.57, 1, 0.12 );
setBlendColor( spep_6 -3 + 62 -1, 1, 3, 0.82, 0.57, 1, 0.24 );
setBlendColor( spep_6 -3 + 64 -1, 1, 3, 0.82, 0.57, 1, 0.36 );
setBlendColor( spep_6 -3 + 66 -1, 1, 3, 0.82, 0.57, 1, 0.48 );
setBlendColor( spep_6 -3 + 68 -1, 1, 3, 0.82, 0.57, 1, 0.6 );
setBlendColor( spep_6 -3 + 117 -1, 1, 3, 0.82, 0.57, 1, 0.6 );
setBlendColor( spep_6 -3 + 118 -1, 1, 3, 0.82, 0.57, 1, 0 );

setMoveKey( spep_6 -3 + 42, 1, 770, 707.3 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 664.3, 611 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 558.7, 514.8 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 453.1, 418.6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 347.4, 322.3 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 241.8, 226.1 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 136.2, 129.9 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 136.2, 129.9 , 0 );
--
setMoveKey( spep_6 -3 + 60, 1, 0.1, -7.8 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 0.8, 7.2 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 1.5, -8 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 2.2, 6.9 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 2.9, -8.3 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 3.6, 6.7 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 4.3, -8.5 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 11.1, 9.4 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 17.8, -2.8 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 30.5, 15.1 , 0 );
setMoveKey( spep_6 -3 + 79, 1, 30.5, 15.1 , 0 );
--
setMoveKey( spep_6 -3 + 80, 1, -16.8, 76.7 , 0 );
setMoveKey( spep_6 -3 + 82, 1, -4, 89.6 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 10.2, 85.1 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 28.6, 110.6 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 47.2, 114.8 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 47.2, 127.8 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 47.2, 114.5 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 47.2, 127.5 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 47.2, 114.3 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 47.2, 126.3 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 47.2, 114 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 47.2, 126 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 47.2, 113.7 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 47.2, 125.7 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 47.2, 113.5 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 47.2, 124.4 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 47.2, 113.2 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 47.2, 124.2 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 47.2, 113 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 47.2, 124 , 0 );


setScaleKey( spep_6 -3 + 42, 1, 2, 2 );
setScaleKey( spep_6 -3 + 44, 1, 1.92, 1.92 );
setScaleKey( spep_6 -3 + 46, 1, 1.83, 1.83 );
setScaleKey( spep_6 -3 + 48, 1, 1.75, 1.75 );
setScaleKey( spep_6 -3 + 50, 1, 1.67, 1.67 );
setScaleKey( spep_6 -3 + 52, 1, 1.58, 1.58 );
setScaleKey( spep_6 -3 + 54, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 58, 1, 1.5, 1.5 );
--
setScaleKey( spep_6 -3 + 60, 1, 3.3, 3.3 );
setScaleKey( spep_6 -3 + 79, 1, 3.3, 3.3 );
--
setScaleKey( spep_6 -3 + 80, 1, 3, 3 );
setScaleKey( spep_6 -3 + 118, 1, 3, 3 );


setRotateKey( spep_6 -3 + 42, 1, 15.3 );
setRotateKey( spep_6 -3 + 44, 1, 15.5 );
setRotateKey( spep_6 -3 + 54, 1, 15.5 );
setRotateKey( spep_6 -3 + 58, 1, 15.5 );
--
setRotateKey( spep_6 -3 + 60, 1, 0 );
setRotateKey( spep_6 -3 + 72, 1, 0 );
setRotateKey( spep_6 -3 + 74, 1, 3.5 );
setRotateKey( spep_6 -3 + 76, 1, 6.5 );
setRotateKey( spep_6 -3 + 78, 1, 10 );
setRotateKey( spep_6 -3 + 79, 1, 10 );
--
setRotateKey( spep_6 -3 + 80, 1, -43.4 );
setRotateKey( spep_6 -3 + 82, 1, -39.4 );
setRotateKey( spep_6 -3 + 84, 1, -38 );
setRotateKey( spep_6 -3 + 86, 1, -35.7 );
setRotateKey( spep_6 -3 + 88, 1, -32.8 );
setRotateKey( spep_6 -3 + 118, 1, -32.8 );

-- ** 音 ** --
--敵飲み込まれる
SE061 = playSeVer2( spep_6 + 56, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 56, SE061, 126 );
SE062 = playSeVer2( spep_6 + 56, 1017, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_6 + 66, 1258, "",spep_6 + 130, 0, 28, -1);
setSeVolumeByWorkId( spep_6 + 66, SE063, 72 );

--爆発
SE064 = playSeVer2( spep_6 + 114, 1023, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_6 + 114, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 116, SE065, 82 );
SE066 = playSeVer2( spep_6 + 128, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 126 );
endPhase( spep_6 + 226 );

end