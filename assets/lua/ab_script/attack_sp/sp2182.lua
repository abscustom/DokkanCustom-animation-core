--1022000:メタルリルド_デッドリーメタルニードル_sp2182
--sp_effect_a9_00082

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
SP_01 = 157228;	 --対峙〜タメ	ef_001
SP_02 = 157229;	 --張り付く鉄骨（手前）	ef_002
SP_03 = 157230;	 --鉄骨　球になる	ef_003
SP_04 = 157231;	 --球を突き刺すリルド	ef_004
SP_05 = 157232;	 --地面まで突き刺すリルド	ef_005
SP_06 = 157233;	 --張り付く鉄骨（奥）背景込み	ef_006
SP_07 = 157234;	 --背景	ef_007
SP_08 = 157235;	 --地面　背景	ef_008

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

ENABLE_AUTO_TIME_STRETCH(0.8);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 対峙〜タメ	ef_001(216F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 216, 0x80, -1, 0, 0, 0 );  --対峙〜タメ	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 216, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 216, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 216, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 216 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 216, first_f, 0 );

spep_x = spep_0 + 112;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 180, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 180, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 180, 515.5 , 0 );
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

shuchusen1 = entryEffectLife( spep_0 + 95, 906, 120, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 95, shuchusen1, 90, 20 );
setEffMoveKey( spep_0 + 95, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 215, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 95, shuchusen1, 1.2, 1.5 );
setEffScaleKey( spep_0 + 215, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 95, shuchusen1, 0 );
setEffRotateKey( spep_0 + 215, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 95, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 215, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 161.3, 17 , 0 );
setMoveKey( spep_0 + 1, 1, 164.2, 17.1 , 0 );
setMoveKey( spep_0 + 2, 1, 167.2, 17.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 170.5, 17.1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 170.5, 17.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 173.7, 17.1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 173.7, 17.1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 177.2, 17.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 180.8, 17.2 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 184.5, 17.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 188.4, 17.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 192.3, 17.4 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 196.4, 17.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 200.7, 17.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 205.1, 17.6 , 0 );

s1 = 0.3;
setScaleKey( spep_0 + 0, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 1, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 2, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 3, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 4, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 5, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 6, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 -3 + 12, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 -3 + 14, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_0 -3 + 20, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_0 -3 + 22, 1, 1.51 +s1, 1.51 +s1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 216 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 22 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 205.1, 17.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 209.5, 17.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 214.2, 17.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 219, 17.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 223.8, 18 , 0 );
    setMoveKey( SP_dodge + 10, 1, 263.8, 14.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.51 +s1, 1.51 +s1 );
    setScaleKey( SP_dodge + 2, 1, 1.51 +s1, 1.51 +s1 );
    setScaleKey( SP_dodge + 4, 1, 1.52 +s1, 1.52 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.52 +s1, 1.52 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.53 +s1, 1.53 +s1 );
    setScaleKey( SP_dodge + 10, 1,1.45 +s1, 1.45 +s1 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

--setDisp( spep_0 -3 + 218, 1, 0 );
changeAnime( spep_0 -3 + 56, 1, 101 );

setMoveKey( spep_0 -3 + 26, 1, 209.5, 17.7 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 214.2, 17.8 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 219, 17.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 223.8, 18 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 263.8, 14.4 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 282.5, 12.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 297.1, 11.8 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 309.6, 10.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 320.9, 10.2 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 331.1, 9.5 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 340.8, 9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 350, 8.5 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 358.7, 8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 367, 7.6 , 0 );
setMoveKey( spep_0 -3 + 55, 1, 375.1, 7.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 382.9, 6.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 390.5, 6.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 397.8, 6.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 405, 5.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 412.1, 5.6 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 418.9, 5.4 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 425.5, 5.1 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 432, 4.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 438.3, 4.6 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 444.5, 4.4 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 450.5, 4.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 456.4, 4 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 462.1, 3.8 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 467.7, 3.6 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 473.1, 3.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 478.5, 3.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 483.6, 3 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 488.6, 2.8 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 493.5, 2.7 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 498.4, 2.6 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 615.6, 4.4 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 621.1, -1 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 626.3, 10.5 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 631.3, -2.7 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 636.3, 7.9 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 641.1, -1.9 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 645.9, 7 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 650.3, -2.4 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 654.7, 6.2 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 658.9, -1.3 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 663.1, 3.6 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 667.1, -0.4 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 670.9, 3.3 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 674.6, -2 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 678.3, 2.9 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 681.9, -1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 683.8, 2.6 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 685.7, -1.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 687.6, 2.2 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 689.5, -3 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 691.4, 1.9 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 693.1, -2.1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 694.9, 1.5 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 696.7, -3.7 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 698.4, 1.2 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 700.2, -2.8 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 701.8, 0.9 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 703.5, -3.1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 705.1, 0.5 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 706.7, -4.7 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 708.3, 0.2 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 709.9, -3.7 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 711.4, -0.1 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 713, -5.3 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 714.6, -0.4 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 716.1, -4.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 717.6, -0.7 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 719.1, -4.6 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 720.6, -1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 722.1, -6.2 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 723.6, -1.3 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 725.1, -5.2 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 725.1, -6.5 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 725.1, -6.5 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 725.1, -5.2 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 725.1, -6.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 903.4, -1.4 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 991.5, -1.4 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 1058.3, -6.5 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 1113.7, -1.3 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 1161.6, -5.2 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 1203.6, -1.4 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 1240.9, -6.5 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 1273.9, -1.4 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 1302.9, -1.4 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 1327.4, -6.4 , 0 );

s2 = 0.1;
setScaleKey( spep_0 -3 + 26, 1, 1.51 +s1, 1.51 +s1 );
setScaleKey( spep_0 -3 + 28, 1, 1.52 +s1, 1.52 +s1 );
setScaleKey( spep_0 -3 + 30, 1, 1.52 +s1, 1.52 +s1 );
setScaleKey( spep_0 -3 + 32, 1, 1.53 +s1, 1.53 +s1 );
setScaleKey( spep_0 -3 + 34, 1, 1.45 +s1, 1.45 +s1 );
setScaleKey( spep_0 -3 + 36, 1, 1.43 +s1, 1.43 +s1 );
setScaleKey( spep_0 -3 + 38, 1, 1.41 +s1, 1.41 +s1 );
setScaleKey( spep_0 -3 + 40, 1, 1.39 +s1, 1.39 +s1 );
setScaleKey( spep_0 -3 + 42, 1, 1.38 +s1, 1.38 +s1 );
setScaleKey( spep_0 -3 + 44, 1, 1.37 +s1, 1.37 +s1 );
setScaleKey( spep_0 -3 + 46, 1, 1.36 +s1, 1.36 +s1 );
setScaleKey( spep_0 -3 + 48, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 1.34 +s1, 1.34 +s1 );
setScaleKey( spep_0 -3 + 52, 1, 1.34 +s1, 1.34 +s1 );
setScaleKey( spep_0 -3 + 55, 1, 1.33 +s1, 1.33 +s1 );
setScaleKey( spep_0 -3 + 56, 1, 1.33 +s2, 1.33 +s2 );
setScaleKey( spep_0 -3 + 58, 1, 1.32 +s2, 1.32 +s2 );
setScaleKey( spep_0 -3 + 62, 1, 1.32 +s2, 1.32 +s2 );
setScaleKey( spep_0 -3 + 64, 1, 1.31 +s2, 1.31 +s2 );
setScaleKey( spep_0 -3 + 72, 1, 1.31 +s2, 1.31 +s2 );
setScaleKey( spep_0 -3 + 74, 1, 1.3 +s2, 1.3 +s2 );
setScaleKey( spep_0 -3 + 82, 1, 1.3 +s2, 1.3 +s2 );
setScaleKey( spep_0 -3 + 84, 1, 1.29 +s2, 1.29 +s2 );
setScaleKey( spep_0 -3 + 94, 1, 1.29 +s2, 1.29 +s2 );
setScaleKey( spep_0 -3 + 96, 1, 1.54 +s2, 1.54 +s2 );
setScaleKey( spep_0 -3 + 106, 1, 1.54 +s2, 1.54 +s2 );
setScaleKey( spep_0 -3 + 108, 1, 1.53 +s2, 1.53 +s2 );
setScaleKey( spep_0 -3 + 116, 1, 1.53 +s2, 1.53 +s2 );
setScaleKey( spep_0 -3 + 118, 1, 1.52 +s2, 1.52 +s2 );
setScaleKey( spep_0 -3 + 126, 1, 1.52 +s2, 1.52 +s2 );
setScaleKey( spep_0 -3 + 128, 1, 1.51 +s2, 1.51 +s2 );
setScaleKey( spep_0 -3 + 130, 1, 1.51 +s2, 1.51 +s2 );
setScaleKey( spep_0 -3 + 132, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 136, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 138, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 142, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 144, 1, 1.48 +s2, 1.48 +s2 );
setScaleKey( spep_0 -3 + 146, 1, 1.48 +s2, 1.48 +s2 );
setScaleKey( spep_0 -3 + 148, 1, 1.47 +s2, 1.47 +s2 );
setScaleKey( spep_0 -3 + 154, 1, 1.47 +s2, 1.47 +s2 );
setScaleKey( spep_0 -3 + 156, 1, 1.46 +s2, 1.46 +s2 );
setScaleKey( spep_0 -3 + 160, 1, 1.46 +s2, 1.46 +s2 );
setScaleKey( spep_0 -3 + 162, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 166, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 168, 1, 1.44 +s2, 1.44 +s2 );
setScaleKey( spep_0 -3 + 172, 1, 1.44 +s2, 1.44 +s2 );
setScaleKey( spep_0 -3 + 174, 1, 1.43 +s2, 1.43 +s2 );
setScaleKey( spep_0 -3 + 198, 1, 1.43 +s2, 1.43 +s2 );
setScaleKey( spep_0 -3 + 200, 1, 1.75 +s2, 1.75 +s2 );
setScaleKey( spep_0 -3 + 202, 1, 1.91 +s2, 1.91 +s2 );
setScaleKey( spep_0 -3 + 204, 1, 2.03 +s2, 2.03 +s2 );
setScaleKey( spep_0 -3 + 206, 1, 2.13 +s2, 2.13 +s2 );
setScaleKey( spep_0 -3 + 208, 1, 2.22 +s2, 2.22 +s2 );
setScaleKey( spep_0 -3 + 210, 1, 2.3 +s2, 2.3 +s2 );
setScaleKey( spep_0 -3 + 212, 1, 2.37 +s2, 2.37 +s2 );
setScaleKey( spep_0 -3 + 214, 1, 2.43 +s2, 2.43 +s2 );
setScaleKey( spep_0 -3 + 216, 1, 2.48 +s2, 2.48 +s2 );
setScaleKey( spep_0 -3 + 218, 1, 2.52 +s2, 2.52 +s2 );

setRotateKey( spep_0 -3 + 218, 1, 0 );

-- ** 音 ** --
--体向き変える
SE001 = playSe( spep_0 + 34, 1004 );
setSeVolumeByWorkId( spep_0 + 34, SE001, 71 );
setPitch( spep_0 + 34, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );

--体向き変える
SE002 = playSe( spep_0 + 38, 8 );

--鉄骨浮き上がる
SE003 = playSe( spep_0 + 92, 1014 );

--鉄骨浮き上がる
SE004 = playSe( spep_0 + 92, 1044 );
stopSe( spep_0 + 192, SE004, 48 );

--顔カットイン
SE005 = playSe( spep_0 + 120, 1018 );

--画面遷移
SE006 = playSe( spep_0 + 172, 1072 );

--鉄骨敵にぶつかっていく
SE007 = playSe( spep_0 + 210, 1116 );
stopSe( spep_0 +216 + 20, SE007, 12 );

-- ** 白フェード ** --
entryFade( spep_0 + 196, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 216;


------------------------------------------------------
-- 張り付く鉄骨(76F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tmove_f = entryEffectLife( spep_1 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --張り付く鉄骨（手前）	ef_002
setEffMoveKey( spep_1 + 0, tmove_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, tmove_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tmove_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, tmove_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tmove_f, 0 );
setEffRotateKey( spep_1 + 76, tmove_f, 0 );
setEffAlphaKey( spep_1 + 0, tmove_f, 255 );
setEffAlphaKey( spep_1 + 76 -1, tmove_f, 255 );
setEffAlphaKey( spep_1 + 76, tmove_f, 0 );

tmove_b = entryEffectLife( spep_1 + 0, SP_06, 76, 0x80, -1, 0, 0, 0 );  --張り付く鉄骨（奥）背景込み	ef_006
setEffMoveKey( spep_1 + 0, tmove_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, tmove_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tmove_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, tmove_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tmove_b, 0 );
setEffRotateKey( spep_1 + 76, tmove_b, 0 );
setEffAlphaKey( spep_1 + 0, tmove_b, 255 );
setEffAlphaKey( spep_1 + 76 -1, tmove_b, 255 );
setEffAlphaKey( spep_1 + 76, tmove_b, 0 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_1 -3 + 20,  10018, 14, 0x100, -1, 0, -2.4, 86 );	--ドゴォンッ
setEffMoveKey( spep_1 -3 + 20, ctdogon, -2.4, 86 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctdogon, -24.5, 158.5 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdogon, -31.4, 229.2 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdogon, -39.7, 251.1 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdogon, -28.8, 260.2 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdogon, -39.2, 274.5 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdogon, -34.1, 281.3 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdogon, -34.1, 281.3 , 0 );
setEffScaleKey( spep_1 -3 + 20, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_1 -3 + 22, ctdogon, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 24, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_1 -3 + 34, ctdogon, 2.25, 2.25 );
setEffRotateKey( spep_1 -3 + 20, ctdogon, -30 );
setEffRotateKey( spep_1 -3 + 22, ctdogon, -29.9 );
setEffRotateKey( spep_1 -3 + 24, ctdogon, -29.8 );
setEffRotateKey( spep_1 -3 + 34, ctdogon, -29.8 );
setEffAlphaKey( spep_1 -3 + 20, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 32, ctdogon, 128 );
setEffAlphaKey( spep_1 -3 + 34, ctdogon, 0 );

ctzudodo = entryEffectLife( spep_1 -3 + 40,  10014, 38, 0x100, -1, 0, 33.3, 287.5 );	--ズドドドッ
setEffMoveKey( spep_1 -3 + 40, ctzudodo, 33.3, 287.5 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctzudodo, 29, 306.4 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctzudodo, 36.8, 297.5 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctzudodo, 32.3, 316.7 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctzudodo, 40.2, 307.5 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctzudodo, 35.6, 327 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctzudodo, 43.6, 317.4 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctzudodo, 38.9, 337.2 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctzudodo, 47, 327.4 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctzudodo, 42.2, 347.5 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctzudodo, 50.4, 337.4 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctzudodo, 45.5, 357.8 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctzudodo, 53.8, 347.4 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctzudodo, 48.7, 368.1 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctzudodo, 57.2, 357.4 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctzudodo, 52, 378.3 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzudodo, 60.6, 367.4 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzudodo, 55.3, 388.6 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzudodo, 64.1, 377.4 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzudodo, 65.8, 382.4 , 0 );
setEffScaleKey( spep_1 -3 + 40, ctzudodo, 2.09, 2.09 );
setEffScaleKey( spep_1 -3 + 42, ctzudodo, 2.11, 2.11 );
setEffScaleKey( spep_1 -3 + 44, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 46, ctzudodo, 2.15, 2.15 );
setEffScaleKey( spep_1 -3 + 48, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 50, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_1 -3 + 52, ctzudodo, 2.22, 2.22 );
setEffScaleKey( spep_1 -3 + 54, ctzudodo, 2.24, 2.24 );
setEffScaleKey( spep_1 -3 + 56, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1 -3 + 58, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 60, ctzudodo, 2.3, 2.3 );
setEffScaleKey( spep_1 -3 + 62, ctzudodo, 2.32, 2.32 );
setEffScaleKey( spep_1 -3 + 64, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_1 -3 + 66, ctzudodo, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 68, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_1 -3 + 70, ctzudodo, 2.41, 2.41 );
setEffScaleKey( spep_1 -3 + 72, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_1 -3 + 74, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_1 -3 + 76, ctzudodo, 2.48, 2.48 );
setEffScaleKey( spep_1 -3 + 78, ctzudodo, 2.5, 2.5 );
setEffRotateKey( spep_1 -3 + 40, ctzudodo, 3.2 );
setEffRotateKey( spep_1 -3 + 78, ctzudodo, 3.2 );
setEffAlphaKey( spep_1 -3 + 40, ctzudodo, 255 );
setEffAlphaKey( spep_1 -3 + 78, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );--
setDisp( spep_1 -3 + 79, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 40, 1, 106 );

setMoveKey( spep_1 + 0, 1, 18.5, 8.7 , 0 );
setMoveKey( spep_1 + 1, 1, 18.7, 9.1 , 0 );
setMoveKey( spep_1 + 2, 1, 19.2, 9.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 19.9, 11.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 21, 13.2 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 22.4, 15.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 24, 18.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 26, 22.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 28.2, 26.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 30.6, 30.5 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 33.2, 25.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 42.4, 69.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 45.5, 45.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 48.8, 70 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 52.2, 65.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 55.8, 77.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 59.4, 75.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 63.2, 89.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 67, 88.8 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 70.8, 116.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 74.8, 88.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 78.7, 117.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 82.5, 109.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 86.2, 129.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 89.9, 125.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 93.4, 142.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 96.8, 139.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 100, 154.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 103.1, 149.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 106, 164.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 108.7, 160.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 111.2, 174.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 113.4, 167.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 115.4, 181.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 117.2, 175.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 118.8, 188.4 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 120, 179.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 121.1, 192 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 121.8, 184.1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 122.3, 195.5 , 0 );
setMoveKey( spep_1 -3 + 79, 1, 122.3, 195.5 , 0 );

s3 = 0.1;
s4 = 0.2;
setScaleKey( spep_1 + 0, 1, 1.35 +s3, 1.35 +s3 );
setScaleKey( spep_1 -3 + 21, 1, 1.35 +s3, 1.35 +s3 );
setScaleKey( spep_1 -3 + 22, 1, 1.35 +s4, 1.35 +s4 );
setScaleKey( spep_1 -3 + 39, 1, 1.35 +s4, 1.35 +s4 );
setScaleKey( spep_1 -3 + 40, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 79, 1, 1.35, 1.35 );

setRotateKey( spep_1 + 0, 1, -12.6 );
setRotateKey( spep_1 -3 + 21, 1, -12.6 );
setRotateKey( spep_1 -3 + 22, 1, -3.4 );
setRotateKey( spep_1 -3 + 24, 1, -3.4 );
setRotateKey( spep_1 -3 + 26, 1, -3.3 );
setRotateKey( spep_1 -3 + 39, 1, -3.3 );
setRotateKey( spep_1 -3 + 40, 1, -21.1 );
setRotateKey( spep_1 -3 + 79, 1, -21.1 );

-- ** 音 ** --
--鉄骨敵にぶつかっていく
SE008 = playSe( spep_1 + 12, 1033,"",0.5 );
stopSe( spep_1 + 24, SE008, 10 );

--鉄骨敵にぶつかっていく
SE009 = playSe( spep_1 + 20, 1010,"",0.5 );
setSeVolumeByWorkId( spep_1 + 20, SE009, 70 );

--鉄骨敵にぶつかっていく
SE010 = playSe( spep_1 + 20, 1033,"",0.5 );
setSeVolumeByWorkId( spep_1 + 20, SE010, 93 );
stopSe( spep_1 + 36, SE010, 8 );

--鉄骨敵にぶつかっていく
SE011 = playSe( spep_1 + 20, 1011,"",0.5 );

--鉄骨敵にぶつかっていく
SE012 = playSe( spep_1 + 28, 1033,"",0.5 );
setSeVolumeByWorkId( spep_1 + 28, SE012, 108 );
stopSe( spep_1 + 44, SE012, 6 );

--鉄骨敵にぶつかっていく
SE013 = playSe( spep_1 + 36, 1033,"",0.5 );
setSeVolumeByWorkId( spep_1 + 36, SE013, 111 );
stopSe( spep_1 + 52, SE013, 6 );

--鉄骨敵にぶつかっていく
SE014 = playSe( spep_1 + 48, 1033,"",0.5 );
setSeVolumeByWorkId( spep_1 + 48, SE014, 105 );
stopSe( spep_1 + 58, SE014, 12 );

--鉄骨敵にぶつかっていく
SE015 = playSe( spep_1 + 56, 1009,"",0.5 );
setSeVolumeByWorkId( spep_1 + 56, SE015, 83 );

--鉄骨敵にぶつかっていく
SE016 = playSe( spep_1 + 56, 1033,"",0.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
-- 鉄骨　球になる(146F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tround = entryEffectLife( spep_2 + 0, SP_03, 146, 0x100, -1, 0, 0, 0 );  --鉄骨　球になる	ef_003
setEffMoveKey( spep_2 + 0, tround, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, tround, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tround, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tround, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tround, 0 );
setEffRotateKey( spep_2 + 146, tround, 0 );
setEffAlphaKey( spep_2 + 0, tround, 255 );
setEffAlphaKey( spep_2 + 146 -1, tround, 255 );
setEffAlphaKey( spep_2 + 146, tround, 0 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_2 + 0,  10017, 145, 0x100, -1, 0, 86.9, 257.6 );	--ドガガガッ
setEffMoveKey( spep_2 + 0, ctdogaga, 86.9, 257.6 , 0 );
setEffMoveKey( spep_2 + 1, ctdogaga, 87.8, 311.9 , 0 );
setEffMoveKey( spep_2 + 2, ctdogaga, 105, 356.3 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctdogaga, 92.2, 355.3 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctdogaga, 99.3, 364.8 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctdogaga, 100.8, 351.7 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctdogaga, 96.1, 367.1 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctdogaga, 102.9, 357.6 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctdogaga, 95.6, 362 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctdogaga, 101.5, 356.8 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctdogaga, 102.2, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctdogaga, 102.1, 357.3 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctdogaga, 98.5, 367.1 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctdogaga, 101.9, 361 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctdogaga, 98.9, 366.4 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctdogaga, 104.8, 362 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctdogaga, 98.4, 373.2 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctdogaga, 113.9, 365.1 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctdogaga, 100.3, 364 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctdogaga, 107.8, 374 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctdogaga, 109.3, 360 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctdogaga, 104.2, 376.4 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogaga, 111.5, 366.2 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogaga, 103.7, 370.9 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdogaga, 110, 365.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdogaga, 110.6, 374.5 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdogaga, 110.5, 365.8 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdogaga, 106.6, 376.2 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdogaga, 110.2, 369.6 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctdogaga, 107, 375.3 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctdogaga, 113.2, 370.6 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctdogaga, 106.4, 382.5 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctdogaga, 122.9, 373.8 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctdogaga, 108.3, 372.6 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctdogaga, 116.2, 383.3 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctdogaga, 117.8, 368.2 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctdogaga, 112.4, 385.7 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctdogaga, 120.1, 374.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctdogaga, 111.8, 379.8 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctdogaga, 118.4, 373.8 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctdogaga, 119, 383.5 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctdogaga, 118.9, 374.2 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctdogaga, 114.7, 385.2 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctdogaga, 112.8, 390 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctdogaga, 130, 380.8 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctdogaga, 114.7, 379.5 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctdogaga, 123, 390.6 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctdogaga, 124.6, 374.9 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctdogaga, 118.9, 393.1 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctdogaga, 127, 381.7 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctdogaga, 118.2, 386.9 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctdogaga, 125.1, 380.6 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctdogaga, 125.7, 390.7 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctdogaga, 125.6, 381 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctdogaga, 121.2, 392.5 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctdogaga, 125.1, 385.1 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdogaga, 121.5, 391.4 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdogaga, 128.4, 386 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctdogaga, 125.5, 389.7 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctdogaga, 113.6, 391.9 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctdogaga, 135.3, 390.1 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctdogaga, 122.3, 401.1 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctdogaga, 140.7, 391.2 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctdogaga, 124.3, 389.8 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctdogaga, 135.6, 390.4 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctdogaga, 129.9, 405.2 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctdogaga, 141, 407.6 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctdogaga, 145.4, 428.2 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctdogaga, 148.9, 426.5 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctdogaga, 147.4, 448.9 , 0 );
setEffMoveKey( spep_2 -3 + 140, ctdogaga, 155.7, 449.6 , 0 );
setEffMoveKey( spep_2 -3 + 142, ctdogaga, 154.9, 466.4 , 0 );
setEffMoveKey( spep_2 -3 + 144, ctdogaga, 166.7, 469.2 , 0 );
setEffMoveKey( spep_2 -3 + 146, ctdogaga, 166.9, 482.8 , 0 );
setEffMoveKey( spep_2 -3 + 148, ctdogaga, 181.8, 492 , 0 );

setEffScaleKey( spep_2 + 0, ctdogaga, 0.5, 0.5 );
setEffScaleKey( spep_2 + 1, ctdogaga, 1.36, 1.36 );
setEffScaleKey( spep_2 + 2, ctdogaga, 2.23, 2.23 );
setEffScaleKey( spep_2 -3 + 6, ctdogaga, 2.24, 2.24 );
setEffScaleKey( spep_2 -3 + 8, ctdogaga, 2.25, 2.25 );
setEffScaleKey( spep_2 -3 + 10, ctdogaga, 2.26, 2.26 );
setEffScaleKey( spep_2 -3 + 12, ctdogaga, 2.27, 2.27 );
setEffScaleKey( spep_2 -3 + 14, ctdogaga, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 + 16, ctdogaga, 2.29, 2.29 );
setEffScaleKey( spep_2 -3 + 18, ctdogaga, 2.3, 2.3 );
setEffScaleKey( spep_2 -3 + 20, ctdogaga, 2.31, 2.31 );
setEffScaleKey( spep_2 -3 + 22, ctdogaga, 2.32, 2.32 );
setEffScaleKey( spep_2 -3 + 24, ctdogaga, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 26, ctdogaga, 2.34, 2.34 );
setEffScaleKey( spep_2 -3 + 28, ctdogaga, 2.35, 2.35 );
setEffScaleKey( spep_2 -3 + 30, ctdogaga, 2.36, 2.36 );
setEffScaleKey( spep_2 -3 + 32, ctdogaga, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 34, ctdogaga, 2.38, 2.38 );
setEffScaleKey( spep_2 -3 + 36, ctdogaga, 2.39, 2.39 );
setEffScaleKey( spep_2 -3 + 38, ctdogaga, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 + 40, ctdogaga, 2.41, 2.41 );
setEffScaleKey( spep_2 -3 + 42, ctdogaga, 2.42, 2.42 );
setEffScaleKey( spep_2 -3 + 44, ctdogaga, 2.43, 2.43 );
setEffScaleKey( spep_2 -3 + 46, ctdogaga, 2.44, 2.44 );
setEffScaleKey( spep_2 -3 + 48, ctdogaga, 2.45, 2.45 );
setEffScaleKey( spep_2 -3 + 50, ctdogaga, 2.46, 2.46 );
setEffScaleKey( spep_2 -3 + 52, ctdogaga, 2.47, 2.47 );
setEffScaleKey( spep_2 -3 + 54, ctdogaga, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 56, ctdogaga, 2.49, 2.49 );
setEffScaleKey( spep_2 -3 + 58, ctdogaga, 2.5, 2.5 );
setEffScaleKey( spep_2 -3 + 60, ctdogaga, 2.52, 2.52 );
setEffScaleKey( spep_2 -3 + 62, ctdogaga, 2.53, 2.53 );
setEffScaleKey( spep_2 -3 + 64, ctdogaga, 2.54, 2.54 );
setEffScaleKey( spep_2 -3 + 66, ctdogaga, 2.55, 2.55 );
setEffScaleKey( spep_2 -3 + 68, ctdogaga, 2.56, 2.56 );
setEffScaleKey( spep_2 -3 + 70, ctdogaga, 2.57, 2.57 );
setEffScaleKey( spep_2 -3 + 72, ctdogaga, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 + 74, ctdogaga, 2.59, 2.59 );
setEffScaleKey( spep_2 -3 + 76, ctdogaga, 2.6, 2.6 );
setEffScaleKey( spep_2 -3 + 78, ctdogaga, 2.61, 2.61 );
setEffScaleKey( spep_2 -3 + 80, ctdogaga, 2.62, 2.62 );
setEffScaleKey( spep_2 -3 + 82, ctdogaga, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 84, ctdogaga, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 86, ctdogaga, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 88, ctdogaga, 2.66, 2.66 );
setEffScaleKey( spep_2 -3 + 90, ctdogaga, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 92, ctdogaga, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 94, ctdogaga, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 96, ctdogaga, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 98, ctdogaga, 2.71, 2.71 );
setEffScaleKey( spep_2 -3 + 100, ctdogaga, 2.72, 2.72 );
setEffScaleKey( spep_2 -3 + 102, ctdogaga, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 104, ctdogaga, 2.74, 2.74 );
setEffScaleKey( spep_2 -3 + 106, ctdogaga, 2.75, 2.75 );
setEffScaleKey( spep_2 -3 + 108, ctdogaga, 2.76, 2.76 );
setEffScaleKey( spep_2 -3 + 110, ctdogaga, 2.77, 2.77 );
setEffScaleKey( spep_2 -3 + 112, ctdogaga, 2.78, 2.78 );
setEffScaleKey( spep_2 -3 + 114, ctdogaga, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 116, ctdogaga, 2.8, 2.8 );
setEffScaleKey( spep_2 -3 + 118, ctdogaga, 2.81, 2.81 );
setEffScaleKey( spep_2 -3 + 120, ctdogaga, 2.82, 2.82 );
setEffScaleKey( spep_2 -3 + 122, ctdogaga, 2.83, 2.83 );
setEffScaleKey( spep_2 -3 + 124, ctdogaga, 2.84, 2.84 );
setEffScaleKey( spep_2 -3 + 126, ctdogaga, 2.85, 2.85 );
setEffScaleKey( spep_2 -3 + 128, ctdogaga, 2.86, 2.86 );
setEffScaleKey( spep_2 -3 + 130, ctdogaga, 2.93, 2.93 );
setEffScaleKey( spep_2 -3 + 132, ctdogaga, 2.99, 2.99 );
setEffScaleKey( spep_2 -3 + 134, ctdogaga, 3.05, 3.05 );
setEffScaleKey( spep_2 -3 + 136, ctdogaga, 3.12, 3.12 );
setEffScaleKey( spep_2 -3 + 138, ctdogaga, 3.18, 3.18 );
setEffScaleKey( spep_2 -3 + 140, ctdogaga, 3.24, 3.24 );
setEffScaleKey( spep_2 -3 + 142, ctdogaga, 3.31, 3.31 );
setEffScaleKey( spep_2 -3 + 144, ctdogaga, 3.37, 3.37 );
setEffScaleKey( spep_2 -3 + 146, ctdogaga, 3.44, 3.44 );
setEffScaleKey( spep_2 -3 + 148, ctdogaga, 3.5, 3.5 );

setEffRotateKey( spep_2 + 0, ctdogaga, 29.8 );
setEffRotateKey( spep_2 -3 + 44, ctdogaga, 29.8 );
setEffRotateKey( spep_2 -3 + 46, ctdogaga, 29.9 );
setEffRotateKey( spep_2 -3 + 134, ctdogaga, 29.9 );
setEffRotateKey( spep_2 -3 + 136, ctdogaga, 29.8 );
setEffRotateKey( spep_2 -3 + 146, ctdogaga, 29.8 );
setEffRotateKey( spep_2 -3 + 148, ctdogaga, 29.7 );

setEffAlphaKey( spep_2 + 0, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 148, ctdogaga, 255 );

-- ** 音 ** --
--鉄骨集まってくる
SE017 = playSe( spep_2 + 2, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 2, SE017, 75 );
stopSe( spep_2 + 18, SE017, 6 );

--鉄骨集まってくる
SE018 = playSe( spep_2 + 4, 1117,"",0.5 );
stopSe( spep_2 + 26, SE018, 20 );

--鉄骨集まってくる
SE019 = playSe( spep_2 + 4, 1168,"",0.5 );
setSeVolumeByWorkId( spep_2 + 4, SE019, 65 );
stopSe( spep_2 +146 + 8, SE019, 0 );

--鉄骨集まってくる
SE020 = playSe( spep_2 + 14, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 14, SE020, 86 );
stopSe( spep_2 + 28, SE020, 12 );

--鉄骨集まってくる
SE021 = playSe( spep_2 + 16, 1117,"",0.5 );
setSeVolumeByWorkId( spep_2 + 16, SE021, 85 );
stopSe( spep_2 + 34, SE021, 14 );

--鉄骨集まってくる
SE022 = playSe( spep_2 + 26, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 26, SE022, 79 );
stopSe( spep_2 + 30, SE022, 12 );

--鉄骨集まってくる
SE023 = playSe( spep_2 + 32, 1117,"",0.5 );
stopSe( spep_2 + 54, SE023, 14 );

--鉄骨集まってくる
SE024 = playSe( spep_2 + 40, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 40, SE024, 79 );
stopSe( spep_2 + 52, SE024, 12 );

--鉄骨集まってくる
SE025 = playSe( spep_2 + 48, 1117,"",0.5 );
setSeVolumeByWorkId( spep_2 + 48, SE025, 94 );
stopSe( spep_2 + 70, SE025, 12 );

--鉄骨集まってくる
SE026 = playSe( spep_2 + 50, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 50, SE026, 65 );
stopSe( spep_2 + 62, SE026, 10 );

--鉄骨集まってくる
SE027 = playSe( spep_2 + 62, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 62, SE027, 61 );
stopSe( spep_2 + 74, SE027, 10 );

--鉄骨集まってくる
SE028 = playSe( spep_2 + 62, 1117,"",0.5 );
setSeVolumeByWorkId( spep_2 + 62, SE028, 79 );
stopSe( spep_2 + 82, SE028, 14 );

--鉄骨集まってくる
SE029 = playSe( spep_2 + 74, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 74, SE029, 79 );
stopSe( spep_2 + 88, SE029, 8 );

--鉄骨集まってくる
SE030 = playSe( spep_2 + 78, 1117,"",0.5 );
stopSe( spep_2 + 100, SE030, 12 );

--鉄骨集まってくる
SE031 = playSe( spep_2 + 88, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 88, SE031, 63 );
stopSe( spep_2 + 100, SE031, 16 );

--鉄骨集まってくる
SE032 = playSe( spep_2 + 92, 1117,"",0.5 );
setSeVolumeByWorkId( spep_2 + 92, SE032, 85 );
stopSe( spep_2 +146 + 8, SE032, 0 );

--鉄骨集まってくる
SE033 = playSe( spep_2 + 102, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 102, SE033, 72 );
stopSe( spep_2 + 118, SE033, 10 );

--鉄骨集まってくる
SE034 = playSe( spep_2 + 118, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 118, SE034, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 126, 20, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 146;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--メタルリルド下から出現
SE036 = playSe( spep_3 + 92, 1195 );
setSeVolumeByWorkId( spep_3 + 92, SE036, 0 );
setSeVolumeByWorkId( spep_3 + 93, SE036, 15 );
setSeVolumeByWorkId( spep_3 + 94, SE036, 30 );
setSeVolumeByWorkId( spep_3 + 95, SE036, 45 );
setSeVolumeByWorkId( spep_3 + 96, SE036, 60 );
setSeVolumeByWorkId( spep_3 + 97, SE036, 80 );
setSeVolumeByWorkId( spep_3 + 98, SE036, 100 );
setStartTimeMs( SE036,  550 );

--メタルリルド下から出現
SE038 = playSe( spep_3 + 92, 1246 );
stopSe( spep_3 +96 + 12, SE038, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 球を突き刺すリルド(96F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tbreak_f = entryEffectLife( spep_4 + 0, SP_04, 96, 0x100, -1, 0, 0, 0 );  --球を突き刺すリルド	ef_004
setEffMoveKey( spep_4 + 0, tbreak_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, tbreak_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tbreak_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, tbreak_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tbreak_f, 0 );
setEffRotateKey( spep_4 + 96, tbreak_f, 0 );
setEffAlphaKey( spep_4 + 0, tbreak_f, 255 );
setEffAlphaKey( spep_4 + 96 -1, tbreak_f, 255 );
setEffAlphaKey( spep_4 + 96, tbreak_f, 0 );

tbreak_b = entryEffectLife( spep_4 + 0, SP_07, 96, 0x80, -1, 0, 0, 0 );  --背景	ef_007
setEffMoveKey( spep_4 + 0, tbreak_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, tbreak_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tbreak_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, tbreak_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tbreak_b, 0 );
setEffRotateKey( spep_4 + 96, tbreak_b, 0 );
setEffAlphaKey( spep_4 + 0, tbreak_b, 255 );
setEffAlphaKey( spep_4 + 96 -1, tbreak_b, 255 );
setEffAlphaKey( spep_4 + 96, tbreak_b, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 14,  10058, 12, 0x100, -1, 0, -88.8, -401 );	--ズオッ
setEffMoveKey( spep_4 -3 + 14, ctzuo, -88.8, -401 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, -84, -374.2 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, -87.7, -373.3 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, -97.9, -347.1 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, -101.7, -346.2 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, -112, -320 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, -118.7, -306.3 , 0 );
setEffScaleKey( spep_4 -3 + 14, ctzuo, 0.91, 0.91 );
setEffScaleKey( spep_4 -3 + 16, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_4 -3 + 26, ctzuo, 1.59, 1.59 );
setEffRotateKey( spep_4 -3 + 14, ctzuo, -10.3 );
setEffRotateKey( spep_4 -3 + 26, ctzuo, -10.3 );
setEffAlphaKey( spep_4 -3 + 14, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 16, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 24, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 26, ctzuo, 0 );

ctgyuuu = entryEffectLife( spep_4 -3 + 36,  10042, 62, 0x100, -1, 0, -78.6, -397.7 );	--ギュウウッ
setEffMoveKey( spep_4 -3 + 36, ctgyuuu, -78.6, -397.7 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctgyuuu, -61.7, -387 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctgyuuu, -58.7, -351.3 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctgyuuu, -48.8, -328 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctgyuuu, -37.3, -347.7 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctgyuuu, -50.3, -323.7 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctgyuuu, -38.7, -343.6 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctgyuuu, -51.9, -319.4 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctgyuuu, -40.2, -339.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctgyuuu, -53.4, -315 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctgyuuu, -41.6, -335.3 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctgyuuu, -54.9, -310.7 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctgyuuu, -43, -331.2 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctgyuuu, -56.5, -306.4 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctgyuuu, -44.4, -327.1 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctgyuuu, -58, -302 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctgyuuu, -45.8, -322.9 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctgyuuu, -59.6, -297.7 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctgyuuu, -47.2, -318.8 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctgyuuu, -61.1, -293.3 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctgyuuu, -48.7, -314.7 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctgyuuu, -62.6, -289 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctgyuuu, -50.1, -310.6 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctgyuuu, -64.2, -284.7 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctgyuuu, -51.5, -306.5 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctgyuuu, -65.7, -280.3 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctgyuuu, -52.9, -302.3 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctgyuuu, -67.3, -276 , 0 );
setEffMoveKey( spep_4 -3 + 92, ctgyuuu, -54.3, -298.2 , 0 );
setEffMoveKey( spep_4 -3 + 94, ctgyuuu, -68.8, -271.7 , 0 );
setEffMoveKey( spep_4 -3 + 96, ctgyuuu, -55.8, -294.1 , 0 );
setEffMoveKey( spep_4 -3 + 98, ctgyuuu, -56.5, -292 , 0 );
setEffScaleKey( spep_4 -3 + 36, ctgyuuu, 0.59, 0.59 );
setEffScaleKey( spep_4 -3 + 38, ctgyuuu, 0.94, 0.94 );
setEffScaleKey( spep_4 -3 + 40, ctgyuuu, 1.29, 1.29 );
setEffScaleKey( spep_4 -3 + 42, ctgyuuu, 1.64, 1.64 );
setEffScaleKey( spep_4 -3 + 44, ctgyuuu, 1.65, 1.65 );
setEffScaleKey( spep_4 -3 + 46, ctgyuuu, 1.66, 1.66 );
setEffScaleKey( spep_4 -3 + 48, ctgyuuu, 1.66, 1.66 );
setEffScaleKey( spep_4 -3 + 50, ctgyuuu, 1.67, 1.67 );
setEffScaleKey( spep_4 -3 + 52, ctgyuuu, 1.68, 1.68 );
setEffScaleKey( spep_4 -3 + 54, ctgyuuu, 1.69, 1.69 );
setEffScaleKey( spep_4 -3 + 56, ctgyuuu, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 58, ctgyuuu, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 60, ctgyuuu, 1.71, 1.71 );
setEffScaleKey( spep_4 -3 + 62, ctgyuuu, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 64, ctgyuuu, 1.73, 1.73 );
setEffScaleKey( spep_4 -3 + 66, ctgyuuu, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 68, ctgyuuu, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 70, ctgyuuu, 1.75, 1.75 );
setEffScaleKey( spep_4 -3 + 72, ctgyuuu, 1.76, 1.76 );
setEffScaleKey( spep_4 -3 + 74, ctgyuuu, 1.77, 1.77 );
setEffScaleKey( spep_4 -3 + 76, ctgyuuu, 1.77, 1.78 );
setEffScaleKey( spep_4 -3 + 78, ctgyuuu, 1.78, 1.78 );
setEffScaleKey( spep_4 -3 + 80, ctgyuuu, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 82, ctgyuuu, 1.8, 1.8 );
setEffScaleKey( spep_4 -3 + 84, ctgyuuu, 1.81, 1.81 );
setEffScaleKey( spep_4 -3 + 86, ctgyuuu, 1.81, 1.81 );
setEffScaleKey( spep_4 -3 + 88, ctgyuuu, 1.82, 1.82 );
setEffScaleKey( spep_4 -3 + 90, ctgyuuu, 1.83, 1.83 );
setEffScaleKey( spep_4 -3 + 92, ctgyuuu, 1.84, 1.84 );
setEffScaleKey( spep_4 -3 + 94, ctgyuuu, 1.85, 1.85 );
setEffScaleKey( spep_4 -3 + 96, ctgyuuu, 1.85, 1.85 );
setEffScaleKey( spep_4 -3 + 98, ctgyuuu, 1.86, 1.86 );
setEffRotateKey( spep_4 -3 + 36, ctgyuuu, -15.8 );
setEffRotateKey( spep_4 -3 + 98, ctgyuuu, -15.8 );
setEffAlphaKey( spep_4 -3 + 36, ctgyuuu, 64 );
setEffAlphaKey( spep_4 -3 + 38, ctgyuuu, 128 );
setEffAlphaKey( spep_4 -3 + 40, ctgyuuu, 191 );
setEffAlphaKey( spep_4 -3 + 42, ctgyuuu, 255 );
setEffAlphaKey( spep_4 -3 + 44, ctgyuuu, 246 );
setEffAlphaKey( spep_4 -3 + 46, ctgyuuu, 237 );
setEffAlphaKey( spep_4 -3 + 48, ctgyuuu, 228 );
setEffAlphaKey( spep_4 -3 + 50, ctgyuuu, 219 );
setEffAlphaKey( spep_4 -3 + 52, ctgyuuu, 209 );
setEffAlphaKey( spep_4 -3 + 54, ctgyuuu, 200 );
setEffAlphaKey( spep_4 -3 + 56, ctgyuuu, 191 );
setEffAlphaKey( spep_4 -3 + 58, ctgyuuu, 182 );
setEffAlphaKey( spep_4 -3 + 60, ctgyuuu, 173 );
setEffAlphaKey( spep_4 -3 + 62, ctgyuuu, 164 );
setEffAlphaKey( spep_4 -3 + 64, ctgyuuu, 155 );
setEffAlphaKey( spep_4 -3 + 66, ctgyuuu, 146 );
setEffAlphaKey( spep_4 -3 + 68, ctgyuuu, 137 );
setEffAlphaKey( spep_4 -3 + 70, ctgyuuu, 128 );
setEffAlphaKey( spep_4 -3 + 72, ctgyuuu, 118 );
setEffAlphaKey( spep_4 -3 + 74, ctgyuuu, 109 );
setEffAlphaKey( spep_4 -3 + 76, ctgyuuu, 100 );
setEffAlphaKey( spep_4 -3 + 78, ctgyuuu, 91 );
setEffAlphaKey( spep_4 -3 + 80, ctgyuuu, 82 );
setEffAlphaKey( spep_4 -3 + 82, ctgyuuu, 73 );
setEffAlphaKey( spep_4 -3 + 84, ctgyuuu, 64 );
setEffAlphaKey( spep_4 -3 + 86, ctgyuuu, 55 );
setEffAlphaKey( spep_4 -3 + 88, ctgyuuu, 46 );
setEffAlphaKey( spep_4 -3 + 90, ctgyuuu, 36 );
setEffAlphaKey( spep_4 -3 + 92, ctgyuuu, 27 );
setEffAlphaKey( spep_4 -3 + 94, ctgyuuu, 18 );
setEffAlphaKey( spep_4 -3 + 96, ctgyuuu, 9 );
setEffAlphaKey( spep_4 -3 + 98, ctgyuuu, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 66, 1, 1 );
setDisp( spep_4 -3 + 98, 1, 0 );
changeAnime( spep_4 -3 + 66, 1, 108 );

setMoveKey( spep_4 -3 + 66, 1, -43.8, 155.4 , 0 );
setMoveKey( spep_4 -3 + 67, 1, -43.8, 155.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -28.5, 110.5 , 0 );
setMoveKey( spep_4 -3 + 69, 1, -28.5, 110.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 0.6, 82.9 , 0 );
setMoveKey( spep_4 -3 + 71, 1, 0.6, 82.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 45.5, -11.3 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 45.5, -11.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 109.7, -113.6 , 0 );
setMoveKey( spep_4 -3 + 75, 1, 109.7, -113.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 247.9, -309.3 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 247.9, -309.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 329.2, -453.5 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 329.2, -453.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 388.5, -543.8 , 0 );
setMoveKey( spep_4 -3 + 81, 1, 388.5, -543.8 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 443.4, -654.4 , 0 );
setMoveKey( spep_4 -3 + 83, 1, 443.4, -654.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 491.2, -730.2 , 0 );
setMoveKey( spep_4 -3 + 85, 1, 491.2, -730.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 531.2, -812.1 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 531.2, -812.1 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 563.3, -862.7 , 0 );
setMoveKey( spep_4 -3 + 89, 1, 563.3, -862.7 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 588, -918 , 0 );
setMoveKey( spep_4 -3 + 91, 1, 588, -918 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 606.1, -945.8 , 0 );
setMoveKey( spep_4 -3 + 93, 1, 606.1, -945.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 618.4, -979.1 , 0 );
setMoveKey( spep_4 -3 + 95, 1, 618.4, -979.1 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 625.5, -989.9 , 0 );
setMoveKey( spep_4 -3 + 97, 1, 625.5, -989.9 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 628.1, -1003.1 , 0 );

setScaleKey( spep_4 -3 + 66, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 73, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 74, 1, 0.49, 0.49 );
setScaleKey( spep_4 -3 + 75, 1, 0.49, 0.49 );
setScaleKey( spep_4 -3 + 76, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 77, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 78, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 79, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 80, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 81, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 82, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 83, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 84, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 85, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 86, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 87, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 88, 1, 0.44, 0.44 );
setScaleKey( spep_4 -3 + 98, 1, 0.44, 0.44 );

setRotateKey( spep_4 -3 + 66, 1, 54.7 );
setRotateKey( spep_4 -3 + 98, 1, 54.7 );

-- ** 音 ** --
--メタルリルド伸びて貫いていく
SE037 = playSe( spep_4 + 18, 1219,"",0.5 );
setSeVolumeByWorkId( spep_4 + 18, SE037, 0 );
setSeVolumeByWorkId( spep_4 + 20, SE037, 25 );
setSeVolumeByWorkId( spep_4 + 22, SE037, 50 );
setSeVolumeByWorkId( spep_4 + 24, SE037, 75 );
setSeVolumeByWorkId( spep_4 + 26, SE037, 100 );
stopSe( spep_4 +96 + 14, SE037, 22 );
setStartTimeMs( SE037,  667 );

--メタルリルド下から出現
SE039 = playSe( spep_4 + 4, 1291 );

--メタルリルド伸びて貫いていく
SE040 = playSe( spep_4 + 20, 1237,"",0.5 );
setSeVolumeByWorkId( spep_4 + 20, SE040, 0 );
setSeVolumeByWorkId( spep_4 + 21, SE040, 25 );
setSeVolumeByWorkId( spep_4 + 22, SE040, 50 );
setSeVolumeByWorkId( spep_4 + 23, SE040, 75 );
setSeVolumeByWorkId( spep_4 + 24, SE040, 100 );
setStartTimeMs( SE040,  250 );

--メタルリルド伸びて貫いていく
SE041 = playSe( spep_4 + 22, 1169 );
setSeVolumeByWorkId( spep_4 + 22, SE041, 89 );

--メタルリルド伸びて貫いていく
SE042 = playSe( spep_4 + 28, 1320,"",0.5 );
stopSe( spep_4 +96 + 32, SE042, 6 );

--敵ヒット
SE043 = playSe( spep_4 + 58, 1023 );
setSeVolumeByWorkId( spep_4 + 58, SE043, 92 );

--敵ヒット
SE044 = playSe( spep_4 + 60, 1011 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 61, 0, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;


------------------------------------------------------
-- 地面まで突き刺すリルド(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --地面まで突き刺すリルド	ef_005
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 120, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 120, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --地面　背景	ef_008
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 120, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 120, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 +1 + 0, 1, 1 );
setDisp( spep_5 +1 + 22, 1, 0 );
changeAnime( spep_5 +1 + 0, 1, 5 );

a1 = 5;
b1 = 10;
setMoveKey( spep_5 +1 + 0, 1, -34.7 -a1, 322.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 1, 1, -34.7 -a1, 322.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 2, 1, 4.1 -a1, 250.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 3, 1, 4.1 -a1, 250.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 4, 1, 87.1 -a1, 96.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 5, 1, 87.1 -a1, 96.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 6, 1, 87 -a1 -a1, 78.6 -b1 , 0 );
setMoveKey( spep_5 +1 + 7, 1, 87 -a1 -a1, 78.6 -b1 , 0 );
setMoveKey( spep_5 +1 + 8, 1, 81.8 -a1, 53.7 -b1 , 0 );
setMoveKey( spep_5 +1 + 9, 1, 81.8 -a1, 53.7 -b1 , 0 );
setMoveKey( spep_5 +1 + 10, 1, 84.3 -a1, 22.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 11, 1, 84.3 -a1, 22.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 12, 1, 87.3 -a1, -16.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 13, 1, 87.3 -a1, -16.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 14, 1, 90.6 -a1, -58.2 -b1 , 0 );
setMoveKey( spep_5 +1 + 15, 1, 90.6 -a1, -58.2 -b1 , 0 );
setMoveKey( spep_5 +1 + 16, 1, 92.2 -a1, -109.9 -b1 , 0 );
setMoveKey( spep_5 +1 + 17, 1, 92.2 -a1, -109.9 -b1 , 0 );
setMoveKey( spep_5 +1 + 18, 1, 82.6 -a1, -132.7 -b1 , 0 );
setMoveKey( spep_5 +1 + 19, 1, 82.6 -a1, -132.7 -b1 , 0 );
setMoveKey( spep_5 +1 + 20, 1, 76.1 -a1, -160.8 -b1 , 0 );
setMoveKey( spep_5 +1 + 21, 1, 76.1 -a1, -160.8 -b1 , 0 );
setMoveKey( spep_5 +1 + 22, 1, 76.1 -a1, -160.8 -b1 , 0 );

s5 = 0;
setScaleKey( spep_5 +1 + 0, 1, 1.5 +s5, 1.5 +s5 );
setScaleKey( spep_5 +1 + 1, 1, 1.5 +s5, 1.5 +s5 );
setScaleKey( spep_5 +1 + 2, 1, 1.39 +s5, 1.39 +s5 );
setScaleKey( spep_5 +1 + 3, 1, 1.39 +s5, 1.39 +s5 );
setScaleKey( spep_5 +1 + 4, 1, 1.17 +s5, 1.17 +s5 );
setScaleKey( spep_5 +1 + 5, 1, 1.17 +s5, 1.17 +s5 );
setScaleKey( spep_5 +1 + 6, 1, 0.98 +s5, 0.98 +s5 );
setScaleKey( spep_5 +1 + 7, 1, 0.98 +s5, 0.98 +s5 );
setScaleKey( spep_5 +1 + 8, 1, 0.89 +s5, 0.89 +s5 );
setScaleKey( spep_5 +1 + 9, 1, 0.89 +s5, 0.89 +s5 );
setScaleKey( spep_5 +1 + 10, 1, 0.79 +s5, 0.79 +s5 );
setScaleKey( spep_5 +1 + 11, 1, 0.79 +s5, 0.79 +s5 );
setScaleKey( spep_5 +1 + 12, 1, 0.66 +s5, 0.66 +s5 );
setScaleKey( spep_5 +1 + 13, 1, 0.66 +s5, 0.66 +s5 );
setScaleKey( spep_5 +1 + 14, 1, 0.52 +s5, 0.52 +s5 );
setScaleKey( spep_5 +1 + 15, 1, 0.52 +s5, 0.52 +s5 );
setScaleKey( spep_5 +1 + 16, 1, 0.39 +s5, 0.39 +s5 );
setScaleKey( spep_5 +1 + 17, 1, 0.39 +s5, 0.39 +s5 );
setScaleKey( spep_5 +1 + 18, 1, 0.27 +s5, 0.27 +s5 );
setScaleKey( spep_5 +1 + 19, 1, 0.27 +s5, 0.27 +s5 );
setScaleKey( spep_5 +1 + 20, 1, 0.2 +s5, 0.2 +s5 );
setScaleKey( spep_5 +1 + 21, 1, 0.2 +s5, 0.2 +s5 );
setScaleKey( spep_5 +1 + 22, 1, 0.2 +s5, 0.2 +s5 );

setRotateKey( spep_5 +1 + 0, 1, 43.9 );
setRotateKey( spep_5 +1 + 22, 1, 43.9 );

-- ** 音 ** --
--地面爆発
SE045 = playSe( spep_5 + 20, 1024 );
setSeVolumeByWorkId( spep_5 + 20, SE045, 78 );

--地面爆発
SE046 = playSe( spep_5 + 20, 1159 );
setSeVolumeByWorkId( spep_5 + 20, SE046, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 0, 5, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 110 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 対峙〜タメ	ef_001(216F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 216, 0x80, -1, 0, 0, 0 );  --対峙〜タメ	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 216, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 216, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 216, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 216 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 216, first_f, 0 );

spep_x = spep_0 + 112;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 180, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 180, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 180, 515.5 , 0 );
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

shuchusen1 = entryEffectLife( spep_0 + 95, 906, 120, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 95, shuchusen1, 90, 20 );
setEffMoveKey( spep_0 + 95, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 215, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 95, shuchusen1, 1.2, 1.5 );
setEffScaleKey( spep_0 + 215, shuchusen1, 1.2, 1.5 );
setEffRotateKey( spep_0 + 95, shuchusen1, 0 );
setEffRotateKey( spep_0 + 215, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 95, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 215, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 161.3, 17 , 0 );
setMoveKey( spep_0 + 1, 1, 164.2, 17.1 , 0 );
setMoveKey( spep_0 + 2, 1, 167.2, 17.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 170.5, 17.1 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 170.5, 17.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 173.7, 17.1 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 173.7, 17.1 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 177.2, 17.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 180.8, 17.2 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 184.5, 17.2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 188.4, 17.3 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 192.3, 17.4 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 196.4, 17.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 200.7, 17.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 205.1, 17.6 , 0 );

s1 = 0.3;
setScaleKey( spep_0 + 0, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 1, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 2, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 3, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 4, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 5, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 + 6, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 -3 + 12, 1, 1.49 +s1, 1.49 +s1 );
setScaleKey( spep_0 -3 + 14, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_0 -3 + 20, 1, 1.5 +s1, 1.5 +s1 );
setScaleKey( spep_0 -3 + 22, 1, 1.51 +s1, 1.51 +s1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 216 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 22 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 205.1, 17.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 209.5, 17.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 214.2, 17.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 219, 17.9 , 0 );
    setMoveKey( SP_dodge + 8, 1, 223.8, 18 , 0 );
    setMoveKey( SP_dodge + 10, 1, 263.8, 14.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.51 +s1, 1.51 +s1 );
    setScaleKey( SP_dodge + 2, 1, 1.51 +s1, 1.51 +s1 );
    setScaleKey( SP_dodge + 4, 1, 1.52 +s1, 1.52 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.52 +s1, 1.52 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.53 +s1, 1.53 +s1 );
    setScaleKey( SP_dodge + 10, 1,1.45 +s1, 1.45 +s1 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

--setDisp( spep_0 -3 + 218, 1, 0 );
changeAnime( spep_0 -3 + 56, 1, 101 );

setMoveKey( spep_0 -3 + 26, 1, 209.5, 17.7 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 214.2, 17.8 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 219, 17.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 223.8, 18 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 263.8, 14.4 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 282.5, 12.9 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 297.1, 11.8 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 309.6, 10.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 320.9, 10.2 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 331.1, 9.5 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 340.8, 9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 350, 8.5 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 358.7, 8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 367, 7.6 , 0 );
setMoveKey( spep_0 -3 + 55, 1, 375.1, 7.2 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 382.9, 6.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 390.5, 6.5 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 397.8, 6.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 405, 5.9 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 412.1, 5.6 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 418.9, 5.4 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 425.5, 5.1 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 432, 4.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 438.3, 4.6 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 444.5, 4.4 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 450.5, 4.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 456.4, 4 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 462.1, 3.8 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 467.7, 3.6 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 473.1, 3.3 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 478.5, 3.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 483.6, 3 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 488.6, 2.8 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 493.5, 2.7 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 498.4, 2.6 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 615.6, 4.4 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 621.1, -1 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 626.3, 10.5 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 631.3, -2.7 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 636.3, 7.9 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 641.1, -1.9 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 645.9, 7 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 650.3, -2.4 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 654.7, 6.2 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 658.9, -1.3 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 663.1, 3.6 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 667.1, -0.4 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 670.9, 3.3 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 674.6, -2 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 678.3, 2.9 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 681.9, -1 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 683.8, 2.6 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 685.7, -1.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 687.6, 2.2 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 689.5, -3 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 691.4, 1.9 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 693.1, -2.1 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 694.9, 1.5 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 696.7, -3.7 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 698.4, 1.2 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 700.2, -2.8 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 701.8, 0.9 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 703.5, -3.1 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 705.1, 0.5 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 706.7, -4.7 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 708.3, 0.2 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 709.9, -3.7 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 711.4, -0.1 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 713, -5.3 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 714.6, -0.4 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 716.1, -4.3 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 717.6, -0.7 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 719.1, -4.6 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 720.6, -1 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 722.1, -6.2 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 723.6, -1.3 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 725.1, -5.2 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 725.1, -6.5 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 725.1, -6.5 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 725.1, -5.2 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 725.1, -6.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 725.1, -1.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 903.4, -1.4 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 991.5, -1.4 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 1058.3, -6.5 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 1113.7, -1.3 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 1161.6, -5.2 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 1203.6, -1.4 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 1240.9, -6.5 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 1273.9, -1.4 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 1302.9, -1.4 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 1327.4, -6.4 , 0 );

s2 = 0.1;
setScaleKey( spep_0 -3 + 26, 1, 1.51 +s1, 1.51 +s1 );
setScaleKey( spep_0 -3 + 28, 1, 1.52 +s1, 1.52 +s1 );
setScaleKey( spep_0 -3 + 30, 1, 1.52 +s1, 1.52 +s1 );
setScaleKey( spep_0 -3 + 32, 1, 1.53 +s1, 1.53 +s1 );
setScaleKey( spep_0 -3 + 34, 1, 1.45 +s1, 1.45 +s1 );
setScaleKey( spep_0 -3 + 36, 1, 1.43 +s1, 1.43 +s1 );
setScaleKey( spep_0 -3 + 38, 1, 1.41 +s1, 1.41 +s1 );
setScaleKey( spep_0 -3 + 40, 1, 1.39 +s1, 1.39 +s1 );
setScaleKey( spep_0 -3 + 42, 1, 1.38 +s1, 1.38 +s1 );
setScaleKey( spep_0 -3 + 44, 1, 1.37 +s1, 1.37 +s1 );
setScaleKey( spep_0 -3 + 46, 1, 1.36 +s1, 1.36 +s1 );
setScaleKey( spep_0 -3 + 48, 1, 1.35 +s1, 1.35 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 1.34 +s1, 1.34 +s1 );
setScaleKey( spep_0 -3 + 52, 1, 1.34 +s1, 1.34 +s1 );
setScaleKey( spep_0 -3 + 55, 1, 1.33 +s1, 1.33 +s1 );
setScaleKey( spep_0 -3 + 56, 1, 1.33 +s2, 1.33 +s2 );
setScaleKey( spep_0 -3 + 58, 1, 1.32 +s2, 1.32 +s2 );
setScaleKey( spep_0 -3 + 62, 1, 1.32 +s2, 1.32 +s2 );
setScaleKey( spep_0 -3 + 64, 1, 1.31 +s2, 1.31 +s2 );
setScaleKey( spep_0 -3 + 72, 1, 1.31 +s2, 1.31 +s2 );
setScaleKey( spep_0 -3 + 74, 1, 1.3 +s2, 1.3 +s2 );
setScaleKey( spep_0 -3 + 82, 1, 1.3 +s2, 1.3 +s2 );
setScaleKey( spep_0 -3 + 84, 1, 1.29 +s2, 1.29 +s2 );
setScaleKey( spep_0 -3 + 94, 1, 1.29 +s2, 1.29 +s2 );
setScaleKey( spep_0 -3 + 96, 1, 1.54 +s2, 1.54 +s2 );
setScaleKey( spep_0 -3 + 106, 1, 1.54 +s2, 1.54 +s2 );
setScaleKey( spep_0 -3 + 108, 1, 1.53 +s2, 1.53 +s2 );
setScaleKey( spep_0 -3 + 116, 1, 1.53 +s2, 1.53 +s2 );
setScaleKey( spep_0 -3 + 118, 1, 1.52 +s2, 1.52 +s2 );
setScaleKey( spep_0 -3 + 126, 1, 1.52 +s2, 1.52 +s2 );
setScaleKey( spep_0 -3 + 128, 1, 1.51 +s2, 1.51 +s2 );
setScaleKey( spep_0 -3 + 130, 1, 1.51 +s2, 1.51 +s2 );
setScaleKey( spep_0 -3 + 132, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 136, 1, 1.5 +s2, 1.5 +s2 );
setScaleKey( spep_0 -3 + 138, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 142, 1, 1.49 +s2, 1.49 +s2 );
setScaleKey( spep_0 -3 + 144, 1, 1.48 +s2, 1.48 +s2 );
setScaleKey( spep_0 -3 + 146, 1, 1.48 +s2, 1.48 +s2 );
setScaleKey( spep_0 -3 + 148, 1, 1.47 +s2, 1.47 +s2 );
setScaleKey( spep_0 -3 + 154, 1, 1.47 +s2, 1.47 +s2 );
setScaleKey( spep_0 -3 + 156, 1, 1.46 +s2, 1.46 +s2 );
setScaleKey( spep_0 -3 + 160, 1, 1.46 +s2, 1.46 +s2 );
setScaleKey( spep_0 -3 + 162, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 166, 1, 1.45 +s2, 1.45 +s2 );
setScaleKey( spep_0 -3 + 168, 1, 1.44 +s2, 1.44 +s2 );
setScaleKey( spep_0 -3 + 172, 1, 1.44 +s2, 1.44 +s2 );
setScaleKey( spep_0 -3 + 174, 1, 1.43 +s2, 1.43 +s2 );
setScaleKey( spep_0 -3 + 198, 1, 1.43 +s2, 1.43 +s2 );
setScaleKey( spep_0 -3 + 200, 1, 1.75 +s2, 1.75 +s2 );
setScaleKey( spep_0 -3 + 202, 1, 1.91 +s2, 1.91 +s2 );
setScaleKey( spep_0 -3 + 204, 1, 2.03 +s2, 2.03 +s2 );
setScaleKey( spep_0 -3 + 206, 1, 2.13 +s2, 2.13 +s2 );
setScaleKey( spep_0 -3 + 208, 1, 2.22 +s2, 2.22 +s2 );
setScaleKey( spep_0 -3 + 210, 1, 2.3 +s2, 2.3 +s2 );
setScaleKey( spep_0 -3 + 212, 1, 2.37 +s2, 2.37 +s2 );
setScaleKey( spep_0 -3 + 214, 1, 2.43 +s2, 2.43 +s2 );
setScaleKey( spep_0 -3 + 216, 1, 2.48 +s2, 2.48 +s2 );
setScaleKey( spep_0 -3 + 218, 1, 2.52 +s2, 2.52 +s2 );

setRotateKey( spep_0 -3 + 218, 1, 0 );

-- ** 音 ** --
--体向き変える
SE001 = playSe( spep_0 + 34, 1004 );
setSeVolumeByWorkId( spep_0 + 34, SE001, 71 );
setPitch( spep_0 + 34, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );

--体向き変える
SE002 = playSe( spep_0 + 38, 8 );

--鉄骨浮き上がる
SE003 = playSe( spep_0 + 92, 1014 );

--鉄骨浮き上がる
SE004 = playSe( spep_0 + 92, 1044 );
stopSe( spep_0 + 192, SE004, 48 );

--顔カットイン
SE005 = playSe( spep_0 + 120, 1018 );

--画面遷移
SE006 = playSe( spep_0 + 172, 1072 );

--鉄骨敵にぶつかっていく
SE007 = playSe( spep_0 + 210, 1116 );
stopSe( spep_0 +216 + 20, SE007, 12 );

-- ** 白フェード ** --
entryFade( spep_0 + 196, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 216;


------------------------------------------------------
-- 張り付く鉄骨(76F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
tmove_f = entryEffectLife( spep_1 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --張り付く鉄骨（手前）	ef_002
setEffMoveKey( spep_1 + 0, tmove_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, tmove_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tmove_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, tmove_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tmove_f, 0 );
setEffRotateKey( spep_1 + 76, tmove_f, 0 );
setEffAlphaKey( spep_1 + 0, tmove_f, 255 );
setEffAlphaKey( spep_1 + 76 -1, tmove_f, 255 );
setEffAlphaKey( spep_1 + 76, tmove_f, 0 );

tmove_b = entryEffectLife( spep_1 + 0, SP_06, 76, 0x80, -1, 0, 0, 0 );  --張り付く鉄骨（奥）背景込み	ef_006
setEffMoveKey( spep_1 + 0, tmove_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, tmove_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tmove_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, tmove_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tmove_b, 0 );
setEffRotateKey( spep_1 + 76, tmove_b, 0 );
setEffAlphaKey( spep_1 + 0, tmove_b, 255 );
setEffAlphaKey( spep_1 + 76 -1, tmove_b, 255 );
setEffAlphaKey( spep_1 + 76, tmove_b, 0 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_1 -3 + 20,  10018, 14, 0x100, -1, 0, -2.4, 86 );	--ドゴォンッ
setEffMoveKey( spep_1 -3 + 20, ctdogon, -2.4, 86 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctdogon, -24.5, 158.5 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctdogon, -31.4, 229.2 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctdogon, -39.7, 251.1 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctdogon, -28.8, 260.2 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctdogon, -39.2, 274.5 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctdogon, -34.1, 281.3 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctdogon, -34.1, 281.3 , 0 );
setEffScaleKey( spep_1 -3 + 20, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_1 -3 + 22, ctdogon, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 24, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_1 -3 + 34, ctdogon, 2.25, 2.25 );
setEffRotateKey( spep_1 -3 + 20, ctdogon, -30 );
setEffRotateKey( spep_1 -3 + 22, ctdogon, -29.9 );
setEffRotateKey( spep_1 -3 + 24, ctdogon, -29.8 );
setEffRotateKey( spep_1 -3 + 34, ctdogon, -29.8 );
setEffAlphaKey( spep_1 -3 + 20, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 30, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 32, ctdogon, 128 );
setEffAlphaKey( spep_1 -3 + 34, ctdogon, 0 );

ctzudodo = entryEffectLife( spep_1 -3 + 40,  10014, 38, 0x100, -1, 0, 33.3, 287.5 );	--ズドドドッ
setEffMoveKey( spep_1 -3 + 40, ctzudodo, 33.3, 287.5 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctzudodo, 29, 306.4 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctzudodo, 36.8, 297.5 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctzudodo, 32.3, 316.7 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctzudodo, 40.2, 307.5 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctzudodo, 35.6, 327 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctzudodo, 43.6, 317.4 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctzudodo, 38.9, 337.2 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctzudodo, 47, 327.4 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctzudodo, 42.2, 347.5 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctzudodo, 50.4, 337.4 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctzudodo, 45.5, 357.8 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctzudodo, 53.8, 347.4 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctzudodo, 48.7, 368.1 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctzudodo, 57.2, 357.4 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctzudodo, 52, 378.3 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctzudodo, 60.6, 367.4 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctzudodo, 55.3, 388.6 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctzudodo, 64.1, 377.4 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctzudodo, 65.8, 382.4 , 0 );
setEffScaleKey( spep_1 -3 + 40, ctzudodo, 2.09, 2.09 );
setEffScaleKey( spep_1 -3 + 42, ctzudodo, 2.11, 2.11 );
setEffScaleKey( spep_1 -3 + 44, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 46, ctzudodo, 2.15, 2.15 );
setEffScaleKey( spep_1 -3 + 48, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 50, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_1 -3 + 52, ctzudodo, 2.22, 2.22 );
setEffScaleKey( spep_1 -3 + 54, ctzudodo, 2.24, 2.24 );
setEffScaleKey( spep_1 -3 + 56, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1 -3 + 58, ctzudodo, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 60, ctzudodo, 2.3, 2.3 );
setEffScaleKey( spep_1 -3 + 62, ctzudodo, 2.32, 2.32 );
setEffScaleKey( spep_1 -3 + 64, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_1 -3 + 66, ctzudodo, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 68, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_1 -3 + 70, ctzudodo, 2.41, 2.41 );
setEffScaleKey( spep_1 -3 + 72, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_1 -3 + 74, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_1 -3 + 76, ctzudodo, 2.48, 2.48 );
setEffScaleKey( spep_1 -3 + 78, ctzudodo, 2.5, 2.5 );
setEffRotateKey( spep_1 -3 + 40, ctzudodo, -63.2 );
setEffRotateKey( spep_1 -3 + 78, ctzudodo, -63.2 );
setEffAlphaKey( spep_1 -3 + 40, ctzudodo, 255 );
setEffAlphaKey( spep_1 -3 + 78, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );--
setDisp( spep_1 -3 + 79, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 40, 1, 106 );

setMoveKey( spep_1 + 0, 1, 18.5, 8.7 , 0 );
setMoveKey( spep_1 + 1, 1, 18.7, 9.1 , 0 );
setMoveKey( spep_1 + 2, 1, 19.2, 9.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 19.9, 11.3 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 21, 13.2 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 22.4, 15.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 24, 18.7 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 26, 22.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 28.2, 26.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 30.6, 30.5 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 33.2, 25.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 42.4, 69.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 45.5, 45.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 48.8, 70 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 52.2, 65.6 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 55.8, 77.6 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 59.4, 75.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 63.2, 89.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 67, 88.8 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 70.8, 116.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 74.8, 88.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 78.7, 117.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 82.5, 109.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 86.2, 129.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 89.9, 125.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 93.4, 142.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 96.8, 139.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 100, 154.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 103.1, 149.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 106, 164.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 108.7, 160.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 111.2, 174.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 113.4, 167.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 115.4, 181.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 117.2, 175.8 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 118.8, 188.4 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 120, 179.9 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 121.1, 192 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 121.8, 184.1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 122.3, 195.5 , 0 );
setMoveKey( spep_1 -3 + 79, 1, 122.3, 195.5 , 0 );

s3 = 0.1;
s4 = 0.2;
setScaleKey( spep_1 + 0, 1, 1.35 +s3, 1.35 +s3 );
setScaleKey( spep_1 -3 + 21, 1, 1.35 +s3, 1.35 +s3 );
setScaleKey( spep_1 -3 + 22, 1, 1.35 +s4, 1.35 +s4 );
setScaleKey( spep_1 -3 + 39, 1, 1.35 +s4, 1.35 +s4 );
setScaleKey( spep_1 -3 + 40, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 79, 1, 1.35, 1.35 );

setRotateKey( spep_1 + 0, 1, -12.6 );
setRotateKey( spep_1 -3 + 21, 1, -12.6 );
setRotateKey( spep_1 -3 + 22, 1, -3.4 );
setRotateKey( spep_1 -3 + 24, 1, -3.4 );
setRotateKey( spep_1 -3 + 26, 1, -3.3 );
setRotateKey( spep_1 -3 + 39, 1, -3.3 );
setRotateKey( spep_1 -3 + 40, 1, -21.1 );
setRotateKey( spep_1 -3 + 79, 1, -21.1 );

-- ** 音 ** --
--鉄骨敵にぶつかっていく
SE008 = playSe( spep_1 + 12, 1033,"",0.5 );
stopSe( spep_1 + 24, SE008, 10 );

--鉄骨敵にぶつかっていく
SE009 = playSe( spep_1 + 20, 1010,"",0.5 );
setSeVolumeByWorkId( spep_1 + 20, SE009, 70 );

--鉄骨敵にぶつかっていく
SE010 = playSe( spep_1 + 20, 1033,"",0.5 );
setSeVolumeByWorkId( spep_1 + 20, SE010, 93 );
stopSe( spep_1 + 36, SE010, 8 );

--鉄骨敵にぶつかっていく
SE011 = playSe( spep_1 + 20, 1011,"",0.5 );

--鉄骨敵にぶつかっていく
SE012 = playSe( spep_1 + 28, 1033,"",0.5 );
setSeVolumeByWorkId( spep_1 + 28, SE012, 108 );
stopSe( spep_1 + 44, SE012, 6 );

--鉄骨敵にぶつかっていく
SE013 = playSe( spep_1 + 36, 1033,"",0.5 );
setSeVolumeByWorkId( spep_1 + 36, SE013, 111 );
stopSe( spep_1 + 52, SE013, 6 );

--鉄骨敵にぶつかっていく
SE014 = playSe( spep_1 + 48, 1033,"",0.5 );
setSeVolumeByWorkId( spep_1 + 48, SE014, 105 );
stopSe( spep_1 + 58, SE014, 12 );

--鉄骨敵にぶつかっていく
SE015 = playSe( spep_1 + 56, 1009,"",0.5 );
setSeVolumeByWorkId( spep_1 + 56, SE015, 83 );

--鉄骨敵にぶつかっていく
SE016 = playSe( spep_1 + 56, 1033,"",0.5 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;


------------------------------------------------------
-- 鉄骨　球になる(146F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
tround = entryEffectLife( spep_2 + 0, SP_03, 146, 0x100, -1, 0, 0, 0 );  --鉄骨　球になる	ef_003
setEffMoveKey( spep_2 + 0, tround, 0, 0 , 0 );
setEffMoveKey( spep_2 + 146, tround, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tround, 1.0, 1.0 );
setEffScaleKey( spep_2 + 146, tround, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tround, 0 );
setEffRotateKey( spep_2 + 146, tround, 0 );
setEffAlphaKey( spep_2 + 0, tround, 255 );
setEffAlphaKey( spep_2 + 146 -1, tround, 255 );
setEffAlphaKey( spep_2 + 146, tround, 0 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_2 + 0,  10017, 145, 0x100, -1, 0, 86.9, 257.6 );	--ドガガガッ
setEffMoveKey( spep_2 + 0, ctdogaga, 86.9, 257.6 , 0 );
setEffMoveKey( spep_2 + 1, ctdogaga, 87.8, 311.9 , 0 );
setEffMoveKey( spep_2 + 2, ctdogaga, 105, 356.3 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctdogaga, 92.2, 355.3 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctdogaga, 99.3, 364.8 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctdogaga, 100.8, 351.7 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctdogaga, 96.1, 367.1 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctdogaga, 102.9, 357.6 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctdogaga, 95.6, 362 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctdogaga, 101.5, 356.8 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctdogaga, 102.2, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctdogaga, 102.1, 357.3 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctdogaga, 98.5, 367.1 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctdogaga, 101.9, 361 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctdogaga, 98.9, 366.4 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctdogaga, 104.8, 362 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctdogaga, 98.4, 373.2 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctdogaga, 113.9, 365.1 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctdogaga, 100.3, 364 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctdogaga, 107.8, 374 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctdogaga, 109.3, 360 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctdogaga, 104.2, 376.4 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogaga, 111.5, 366.2 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogaga, 103.7, 370.9 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdogaga, 110, 365.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdogaga, 110.6, 374.5 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdogaga, 110.5, 365.8 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdogaga, 106.6, 376.2 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdogaga, 110.2, 369.6 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctdogaga, 107, 375.3 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctdogaga, 113.2, 370.6 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctdogaga, 106.4, 382.5 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctdogaga, 122.9, 373.8 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctdogaga, 108.3, 372.6 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctdogaga, 116.2, 383.3 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctdogaga, 117.8, 368.2 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctdogaga, 112.4, 385.7 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctdogaga, 120.1, 374.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctdogaga, 111.8, 379.8 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctdogaga, 118.4, 373.8 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctdogaga, 119, 383.5 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctdogaga, 118.9, 374.2 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctdogaga, 114.7, 385.2 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctdogaga, 112.8, 390 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctdogaga, 130, 380.8 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctdogaga, 114.7, 379.5 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctdogaga, 123, 390.6 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctdogaga, 124.6, 374.9 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctdogaga, 118.9, 393.1 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctdogaga, 127, 381.7 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctdogaga, 118.2, 386.9 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctdogaga, 125.1, 380.6 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctdogaga, 125.7, 390.7 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctdogaga, 125.6, 381 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctdogaga, 121.2, 392.5 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctdogaga, 125.1, 385.1 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdogaga, 121.5, 391.4 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdogaga, 128.4, 386 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctdogaga, 125.5, 389.7 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctdogaga, 113.6, 391.9 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctdogaga, 135.3, 390.1 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctdogaga, 122.3, 401.1 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctdogaga, 140.7, 391.2 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctdogaga, 124.3, 389.8 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctdogaga, 135.6, 390.4 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctdogaga, 129.9, 405.2 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctdogaga, 141, 407.6 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctdogaga, 145.4, 428.2 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctdogaga, 148.9, 426.5 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctdogaga, 147.4, 448.9 , 0 );
setEffMoveKey( spep_2 -3 + 140, ctdogaga, 155.7, 449.6 , 0 );
setEffMoveKey( spep_2 -3 + 142, ctdogaga, 154.9, 466.4 , 0 );
setEffMoveKey( spep_2 -3 + 144, ctdogaga, 166.7, 469.2 , 0 );
setEffMoveKey( spep_2 -3 + 146, ctdogaga, 166.9, 482.8 , 0 );
setEffMoveKey( spep_2 -3 + 148, ctdogaga, 181.8, 492 , 0 );

setEffScaleKey( spep_2 + 0, ctdogaga, 0.5, 0.5 );
setEffScaleKey( spep_2 + 1, ctdogaga, 1.36, 1.36 );
setEffScaleKey( spep_2 + 2, ctdogaga, 2.23, 2.23 );
setEffScaleKey( spep_2 -3 + 6, ctdogaga, 2.24, 2.24 );
setEffScaleKey( spep_2 -3 + 8, ctdogaga, 2.25, 2.25 );
setEffScaleKey( spep_2 -3 + 10, ctdogaga, 2.26, 2.26 );
setEffScaleKey( spep_2 -3 + 12, ctdogaga, 2.27, 2.27 );
setEffScaleKey( spep_2 -3 + 14, ctdogaga, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 + 16, ctdogaga, 2.29, 2.29 );
setEffScaleKey( spep_2 -3 + 18, ctdogaga, 2.3, 2.3 );
setEffScaleKey( spep_2 -3 + 20, ctdogaga, 2.31, 2.31 );
setEffScaleKey( spep_2 -3 + 22, ctdogaga, 2.32, 2.32 );
setEffScaleKey( spep_2 -3 + 24, ctdogaga, 2.33, 2.33 );
setEffScaleKey( spep_2 -3 + 26, ctdogaga, 2.34, 2.34 );
setEffScaleKey( spep_2 -3 + 28, ctdogaga, 2.35, 2.35 );
setEffScaleKey( spep_2 -3 + 30, ctdogaga, 2.36, 2.36 );
setEffScaleKey( spep_2 -3 + 32, ctdogaga, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 34, ctdogaga, 2.38, 2.38 );
setEffScaleKey( spep_2 -3 + 36, ctdogaga, 2.39, 2.39 );
setEffScaleKey( spep_2 -3 + 38, ctdogaga, 2.4, 2.4 );
setEffScaleKey( spep_2 -3 + 40, ctdogaga, 2.41, 2.41 );
setEffScaleKey( spep_2 -3 + 42, ctdogaga, 2.42, 2.42 );
setEffScaleKey( spep_2 -3 + 44, ctdogaga, 2.43, 2.43 );
setEffScaleKey( spep_2 -3 + 46, ctdogaga, 2.44, 2.44 );
setEffScaleKey( spep_2 -3 + 48, ctdogaga, 2.45, 2.45 );
setEffScaleKey( spep_2 -3 + 50, ctdogaga, 2.46, 2.46 );
setEffScaleKey( spep_2 -3 + 52, ctdogaga, 2.47, 2.47 );
setEffScaleKey( spep_2 -3 + 54, ctdogaga, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 56, ctdogaga, 2.49, 2.49 );
setEffScaleKey( spep_2 -3 + 58, ctdogaga, 2.5, 2.5 );
setEffScaleKey( spep_2 -3 + 60, ctdogaga, 2.52, 2.52 );
setEffScaleKey( spep_2 -3 + 62, ctdogaga, 2.53, 2.53 );
setEffScaleKey( spep_2 -3 + 64, ctdogaga, 2.54, 2.54 );
setEffScaleKey( spep_2 -3 + 66, ctdogaga, 2.55, 2.55 );
setEffScaleKey( spep_2 -3 + 68, ctdogaga, 2.56, 2.56 );
setEffScaleKey( spep_2 -3 + 70, ctdogaga, 2.57, 2.57 );
setEffScaleKey( spep_2 -3 + 72, ctdogaga, 2.58, 2.58 );
setEffScaleKey( spep_2 -3 + 74, ctdogaga, 2.59, 2.59 );
setEffScaleKey( spep_2 -3 + 76, ctdogaga, 2.6, 2.6 );
setEffScaleKey( spep_2 -3 + 78, ctdogaga, 2.61, 2.61 );
setEffScaleKey( spep_2 -3 + 80, ctdogaga, 2.62, 2.62 );
setEffScaleKey( spep_2 -3 + 82, ctdogaga, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 84, ctdogaga, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 86, ctdogaga, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 88, ctdogaga, 2.66, 2.66 );
setEffScaleKey( spep_2 -3 + 90, ctdogaga, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 92, ctdogaga, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 94, ctdogaga, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 96, ctdogaga, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 98, ctdogaga, 2.71, 2.71 );
setEffScaleKey( spep_2 -3 + 100, ctdogaga, 2.72, 2.72 );
setEffScaleKey( spep_2 -3 + 102, ctdogaga, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 104, ctdogaga, 2.74, 2.74 );
setEffScaleKey( spep_2 -3 + 106, ctdogaga, 2.75, 2.75 );
setEffScaleKey( spep_2 -3 + 108, ctdogaga, 2.76, 2.76 );
setEffScaleKey( spep_2 -3 + 110, ctdogaga, 2.77, 2.77 );
setEffScaleKey( spep_2 -3 + 112, ctdogaga, 2.78, 2.78 );
setEffScaleKey( spep_2 -3 + 114, ctdogaga, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 116, ctdogaga, 2.8, 2.8 );
setEffScaleKey( spep_2 -3 + 118, ctdogaga, 2.81, 2.81 );
setEffScaleKey( spep_2 -3 + 120, ctdogaga, 2.82, 2.82 );
setEffScaleKey( spep_2 -3 + 122, ctdogaga, 2.83, 2.83 );
setEffScaleKey( spep_2 -3 + 124, ctdogaga, 2.84, 2.84 );
setEffScaleKey( spep_2 -3 + 126, ctdogaga, 2.85, 2.85 );
setEffScaleKey( spep_2 -3 + 128, ctdogaga, 2.86, 2.86 );
setEffScaleKey( spep_2 -3 + 130, ctdogaga, 2.93, 2.93 );
setEffScaleKey( spep_2 -3 + 132, ctdogaga, 2.99, 2.99 );
setEffScaleKey( spep_2 -3 + 134, ctdogaga, 3.05, 3.05 );
setEffScaleKey( spep_2 -3 + 136, ctdogaga, 3.12, 3.12 );
setEffScaleKey( spep_2 -3 + 138, ctdogaga, 3.18, 3.18 );
setEffScaleKey( spep_2 -3 + 140, ctdogaga, 3.24, 3.24 );
setEffScaleKey( spep_2 -3 + 142, ctdogaga, 3.31, 3.31 );
setEffScaleKey( spep_2 -3 + 144, ctdogaga, 3.37, 3.37 );
setEffScaleKey( spep_2 -3 + 146, ctdogaga, 3.44, 3.44 );
setEffScaleKey( spep_2 -3 + 148, ctdogaga, 3.5, 3.5 );

setEffRotateKey( spep_2 + 0, ctdogaga, 10.8 );
setEffRotateKey( spep_2 -3 + 44, ctdogaga, 10.8 );
setEffRotateKey( spep_2 -3 + 46, ctdogaga, 10.9 );
setEffRotateKey( spep_2 -3 + 134, ctdogaga, 10.9 );
setEffRotateKey( spep_2 -3 + 136, ctdogaga, 10.8 );
setEffRotateKey( spep_2 -3 + 146, ctdogaga, 10.8 );
setEffRotateKey( spep_2 -3 + 148, ctdogaga, 10.7 );

setEffAlphaKey( spep_2 + 0, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 148, ctdogaga, 255 );

-- ** 音 ** --
--鉄骨集まってくる
SE017 = playSe( spep_2 + 2, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 2, SE017, 75 );
stopSe( spep_2 + 18, SE017, 6 );

--鉄骨集まってくる
SE018 = playSe( spep_2 + 4, 1117,"",0.5 );
stopSe( spep_2 + 26, SE018, 20 );

--鉄骨集まってくる
SE019 = playSe( spep_2 + 4, 1168,"",0.5 );
setSeVolumeByWorkId( spep_2 + 4, SE019, 65 );
stopSe( spep_2 +146 + 8, SE019, 0 );

--鉄骨集まってくる
SE020 = playSe( spep_2 + 14, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 14, SE020, 86 );
stopSe( spep_2 + 28, SE020, 12 );

--鉄骨集まってくる
SE021 = playSe( spep_2 + 16, 1117,"",0.5 );
setSeVolumeByWorkId( spep_2 + 16, SE021, 85 );
stopSe( spep_2 + 34, SE021, 14 );

--鉄骨集まってくる
SE022 = playSe( spep_2 + 26, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 26, SE022, 79 );
stopSe( spep_2 + 30, SE022, 12 );

--鉄骨集まってくる
SE023 = playSe( spep_2 + 32, 1117,"",0.5 );
stopSe( spep_2 + 54, SE023, 14 );

--鉄骨集まってくる
SE024 = playSe( spep_2 + 40, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 40, SE024, 79 );
stopSe( spep_2 + 52, SE024, 12 );

--鉄骨集まってくる
SE025 = playSe( spep_2 + 48, 1117,"",0.5 );
setSeVolumeByWorkId( spep_2 + 48, SE025, 94 );
stopSe( spep_2 + 70, SE025, 12 );

--鉄骨集まってくる
SE026 = playSe( spep_2 + 50, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 50, SE026, 65 );
stopSe( spep_2 + 62, SE026, 10 );

--鉄骨集まってくる
SE027 = playSe( spep_2 + 62, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 62, SE027, 61 );
stopSe( spep_2 + 74, SE027, 10 );

--鉄骨集まってくる
SE028 = playSe( spep_2 + 62, 1117,"",0.5 );
setSeVolumeByWorkId( spep_2 + 62, SE028, 79 );
stopSe( spep_2 + 82, SE028, 14 );

--鉄骨集まってくる
SE029 = playSe( spep_2 + 74, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 74, SE029, 79 );
stopSe( spep_2 + 88, SE029, 8 );

--鉄骨集まってくる
SE030 = playSe( spep_2 + 78, 1117,"",0.5 );
stopSe( spep_2 + 100, SE030, 12 );

--鉄骨集まってくる
SE031 = playSe( spep_2 + 88, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 88, SE031, 63 );
stopSe( spep_2 + 100, SE031, 16 );

--鉄骨集まってくる
SE032 = playSe( spep_2 + 92, 1117,"",0.5 );
setSeVolumeByWorkId( spep_2 + 92, SE032, 85 );
stopSe( spep_2 +146 + 8, SE032, 0 );

--鉄骨集まってくる
SE033 = playSe( spep_2 + 102, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 102, SE033, 72 );
stopSe( spep_2 + 118, SE033, 10 );

--鉄骨集まってくる
SE034 = playSe( spep_2 + 118, 1055,"",0.5 );
setSeVolumeByWorkId( spep_2 + 118, SE034, 83 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_2 + 126, 20, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 146;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_3 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--メタルリルド下から出現
SE036 = playSe( spep_3 + 92, 1195 );
setSeVolumeByWorkId( spep_3 + 92, SE036, 0 );
setSeVolumeByWorkId( spep_3 + 93, SE036, 15 );
setSeVolumeByWorkId( spep_3 + 94, SE036, 30 );
setSeVolumeByWorkId( spep_3 + 95, SE036, 45 );
setSeVolumeByWorkId( spep_3 + 96, SE036, 60 );
setSeVolumeByWorkId( spep_3 + 97, SE036, 80 );
setSeVolumeByWorkId( spep_3 + 98, SE036, 100 );
setStartTimeMs( SE036,  550 );

--メタルリルド下から出現
SE038 = playSe( spep_3 + 92, 1246 );
stopSe( spep_3 +96 + 12, SE038, 4 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;


------------------------------------------------------
-- 球を突き刺すリルド(96F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tbreak_f = entryEffectLife( spep_4 + 0, SP_04, 96, 0x100, -1, 0, 0, 0 );  --球を突き刺すリルド	ef_004
setEffMoveKey( spep_4 + 0, tbreak_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, tbreak_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tbreak_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, tbreak_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tbreak_f, 0 );
setEffRotateKey( spep_4 + 96, tbreak_f, 0 );
setEffAlphaKey( spep_4 + 0, tbreak_f, 255 );
setEffAlphaKey( spep_4 + 96 -1, tbreak_f, 255 );
setEffAlphaKey( spep_4 + 96, tbreak_f, 0 );

tbreak_b = entryEffectLife( spep_4 + 0, SP_07, 96, 0x80, -1, 0, 0, 0 );  --背景	ef_007
setEffMoveKey( spep_4 + 0, tbreak_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, tbreak_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tbreak_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, tbreak_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tbreak_b, 0 );
setEffRotateKey( spep_4 + 96, tbreak_b, 0 );
setEffAlphaKey( spep_4 + 0, tbreak_b, 255 );
setEffAlphaKey( spep_4 + 96 -1, tbreak_b, 255 );
setEffAlphaKey( spep_4 + 96, tbreak_b, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 14,  10058, 12, 0x100, -1, 0, -88.8, -401 );	--ズオッ
setEffMoveKey( spep_4 -3 + 14, ctzuo, -88.8, -401 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, -84, -374.2 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, -87.7, -373.3 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, -97.9, -347.1 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, -101.7, -346.2 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, -112, -320 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, -118.7, -306.3 , 0 );
setEffScaleKey( spep_4 -3 + 14, ctzuo, 0.91, 0.91 );
setEffScaleKey( spep_4 -3 + 16, ctzuo, 1.59, 1.59 );
setEffScaleKey( spep_4 -3 + 26, ctzuo, 1.59, 1.59 );
setEffRotateKey( spep_4 -3 + 14, ctzuo, -10.3 );
setEffRotateKey( spep_4 -3 + 26, ctzuo, -10.3 );
setEffAlphaKey( spep_4 -3 + 14, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 16, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 22, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 24, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 26, ctzuo, 0 );

ctgyuuu = entryEffectLife( spep_4 -3 + 36,  10042, 62, 0x100, -1, 0, -78.6, -397.7 );	--ギュウウッ
setEffMoveKey( spep_4 -3 + 36, ctgyuuu, -78.6, -397.7 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctgyuuu, -61.7, -387 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctgyuuu, -58.7, -351.3 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctgyuuu, -48.8, -328 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctgyuuu, -37.3, -347.7 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctgyuuu, -50.3, -323.7 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctgyuuu, -38.7, -343.6 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctgyuuu, -51.9, -319.4 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctgyuuu, -40.2, -339.4 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctgyuuu, -53.4, -315 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctgyuuu, -41.6, -335.3 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctgyuuu, -54.9, -310.7 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctgyuuu, -43, -331.2 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctgyuuu, -56.5, -306.4 , 0 );
setEffMoveKey( spep_4 -3 + 64, ctgyuuu, -44.4, -327.1 , 0 );
setEffMoveKey( spep_4 -3 + 66, ctgyuuu, -58, -302 , 0 );
setEffMoveKey( spep_4 -3 + 68, ctgyuuu, -45.8, -322.9 , 0 );
setEffMoveKey( spep_4 -3 + 70, ctgyuuu, -59.6, -297.7 , 0 );
setEffMoveKey( spep_4 -3 + 72, ctgyuuu, -47.2, -318.8 , 0 );
setEffMoveKey( spep_4 -3 + 74, ctgyuuu, -61.1, -293.3 , 0 );
setEffMoveKey( spep_4 -3 + 76, ctgyuuu, -48.7, -314.7 , 0 );
setEffMoveKey( spep_4 -3 + 78, ctgyuuu, -62.6, -289 , 0 );
setEffMoveKey( spep_4 -3 + 80, ctgyuuu, -50.1, -310.6 , 0 );
setEffMoveKey( spep_4 -3 + 82, ctgyuuu, -64.2, -284.7 , 0 );
setEffMoveKey( spep_4 -3 + 84, ctgyuuu, -51.5, -306.5 , 0 );
setEffMoveKey( spep_4 -3 + 86, ctgyuuu, -65.7, -280.3 , 0 );
setEffMoveKey( spep_4 -3 + 88, ctgyuuu, -52.9, -302.3 , 0 );
setEffMoveKey( spep_4 -3 + 90, ctgyuuu, -67.3, -276 , 0 );
setEffMoveKey( spep_4 -3 + 92, ctgyuuu, -54.3, -298.2 , 0 );
setEffMoveKey( spep_4 -3 + 94, ctgyuuu, -68.8, -271.7 , 0 );
setEffMoveKey( spep_4 -3 + 96, ctgyuuu, -55.8, -294.1 , 0 );
setEffMoveKey( spep_4 -3 + 98, ctgyuuu, -56.5, -292 , 0 );
setEffScaleKey( spep_4 -3 + 36, ctgyuuu, 0.59, 0.59 );
setEffScaleKey( spep_4 -3 + 38, ctgyuuu, 0.94, 0.94 );
setEffScaleKey( spep_4 -3 + 40, ctgyuuu, 1.29, 1.29 );
setEffScaleKey( spep_4 -3 + 42, ctgyuuu, 1.64, 1.64 );
setEffScaleKey( spep_4 -3 + 44, ctgyuuu, 1.65, 1.65 );
setEffScaleKey( spep_4 -3 + 46, ctgyuuu, 1.66, 1.66 );
setEffScaleKey( spep_4 -3 + 48, ctgyuuu, 1.66, 1.66 );
setEffScaleKey( spep_4 -3 + 50, ctgyuuu, 1.67, 1.67 );
setEffScaleKey( spep_4 -3 + 52, ctgyuuu, 1.68, 1.68 );
setEffScaleKey( spep_4 -3 + 54, ctgyuuu, 1.69, 1.69 );
setEffScaleKey( spep_4 -3 + 56, ctgyuuu, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 58, ctgyuuu, 1.7, 1.7 );
setEffScaleKey( spep_4 -3 + 60, ctgyuuu, 1.71, 1.71 );
setEffScaleKey( spep_4 -3 + 62, ctgyuuu, 1.72, 1.72 );
setEffScaleKey( spep_4 -3 + 64, ctgyuuu, 1.73, 1.73 );
setEffScaleKey( spep_4 -3 + 66, ctgyuuu, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 68, ctgyuuu, 1.74, 1.74 );
setEffScaleKey( spep_4 -3 + 70, ctgyuuu, 1.75, 1.75 );
setEffScaleKey( spep_4 -3 + 72, ctgyuuu, 1.76, 1.76 );
setEffScaleKey( spep_4 -3 + 74, ctgyuuu, 1.77, 1.77 );
setEffScaleKey( spep_4 -3 + 76, ctgyuuu, 1.77, 1.78 );
setEffScaleKey( spep_4 -3 + 78, ctgyuuu, 1.78, 1.78 );
setEffScaleKey( spep_4 -3 + 80, ctgyuuu, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 82, ctgyuuu, 1.8, 1.8 );
setEffScaleKey( spep_4 -3 + 84, ctgyuuu, 1.81, 1.81 );
setEffScaleKey( spep_4 -3 + 86, ctgyuuu, 1.81, 1.81 );
setEffScaleKey( spep_4 -3 + 88, ctgyuuu, 1.82, 1.82 );
setEffScaleKey( spep_4 -3 + 90, ctgyuuu, 1.83, 1.83 );
setEffScaleKey( spep_4 -3 + 92, ctgyuuu, 1.84, 1.84 );
setEffScaleKey( spep_4 -3 + 94, ctgyuuu, 1.85, 1.85 );
setEffScaleKey( spep_4 -3 + 96, ctgyuuu, 1.85, 1.85 );
setEffScaleKey( spep_4 -3 + 98, ctgyuuu, 1.86, 1.86 );
setEffRotateKey( spep_4 -3 + 36, ctgyuuu, -15.8 );
setEffRotateKey( spep_4 -3 + 98, ctgyuuu, -15.8 );
setEffAlphaKey( spep_4 -3 + 36, ctgyuuu, 64 );
setEffAlphaKey( spep_4 -3 + 38, ctgyuuu, 128 );
setEffAlphaKey( spep_4 -3 + 40, ctgyuuu, 191 );
setEffAlphaKey( spep_4 -3 + 42, ctgyuuu, 255 );
setEffAlphaKey( spep_4 -3 + 44, ctgyuuu, 246 );
setEffAlphaKey( spep_4 -3 + 46, ctgyuuu, 237 );
setEffAlphaKey( spep_4 -3 + 48, ctgyuuu, 228 );
setEffAlphaKey( spep_4 -3 + 50, ctgyuuu, 219 );
setEffAlphaKey( spep_4 -3 + 52, ctgyuuu, 209 );
setEffAlphaKey( spep_4 -3 + 54, ctgyuuu, 200 );
setEffAlphaKey( spep_4 -3 + 56, ctgyuuu, 191 );
setEffAlphaKey( spep_4 -3 + 58, ctgyuuu, 182 );
setEffAlphaKey( spep_4 -3 + 60, ctgyuuu, 173 );
setEffAlphaKey( spep_4 -3 + 62, ctgyuuu, 164 );
setEffAlphaKey( spep_4 -3 + 64, ctgyuuu, 155 );
setEffAlphaKey( spep_4 -3 + 66, ctgyuuu, 146 );
setEffAlphaKey( spep_4 -3 + 68, ctgyuuu, 137 );
setEffAlphaKey( spep_4 -3 + 70, ctgyuuu, 128 );
setEffAlphaKey( spep_4 -3 + 72, ctgyuuu, 118 );
setEffAlphaKey( spep_4 -3 + 74, ctgyuuu, 109 );
setEffAlphaKey( spep_4 -3 + 76, ctgyuuu, 100 );
setEffAlphaKey( spep_4 -3 + 78, ctgyuuu, 91 );
setEffAlphaKey( spep_4 -3 + 80, ctgyuuu, 82 );
setEffAlphaKey( spep_4 -3 + 82, ctgyuuu, 73 );
setEffAlphaKey( spep_4 -3 + 84, ctgyuuu, 64 );
setEffAlphaKey( spep_4 -3 + 86, ctgyuuu, 55 );
setEffAlphaKey( spep_4 -3 + 88, ctgyuuu, 46 );
setEffAlphaKey( spep_4 -3 + 90, ctgyuuu, 36 );
setEffAlphaKey( spep_4 -3 + 92, ctgyuuu, 27 );
setEffAlphaKey( spep_4 -3 + 94, ctgyuuu, 18 );
setEffAlphaKey( spep_4 -3 + 96, ctgyuuu, 9 );
setEffAlphaKey( spep_4 -3 + 98, ctgyuuu, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 -3 + 66, 1, 1 );
setDisp( spep_4 -3 + 98, 1, 0 );
changeAnime( spep_4 -3 + 66, 1, 108 );

setMoveKey( spep_4 -3 + 66, 1, -43.8, 155.4 , 0 );
setMoveKey( spep_4 -3 + 67, 1, -43.8, 155.4 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -28.5, 110.5 , 0 );
setMoveKey( spep_4 -3 + 69, 1, -28.5, 110.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 0.6, 82.9 , 0 );
setMoveKey( spep_4 -3 + 71, 1, 0.6, 82.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 45.5, -11.3 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 45.5, -11.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 109.7, -113.6 , 0 );
setMoveKey( spep_4 -3 + 75, 1, 109.7, -113.6 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 247.9, -309.3 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 247.9, -309.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 329.2, -453.5 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 329.2, -453.5 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 388.5, -543.8 , 0 );
setMoveKey( spep_4 -3 + 81, 1, 388.5, -543.8 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 443.4, -654.4 , 0 );
setMoveKey( spep_4 -3 + 83, 1, 443.4, -654.4 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 491.2, -730.2 , 0 );
setMoveKey( spep_4 -3 + 85, 1, 491.2, -730.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 531.2, -812.1 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 531.2, -812.1 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 563.3, -862.7 , 0 );
setMoveKey( spep_4 -3 + 89, 1, 563.3, -862.7 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 588, -918 , 0 );
setMoveKey( spep_4 -3 + 91, 1, 588, -918 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 606.1, -945.8 , 0 );
setMoveKey( spep_4 -3 + 93, 1, 606.1, -945.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 618.4, -979.1 , 0 );
setMoveKey( spep_4 -3 + 95, 1, 618.4, -979.1 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 625.5, -989.9 , 0 );
setMoveKey( spep_4 -3 + 97, 1, 625.5, -989.9 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 628.1, -1003.1 , 0 );

setScaleKey( spep_4 -3 + 66, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 72, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 73, 1, 0.5, 0.5 );
setScaleKey( spep_4 -3 + 74, 1, 0.49, 0.49 );
setScaleKey( spep_4 -3 + 75, 1, 0.49, 0.49 );
setScaleKey( spep_4 -3 + 76, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 77, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 78, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 79, 1, 0.47, 0.47 );
setScaleKey( spep_4 -3 + 80, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 81, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 82, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 83, 1, 0.46, 0.46 );
setScaleKey( spep_4 -3 + 84, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 85, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 86, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 87, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 88, 1, 0.44, 0.44 );
setScaleKey( spep_4 -3 + 98, 1, 0.44, 0.44 );

setRotateKey( spep_4 -3 + 66, 1, 54.7 );
setRotateKey( spep_4 -3 + 98, 1, 54.7 );

-- ** 音 ** --
--メタルリルド伸びて貫いていく
SE037 = playSe( spep_4 + 18, 1219,"",0.5 );
setSeVolumeByWorkId( spep_4 + 18, SE037, 0 );
setSeVolumeByWorkId( spep_4 + 20, SE037, 25 );
setSeVolumeByWorkId( spep_4 + 22, SE037, 50 );
setSeVolumeByWorkId( spep_4 + 24, SE037, 75 );
setSeVolumeByWorkId( spep_4 + 26, SE037, 100 );
stopSe( spep_4 +96 + 14, SE037, 22 );
setStartTimeMs( SE037,  667 );

--メタルリルド下から出現
SE039 = playSe( spep_4 + 4, 1291 );

--メタルリルド伸びて貫いていく
SE040 = playSe( spep_4 + 20, 1237,"",0.5 );
setSeVolumeByWorkId( spep_4 + 20, SE040, 0 );
setSeVolumeByWorkId( spep_4 + 21, SE040, 25 );
setSeVolumeByWorkId( spep_4 + 22, SE040, 50 );
setSeVolumeByWorkId( spep_4 + 23, SE040, 75 );
setSeVolumeByWorkId( spep_4 + 24, SE040, 100 );
setStartTimeMs( SE040,  250 );

--メタルリルド伸びて貫いていく
SE041 = playSe( spep_4 + 22, 1169 );
setSeVolumeByWorkId( spep_4 + 22, SE041, 89 );

--メタルリルド伸びて貫いていく
SE042 = playSe( spep_4 + 28, 1320,"",0.5 );
stopSe( spep_4 +96 + 32, SE042, 6 );

--敵ヒット
SE043 = playSe( spep_4 + 58, 1023 );
setSeVolumeByWorkId( spep_4 + 58, SE043, 92 );

--敵ヒット
SE044 = playSe( spep_4 + 60, 1011 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 61, 0, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;


------------------------------------------------------
-- 地面まで突き刺すリルド(116F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --地面まで突き刺すリルド	ef_005
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 120, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 120, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 );  --地面　背景	ef_008
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 120, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 120, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 120, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 120, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 +1 + 0, 1, 1 );
setDisp( spep_5 +1 + 22, 1, 0 );
changeAnime( spep_5 +1 + 0, 1, 5 );

a1 = 5;
b1 = 10;
setMoveKey( spep_5 +1 + 0, 1, -34.7 -a1, 322.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 1, 1, -34.7 -a1, 322.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 2, 1, 4.1 -a1, 250.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 3, 1, 4.1 -a1, 250.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 4, 1, 87.1 -a1, 96.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 5, 1, 87.1 -a1, 96.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 6, 1, 87 -a1 -a1, 78.6 -b1 , 0 );
setMoveKey( spep_5 +1 + 7, 1, 87 -a1 -a1, 78.6 -b1 , 0 );
setMoveKey( spep_5 +1 + 8, 1, 81.8 -a1, 53.7 -b1 , 0 );
setMoveKey( spep_5 +1 + 9, 1, 81.8 -a1, 53.7 -b1 , 0 );
setMoveKey( spep_5 +1 + 10, 1, 84.3 -a1, 22.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 11, 1, 84.3 -a1, 22.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 12, 1, 87.3 -a1, -16.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 13, 1, 87.3 -a1, -16.3 -b1 , 0 );
setMoveKey( spep_5 +1 + 14, 1, 90.6 -a1, -58.2 -b1 , 0 );
setMoveKey( spep_5 +1 + 15, 1, 90.6 -a1, -58.2 -b1 , 0 );
setMoveKey( spep_5 +1 + 16, 1, 92.2 -a1, -109.9 -b1 , 0 );
setMoveKey( spep_5 +1 + 17, 1, 92.2 -a1, -109.9 -b1 , 0 );
setMoveKey( spep_5 +1 + 18, 1, 82.6 -a1, -132.7 -b1 , 0 );
setMoveKey( spep_5 +1 + 19, 1, 82.6 -a1, -132.7 -b1 , 0 );
setMoveKey( spep_5 +1 + 20, 1, 76.1 -a1, -160.8 -b1 , 0 );
setMoveKey( spep_5 +1 + 21, 1, 76.1 -a1, -160.8 -b1 , 0 );
setMoveKey( spep_5 +1 + 22, 1, 76.1 -a1, -160.8 -b1 , 0 );

s5 = 0;
setScaleKey( spep_5 +1 + 0, 1, 1.5 +s5, 1.5 +s5 );
setScaleKey( spep_5 +1 + 1, 1, 1.5 +s5, 1.5 +s5 );
setScaleKey( spep_5 +1 + 2, 1, 1.39 +s5, 1.39 +s5 );
setScaleKey( spep_5 +1 + 3, 1, 1.39 +s5, 1.39 +s5 );
setScaleKey( spep_5 +1 + 4, 1, 1.17 +s5, 1.17 +s5 );
setScaleKey( spep_5 +1 + 5, 1, 1.17 +s5, 1.17 +s5 );
setScaleKey( spep_5 +1 + 6, 1, 0.98 +s5, 0.98 +s5 );
setScaleKey( spep_5 +1 + 7, 1, 0.98 +s5, 0.98 +s5 );
setScaleKey( spep_5 +1 + 8, 1, 0.89 +s5, 0.89 +s5 );
setScaleKey( spep_5 +1 + 9, 1, 0.89 +s5, 0.89 +s5 );
setScaleKey( spep_5 +1 + 10, 1, 0.79 +s5, 0.79 +s5 );
setScaleKey( spep_5 +1 + 11, 1, 0.79 +s5, 0.79 +s5 );
setScaleKey( spep_5 +1 + 12, 1, 0.66 +s5, 0.66 +s5 );
setScaleKey( spep_5 +1 + 13, 1, 0.66 +s5, 0.66 +s5 );
setScaleKey( spep_5 +1 + 14, 1, 0.52 +s5, 0.52 +s5 );
setScaleKey( spep_5 +1 + 15, 1, 0.52 +s5, 0.52 +s5 );
setScaleKey( spep_5 +1 + 16, 1, 0.39 +s5, 0.39 +s5 );
setScaleKey( spep_5 +1 + 17, 1, 0.39 +s5, 0.39 +s5 );
setScaleKey( spep_5 +1 + 18, 1, 0.27 +s5, 0.27 +s5 );
setScaleKey( spep_5 +1 + 19, 1, 0.27 +s5, 0.27 +s5 );
setScaleKey( spep_5 +1 + 20, 1, 0.2 +s5, 0.2 +s5 );
setScaleKey( spep_5 +1 + 21, 1, 0.2 +s5, 0.2 +s5 );
setScaleKey( spep_5 +1 + 22, 1, 0.2 +s5, 0.2 +s5 );

setRotateKey( spep_5 +1 + 0, 1, 43.9 );
setRotateKey( spep_5 +1 + 22, 1, 43.9 );

-- ** 音 ** --
--地面爆発
SE045 = playSe( spep_5 + 20, 1024 );
setSeVolumeByWorkId( spep_5 + 20, SE045, 78 );

--地面爆発
SE046 = playSe( spep_5 + 20, 1159 );
setSeVolumeByWorkId( spep_5 + 20, SE046, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 0, 5, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 110 );

end