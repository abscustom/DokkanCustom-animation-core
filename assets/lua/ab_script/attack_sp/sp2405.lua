--1024830:LRクウラ(最終形態)_デスフォール
--sp_effect_b1_00210
--sp2405

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
SP_01 = 160386; --敵に迫る→膝蹴り  ef_001_front
SP_02 = 160388; --敵に迫る→膝蹴り  ef_001_back
SP_03 = 160389; --膝で押す→湖へ突進 ef_002_front
SP_04 = 160391; --膝で押す→湖へ突進 ef_002_back
SP_05 = 160392; --湖へ潜る→腹パンチ ef_003_front
SP_06 = 160394; --湖へ潜る→腹パンチ ef_003_back
SP_07 = 160395; --湖から飛び立つ   ef_004_front
SP_08 = 160397; --湖から飛び立つ   ef_004_back

--敵側
SP_01r = 160387;    --敵に迫る→膝蹴り  ef_001_front_re
SP_03r = 160390;    --膝で押す→湖へ突進 ef_002_front_re
SP_05r = 160393;    --湖へ潜る→腹パンチ ef_003_front_re
SP_07r = 160396;    --湖から飛び立つ   ef_004_front_re

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

      if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 118;
        spep_2 = spep_1 + 360;
        spep_3 = spep_2 + 94;

        skipFrame(0, spep_3 + 28 );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --水に突っ込む
        SE027 = playSeVer2( spep_3 + 31, 1011, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_3 + 31, SE027, 58 );
        SE028 = playSeVer2( spep_3 + 31, 1258, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_3 + 31, SE028, 59 );
        SE029 = playSeVer2( spep_3 + 31, 1166, "",spep_3 + 102, 0, 24, -1);
        setSeVolumeByWorkId( spep_3 + 31, SE029, 140 );
        SE030 = playSeVer2( spep_3 + 31, 1019, "", 0, 0, 0, -1);
        setPitch( spep_3 + 31, SE030, -400 );
        setTimeStretch( SE030, 0.73, 30, 4 );
        SE031 = playSeVer2( spep_3 + 31, 1226, "",spep_3 + 108, 0, 36, -1);
      end
      


------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵に迫る→膝蹴り(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 118, 0x100, -1, 0, 0, 0 );  --敵に迫る→膝蹴り    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 118, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 118 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 118, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 118, 0x80, -1, 0, 0, 0 );  --敵に迫る→膝蹴り ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 118, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 118 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 118, first_b, 0 );

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );

a1 = 5.4;

setMoveKey( spep_0 + 0, 1, 207.1, 24.5 , 0 );
setMoveKey( spep_0 + 1, 1, 204.29, 19.11 , 0 );
setMoveKey( spep_0 + 2, 1, 201.48, 13.72 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 198.67, 8.33 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 195.86, 2.94 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 193.05, -2.45 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 190.24, -7.84 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 187.43, -13.23 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 184.62, -18.62 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 181.81, -24.01 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 179, -29.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 176.19, -34.79 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 173.38, -40.18 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 170.57, -45.57 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 167.76, -50.96 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 164.95, -56.35 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 162.14, -61.74 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 159.33, -67.13 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 156.52, -72.52 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 153.71, -77.91 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 150.9, -83.3 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 148.09, -88.69 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 145.28, -94.08 , 0 );

setMoveKey( spep_0 -3 + 42, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 61, 1, 145.22, -94.26 , 0 );

setMoveKey( spep_0 -3 + 62, 1, 161.2, 17.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 159.3, 17.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 157.4, 17.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 155.6, 17.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 153.7, 17.2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 151.8, 17.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 149.9, 17.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 148.1, 17.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 146.2, 17.2 , 0 );

s1 = 0.4;
setScaleKey( spep_0 + 0, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 1, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 2, 1, 2.01, 2.01 );
setScaleKey( spep_0 -3 + 6, 1, 1.84 +0.1, 1.84 +0.1 );
setScaleKey( spep_0 -3 + 7, 1, 1.84 +0.1, 1.84 +0.1 );
setScaleKey( spep_0 -3 + 8, 1, 1.67 +0.2, 1.67 +0.2 );
setScaleKey( spep_0 -3 + 9, 1, 1.67 +0.2, 1.67 +0.2 );
setScaleKey( spep_0 -3 + 10, 1, 1.49 +0.3, 1.49 +0.3 );
setScaleKey( spep_0 -3 + 12, 1, 1.4 +0.37, 1.4 +0.37 );
setScaleKey( spep_0 -3 + 14, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_0 -3 + 16, 1, 1.33 +s1, 1.33 +s1 );
setScaleKey( spep_0 -3 + 18, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_0 -3 + 20, 1, 1.28 +s1, 1.28 +s1 );
setScaleKey( spep_0 -3 + 22, 1, 1.25 +s1, 1.25 +s1 );
setScaleKey( spep_0 -3 + 24, 1, 1.23 +s1, 1.23 +s1 );
setScaleKey( spep_0 -3 + 26, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_0 -3 + 28, 1, 1.18 +s1, 1.18 +s1 );
setScaleKey( spep_0 -3 + 30, 1, 1.14 +s1, 1.14 +s1 );
setScaleKey( spep_0 -3 + 32, 1, 1.12 +s1, 1.12 +s1 );
setScaleKey( spep_0 -3 + 34, 1, 1.11 +s1, 1.11 +s1 );
setScaleKey( spep_0 -3 + 36, 1, 1.09 +s1, 1.09 +s1 );
setScaleKey( spep_0 -3 + 38, 1, 1.07 +s1, 1.07 +s1 );
setScaleKey( spep_0 -3 + 40, 1, 1.06 +s1, 1.06 +s1 );
setScaleKey( spep_0 -3 + 42, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_0 -3 + 48, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_0 -3 + 56, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_0 -3 + 58, 1, 1.03 +s1, 1.03 +s1 );
setScaleKey( spep_0 -3 + 60, 1, 1.03 +s1, 1.03 +s1 );
setScaleKey( spep_0 -3 + 61, 1, 1.03 +s1, 1.03 +s1 );
setScaleKey( spep_0 -3 + 62, 1, 1.85, 1.85 );

setRotateKey( spep_0 + 0, 1, -6.2 );
setRotateKey( spep_0 + 1, 1, -6 );
setRotateKey( spep_0 + 2, 1, -5.8 );
setRotateKey( spep_0 -3 + 6, 1, -5.6 );
setRotateKey( spep_0 -3 + 7, 1, -5.6 );
setRotateKey( spep_0 -3 + 8, 1, -5.4 );
setRotateKey( spep_0 -3 + 9, 1, -5.4 );
setRotateKey( spep_0 -3 + 10, 1,-5.2 );
setRotateKey( spep_0 -3 + 40, 1, -5.2 );
--setRotateKey( spep_0 -3 + 42, 1, -5.1 );
--setRotateKey( spep_0 -3 + 44, 1, -5.1 );
--setRotateKey( spep_0 -3 + 46, 1, -5 );
--setRotateKey( spep_0 -3 + 48, 1, -4.9 );
--setRotateKey( spep_0 -3 + 50, 1, -4.8 );
--setRotateKey( spep_0 -3 + 52, 1, -4.8 );
--setRotateKey( spep_0 -3 + 54, 1, -4.7 );
--setRotateKey( spep_0 -3 + 56, 1, -4.6 );
--setRotateKey( spep_0 -3 + 58, 1, -4.5 );
--setRotateKey( spep_0 -3 + 60, 1, -4.5 );
--setRotateKey( spep_0 -3 + 61, 1, -4.5 );
--setRotateKey( spep_0 -3 + 62, 1, -4.3 );
setRotateKey( spep_0 -3 + 62, 1, -5.2 );

-- ** 音 ** --
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 44, 0, 20, -1);
SE002 = playSeVer2( spep_0 + 2, 1182, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 75 );
setStartTimeMs( SE002,  67 );
SE003 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 40, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 45 );
SE005 = playSeVer2( spep_0 + 42, 43, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 76 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 146.2, 17.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 144.3, 17.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 142.4, 17.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 140.6, 17.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 138.7, 17.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 136.8, 17.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.85, 1.85 );
    setScaleKey( SP_dodge + 10, 1, 1.85, 1.85 );

    setRotateKey( SP_dodge + 0, 1, -5.2 );
    setRotateKey( SP_dodge + 10, 1, -5.2 );
    
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

spep_x = spep_0 + 110;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

setDisp( spep_0 -3 + 108, 1, 0 );
changeAnime( spep_0 -3 + 100, 1, 8 );

setMoveKey( spep_0 -3 + 80, 1, 144.3, 17.2 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 142.4, 17.2 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 140.6, 17.2 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 138.7, 17.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 136.8, 17.2 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 134.9, 17.2 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 133.1, 17.2 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 131.2, 17.2 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 131.2, 17.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -78.7, -109.9 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -78.7, -109.9 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -562.6, -407.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -562.6, -407.7 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -562.6, -407.7 , 0 );

setScaleKey( spep_0 -3 + 99, 1, 1.85, 1.85 );
setScaleKey( spep_0 -3 + 100, 1, 2.29, 2.29 );
setScaleKey( spep_0 -3 + 108, 1, 2.29, 2.29 );

setRotateKey( spep_0 -3 + 99, 1, -5.2 );
setRotateKey( spep_0 -3 + 100, 1, -39.7 );
setRotateKey( spep_0 -3 + 108, 1, -39.7 );


-- ** 音 ** --
--飛び膝蹴り
SE006 = playSeVer2( spep_0 + 84, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE007, 83 );
SE008 = playSeVer2( spep_0 + 90, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 91 );
SE009 = playSeVer2( spep_0 + 90, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE009, 86 );
SE010 = playSeVer2( spep_0 + 94, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE010, 85 );

--顔カットイン
SE011 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 118;


------------------------------------------------------
-- 膝で押す→湖へ突進(360F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
knees_f = entryEffectLife( spep_1 + 0, SP_03, 360, 0x100, -1, 0, 0, 0 );  --膝で押す→湖へ突進  ef_002_front
setEffMoveKey( spep_1 + 0, knees_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 360, knees_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, knees_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 360, knees_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, knees_f, 0 );
setEffRotateKey( spep_1 + 360, knees_f, 0 );
setEffAlphaKey( spep_1 + 0, knees_f, 255 );
setEffAlphaKey( spep_1 + 360 -1, knees_f, 255 );
setEffAlphaKey( spep_1 + 360, knees_f, 0 );

kneez_b = entryEffectLife( spep_1 + 0, SP_04, 360, 0x80, -1, 0, 0, 0 );  --膝で押す→湖へ突進   ef_002_back
setEffMoveKey( spep_1 + 0, kneez_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 360, kneez_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kneez_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 360, kneez_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kneez_b, 0 );
setEffRotateKey( spep_1 + 360, kneez_b, 0 );
setEffAlphaKey( spep_1 + 0, kneez_b, 255 );
setEffAlphaKey( spep_1 + 360 -1, kneez_b, 255 );
setEffAlphaKey( spep_1 + 360, kneez_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 208, 1, 0 );

changeAnime( spep_1 + 0, 1, 8 );
changeAnime( spep_1 -3 + 96, 1, 6 );
changeAnime( spep_1 -3 + 202, 1, 8 );
changeAnime( spep_1 -3 + 204, 1, 6 );

setMoveKey( spep_1 + 0, 1, -11.9, -66 , 0 );
setMoveKey( spep_1 + 1, 1, -15.8, -66 , 0 );
setMoveKey( spep_1 + 2, 1, -19.6, -66 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -23.4, -66 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -27.2, -66 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -31, -66 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -34.8, -66 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -38.6, -66 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -42.4, -66 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -46.2, -66 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -50, -66 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -53.8, -66 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -57.6, -66 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -61.4, -66 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -65.2, -66 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -69, -66 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -72.9, -66 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -76.7, -66 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -80.5, -66 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -84.3, -66 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -88.1, -66 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -91.9, -66 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -95.7, -66 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -99.5, -66 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -103.3, -66 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -107.1, -66 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -110.9, -66 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -114.7, -66 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -118.5, -66 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -122.3, -66 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -126.1, -66 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -130, -66 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -133.8, -66 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -137.6, -66 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -141.4, -66 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -145.2, -66 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -149, -66 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -152.8, -66 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -156.6, -66 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -160.4, -66 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -159.9, -66 , 0 );
setMoveKey( spep_1 -3 + 83, 1, -161.9, -66 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -354.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 87, 1, -354.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 42, -29.5 , 0 );
setMoveKey( spep_1 -3 + 89, 1, 42, -29.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -322.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 91, 1, -322.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 13, -29.5 , 0 );
setMoveKey( spep_1 -3 + 93, 1, 13, -29.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -272.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 95, 1, -272.9, -29.5 , 0 );--
setMoveKey( spep_1 -3 + 96, 1, -22.5, -36.8 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -22.5, -36.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -216.4, -36.8 , 0 );
setMoveKey( spep_1 -3 + 99, 1, -216.4, -36.8 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -217.4, -36.8 , 0 );
setMoveKey( spep_1 -3 + 101, 1, -217.4, -36.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -60.5, -36.8 , 0 );
setMoveKey( spep_1 -3 + 103, 1, -60.5, -36.8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -191.4, -36.9 , 0 );
setMoveKey( spep_1 -3 + 105, 1, -191.4, -36.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -97.5, -36.9 , 0 );
setMoveKey( spep_1 -3 + 107, 1, -97.5, -36.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -167.4, -36.9 , 0 );
setMoveKey( spep_1 -3 + 109, 1, -167.4, -36.9 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -122.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 111, 1, -122.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -158.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 113, 1, -158.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -136.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 115, 1, -136.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -170.7, -40 , 0 );
setMoveKey( spep_1 -3 + 117, 1, -170.7, -40 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -160.7, -40 , 0 );
setMoveKey( spep_1 -3 + 119, 1, -160.7, -40 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -166.6, -40 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -162.6, -47.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -162.1, -48 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -161.7, -48.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -161.2, -49.2 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -160.7, -49.8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -160.3, -50.4 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -159.8, -51 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -159.3, -51.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -158.8, -52.1 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -158.4, -52.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -157.9, -53.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -157.4, -53.9 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -157, -54.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -156.5, -55 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -156, -55.6 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -155.5, -56.2 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -155.5, -56.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -156.7, -61.6 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -156.7, -61.6 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -157.9, -64.9 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -157.9, -64.9 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -161.1, -70.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -161.1, -70.2 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -166.5, -73.1 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -166.5, -73.1 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -169.6, -76.2 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -169.6, -76.2 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -170.4, -85.5 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -170.4, -85.5 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -175.4, -88.4 , 0 );
setMoveKey( spep_1 -3 + 200, 1, -175.4, -88.4 , 0 );
setMoveKey( spep_1 -3 + 201, 1, -175.4, -88.4 , 0 );--
setMoveKey( spep_1 -3 + 202, 1, -112.7, -67.2 , 0 );
setMoveKey( spep_1 -3 + 203, 1, -112.7, -67.2 , 0 );--
setMoveKey( spep_1 -3 + 204, 1, -7.3, -630 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -7.3, -630 , 0 );--

s2 = 0.2;
setScaleKey( spep_1 + 0, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_1 + 1, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_1 + 2, 1, 1.99 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 10, 1, 1.99 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 12, 1, 1.98 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 18, 1, 1.98 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 20, 1, 1.97 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 26, 1, 1.97 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 28, 1, 1.96 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 34, 1, 1.96 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 36, 1, 1.95 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 42, 1, 1.95 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 44, 1, 1.94 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 50, 1, 1.94 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 52, 1, 1.93 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 58, 1, 1.93 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 60, 1, 1.92 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 66, 1, 1.92 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 68, 1, 1.91 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 74, 1, 1.91 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 76, 1, 1.9 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 78, 1, 1.9 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 80, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 83, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 95, 1, 2 +s2, 2 +s2 );--

setScaleKey( spep_1 -3 + 96, 1, 1.8 +0.05, 1.8 +0.05 );
setScaleKey( spep_1 -3 + 200, 1, 1.8 +0.05, 1.8 +0.05 );
setScaleKey( spep_1 -3 + 201, 1, 1.8 +0.05, 1.8 +0.05 );--
setScaleKey( spep_1 -3 + 202, 1, 2.02 +s2, 2.02 +s2 );
setScaleKey( spep_1 -3 + 203, 1, 2.02 +s2, 2.02 +s2 );--
setScaleKey( spep_1 -3 + 204, 1, 2, 2 );
setScaleKey( spep_1 -3 + 208, 1, 2, 2 );--

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 83, 1, 0 );
setRotateKey( spep_1 -3 + 85, 1, 0 );
setRotateKey( spep_1 -3 + 86, 1, -15.8 );
setRotateKey( spep_1 -3 + 95, 1, -15.8 );
setRotateKey( spep_1 -3 + 96, 1, 34.8 );
setRotateKey( spep_1 -3 + 102, 1, 34.8 );
setRotateKey( spep_1 -3 + 104, 1, 41.6 );
setRotateKey( spep_1 -3 + 108, 1, 41.6 );
setRotateKey( spep_1 -3 + 110, 1, 45.6 );
setRotateKey( spep_1 -3 + 114, 1, 45.6 );
setRotateKey( spep_1 -3 + 116, 1, 57.4 );
setRotateKey( spep_1 -3 + 120, 1, 57.4 );
setRotateKey( spep_1 -3 + 122, 1, 61.9 );
setRotateKey( spep_1 -3 + 124, 1, 62.4 );
setRotateKey( spep_1 -3 + 126, 1, 62.8 );
setRotateKey( spep_1 -3 + 128, 1, 63.3 );
setRotateKey( spep_1 -3 + 130, 1, 63.8 );
setRotateKey( spep_1 -3 + 132, 1, 64.2 );
setRotateKey( spep_1 -3 + 134, 1, 64.7 );
setRotateKey( spep_1 -3 + 136, 1, 65.2 );
setRotateKey( spep_1 -3 + 138, 1, 65.6 );
setRotateKey( spep_1 -3 + 140, 1, 66.1 );
setRotateKey( spep_1 -3 + 142, 1, 66.6 );
setRotateKey( spep_1 -3 + 144, 1, 67 );
setRotateKey( spep_1 -3 + 146, 1, 67.5 );
setRotateKey( spep_1 -3 + 148, 1, 68 );
setRotateKey( spep_1 -3 + 150, 1, 68.4 );
setRotateKey( spep_1 -3 + 152, 1, 68.9 );
setRotateKey( spep_1 -3 + 158, 1, 68.9 );
setRotateKey( spep_1 -3 + 160, 1, 71.8 );
setRotateKey( spep_1 -3 + 164, 1, 71.8 );
setRotateKey( spep_1 -3 + 166, 1, 74.8 );
setRotateKey( spep_1 -3 + 170, 1, 74.8 );
setRotateKey( spep_1 -3 + 172, 1, 77.8 );
setRotateKey( spep_1 -3 + 176, 1, 77.8 );
setRotateKey( spep_1 -3 + 178, 1, 81.7 );
setRotateKey( spep_1 -3 + 180, 1, 81.7 );
setRotateKey( spep_1 -3 + 182, 1, 84.7 );
setRotateKey( spep_1 -3 + 186, 1, 84.7 );
setRotateKey( spep_1 -3 + 188, 1, 87 );
setRotateKey( spep_1 -3 + 192, 1, 87 );
setRotateKey( spep_1 -3 + 194, 1, 90.4 );
setRotateKey( spep_1 -3 + 200, 1, 90.4 );
setRotateKey( spep_1 -3 + 201, 1, 90.4 );--
setRotateKey( spep_1 -3 + 202, 1, 83 );
setRotateKey( spep_1 -3 + 203, 1, 83 );--
setRotateKey( spep_1 -3 + 204, 1, 231.6 );
setRotateKey( spep_1 -3 + 208, 1, 231.6 );--

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 220, 1, 1 );
setDisp( spep_1 -3 + 242, 1, 0 );

changeAnime( spep_1 -3 + 220, 1, 5 );

setMoveKey( spep_1 -3 + 220, 1, 78.7, -75 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 89.3, -87.4 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 97.5, -97.3 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 103.8, -104.9 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 108.5, -110.5 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 111.8, -114.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 114, -117.2 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 115.4, -118.8 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 116, -119.6 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 116.3, -119.9 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 116.3, -120 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 116.3, -120 , 0 );

setScaleKey( spep_1 -3 + 220, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 222, 1, 0.22, 0.22 );
setScaleKey( spep_1 -3 + 224, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 226, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 228, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 230, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 232, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 234, 1, 0.09, 0.09 );
setScaleKey( spep_1 -3 + 242, 1, 0.09, 0.09 );

setRotateKey( spep_1 -3 + 220, 1, 70.6 );
setRotateKey( spep_1 -3 + 222, 1, 77.1 );
setRotateKey( spep_1 -3 + 224, 1, 82.2 );
setRotateKey( spep_1 -3 + 226, 1, 86.3 );
setRotateKey( spep_1 -3 + 228, 1, 89.3 );
setRotateKey( spep_1 -3 + 230, 1, 91.5 );
setRotateKey( spep_1 -3 + 232, 1, 93 );
setRotateKey( spep_1 -3 + 234, 1, 93.9 );
setRotateKey( spep_1 -3 + 236, 1, 94.3 );
setRotateKey( spep_1 -3 + 238, 1, 94.5 );
setRotateKey( spep_1 -3 + 242, 1, 94.5 );

-- ** 音 ** --
--高速移動
SE012 = playSeVer2( spep_1 + 0, 1121, "",spep_1 + 88, 0, 10, -1);
SE013 = playSeVer2( spep_1 + 0, 1183, "",spep_1 + 88, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 0, SE013, 65 );

--壁激突
SE014 = playSeVer2( spep_1 + 74, 1159, "",spep_1 + 208, 0, 54, -1);
SE015 = playSeVer2( spep_1 + 74, 1190, "",spep_1 + 156, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 74, SE015, 83 );
SE016 = playSeVer2( spep_1 + 74, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE016, 79 );

--振りかぶる
SE017 = playSeVer2( spep_1 + 158, 1004, "", 0, 0, 0, -1);

--叩き落とす
SE018 = playSeVer2( spep_1 + 186, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 186, SE018, 75 );
SE019 = playSeVer2( spep_1 + 190, 1169, "", 0, 0, 0, -1);

--落ちていく
SE020 = playSeVer2( spep_1 + 216, 1179, "",spep_1 + 260, 0, 14, -1);

--水に落ちる
SE021 = playSeVer2( spep_1 + 236, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_1 + 236, SE021, 164 );
setStartTimeMs( SE021,  283 );
SE022 = playSeVer2( spep_1 + 238, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 238, SE022, 79 );

--向かっていく
SE023 = playSeVer2( spep_1 + 304, 1182, "",spep_1 +366, 0, 8, -1);
SE024 = playSeVer2( spep_1 + 304, 9, "",spep_1 +366, 0, 8, -1);
SE025 = playSeVer2( spep_1 + 304, 1167, "",spep_1 +366, 0, 8, 0.6);
setSeVolumeByWorkId( spep_1 + 304, SE025, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 360 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 360;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 湖へ潜る→腹パンチ(260F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_3 + 0, SP_05, 260, 0x100, -1, 0, 0, 0 );  --湖へ潜る→腹パンチ ef_003_front
setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 260, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 260, punch_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 260, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 260 -1, punch_f, 255 );
setEffAlphaKey( spep_3 + 260, punch_f, 0 );

punch_b = entryEffectLife( spep_3 + 0, SP_06, 260, 0x80, -1, 0, 0, 0 );  --湖へ潜る→腹パンチ ef_003_back
setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 260, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 260, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 260, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 260 -1, punch_b, 255 );
setEffAlphaKey( spep_3 + 260, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 172, 1, 1 );
--setDisp( spep_3 -3 + 263, 1, 0 );

changeAnime( spep_3 -3 + 172, 1, 106 );

setMoveKey( spep_3 -3 + 172, 1, -455.2, -274.4 , 0 );
setMoveKey( spep_3 -3 + 174, 1, -423.7, -271 , 0 );
setMoveKey( spep_3 -3 + 176, 1, -385.9, -259 , 0 );
setMoveKey( spep_3 -3 + 178, 1, -359, -254.6 , 0 );
setMoveKey( spep_3 -3 + 180, 1, -341.9, -257.8 , 0 );
setMoveKey( spep_3 -3 + 182, 1, -317.9, -252.9 , 0 );
setMoveKey( spep_3 -3 + 184, 1, -292, -242.8 , 0 );
setMoveKey( spep_3 -3 + 186, 1, -271.3, -237.5 , 0 );
setMoveKey( spep_3 -3 + 188, 1, -248.7, -229.5 , 0 );
setMoveKey( spep_3 -3 + 190, 1, -230.9, -224.3 , 0 );
setMoveKey( spep_3 -3 + 192, 1, -218.8, -227 , 0 );
setMoveKey( spep_3 -3 + 194, 1, -203.4, -221.9 , 0 );
setMoveKey( spep_3 -3 + 196, 1, -189.5, -216.4 , 0 );
setMoveKey( spep_3 -3 + 198, 1, -176.6, -211.7 , 0 );
setMoveKey( spep_3 -3 + 200, 1, -166.4, -206.2 , 0 );
setMoveKey( spep_3 -3 + 202, 1, -156.2, -202.2 , 0 );
setMoveKey( spep_3 -3 + 204, 1, -146.5, -199.1 , 0 );
setMoveKey( spep_3 -3 + 206, 1, -138.1, -195.6 , 0 );
setMoveKey( spep_3 -3 + 208, 1, -129.2, -193.2 , 0 );
setMoveKey( spep_3 -3 + 210, 1, -121.5, -189.9 , 0 );
setMoveKey( spep_3 -3 + 212, 1, -114.9, -186.3 , 0 );
setMoveKey( spep_3 -3 + 214, 1, -107.9, -183.1 , 0 );
setMoveKey( spep_3 -3 + 216, 1, -100.7, -178.4 , 0 );
setMoveKey( spep_3 -3 + 218, 1, -94.4, -175.4 , 0 );
setMoveKey( spep_3 -3 + 220, 1, -89.3, -174.2 , 0 );
setMoveKey( spep_3 -3 + 222, 1, -83.4, -171.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, -77.5, -168.4 , 0 );
setMoveKey( spep_3 -3 + 226, 1, -72.1, -165.6 , 0 );
setMoveKey( spep_3 -3 + 228, 1, -66.5, -161.5 , 0 );
setMoveKey( spep_3 -3 + 230, 1, -61.5, -158.9 , 0 );
setMoveKey( spep_3 -3 + 232, 1, -57.4, -157.9 , 0 );
setMoveKey( spep_3 -3 + 234, 1, -52.8, -155.3 , 0 );
setMoveKey( spep_3 -3 + 236, 1, -48, -152.8 , 0 );
setMoveKey( spep_3 -3 + 238, 1, -43.6, -150.3 , 0 );
setMoveKey( spep_3 -3 + 240, 1, -39, -146.5 , 0 );
setMoveKey( spep_3 -3 + 242, 1, -34.8, -144.2 , 0 );
setMoveKey( spep_3 -3 + 244, 1, -31.4, -143.3 , 0 );
setMoveKey( spep_3 -3 + 246, 1, -27.4, -141 , 0 );
setMoveKey( spep_3 -3 + 248, 1, -23.3, -138.6 , 0 );
setMoveKey( spep_3 -3 + 250, 1, -19.5, -136.3 , 0 );
setMoveKey( spep_3 -3 + 252, 1, -15.5, -132.8 , 0 );
setMoveKey( spep_3 -3 + 254, 1, -11.9, -130.5 , 0 );
setMoveKey( spep_3 -3 + 256, 1, -8.8, -129.6 , 0 );
setMoveKey( spep_3 -3 + 258, 1, -5.2, -127.4 , 0 );
setMoveKey( spep_3 -3 + 260, 1, -1.5, -125 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 1.9, -122.7 , 0 );
--setMoveKey( spep_3 -3 + 263, 1, 1.9, -122.7 , 0 );

setScaleKey( spep_3 -3 + 172, 1, 7.07, 7.07 );
setScaleKey( spep_3 -3 + 174, 1, 6.8, 6.8 );
setScaleKey( spep_3 -3 + 176, 1, 6.56, 6.56 );
setScaleKey( spep_3 -3 + 178, 1, 6.32, 6.32 );
setScaleKey( spep_3 -3 + 180, 1, 6.1, 6.1 );
setScaleKey( spep_3 -3 + 182, 1, 5.88, 5.88 );
setScaleKey( spep_3 -3 + 184, 1, 5.68, 5.68 );
setScaleKey( spep_3 -3 + 186, 1, 5.49, 5.49 );
setScaleKey( spep_3 -3 + 188, 1, 5.3, 5.3 );
setScaleKey( spep_3 -3 + 190, 1, 5.13, 5.13 );
setScaleKey( spep_3 -3 + 192, 1, 4.96, 4.96 );
setScaleKey( spep_3 -3 + 194, 1, 4.81, 4.81 );
setScaleKey( spep_3 -3 + 196, 1, 4.67, 4.67 );
setScaleKey( spep_3 -3 + 198, 1, 4.54, 4.54 );
setScaleKey( spep_3 -3 + 200, 1, 4.41, 4.41 );
setScaleKey( spep_3 -3 + 202, 1, 4.31, 4.31 );
setScaleKey( spep_3 -3 + 204, 1, 4.21, 4.21 );
setScaleKey( spep_3 -3 + 206, 1, 4.12, 4.12 );
setScaleKey( spep_3 -3 + 208, 1, 4.03, 4.03 );
setScaleKey( spep_3 -3 + 210, 1, 3.95, 3.95 );
setScaleKey( spep_3 -3 + 212, 1, 3.86, 3.86 );
setScaleKey( spep_3 -3 + 214, 1, 3.78, 3.78 );
setScaleKey( spep_3 -3 + 216, 1, 3.71, 3.71 );
setScaleKey( spep_3 -3 + 218, 1, 3.63, 3.63 );
setScaleKey( spep_3 -3 + 220, 1, 3.56, 3.56 );
setScaleKey( spep_3 -3 + 222, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 224, 1, 3.43, 3.43 );
setScaleKey( spep_3 -3 + 226, 1, 3.36, 3.36 );
setScaleKey( spep_3 -3 + 228, 1, 3.3, 3.3 );
setScaleKey( spep_3 -3 + 230, 1, 3.24, 3.24 );
setScaleKey( spep_3 -3 + 232, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 234, 1, 3.12, 3.12 );
setScaleKey( spep_3 -3 + 236, 1, 3.06, 3.06 );
setScaleKey( spep_3 -3 + 238, 1, 3.01, 3.01 );
setScaleKey( spep_3 -3 + 240, 1, 2.95, 2.95 );
setScaleKey( spep_3 -3 + 242, 1, 2.9, 2.9 );
setScaleKey( spep_3 -3 + 244, 1, 2.84, 2.84 );
setScaleKey( spep_3 -3 + 246, 1, 2.79, 2.79 );
setScaleKey( spep_3 -3 + 248, 1, 2.74, 2.74 );
setScaleKey( spep_3 -3 + 250, 1, 2.69, 2.69 );
setScaleKey( spep_3 -3 + 252, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 254, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 256, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 258, 1, 2.49, 2.49 );
setScaleKey( spep_3 -3 + 260, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 262, 1, 2.39, 2.39 );
--setScaleKey( spep_3 -3 + 263, 1, 2.39, 2.39 );

setRotateKey( spep_3 -3 + 172, 1, 3 );
setRotateKey( spep_3 -3 + 174, 1, 1.1 );
setRotateKey( spep_3 -3 + 176, 1, -0.7 );
setRotateKey( spep_3 -3 + 178, 1, -2.4 );
setRotateKey( spep_3 -3 + 180, 1, -4 );
setRotateKey( spep_3 -3 + 182, 1, -5.6 );
setRotateKey( spep_3 -3 + 184, 1, -7.1 );
setRotateKey( spep_3 -3 + 186, 1, -8.5 );
setRotateKey( spep_3 -3 + 188, 1, -9.8 );
setRotateKey( spep_3 -3 + 190, 1, -11.1 );
setRotateKey( spep_3 -3 + 192, 1, -14.3 );
setRotateKey( spep_3 -3 + 194, 1, -15.4 );
setRotateKey( spep_3 -3 + 196, 1, -15.4 );
setRotateKey( spep_3 -3 + 198, 1, -16.4 );
setRotateKey( spep_3 -3 + 200, 1, -12.3 );
setRotateKey( spep_3 -3 + 202, 1, -13 );
setRotateKey( spep_3 -3 + 204, 1, -15.7 );
setRotateKey( spep_3 -3 + 206, 1, -16.4 );
setRotateKey( spep_3 -3 + 208, 1, -21.1 );
setRotateKey( spep_3 -3 + 210, 1, -21.7 );
setRotateKey( spep_3 -3 + 212, 1, -20.3 );
setRotateKey( spep_3 -3 + 214, 1, -20.8 );
setRotateKey( spep_3 -3 + 216, 1, -21.4 );
setRotateKey( spep_3 -3 + 218, 1, -21.9 );
setRotateKey( spep_3 -3 + 220, 1, -22.4 );
setRotateKey( spep_3 -3 + 222, 1, -23 );
setRotateKey( spep_3 -3 + 224, 1, -23.4 );
setRotateKey( spep_3 -3 + 226, 1, -23.9 );
setRotateKey( spep_3 -3 + 228, 1, -24.4 );
setRotateKey( spep_3 -3 + 230, 1, -24.8 );
setRotateKey( spep_3 -3 + 232, 1, -25.3 );
setRotateKey( spep_3 -3 + 234, 1, -25.7 );
setRotateKey( spep_3 -3 + 236, 1, -26.1 );
setRotateKey( spep_3 -3 + 238, 1, -26.5 );
setRotateKey( spep_3 -3 + 240, 1, -26.9 );
setRotateKey( spep_3 -3 + 242, 1, -27.3 );
setRotateKey( spep_3 -3 + 244, 1, -27.7 );
setRotateKey( spep_3 -3 + 246, 1, -28.1 );
setRotateKey( spep_3 -3 + 248, 1, -28.4 );
setRotateKey( spep_3 -3 + 250, 1, -28.8 );
setRotateKey( spep_3 -3 + 252, 1, -29.2 );
setRotateKey( spep_3 -3 + 254, 1, -29.6 );
setRotateKey( spep_3 -3 + 256, 1, -29.9 );
setRotateKey( spep_3 -3 + 258, 1, -30.3 );
setRotateKey( spep_3 -3 + 260, 1, -30.6 );
setRotateKey( spep_3 -3 + 262, 1, -31 );
--setRotateKey( spep_3 -3 + 263, 1, -31 );

-- ** 音 ** --
--水に突っ込む
SE027 = playSeVer2( spep_3 + 4, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 4, SE027, 58 );
SE028 = playSeVer2( spep_3 + 4, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 4, SE028, 59 );
SE029 = playSeVer2( spep_3 + 4, 1166, "",spep_3 + 102, 0, 24, -1);
setSeVolumeByWorkId( spep_3 + 4, SE029, 140 );
SE030 = playSeVer2( spep_3 + 4, 1019, "", 0, 0, 0, -1);
setPitch( spep_3 + 4, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );
SE031 = playSeVer2( spep_3 + 4, 1226, "",spep_3 + 108, 0, 36, -1);

--水しぶき上がる
SE032 = playSeVer2( spep_3 + 64, 1024, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 66, 1188, "", 0, 0, 0, -1);

--ズン
SE034 = playSeVer2( spep_3 + 106, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 106, SE034, 112 );

--水音
SE035 = playSeVer2( spep_3 + 106, 1165, "",spep_3 +460, 0, 188, -1);
setSeVolumeByWorkId( spep_3 + 106, SE035, 80 );
SE036 = playSeVer2( spep_3 + 106, 1166, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 106, SE036, 73 );
SE037 = playSeVer2( spep_3 + 120, 1164, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 160, 1168, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_3 + 160, SE038, 71 );
setStartTimeMs( SE038,  467 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 260 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 260;


------------------------------------------------------
-- 湖から飛び立つ(214F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --湖から飛び立つ   ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 214, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 214, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --湖から飛び立つ   ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 214, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 214, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 200, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

a4 = 8;
setMoveKey( spep_4 + 0, 1, -3.3 +a4, -85.2 , 0 );
setMoveKey( spep_4 + 1, 1, -3.4 +a4, -86.8 , 0 );
setMoveKey( spep_4 + 2, 1, -3.4 +a4, -88.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.5 +a4, -89.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -3.6 +a4, -91.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -3.7 +a4, -92.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -3.7 +a4, -94.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -3.8 +a4, -95.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -3.9 +a4, -96.9 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -4 +a4, -98.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -4 +a4, -99.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -4.1 +a4, -100.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -4.1 +a4, -101.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -4.1 +a4, -102.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -4.2 +a4, -102.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -4.2 +a4, -103.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -4.2 +a4, -104.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -4.3 +a4, -104.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -4.3 +a4, -105.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -4.3 +a4, -106.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -4.4 +a4, -106.6 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -4.4 +a4, -107.2 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -4.4 +a4, -107.7 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -4.4 +a4, -108.2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -4.5 +a4, -108.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -4.5 +a4, -109.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -4.5 +a4, -109.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -4.5 +a4, -110.2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -4.5 +a4, -110.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -4.6 +a4, -111.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -4.6 +a4, -111.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -4.6 +a4, -111.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -4.6 +a4, -112.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -4.6 +a4, -112.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -4.6 +a4, -113.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -4.6 +a4, -113.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -4.7 +a4, -113.8 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -4.7 +a4, -114.2 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -4.8 +a4, -114.5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -4.8 +a4, -114.8 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -4.8 +a4, -115.1 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -4.8 +a4, -115.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -4.8 +a4, -115.7 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -4.8 +a4, -116 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -4.8 +a4, -116.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -4.8 +a4, -116.6 , 0 );
setMoveKey( spep_4 -3 + 200, 1, -4.8 +a4, -116.6 , 0 );

setScaleKey( spep_4 + 0, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 1, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 6, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 8, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 12, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 16, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 18, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 24, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 26, 1, 0.07, 0.07 );
setScaleKey( spep_4 -3 + 36, 1, 0.07, 0.07 );
setScaleKey( spep_4 -3 + 38, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 50, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 52, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 68, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 70, 1, 0.04, 0.04 );
setScaleKey( spep_4 -3 + 200, 1, 0.04, 0.04 );

setRotateKey( spep_4 + 0, 1, -24.3 );
setRotateKey( spep_4 -3 + 200, 1, -24.3 );

-- ** 音 ** --
--飛び上がる
SE039 = playSeVer2( spep_4 + 70, 1189, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 70, 1116, "",spep_4 + 122, 0, 30, -1);
SE041 = playSeVer2( spep_4 + 70, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 70, SE041, 51 );
SE042 = playSeVer2( spep_4 + 74, 44, "", 0, 0, 0, -1);

--水が埋まる
SE043 = playSeVer2( spep_4 + 112, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 112, SE043, 133 );
setPitch( spep_4 + 112, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );
SE044 = playSeVer2( spep_4 + 136, 1160, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 136, SE044, 19 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 94 );
endPhase( spep_4 + 204 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵に迫る→膝蹴り(118F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 118, 0x100, -1, 0, 0, 0 );  --敵に迫る→膝蹴り    ef_001_front
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 118, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 118, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 118 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 118, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 118, 0x80, -1, 0, 0, 0 );  --敵に迫る→膝蹴り ef_001_back
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 118, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 118, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 118 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 118, first_b, 0 );

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );

a1 = 5.4;

setMoveKey( spep_0 + 0, 1, 207.1, 24.5 , 0 );
setMoveKey( spep_0 + 1, 1, 204.29, 19.11 , 0 );
setMoveKey( spep_0 + 2, 1, 201.48, 13.72 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 198.67, 8.33 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 195.86, 2.94 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 193.05, -2.45 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 190.24, -7.84 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 187.43, -13.23 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 184.62, -18.62 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 181.81, -24.01 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 179, -29.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 176.19, -34.79 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 173.38, -40.18 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 170.57, -45.57 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 167.76, -50.96 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 164.95, -56.35 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 162.14, -61.74 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 159.33, -67.13 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 156.52, -72.52 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 153.71, -77.91 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 150.9, -83.3 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 148.09, -88.69 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 145.28, -94.08 , 0 );

setMoveKey( spep_0 -3 + 42, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 145.22, -94.26 , 0 );
setMoveKey( spep_0 -3 + 61, 1, 145.22, -94.26 , 0 );

setMoveKey( spep_0 -3 + 62, 1, 161.2, 17.2 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 159.3, 17.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 157.4, 17.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 155.6, 17.2 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 153.7, 17.2 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 151.8, 17.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 149.9, 17.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 148.1, 17.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 146.2, 17.2 , 0 );

s1 = 0.4;
setScaleKey( spep_0 + 0, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 1, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 2, 1, 2.01, 2.01 );
setScaleKey( spep_0 -3 + 6, 1, 1.84 +0.1, 1.84 +0.1 );
setScaleKey( spep_0 -3 + 7, 1, 1.84 +0.1, 1.84 +0.1 );
setScaleKey( spep_0 -3 + 8, 1, 1.67 +0.2, 1.67 +0.2 );
setScaleKey( spep_0 -3 + 9, 1, 1.67 +0.2, 1.67 +0.2 );
setScaleKey( spep_0 -3 + 10, 1, 1.49 +0.3, 1.49 +0.3 );
setScaleKey( spep_0 -3 + 12, 1, 1.4 +0.37, 1.4 +0.37 );
setScaleKey( spep_0 -3 + 14, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_0 -3 + 16, 1, 1.33 +s1, 1.33 +s1 );
setScaleKey( spep_0 -3 + 18, 1, 1.3 +s1, 1.3 +s1 );
setScaleKey( spep_0 -3 + 20, 1, 1.28 +s1, 1.28 +s1 );
setScaleKey( spep_0 -3 + 22, 1, 1.25 +s1, 1.25 +s1 );
setScaleKey( spep_0 -3 + 24, 1, 1.23 +s1, 1.23 +s1 );
setScaleKey( spep_0 -3 + 26, 1, 1.2 +s1, 1.2 +s1 );
setScaleKey( spep_0 -3 + 28, 1, 1.18 +s1, 1.18 +s1 );
setScaleKey( spep_0 -3 + 30, 1, 1.14 +s1, 1.14 +s1 );
setScaleKey( spep_0 -3 + 32, 1, 1.12 +s1, 1.12 +s1 );
setScaleKey( spep_0 -3 + 34, 1, 1.11 +s1, 1.11 +s1 );
setScaleKey( spep_0 -3 + 36, 1, 1.09 +s1, 1.09 +s1 );
setScaleKey( spep_0 -3 + 38, 1, 1.07 +s1, 1.07 +s1 );
setScaleKey( spep_0 -3 + 40, 1, 1.06 +s1, 1.06 +s1 );
setScaleKey( spep_0 -3 + 42, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_0 -3 + 48, 1, 1.05 +s1, 1.05 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_0 -3 + 56, 1, 1.04 +s1, 1.04 +s1 );
setScaleKey( spep_0 -3 + 58, 1, 1.03 +s1, 1.03 +s1 );
setScaleKey( spep_0 -3 + 60, 1, 1.03 +s1, 1.03 +s1 );
setScaleKey( spep_0 -3 + 61, 1, 1.03 +s1, 1.03 +s1 );
setScaleKey( spep_0 -3 + 62, 1, 1.85, 1.85 );

setRotateKey( spep_0 + 0, 1, -6.2 );
setRotateKey( spep_0 + 1, 1, -6 );
setRotateKey( spep_0 + 2, 1, -5.8 );
setRotateKey( spep_0 -3 + 6, 1, -5.6 );
setRotateKey( spep_0 -3 + 7, 1, -5.6 );
setRotateKey( spep_0 -3 + 8, 1, -5.4 );
setRotateKey( spep_0 -3 + 9, 1, -5.4 );
setRotateKey( spep_0 -3 + 10, 1,-5.2 );
setRotateKey( spep_0 -3 + 40, 1, -5.2 );
--setRotateKey( spep_0 -3 + 42, 1, -5.1 );
--setRotateKey( spep_0 -3 + 44, 1, -5.1 );
--setRotateKey( spep_0 -3 + 46, 1, -5 );
--setRotateKey( spep_0 -3 + 48, 1, -4.9 );
--setRotateKey( spep_0 -3 + 50, 1, -4.8 );
--setRotateKey( spep_0 -3 + 52, 1, -4.8 );
--setRotateKey( spep_0 -3 + 54, 1, -4.7 );
--setRotateKey( spep_0 -3 + 56, 1, -4.6 );
--setRotateKey( spep_0 -3 + 58, 1, -4.5 );
--setRotateKey( spep_0 -3 + 60, 1, -4.5 );
--setRotateKey( spep_0 -3 + 61, 1, -4.5 );
--setRotateKey( spep_0 -3 + 62, 1, -4.3 );
setRotateKey( spep_0 -3 + 62, 1, -5.2 );

-- ** 音 ** --
--飛び上がる
SE001 = playSeVer2( spep_0 + 0, 1116, "",spep_0 + 44, 0, 20, -1);
SE002 = playSeVer2( spep_0 + 2, 1182, "", 0, 12, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 75 );
setStartTimeMs( SE002,  67 );
SE003 = playSeVer2( spep_0 + 4, 1004, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 40, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE004, 45 );
SE005 = playSeVer2( spep_0 + 42, 43, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 118 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 76 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 146.2, 17.2 , 0 );
    setMoveKey( SP_dodge + 2, 1, 144.3, 17.2 , 0 );
    setMoveKey( SP_dodge + 4, 1, 142.4, 17.2 , 0 );
    setMoveKey( SP_dodge + 6, 1, 140.6, 17.2 , 0 );
    setMoveKey( SP_dodge + 8, 1, 138.7, 17.2 , 0 );
    setMoveKey( SP_dodge + 10, 1, 136.8, 17.2 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.85, 1.85 );
    setScaleKey( SP_dodge + 10, 1, 1.85, 1.85 );

    setRotateKey( SP_dodge + 0, 1, -4.3 );
    setRotateKey( SP_dodge + 10, 1, -4.3 );
    
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

spep_x = spep_0 + 110;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

setDisp( spep_0 -3 + 108, 1, 0 );
changeAnime( spep_0 -3 + 100, 1, 8 );

setMoveKey( spep_0 -3 + 80, 1, 144.3, 17.2 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 142.4, 17.2 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 140.6, 17.2 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 138.7, 17.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 136.8, 17.2 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 134.9, 17.2 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 133.1, 17.2 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 131.2, 17.2 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 131.2, 17.2 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -78.7, -109.9 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -78.7, -109.9 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -562.6, -407.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -562.6, -407.7 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -562.6, -407.7 , 0 );

setScaleKey( spep_0 -3 + 99, 1, 1.85, 1.85 );
setScaleKey( spep_0 -3 + 100, 1, 2.29, 2.29 );
setScaleKey( spep_0 -3 + 108, 1, 2.29, 2.29 );

setRotateKey( spep_0 -3 + 99, 1, -4.3 );
setRotateKey( spep_0 -3 + 100, 1, -39.7 );
setRotateKey( spep_0 -3 + 108, 1, -39.7 );


-- ** 音 ** --
--飛び膝蹴り
SE006 = playSeVer2( spep_0 + 84, 1189, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE007, 83 );
SE008 = playSeVer2( spep_0 + 90, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 91 );
SE009 = playSeVer2( spep_0 + 90, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE009, 86 );
SE010 = playSeVer2( spep_0 + 94, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE010, 85 );

--顔カットイン
--SE011 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 118;


------------------------------------------------------
-- 膝で押す→湖へ突進(360F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
knees_f = entryEffectLife( spep_1 + 0, SP_03r, 360, 0x100, -1, 0, 0, 0 );  --膝で押す→湖へ突進  ef_002_front
setEffMoveKey( spep_1 + 0, knees_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 360, knees_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, knees_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 360, knees_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, knees_f, 0 );
setEffRotateKey( spep_1 + 360, knees_f, 0 );
setEffAlphaKey( spep_1 + 0, knees_f, 255 );
setEffAlphaKey( spep_1 + 360 -1, knees_f, 255 );
setEffAlphaKey( spep_1 + 360, knees_f, 0 );

kneez_b = entryEffectLife( spep_1 + 0, SP_04, 360, 0x80, -1, 0, 0, 0 );  --膝で押す→湖へ突進   ef_002_back
setEffMoveKey( spep_1 + 0, kneez_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 360, kneez_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kneez_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 360, kneez_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kneez_b, 0 );
setEffRotateKey( spep_1 + 360, kneez_b, 0 );
setEffAlphaKey( spep_1 + 0, kneez_b, 255 );
setEffAlphaKey( spep_1 + 360 -1, kneez_b, 255 );
setEffAlphaKey( spep_1 + 360, kneez_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 208, 1, 0 );

changeAnime( spep_1 + 0, 1, 8 );
changeAnime( spep_1 -3 + 96, 1, 6 );
changeAnime( spep_1 -3 + 202, 1, 8 );
changeAnime( spep_1 -3 + 204, 1, 6 );

setMoveKey( spep_1 + 0, 1, -11.9, -66 , 0 );
setMoveKey( spep_1 + 1, 1, -15.8, -66 , 0 );
setMoveKey( spep_1 + 2, 1, -19.6, -66 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -23.4, -66 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -27.2, -66 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -31, -66 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -34.8, -66 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -38.6, -66 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -42.4, -66 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -46.2, -66 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -50, -66 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -53.8, -66 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -57.6, -66 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -61.4, -66 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -65.2, -66 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -69, -66 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -72.9, -66 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -76.7, -66 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -80.5, -66 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -84.3, -66 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -88.1, -66 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -91.9, -66 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -95.7, -66 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -99.5, -66 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -103.3, -66 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -107.1, -66 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -110.9, -66 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -114.7, -66 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -118.5, -66 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -122.3, -66 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -126.1, -66 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -130, -66 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -133.8, -66 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -137.6, -66 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -141.4, -66 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -145.2, -66 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -149, -66 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -152.8, -66 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -156.6, -66 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -160.4, -66 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -159.9, -66 , 0 );
setMoveKey( spep_1 -3 + 83, 1, -161.9, -66 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -354.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 87, 1, -354.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 42, -29.5 , 0 );
setMoveKey( spep_1 -3 + 89, 1, 42, -29.5 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -322.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 91, 1, -322.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 13, -29.5 , 0 );
setMoveKey( spep_1 -3 + 93, 1, 13, -29.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -272.9, -29.5 , 0 );
setMoveKey( spep_1 -3 + 95, 1, -272.9, -29.5 , 0 );--
setMoveKey( spep_1 -3 + 96, 1, -22.5, -36.8 , 0 );
setMoveKey( spep_1 -3 + 97, 1, -22.5, -36.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -216.4, -36.8 , 0 );
setMoveKey( spep_1 -3 + 99, 1, -216.4, -36.8 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -217.4, -36.8 , 0 );
setMoveKey( spep_1 -3 + 101, 1, -217.4, -36.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -60.5, -36.8 , 0 );
setMoveKey( spep_1 -3 + 103, 1, -60.5, -36.8 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -191.4, -36.9 , 0 );
setMoveKey( spep_1 -3 + 105, 1, -191.4, -36.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -97.5, -36.9 , 0 );
setMoveKey( spep_1 -3 + 107, 1, -97.5, -36.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -167.4, -36.9 , 0 );
setMoveKey( spep_1 -3 + 109, 1, -167.4, -36.9 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -122.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 111, 1, -122.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -158.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 113, 1, -158.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -136.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 115, 1, -136.3, -36.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -170.7, -40 , 0 );
setMoveKey( spep_1 -3 + 117, 1, -170.7, -40 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -160.7, -40 , 0 );
setMoveKey( spep_1 -3 + 119, 1, -160.7, -40 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -166.6, -40 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -162.6, -47.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -162.1, -48 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -161.7, -48.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -161.2, -49.2 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -160.7, -49.8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -160.3, -50.4 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -159.8, -51 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -159.3, -51.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -158.8, -52.1 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -158.4, -52.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -157.9, -53.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -157.4, -53.9 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -157, -54.5 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -156.5, -55 , 0 );
setMoveKey( spep_1 -3 + 150, 1, -156, -55.6 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -155.5, -56.2 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -155.5, -56.2 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -156.7, -61.6 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -156.7, -61.6 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -157.9, -64.9 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -157.9, -64.9 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -161.1, -70.2 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -161.1, -70.2 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -166.5, -73.1 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -166.5, -73.1 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -169.6, -76.2 , 0 );
setMoveKey( spep_1 -3 + 186, 1, -169.6, -76.2 , 0 );
setMoveKey( spep_1 -3 + 188, 1, -170.4, -85.5 , 0 );
setMoveKey( spep_1 -3 + 192, 1, -170.4, -85.5 , 0 );
setMoveKey( spep_1 -3 + 194, 1, -175.4, -88.4 , 0 );
setMoveKey( spep_1 -3 + 200, 1, -175.4, -88.4 , 0 );
setMoveKey( spep_1 -3 + 201, 1, -175.4, -88.4 , 0 );--
setMoveKey( spep_1 -3 + 202, 1, -112.7, -67.2 , 0 );
setMoveKey( spep_1 -3 + 203, 1, -112.7, -67.2 , 0 );--
setMoveKey( spep_1 -3 + 204, 1, -7.3, -630 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -7.3, -630 , 0 );--

s2 = 0.2;
setScaleKey( spep_1 + 0, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_1 + 1, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_1 + 2, 1, 1.99 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 10, 1, 1.99 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 12, 1, 1.98 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 18, 1, 1.98 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 20, 1, 1.97 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 26, 1, 1.97 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 28, 1, 1.96 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 34, 1, 1.96 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 36, 1, 1.95 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 42, 1, 1.95 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 44, 1, 1.94 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 50, 1, 1.94 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 52, 1, 1.93 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 58, 1, 1.93 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 60, 1, 1.92 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 66, 1, 1.92 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 68, 1, 1.91 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 74, 1, 1.91 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 76, 1, 1.9 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 78, 1, 1.9 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 80, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 83, 1, 2 +s2, 2 +s2 );
setScaleKey( spep_1 -3 + 95, 1, 2 +s2, 2 +s2 );--

setScaleKey( spep_1 -3 + 96, 1, 1.8 +0.05, 1.8 +0.05 );
setScaleKey( spep_1 -3 + 200, 1, 1.8 +0.05, 1.8 +0.05 );
setScaleKey( spep_1 -3 + 201, 1, 1.8 +0.05, 1.8 +0.05 );--
setScaleKey( spep_1 -3 + 202, 1, 2.02 +s2, 2.02 +s2 );
setScaleKey( spep_1 -3 + 203, 1, 2.02 +s2, 2.02 +s2 );--
setScaleKey( spep_1 -3 + 204, 1, 2, 2 );
setScaleKey( spep_1 -3 + 208, 1, 2, 2 );--

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 -3 + 83, 1, 0 );
setRotateKey( spep_1 -3 + 85, 1, 0 );
setRotateKey( spep_1 -3 + 86, 1, -15.8 );
setRotateKey( spep_1 -3 + 95, 1, -15.8 );
setRotateKey( spep_1 -3 + 96, 1, 34.8 );
setRotateKey( spep_1 -3 + 102, 1, 34.8 );
setRotateKey( spep_1 -3 + 104, 1, 41.6 );
setRotateKey( spep_1 -3 + 108, 1, 41.6 );
setRotateKey( spep_1 -3 + 110, 1, 45.6 );
setRotateKey( spep_1 -3 + 114, 1, 45.6 );
setRotateKey( spep_1 -3 + 116, 1, 57.4 );
setRotateKey( spep_1 -3 + 120, 1, 57.4 );
setRotateKey( spep_1 -3 + 122, 1, 61.9 );
setRotateKey( spep_1 -3 + 124, 1, 62.4 );
setRotateKey( spep_1 -3 + 126, 1, 62.8 );
setRotateKey( spep_1 -3 + 128, 1, 63.3 );
setRotateKey( spep_1 -3 + 130, 1, 63.8 );
setRotateKey( spep_1 -3 + 132, 1, 64.2 );
setRotateKey( spep_1 -3 + 134, 1, 64.7 );
setRotateKey( spep_1 -3 + 136, 1, 65.2 );
setRotateKey( spep_1 -3 + 138, 1, 65.6 );
setRotateKey( spep_1 -3 + 140, 1, 66.1 );
setRotateKey( spep_1 -3 + 142, 1, 66.6 );
setRotateKey( spep_1 -3 + 144, 1, 67 );
setRotateKey( spep_1 -3 + 146, 1, 67.5 );
setRotateKey( spep_1 -3 + 148, 1, 68 );
setRotateKey( spep_1 -3 + 150, 1, 68.4 );
setRotateKey( spep_1 -3 + 152, 1, 68.9 );
setRotateKey( spep_1 -3 + 158, 1, 68.9 );
setRotateKey( spep_1 -3 + 160, 1, 71.8 );
setRotateKey( spep_1 -3 + 164, 1, 71.8 );
setRotateKey( spep_1 -3 + 166, 1, 74.8 );
setRotateKey( spep_1 -3 + 170, 1, 74.8 );
setRotateKey( spep_1 -3 + 172, 1, 77.8 );
setRotateKey( spep_1 -3 + 176, 1, 77.8 );
setRotateKey( spep_1 -3 + 178, 1, 81.7 );
setRotateKey( spep_1 -3 + 180, 1, 81.7 );
setRotateKey( spep_1 -3 + 182, 1, 84.7 );
setRotateKey( spep_1 -3 + 186, 1, 84.7 );
setRotateKey( spep_1 -3 + 188, 1, 87 );
setRotateKey( spep_1 -3 + 192, 1, 87 );
setRotateKey( spep_1 -3 + 194, 1, 90.4 );
setRotateKey( spep_1 -3 + 200, 1, 90.4 );
setRotateKey( spep_1 -3 + 201, 1, 90.4 );--
setRotateKey( spep_1 -3 + 202, 1, 83 );
setRotateKey( spep_1 -3 + 203, 1, 83 );--
setRotateKey( spep_1 -3 + 204, 1, 231.6 );
setRotateKey( spep_1 -3 + 208, 1, 231.6 );--

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 220, 1, 1 );
setDisp( spep_1 -3 + 242, 1, 0 );

changeAnime( spep_1 -3 + 220, 1, 5 );

setMoveKey( spep_1 -3 + 220, 1, 78.7, -75 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 89.3, -87.4 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 97.5, -97.3 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 103.8, -104.9 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 108.5, -110.5 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 111.8, -114.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 114, -117.2 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 115.4, -118.8 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 116, -119.6 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 116.3, -119.9 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 116.3, -120 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 116.3, -120 , 0 );

setScaleKey( spep_1 -3 + 220, 1, 0.27, 0.27 );
setScaleKey( spep_1 -3 + 222, 1, 0.22, 0.22 );
setScaleKey( spep_1 -3 + 224, 1, 0.18, 0.18 );
setScaleKey( spep_1 -3 + 226, 1, 0.15, 0.15 );
setScaleKey( spep_1 -3 + 228, 1, 0.13, 0.13 );
setScaleKey( spep_1 -3 + 230, 1, 0.11, 0.11 );
setScaleKey( spep_1 -3 + 232, 1, 0.1, 0.1 );
setScaleKey( spep_1 -3 + 234, 1, 0.09, 0.09 );
setScaleKey( spep_1 -3 + 242, 1, 0.09, 0.09 );

setRotateKey( spep_1 -3 + 220, 1, 70.6 );
setRotateKey( spep_1 -3 + 222, 1, 77.1 );
setRotateKey( spep_1 -3 + 224, 1, 82.2 );
setRotateKey( spep_1 -3 + 226, 1, 86.3 );
setRotateKey( spep_1 -3 + 228, 1, 89.3 );
setRotateKey( spep_1 -3 + 230, 1, 91.5 );
setRotateKey( spep_1 -3 + 232, 1, 93 );
setRotateKey( spep_1 -3 + 234, 1, 93.9 );
setRotateKey( spep_1 -3 + 236, 1, 94.3 );
setRotateKey( spep_1 -3 + 238, 1, 94.5 );
setRotateKey( spep_1 -3 + 242, 1, 94.5 );

-- ** 音 ** --
--高速移動
SE012 = playSeVer2( spep_1 + 0, 1121, "",spep_1 + 88, 0, 10, -1);
SE013 = playSeVer2( spep_1 + 0, 1183, "",spep_1 + 88, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 0, SE013, 65 );

--壁激突
SE014 = playSeVer2( spep_1 + 74, 1159, "",spep_1 + 208, 0, 54, -1);
SE015 = playSeVer2( spep_1 + 74, 1190, "",spep_1 + 156, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 74, SE015, 83 );
SE016 = playSeVer2( spep_1 + 74, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE016, 79 );

--振りかぶる
SE017 = playSeVer2( spep_1 + 158, 1004, "", 0, 0, 0, -1);

--叩き落とす
SE018 = playSeVer2( spep_1 + 186, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 186, SE018, 75 );
SE019 = playSeVer2( spep_1 + 190, 1169, "", 0, 0, 0, -1);

--落ちていく
SE020 = playSeVer2( spep_1 + 216, 1179, "",spep_1 + 260, 0, 14, -1);

--水に落ちる
SE021 = playSeVer2( spep_1 + 236, 1163, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_1 + 236, SE021, 164 );
setStartTimeMs( SE021,  283 );
SE022 = playSeVer2( spep_1 + 238, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 238, SE022, 79 );

--向かっていく
SE023 = playSeVer2( spep_1 + 304, 1182, "",spep_1 +366, 0, 8, -1);
SE024 = playSeVer2( spep_1 + 304, 9, "",spep_1 +366, 0, 8, -1);
SE025 = playSeVer2( spep_1 + 304, 1167, "",spep_1 +366, 0, 8, 0.6);
setSeVolumeByWorkId( spep_1 + 304, SE025, 44 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 360 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 360;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 湖へ潜る→腹パンチ(260F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
punch_f = entryEffectLife( spep_3 + 0, SP_05r, 260, 0x100, -1, 0, 0, 0 );  --湖へ潜る→腹パンチ ef_003_front
setEffMoveKey( spep_3 + 0, punch_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 260, punch_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 260, punch_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_f, 0 );
setEffRotateKey( spep_3 + 260, punch_f, 0 );
setEffAlphaKey( spep_3 + 0, punch_f, 255 );
setEffAlphaKey( spep_3 + 260 -1, punch_f, 255 );
setEffAlphaKey( spep_3 + 260, punch_f, 0 );

punch_b = entryEffectLife( spep_3 + 0, SP_06, 260, 0x80, -1, 0, 0, 0 );  --湖へ潜る→腹パンチ ef_003_back
setEffMoveKey( spep_3 + 0, punch_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 260, punch_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, punch_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 260, punch_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, punch_b, 0 );
setEffRotateKey( spep_3 + 260, punch_b, 0 );
setEffAlphaKey( spep_3 + 0, punch_b, 255 );
setEffAlphaKey( spep_3 + 260 -1, punch_b, 255 );
setEffAlphaKey( spep_3 + 260, punch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 172, 1, 1 );
--setDisp( spep_3 -3 + 263, 1, 0 );

changeAnime( spep_3 -3 + 172, 1, 106 );

setMoveKey( spep_3 -3 + 172, 1, -455.2, -274.4 , 0 );
setMoveKey( spep_3 -3 + 174, 1, -423.7, -271 , 0 );
setMoveKey( spep_3 -3 + 176, 1, -385.9, -259 , 0 );
setMoveKey( spep_3 -3 + 178, 1, -359, -254.6 , 0 );
setMoveKey( spep_3 -3 + 180, 1, -341.9, -257.8 , 0 );
setMoveKey( spep_3 -3 + 182, 1, -317.9, -252.9 , 0 );
setMoveKey( spep_3 -3 + 184, 1, -292, -242.8 , 0 );
setMoveKey( spep_3 -3 + 186, 1, -271.3, -237.5 , 0 );
setMoveKey( spep_3 -3 + 188, 1, -248.7, -229.5 , 0 );
setMoveKey( spep_3 -3 + 190, 1, -230.9, -224.3 , 0 );
setMoveKey( spep_3 -3 + 192, 1, -218.8, -227 , 0 );
setMoveKey( spep_3 -3 + 194, 1, -203.4, -221.9 , 0 );
setMoveKey( spep_3 -3 + 196, 1, -189.5, -216.4 , 0 );
setMoveKey( spep_3 -3 + 198, 1, -176.6, -211.7 , 0 );
setMoveKey( spep_3 -3 + 200, 1, -166.4, -206.2 , 0 );
setMoveKey( spep_3 -3 + 202, 1, -156.2, -202.2 , 0 );
setMoveKey( spep_3 -3 + 204, 1, -146.5, -199.1 , 0 );
setMoveKey( spep_3 -3 + 206, 1, -138.1, -195.6 , 0 );
setMoveKey( spep_3 -3 + 208, 1, -129.2, -193.2 , 0 );
setMoveKey( spep_3 -3 + 210, 1, -121.5, -189.9 , 0 );
setMoveKey( spep_3 -3 + 212, 1, -114.9, -186.3 , 0 );
setMoveKey( spep_3 -3 + 214, 1, -107.9, -183.1 , 0 );
setMoveKey( spep_3 -3 + 216, 1, -100.7, -178.4 , 0 );
setMoveKey( spep_3 -3 + 218, 1, -94.4, -175.4 , 0 );
setMoveKey( spep_3 -3 + 220, 1, -89.3, -174.2 , 0 );
setMoveKey( spep_3 -3 + 222, 1, -83.4, -171.3 , 0 );
setMoveKey( spep_3 -3 + 224, 1, -77.5, -168.4 , 0 );
setMoveKey( spep_3 -3 + 226, 1, -72.1, -165.6 , 0 );
setMoveKey( spep_3 -3 + 228, 1, -66.5, -161.5 , 0 );
setMoveKey( spep_3 -3 + 230, 1, -61.5, -158.9 , 0 );
setMoveKey( spep_3 -3 + 232, 1, -57.4, -157.9 , 0 );
setMoveKey( spep_3 -3 + 234, 1, -52.8, -155.3 , 0 );
setMoveKey( spep_3 -3 + 236, 1, -48, -152.8 , 0 );
setMoveKey( spep_3 -3 + 238, 1, -43.6, -150.3 , 0 );
setMoveKey( spep_3 -3 + 240, 1, -39, -146.5 , 0 );
setMoveKey( spep_3 -3 + 242, 1, -34.8, -144.2 , 0 );
setMoveKey( spep_3 -3 + 244, 1, -31.4, -143.3 , 0 );
setMoveKey( spep_3 -3 + 246, 1, -27.4, -141 , 0 );
setMoveKey( spep_3 -3 + 248, 1, -23.3, -138.6 , 0 );
setMoveKey( spep_3 -3 + 250, 1, -19.5, -136.3 , 0 );
setMoveKey( spep_3 -3 + 252, 1, -15.5, -132.8 , 0 );
setMoveKey( spep_3 -3 + 254, 1, -11.9, -130.5 , 0 );
setMoveKey( spep_3 -3 + 256, 1, -8.8, -129.6 , 0 );
setMoveKey( spep_3 -3 + 258, 1, -5.2, -127.4 , 0 );
setMoveKey( spep_3 -3 + 260, 1, -1.5, -125 , 0 );
setMoveKey( spep_3 -3 + 262, 1, 1.9, -122.7 , 0 );
--setMoveKey( spep_3 -3 + 263, 1, 1.9, -122.7 , 0 );

setScaleKey( spep_3 -3 + 172, 1, 7.07, 7.07 );
setScaleKey( spep_3 -3 + 174, 1, 6.8, 6.8 );
setScaleKey( spep_3 -3 + 176, 1, 6.56, 6.56 );
setScaleKey( spep_3 -3 + 178, 1, 6.32, 6.32 );
setScaleKey( spep_3 -3 + 180, 1, 6.1, 6.1 );
setScaleKey( spep_3 -3 + 182, 1, 5.88, 5.88 );
setScaleKey( spep_3 -3 + 184, 1, 5.68, 5.68 );
setScaleKey( spep_3 -3 + 186, 1, 5.49, 5.49 );
setScaleKey( spep_3 -3 + 188, 1, 5.3, 5.3 );
setScaleKey( spep_3 -3 + 190, 1, 5.13, 5.13 );
setScaleKey( spep_3 -3 + 192, 1, 4.96, 4.96 );
setScaleKey( spep_3 -3 + 194, 1, 4.81, 4.81 );
setScaleKey( spep_3 -3 + 196, 1, 4.67, 4.67 );
setScaleKey( spep_3 -3 + 198, 1, 4.54, 4.54 );
setScaleKey( spep_3 -3 + 200, 1, 4.41, 4.41 );
setScaleKey( spep_3 -3 + 202, 1, 4.31, 4.31 );
setScaleKey( spep_3 -3 + 204, 1, 4.21, 4.21 );
setScaleKey( spep_3 -3 + 206, 1, 4.12, 4.12 );
setScaleKey( spep_3 -3 + 208, 1, 4.03, 4.03 );
setScaleKey( spep_3 -3 + 210, 1, 3.95, 3.95 );
setScaleKey( spep_3 -3 + 212, 1, 3.86, 3.86 );
setScaleKey( spep_3 -3 + 214, 1, 3.78, 3.78 );
setScaleKey( spep_3 -3 + 216, 1, 3.71, 3.71 );
setScaleKey( spep_3 -3 + 218, 1, 3.63, 3.63 );
setScaleKey( spep_3 -3 + 220, 1, 3.56, 3.56 );
setScaleKey( spep_3 -3 + 222, 1, 3.49, 3.49 );
setScaleKey( spep_3 -3 + 224, 1, 3.43, 3.43 );
setScaleKey( spep_3 -3 + 226, 1, 3.36, 3.36 );
setScaleKey( spep_3 -3 + 228, 1, 3.3, 3.3 );
setScaleKey( spep_3 -3 + 230, 1, 3.24, 3.24 );
setScaleKey( spep_3 -3 + 232, 1, 3.18, 3.18 );
setScaleKey( spep_3 -3 + 234, 1, 3.12, 3.12 );
setScaleKey( spep_3 -3 + 236, 1, 3.06, 3.06 );
setScaleKey( spep_3 -3 + 238, 1, 3.01, 3.01 );
setScaleKey( spep_3 -3 + 240, 1, 2.95, 2.95 );
setScaleKey( spep_3 -3 + 242, 1, 2.9, 2.9 );
setScaleKey( spep_3 -3 + 244, 1, 2.84, 2.84 );
setScaleKey( spep_3 -3 + 246, 1, 2.79, 2.79 );
setScaleKey( spep_3 -3 + 248, 1, 2.74, 2.74 );
setScaleKey( spep_3 -3 + 250, 1, 2.69, 2.69 );
setScaleKey( spep_3 -3 + 252, 1, 2.64, 2.64 );
setScaleKey( spep_3 -3 + 254, 1, 2.59, 2.59 );
setScaleKey( spep_3 -3 + 256, 1, 2.54, 2.54 );
setScaleKey( spep_3 -3 + 258, 1, 2.49, 2.49 );
setScaleKey( spep_3 -3 + 260, 1, 2.44, 2.44 );
setScaleKey( spep_3 -3 + 262, 1, 2.39, 2.39 );
--setScaleKey( spep_3 -3 + 263, 1, 2.39, 2.39 );

setRotateKey( spep_3 -3 + 172, 1, 3 );
setRotateKey( spep_3 -3 + 174, 1, 1.1 );
setRotateKey( spep_3 -3 + 176, 1, -0.7 );
setRotateKey( spep_3 -3 + 178, 1, -2.4 );
setRotateKey( spep_3 -3 + 180, 1, -4 );
setRotateKey( spep_3 -3 + 182, 1, -5.6 );
setRotateKey( spep_3 -3 + 184, 1, -7.1 );
setRotateKey( spep_3 -3 + 186, 1, -8.5 );
setRotateKey( spep_3 -3 + 188, 1, -9.8 );
setRotateKey( spep_3 -3 + 190, 1, -11.1 );
setRotateKey( spep_3 -3 + 192, 1, -14.3 );
setRotateKey( spep_3 -3 + 194, 1, -15.4 );
setRotateKey( spep_3 -3 + 196, 1, -15.4 );
setRotateKey( spep_3 -3 + 198, 1, -16.4 );
setRotateKey( spep_3 -3 + 200, 1, -12.3 );
setRotateKey( spep_3 -3 + 202, 1, -13 );
setRotateKey( spep_3 -3 + 204, 1, -15.7 );
setRotateKey( spep_3 -3 + 206, 1, -16.4 );
setRotateKey( spep_3 -3 + 208, 1, -21.1 );
setRotateKey( spep_3 -3 + 210, 1, -21.7 );
setRotateKey( spep_3 -3 + 212, 1, -20.3 );
setRotateKey( spep_3 -3 + 214, 1, -20.8 );
setRotateKey( spep_3 -3 + 216, 1, -21.4 );
setRotateKey( spep_3 -3 + 218, 1, -21.9 );
setRotateKey( spep_3 -3 + 220, 1, -22.4 );
setRotateKey( spep_3 -3 + 222, 1, -23 );
setRotateKey( spep_3 -3 + 224, 1, -23.4 );
setRotateKey( spep_3 -3 + 226, 1, -23.9 );
setRotateKey( spep_3 -3 + 228, 1, -24.4 );
setRotateKey( spep_3 -3 + 230, 1, -24.8 );
setRotateKey( spep_3 -3 + 232, 1, -25.3 );
setRotateKey( spep_3 -3 + 234, 1, -25.7 );
setRotateKey( spep_3 -3 + 236, 1, -26.1 );
setRotateKey( spep_3 -3 + 238, 1, -26.5 );
setRotateKey( spep_3 -3 + 240, 1, -26.9 );
setRotateKey( spep_3 -3 + 242, 1, -27.3 );
setRotateKey( spep_3 -3 + 244, 1, -27.7 );
setRotateKey( spep_3 -3 + 246, 1, -28.1 );
setRotateKey( spep_3 -3 + 248, 1, -28.4 );
setRotateKey( spep_3 -3 + 250, 1, -28.8 );
setRotateKey( spep_3 -3 + 252, 1, -29.2 );
setRotateKey( spep_3 -3 + 254, 1, -29.6 );
setRotateKey( spep_3 -3 + 256, 1, -29.9 );
setRotateKey( spep_3 -3 + 258, 1, -30.3 );
setRotateKey( spep_3 -3 + 260, 1, -30.6 );
setRotateKey( spep_3 -3 + 262, 1, -31 );
--setRotateKey( spep_3 -3 + 263, 1, -31 );

-- ** 音 ** --
--水に突っ込む
SE027 = playSeVer2( spep_3 + 4, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 4, SE027, 58 );
SE028 = playSeVer2( spep_3 + 4, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 4, SE028, 59 );
SE029 = playSeVer2( spep_3 + 4, 1166, "",spep_3 + 102, 0, 24, -1);
setSeVolumeByWorkId( spep_3 + 4, SE029, 140 );
SE030 = playSeVer2( spep_3 + 4, 1019, "", 0, 0, 0, -1);
setPitch( spep_3 + 4, SE030, -400 );
setTimeStretch( SE030, 0.73, 30, 4 );
SE031 = playSeVer2( spep_3 + 4, 1226, "",spep_3 + 108, 0, 36, -1);

--水しぶき上がる
SE032 = playSeVer2( spep_3 + 64, 1024, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_3 + 66, 1188, "", 0, 0, 0, -1);

--ズン
SE034 = playSeVer2( spep_3 + 106, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 106, SE034, 112 );

--水音
SE035 = playSeVer2( spep_3 + 106, 1165, "",spep_3 +460, 0, 188, -1);
setSeVolumeByWorkId( spep_3 + 106, SE035, 80 );
SE036 = playSeVer2( spep_3 + 106, 1166, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 106, SE036, 73 );
SE037 = playSeVer2( spep_3 + 120, 1164, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_3 + 160, 1168, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_3 + 160, SE038, 71 );
setStartTimeMs( SE038,  467 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 260 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 260;


------------------------------------------------------
-- 湖から飛び立つ(214F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_07r, 0x100, -1, 0, 0, 0 );  --湖から飛び立つ   ef_004_front
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 214, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 214, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --湖から飛び立つ   ef_004_back
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 214, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 214, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 200, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

a4 = 8;
setMoveKey( spep_4 + 0, 1, -3.3 +a4, -85.2 , 0 );
setMoveKey( spep_4 + 1, 1, -3.4 +a4, -86.8 , 0 );
setMoveKey( spep_4 + 2, 1, -3.4 +a4, -88.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.5 +a4, -89.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -3.6 +a4, -91.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -3.7 +a4, -92.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -3.7 +a4, -94.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -3.8 +a4, -95.6 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -3.9 +a4, -96.9 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -4 +a4, -98.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -4 +a4, -99.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -4.1 +a4, -100.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -4.1 +a4, -101.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -4.1 +a4, -102.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -4.2 +a4, -102.8 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -4.2 +a4, -103.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -4.2 +a4, -104.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -4.3 +a4, -104.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -4.3 +a4, -105.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -4.3 +a4, -106.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -4.4 +a4, -106.6 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -4.4 +a4, -107.2 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -4.4 +a4, -107.7 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -4.4 +a4, -108.2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -4.5 +a4, -108.8 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -4.5 +a4, -109.2 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -4.5 +a4, -109.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -4.5 +a4, -110.2 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -4.5 +a4, -110.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -4.6 +a4, -111.1 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -4.6 +a4, -111.5 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -4.6 +a4, -111.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -4.6 +a4, -112.3 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -4.6 +a4, -112.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -4.6 +a4, -113.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -4.6 +a4, -113.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -4.7 +a4, -113.8 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -4.7 +a4, -114.2 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -4.8 +a4, -114.5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -4.8 +a4, -114.8 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -4.8 +a4, -115.1 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -4.8 +a4, -115.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -4.8 +a4, -115.7 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -4.8 +a4, -116 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -4.8 +a4, -116.3 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -4.8 +a4, -116.6 , 0 );
setMoveKey( spep_4 -3 + 200, 1, -4.8 +a4, -116.6 , 0 );

setScaleKey( spep_4 + 0, 1, 0.12, 0.12 );
setScaleKey( spep_4 + 1, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 6, 1, 0.11, 0.11 );
setScaleKey( spep_4 -3 + 8, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 12, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 16, 1, 0.09, 0.09 );
setScaleKey( spep_4 -3 + 18, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 24, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 26, 1, 0.07, 0.07 );
setScaleKey( spep_4 -3 + 36, 1, 0.07, 0.07 );
setScaleKey( spep_4 -3 + 38, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 50, 1, 0.06, 0.06 );
setScaleKey( spep_4 -3 + 52, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 68, 1, 0.05, 0.05 );
setScaleKey( spep_4 -3 + 70, 1, 0.04, 0.04 );
setScaleKey( spep_4 -3 + 200, 1, 0.04, 0.04 );

setRotateKey( spep_4 + 0, 1, -24.3 );
setRotateKey( spep_4 -3 + 200, 1, -24.3 );

-- ** 音 ** --
--飛び上がる
SE039 = playSeVer2( spep_4 + 70, 1189, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 70, 1116, "",spep_4 + 122, 0, 30, -1);
SE041 = playSeVer2( spep_4 + 70, 1170, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 70, SE041, 51 );
SE042 = playSeVer2( spep_4 + 74, 44, "", 0, 0, 0, -1);

--水が埋まる
SE043 = playSeVer2( spep_4 + 112, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 112, SE043, 133 );
setPitch( spep_4 + 112, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );
SE044 = playSeVer2( spep_4 + 136, 1160, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 136, SE044, 19 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 94 );
endPhase( spep_4 + 204 );

end