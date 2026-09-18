--1022860:キャベ_ギャリック砲_sp2253
--sp_effect_a1_00322

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
SP_01 = 158312;	--正面構え→ダッシュで突進	ef_001
SP_02 = 158314;	--敵にラッシュ	ef_002_ch
SP_03 = 158315;	--↑背景	ef_002_bg
SP_04 = 158318;	--敵の吹っ飛び	ef_003
SP_05 = 158319;	--正面構えてギャリック砲を充填	ef_004
SP_06 = 158320;	--横アップから発射	ef_005
SP_07 = 158322;	--気弾的貫通、フィニッシュ	ef_006_ch
SP_08 = 158323;	--↑背景	ef_006_bg

--敵側
SP_01r = 158313;	--正面構え→ダッシュで突進：敵側反転	ef_001_r
SP_02r = 158316;	--敵にラッシュ：敵側反転	ef_002_ch_r
SP_03r = 158317;	--↑背景	ef_002_bg_r
SP_06r = 158321;	--横アップから発射：敵側反転	ef_005_r
SP_07r = 158324;	--気弾的貫通、フィニッシュ：敵側反転	ef_006_ch_r
SP_08r = 158325;	--↑背景	ef_006_bg_r

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
-- 正面構え→ダッシュで突進(122F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 122, 0x100, -1, 0, 0, 0 );  --正面構え→ダッシュで突進	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 122, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 122, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 122, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 122 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 122, first_f, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE004 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 71 );
SE005 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 71 );


--構える
SE002 = playSeVer2( spep_0 + 0, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 6, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 83 );
setPitch( spep_0 + 6, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--飛び上がる
SE006 = playSeVer2( spep_0 + 52, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 52, 44, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 52, 1314, "",spep_0 +122 + 18, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 122 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
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
spep_1 = spep_0 + 122;


------------------------------------------------------
-- 敵にラッシュ(136F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02, 136, 0x100, -1, 0, 0, 0 );  --敵にラッシュ	ef_002_ch
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 136, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 136 -1, rush_f, 255 );
setEffAlphaKey( spep_1 + 136, rush_f, 0 );

rush_b = entryEffectLife( spep_1 + 0, SP_03, 136, 0x80, -1, 0, 0, 0 );  --↑背景	ef_002_bg
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
ctdogaga = entryEffectLife( spep_1 -3 + 12,  10017, 56 +1, 0x100, -1, 0, 31.8, 351 );	--ドガガガッ
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
SE009 = playSeVer2( spep_1 + 2, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 6, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 6, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 16, 1000, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 16, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 26, 1013, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 26, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 26, SE015, -100 );
setTimeStretch( SE015, 0.93, 30, 4 );
SE016 = playSeVer2( spep_1 + 34, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 34, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 44, 1010, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 44, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 44, SE019, 100 );
setTimeStretch( SE019, 1.07, 30, 4 );
SE020 = playSeVer2( spep_1 + 54, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 54, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE022 = playSeVer2( spep_1 + 62, 9, "",spep_1 + 122, 0, 16, -1);
SE023 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 108, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_1 + 132, 1183, "",spep_1 +136 +46 + 36, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 132, SE025, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;


------------------------------------------------------
-- 敵の吹っ飛び(46F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
emove = entryEffectLife( spep_2 + 0, SP_04, 46, 0x80, -1, 0, 0, 0 );  --敵の吹っ飛び	ef_003
setEffMoveKey( spep_2 + 0, emove, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, emove, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, emove, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, emove, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, emove, 0 );
setEffRotateKey( spep_2 + 46, emove, 0 );
setEffAlphaKey( spep_2 + 0, emove, 255 );
setEffAlphaKey( spep_2 + 46 -1, emove, 255 );
setEffAlphaKey( spep_2 + 46, emove, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 49, 1, 0 );
changeAnime( spep_2 + 0, 1, 107 );

setMoveKey( spep_2 + 0, 1,       9.7 , 44.6 , 0 );
setMoveKey( spep_2 + 1, 1,      10.4 -1, 42.9 , 0 );
setMoveKey( spep_2 + 2, 1,      11.1 -2, 41.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1,   11.8 -2, 39.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1,   12.6 -3, 38.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1,  13.3 -4, 36.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1,    14 -5, 34.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1,  14.7 -5, 33.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1,  15.4 -6, 31.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1,  16.2 -7, 30 , 0 );
setMoveKey( spep_2 -3 + 20, 1,  16.9 -7, 28.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1,  17.6 -8, 26.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1,  18.3 -9, 25.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1,  19.1 -10, 23.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1,  19.8 -10, 21.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1,  20.5 -11, 20.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1,  21.2 -12, 18.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1,  30.2 -21, 3.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1,  39.1 -30, -11.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1,  48.1 -39, -26.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 146.7 -137 +50, -274.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 245.3 -236 +90, -523.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 343.9 -334 +130, -849.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 442.5 -433 +170, -1174.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 541.1 -532 +210, -1500.8 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 541.1 -532 +210, -1500.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 1, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 2, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 8, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 10, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 12, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 14, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 16, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 18, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 22, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 26, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 34, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 36, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 38, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 40, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 42, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 44, 1, 4.44, 4.44 );
setScaleKey( spep_2 -3 + 46, 1, 5.72, 5.72 );
setScaleKey( spep_2 -3 + 48, 1, 7, 7 );
setScaleKey( spep_2 -3 + 49, 1, 7, 7 );

r1 = 50;
setRotateKey( spep_2 + 0, 1, 76.2 -r1 );
setRotateKey( spep_2 -3 + 49, 1, 76.2 -r1 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;


------------------------------------------------------
-- 正面構えてギャリック砲を充填(246F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_05, 262, 0x100, -1, 0, 0, 0 );  --正面構えてギャリック砲を充填	ef_004
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 262, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 262, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 262, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 262 -1, tame, 255 );
setEffAlphaKey( spep_3 + 262, tame, 0 );

spep_x = spep_3 + 168;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--気ダメ
SE026 = playSeVer2( spep_3 + 16, 1035, "", 0, 0, 0, -1);

--ズームイン
SE027 = playSeVer2( spep_3 + 44, 1072, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE027, 79 );
setStartTimeMs( SE027,  317 );

--オーラ
SE028 = playSeVer2( spep_3 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 70, SE028, 63 );
SE029 = playSeVer2( spep_3 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 94, SE029, 63 );
SE030 = playSeVer2( spep_3 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 118, SE030, 63 );
SE032 = playSeVer2( spep_3 + 142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 142, SE032, 63 );
SE034 = playSeVer2( spep_3 + 166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 166, SE034, 63 );
SE037 = playSeVer2( spep_3 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 190, SE037, 63 );
SE038 = playSeVer2( spep_3 + 214, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 214, SE038, 63 );
SE039 = playSeVer2( spep_3 + 238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 238, SE039, 63 );

--構える
SE031 = playSeVer2( spep_3 + 104, 1003, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 152, 1006, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 144, 1233, "", 0, 0, 0, -1);

--顔カットイン
SE036 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 262 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 262;


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
SE040 = playSeVer2( spep_4 + 80, 1210, "",spep_4 +94 + 90, 10, 10, -1);
setStartTimeMs( SE040,  1500 );

--オーラ
SE042 = playSeVer2( spep_4 + 78, 1036, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 横アップから発射(186F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_5 + 0, SP_06, 186, 0x100, -1, 0, 0, 0 );  --横アップから発射	ef_005
setEffMoveKey( spep_5 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, shot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_5 + 186, shot, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot, 0 );
setEffRotateKey( spep_5 + 186, shot, 0 );
setEffAlphaKey( spep_5 + 0, shot, 255 );
setEffAlphaKey( spep_5 + 186 -1, shot, 255 );
setEffAlphaKey( spep_5 + 186, shot, 0 );

-- ** 音 ** --
--オーラ
SE043 = playSeVer2( spep_5 + 8, 1036, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_5 + 32, 1036, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_5 + 56, 1036, "", 0, 0, 0, -1);

--気弾発射
SE046 = playSeVer2( spep_5 + 80, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_5 + 80, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE048 = playSeVer2( spep_5 + 172, 1193, "",spep_5 +186 + 54, 10, 10, -1);
setStartTimeMs( SE048,  817 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 186;


------------------------------------------------------
-- 気弾的貫通、フィニッシュ(166F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --気弾的貫通、フィニッシュ	ef_006_ch
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 166, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 166, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --↑背景	ef_006_bg
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 166, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 166, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 22, 1, 1 );
setDisp( spep_6 -3 + 50, 1, 0 );
changeAnime( spep_6 -3 + 22, 1, 108 );
changeAnime( spep_6 -3 + 48, 1, 106 );

setBlendColor( spep_6 -3 + 22, 1, 3, 0.85, 0.58, 1, 0.3 );
setBlendColor( spep_6 -3 + 47, 1, 3, 0.85, 0.58, 1, 0.3 );
setBlendColor( spep_6 -3 + 48, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_6 -3 + 49, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_6 -3 + 50, 1, 3, 1, 1, 1, 0 );

setMoveKey( spep_6 -3 + 22, 1, 1010.3, 444.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 913.3, 400.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 816.2, 356.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 719.2, 312.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 622.1, 268.8 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 525, 224.8 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 428, 180.8 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 330.9, 136.9 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 233.9, 92.8 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 211.4, 82.5 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 188.9, 72.2 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 166.4, 61.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 143.9, 51.5 , 0 );
setMoveKey( spep_6 -3 + 47, 1, 143.9, 51.5 , 0 );
--
setMoveKey( spep_6 -3 + 48, 1, 109.4, 83.6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 115.5, 82.1 , 0 );
--setMoveKey( spep_6 -3 + 52, 1, 122.2, 85.9 , 0 );
--setMoveKey( spep_6 -3 + 54, 1, 131, 90.7 , 0 );
--setMoveKey( spep_6 -3 + 56, 1, 140, 98.5 , 0 );
--setMoveKey( spep_6 -3 + 58, 1, 140, 97.5 , 0 );

setScaleKey( spep_6 -3 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 27, 1, 1.5, 1.5 );
--
setScaleKey( spep_6 -3 + 48, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 50, 1, 1.5, 1.5 );

setRotateKey( spep_6 -3 + 22, 1, 0 );
setRotateKey( spep_6 -3 + 47, 1, 0 );
--
setRotateKey( spep_6 -3 + 48, 1, -43.4 );
setRotateKey( spep_6 -3 + 50, 1, -39.4 );
--setRotateKey( spep_6 -3 + 52, 1, -38 );
--setRotateKey( spep_6 -3 + 54, 1, -35.7 );
--setRotateKey( spep_6 -3 + 56, 1, -32.8 );

-- ** 音 ** --
--爆発
SE049 = playSeVer2( spep_6 + 38, 1023, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_6 + 38, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 38, SE050, 82 );
SE051 = playSeVer2( spep_6 + 50, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 48 );
endPhase( spep_6 + 152 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面構え→ダッシュで突進(122F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 122, 0x100, -1, 0, 0, 0 );  --正面構え→ダッシュで突進    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 122, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 122, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 122, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 122 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 122, first_f, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE004 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 71 );
SE005 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE005, 71 );


--構える
SE002 = playSeVer2( spep_0 + 0, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 6, 1012, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 83 );
setPitch( spep_0 + 6, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );

--飛び上がる
SE006 = playSeVer2( spep_0 + 52, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 52, 44, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 52, 1314, "",spep_0 +122 + 18, 0, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 122 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
   
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
spep_1 = spep_0 + 122;


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
SE009 = playSeVer2( spep_1 + 2, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 6, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 6, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_1 + 16, 1000, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 16, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_1 + 26, 1013, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 26, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 26, SE015, -100 );
setTimeStretch( SE015, 0.93, 30, 4 );
SE016 = playSeVer2( spep_1 + 34, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_1 + 34, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 44, 1010, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 44, 1110, "", 0, 0, 0, -1);
setPitch( spep_1 + 44, SE019, 100 );
setTimeStretch( SE019, 1.07, 30, 4 );
SE020 = playSeVer2( spep_1 + 54, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 54, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE022 = playSeVer2( spep_1 + 62, 9, "",spep_1 + 122, 0, 16, -1);
SE023 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 108, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE025 = playSeVer2( spep_1 + 132, 1183, "",spep_1 +136 +46 + 36, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 132, SE025, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;


------------------------------------------------------
-- 敵の吹っ飛び(46F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
emove = entryEffectLife( spep_2 + 0, SP_04, 46, 0x80, -1, 0, 0, 0 );  --敵の吹っ飛び  ef_003
setEffMoveKey( spep_2 + 0, emove, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, emove, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, emove, -1.0, 1.0 );
setEffScaleKey( spep_2 + 46, emove, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, emove, 0 );
setEffRotateKey( spep_2 + 46, emove, 0 );
setEffAlphaKey( spep_2 + 0, emove, 255 );
setEffAlphaKey( spep_2 + 46 -1, emove, 255 );
setEffAlphaKey( spep_2 + 46, emove, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 49, 1, 0 );
changeAnime( spep_2 + 0, 1, 107 );

setMoveKey( spep_2 + 0, 1,       9.7 , 44.6 , 0 );
setMoveKey( spep_2 + 1, 1,      10.4 -1, 42.9 , 0 );
setMoveKey( spep_2 + 2, 1,      11.1 -2, 41.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1,   11.8 -2, 39.7 , 0 );
setMoveKey( spep_2 -3 + 8, 1,   12.6 -3, 38.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1,  13.3 -4, 36.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1,    14 -5, 34.8 , 0 );
setMoveKey( spep_2 -3 + 14, 1,  14.7 -5, 33.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1,  15.4 -6, 31.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1,  16.2 -7, 30 , 0 );
setMoveKey( spep_2 -3 + 20, 1,  16.9 -7, 28.3 , 0 );
setMoveKey( spep_2 -3 + 22, 1,  17.6 -8, 26.7 , 0 );
setMoveKey( spep_2 -3 + 24, 1,  18.3 -9, 25.1 , 0 );
setMoveKey( spep_2 -3 + 26, 1,  19.1 -10, 23.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1,  19.8 -10, 21.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1,  20.5 -11, 20.2 , 0 );
setMoveKey( spep_2 -3 + 32, 1,  21.2 -12, 18.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1,  30.2 -21, 3.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1,  39.1 -30, -11.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1,  48.1 -39, -26.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 146.7 -137 +50, -274.9 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 245.3 -236 +90, -523.4 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 343.9 -334 +130, -849.1 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 442.5 -433 +170, -1174.9 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 541.1 -532 +210, -1500.8 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 541.1 -532 +210, -1500.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 1, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 2, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 6, 1, 0.13, 0.13 );
setScaleKey( spep_2 -3 + 8, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 10, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 12, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 14, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 16, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 18, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 22, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 26, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 34, 1, 0.37, 0.37 );
setScaleKey( spep_2 -3 + 36, 1, 0.48, 0.48 );
setScaleKey( spep_2 -3 + 38, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 40, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 42, 1, 3.16, 3.16 );
setScaleKey( spep_2 -3 + 44, 1, 4.44, 4.44 );
setScaleKey( spep_2 -3 + 46, 1, 5.72, 5.72 );
setScaleKey( spep_2 -3 + 48, 1, 7, 7 );
setScaleKey( spep_2 -3 + 49, 1, 7, 7 );

r1 = 50;
setRotateKey( spep_2 + 0, 1, 76.2 -r1 );
setRotateKey( spep_2 -3 + 49, 1, 76.2 -r1 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;


------------------------------------------------------
-- 正面構えてギャリック砲を充填(246F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_05, 262, 0x100, -1, 0, 0, 0 );  --正面構えてギャリック砲を充填 ef_004
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 262, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 262, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 262, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 262 -1, tame, 255 );
setEffAlphaKey( spep_3 + 262, tame, 0 );

spep_x = spep_3 + 168;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
--気ダメ
SE026 = playSeVer2( spep_3 + 16, 1035, "", 0, 0, 0, -1);

--ズームイン
SE027 = playSeVer2( spep_3 + 44, 1072, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_3 + 44, SE027, 79 );
setStartTimeMs( SE027,  317 );

--オーラ
SE028 = playSeVer2( spep_3 + 70, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 70, SE028, 63 );
SE029 = playSeVer2( spep_3 + 94, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 94, SE029, 63 );
SE030 = playSeVer2( spep_3 + 118, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 118, SE030, 63 );
SE032 = playSeVer2( spep_3 + 142, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 142, SE032, 63 );
SE034 = playSeVer2( spep_3 + 166, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 166, SE034, 63 );
SE037 = playSeVer2( spep_3 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 190, SE037, 63 );
SE038 = playSeVer2( spep_3 + 214, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 214, SE038, 63 );
SE039 = playSeVer2( spep_3 + 238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 238, SE039, 63 );

--構える
SE031 = playSeVer2( spep_3 + 104, 1003, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_3 + 152, 1006, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 144, 1233, "", 0, 0, 0, -1);

--顔カットイン
SE036 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 262 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 262;


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
SE040 = playSeVer2( spep_4 + 80, 1210, "",spep_4 +94 + 90, 10, 10, -1);
setStartTimeMs( SE040,  1500 );

--オーラ
SE042 = playSeVer2( spep_4 + 78, 1036, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 横アップから発射(186F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
shot = entryEffectLife( spep_5 + 0, SP_06r, 186, 0x100, -1, 0, 0, 0 );  --横アップから発射   ef_005
setEffMoveKey( spep_5 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 186, shot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_5 + 186, shot, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shot, 0 );
setEffRotateKey( spep_5 + 186, shot, 0 );
setEffAlphaKey( spep_5 + 0, shot, 255 );
setEffAlphaKey( spep_5 + 186 -1, shot, 255 );
setEffAlphaKey( spep_5 + 186, shot, 0 );

-- ** 音 ** --
--オーラ
SE043 = playSeVer2( spep_5 + 8, 1036, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_5 + 32, 1036, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_5 + 56, 1036, "", 0, 0, 0, -1);

--気弾発射
SE046 = playSeVer2( spep_5 + 80, 1027, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_5 + 80, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE048 = playSeVer2( spep_5 + 172, 1193, "",spep_5 +186 + 54, 10, 10, -1);
setStartTimeMs( SE048,  817 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 186 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 186;


------------------------------------------------------
-- 気弾的貫通、フィニッシュ(166F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --気弾的貫通、フィニッシュ    ef_006_ch
setEffMoveKey( spep_6 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 166, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 166, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_08r, 0x80, -1, 0, 0, 0 );  --↑背景  ef_006_bg
setEffMoveKey( spep_6 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 166, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 166, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 166, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 166, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 22, 1, 1 );
setDisp( spep_6 -3 + 50, 1, 0 );
changeAnime( spep_6 -3 + 22, 1, 108 );
changeAnime( spep_6 -3 + 48, 1, 106 );

setBlendColor( spep_6 -3 + 22, 1, 3, 0.85, 0.58, 1, 0.3 );
setBlendColor( spep_6 -3 + 47, 1, 3, 0.85, 0.58, 1, 0.3 );
setBlendColor( spep_6 -3 + 48, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_6 -3 + 49, 1, 3, 1, 1, 1, 0.4 );
setBlendColor( spep_6 -3 + 50, 1, 3, 1, 1, 1, 0 );

setMoveKey( spep_6 -3 + 22, 1, 1010.3, 444.7 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 913.3, 400.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 816.2, 356.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 719.2, 312.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 622.1, 268.8 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 525, 224.8 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 428, 180.8 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 330.9, 136.9 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 233.9, 92.8 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 211.4, 82.5 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 188.9, 72.2 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 166.4, 61.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 143.9, 51.5 , 0 );
setMoveKey( spep_6 -3 + 47, 1, 143.9, 51.5 , 0 );
--
setMoveKey( spep_6 -3 + 48, 1, 109.4, 83.6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 115.5, 82.1 , 0 );
--setMoveKey( spep_6 -3 + 52, 1, 122.2, 85.9 , 0 );
--setMoveKey( spep_6 -3 + 54, 1, 131, 90.7 , 0 );
--setMoveKey( spep_6 -3 + 56, 1, 140, 98.5 , 0 );
--setMoveKey( spep_6 -3 + 58, 1, 140, 97.5 , 0 );

setScaleKey( spep_6 -3 + 22, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 27, 1, 1.5, 1.5 );
--
setScaleKey( spep_6 -3 + 48, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 50, 1, 1.5, 1.5 );

setRotateKey( spep_6 -3 + 22, 1, 0 );
setRotateKey( spep_6 -3 + 47, 1, 0 );
--
setRotateKey( spep_6 -3 + 48, 1, -43.4 );
setRotateKey( spep_6 -3 + 50, 1, -39.4 );
--setRotateKey( spep_6 -3 + 52, 1, -38 );
--setRotateKey( spep_6 -3 + 54, 1, -35.7 );
--setRotateKey( spep_6 -3 + 56, 1, -32.8 );

-- ** 音 ** --
--爆発
SE049 = playSeVer2( spep_6 + 38, 1023, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_6 + 38, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 38, SE050, 82 );
SE051 = playSeVer2( spep_6 + 50, 1024, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 166 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 48 );
endPhase( spep_6 + 152 );

end