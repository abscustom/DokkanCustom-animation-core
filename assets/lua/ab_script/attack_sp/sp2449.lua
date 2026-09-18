--1025470:URパイクーハン_ハイパートルネード_sp2449
--sp_effect_b1_00224

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
SP_01 = 160708;  --前方突進    ef_001
SP_02 = 160709;  --格闘敵より前    ef_002
SP_03 = 160710;  --格闘敵より後ろ    ef_002_b
SP_04 = 160711;  --瞬間移動、肘打ち敵より前    ef_003
SP_05 = 160712;  --瞬間移動、肘打ち敵より後ろ    ef_003_b
SP_06 = 160713;  --セリフカットイン竜巻背景    ef_004
SP_07 = 160714;  --竜巻下に進む    ef_005
SP_08 = 160715;  --竜巻接近、敵飲み込み    ef_006
SP_09 = 160716;  --ラストループ竜巻    ef_007

--敵側
SP_02r = 160717;  --格闘敵より前：反転   ef_002_r
SP_04r = 160718;  --瞬間移動、肘打ち敵より前：反転    ef_003_r
SP_07r = 160719;  --竜巻下に進む：反転    ef_005_b_r
SP_08r = 160720;  --竜巻接近、敵飲み込み：反転    ef_006_b_r

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 前方突進(58F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --構える　台詞カットイン    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 24, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


--------------------------------------
-- 格闘(178F)
--------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
combo_f = entryEffectLife( spep_1 + 0, SP_02, 172, 0x100, -1, 0, 0, 0 );  --格闘敵より前    ef_002
setEffMoveKey( spep_1 + 0, combo_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, combo_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 172, combo_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_f, 0 );
setEffRotateKey( spep_1 + 172, combo_f, 0 );
setEffAlphaKey( spep_1 + 0, combo_f, 255 );
setEffAlphaKey( spep_1 + 172 -1, combo_f, 255 );
setEffAlphaKey( spep_1 + 172, combo_f, 0 );

combo_b = entryEffectLife( spep_1 + 0, SP_03, 172, 0x80, -1, 0, 0, 0 );  --格闘敵より後ろ    ef_002_b
setEffMoveKey( spep_1 + 0, combo_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, combo_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 172, combo_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_b, 0 );
setEffRotateKey( spep_1 + 172, combo_b, 0 );
setEffAlphaKey( spep_1 + 0, combo_b, 255 );
setEffAlphaKey( spep_1 + 172 -1, combo_b, 255 );
setEffAlphaKey( spep_1 + 172, combo_b, 0 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_1 + 135, 906, 152, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 135, shuchusen_1, 152, 20 );
setEffMoveKey( spep_1 + 135, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 152, shuchusen_1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 135, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 152, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 135, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 152, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 135, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 151, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 152, shuchusen_1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 18, 1, 1 );

changeAnime( spep_1 -3 + 18, 1, 100 );

setMoveKey( spep_1 -3 + 18, 1, 1337.3, 2.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 1199.6, 9.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 1072, 16.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 954.5, 23.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 903.9, 23.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 853.3, 23.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 802.7, 23 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 752.1, 23 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 701.5, 23 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 650.9, 22.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 600.3, 22.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 549.7, 22.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 499.2, 22.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 448.6, 22.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 398, 22.7 , 0 );

setScaleKey( spep_1 -3 + 18, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 20, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 22, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 24, 1, 1.84, 1.84 );

setRotateKey( spep_1 -3 + 18, 1, 0 );

-- ** 音 ** --
--飛び込んでいく
SE003 = playSeVer2( spep_1 + 2, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE003, 80 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 44 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);

    pauseAll( SP_dodge, 67);  

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 398, 22.7 , 0 );
    setMoveKey( SP_dodge + 2, 1, 347.5, 22.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 296.9, 22.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 246.4, 22.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 195.8, 22.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 145.2, 22.6 , 0 );
   
    setScaleKey( SP_dodge + 0, 1, 1.84, 1.84 );
    setScaleKey( SP_dodge + 10, 1, 1.84, 1.84 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    speff3 = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff3, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

changeAnime( spep_1 -3 + 60, 1, 108 );
changeAnime( spep_1 -3 + 72, 1, 106 );
changeAnime( spep_1 -3 + 92, 1, 108 );
changeAnime( spep_1 -3 + 100, 1, 106 );
changeAnime( spep_1 -3 + 108, 1, 108 );
changeAnime( spep_1 -3 + 118, 1, 106 );
changeAnime( spep_1 -3 + 124, 1, 108 );
changeAnime( spep_1 -3 + 138, 1, 106 );
changeAnime( spep_1 -3 + 156, 1, 108 );

setMoveKey( spep_1 -3 + 48, 1, 347.5, 22.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 296.9, 22.7 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 246.4, 22.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 195.8, 22.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 145.2, 22.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 94.7, 22.6 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 94.7, 22.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 108, 22.9 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 131.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 147.9, 22.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 148.5, 34.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 145.2, 34.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 141.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 71, 1, 141.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 82, 38.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 91.9, 38.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 101.9, 38.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 101.9, 38.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 101.8, 38.8 , 0 );
setMoveKey( spep_1 -3 + 91, 1, 101.8, 38.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 112, 34.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 125.3, 34.9 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 138.6, 34.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 151.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 99, 1, 151.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 81.8, 38.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 88.5, 38.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 95.2, 38.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 101.8, 38.9 , 0 );
setMoveKey( spep_1 -3 + 107, 1, 101.8, 38.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 112, 34.9 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 121.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 131.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 141.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 151.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 151.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 81.9, 38.9 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 91.9, 38.9 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 101.8, 38.9 , 0 );
setMoveKey( spep_1 -3 + 123, 1, 101.8, 38.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 112, 34.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 115.4, 37 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 118.8, 39.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 122.3, 41.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 125.7, 43.2 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 129.2, 45.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 132.6, 47.4 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 132.6, 47.4 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 27.1, -3.4 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 141.9, 85.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 146.3, 4.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 91.2, 77.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 52.9, 10.2 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 109.1, 62.7 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 106.5, 56.1 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 111.7, 65.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 109.1, 58.7 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 109.1, 58.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 134.3, 97 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 156.7, 137.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 187.1, 193.2 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 209.5, 233.3 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 239.9, 289.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 262.3, 329.5 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 292.7, 385.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 315.2, 425.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 345.6, 481.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 368.2, 521.8 , 0 );

setScaleKey( spep_1 -3 + 59, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 60, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 62, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 71, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 72, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 91, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 92, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 99, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 100, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 107, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 108, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 117, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 118, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 123, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 124, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 137, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 138, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 155, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 156, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 158, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 160, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 162, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 164, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 166, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 168, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 170, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 172, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 174, 1, 0.64, 0.64 );

setRotateKey( spep_1 -3 + 60, 1, 0 );
setRotateKey( spep_1 -3 + 71, 1, 0 );
setRotateKey( spep_1 -3 + 72, 1, -43 );
setRotateKey( spep_1 -3 + 76, 1, -43 );
setRotateKey( spep_1 -3 + 78, 1, -42.3 );
setRotateKey( spep_1 -3 + 80, 1, -41.5 );
setRotateKey( spep_1 -3 + 82, 1, -40.8 );
setRotateKey( spep_1 -3 + 84, 1, -40 );
setRotateKey( spep_1 -3 + 86, 1, -39.3 );
setRotateKey( spep_1 -3 + 88, 1, -38.5 );
setRotateKey( spep_1 -3 + 90, 1, -37.8 );
setRotateKey( spep_1 -3 + 91, 1, -37.8 );
setRotateKey( spep_1 -3 + 92, 1, 0 );
setRotateKey( spep_1 -3 + 99, 1, 0 );
setRotateKey( spep_1 -3 + 100, 1, -42.9 );
setRotateKey( spep_1 -3 + 107, 1, -42.9 );
setRotateKey( spep_1 -3 + 108, 1, 0 );
setRotateKey( spep_1 -3 + 117, 1, 0 );
setRotateKey( spep_1 -3 + 118, 1, -42.9 );
setRotateKey( spep_1 -3 + 123, 1, -42.9 );
setRotateKey( spep_1 -3 + 124, 1, 0 );
setRotateKey( spep_1 -3 + 126, 1, 0.7 );
setRotateKey( spep_1 -3 + 128, 1, 1.3 );
setRotateKey( spep_1 -3 + 130, 1, 2 );
setRotateKey( spep_1 -3 + 132, 1, 2.7 );
setRotateKey( spep_1 -3 + 134, 1, 3.3 );
setRotateKey( spep_1 -3 + 136, 1, 4 );
setRotateKey( spep_1 -3 + 137, 1, 4 );
setRotateKey( spep_1 -3 + 138, 1, -42.9 );
setRotateKey( spep_1 -3 + 155, 1, -42.9 );
setRotateKey( spep_1 -3 + 156, 1, -14 );
setRotateKey( spep_1 -3 + 158, 1, -9.8 );
setRotateKey( spep_1 -3 + 160, 1, -5.7 );
setRotateKey( spep_1 -3 + 162, 1, -1.5 );
setRotateKey( spep_1 -3 + 164, 1, 2.7 );
setRotateKey( spep_1 -3 + 166, 1, 6.9 );
setRotateKey( spep_1 -3 + 168, 1, 11.1 );
setRotateKey( spep_1 -3 + 170, 1, 15.2 );
setRotateKey( spep_1 -3 + 172, 1, 19.4 );
setRotateKey( spep_1 -3 + 174, 1, 23.6 );


--ラッシュ
SE004 = playSeVer2( spep_1 + 52, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 58, 1110, "", 0, 0, 0, 0.6);
SE006 = playSeVer2( spep_1 + 70, 1010, "",spep_1 + 112, 0, 6, 0.6);
SE007 = playSeVer2( spep_1 + 70, 1001, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 70, SE007, 66 );
SE008 = playSeVer2( spep_1 + 92, 1009, "", 0, 0, 0, 0.6);
SE009 = playSeVer2( spep_1 + 100, 1009, "", 0, 0, 0, 0.6);
SE010 = playSeVer2( spep_1 + 110, 1110, "", 0, 0, 0, 0.6);

--蹴り飛ばす
SE011 = playSeVer2( spep_1 + 136, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 136, SE011, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 172, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 172;


------------------------------------------------------
-- 瞬間移動、肘打ち(94F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --瞬間移動、肘打ち敵より前    ef_003
setEffMoveKey( spep_2 + 0, elbow_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, elbow_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 92, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, elbow_f, 0 );
setEffRotateKey( spep_2 + 92, elbow_f, 0 );
setEffAlphaKey( spep_2 + 0, elbow_f, 255 );
setEffAlphaKey( spep_2 + 92 , elbow_f, 255 );

elbow_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --瞬間移動、肘打ち敵より後ろ    ef_003_b
setEffMoveKey( spep_2 + 0, elbow_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, elbow_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 92, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, elbow_b, 0 );
setEffRotateKey( spep_2 + 92, elbow_b, 0 );
setEffAlphaKey( spep_2 + 0, elbow_b, 255 );
setEffAlphaKey( spep_2 + 92 , elbow_b, 255 );

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 27, 906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 27, shuchusen_2, 40, 20 );
setEffMoveKey( spep_2 + 27, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, shuchusen_2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 27, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 40, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 27, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 40, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 27, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 38, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 39, shuchusen_2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 95, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 + 23, 1, 108 );

setMoveKey( spep_2 + 0, 1, -456.6, -884.5 , 0 );
setMoveKey( spep_2 + 1, 1, -410.9, -800.7 , 0 );
setMoveKey( spep_2 + 2, 1, -365.2, -716.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -319.6, -633 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -273.9, -549.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -228.2, -465.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -182.6, -381.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -136.9, -297.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -91.2, -213.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -45.5, -130 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 0.2, -46.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 45.8, 37.7 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 91.5, 121.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 28.1, 24.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 131.3, 100.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 120.3, 27.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 28.1, 14.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 131.3, 90.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 82.9, 50.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 74.9, 42.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 82.9, 43.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 78.9, 28.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 82.9, -34.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 82.9, -108.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 82.9, -183.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 82.9, -257.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 82.9, -332.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 82.9, -406.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 82.9, -481.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 82.9, -555.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 82.9, -630.2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 82.9, -704.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 82.9, -779.1 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 82.9, -779.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 82.9, 687.8 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 82.9, 583 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 82.9, 478.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 82.9, 373.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 82.9, 268.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 82.9, 163.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 82.9, 59.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 82.9, -45.7 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 82.9, -150.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 82.9, -255.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 82.9, -360 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 82.9, -464.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 82.9, -569.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 82.9, -674.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 82.9, -779.1 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 82.9, -779.1 , 0 );

setScaleKey( spep_2 + 0, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 1, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 2, 1, 4.45, 4.45 );
setScaleKey( spep_2 -3 + 6, 1, 4.18, 4.18 );
setScaleKey( spep_2 -3 + 8, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 10, 1, 3.64, 3.64 );
setScaleKey( spep_2 -3 + 12, 1, 3.37, 3.37 );
setScaleKey( spep_2 -3 + 14, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 16, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 18, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 20, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 22, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 25, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 26, 1, 2, 2 );
setScaleKey( spep_2 -3 + 95, 1, 2, 2 );

setRotateKey( spep_2 + 0, 1, -36.1 );
setRotateKey( spep_2 + 1, 1, -35.1 );
setRotateKey( spep_2 + 2, 1, -34.2 );
setRotateKey( spep_2 -3 + 6, 1, -33.3 );
setRotateKey( spep_2 -3 + 8, 1, -32.4 );
setRotateKey( spep_2 -3 + 10, 1, -31.5 );
setRotateKey( spep_2 -3 + 12, 1, -30.5 );
setRotateKey( spep_2 -3 + 14, 1, -29.6 );
setRotateKey( spep_2 -3 + 16, 1, -28.7 );
setRotateKey( spep_2 -3 + 18, 1, -27.8 );
setRotateKey( spep_2 -3 + 20, 1, -26.8 );
setRotateKey( spep_2 -3 + 22, 1, -25.9 );
setRotateKey( spep_2 -3 + 25, 1, -25 );
setRotateKey( spep_2 -3 + 26, 1, 60 );
setRotateKey( spep_2 -3 + 95, 1, 60 );

-- ** 音 ** --
--瞬間移動
SE012 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);

--叩き落とす
SE013 = playSeVer2( spep_2 + 24, 1123, "", 0, 0, 0, -1);

--敵落ちてく
SE014 = playSeVer2( spep_2 + 42, 1121, "",spep_2 + 120, 0, 28, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 92, 0, 0, 5, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 92;


------------------------------------------------------
-- セリフカットイン竜巻背景(98F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
dialogue_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --セリフカットイン竜巻背景    ef_004
setEffMoveKey( spep_3 + 0, dialogue_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, dialogue_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, dialogue_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, dialogue_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dialogue_f, 0 );
setEffRotateKey( spep_3 + 96, dialogue_f, 0 );
setEffAlphaKey( spep_3 + 0, dialogue_f, 255 );
setEffAlphaKey( spep_3 + 96, dialogue_f, 255 );

-- ** 集中線 ** --
shuchusen_3 = entryEffectLife( spep_3 + 0, 906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen_3, 96, 20 );
setEffMoveKey( spep_3 + 0, shuchusen_3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, shuchusen_3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen_3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 96, shuchusen_3, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen_3, 0 );
setEffRotateKey( spep_3 + 96, shuchusen_3, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen_3, 255 );
setEffAlphaKey( spep_3 + 95, shuchusen_3, 255 );
setEffAlphaKey( spep_3 + 96, shuchusen_3, 0 );


spep_x = spep_3 + 12;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 535.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 535.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 535.5 , 0 );
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
--竜巻発生
SE015 = playSeVer2( spep_3 + 0, 1258, "",spep_3 + 106, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE015, 68 );
SE016 = playSeVer2( spep_3 + 0, 1278, "",spep_3 + 106, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE016, 77 );
SE017 = playSeVer2( spep_3 + 0, 1024, "",spep_3 + 106, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE017, 77 );

--顔カットイン
SE018 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 82, 14, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;

-- ** カードカットイン ** --
--[[speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
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
--playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 竜巻下に進む(68F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tornado_f = entryEffectLife( spep_5 + 0, SP_07, 64, 0x100, -1, 0, 0, 0 );  --竜巻下に進む    ef_005
setEffMoveKey( spep_5 + 0, tornado_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 64, tornado_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tornado_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 64, tornado_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tornado_f, 0 );
setEffRotateKey( spep_5 + 64, tornado_f, 0 );
setEffAlphaKey( spep_5 + 0, tornado_f, 255 );
setEffAlphaKey( spep_5 + 64 -1, tornado_f, 255 );
setEffAlphaKey( spep_5 + 64, tornado_f, 0 );

-- ** 音 ** --
--竜巻飛んでくる
SE020 = playSeVer2( spep_5 + 0, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE020, 63 );
SE021 = playSeVer2( spep_5 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE021, 72 );
SE022 = playSeVer2( spep_5 + 0, 1258, "",spep_5 + 140, 0, 28, -1);
setSeVolumeByWorkId( spep_5 + 0, SE022, 55 );
SE023 = playSeVer2( spep_5 + 0, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE023, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 64, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 64;


------------------------------------------------------
-- 竜巻接近、敵飲み込み(78F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
tornado_l = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --竜巻接近、敵飲み込み    ef_006
setEffMoveKey( spep_6 + 0, tornado_l, 0, 0 , 0 );
setEffMoveKey( spep_6 + 76, tornado_l, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tornado_l, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, tornado_l, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tornado_l, 0 );
setEffRotateKey( spep_6 + 76, tornado_l, 0 );
setEffAlphaKey( spep_6 + 0, tornado_l, 255 );
setEffAlphaKey( spep_6 + 76, tornado_l, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 50, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -69.6, 187.3 , 0 );
setMoveKey( spep_6 + 1, 1, -63, 191.6 , 0 );
setMoveKey( spep_6 + 2, 1, -63.7, 179.2 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -55.9, 182 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -55.3, 168 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -46.2, 169 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -44.3, 153.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -33.7, 152.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -30.1, 133.9 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -17.7, 130.5 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -12.2, 109.8 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 2.4, 103.5 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 10.2, 79.7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 27.1, 70.1 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 37.5, 42.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 57.3, 29.5 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 70.6, -1.8 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 93.4, -19.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 109.7, -54.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 135.6, -76.1 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 154.8, -115.4 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 183.7, -139.4 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 189.4, -168.5 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 203.2, -181.6 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 209, -210.8 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 209, -210.8 , 0 );

setScaleKey( spep_6 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_6 + 1, 1, 0.16, 0.16 );
setScaleKey( spep_6 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_6 -3 + 6, 1, 0.18, 0.18 );
setScaleKey( spep_6 -3 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_6 -3 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_6 -3 + 12, 1, 0.24, 0.24 );
setScaleKey( spep_6 -3 + 14, 1, 0.26, 0.26 );
setScaleKey( spep_6 -3 + 16, 1, 0.28, 0.28 );
setScaleKey( spep_6 -3 + 18, 1, 0.31, 0.31 );
setScaleKey( spep_6 -3 + 20, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 22, 1, 0.38, 0.38 );
setScaleKey( spep_6 -3 + 24, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 26, 1, 0.47, 0.47 );
setScaleKey( spep_6 -3 + 28, 1, 0.52, 0.52 );
setScaleKey( spep_6 -3 + 30, 1, 0.57, 0.57 );
setScaleKey( spep_6 -3 + 32, 1, 0.63, 0.63 );
setScaleKey( spep_6 -3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_6 -3 + 36, 1, 0.76, 0.76 );
setScaleKey( spep_6 -3 + 38, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 40, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 42, 1, 1, 1 );
setScaleKey( spep_6 -3 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_6 -3 + 46, 1, 1.03, 1.03 );
setScaleKey( spep_6 -3 + 48, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 50, 1, 1.05, 1.05 );

setRotateKey( spep_6 + 0, 1, 35.8 );
setRotateKey( spep_6 -3 + 50, 1, 35.8 );

-- ** 音 ** --
--敵飲み込む
SE024 = playSeVer2( spep_6 + 36, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 36, SE024, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 76, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_6 + 64, 12, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 76;


------------------------------------------------------
-- ラストループ竜巻(158F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
last_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ラストループ竜巻    ef_007
setEffMoveKey( spep_7 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 156, last_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 156, last_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last_f, 0 );
setEffRotateKey( spep_7 + 156, last_f, 0 );
setEffAlphaKey( spep_7 + 0, last_f, 255 );
setEffAlphaKey( spep_7 + 156, last_f, 255 );

-- ** 集中線 ** --
shuchusen_4 = entryEffectLife( spep_7 + 0, 906, 158, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen_4, 158, 20 );
setEffMoveKey( spep_7 + 0, shuchusen_4, 0, 0 , 0 );
setEffMoveKey( spep_7 + 158, shuchusen_4, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen_4, 1.6, 1.6 );
setEffScaleKey( spep_7 + 158, shuchusen_4, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen_4, 0 );
setEffRotateKey( spep_7 + 158, shuchusen_4, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen_4, 255 );
setEffAlphaKey( spep_7 + 158, shuchusen_4, 255 );

-- ** 音 ** --
--竜巻
SE025 = playSeVer2( spep_7 + 0, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE025, 69 );
SE026 = playSeVer2( spep_7 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE026, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 156, 0, 0, 0, 0, 30);       -- ベース暗め　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_7 + 0 ); -- ダメージ表示フレーム
endPhase( spep_7 + 146 ); -- 終了フレーム

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前方突進(58F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --構える　台詞カットイン    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 56, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 56 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 56, first_f, 0 );

-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 24, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 56, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;


--------------------------------------
-- 格闘(178F)
--------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
combo_f = entryEffectLife( spep_1 + 0, SP_02r, 172, 0x100, -1, 0, 0, 0 );  --格闘敵より前：反転   ef_002_r
setEffMoveKey( spep_1 + 0, combo_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, combo_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 172, combo_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_f, 0 );
setEffRotateKey( spep_1 + 172, combo_f, 0 );
setEffAlphaKey( spep_1 + 0, combo_f, 255 );
setEffAlphaKey( spep_1 + 172 -1, combo_f, 255 );
setEffAlphaKey( spep_1 + 172, combo_f, 0 );

combo_b = entryEffectLife( spep_1 + 0, SP_03, 172, 0x80, -1, 0, 0, 0 );  --格闘敵より後ろ    ef_002_b
setEffMoveKey( spep_1 + 0, combo_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 172, combo_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, combo_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 172, combo_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, combo_b, 0 );
setEffRotateKey( spep_1 + 172, combo_b, 0 );
setEffAlphaKey( spep_1 + 0, combo_b, 255 );
setEffAlphaKey( spep_1 + 172 -1, combo_b, 255 );
setEffAlphaKey( spep_1 + 172, combo_b, 0 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_1 + 135, 906, 152, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 135, shuchusen_1, 152, 20 );
setEffMoveKey( spep_1 + 135, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 152, shuchusen_1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 135, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 152, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_1 + 135, shuchusen_1, 0 );
setEffRotateKey( spep_1 + 152, shuchusen_1, 0 );
setEffAlphaKey( spep_1 + 135, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 151, shuchusen_1, 255 );
setEffAlphaKey( spep_1 + 152, shuchusen_1, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 18, 1, 1 );

changeAnime( spep_1 -3 + 18, 1, 100 );

setMoveKey( spep_1 -3 + 18, 1, 1337.3, 2.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 1199.6, 9.5 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 1072, 16.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 954.5, 23.1 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 903.9, 23.1 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 853.3, 23.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 802.7, 23 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 752.1, 23 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 701.5, 23 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 650.9, 22.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 600.3, 22.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 549.7, 22.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 499.2, 22.8 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 448.6, 22.8 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 398, 22.7 , 0 );

setScaleKey( spep_1 -3 + 18, 1, 2.59, 2.59 );
setScaleKey( spep_1 -3 + 20, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 22, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 24, 1, 1.84, 1.84 );

setRotateKey( spep_1 -3 + 18, 1, 0 );

-- ** 音 ** --
--飛び込んでいく
SE003 = playSeVer2( spep_1 + 2, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 2, SE003, 80 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 44 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);

    pauseAll( SP_dodge, 67);  

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 398, 22.7 , 0 );
    setMoveKey( SP_dodge + 2, 1, 347.5, 22.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 296.9, 22.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 246.4, 22.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 195.8, 22.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 145.2, 22.6 , 0 );
   
    setScaleKey( SP_dodge + 0, 1, 1.84, 1.84 );
    setScaleKey( SP_dodge + 10, 1, 1.84, 1.84 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    speff3 = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff3, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

changeAnime( spep_1 -3 + 60, 1, 108 );
changeAnime( spep_1 -3 + 72, 1, 106 );
changeAnime( spep_1 -3 + 92, 1, 108 );
changeAnime( spep_1 -3 + 100, 1, 106 );
changeAnime( spep_1 -3 + 108, 1, 108 );
changeAnime( spep_1 -3 + 118, 1, 106 );
changeAnime( spep_1 -3 + 124, 1, 108 );
changeAnime( spep_1 -3 + 138, 1, 106 );
changeAnime( spep_1 -3 + 156, 1, 108 );

setMoveKey( spep_1 -3 + 48, 1, 347.5, 22.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 296.9, 22.7 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 246.4, 22.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 195.8, 22.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 145.2, 22.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 94.7, 22.6 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 94.7, 22.6 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 108, 22.9 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 131.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 147.9, 22.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 148.5, 34.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 145.2, 34.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 141.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 71, 1, 141.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 82, 38.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 91.9, 38.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 101.9, 38.8 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 101.9, 38.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 101.8, 38.8 , 0 );
setMoveKey( spep_1 -3 + 91, 1, 101.8, 38.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 112, 34.9 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 125.3, 34.9 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 138.6, 34.9 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 151.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 99, 1, 151.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 81.8, 38.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 88.5, 38.9 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 95.2, 38.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 101.8, 38.9 , 0 );
setMoveKey( spep_1 -3 + 107, 1, 101.8, 38.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 112, 34.9 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 121.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 131.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 141.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 151.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 151.9, 34.9 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 81.9, 38.9 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 91.9, 38.9 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 101.8, 38.9 , 0 );
setMoveKey( spep_1 -3 + 123, 1, 101.8, 38.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 112, 34.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 115.4, 37 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 118.8, 39.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 122.3, 41.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 125.7, 43.2 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 129.2, 45.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 132.6, 47.4 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 132.6, 47.4 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 27.1, -3.4 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 141.9, 85.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 146.3, 4.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 91.2, 77.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 52.9, 10.2 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 109.1, 62.7 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 106.5, 56.1 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 111.7, 65.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 109.1, 58.7 , 0 );
setMoveKey( spep_1 -3 + 155, 1, 109.1, 58.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 134.3, 97 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 156.7, 137.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 187.1, 193.2 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 209.5, 233.3 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 239.9, 289.4 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 262.3, 329.5 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 292.7, 385.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 315.2, 425.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 345.6, 481.7 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 368.2, 521.8 , 0 );

setScaleKey( spep_1 -3 + 59, 1, 1.84, 1.84 );
setScaleKey( spep_1 -3 + 60, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 62, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 71, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 72, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 91, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 92, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 99, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 100, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 107, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 108, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 117, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 118, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 123, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 124, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 137, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 138, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 155, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 156, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 158, 1, 1.94, 1.94 );
setScaleKey( spep_1 -3 + 160, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 162, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 164, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 166, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 168, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 170, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 172, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 174, 1, 0.64, 0.64 );

setRotateKey( spep_1 -3 + 60, 1, 0 );
setRotateKey( spep_1 -3 + 71, 1, 0 );
setRotateKey( spep_1 -3 + 72, 1, -43 );
setRotateKey( spep_1 -3 + 76, 1, -43 );
setRotateKey( spep_1 -3 + 78, 1, -42.3 );
setRotateKey( spep_1 -3 + 80, 1, -41.5 );
setRotateKey( spep_1 -3 + 82, 1, -40.8 );
setRotateKey( spep_1 -3 + 84, 1, -40 );
setRotateKey( spep_1 -3 + 86, 1, -39.3 );
setRotateKey( spep_1 -3 + 88, 1, -38.5 );
setRotateKey( spep_1 -3 + 90, 1, -37.8 );
setRotateKey( spep_1 -3 + 91, 1, -37.8 );
setRotateKey( spep_1 -3 + 92, 1, 0 );
setRotateKey( spep_1 -3 + 99, 1, 0 );
setRotateKey( spep_1 -3 + 100, 1, -42.9 );
setRotateKey( spep_1 -3 + 107, 1, -42.9 );
setRotateKey( spep_1 -3 + 108, 1, 0 );
setRotateKey( spep_1 -3 + 117, 1, 0 );
setRotateKey( spep_1 -3 + 118, 1, -42.9 );
setRotateKey( spep_1 -3 + 123, 1, -42.9 );
setRotateKey( spep_1 -3 + 124, 1, 0 );
setRotateKey( spep_1 -3 + 126, 1, 0.7 );
setRotateKey( spep_1 -3 + 128, 1, 1.3 );
setRotateKey( spep_1 -3 + 130, 1, 2 );
setRotateKey( spep_1 -3 + 132, 1, 2.7 );
setRotateKey( spep_1 -3 + 134, 1, 3.3 );
setRotateKey( spep_1 -3 + 136, 1, 4 );
setRotateKey( spep_1 -3 + 137, 1, 4 );
setRotateKey( spep_1 -3 + 138, 1, -42.9 );
setRotateKey( spep_1 -3 + 155, 1, -42.9 );
setRotateKey( spep_1 -3 + 156, 1, -14 );
setRotateKey( spep_1 -3 + 158, 1, -9.8 );
setRotateKey( spep_1 -3 + 160, 1, -5.7 );
setRotateKey( spep_1 -3 + 162, 1, -1.5 );
setRotateKey( spep_1 -3 + 164, 1, 2.7 );
setRotateKey( spep_1 -3 + 166, 1, 6.9 );
setRotateKey( spep_1 -3 + 168, 1, 11.1 );
setRotateKey( spep_1 -3 + 170, 1, 15.2 );
setRotateKey( spep_1 -3 + 172, 1, 19.4 );
setRotateKey( spep_1 -3 + 174, 1, 23.6 );


--ラッシュ
SE004 = playSeVer2( spep_1 + 52, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_1 + 58, 1110, "", 0, 0, 0, 0.6);
SE006 = playSeVer2( spep_1 + 70, 1010, "",spep_1 + 112, 0, 6, 0.6);
SE007 = playSeVer2( spep_1 + 70, 1001, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_1 + 70, SE007, 66 );
SE008 = playSeVer2( spep_1 + 92, 1009, "", 0, 0, 0, 0.6);
SE009 = playSeVer2( spep_1 + 100, 1009, "", 0, 0, 0, 0.6);
SE010 = playSeVer2( spep_1 + 110, 1110, "", 0, 0, 0, 0.6);

--蹴り飛ばす
SE011 = playSeVer2( spep_1 + 136, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 136, SE011, 90 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 172, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 172;


------------------------------------------------------
-- 瞬間移動、肘打ち(94F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_2 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --瞬間移動、肘打ち敵より前：反転    ef_003_r
setEffMoveKey( spep_2 + 0, elbow_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, elbow_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 92, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, elbow_f, 0 );
setEffRotateKey( spep_2 + 92, elbow_f, 0 );
setEffAlphaKey( spep_2 + 0, elbow_f, 255 );
setEffAlphaKey( spep_2 + 92 , elbow_f, 255 );

elbow_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --瞬間移動、肘打ち敵より後ろ    ef_003_b
setEffMoveKey( spep_2 + 0, elbow_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 92, elbow_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 92, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, elbow_b, 0 );
setEffRotateKey( spep_2 + 92, elbow_b, 0 );
setEffAlphaKey( spep_2 + 0, elbow_b, 255 );
setEffAlphaKey( spep_2 + 92 , elbow_b, 255 );

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 27, 906, 40, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 27, shuchusen_2, 40, 20 );
setEffMoveKey( spep_2 + 27, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 40, shuchusen_2, 0, 0 , 0 );
setEffScaleKey( spep_2 + 27, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 40, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_2 + 27, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 40, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 27, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 38, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 39, shuchusen_2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 95, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 + 23, 1, 108 );

setMoveKey( spep_2 + 0, 1, -456.6, -884.5 , 0 );
setMoveKey( spep_2 + 1, 1, -410.9, -800.7 , 0 );
setMoveKey( spep_2 + 2, 1, -365.2, -716.9 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -319.6, -633 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -273.9, -549.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -228.2, -465.4 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -182.6, -381.5 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -136.9, -297.7 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -91.2, -213.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -45.5, -130 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 0.2, -46.2 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 45.8, 37.7 , 0 );
setMoveKey( spep_2 -3 + 25, 1, 91.5, 121.5 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 28.1, 24.5 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 131.3, 100.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 120.3, 27.3 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 28.1, 14.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 131.3, 90.2 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 82.9, 50.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 74.9, 42.9 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 82.9, 43.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 78.9, 28.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 82.9, -34.2 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 82.9, -108.7 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 82.9, -183.2 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 82.9, -257.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 82.9, -332.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 82.9, -406.7 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 82.9, -481.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 82.9, -555.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 82.9, -630.2 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 82.9, -704.7 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 82.9, -779.1 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 82.9, -779.1 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 82.9, 687.8 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 82.9, 583 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 82.9, 478.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 82.9, 373.4 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 82.9, 268.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 82.9, 163.9 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 82.9, 59.1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 82.9, -45.7 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 82.9, -150.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 82.9, -255.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 82.9, -360 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 82.9, -464.8 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 82.9, -569.6 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 82.9, -674.4 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 82.9, -779.1 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 82.9, -779.1 , 0 );

setScaleKey( spep_2 + 0, 1, 4.99, 4.99 );
setScaleKey( spep_2 + 1, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 2, 1, 4.45, 4.45 );
setScaleKey( spep_2 -3 + 6, 1, 4.18, 4.18 );
setScaleKey( spep_2 -3 + 8, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 10, 1, 3.64, 3.64 );
setScaleKey( spep_2 -3 + 12, 1, 3.37, 3.37 );
setScaleKey( spep_2 -3 + 14, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 16, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 18, 1, 2.56, 2.56 );
setScaleKey( spep_2 -3 + 20, 1, 2.29, 2.29 );
setScaleKey( spep_2 -3 + 22, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 25, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 26, 1, 2, 2 );
setScaleKey( spep_2 -3 + 95, 1, 2, 2 );

setRotateKey( spep_2 + 0, 1, -36.1 );
setRotateKey( spep_2 + 1, 1, -35.1 );
setRotateKey( spep_2 + 2, 1, -34.2 );
setRotateKey( spep_2 -3 + 6, 1, -33.3 );
setRotateKey( spep_2 -3 + 8, 1, -32.4 );
setRotateKey( spep_2 -3 + 10, 1, -31.5 );
setRotateKey( spep_2 -3 + 12, 1, -30.5 );
setRotateKey( spep_2 -3 + 14, 1, -29.6 );
setRotateKey( spep_2 -3 + 16, 1, -28.7 );
setRotateKey( spep_2 -3 + 18, 1, -27.8 );
setRotateKey( spep_2 -3 + 20, 1, -26.8 );
setRotateKey( spep_2 -3 + 22, 1, -25.9 );
setRotateKey( spep_2 -3 + 25, 1, -25 );
setRotateKey( spep_2 -3 + 26, 1, 60 );
setRotateKey( spep_2 -3 + 95, 1, 60 );

-- ** 音 ** --
--瞬間移動
SE012 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);

--叩き落とす
SE013 = playSeVer2( spep_2 + 24, 1123, "", 0, 0, 0, -1);

--敵落ちてく
SE014 = playSeVer2( spep_2 + 42, 1121, "",spep_2 + 120, 0, 28, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 92, 0, 0, 5, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 92;


------------------------------------------------------
-- セリフカットイン竜巻背景(98F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
dialogue_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --セリフカットイン竜巻背景    ef_004
setEffMoveKey( spep_3 + 0, dialogue_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, dialogue_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, dialogue_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, dialogue_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dialogue_f, 0 );
setEffRotateKey( spep_3 + 96, dialogue_f, 0 );
setEffAlphaKey( spep_3 + 0, dialogue_f, 255 );
setEffAlphaKey( spep_3 + 96, dialogue_f, 255 );

-- ** 集中線 ** --
shuchusen_3 = entryEffectLife( spep_3 + 0, 906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen_3, 96, 20 );
setEffMoveKey( spep_3 + 0, shuchusen_3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, shuchusen_3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen_3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 96, shuchusen_3, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen_3, 0 );
setEffRotateKey( spep_3 + 96, shuchusen_3, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen_3, 255 );
setEffAlphaKey( spep_3 + 95, shuchusen_3, 255 );
setEffAlphaKey( spep_3 + 96, shuchusen_3, 0 );


spep_x = spep_3 + 12;

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 535.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 535.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 535.5 , 0 );
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
--竜巻発生
SE015 = playSeVer2( spep_3 + 0, 1258, "",spep_3 + 106, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE015, 68 );
SE016 = playSeVer2( spep_3 + 0, 1278, "",spep_3 + 106, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE016, 77 );
SE017 = playSeVer2( spep_3 + 0, 1024, "",spep_3 + 106, 0, 10, -1);
setSeVolumeByWorkId( spep_3 + 0, SE017, 77 );

--顔カットイン
SE018 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_3 + 82, 14, 6, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_4 = 0;

-- ** カードカットイン ** --
--[[speff2 = entryEffectLife( spep_4 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
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
--playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 -2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 竜巻下に進む(68F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
tornado_f = entryEffectLife( spep_5 + 0, SP_07r, 64, 0x100, -1, 0, 0, 0 );  --竜巻下に進む：反転    ef_005_b_r
setEffMoveKey( spep_5 + 0, tornado_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 64, tornado_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, tornado_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 64, tornado_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, tornado_f, 0 );
setEffRotateKey( spep_5 + 64, tornado_f, 0 );
setEffAlphaKey( spep_5 + 0, tornado_f, 255 );
setEffAlphaKey( spep_5 + 64 -1, tornado_f, 255 );
setEffAlphaKey( spep_5 + 64, tornado_f, 0 );

-- ** 音 ** --
--竜巻飛んでくる
SE020 = playSeVer2( spep_5 + 0, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE020, 63 );
SE021 = playSeVer2( spep_5 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE021, 72 );
SE022 = playSeVer2( spep_5 + 0, 1258, "",spep_5 + 140, 0, 28, -1);
setSeVolumeByWorkId( spep_5 + 0, SE022, 55 );
SE023 = playSeVer2( spep_5 + 0, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 0, SE023, 60 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 64, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 64;


------------------------------------------------------
-- 竜巻接近、敵飲み込み(78F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
tornado_l = entryEffect( spep_6 + 0, SP_08r, 0x80, -1, 0, 0, 0 );  --竜巻接近、敵飲み込み：反転    ef_006_b_r
setEffMoveKey( spep_6 + 0, tornado_l, 0, 0 , 0 );
setEffMoveKey( spep_6 + 76, tornado_l, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, tornado_l, 1.0, 1.0 );
setEffScaleKey( spep_6 + 76, tornado_l, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, tornado_l, 0 );
setEffRotateKey( spep_6 + 76, tornado_l, 0 );
setEffAlphaKey( spep_6 + 0, tornado_l, 255 );
setEffAlphaKey( spep_6 + 76, tornado_l, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 50, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -69.6, 187.3 , 0 );
setMoveKey( spep_6 + 1, 1, -63, 191.6 , 0 );
setMoveKey( spep_6 + 2, 1, -63.7, 179.2 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -55.9, 182 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -55.3, 168 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -46.2, 169 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -44.3, 153.1 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -33.7, 152.1 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -30.1, 133.9 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -17.7, 130.5 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -12.2, 109.8 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 2.4, 103.5 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 10.2, 79.7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 27.1, 70.1 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 37.5, 42.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 57.3, 29.5 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 70.6, -1.8 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 93.4, -19.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 109.7, -54.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 135.6, -76.1 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 154.8, -115.4 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 183.7, -139.4 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 189.4, -168.5 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 203.2, -181.6 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 209, -210.8 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 209, -210.8 , 0 );

setScaleKey( spep_6 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_6 + 1, 1, 0.16, 0.16 );
setScaleKey( spep_6 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_6 -3 + 6, 1, 0.18, 0.18 );
setScaleKey( spep_6 -3 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_6 -3 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_6 -3 + 12, 1, 0.24, 0.24 );
setScaleKey( spep_6 -3 + 14, 1, 0.26, 0.26 );
setScaleKey( spep_6 -3 + 16, 1, 0.28, 0.28 );
setScaleKey( spep_6 -3 + 18, 1, 0.31, 0.31 );
setScaleKey( spep_6 -3 + 20, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 22, 1, 0.38, 0.38 );
setScaleKey( spep_6 -3 + 24, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 26, 1, 0.47, 0.47 );
setScaleKey( spep_6 -3 + 28, 1, 0.52, 0.52 );
setScaleKey( spep_6 -3 + 30, 1, 0.57, 0.57 );
setScaleKey( spep_6 -3 + 32, 1, 0.63, 0.63 );
setScaleKey( spep_6 -3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_6 -3 + 36, 1, 0.76, 0.76 );
setScaleKey( spep_6 -3 + 38, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 40, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 42, 1, 1, 1 );
setScaleKey( spep_6 -3 + 44, 1, 1.02, 1.02 );
setScaleKey( spep_6 -3 + 46, 1, 1.03, 1.03 );
setScaleKey( spep_6 -3 + 48, 1, 1.05, 1.05 );
setScaleKey( spep_6 -3 + 50, 1, 1.05, 1.05 );

setRotateKey( spep_6 + 0, 1, 35.8 );
setRotateKey( spep_6 -3 + 50, 1, 35.8 );

-- ** 音 ** --
--敵飲み込む
SE024 = playSeVer2( spep_6 + 36, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 36, SE024, 72 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 76, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_6 + 64, 12, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 76;


------------------------------------------------------
-- ラストループ竜巻(158F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
last_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 );  --ラストループ竜巻    ef_007
setEffMoveKey( spep_7 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 156, last_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 156, last_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, last_f, 0 );
setEffRotateKey( spep_7 + 156, last_f, 0 );
setEffAlphaKey( spep_7 + 0, last_f, 255 );
setEffAlphaKey( spep_7 + 156, last_f, 255 );

-- ** 集中線 ** --
shuchusen_4 = entryEffectLife( spep_7 + 0, 906, 158, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen_4, 158, 20 );
setEffMoveKey( spep_7 + 0, shuchusen_4, 0, 0 , 0 );
setEffMoveKey( spep_7 + 158, shuchusen_4, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shuchusen_4, 1.6, 1.6 );
setEffScaleKey( spep_7 + 158, shuchusen_4, 1.6, 1.6 );
setEffRotateKey( spep_7 + 0, shuchusen_4, 0 );
setEffRotateKey( spep_7 + 158, shuchusen_4, 0 );
setEffAlphaKey( spep_7 + 0, shuchusen_4, 255 );
setEffAlphaKey( spep_7 + 158, shuchusen_4, 255 );

-- ** 音 ** --
--竜巻
SE025 = playSeVer2( spep_7 + 0, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE025, 69 );
SE026 = playSeVer2( spep_7 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 0, SE026, 75 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 156, 0, 0, 0, 0, 30);       -- ベース暗め　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_7 + 0 ); -- ダメージ表示フレーム
endPhase( spep_7 + 146 ); -- 終了フレーム



end