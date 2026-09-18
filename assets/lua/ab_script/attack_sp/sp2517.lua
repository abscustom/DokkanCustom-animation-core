--1026130:LR孫悟飯(幼年期)_一刀両断
--sp_effect_b2_00053
--sp2517

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
SP_01 = 161549; --冒頭ダッシュ ef_001
SP_02 = 161550; --格闘：敵より前 ef_002a
SP_03 = 161552; --格闘：敵より後 ef_002b
SP_04 = 161553; --頭突き：敵より前 ef_003a
SP_05 = 161555; --頭突き：敵より後 ef_003b
SP_06 = 161556; --剣構え ef_004
SP_07 = 161558; --ジャンプ ef_005
SP_08 = 161559; --斬りかかる：敵より前 ef_006a
SP_09 = 161560; --斬りかかる：敵より後 ef_006b
SP_10 = 161561; --フィニッシュ：敵より前 ef_007a
SP_11 = 161562; --フィニッシュ：敵より後 ef_007b

--敵側
SP_02r = 161551; --格闘：敵より前 ef_002a_r
SP_04r = 161554; --頭突き：敵より前 ef_003a_r
SP_06r = 161557; --剣構え ef_004_r

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
-- 冒頭ダッシュ(154F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭ダッシュ ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 154, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 154, first_f, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 154, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 154 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 154 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 154, first_f, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 20;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -150, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -150, 515.5 , 0 );
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

--顔カットイン
SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 66 );

--空力音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 168, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE003 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 168, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 35 );

--走ってくる
SE004 = playSeVer2( spep_0 + 6, 1377, "", 0, 0, 0, 0.5);
SE005 = playSeVer2( spep_0 + 10, 1108, "", 0, 0, 0, 0.6);
SE006 = playSeVer2( spep_0 + 24, 1108, "", 0, 0, 0, 0.6);
SE008 = playSeVer2( spep_0 + 36, 1377, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 36, SE008, 67 );
SE009 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, 0.6);
SE010 = playSeVer2( spep_0 + 54, 1108, "", 0, 0, 0, 0.6);
SE011 = playSeVer2( spep_0 + 60, 1377, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 60, SE011, 58 );
SE012 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, 0.6);
SE013 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, 0.6);
SE014 = playSeVer2( spep_0 + 92, 1108, "", 0, 0, 0, 0.6);
SE015 = playSeVer2( spep_0 + 106, 1108, "", 0, 0, 0, 0.6);
SE016 = playSeVer2( spep_0 + 120, 1108, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 154 + 2, 0, 0, 0, 0, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE016, 0);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--飛び上がる
SE017 = playSeVer2( spep_0 + 140, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE017, 61 );
SE018 = playSeVer2( spep_0 + 140, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 140, 1207, "",spep_0 + 226, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 140, SE019, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 154;

------------------------------------------------------
-- 格闘(74F)
------------------------------------------------------

-- ** エフェクト等 ** --
grappling_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --格闘：敵より前 ef_002a

setEffMoveKey( spep_1 + 0, grappling_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, grappling_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grappling_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 74, grappling_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grappling_f, 0 );
setEffRotateKey( spep_1 + 74, grappling_f, 0 );

setEffAlphaKey( spep_1 + 0, grappling_f, 255 );
setEffAlphaKey( spep_1 + 74 - 2, grappling_f, 255 );
setEffAlphaKey( spep_1 + 74 - 1, grappling_f, 255 );
setEffAlphaKey( spep_1 + 74, grappling_f, 0 );


grappling_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --格闘：敵より後 ef_002b

setEffMoveKey( spep_1 + 0, grappling_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, grappling_b, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grappling_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 74, grappling_b, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grappling_b, 0 );
setEffRotateKey( spep_1 + 74, grappling_b, 0 );

setEffAlphaKey( spep_1 + 0, grappling_b, 255 );
setEffAlphaKey( spep_1 + 74 - 2, grappling_b, 255 );
setEffAlphaKey( spep_1 + 74 - 1, grappling_b, 255 );
setEffAlphaKey( spep_1 + 74, grappling_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 17, 1, 108 );
changeAnime( spep_1 + 27, 1, 106 );
changeAnime( spep_1 + 37, 1, 108 );

setMoveKey( spep_1 + 0, 1, -11, -9.5 , 0 );
setMoveKey( spep_1 + 1, 1, -11, -9.5 , 0 );
setMoveKey( spep_1 + 2, 1, -11, -9.5 , 0 );
setMoveKey( spep_1 + 3, 1, 6.5, -9.5 , 0 );
setMoveKey( spep_1 + 4, 1, 6.5, -9.5 , 0 );
setMoveKey( spep_1 + 5, 1, 19.7, -9.5 , 0 );
setMoveKey( spep_1 + 6, 1, 19.7, -9.5 , 0 );
setMoveKey( spep_1 + 7, 1, 33.2, -9.5 , 0 );
setMoveKey( spep_1 + 8, 1, 33.2, -9.5 , 0 );
setMoveKey( spep_1 + 9, 1, 45.5, -9.5 , 0 );
setMoveKey( spep_1 + 10, 1, 45.5, -9.5 , 0 );
setMoveKey( spep_1 + 11, 1, 53.5, -9.5 , 0 );
setMoveKey( spep_1 + 12, 1, 53.5, -9.5 , 0 );
setMoveKey( spep_1 + 13, 1, 56.8, -9.5 , 0 );
setMoveKey( spep_1 + 14, 1, 56.8, -9.5 , 0 );
setMoveKey( spep_1 + 15, 1, 61.5, -9.5 , 0 );
setMoveKey( spep_1 + 16, 1, 61.5, -9.5 , 0 );
setMoveKey( spep_1 + 17, 1, 71.5, 0.5 , 0 );
setMoveKey( spep_1 + 18, 1, 71.5, 0.5 , 0 );
setMoveKey( spep_1 + 19, 1, 70.8, 9.7, 0 );
setMoveKey( spep_1 + 20, 1, 70.8, 9.7 , 0 );
setMoveKey( spep_1 + 21, 1, 75.7, 8.4 , 0 );
setMoveKey( spep_1 + 22, 1, 75.7, 8.4 , 0 );
setMoveKey( spep_1 + 23, 1, 70.8, 13.9 , 0 );
setMoveKey( spep_1 + 24, 1, 70.8, 13.9 , 0 );
setMoveKey( spep_1 + 25, 1, 72.9, 20.7 , 0 );
setMoveKey( spep_1 + 26, 1, 72.9, 20.7 , 0 );
setMoveKey( spep_1 + 27, 1, 52.9, 10.7 , 0 );
setMoveKey( spep_1 + 28, 1, 52.9, 10.7 , 0 );
setMoveKey( spep_1 + 29, 1, 42.7, -0.6 , 0 );
setMoveKey( spep_1 + 30, 1, 42.7, -0.6 , 0 );
setMoveKey( spep_1 + 31, 1, 42.8, 4.3 , 0 );
setMoveKey( spep_1 + 32, 1, 42.8, 4.3 , 0 );
setMoveKey( spep_1 + 33, 1, 42.8, 9.2 , 0 );
setMoveKey( spep_1 + 34, 1, 42.8, 9.2 , 0 );
setMoveKey( spep_1 + 35, 1, 42.8, 14 , 0 );
setMoveKey( spep_1 + 36, 1, 42.8, 14 , 0 );
setMoveKey( spep_1 + 37, 1, 72.8, 14 , 0 );
setMoveKey( spep_1 + 38, 1, 72.8, 14 , 0 );
setMoveKey( spep_1 + 39, 1, 75.7, 7.8 , 0 );
setMoveKey( spep_1 + 40, 1, 75.7, 7.8 , 0 );
setMoveKey( spep_1 + 41, 1, 73.9, 19 , 0 );
setMoveKey( spep_1 + 42, 1, 73.9, 19 , 0 );
setMoveKey( spep_1 + 43, 1, 79.4, 20.8 , 0 );
setMoveKey( spep_1 + 44, 1, 79.4, 20.8 , 0 );
setMoveKey( spep_1 + 45, 1, 80.3, 29.5 , 0 );
setMoveKey( spep_1 + 46, 1, 80.3, 29.5 , 0 );
setMoveKey( spep_1 + 47, 1, 83.5, 45.8 , 0 );
setMoveKey( spep_1 + 48, 1, 83.5, 45.8 , 0 );
setMoveKey( spep_1 + 49, 1, 86.6, 55.1 , 0 );
setMoveKey( spep_1 + 50, 1, 86.6, 55.1 , 0 );
setMoveKey( spep_1 + 51, 1, 89.8, 57.3 , 0 );
setMoveKey( spep_1 + 52, 1, 89.8, 57.3 , 0 );
setMoveKey( spep_1 + 53, 1, 93, 66.6 , 0 );
setMoveKey( spep_1 + 54, 1, 93, 66.6 , 0 );
setMoveKey( spep_1 + 55, 1, 96.2, 75.9 , 0 );
setMoveKey( spep_1 + 56, 1, 96.2, 75.9 , 0 );
setMoveKey( spep_1 + 57, 1, 99.3, 85.1 , 0 );
setMoveKey( spep_1 + 58, 1, 99.3, 85.1 , 0 );
setMoveKey( spep_1 + 59, 1, 102.5, 94.4 , 0 );
setMoveKey( spep_1 + 60, 1, 102.5, 94.4 , 0 );
setMoveKey( spep_1 + 61, 1, 104.4, 95.1 , 0 );
setMoveKey( spep_1 + 62, 1, 104.4, 95.1 , 0 );
setMoveKey( spep_1 + 63, 1, 106.4, 95.8 , 0 );
setMoveKey( spep_1 + 64, 1, 106.4, 95.8 , 0 );
setMoveKey( spep_1 + 65, 1, 108.3, 96.5 , 0 );
setMoveKey( spep_1 + 66, 1, 108.3, 96.5 , 0 );
setMoveKey( spep_1 + 67, 1, 110.2, 97.2 , 0 );
setMoveKey( spep_1 + 68, 1, 110.2, 97.2 , 0 );
setMoveKey( spep_1 + 69, 1, 112.1, 97.9 , 0 );
setMoveKey( spep_1 + 70, 1, 112.1, 97.9 , 0 );
setMoveKey( spep_1 + 71, 1, 114.1, 98.6 , 0 );
setMoveKey( spep_1 + 72, 1, 114.1, 98.6 , 0 );
setMoveKey( spep_1 + 73, 1, 116, 99.2 , 0 );
--setMoveKey( spep_1 + 74, 1, 94.8, -100.6 , 0 );

setScaleKey( spep_1 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 19, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 20, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 21, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 22, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 23, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 24, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 25, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 26, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 39, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 40, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 42, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 43, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 44, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 45, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 46, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 73, 1, 1.65, 1.65 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 26, 1, 0 );
setRotateKey( spep_1 + 27, 1, -50.7 );
setRotateKey( spep_1 + 28, 1, -50.7 );
setRotateKey( spep_1 + 30, 1, -50.7 );
setRotateKey( spep_1 + 31, 1, -50.3 );
setRotateKey( spep_1 + 32, 1, -50.3 );
setRotateKey( spep_1 + 33, 1, -50 );
setRotateKey( spep_1 + 34, 1, -50 );
setRotateKey( spep_1 + 35, 1, -50 );
setRotateKey( spep_1 + 36, 1, -50 );
setRotateKey( spep_1 + 37, 1, 0 );
setRotateKey( spep_1 + 38, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );
setRotateKey( spep_1 + 73, 1, 0 );
--setRotateKey( spep_1 + 74, 1,  -27.9 );

-- ** 音 ** --
--キック２連
SE020 = playSeVer2( spep_1 + 22, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 24, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 40, 1110, "", 0, 0, 0, -1);

--着地
SE023 = playSeVer2( spep_1 + 58, 1377, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 58, SE023, 184 );
SE024 = playSeVer2( spep_1 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE024, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 74 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_2 = spep_1 + 74;

------------------------------------------------------
-- 頭突き(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
headbutt_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0, 2000 );  --頭突き：敵より前 ef_003a

setEffMoveKey( spep_2 + 0, headbutt_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, headbutt_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, headbutt_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 38, headbutt_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, headbutt_f, 0 );
setEffRotateKey( spep_2 + 38, headbutt_f, 0 );

setEffAlphaKey( spep_2 + 0, headbutt_f, 255 );
setEffAlphaKey( spep_2 + 38 - 2, headbutt_f, 255 );
setEffAlphaKey( spep_2 + 38 - 1, headbutt_f, 255 );
setEffAlphaKey( spep_2 + 38, headbutt_f, 0 );


headbutt_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --頭突き：敵より後 ef_003b

setEffMoveKey( spep_2 + 0, headbutt_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, headbutt_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, headbutt_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 38, headbutt_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, headbutt_b, 0 );
setEffRotateKey( spep_2 + 38, headbutt_b, 0 );

setEffAlphaKey( spep_2 + 0, headbutt_b, 255 );
setEffAlphaKey( spep_2 + 38 - 2, headbutt_b, 255 );
setEffAlphaKey( spep_2 + 38 - 1, headbutt_b, 255 );
setEffAlphaKey( spep_2 + 38, headbutt_b, 0 );

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 8, 906, 30, 0x100, -1, 0, 0, 0, 1000 );  --集中線
setEffShake( spep_2 + 8, shuchusen_2, 30, 20 );

setEffMoveKey( spep_2 + 8, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, shuchusen_2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 8, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 38, shuchusen_2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 8, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 38, shuchusen_2, 0 );

setEffAlphaKey( spep_2 + 8, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 9, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 10, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 30, shuchusen_2, 180 );
setEffAlphaKey( spep_2 + 37, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 38, shuchusen_2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 38, 1, 0 );

setMoveKey( spep_2 + 0, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 1, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 2, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 3, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 4, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 5, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 6, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 7, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 8, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 9, 1, 109.8, -100.6 , 0 );
setMoveKey( spep_2 + 10, 1, 109.8, -100.6 , 0 );
setMoveKey( spep_2 + 11, 1, 122.9, 50.8 , 0 );
setMoveKey( spep_2 + 12, 1, 122.9, 50.8 , 0 );
setMoveKey( spep_2 + 13, 1, 97.4, 68.1 , 0 );
setMoveKey( spep_2 + 14, 1, 97.4, 68.1 , 0 );
setMoveKey( spep_2 + 15, 1, 241.9, -3.5 , 0 );
setMoveKey( spep_2 + 16, 1, 241.9, -3.5 , 0 );
setMoveKey( spep_2 + 17, 1, 76.8, 65.2 , 0 );
setMoveKey( spep_2 + 18, 1, 76.8, 65.2 , 0 );
setMoveKey( spep_2 + 19, 1, 232.6, 161.5 , 0 );
setMoveKey( spep_2 + 20, 1, 232.6, 161.5 , 0 );
setMoveKey( spep_2 + 21, 1, 236.9, 275 , 0 );
setMoveKey( spep_2 + 22, 1, 236.9, 275 , 0 );
setMoveKey( spep_2 + 23, 1, 321.9, 270.1 , 0 );
setMoveKey( spep_2 + 24, 1, 321.9, 270.1 , 0 );
setMoveKey( spep_2 + 25, 1, 323.6, 363 , 0 );
setMoveKey( spep_2 + 26, 1, 323.6, 363 , 0 );
setMoveKey( spep_2 + 27, 1, 406.1, 368.9 , 0 );
setMoveKey( spep_2 + 28, 1, 406.1, 368.9 , 0 );
setMoveKey( spep_2 + 29, 1, 405.3, 438.8 , 0 );
setMoveKey( spep_2 + 30, 1, 405.3, 438.8 , 0 );
setMoveKey( spep_2 + 31, 1, 471.5, 468.5 , 0 );
setMoveKey( spep_2 + 32, 1, 471.5, 468.5 , 0 );
setMoveKey( spep_2 + 33, 1, 482.5, 532.5 , 0 );
setMoveKey( spep_2 + 34, 1, 482.5, 532.5 , 0 );
setMoveKey( spep_2 + 35, 1, 519.3, 559.7 , 0 );
setMoveKey( spep_2 + 36, 1, 519.3, 559.7 , 0 );
setMoveKey( spep_2 + 37, 1, 555, 603.1 , 0 );
setMoveKey( spep_2 + 38, 1, 555, 603.1 , 0 );

setScaleKey( spep_2 + 0, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 1, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 2, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 3, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 4, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 5, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 6, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 7, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 8, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 9, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 10, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 11, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 12, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 13, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 14, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 15, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 16, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 17, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 18, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 19, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 20, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 21, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 22, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 23, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 24, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 25, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 26, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 27, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 28, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 29, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 30, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 31, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 32, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 33, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 34, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 35, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 36, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 37, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 38, 1, 4.36, 4.36 );

setRotateKey( spep_2 + 0, 1, -27.9 );
setRotateKey( spep_2 + 1, 1, -27.9 );
setRotateKey( spep_2 + 2, 1, -27.9 );
setRotateKey( spep_2 + 3, 1, -27.9 );
setRotateKey( spep_2 + 4, 1, -27.9 );
setRotateKey( spep_2 + 5, 1, -27.9 );
setRotateKey( spep_2 + 6, 1, -27.9 );
setRotateKey( spep_2 + 7, 1, -27.9 );
setRotateKey( spep_2 + 8, 1, -27.9 );
setRotateKey( spep_2 + 9, 1, -27.9 );
setRotateKey( spep_2 + 10, 1, -27.9 );
setRotateKey( spep_2 + 11, 1, -31.4 );
setRotateKey( spep_2 + 12, 1, -31.4 );
setRotateKey( spep_2 + 13, 1, -31.4 );
setRotateKey( spep_2 + 14, 1, -31.4 );
setRotateKey( spep_2 + 15, 1, -24.5 );
setRotateKey( spep_2 + 16, 1, -24.5 );
setRotateKey( spep_2 + 17, 1, -24.5 );
setRotateKey( spep_2 + 18, 1, -24.5 );
setRotateKey( spep_2 + 19, 1, -30.7 );
setRotateKey( spep_2 + 20, 1, -30.7 );
setRotateKey( spep_2 + 21, 1, -28.2 );
setRotateKey( spep_2 + 22, 1, -28.2 );
setRotateKey( spep_2 + 23, 1, -28.5 );
setRotateKey( spep_2 + 24, 1, -28.5 );
setRotateKey( spep_2 + 25, 1, -28.7 );
setRotateKey( spep_2 + 26, 1, -28.7 );
setRotateKey( spep_2 + 27, 1, -29 );
setRotateKey( spep_2 + 28, 1, -29 );
setRotateKey( spep_2 + 29, 1, -29.2 );
setRotateKey( spep_2 + 30, 1, -29.2 );
setRotateKey( spep_2 + 31, 1, -29.4 );
setRotateKey( spep_2 + 32, 1, -29.4 );
setRotateKey( spep_2 + 33, 1, -29.6 );
setRotateKey( spep_2 + 34, 1, -29.6 );
setRotateKey( spep_2 + 35, 1, -29.8 );
setRotateKey( spep_2 + 36, 1, -29.8 );
setRotateKey( spep_2 + 37, 1, -30 );
setRotateKey( spep_2 + 38, 1, -30 );

-- ** 音 ** --
--頭突き
SE025 = playSeVer2( spep_2 + 4, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 14, 1187, "",spep_2 + 60, 0, 10, -1);
SE027 = playSeVer2( spep_2 + 24, 1027, "",spep_2 + 60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 24, SE027, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 38 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 38;

--//////////カードカットインテンプレ
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
end

SE_CUTIN = playSe( spep_3, SE_05);
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

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

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 剣構え(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
sword_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --剣構え ef_004

setEffMoveKey( spep_4 + 0, sword_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, sword_f, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, sword_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, sword_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, sword_f, 0 );
setEffRotateKey( spep_4 + 56, sword_f, 0 );

setEffAlphaKey( spep_4 + 0, sword_f, 255 );
setEffAlphaKey( spep_4 + 56 - 2, sword_f, 255 );
setEffAlphaKey( spep_4 + 56 - 1, sword_f, 255 );
setEffAlphaKey( spep_4 + 56, sword_f, 0 );

-- ** 音 ** --
--剣光る
SE029 = playSeVer2( spep_4 + 6, 8, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 20, 32, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 32, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- ジャンプ(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
jump_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ジャンプ ef_005

setEffMoveKey( spep_5 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_5 +86, jump_f, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 86, jump_f, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, jump_f, 0 );
setEffRotateKey( spep_5 + 86, jump_f, 0 );

setEffAlphaKey( spep_5 + 0, jump_f, 255 );
setEffAlphaKey( spep_5 + 86 - 2, jump_f, 255 );
setEffAlphaKey( spep_5 + 86 - 1, jump_f, 255 );
setEffAlphaKey( spep_5 + 86, jump_f, 0 );

-- ** 音 ** --
--飛び上がる
SE032 = playSeVer2( spep_5 + 10, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 10, 1207, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_5 + 10, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 10, SE034, 67 );

--向かってくる
SE035 = playSeVer2( spep_5 + 82, 1117, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_5 + 82, 1116, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 86 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_6 = spep_5 + 86;

------------------------------------------------------
-- 斬りかかる(82F)
------------------------------------------------------

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --斬りかかる：敵より前 ef_006a

setEffMoveKey( spep_6 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 82, slash_f, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 82, slash_f, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, slash_f, 0 );
setEffRotateKey( spep_6 + 82, slash_f, 0 );

setEffAlphaKey( spep_6 + 0, slash_f, 255 );
setEffAlphaKey( spep_6 + 82 - 2, slash_f, 255 );
setEffAlphaKey( spep_6 + 82 - 1, slash_f, 255 );
setEffAlphaKey( spep_6 + 82, slash_f, 0 );


slash_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --斬りかかる：敵より後 ef_006b

setEffMoveKey( spep_6 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 82, slash_b, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 82, slash_b, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, slash_b, 0 );
setEffRotateKey( spep_6 + 82, slash_b, 0 );

setEffAlphaKey( spep_6 + 0, slash_b, 255 );
setEffAlphaKey( spep_6 + 82 - 2, slash_b, 255 );
setEffAlphaKey( spep_6 + 82 - 1, slash_b, 255 );
setEffAlphaKey( spep_6 + 82, slash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 42, 1, 0 );

changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, 191.8, -671.6 , 0 );
setMoveKey( spep_6 + 1, 1, 191.8, -671.6 , 0 );
setMoveKey( spep_6 + 2, 1, 191.8, -671.6 , 0 );
setMoveKey( spep_6 + 3, 1, 194.4, -668.7 , 0 );
setMoveKey( spep_6 + 4, 1, 194.4, -668.7 , 0 );
setMoveKey( spep_6 + 5, 1, 197, -665.7 , 0 );
setMoveKey( spep_6 + 6, 1, 197, -665.7 , 0 );
setMoveKey( spep_6 + 7, 1, 199.6, -662.7 , 0 );
setMoveKey( spep_6 + 8, 1, 199.6, -662.7 , 0 );
setMoveKey( spep_6 + 9, 1, 202.2, -659.7 , 0 );
setMoveKey( spep_6 + 10, 1, 202.2, -659.7 , 0 );
setMoveKey( spep_6 + 11, 1, 204.7, -656.7 , 0 );
setMoveKey( spep_6 + 12, 1, 204.7, -656.7 , 0 );
setMoveKey( spep_6 + 13, 1, 207.3, -653.7 , 0 );
setMoveKey( spep_6 + 14, 1, 207.3, -653.7 , 0 );
setMoveKey( spep_6 + 15, 1, 209.9, -650.7 , 0 );
setMoveKey( spep_6 + 16, 1, 209.9, -650.7 , 0 );
setMoveKey( spep_6 + 17, 1, 212.5, -647.7 , 0 );
setMoveKey( spep_6 + 18, 1, 212.5, -647.7 , 0 );
setMoveKey( spep_6 + 19, 1, 215.1, -644.8 , 0 );
setMoveKey( spep_6 + 20, 1, 215.1, -644.8 , 0 );
setMoveKey( spep_6 + 21, 1, 217.6, -641.8 , 0 );
setMoveKey( spep_6 + 22, 1, 217.6, -641.8 , 0 );
setMoveKey( spep_6 + 23, 1, 220.2, -638.8 , 0 );
setMoveKey( spep_6 + 24, 1, 220.2, -638.8 , 0 );
setMoveKey( spep_6 + 25, 1, 222.8, -635.8 , 0 );
setMoveKey( spep_6 + 26, 1, 222.8, -635.8 , 0 );
setMoveKey( spep_6 + 27, 1, 225.4, -632.8 , 0 );
setMoveKey( spep_6 + 28, 1, 225.4, -632.8 , 0 );
setMoveKey( spep_6 + 29, 1, 227.9, -629.8 , 0 );
setMoveKey( spep_6 + 30, 1, 227.9, -629.8 , 0 );
setMoveKey( spep_6 + 31, 1, 230.5, -626.8 , 0 );
setMoveKey( spep_6 + 32, 1, 230.5, -626.8 , 0 );
setMoveKey( spep_6 + 33, 1, 233.1, -623.8 , 0 );
setMoveKey( spep_6 + 34, 1, 233.1, -623.8 , 0 );
setMoveKey( spep_6 + 35, 1, 235.7, -620.9 , 0 );
setMoveKey( spep_6 + 36, 1, 235.7, -620.9 , 0 );
setMoveKey( spep_6 + 37, 1, 361.7, -1054.1 , 0 );
setMoveKey( spep_6 + 38, 1, 361.7, -1054.1 , 0 );
setMoveKey( spep_6 + 39, 1, 475.2, -1490.2 , 0 );
setMoveKey( spep_6 + 40, 1, 475.2, -1490.2 , 0 );
setMoveKey( spep_6 + 41, 1, 578.6, -1926.2 , 0 );
setMoveKey( spep_6 + 42, 1, 578.6, -1926.2 , 0 );

setScaleKey( spep_6 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_6 + 1, 1, 2.5, 2.5 );
setScaleKey( spep_6 + 2, 1, 2.5, 2.5 );
setScaleKey( spep_6 + 3, 1, 2.53, 2.53 );
setScaleKey( spep_6 + 4, 1, 2.53, 2.53 );
setScaleKey( spep_6 + 5, 1, 2.56, 2.56 );
setScaleKey( spep_6 + 6, 1, 2.56, 2.56 );
setScaleKey( spep_6 + 7, 1, 2.59, 2.59 );
setScaleKey( spep_6 + 8, 1, 2.59, 2.59 );
setScaleKey( spep_6 + 9, 1, 2.62, 2.62 );
setScaleKey( spep_6 + 10, 1, 2.62, 2.62 );
setScaleKey( spep_6 + 11, 1, 2.65, 2.65 );
setScaleKey( spep_6 + 12, 1, 2.65, 2.65 );
setScaleKey( spep_6 + 13, 1, 2.68, 2.68 );
setScaleKey( spep_6 + 14, 1, 2.68, 2.68 );
setScaleKey( spep_6 + 15, 1, 2.7, 2.7 );
setScaleKey( spep_6 + 16, 1, 2.7, 2.7 );
setScaleKey( spep_6 + 17, 1, 2.73, 2.73 );
setScaleKey( spep_6 + 18, 1, 2.73, 2.73 );
setScaleKey( spep_6 + 19, 1, 2.76, 2.76 );
setScaleKey( spep_6 + 20, 1, 2.76, 2.76 );
setScaleKey( spep_6 + 21, 1, 2.79, 2.79 );
setScaleKey( spep_6 + 22, 1, 2.79, 2.79 );
setScaleKey( spep_6 + 23, 1, 2.82, 2.82 );
setScaleKey( spep_6 + 24, 1, 2.82, 2.82 );
setScaleKey( spep_6 + 25, 1, 2.85, 2.85 );
setScaleKey( spep_6 + 26, 1, 2.85, 2.85 );
setScaleKey( spep_6 + 27, 1, 2.88, 2.88 );
setScaleKey( spep_6 + 28, 1, 2.88, 2.88 );
setScaleKey( spep_6 + 29, 1, 2.91, 2.91 );
setScaleKey( spep_6 + 30, 1, 2.91, 2.91 );
setScaleKey( spep_6 + 31, 1, 2.94, 2.94 );
setScaleKey( spep_6 + 32, 1, 2.94, 2.94 );
setScaleKey( spep_6 + 33, 1, 2.97, 2.97 );
setScaleKey( spep_6 + 34, 1, 2.97, 2.97 );
setScaleKey( spep_6 + 35, 1, 3, 3 );
setScaleKey( spep_6 + 36, 1, 3, 3 );
setScaleKey( spep_6 + 37, 1, 4.36, 4.36 );
setScaleKey( spep_6 + 38, 1, 4.36, 4.36 );
setScaleKey( spep_6 + 39, 1, 5.7, 5.7 );
setScaleKey( spep_6 + 40, 1, 5.7, 5.7 );
setScaleKey( spep_6 + 41, 1, 5.7, 5.7 );
setScaleKey( spep_6 + 42, 1, 5.7, 5.7 );

setRotateKey( spep_6 + 0, 1, 71.8 );
setRotateKey( spep_6 + 42, 1, 71.8 );

-- ** 音 ** --
--斬る
SE037 = playSeVer2( spep_6 + 42, 1004, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_6 + 48, 1142, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_6 + 60, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 60, SE039, 132 );
SE040 = playSeVer2( spep_6 + 62, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 62, SE040, 83 );
SE041 = playSeVer2( spep_6 + 66, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 66, SE041, 136 );
SE042 = playSeVer2( spep_6 + 68, 1141, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 82 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_7 = spep_6 + 82;

------------------------------------------------------
-- フィニッシュ(190F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ：敵より前 ef_007a

setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 190, finish_f, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 190, finish_f, 1.0, 1.0 );

setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 190, hfinish_f, 0 );

setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 190, finish_f, 255 );


finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --フィニッシュ：敵より後 ef_007b

setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 190, finish_b, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 190, finish_b, 1.0, 1.0 );

setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 190, finish_b, 0 );

setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 190, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 19, 1, 0 );

changeAnime( spep_7 + 0, 1, 108 );

setMoveKey( spep_7 + 0, 1, -174.8, 134.1 , 0 );
setMoveKey( spep_7 + 1, 1, -168.6, 114.1 , 0 );
setMoveKey( spep_7 + 2, 1, -168.6, 114.1 , 0 );
setMoveKey( spep_7 + 3, 1, -162.4, 94.1 , 0 );
setMoveKey( spep_7 + 4, 1, -162.4, 94.1 , 0 );
setMoveKey( spep_7 + 5, 1, -150, 66.1 , 0 );
setMoveKey( spep_7 + 6, 1, -150, 66.1 , 0 );
setMoveKey( spep_7 + 7, 1, -137.6, 25.1 , 0 );
setMoveKey( spep_7 + 8, 1, -137.6, 25.1 , 0 );
setMoveKey( spep_7 + 9, 1, -131.4, -5.1 , 0 );
setMoveKey( spep_7 + 10, 1, -131.4, -5.1 , 0 );
setMoveKey( spep_7 + 11, 1, -119.1, -46 , 0 );
setMoveKey( spep_7 + 12, 1, -119.1, -46 , 0 );
setMoveKey( spep_7 + 13, 1, -109.1, -70 , 0 );
setMoveKey( spep_7 + 14, 1, -109.1, -70 , 0 );
setMoveKey( spep_7 + 15, 1, -99.1, -126 , 0 );
setMoveKey( spep_7 + 16, 1, -99.1, -126 , 0 );
setMoveKey( spep_7 + 17, 1, -89.1, -143 , 0 );
setMoveKey( spep_7 + 18, 1, -89.1, -143 , 0 );
setMoveKey( spep_7 + 19, 1, -89.1, -143 , 0 );

setScaleKey( spep_7 + 0, 1, 0.79, 0.79 );
setScaleKey( spep_7 + 19, 1, 0.79, 0.79 );

setRotateKey( spep_7 + 0, 1, 54.5 );
setRotateKey( spep_7 + 1, 1, 55.7 );
setRotateKey( spep_7 + 2, 1, 55.7 );
setRotateKey( spep_7 + 3, 1, 57 );
setRotateKey( spep_7 + 4, 1, 57 );
setRotateKey( spep_7 + 5, 1, 58.2 );
setRotateKey( spep_7 + 6, 1, 58.2 );
setRotateKey( spep_7 + 7, 1, 59.5 );
setRotateKey( spep_7 + 8, 1, 59.5 );
setRotateKey( spep_7 + 9, 1, 60.7 );
setRotateKey( spep_7 + 10, 1, 60.7 );
setRotateKey( spep_7 + 11, 1, 62 );
setRotateKey( spep_7 + 12, 1, 62 );
setRotateKey( spep_7 + 13, 1, 63.2 );
setRotateKey( spep_7 + 14, 1, 63.2 );
setRotateKey( spep_7 + 15, 1, 64.5 );
setRotateKey( spep_7 + 16, 1, 64.5 );
setRotateKey( spep_7 + 17, 1, 64.5 );
setRotateKey( spep_7 + 18, 1, 64.5 );
setRotateKey( spep_7 + 19, 1, 64.5 );

-- ** 音 ** --
--着地
SE043 = playSeVer2( spep_7 + 10, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 10, SE043, 123 );
SE044 = playSeVer2( spep_7 + 16, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 16, SE044, 83 );

--敵落下
SE045 = playSeVer2( spep_7 + 20, 1011, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_7 + 20, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 20, SE046, 73 );

--剣しまう
SE047 = playSeVer2( spep_7 + 48, 1151, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_7 + 56, 1061, "",spep_7 + 84, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 56, SE048, 71 );
SE049 = playSeVer2( spep_7 + 56, 6, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 190 + 2, 0, 0, 0, 0, 255); 

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 60 );
endPhase( spep_7 + 180 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭ダッシュ(154F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --冒頭ダッシュ ef_001

setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 154, first_f, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 154, first_f, -1.0, 1.0 );

setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 154, first_f, 0 );

setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 154 - 2, first_f, 255 );
setEffAlphaKey( spep_0 + 154 - 1, first_f, 255 );
setEffAlphaKey( spep_0 + 154, first_f, 0 );

--//////////顔カットイン、セリフカットインテンプレ
------------------------------------------------------
spep_x = spep_0 + 20;  --表示させたいフレーム−10の分を足す！
-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]--

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 150, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 150, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 150, 515.5 , 0 );
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

--顔カットイン
--SE0000 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);
------------------------------------------------------

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 66 );

--空力音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 168, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
SE003 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 168, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 35 );

--走ってくる
SE004 = playSeVer2( spep_0 + 6, 1377, "", 0, 0, 0, 0.5);
SE005 = playSeVer2( spep_0 + 10, 1108, "", 0, 0, 0, 0.6);
SE006 = playSeVer2( spep_0 + 24, 1108, "", 0, 0, 0, 0.6);
SE008 = playSeVer2( spep_0 + 36, 1377, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 36, SE008, 67 );
SE009 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, 0.6);
SE010 = playSeVer2( spep_0 + 54, 1108, "", 0, 0, 0, 0.6);
SE011 = playSeVer2( spep_0 + 60, 1377, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 60, SE011, 58 );
SE012 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, 0.6);
SE013 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, 0.6);
SE014 = playSeVer2( spep_0 + 92, 1108, "", 0, 0, 0, 0.6);
SE015 = playSeVer2( spep_0 + 106, 1108, "", 0, 0, 0, 0.6);
SE016 = playSeVer2( spep_0 + 120, 1108, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 154 + 2, 0, 0, 0, 0, 255); 

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE016, 0);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--飛び上がる
SE017 = playSeVer2( spep_0 + 140, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE017, 61 );
SE018 = playSeVer2( spep_0 + 140, 1117, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 140, 1207, "",spep_0 + 226, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 140, SE019, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 154;

------------------------------------------------------
-- 格闘(74F)
------------------------------------------------------

-- ** エフェクト等 ** --
grappling_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --格闘：敵より前 ef_002a_r

setEffMoveKey( spep_1 + 0, grappling_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, grappling_f, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grappling_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 74, grappling_f, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grappling_f, 0 );
setEffRotateKey( spep_1 + 74, grappling_f, 0 );

setEffAlphaKey( spep_1 + 0, grappling_f, 255 );
setEffAlphaKey( spep_1 + 74 - 2, grappling_f, 255 );
setEffAlphaKey( spep_1 + 74 - 1, grappling_f, 255 );
setEffAlphaKey( spep_1 + 74, grappling_f, 0 );


grappling_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --格闘：敵より後 ef_002b

setEffMoveKey( spep_1 + 0, grappling_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 74, grappling_b, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, grappling_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 74, grappling_b, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, grappling_b, 0 );
setEffRotateKey( spep_1 + 74, grappling_b, 0 );

setEffAlphaKey( spep_1 + 0, grappling_b, 255 );
setEffAlphaKey( spep_1 + 74 - 2, grappling_b, 255 );
setEffAlphaKey( spep_1 + 74 - 1, grappling_b, 255 );
setEffAlphaKey( spep_1 + 74, grappling_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 + 17, 1, 108 );
changeAnime( spep_1 + 27, 1, 106 );
changeAnime( spep_1 + 37, 1, 108 );

setMoveKey( spep_1 + 0, 1, -11, -9.5 , 0 );
setMoveKey( spep_1 + 1, 1, -11, -9.5 , 0 );
setMoveKey( spep_1 + 2, 1, -11, -9.5 , 0 );
setMoveKey( spep_1 + 3, 1, 6.5, -9.5 , 0 );
setMoveKey( spep_1 + 4, 1, 6.5, -9.5 , 0 );
setMoveKey( spep_1 + 5, 1, 19.7, -9.5 , 0 );
setMoveKey( spep_1 + 6, 1, 19.7, -9.5 , 0 );
setMoveKey( spep_1 + 7, 1, 33.2, -9.5 , 0 );
setMoveKey( spep_1 + 8, 1, 33.2, -9.5 , 0 );
setMoveKey( spep_1 + 9, 1, 45.5, -9.5 , 0 );
setMoveKey( spep_1 + 10, 1, 45.5, -9.5 , 0 );
setMoveKey( spep_1 + 11, 1, 53.5, -9.5 , 0 );
setMoveKey( spep_1 + 12, 1, 53.5, -9.5 , 0 );
setMoveKey( spep_1 + 13, 1, 56.8, -9.5 , 0 );
setMoveKey( spep_1 + 14, 1, 56.8, -9.5 , 0 );
setMoveKey( spep_1 + 15, 1, 61.5, -9.5 , 0 );
setMoveKey( spep_1 + 16, 1, 61.5, -9.5 , 0 );
setMoveKey( spep_1 + 17, 1, 71.5, 0.5 , 0 );
setMoveKey( spep_1 + 18, 1, 71.5, 0.5 , 0 );
setMoveKey( spep_1 + 19, 1, 70.8, 9.7, 0 );
setMoveKey( spep_1 + 20, 1, 70.8, 9.7 , 0 );
setMoveKey( spep_1 + 21, 1, 75.7, 8.4 , 0 );
setMoveKey( spep_1 + 22, 1, 75.7, 8.4 , 0 );
setMoveKey( spep_1 + 23, 1, 70.8, 13.9 , 0 );
setMoveKey( spep_1 + 24, 1, 70.8, 13.9 , 0 );
setMoveKey( spep_1 + 25, 1, 72.9, 20.7 , 0 );
setMoveKey( spep_1 + 26, 1, 72.9, 20.7 , 0 );
setMoveKey( spep_1 + 27, 1, 52.9, 10.7 , 0 );
setMoveKey( spep_1 + 28, 1, 52.9, 10.7 , 0 );
setMoveKey( spep_1 + 29, 1, 42.7, -0.6 , 0 );
setMoveKey( spep_1 + 30, 1, 42.7, -0.6 , 0 );
setMoveKey( spep_1 + 31, 1, 42.8, 4.3 , 0 );
setMoveKey( spep_1 + 32, 1, 42.8, 4.3 , 0 );
setMoveKey( spep_1 + 33, 1, 42.8, 9.2 , 0 );
setMoveKey( spep_1 + 34, 1, 42.8, 9.2 , 0 );
setMoveKey( spep_1 + 35, 1, 42.8, 14 , 0 );
setMoveKey( spep_1 + 36, 1, 42.8, 14 , 0 );
setMoveKey( spep_1 + 37, 1, 72.8, 14 , 0 );
setMoveKey( spep_1 + 38, 1, 72.8, 14 , 0 );
setMoveKey( spep_1 + 39, 1, 75.7, 7.8 , 0 );
setMoveKey( spep_1 + 40, 1, 75.7, 7.8 , 0 );
setMoveKey( spep_1 + 41, 1, 73.9, 19 , 0 );
setMoveKey( spep_1 + 42, 1, 73.9, 19 , 0 );
setMoveKey( spep_1 + 43, 1, 79.4, 20.8 , 0 );
setMoveKey( spep_1 + 44, 1, 79.4, 20.8 , 0 );
setMoveKey( spep_1 + 45, 1, 80.3, 29.5 , 0 );
setMoveKey( spep_1 + 46, 1, 80.3, 29.5 , 0 );
setMoveKey( spep_1 + 47, 1, 83.5, 45.8 , 0 );
setMoveKey( spep_1 + 48, 1, 83.5, 45.8 , 0 );
setMoveKey( spep_1 + 49, 1, 86.6, 55.1 , 0 );
setMoveKey( spep_1 + 50, 1, 86.6, 55.1 , 0 );
setMoveKey( spep_1 + 51, 1, 89.8, 57.3 , 0 );
setMoveKey( spep_1 + 52, 1, 89.8, 57.3 , 0 );
setMoveKey( spep_1 + 53, 1, 93, 66.6 , 0 );
setMoveKey( spep_1 + 54, 1, 93, 66.6 , 0 );
setMoveKey( spep_1 + 55, 1, 96.2, 75.9 , 0 );
setMoveKey( spep_1 + 56, 1, 96.2, 75.9 , 0 );
setMoveKey( spep_1 + 57, 1, 99.3, 85.1 , 0 );
setMoveKey( spep_1 + 58, 1, 99.3, 85.1 , 0 );
setMoveKey( spep_1 + 59, 1, 102.5, 94.4 , 0 );
setMoveKey( spep_1 + 60, 1, 102.5, 94.4 , 0 );
setMoveKey( spep_1 + 61, 1, 104.4, 95.1 , 0 );
setMoveKey( spep_1 + 62, 1, 104.4, 95.1 , 0 );
setMoveKey( spep_1 + 63, 1, 106.4, 95.8 , 0 );
setMoveKey( spep_1 + 64, 1, 106.4, 95.8 , 0 );
setMoveKey( spep_1 + 65, 1, 108.3, 96.5 , 0 );
setMoveKey( spep_1 + 66, 1, 108.3, 96.5 , 0 );
setMoveKey( spep_1 + 67, 1, 110.2, 97.2 , 0 );
setMoveKey( spep_1 + 68, 1, 110.2, 97.2 , 0 );
setMoveKey( spep_1 + 69, 1, 112.1, 97.9 , 0 );
setMoveKey( spep_1 + 70, 1, 112.1, 97.9 , 0 );
setMoveKey( spep_1 + 71, 1, 114.1, 98.6 , 0 );
setMoveKey( spep_1 + 72, 1, 114.1, 98.6 , 0 );
setMoveKey( spep_1 + 73, 1, 116, 99.2 , 0 );
--setMoveKey( spep_1 + 74, 1, 94.8, -100.6 , 0 );

setScaleKey( spep_1 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 18, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 19, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 20, 1, 1.75, 1.75 );
setScaleKey( spep_1 + 21, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 22, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 23, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 24, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 25, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 26, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 39, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 40, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 42, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 43, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 44, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 45, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 46, 1, 1.65, 1.65 );
setScaleKey( spep_1 + 73, 1, 1.65, 1.65 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 26, 1, 0 );
setRotateKey( spep_1 + 27, 1, -50.7 );
setRotateKey( spep_1 + 28, 1, -50.7 );
setRotateKey( spep_1 + 30, 1, -50.7 );
setRotateKey( spep_1 + 31, 1, -50.3 );
setRotateKey( spep_1 + 32, 1, -50.3 );
setRotateKey( spep_1 + 33, 1, -50 );
setRotateKey( spep_1 + 34, 1, -50 );
setRotateKey( spep_1 + 35, 1, -50 );
setRotateKey( spep_1 + 36, 1, -50 );
setRotateKey( spep_1 + 37, 1, 0 );
setRotateKey( spep_1 + 38, 1, 0 );
setRotateKey( spep_1 + 40, 1, 0 );
setRotateKey( spep_1 + 73, 1, 0 );
--setRotateKey( spep_1 + 74, 1,  -27.9 );

-- ** 音 ** --
--キック２連
SE020 = playSeVer2( spep_1 + 22, 1009, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 24, 1110, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 40, 1110, "", 0, 0, 0, -1);

--着地
SE023 = playSeVer2( spep_1 + 58, 1377, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 58, SE023, 184 );
SE024 = playSeVer2( spep_1 + 64, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 64, SE024, 76 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 74 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_2 = spep_1 + 74;

------------------------------------------------------
-- 頭突き(38F)
------------------------------------------------------

-- ** エフェクト等 ** --
headbutt_f = entryEffect( spep_2 + 0, SP_04r, 0x100, -1, 0, 0, 0, 2000 );  --頭突き：敵より前 ef_003a_r

setEffMoveKey( spep_2 + 0, headbutt_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, headbutt_f, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, headbutt_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 38, headbutt_f, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, headbutt_f, 0 );
setEffRotateKey( spep_2 + 38, headbutt_f, 0 );

setEffAlphaKey( spep_2 + 0, headbutt_f, 255 );
setEffAlphaKey( spep_2 + 38 - 2, headbutt_f, 255 );
setEffAlphaKey( spep_2 + 38 - 1, headbutt_f, 255 );
setEffAlphaKey( spep_2 + 38, headbutt_f, 0 );


headbutt_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --頭突き：敵より後 ef_003b

setEffMoveKey( spep_2 + 0, headbutt_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, headbutt_b, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, headbutt_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 38, headbutt_b, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, headbutt_b, 0 );
setEffRotateKey( spep_2 + 38, headbutt_b, 0 );

setEffAlphaKey( spep_2 + 0, headbutt_b, 255 );
setEffAlphaKey( spep_2 + 38 - 2, headbutt_b, 255 );
setEffAlphaKey( spep_2 + 38 - 1, headbutt_b, 255 );
setEffAlphaKey( spep_2 + 38, headbutt_b, 0 );

-- ** 集中線 ** --
shuchusen_2 = entryEffectLife( spep_2 + 8, 906, 30, 0x100, -1, 0, 0, 0, 1000 );  --集中線
setEffShake( spep_2 + 8, shuchusen_2, 30, 20 );

setEffMoveKey( spep_2 + 8, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 38, shuchusen_2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 8, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 38, shuchusen_2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 8, shuchusen_2, 0 );
setEffRotateKey( spep_2 + 38, shuchusen_2, 0 );

setEffAlphaKey( spep_2 + 8, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 9, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 10, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen_2, 255 );
setEffAlphaKey( spep_2 + 30, shuchusen_2, 180 );
setEffAlphaKey( spep_2 + 37, shuchusen_2, 0 );
setEffAlphaKey( spep_2 + 38, shuchusen_2, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 38, 1, 0 );

setMoveKey( spep_2 + 0, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 1, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 2, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 3, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 4, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 5, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 6, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 7, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 8, 1, 94.8, -100.6 , 0 );
setMoveKey( spep_2 + 9, 1, 109.8, -100.6 , 0 );
setMoveKey( spep_2 + 10, 1, 109.8, -100.6 , 0 );
setMoveKey( spep_2 + 11, 1, 122.9, 50.8 , 0 );
setMoveKey( spep_2 + 12, 1, 122.9, 50.8 , 0 );
setMoveKey( spep_2 + 13, 1, 97.4, 68.1 , 0 );
setMoveKey( spep_2 + 14, 1, 97.4, 68.1 , 0 );
setMoveKey( spep_2 + 15, 1, 241.9, -3.5 , 0 );
setMoveKey( spep_2 + 16, 1, 241.9, -3.5 , 0 );
setMoveKey( spep_2 + 17, 1, 76.8, 65.2 , 0 );
setMoveKey( spep_2 + 18, 1, 76.8, 65.2 , 0 );
setMoveKey( spep_2 + 19, 1, 232.6, 161.5 , 0 );
setMoveKey( spep_2 + 20, 1, 232.6, 161.5 , 0 );
setMoveKey( spep_2 + 21, 1, 236.9, 275 , 0 );
setMoveKey( spep_2 + 22, 1, 236.9, 275 , 0 );
setMoveKey( spep_2 + 23, 1, 321.9, 270.1 , 0 );
setMoveKey( spep_2 + 24, 1, 321.9, 270.1 , 0 );
setMoveKey( spep_2 + 25, 1, 323.6, 363 , 0 );
setMoveKey( spep_2 + 26, 1, 323.6, 363 , 0 );
setMoveKey( spep_2 + 27, 1, 406.1, 368.9 , 0 );
setMoveKey( spep_2 + 28, 1, 406.1, 368.9 , 0 );
setMoveKey( spep_2 + 29, 1, 405.3, 438.8 , 0 );
setMoveKey( spep_2 + 30, 1, 405.3, 438.8 , 0 );
setMoveKey( spep_2 + 31, 1, 471.5, 468.5 , 0 );
setMoveKey( spep_2 + 32, 1, 471.5, 468.5 , 0 );
setMoveKey( spep_2 + 33, 1, 482.5, 532.5 , 0 );
setMoveKey( spep_2 + 34, 1, 482.5, 532.5 , 0 );
setMoveKey( spep_2 + 35, 1, 519.3, 559.7 , 0 );
setMoveKey( spep_2 + 36, 1, 519.3, 559.7 , 0 );
setMoveKey( spep_2 + 37, 1, 555, 603.1 , 0 );
setMoveKey( spep_2 + 38, 1, 555, 603.1 , 0 );

setScaleKey( spep_2 + 0, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 1, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 2, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 3, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 4, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 5, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 6, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 7, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 8, 1, 5.77, 5.77 );
setScaleKey( spep_2 + 9, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 10, 1, 6.64, 6.64 );
setScaleKey( spep_2 + 11, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 12, 1, 6.29, 6.29 );
setScaleKey( spep_2 + 13, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 14, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 15, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 16, 1, 5.74, 5.74 );
setScaleKey( spep_2 + 17, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 18, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 19, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 20, 1, 4.93, 4.93 );
setScaleKey( spep_2 + 21, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 22, 1, 4.86, 4.86 );
setScaleKey( spep_2 + 23, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 24, 1, 4.79, 4.79 );
setScaleKey( spep_2 + 25, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 26, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 27, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 28, 1, 4.66, 4.66 );
setScaleKey( spep_2 + 29, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 30, 1, 4.59, 4.59 );
setScaleKey( spep_2 + 31, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 32, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 33, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 34, 1, 4.47, 4.47 );
setScaleKey( spep_2 + 35, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 36, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 37, 1, 4.36, 4.36 );
setScaleKey( spep_2 + 38, 1, 4.36, 4.36 );

setRotateKey( spep_2 + 0, 1, -27.9 );
setRotateKey( spep_2 + 1, 1, -27.9 );
setRotateKey( spep_2 + 2, 1, -27.9 );
setRotateKey( spep_2 + 3, 1, -27.9 );
setRotateKey( spep_2 + 4, 1, -27.9 );
setRotateKey( spep_2 + 5, 1, -27.9 );
setRotateKey( spep_2 + 6, 1, -27.9 );
setRotateKey( spep_2 + 7, 1, -27.9 );
setRotateKey( spep_2 + 8, 1, -27.9 );
setRotateKey( spep_2 + 9, 1, -27.9 );
setRotateKey( spep_2 + 10, 1, -27.9 );
setRotateKey( spep_2 + 11, 1, -31.4 );
setRotateKey( spep_2 + 12, 1, -31.4 );
setRotateKey( spep_2 + 13, 1, -31.4 );
setRotateKey( spep_2 + 14, 1, -31.4 );
setRotateKey( spep_2 + 15, 1, -24.5 );
setRotateKey( spep_2 + 16, 1, -24.5 );
setRotateKey( spep_2 + 17, 1, -24.5 );
setRotateKey( spep_2 + 18, 1, -24.5 );
setRotateKey( spep_2 + 19, 1, -30.7 );
setRotateKey( spep_2 + 20, 1, -30.7 );
setRotateKey( spep_2 + 21, 1, -28.2 );
setRotateKey( spep_2 + 22, 1, -28.2 );
setRotateKey( spep_2 + 23, 1, -28.5 );
setRotateKey( spep_2 + 24, 1, -28.5 );
setRotateKey( spep_2 + 25, 1, -28.7 );
setRotateKey( spep_2 + 26, 1, -28.7 );
setRotateKey( spep_2 + 27, 1, -29 );
setRotateKey( spep_2 + 28, 1, -29 );
setRotateKey( spep_2 + 29, 1, -29.2 );
setRotateKey( spep_2 + 30, 1, -29.2 );
setRotateKey( spep_2 + 31, 1, -29.4 );
setRotateKey( spep_2 + 32, 1, -29.4 );
setRotateKey( spep_2 + 33, 1, -29.6 );
setRotateKey( spep_2 + 34, 1, -29.6 );
setRotateKey( spep_2 + 35, 1, -29.8 );
setRotateKey( spep_2 + 36, 1, -29.8 );
setRotateKey( spep_2 + 37, 1, -30 );
setRotateKey( spep_2 + 38, 1, -30 );

-- ** 音 ** --
--頭突き
SE025 = playSeVer2( spep_2 + 4, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 14, 1187, "",spep_2 + 60, 0, 10, -1);
SE027 = playSeVer2( spep_2 + 24, 1027, "",spep_2 + 60, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 24, SE027, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 38 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 38;

--//////////カードカットインテンプレ
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
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 剣構え(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
sword_f = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --剣構え ef_004r

setEffMoveKey( spep_4 + 0, sword_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, sword_f, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, sword_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, sword_f, 1.0, 1.0 );

setEffRotateKey( spep_4 + 0, sword_f, 0 );
setEffRotateKey( spep_4 + 56, sword_f, 0 );

setEffAlphaKey( spep_4 + 0, sword_f, 255 );
setEffAlphaKey( spep_4 + 56 - 2, sword_f, 255 );
setEffAlphaKey( spep_4 + 56 - 1, sword_f, 255 );
setEffAlphaKey( spep_4 + 56, sword_f, 0 );

-- ** 音 ** --
--剣光る
SE029 = playSeVer2( spep_4 + 6, 8, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 20, 32, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 32, 1042, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- ジャンプ(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
jump_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ジャンプ ef_005

setEffMoveKey( spep_5 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_5 +86, jump_f, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, jump_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 86, jump_f, -1.0, 1.0 );

setEffRotateKey( spep_5 + 0, jump_f, 0 );
setEffRotateKey( spep_5 + 86, jump_f, 0 );

setEffAlphaKey( spep_5 + 0, jump_f, 255 );
setEffAlphaKey( spep_5 + 86 - 2, jump_f, 255 );
setEffAlphaKey( spep_5 + 86 - 1, jump_f, 255 );
setEffAlphaKey( spep_5 + 86, jump_f, 0 );

-- ** 音 ** --
--飛び上がる
SE032 = playSeVer2( spep_5 + 10, 1182, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 10, 1207, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_5 + 10, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 10, SE034, 67 );

--向かってくる
SE035 = playSeVer2( spep_5 + 82, 1117, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_5 + 82, 1116, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 86 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_6 = spep_5 + 86;

------------------------------------------------------
-- 斬りかかる(82F)
------------------------------------------------------

-- ** エフェクト等 ** --
slash_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --斬りかかる：敵より前 ef_006a

setEffMoveKey( spep_6 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 82, slash_f, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, slash_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 82, slash_f, -1.0, 1.0 );

setEffRotateKey( spep_6 + 0, slash_f, 0 );
setEffRotateKey( spep_6 + 82, slash_f, 0 );

setEffAlphaKey( spep_6 + 0, slash_f, 255 );
setEffAlphaKey( spep_6 + 82 - 2, slash_f, 255 );
setEffAlphaKey( spep_6 + 82 - 1, slash_f, 255 );
setEffAlphaKey( spep_6 + 82, slash_f, 0 );


slash_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --斬りかかる：敵より後 ef_006b

setEffMoveKey( spep_6 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 82, slash_b, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, slash_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 82, slash_b, -1.0, 1.0 );

setEffRotateKey( spep_6 + 0, slash_b, 0 );
setEffRotateKey( spep_6 + 82, slash_b, 0 );

setEffAlphaKey( spep_6 + 0, slash_b, 255 );
setEffAlphaKey( spep_6 + 82 - 2, slash_b, 255 );
setEffAlphaKey( spep_6 + 82 - 1, slash_b, 255 );
setEffAlphaKey( spep_6 + 82, slash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 42, 1, 0 );

changeAnime( spep_6 + 0, 1, 7 );

setMoveKey( spep_6 + 0, 1, -191.8, -671.6 , 0 );
setMoveKey( spep_6 + 1, 1, -191.8, -671.6 , 0 );
setMoveKey( spep_6 + 2, 1, -191.8, -671.6 , 0 );
setMoveKey( spep_6 + 3, 1, -194.4, -668.7 , 0 );
setMoveKey( spep_6 + 4, 1, -194.4, -668.7 , 0 );
setMoveKey( spep_6 + 5, 1, -197, -665.7 , 0 );
setMoveKey( spep_6 + 6, 1, -197, -665.7 , 0 );
setMoveKey( spep_6 + 7, 1, -199.6, -662.7 , 0 );
setMoveKey( spep_6 + 8, 1, -199.6, -662.7 , 0 );
setMoveKey( spep_6 + 9, 1, -202.2, -659.7 , 0 );
setMoveKey( spep_6 + 10, 1, -202.2, -659.7 , 0 );
setMoveKey( spep_6 + 11, 1, -204.7, -656.7 , 0 );
setMoveKey( spep_6 + 12, 1, -204.7, -656.7 , 0 );
setMoveKey( spep_6 + 13, 1, -207.3, -653.7 , 0 );
setMoveKey( spep_6 + 14, 1, -207.3, -653.7 , 0 );
setMoveKey( spep_6 + 15, 1, -209.9, -650.7 , 0 );
setMoveKey( spep_6 + 16, 1, -209.9, -650.7 , 0 );
setMoveKey( spep_6 + 17, 1, -212.5, -647.7 , 0 );
setMoveKey( spep_6 + 18, 1, -212.5, -647.7 , 0 );
setMoveKey( spep_6 + 19, 1, -215.1, -644.8 , 0 );
setMoveKey( spep_6 + 20, 1, -215.1, -644.8 , 0 );
setMoveKey( spep_6 + 21, 1, -217.6, -641.8 , 0 );
setMoveKey( spep_6 + 22, 1, -217.6, -641.8 , 0 );
setMoveKey( spep_6 + 23, 1, -220.2, -638.8 , 0 );
setMoveKey( spep_6 + 24, 1, -220.2, -638.8 , 0 );
setMoveKey( spep_6 + 25, 1, -222.8, -635.8 , 0 );
setMoveKey( spep_6 + 26, 1, -222.8, -635.8 , 0 );
setMoveKey( spep_6 + 27, 1, -225.4, -632.8 , 0 );
setMoveKey( spep_6 + 28, 1, -225.4, -632.8 , 0 );
setMoveKey( spep_6 + 29, 1, -227.9, -629.8 , 0 );
setMoveKey( spep_6 + 30, 1, -227.9, -629.8 , 0 );
setMoveKey( spep_6 + 31, 1, -230.5, -626.8 , 0 );
setMoveKey( spep_6 + 32, 1, -230.5, -626.8 , 0 );
setMoveKey( spep_6 + 33, 1, -233.1, -623.8 , 0 );
setMoveKey( spep_6 + 34, 1, -233.1, -623.8 , 0 );
setMoveKey( spep_6 + 35, 1, -235.7, -620.9 , 0 );
setMoveKey( spep_6 + 36, 1, -235.7, -620.9 , 0 );
setMoveKey( spep_6 + 37, 1, -361.7, -1054.1 , 0 );
setMoveKey( spep_6 + 38, 1, -361.7, -1054.1 , 0 );
setMoveKey( spep_6 + 39, 1, -475.2, -1490.2 , 0 );
setMoveKey( spep_6 + 40, 1, -475.2, -1490.2 , 0 );
setMoveKey( spep_6 + 41, 1, -578.6, -1926.2 , 0 );
setMoveKey( spep_6 + 42, 1, -578.6, -1926.2 , 0 );

setScaleKey( spep_6 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_6 + 1, 1, 2.5, 2.5 );
setScaleKey( spep_6 + 2, 1, 2.5, 2.5 );
setScaleKey( spep_6 + 3, 1, 2.53, 2.53 );
setScaleKey( spep_6 + 4, 1, 2.53, 2.53 );
setScaleKey( spep_6 + 5, 1, 2.56, 2.56 );
setScaleKey( spep_6 + 6, 1, 2.56, 2.56 );
setScaleKey( spep_6 + 7, 1, 2.59, 2.59 );
setScaleKey( spep_6 + 8, 1, 2.59, 2.59 );
setScaleKey( spep_6 + 9, 1, 2.62, 2.62 );
setScaleKey( spep_6 + 10, 1, 2.62, 2.62 );
setScaleKey( spep_6 + 11, 1, 2.65, 2.65 );
setScaleKey( spep_6 + 12, 1, 2.65, 2.65 );
setScaleKey( spep_6 + 13, 1, 2.68, 2.68 );
setScaleKey( spep_6 + 14, 1, 2.68, 2.68 );
setScaleKey( spep_6 + 15, 1, 2.7, 2.7 );
setScaleKey( spep_6 + 16, 1, 2.7, 2.7 );
setScaleKey( spep_6 + 17, 1, 2.73, 2.73 );
setScaleKey( spep_6 + 18, 1, 2.73, 2.73 );
setScaleKey( spep_6 + 19, 1, 2.76, 2.76 );
setScaleKey( spep_6 + 20, 1, 2.76, 2.76 );
setScaleKey( spep_6 + 21, 1, 2.79, 2.79 );
setScaleKey( spep_6 + 22, 1, 2.79, 2.79 );
setScaleKey( spep_6 + 23, 1, 2.82, 2.82 );
setScaleKey( spep_6 + 24, 1, 2.82, 2.82 );
setScaleKey( spep_6 + 25, 1, 2.85, 2.85 );
setScaleKey( spep_6 + 26, 1, 2.85, 2.85 );
setScaleKey( spep_6 + 27, 1, 2.88, 2.88 );
setScaleKey( spep_6 + 28, 1, 2.88, 2.88 );
setScaleKey( spep_6 + 29, 1, 2.91, 2.91 );
setScaleKey( spep_6 + 30, 1, 2.91, 2.91 );
setScaleKey( spep_6 + 31, 1, 2.94, 2.94 );
setScaleKey( spep_6 + 32, 1, 2.94, 2.94 );
setScaleKey( spep_6 + 33, 1, 2.97, 2.97 );
setScaleKey( spep_6 + 34, 1, 2.97, 2.97 );
setScaleKey( spep_6 + 35, 1, 3, 3 );
setScaleKey( spep_6 + 36, 1, 3, 3 );
setScaleKey( spep_6 + 37, 1, 4.36, 4.36 );
setScaleKey( spep_6 + 38, 1, 4.36, 4.36 );
setScaleKey( spep_6 + 39, 1, 5.7, 5.7 );
setScaleKey( spep_6 + 40, 1, 5.7, 5.7 );
setScaleKey( spep_6 + 41, 1, 5.7, 5.7 );
setScaleKey( spep_6 + 42, 1, 5.7, 5.7 );

setRotateKey( spep_6 + 0, 1, -71.8 );
setRotateKey( spep_6 + 42, 1, -71.8 );

-- ** 音 ** --
--斬る
SE037 = playSeVer2( spep_6 + 42, 1004, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_6 + 48, 1142, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_6 + 60, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 60, SE039, 132 );
SE040 = playSeVer2( spep_6 + 62, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 62, SE040, 83 );
SE041 = playSeVer2( spep_6 + 66, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 66, SE041, 136 );
SE042 = playSeVer2( spep_6 + 68, 1141, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 82 + 2, 0, 0, 0, 0, 255); 

-- ** 次の準備 ** --
spep_7 = spep_6 + 82;

------------------------------------------------------
-- フィニッシュ(190F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --フィニッシュ：敵より前 ef_007a

setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 190, finish_f, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 190, finish_f, -1.0, 1.0 );

setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 190, hfinish_f, 0 );

setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 190, finish_f, 255 );


finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --フィニッシュ：敵より後 ef_007b

setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 190, finish_b, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_7 + 190, finish_b, -1.0, 1.0 );

setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 190, finish_b, 0 );

setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 190, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 19, 1, 0 );

changeAnime( spep_7 + 0, 1, 8 );

setMoveKey( spep_7 + 0, 1, 174.8, 134.1 , 0 );
setMoveKey( spep_7 + 1, 1, 168.6, 114.1 , 0 );
setMoveKey( spep_7 + 2, 1, 168.6, 114.1 , 0 );
setMoveKey( spep_7 + 3, 1, 162.4, 94.1 , 0 );
setMoveKey( spep_7 + 4, 1, 162.4, 94.1 , 0 );
setMoveKey( spep_7 + 5, 1, 150, 66.1 , 0 );
setMoveKey( spep_7 + 6, 1, 150, 66.1 , 0 );
setMoveKey( spep_7 + 7, 1, 137.6, 25.1 , 0 );
setMoveKey( spep_7 + 8, 1, 137.6, 25.1 , 0 );
setMoveKey( spep_7 + 9, 1, 131.4, -5.1 , 0 );
setMoveKey( spep_7 + 10, 1, 131.4, -5.1 , 0 );
setMoveKey( spep_7 + 11, 1, 119.1, -46 , 0 );
setMoveKey( spep_7 + 12, 1, 119.1, -46 , 0 );
setMoveKey( spep_7 + 13, 1, 109.1, -70 , 0 );
setMoveKey( spep_7 + 14, 1, 109.1, -70 , 0 );
setMoveKey( spep_7 + 15, 1, 99.1, -126 , 0 );
setMoveKey( spep_7 + 16, 1, 99.1, -126 , 0 );
setMoveKey( spep_7 + 17, 1, 89.1, -143 , 0 );
setMoveKey( spep_7 + 18, 1, 89.1, -143 , 0 );
setMoveKey( spep_7 + 19, 1, 89.1, -143 , 0 );

setScaleKey( spep_7 + 0, 1, 0.79, 0.79 );
setScaleKey( spep_7 + 19, 1, 0.79, 0.79 );

setRotateKey( spep_7 + 0, 1, -54.5 );
setRotateKey( spep_7 + 1, 1, -55.7 );
setRotateKey( spep_7 + 2, 1, -55.7 );
setRotateKey( spep_7 + 3, 1, -57 );
setRotateKey( spep_7 + 4, 1, -57 );
setRotateKey( spep_7 + 5, 1, -58.2 );
setRotateKey( spep_7 + 6, 1, -58.2 );
setRotateKey( spep_7 + 7, 1, -59.5 );
setRotateKey( spep_7 + 8, 1, -59.5 );
setRotateKey( spep_7 + 9, 1, -60.7 );
setRotateKey( spep_7 + 10, 1, -60.7 );
setRotateKey( spep_7 + 11, 1, -62 );
setRotateKey( spep_7 + 12, 1, -62 );
setRotateKey( spep_7 + 13, 1, -63.2 );
setRotateKey( spep_7 + 14, 1, -63.2 );
setRotateKey( spep_7 + 15, 1, -64.5 );
setRotateKey( spep_7 + 16, 1, -64.5 );
setRotateKey( spep_7 + 17, 1, -64.5 );
setRotateKey( spep_7 + 18, 1, -64.5 );
setRotateKey( spep_7 + 19, 1, -64.5 );

-- ** 音 ** --
--着地
SE043 = playSeVer2( spep_7 + 10, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 10, SE043, 123 );
SE044 = playSeVer2( spep_7 + 16, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 16, SE044, 83 );

--敵落下
SE045 = playSeVer2( spep_7 + 20, 1011, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_7 + 20, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 20, SE046, 73 );

--剣しまう
SE047 = playSeVer2( spep_7 + 48, 1151, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_7 + 56, 1061, "",spep_7 + 84, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 56, SE048, 71 );
SE049 = playSeVer2( spep_7 + 56, 6, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 190 + 2, 0, 0, 0, 0, 255); 

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 60 );
endPhase( spep_7 + 180 );

end