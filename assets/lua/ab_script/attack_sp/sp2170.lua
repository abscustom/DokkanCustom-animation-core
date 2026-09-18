--1021840:グレートサイヤマン_ストライクショット_sp2170
--sp_effect_a2_00156

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
SP_01 = 157037;  --グレートサイヤマン　気弾投げる動作    ef_001
SP_02 = 157038;  --前：一人称視点　気弾投げる    ef_002_f
SP_03 = 157039;  --後：一人称視点　気弾投げる→爆発 ef_002_b

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
-- グレートサイヤマン　気弾投げる動作(82F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 88, 0x100, -1, 0, 0, 0 );  --グレートサイヤマン　気弾投げる動作    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 88, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 87, first_f, 255 );
setEffAlphaKey( spep_0 + 88, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 音 ** --
--気弾溜め
SE001 = playSe( spep_0 + 0, 1296 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 89 );
stopSe( spep_0 +82 + 4, SE001, 0 );

--顔カットイン
SE002 = playSe( spep_0 + 6, 1018 );

--気弾溜め
SE003 = playSe( spep_0 + 18, 1199,"",0.6 );
stopSe( spep_0 +82 + 4, SE003, 0 );

--気弾持って振りかぶり
SE004 = playSe( spep_0 + 50, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 8, 2 +2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 一人称視点　気弾投げる→爆発(216F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
shot_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --前：一人称視点　気弾投げる ef_002_f
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 236, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 236, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 236, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 236, shot_f, 255 );

shot_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --後：一人称視点　気弾投げる→爆発   ef_002_b
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 236, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 236, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 236, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 236, shot_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 95, 906, 140, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 95, shuchusen1, 90, 20 );
setEffMoveKey( spep_2 + 95, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 235, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 95, shuchusen1, 2.0, 1.8  );
setEffScaleKey( spep_2 + 235, shuchusen1, 2.0, 1.8 );
setEffRotateKey( spep_2 + 95, shuchusen1, 0 );
setEffRotateKey( spep_2 + 235, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 95, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 235, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 117 );

setMoveKey( spep_2 + 0, 1, 38.9, -146.8 , 0 );
setMoveKey( spep_2 + 1, 1, 43.6, -145.8 , 0 );
setMoveKey( spep_2 + 2, 1, 48.2, -144.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 52.8, -144 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 55.6, -135.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 58.4, -127 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 61.3, -118.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 61.2, -115.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 59.9, -113 , 0 );

s1=0.1
setScaleKey( spep_2 + 0, 1, 1.18 +s1, 1.18 +s1 );
setScaleKey( spep_2 + 1, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_2 + 2, 1, 1.21 +s1, 1.21 +s1 );
setScaleKey( spep_2 -3 + 6, 1, 1.22 +s1, 1.22 +s1 );
setScaleKey( spep_2 -3 + 8, 1, 1.23 +s1, 1.23 +s1 );
setScaleKey( spep_2 -3 + 10, 1, 1.25 +s1, 1.25 +s1 );
setScaleKey( spep_2 -3 + 12, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_2 -3 + 14, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_2 -3 + 16, 1, 1.27 +s1, 1.27 +s1 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 12, 1, 0 );
setRotateKey( spep_2 -3 + 14, 1, -0.6 );
setRotateKey( spep_2 -3 + 16, 1, -1.1 );

-- ** 音 ** --
--投げる前気弾溜め
SE006 = playSe( spep_2 + 0, 1199,"",0.6 );
stopSe( spep_2 + 64, SE006, 4 );

--気弾振りかぶる
SE007 = playSe( spep_2 + 2, 1004 );
setSeVolumeByWorkId( spep_2 + 2, SE007, 91 );

--気弾振りかぶる
SE008 = playSe( spep_2 + 2, 1116 );
setSeVolumeByWorkId( spep_2 + 2, SE008, 80 );
stopSe( spep_2 + 28, SE008, 16 );

 -- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 59.9, -113 , 0 );
    setMoveKey( SP_dodge + 2, 1, 57.9, -110.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 64.2, -94.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 69.9, -79.3 , 0 );
    setMoveKey( SP_dodge + 8, 1, 75.3, -63.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 80.2, -48.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.27 +s1, 1.27 +s1 );
    setScaleKey( SP_dodge + 2, 1, 1.27 +s1, 1.27 +s1 );
    setScaleKey( SP_dodge + 4, 1, 1.28 +s1, 1.28 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.28 +s1, 1.28 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.29 +s1, 1.29 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.29 +s1, 1.29 +s1 );

    setRotateKey( SP_dodge + 0, 1, -1.1 );
    setRotateKey( SP_dodge + 2, 1, -1.5 );
    setRotateKey( SP_dodge + 4, 1, -1.9 );
    setRotateKey( SP_dodge + 6, 1, -2.2 );
    setRotateKey( SP_dodge + 8, 1, -2.5 );
    setRotateKey( SP_dodge + 10, 1, -2.7 );
    
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 114, 1, 0 );


setMoveKey( spep_2 -3 + 18, 1, 57.9, -110.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 64.2, -94.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 69.9, -79.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 75.3, -63.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 80.2, -48.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 81.8, -37.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 83.2, -27.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 84.1, -16.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 92.4, -12.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 100.3, -8.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 108, -4.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 115.3, -0.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 113.9, 10.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 112.2, 21.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 110.1, 32.2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 105.7, 38.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 100.7, 43.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 101, 44.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 100.7, 45.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 99.3, 45.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 96.5, 45.2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 91.9, 45.7 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 83.9, 46.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 59.9, 48.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 32.4, 47.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 20.3, 49 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 14.2, 51.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 11.6, 53.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 14.2, 58.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 18.5, 64.4 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 24.2, 70.5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 31.1, 66 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 36.7, 57.4 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 43.2, 49.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 50.7, 41.9 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 49.8, 30.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 50.7, 21.2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 51.6, 12.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 52.5, 3.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 51.4, -7.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 50.4, -18.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 53.7, -17.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 49.9, -23.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 54.4, -28.3 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 49.2, -25.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 52.8, -24.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 60.9, -6.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 38.2, -51.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 63.9, -42.8 , 0 );
--setMoveKey( spep_2 -3 + 116, 1, 31.2, -21.4 , 0 );
--setMoveKey( spep_2 -3 + 118, 1, 53.1, -35.6 , 0 );
--setMoveKey( spep_2 -3 + 120, 1, 57.9, -41.4 , 0 );
--setMoveKey( spep_2 -3 + 122, 1, 51, -47.3 , 0 );
--setMoveKey( spep_2 -3 + 124, 1, 47.4, -42.2 , 0 );
--setMoveKey( spep_2 -3 + 126, 1, 50.4, -45.9 , 0 );
--setMoveKey( spep_2 -3 + 128, 1, 52.1, -41.9 , 0 );
--setMoveKey( spep_2 -3 + 130, 1, 53.8, -38 , 0 );
--setMoveKey( spep_2 -3 + 132, 1, 52.6, -37 , 0 );
--setMoveKey( spep_2 -3 + 134, 1, 51.5, -35.9 , 0 );
--setMoveKey( spep_2 -3 + 136, 1, 50.4, -34.8 , 0 );
--setMoveKey( spep_2 -3 + 138, 1, 49.8, -31.5 , 0 );
--setMoveKey( spep_2 -3 + 140, 1, 49.3, -28.2 , 0 );
--setMoveKey( spep_2 -3 + 142, 1, 48.7, -24.8 , 0 );
--setMoveKey( spep_2 -3 + 144, 1, 49.3, -22.1 , 0 );
--setMoveKey( spep_2 -3 + 146, 1, 49.8, -19.3 , 0 );
--setMoveKey( spep_2 -3 + 148, 1, 50.4, -20.7 , 0 );
--setMoveKey( spep_2 -3 + 150, 1, 51.2, -22.8 , 0 );
--setMoveKey( spep_2 -3 + 152, 1, 52.1, -24.8 , 0 );
--setMoveKey( spep_2 -3 + 154, 1, 51.2, -25.2 , 0 );
--setMoveKey( spep_2 -3 + 156, 1, 50.4, -25.5 , 0 );
--setMoveKey( spep_2 -3 + 158, 1, 51.2, -25.9 , 0 );
--setMoveKey( spep_2 -3 + 160, 1, 52.1, -24.2 , 0 );
--setMoveKey( spep_2 -3 + 162, 1, 53.8, -25 , 0 );
--setMoveKey( spep_2 -3 + 164, 1, 55.5, -25.9 , 0 );
--setMoveKey( spep_2 -3 + 166, 1, 53.8, -24.2 , 0 );

setScaleKey( spep_2 -3 + 20, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_2 -3 + 22, 1, 1.28 +s1, 1.28 +s1 );
setScaleKey( spep_2 -3 + 24, 1, 1.28 +s1, 1.28 +s1 );
setScaleKey( spep_2 -3 + 26, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_2 -3 + 30, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_2 -3 + 32, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_2 -3 + 36, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_2 -3 + 38, 1, 1.31 +s1, 1.31 +s1 );
setScaleKey( spep_2 -3 + 40, 1, 1.31 +s1, 1.31 +s1 );
setScaleKey( spep_2 -3 + 42, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_2 -3 + 48, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_2 -3 + 50, 1, 1.31 +s1, 1.31 +s1 );
setScaleKey( spep_2 -3 + 52, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_2 -3 + 54, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_2 -3 + 56, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_2 -3 + 58, 1, 1.28 +s1, 1.28 +s1 );
setScaleKey( spep_2 -3 + 60, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_2 -3 + 62, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_2 -3 + 64, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_2 -3 + 114, 1, 1.26 +s1, 1.26 +s1 );
--setScaleKey( spep_2 -3 + 166, 1, 1.26, 1.26 );

setRotateKey( spep_2 -3 + 18, 1, -1.5 );
setRotateKey( spep_2 -3 + 20, 1, -1.9 );
setRotateKey( spep_2 -3 + 22, 1, -2.2 );
setRotateKey( spep_2 -3 + 24, 1, -2.5 );
setRotateKey( spep_2 -3 + 26, 1, -2.7 );
setRotateKey( spep_2 -3 + 28, 1, -3 );
setRotateKey( spep_2 -3 + 30, 1, -3.2 );
setRotateKey( spep_2 -3 + 32, 1, -3.3 );
setRotateKey( spep_2 -3 + 34, 1, -3.5 );
setRotateKey( spep_2 -3 + 36, 1, -3.6 );
setRotateKey( spep_2 -3 + 38, 1, -3.8 );
setRotateKey( spep_2 -3 + 40, 1, -3.9 );
setRotateKey( spep_2 -3 + 42, 1, -3.9 );
setRotateKey( spep_2 -3 + 44, 1, -4 );
setRotateKey( spep_2 -3 + 48, 1, -4 );
setRotateKey( spep_2 -3 + 50, 1, -3.9 );
setRotateKey( spep_2 -3 + 52, 1, -3.8 );
setRotateKey( spep_2 -3 + 54, 1, -3.6 );
setRotateKey( spep_2 -3 + 56, 1, -3.4 );
setRotateKey( spep_2 -3 + 58, 1, -3 );
setRotateKey( spep_2 -3 + 60, 1, -2.5 );
setRotateKey( spep_2 -3 + 62, 1, -1.7 );
setRotateKey( spep_2 -3 + 64, 1, 0 );
setRotateKey( spep_2 -3 + 66, 1, 2 );
setRotateKey( spep_2 -3 + 68, 1, 2.9 );
setRotateKey( spep_2 -3 + 70, 1, 3.2 );
setRotateKey( spep_2 -3 + 72, 1, 3.3 );
setRotateKey( spep_2 -3 + 74, 1, 3.1 );
setRotateKey( spep_2 -3 + 76, 1, 2.9 );
setRotateKey( spep_2 -3 + 78, 1, 2.5 );
setRotateKey( spep_2 -3 + 80, 1, 2 );
setRotateKey( spep_2 -3 + 82, 1, 1.4 );
setRotateKey( spep_2 -3 + 84, 1, 0.8 );
setRotateKey( spep_2 -3 + 86, 1, 0.1 );
setRotateKey( spep_2 -3 + 114, 1, 0.1 );
--setRotateKey( spep_2 -3 + 166, 1, 0.1 );

-- ** 音 ** --
--気弾投げる
SE009 = playSe( spep_2 + 60, 1027 );
setSeVolumeByWorkId( spep_2 + 60, SE009, 79 );

--気弾投げる
SE010 = playSe( spep_2 + 60, 1177 );
setSeVolumeByWorkId( spep_2 + 60, SE010, 80 );
stopSe( spep_2 + 106, SE010, 20 );

--爆発
SE011 = playSe( spep_2 + 100, 1023 );

--ガッツポーズ
SE012 = playSe( spep_2 + 100, 1233 );

--爆発
SE013 = playSe( spep_2 + 102, 1068 );
setSeVolumeByWorkId( spep_2 + 108, SE013, 88 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 106 );
endPhase( spep_2 + 226 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- グレートサイヤマン　気弾投げる動作(82F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 88, 0x100, -1, 0, 0, 0 );  --グレートサイヤマン　気弾投げる動作    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 88, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 88, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 87, first_f, 255 );
setEffAlphaKey( spep_0 + 88, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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

-- ** 音 ** --
--気弾溜め
SE001 = playSe( spep_0 + 0, 1296 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 89 );
stopSe( spep_0 +82 + 4, SE001, 0 );

--顔カットイン
SE002 = playSe( spep_0 + 6, 1018 );

--気弾溜め
SE003 = playSe( spep_0 + 18, 1199,"",0.6 );
stopSe( spep_0 +82 + 4, SE003, 0 );

--気弾持って振りかぶり
SE004 = playSe( spep_0 + 50, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 78, 8, 2 +2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
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
-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 一人称視点　気弾投げる→爆発(216F)
------------------------------------------------------
--spep_2 = 0;
-- ** エフェクト等 ** --
shot_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --前：一人称視点　気弾投げる ef_002_f
setEffMoveKey( spep_2 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 236, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 236, shot_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_f, 0 );
setEffRotateKey( spep_2 + 236, shot_f, 0 );
setEffAlphaKey( spep_2 + 0, shot_f, 255 );
setEffAlphaKey( spep_2 + 236, shot_f, 255 );

shot_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --後：一人称視点　気弾投げる→爆発   ef_002_b
setEffMoveKey( spep_2 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 236, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 236, shot_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot_b, 0 );
setEffRotateKey( spep_2 + 236, shot_b, 0 );
setEffAlphaKey( spep_2 + 0, shot_b, 255 );
setEffAlphaKey( spep_2 + 236, shot_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 95, 906, 140, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 95, shuchusen1, 90, 20 );
setEffMoveKey( spep_2 + 95, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 235, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_2 + 95, shuchusen1, 2.0, 1.8  );
setEffScaleKey( spep_2 + 235, shuchusen1, 2.0, 1.8 );
setEffRotateKey( spep_2 + 95, shuchusen1, 0 );
setEffRotateKey( spep_2 + 235, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 95, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 235, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 17 );

setMoveKey( spep_2 + 0, 1, -38.9, -146.8 , 0 );
setMoveKey( spep_2 + 1, 1, -43.6, -145.8 , 0 );
setMoveKey( spep_2 + 2, 1, -48.2, -144.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -52.8, -144 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -55.6, -135.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -58.4, -127 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -61.3, -118.7 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -61.2, -115.8 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -59.9, -113 , 0 );

s1=0.1
setScaleKey( spep_2 + 0, 1, 1.18 +s1, 1.18 +s1 );
setScaleKey( spep_2 + 1, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_2 + 2, 1, 1.21 +s1, 1.21 +s1 );
setScaleKey( spep_2 -3 + 6, 1, 1.22 +s1, 1.22 +s1 );
setScaleKey( spep_2 -3 + 8, 1, 1.23 +s1, 1.23 +s1 );
setScaleKey( spep_2 -3 + 10, 1, 1.25 +s1, 1.25 +s1 );
setScaleKey( spep_2 -3 + 12, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_2 -3 + 14, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_2 -3 + 16, 1, 1.27 +s1, 1.27 +s1 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 12, 1, 0 );
setRotateKey( spep_2 -3 + 14, 1, 0.6 );
setRotateKey( spep_2 -3 + 16, 1, 1.1 );

-- ** 音 ** --
--投げる前気弾溜め
SE006 = playSe( spep_2 + 0, 1199,"",0.6 );
stopSe( spep_2 + 64, SE006, 4 );

--気弾振りかぶる
SE007 = playSe( spep_2 + 2, 1004 );
setSeVolumeByWorkId( spep_2 + 2, SE007, 91 );

--気弾振りかぶる
SE008 = playSe( spep_2 + 2, 1116 );
setSeVolumeByWorkId( spep_2 + 2, SE008, 80 );
stopSe( spep_2 + 28, SE008, 16 );

 -- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 236 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景


--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -59.9, -113 , 0 );
    setMoveKey( SP_dodge + 2, 1, -57.9, -110.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, -64.2, -94.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, -69.9, -79.3 , 0 );
    setMoveKey( SP_dodge + 8, 1, -75.3, -63.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, -80.2, -48.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.27 +s1, 1.27 +s1 );
    setScaleKey( SP_dodge + 2, 1, 1.27 +s1, 1.27 +s1 );
    setScaleKey( SP_dodge + 4, 1, 1.28 +s1, 1.28 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.28 +s1, 1.28 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.29 +s1, 1.29 +s1 );
    setScaleKey( SP_dodge + 10, 1, 1.29 +s1, 1.29 +s1 );

    setRotateKey( SP_dodge + 0, 1, 1.1 );
    setRotateKey( SP_dodge + 2, 1, 1.5 );
    setRotateKey( SP_dodge + 4, 1, 1.9 );
    setRotateKey( SP_dodge + 6, 1, 2.2 );
    setRotateKey( SP_dodge + 8, 1, 2.5 );
    setRotateKey( SP_dodge + 10, 1, 2.7 );
    
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 114, 1, 0 );


setMoveKey( spep_2 -3 + 18, 1, -57.9, -110.4 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -64.2, -94.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -69.9, -79.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -75.3, -63.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -80.2, -48.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -81.8, -37.7 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -83.2, -27.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -84.1, -16.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -92.4, -12.5 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -100.3, -8.5 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -108, -4.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -115.3, -0.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -113.9, 10.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -112.2, 21.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -110.1, 32.2 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -105.7, 38.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -100.7, 43.5 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -101, 44.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -100.7, 45.1 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -99.3, 45.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -96.5, 45.2 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -91.9, 45.7 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -83.9, 46.6 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -59.9, 48.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -32.4, 47.7 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -20.3, 49 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -14.2, 51.1 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -11.6, 53.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -14.2, 58.7 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -18.5, 64.4 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -24.2, 70.5 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -31.1, 66 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -36.7, 57.4 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -43.2, 49.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -50.7, 41.9 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -49.8, 30.1 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -50.7, 21.2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -51.6, 12.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -52.5, 3.2 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -51.4, -7.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -50.4, -18.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -53.7, -17.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -49.9, -23.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -54.4, -28.3 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -49.2, -25.2 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -52.8, -24.2 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -60.9, -6.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -38.2, -51.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -63.9, -42.8 , 0 );
--setMoveKey( spep_2 -3 + 116, 1, 31.2, -21.4 , 0 );
--setMoveKey( spep_2 -3 + 118, 1, 53.1, -35.6 , 0 );
--setMoveKey( spep_2 -3 + 120, 1, 57.9, -41.4 , 0 );
--setMoveKey( spep_2 -3 + 122, 1, 51, -47.3 , 0 );
--setMoveKey( spep_2 -3 + 124, 1, 47.4, -42.2 , 0 );
--setMoveKey( spep_2 -3 + 126, 1, 50.4, -45.9 , 0 );
--setMoveKey( spep_2 -3 + 128, 1, 52.1, -41.9 , 0 );
--setMoveKey( spep_2 -3 + 130, 1, 53.8, -38 , 0 );
--setMoveKey( spep_2 -3 + 132, 1, 52.6, -37 , 0 );
--setMoveKey( spep_2 -3 + 134, 1, 51.5, -35.9 , 0 );
--setMoveKey( spep_2 -3 + 136, 1, 50.4, -34.8 , 0 );
--setMoveKey( spep_2 -3 + 138, 1, 49.8, -31.5 , 0 );
--setMoveKey( spep_2 -3 + 140, 1, 49.3, -28.2 , 0 );
--setMoveKey( spep_2 -3 + 142, 1, 48.7, -24.8 , 0 );
--setMoveKey( spep_2 -3 + 144, 1, 49.3, -22.1 , 0 );
--setMoveKey( spep_2 -3 + 146, 1, 49.8, -19.3 , 0 );
--setMoveKey( spep_2 -3 + 148, 1, 50.4, -20.7 , 0 );
--setMoveKey( spep_2 -3 + 150, 1, 51.2, -22.8 , 0 );
--setMoveKey( spep_2 -3 + 152, 1, 52.1, -24.8 , 0 );
--setMoveKey( spep_2 -3 + 154, 1, 51.2, -25.2 , 0 );
--setMoveKey( spep_2 -3 + 156, 1, 50.4, -25.5 , 0 );
--setMoveKey( spep_2 -3 + 158, 1, 51.2, -25.9 , 0 );
--setMoveKey( spep_2 -3 + 160, 1, 52.1, -24.2 , 0 );
--setMoveKey( spep_2 -3 + 162, 1, 53.8, -25 , 0 );
--setMoveKey( spep_2 -3 + 164, 1, 55.5, -25.9 , 0 );
--setMoveKey( spep_2 -3 + 166, 1, 53.8, -24.2 , 0 );

setScaleKey( spep_2 -3 + 20, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_2 -3 + 22, 1, 1.28 +s1, 1.28 +s1 );
setScaleKey( spep_2 -3 + 24, 1, 1.28 +s1, 1.28 +s1 );
setScaleKey( spep_2 -3 + 26, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_2 -3 + 30, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_2 -3 + 32, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_2 -3 + 36, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_2 -3 + 38, 1, 1.31 +s1, 1.31 +s1 );
setScaleKey( spep_2 -3 + 40, 1, 1.31 +s1, 1.31 +s1 );
setScaleKey( spep_2 -3 + 42, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_2 -3 + 48, 1, 1.32 +s1, 1.32 +s1 );
setScaleKey( spep_2 -3 + 50, 1, 1.31 +s1, 1.31 +s1 );
setScaleKey( spep_2 -3 + 52, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_2 -3 + 54, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_2 -3 + 56, 1, 1.29 +s1, 1.29 +s1 );
setScaleKey( spep_2 -3 + 58, 1, 1.28 +s1, 1.28 +s1 );
setScaleKey( spep_2 -3 + 60, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_2 -3 + 62, 1, 1.27 +s1, 1.27 +s1 );
setScaleKey( spep_2 -3 + 64, 1, 1.26 +s1, 1.26 +s1 );
setScaleKey( spep_2 -3 + 114, 1, 1.26 +s1, 1.26 +s1 );
--setScaleKey( spep_2 -3 + 166, 1, 1.26, 1.26 );

setRotateKey( spep_2 -3 + 18, 1, 1.5 );
setRotateKey( spep_2 -3 + 20, 1, 1.9 );
setRotateKey( spep_2 -3 + 22, 1, 2.2 );
setRotateKey( spep_2 -3 + 24, 1, 2.5 );
setRotateKey( spep_2 -3 + 26, 1, 2.7 );
setRotateKey( spep_2 -3 + 28, 1, 3 );
setRotateKey( spep_2 -3 + 30, 1, 3.2 );
setRotateKey( spep_2 -3 + 32, 1, 3.3 );
setRotateKey( spep_2 -3 + 34, 1, 3.5 );
setRotateKey( spep_2 -3 + 36, 1, 3.6 );
setRotateKey( spep_2 -3 + 38, 1, 3.8 );
setRotateKey( spep_2 -3 + 40, 1, 3.9 );
setRotateKey( spep_2 -3 + 42, 1, 3.9 );
setRotateKey( spep_2 -3 + 44, 1, 4 );
setRotateKey( spep_2 -3 + 48, 1, 4 );
setRotateKey( spep_2 -3 + 50, 1, 3.9 );
setRotateKey( spep_2 -3 + 52, 1, 3.8 );
setRotateKey( spep_2 -3 + 54, 1, 3.6 );
setRotateKey( spep_2 -3 + 56, 1, 3.4 );
setRotateKey( spep_2 -3 + 58, 1, 3 );
setRotateKey( spep_2 -3 + 60, 1, 2.5 );
setRotateKey( spep_2 -3 + 62, 1, 1.7 );
setRotateKey( spep_2 -3 + 64, 1, 0 );
setRotateKey( spep_2 -3 + 66, 1, -2 );
setRotateKey( spep_2 -3 + 68, 1, -2.9 );
setRotateKey( spep_2 -3 + 70, 1, -3.2 );
setRotateKey( spep_2 -3 + 72, 1, -3.3 );
setRotateKey( spep_2 -3 + 74, 1, -3.1 );
setRotateKey( spep_2 -3 + 76, 1, -2.9 );
setRotateKey( spep_2 -3 + 78, 1, -2.5 );
setRotateKey( spep_2 -3 + 80, 1, -2 );
setRotateKey( spep_2 -3 + 82, 1, -1.4 );
setRotateKey( spep_2 -3 + 84, 1, -0.8 );
setRotateKey( spep_2 -3 + 86, 1, -0.1 );
setRotateKey( spep_2 -3 + 114, 1, -0.1 );
--setRotateKey( spep_2 -3 + 166, 1, 0.1 );

-- ** 音 ** --
--気弾投げる
SE009 = playSe( spep_2 + 60, 1027 );
setSeVolumeByWorkId( spep_2 + 60, SE009, 79 );

--気弾投げる
SE010 = playSe( spep_2 + 60, 1177 );
setSeVolumeByWorkId( spep_2 + 60, SE010, 80 );
stopSe( spep_2 + 106, SE010, 20 );

--爆発
SE011 = playSe( spep_2 + 100, 1023 );

--ガッツポーズ
SE012 = playSe( spep_2 + 100, 1233 );

--爆発
SE013 = playSe( spep_2 + 102, 1068 );
setSeVolumeByWorkId( spep_2 + 108, SE013, 88 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 106 );
endPhase( spep_2 + 226 );

end