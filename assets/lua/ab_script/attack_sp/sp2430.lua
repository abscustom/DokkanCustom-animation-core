--1024970:URクリリン&孫悟飯(少年期)_クイックコンビネーション
--sp_effect_b1_00212

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
SP_01 = 160506; --構える　台詞カットイン   ef_001
SP_02 = 160508; --空中コンボ攻撃   ef_002
SP_03 = 160510; --空中コンボ攻撃   ef_003
SP_04 = 160512; --下から敵を貫く   ef_004
SP_05 = 160513; --下から敵を貫く   ef_005
SP_06 = 160514; --手前に向かって合流 ef_006
SP_07 = 160515; --パンチ→爆発    ef_007

--敵側
SP_01r = 160507;    --構える　台詞カットイン(敵側)   ef_001_r
SP_02r = 160509;    --空中コンボ攻撃(敵側)   ef_002_r
SP_03r = 160511;    --空中コンボ攻撃(敵側)   ef_003_r


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
-- 構える　台詞カットイン(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --構える　台詞カットイン ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 28, 1233, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 86, 1109, "", 0, 0, 0, -1);

--二人ジャンプ
SE005 = playSeVer2( spep_0 + 112, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 112, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- 空中コンボ攻撃(196F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
combo_f = entryEffectLife( spep_1 + 0, SP_02, 196, 0x100, -1, 0, 0, 0 );  --空中コンボ攻撃 ef_002
setEffMoveKey( spep_1 + 0, combo_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 196, combo_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 196, combo_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_f, 0 );
setEffRotateKey( spep_1 + 196, combo_f, 0 );
setEffAlphaKey( spep_1 + 0, combo_f, 255 );
setEffAlphaKey( spep_1 + 196 -1, combo_f, 255 );
setEffAlphaKey( spep_1 + 196, combo_f, 0 );

combo_b = entryEffectLife( spep_1 + 0, SP_03, 196, 0x80, -1, 0, 0, 0 );  --空中コンボ攻撃  ef_003
setEffMoveKey( spep_1 + 0, combo_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 196, combo_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 196, combo_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_b, 0 );
setEffRotateKey( spep_1 + 196, combo_b, 0 );
setEffAlphaKey( spep_1 + 0, combo_b, 255 );
setEffAlphaKey( spep_1 + 196 -1, combo_b, 255 );
setEffAlphaKey( spep_1 + 196, combo_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 28, 1, 1 );
setDisp( spep_1 -3 + 199, 1, 0 );
changeAnime( spep_1 -3 + 28, 1, 104 );
changeAnime( spep_1 -3 + 68, 1, 108 );
changeAnime( spep_1 -3 + 116, 1, 106 );
changeAnime( spep_1 -3 + 156, 1, 108 );
changeAnime( spep_1 -3 + 164, 1, 106 );
changeAnime( spep_1 -3 + 178, 1, 108 );

setMoveKey( spep_1 -3 + 28, 1, 0, 938 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 0, 625.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 0, 390.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 0, 222.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 0, 109.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 0, 41 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 0, 5.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 0, -7.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 0, -9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 0, -4.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 0, 0 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 0, 0 , 0 );--
setMoveKey( spep_1 -3 + 68, 1, 68.6, 11.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 84.9, 13.4 , 0 );

setMoveKey( spep_1 -3 + 72, 1, 101.2 +10, 15.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 117.4 +10, 17.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 117.4 +10, 17.3 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 108.2, 16.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 99, 15.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 89.8, 14.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 80.5, 13.7 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 71.3, 12.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 62.1, 11.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 52.8, 10.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 43.6, 10 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 34.4, 9.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 25.1, 8.1 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 34.9, 8.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 34.9, 8.1 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 34.9, 8.1 , 0 );--
setMoveKey( spep_1 -3 + 116, 1, 34.7, 9.3 -30 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 34.8 +8, 9.1 -20 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 34.9 +10, 8.9 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 35 -0, 8.7 -20 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 35.1 +10, 8.4 -10, 0 );
setMoveKey( spep_1 -3 + 126, 1, 33.1 +10, -0.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 31, -9.2 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 61.8, 14.3 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 92.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 123.5, 61.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 154.3, 84.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 185.1, 108.2 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 168.4, 84.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 166.3, 75.9 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 164.2, 67.1 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 162.2, 58.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 160.1, 49.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 158, 40.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 156, 31.9 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 156, 31.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 153.9 +60, 23 +10 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 153.9 +60, 23 +10 , 0 );--
setMoveKey( spep_1 -3 + 156, 1, 200.9 +40, 67.6 +15 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 188 +10, 65.9 +20 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 175.1 +60, 64.2 +25 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 162.2 +20, 62.5 +15 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 162.2, 62.5 , 0 );--
setMoveKey( spep_1 -3 + 164, 1, 169.9, 55.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 155, 49.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 140.2, 44 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 120.5, 54.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 100.9, 65.4 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 81.2, 76.1 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 61.6, 86.7 , 0 );
setMoveKey( spep_1 -3 + 177, 1, 61.6, 86.7 , 0 );--
setMoveKey( spep_1 -3 + 178, 1, 117.6 +120, 160.1 +40 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 122.9 +70, 161.1 +10 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 128.2 +10, 162 +2 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 133.5 +70, 163 +35 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 138.8 +40, 163.9 +15 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 144.1, 164.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 156.4, 167.1 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 168.6, 169.3 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 180.9, 171.5 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 193.2, 173.8 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 205.5, 176 , 0 );
setMoveKey( spep_1 -3 + 199, 1, 205.5, 176 , 0 );

s1 = 0.4;
setScaleKey( spep_1 -3 + 28, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_1 -3 + 67, 1, 2.2 +s1, 2.2 +s1 );--
setScaleKey( spep_1 -3 + 68, 1, 2.5 +s1, 2.5 +s1 );
setScaleKey( spep_1 -3 + 70, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_1 -3 + 72, 1, 2.5 +s1, 2.5 +s1 );
setScaleKey( spep_1 -3 + 74, 1, 2.4 +s1, 2.4 +s1 );
setScaleKey( spep_1 -3 + 76, 1, 2.3 +s1, 2.3 +s1 );
setScaleKey( spep_1 -3 + 115, 1, 2.3 +s1, 2.3 +s1 );
setScaleKey( spep_1 -3 + 116, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 118, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 120, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 122, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 124, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 126, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 153, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 154, 1, 2.72, 2.72 );
setScaleKey( spep_1 -3 + 155, 1, 2.72, 2.72 );--
setScaleKey( spep_1 -3 + 156, 1, 2.49 +s1, 2.49 +s1 );
setScaleKey( spep_1 -3 + 158, 1, 2.19 +s1, 2.19 +s1 );
setScaleKey( spep_1 -3 + 160, 1, 2.44 +s1, 2.44 +s1 );
setScaleKey( spep_1 -3 + 162, 1, 2.32 +s1, 2.32 +s1 );
setScaleKey( spep_1 -3 + 163, 1, 2.32 +s1, 2.32 +s1 );--
setScaleKey( spep_1 -3 + 164, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_1 -3 + 168, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_1 -3 + 170, 1, 2.27 +s1, 2.27 +s1 );
setScaleKey( spep_1 -3 + 172, 1, 2.34 +s1, 2.34 +s1 );
setScaleKey( spep_1 -3 + 174, 1, 2.41 +s1, 2.41 +s1 );
setScaleKey( spep_1 -3 + 176, 1, 2.48 +s1, 2.48 +s1 );
setScaleKey( spep_1 -3 + 177, 1, 2.48 +s1, 2.48 +s1 );--
setScaleKey( spep_1 -3 + 178, 1, 3.176 +s1, 3.176 +s1 );
setScaleKey( spep_1 -3 + 180, 1, 2.78 +s1, 2.78 +s1 );
setScaleKey( spep_1 -3 + 182, 1, 2.58 +s1, 2.58 +s1 );
setScaleKey( spep_1 -3 + 184, 1, 2.88 +s1, 2.88 +s1 );
setScaleKey( spep_1 -3 + 186, 1, 2.74 +s1, 2.74 +s1 );
setScaleKey( spep_1 -3 + 188, 1, 2.64 +s1, 2.64 +s1 );
setScaleKey( spep_1 -3 + 199, 1, 2.64 +s1, 2.64 +s1 );

setRotateKey( spep_1 -3 + 28, 1, 0 );
setRotateKey( spep_1 -3 + 67, 1, 0 );--
setRotateKey( spep_1 -3 + 68, 1, 0 );
setRotateKey( spep_1 -3 + 115, 1, 0 );--
setRotateKey( spep_1 -3 + 116, 1, -106 );
setRotateKey( spep_1 -3 + 155, 1, -106 );--
setRotateKey( spep_1 -3 + 156, 1, -38 );
setRotateKey( spep_1 -3 + 163, 1, -38 );--
setRotateKey( spep_1 -3 + 164, 1, -104 );
setRotateKey( spep_1 -3 + 177, 1, -104 );--
setRotateKey( spep_1 -3 + 178, 1, -32 );
setRotateKey( spep_1 -3 + 199, 1, -32 );

-- ** 音 ** --
--悟飯蹴り
SE007 = playSeVer2( spep_1 + 52, 1003, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 58, 1187, "",spep_1 + 108, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 58, SE008, 84 );
SE009 = playSeVer2( spep_1 + 58, 1010, "", 0, 0, 0, -1);

--クリリン突っ込んでくる
SE010 = playSeVer2( spep_1 + 104, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 104, 1110, "",spep_1 + 144, 0, 16, -1);
SE012 = playSeVer2( spep_1 + 104, 1169, "",spep_1 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 104, SE012, 78 );

--クリリン蹴り
SE013 = playSeVer2( spep_1 + 140, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE013, 75 );
SE014 = playSeVer2( spep_1 + 142, 1110, "", 0, 0, 0, -1);

--クリリンパンチ
SE015 = playSeVer2( spep_1 + 164, 1000, "",spep_1 + 190, 0, 16, -1);
SE016 = playSeVer2( spep_1 + 164, 1009, "", 0, 0, 0, -1);

--悟飯飛び上がる
SE017 = playSeVer2( spep_1 + 190, 1278, "", 0, 0, 0, 0.6);
SE018 = playSeVer2( spep_1 + 190, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 190, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 190, 1314, "",spep_1 + 404, 0, 24, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 196;


------------------------------------------------------
-- 下から敵を貫く(256F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_04, 256, 0x100, -1, 0, 0, 0 );  --下から敵を貫く    ef_004
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 256, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 256 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 256, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_05, 256, 0x80, -1, 0, 0, 0 );  --下から敵を貫く ef_005
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 256, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 256, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 256 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 256, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 210, 1, 1 );
setDisp( spep_2 -3 + 259, 1, 0 );
changeAnime( spep_2 -3 + 210, 1, 108 );

setMoveKey( spep_2 -3 + 210, 1, -17, -130.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -11.4, -83.6 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -14.2, -107.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -17, -130.7 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -17, -140.5 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -17, -150.2 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -17, -160 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -17, -169.8 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -17, -179.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -17, -189.4 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -17, -199.2 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -17, -208.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, -17, -218.7 , 0 );
setMoveKey( spep_2 -3 + 236, 1, -17, -228.5 , 0 );
setMoveKey( spep_2 -3 + 238, 1, -17, -238.3 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -17, -248.1 , 0 );
setMoveKey( spep_2 -3 + 242, 1, -17, -257.9 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -17, -267.6 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -17, -277.4 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -17, -287.2 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -17, -297 , 0 );
setMoveKey( spep_2 -3 + 252, 1, -17, -306.8 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -17, -316.6 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -17, -326.3 , 0 );
setMoveKey( spep_2 -3 + 258, 1, -17, -336.1 , 0 );
setMoveKey( spep_2 -3 + 259, 1, -17, -336.1 , 0 );

setScaleKey( spep_2 -3 + 210, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_2 -3 + 259, 1, 2.1 +s1, 2.1 +s1 );

setRotateKey( spep_2 -3 + 210, 1, -100.5 );
setRotateKey( spep_2 -3 + 259, 1, -100.5 );

-- ** 音 ** --
--加速
SE021 = playSeVer2( spep_2 + 48, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE021, 71 );

--悟飯飛び上がる
SE022 = playSeVer2( spep_2 + 54, 1019, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 118, 1019, "", 0, 0, 0, -1);

--敵ヒット
SE024 = playSeVer2( spep_2 + 176, 1114, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 176, 1126, "",spep_2 + 298, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 176, SE025, 71 );
SE026 = playSeVer2( spep_2 + 176, 1179, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 176, 1153, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 176, 1068, "", 0, 0, 0, -1);

--悟飯合流
SE029 = playSeVer2( spep_2 + 250, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 256 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 256;


------------------------------------------------------
-- 手前に向かって合流(106F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gather = entryEffectLife( spep_3 + 0, SP_06, 106, 0x100, -1, 0, 0, 0 );  --手前に向かって合流    ef_006
setEffMoveKey( spep_3 + 0, gather, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, gather, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gather, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, gather, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gather, 0 );
setEffRotateKey( spep_3 + 106, gather, 0 );
setEffAlphaKey( spep_3 + 0, gather, 255 );
setEffAlphaKey( spep_3 + 106 -1, gather, 255 );
setEffAlphaKey( spep_3 + 106, gather, 0 );

-- ** 音 ** --
--二人向かってくる
SE030 = playSeVer2( spep_3 + 54, 1182, "",spep_3 + 120, 0, 12, -1);
SE031 = playSeVer2( spep_3 + 54, 9, "",spep_3 + 120, 0, 12, -1);
SE032 = playSeVer2( spep_3 + 54, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 54, SE032, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;


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

--二人で敵貫く
SE034 = playSeVer2( spep_4 + 86, 1011, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_4 + 86, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_4 + 86, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 86, SE036, 79 );
SE037 = playSeVer2( spep_4 + 86, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 86, SE037, 87 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- パンチ→爆発(136F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --パンチ→爆発    ef_007
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 136, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 136, finish,255 );

-- ** 音 ** --
--二人で敵貫く
SE038 = playSeVer2( spep_5 + 4, 1072, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_5 + 26, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 26 );
endPhase( spep_5 + 126 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構える　台詞カットイン(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 116, 0x100, -1, 0, 0, 0 );  --構える　台詞カットイン ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 28, 1233, "", 0, 0, 0, -1);

--瞬間移動
SE004 = playSeVer2( spep_0 + 86, 1109, "", 0, 0, 0, -1);

--二人ジャンプ
SE005 = playSeVer2( spep_0 + 112, 1117, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 112, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE006, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- 空中コンボ攻撃(196F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
combo_f = entryEffectLife( spep_1 + 0, SP_02r, 196, 0x100, -1, 0, 0, 0 );  --空中コンボ攻撃 ef_002
setEffMoveKey( spep_1 + 0, combo_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 196, combo_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 196, combo_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_f, 0 );
setEffRotateKey( spep_1 + 196, combo_f, 0 );
setEffAlphaKey( spep_1 + 0, combo_f, 255 );
setEffAlphaKey( spep_1 + 196 -1, combo_f, 255 );
setEffAlphaKey( spep_1 + 196, combo_f, 0 );

combo_b = entryEffectLife( spep_1 + 0, SP_03r, 196, 0x80, -1, 0, 0, 0 );  --空中コンボ攻撃  ef_003
setEffMoveKey( spep_1 + 0, combo_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 196, combo_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 196, combo_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_b, 0 );
setEffRotateKey( spep_1 + 196, combo_b, 0 );
setEffAlphaKey( spep_1 + 0, combo_b, 255 );
setEffAlphaKey( spep_1 + 196 -1, combo_b, 255 );
setEffAlphaKey( spep_1 + 196, combo_b, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 196 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 12 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 28, 1, 1 );
setDisp( spep_1 -3 + 199, 1, 0 );
changeAnime( spep_1 -3 + 28, 1, 104 );
changeAnime( spep_1 -3 + 68, 1, 108 );
changeAnime( spep_1 -3 + 116, 1, 106 );
changeAnime( spep_1 -3 + 156, 1, 108 );
changeAnime( spep_1 -3 + 164, 1, 106 );
changeAnime( spep_1 -3 + 178, 1, 108 );

setMoveKey( spep_1 -3 + 28, 1, 0, 938 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 0, 625.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 0, 390.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 0, 222.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 0, 109.4 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 0, 41 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 0, 5.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 0, -7.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 0, -9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 0, -4.5 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 0, 0 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 0, 0 , 0 );--
setMoveKey( spep_1 -3 + 68, 1, 68.6, 11.4 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 84.9, 13.4 , 0 );

setMoveKey( spep_1 -3 + 72, 1, 101.2 +10, 15.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 117.4 +10, 17.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 117.4 +10, 17.3 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 108.2, 16.4 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 99, 15.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 89.8, 14.6 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 80.5, 13.7 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 71.3, 12.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 62.1, 11.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 52.8, 10.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 43.6, 10 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 34.4, 9.1 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 25.1, 8.1 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 34.9, 8.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 34.9, 8.1 , 0 );
setMoveKey( spep_1 -3 + 115, 1, 34.9, 8.1 , 0 );--
setMoveKey( spep_1 -3 + 116, 1, 34.7, 9.3 -30 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 34.8 +8, 9.1 -20 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 34.9 +10, 8.9 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 35 -0, 8.7 -20 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 35.1 +10, 8.4 -10, 0 );
setMoveKey( spep_1 -3 + 126, 1, 33.1 +10, -0.4 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 31, -9.2 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 61.8, 14.3 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 92.6, 37.8 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 123.5, 61.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 154.3, 84.7 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 185.1, 108.2 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 168.4, 84.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 166.3, 75.9 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 164.2, 67.1 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 162.2, 58.3 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 160.1, 49.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 158, 40.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 156, 31.9 , 0 );
setMoveKey( spep_1 -3 + 153, 1, 156, 31.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 153.9 +60, 23 +10 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 153.9 +60, 23 +10 , 0 );--
setMoveKey( spep_1 -3 + 156, 1, 200.9 +40, 67.6 +15 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 188 +10, 65.9 +20 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 175.1 +60, 64.2 +25 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 162.2 +20, 62.5 +15 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 162.2, 62.5 , 0 );--
setMoveKey( spep_1 -3 + 164, 1, 169.9, 55.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 155, 49.7 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 140.2, 44 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 120.5, 54.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 100.9, 65.4 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 81.2, 76.1 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 61.6, 86.7 , 0 );
setMoveKey( spep_1 -3 + 177, 1, 61.6, 86.7 , 0 );--
setMoveKey( spep_1 -3 + 178, 1, 117.6 +120, 160.1 +40 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 122.9 +70, 161.1 +10 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 128.2 +10, 162 +2 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 133.5 +70, 163 +35 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 138.8 +40, 163.9 +15 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 144.1, 164.9 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 156.4, 167.1 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 168.6, 169.3 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 180.9, 171.5 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 193.2, 173.8 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 205.5, 176 , 0 );
setMoveKey( spep_1 -3 + 199, 1, 205.5, 176 , 0 );

s1 = 0.4;
setScaleKey( spep_1 -3 + 28, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_1 -3 + 67, 1, 2.2 +s1, 2.2 +s1 );--
setScaleKey( spep_1 -3 + 68, 1, 2.5 +s1, 2.5 +s1 );
setScaleKey( spep_1 -3 + 70, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_1 -3 + 72, 1, 2.5 +s1, 2.5 +s1 );
setScaleKey( spep_1 -3 + 74, 1, 2.4 +s1, 2.4 +s1 );
setScaleKey( spep_1 -3 + 76, 1, 2.3 +s1, 2.3 +s1 );
setScaleKey( spep_1 -3 + 115, 1, 2.3 +s1, 2.3 +s1 );
setScaleKey( spep_1 -3 + 116, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 118, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 120, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 122, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 124, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 126, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 153, 1, 2.22, 2.22 );
setScaleKey( spep_1 -3 + 154, 1, 2.72, 2.72 );
setScaleKey( spep_1 -3 + 155, 1, 2.72, 2.72 );--
setScaleKey( spep_1 -3 + 156, 1, 2.49 +s1, 2.49 +s1 );
setScaleKey( spep_1 -3 + 158, 1, 2.19 +s1, 2.19 +s1 );
setScaleKey( spep_1 -3 + 160, 1, 2.44 +s1, 2.44 +s1 );
setScaleKey( spep_1 -3 + 162, 1, 2.32 +s1, 2.32 +s1 );
setScaleKey( spep_1 -3 + 163, 1, 2.32 +s1, 2.32 +s1 );--
setScaleKey( spep_1 -3 + 164, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_1 -3 + 168, 1, 2.2 +s1, 2.2 +s1 );
setScaleKey( spep_1 -3 + 170, 1, 2.27 +s1, 2.27 +s1 );
setScaleKey( spep_1 -3 + 172, 1, 2.34 +s1, 2.34 +s1 );
setScaleKey( spep_1 -3 + 174, 1, 2.41 +s1, 2.41 +s1 );
setScaleKey( spep_1 -3 + 176, 1, 2.48 +s1, 2.48 +s1 );
setScaleKey( spep_1 -3 + 177, 1, 2.48 +s1, 2.48 +s1 );--
setScaleKey( spep_1 -3 + 178, 1, 3.176 +s1, 3.176 +s1 );
setScaleKey( spep_1 -3 + 180, 1, 2.78 +s1, 2.78 +s1 );
setScaleKey( spep_1 -3 + 182, 1, 2.58 +s1, 2.58 +s1 );
setScaleKey( spep_1 -3 + 184, 1, 2.88 +s1, 2.88 +s1 );
setScaleKey( spep_1 -3 + 186, 1, 2.74 +s1, 2.74 +s1 );
setScaleKey( spep_1 -3 + 188, 1, 2.64 +s1, 2.64 +s1 );
setScaleKey( spep_1 -3 + 199, 1, 2.64 +s1, 2.64 +s1 );

setRotateKey( spep_1 -3 + 28, 1, 0 );
setRotateKey( spep_1 -3 + 67, 1, 0 );--
setRotateKey( spep_1 -3 + 68, 1, 0 );
setRotateKey( spep_1 -3 + 115, 1, 0 );--
setRotateKey( spep_1 -3 + 116, 1, -106 );
setRotateKey( spep_1 -3 + 155, 1, -106 );--
setRotateKey( spep_1 -3 + 156, 1, -38 );
setRotateKey( spep_1 -3 + 163, 1, -38 );--
setRotateKey( spep_1 -3 + 164, 1, -104 );
setRotateKey( spep_1 -3 + 177, 1, -104 );--
setRotateKey( spep_1 -3 + 178, 1, -32 );
setRotateKey( spep_1 -3 + 199, 1, -32 );

-- ** 音 ** --
--悟飯蹴り
SE007 = playSeVer2( spep_1 + 52, 1003, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 58, 1187, "",spep_1 + 108, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 58, SE008, 84 );
SE009 = playSeVer2( spep_1 + 58, 1010, "", 0, 0, 0, -1);

--クリリン突っ込んでくる
SE010 = playSeVer2( spep_1 + 104, 1009, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_1 + 104, 1110, "",spep_1 + 144, 0, 16, -1);
SE012 = playSeVer2( spep_1 + 104, 1169, "",spep_1 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 104, SE012, 78 );

--クリリン蹴り
SE013 = playSeVer2( spep_1 + 140, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 140, SE013, 75 );
SE014 = playSeVer2( spep_1 + 142, 1110, "", 0, 0, 0, -1);

--クリリンパンチ
SE015 = playSeVer2( spep_1 + 164, 1000, "",spep_1 + 190, 0, 16, -1);
SE016 = playSeVer2( spep_1 + 164, 1009, "", 0, 0, 0, -1);

--悟飯飛び上がる
SE017 = playSeVer2( spep_1 + 190, 1278, "", 0, 0, 0, 0.6);
SE018 = playSeVer2( spep_1 + 190, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 190, 1019, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_1 + 190, 1314, "",spep_1 + 404, 0, 24, -1);

-- ** 次の準備 ** --
spep_2 = spep_1 + 196;


------------------------------------------------------
-- 下から敵を貫く(256F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
attack_f = entryEffectLife( spep_2 + 0, SP_04, 256, 0x100, -1, 0, 0, 0 );  --下から敵を貫く    ef_004
setEffMoveKey( spep_2 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 256, attack_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_f, 0 );
setEffRotateKey( spep_2 + 256, attack_f, 0 );
setEffAlphaKey( spep_2 + 0, attack_f, 255 );
setEffAlphaKey( spep_2 + 256 -1, attack_f, 255 );
setEffAlphaKey( spep_2 + 256, attack_f, 0 );

attack_b = entryEffectLife( spep_2 + 0, SP_05, 256, 0x80, -1, 0, 0, 0 );  --下から敵を貫く ef_005
setEffMoveKey( spep_2 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 256, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 256, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, attack_b, 0 );
setEffRotateKey( spep_2 + 256, attack_b, 0 );
setEffAlphaKey( spep_2 + 0, attack_b, 255 );
setEffAlphaKey( spep_2 + 256 -1, attack_b, 255 );
setEffAlphaKey( spep_2 + 256, attack_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 210, 1, 1 );
setDisp( spep_2 -3 + 259, 1, 0 );
changeAnime( spep_2 -3 + 210, 1, 8 );

setMoveKey( spep_2 -3 + 210, 1, 17, -130.7 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 11.4, -83.6 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 14.2, -107.2 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 17, -130.7 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 17, -140.5 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 17, -150.2 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 17, -160 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 17, -169.8 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 17, -179.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 17, -189.4 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 17, -199.2 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 17, -208.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 17, -218.7 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 17, -228.5 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 17, -238.3 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 17, -248.1 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 17, -257.9 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 17, -267.6 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 17, -277.4 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 17, -287.2 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 17, -297 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 17, -306.8 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 17, -316.6 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 17, -326.3 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 17, -336.1 , 0 );
setMoveKey( spep_2 -3 + 259, 1, 17, -336.1 , 0 );

setScaleKey( spep_2 -3 + 210, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_2 -3 + 259, 1, 2.1 +s1, 2.1 +s1 );

setRotateKey( spep_2 -3 + 210, 1, 100.5 );
setRotateKey( spep_2 -3 + 259, 1, 100.5 );

-- ** 音 ** --
--加速
SE021 = playSeVer2( spep_2 + 48, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE021, 71 );

--悟飯飛び上がる
SE022 = playSeVer2( spep_2 + 54, 1019, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 118, 1019, "", 0, 0, 0, -1);

--敵ヒット
SE024 = playSeVer2( spep_2 + 176, 1114, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 176, 1126, "",spep_2 + 298, 0, 74, -1);
setSeVolumeByWorkId( spep_2 + 176, SE025, 71 );
SE026 = playSeVer2( spep_2 + 176, 1179, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 176, 1153, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 176, 1068, "", 0, 0, 0, -1);

--悟飯合流
SE029 = playSeVer2( spep_2 + 250, 44, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 256 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 256;


------------------------------------------------------
-- 手前に向かって合流(106F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
gather = entryEffectLife( spep_3 + 0, SP_06, 106, 0x100, -1, 0, 0, 0 );  --手前に向かって合流    ef_006
setEffMoveKey( spep_3 + 0, gather, 0, 0 , 0 );
setEffMoveKey( spep_3 + 106, gather, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gather, -1.0, 1.0 );
setEffScaleKey( spep_3 + 106, gather, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gather, 0 );
setEffRotateKey( spep_3 + 106, gather, 0 );
setEffAlphaKey( spep_3 + 0, gather, 255 );
setEffAlphaKey( spep_3 + 106 -1, gather, 255 );
setEffAlphaKey( spep_3 + 106, gather, 0 );

-- ** 音 ** --
--二人向かってくる
SE030 = playSeVer2( spep_3 + 54, 1182, "",spep_3 + 120, 0, 12, -1);
SE031 = playSeVer2( spep_3 + 54, 9, "",spep_3 + 120, 0, 12, -1);
SE032 = playSeVer2( spep_3 + 54, 1167, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 54, SE032, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 106 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 106;


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

--二人で敵貫く
SE034 = playSeVer2( spep_4 + 86, 1011, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_4 + 86, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_4 + 86, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 86, SE036, 79 );
SE037 = playSeVer2( spep_4 + 86, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 86, SE037, 87 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- パンチ→爆発(136F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --パンチ→爆発    ef_007
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 136, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 136, finish,255 );

-- ** 音 ** --
--二人で敵貫く
SE038 = playSeVer2( spep_5 + 4, 1072, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_5 + 26, 8, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 26 );
endPhase( spep_5 + 126 );


end